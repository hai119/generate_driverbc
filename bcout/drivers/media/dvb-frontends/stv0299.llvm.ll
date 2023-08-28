; ModuleID = '../bcout/drivers/media/dvb-frontends/stv0299.llvm.bc'
source_filename = "drivers/media/dvb-frontends/stv0299.c"
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
%struct.stv0299_config = type { i8, i8*, i32, i8, i32, i32 (%struct.dvb_frontend*, i32, i32)*, i32 (%struct.dvb_frontend*, i32)* }
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
%struct.stv0299_state = type { %struct.i2c_adapter*, %struct.stv0299_config*, %struct.dvb_frontend, i8, i32, i32, i32, i32, i32, i8 }

@stv0299_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"ST STV0299 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 0, i32 1000000, i32 45000000, i32 500, i32 1710 }, [8 x i8] c"\05\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @stv0299_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @stv0299_init, i32 (%struct.dvb_frontend*)* @stv0299_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* @stv0299_write, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @stv0299_set_frontend, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @stv0299_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @stv0299_get_frontend, i32 (%struct.dvb_frontend*, i32*)* @stv0299_read_status, i32 (%struct.dvb_frontend*, i32*)* @stv0299_read_ber, i32 (%struct.dvb_frontend*, i16*)* @stv0299_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @stv0299_read_snr, i32 (%struct.dvb_frontend*, i32*)* @stv0299_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @stv0299_send_diseqc_msg, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* @stv0299_send_diseqc_burst, i32 (%struct.dvb_frontend*, i32)* @stv0299_set_tone, i32 (%struct.dvb_frontend*, i32)* @stv0299_set_voltage, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* @stv0299_send_legacy_dish_cmd, i32 (%struct.dvb_frontend*, i32)* @stv0299_i2c_gate_ctrl, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !0
@__param_str_debug_legacy_dish_switch = internal constant [33 x i8] c"stv0299.debug_legacy_dish_switch\00", align 16, !dbg !4477
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug_legacy_dish_switch = internal global i32 0, align 4, !dbg !428
@__param_debug_legacy_dish_switch = internal constant %struct.kernel_param { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__param_str_debug_legacy_dish_switch, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i32* @debug_legacy_dish_switch to i8*) } }, section "__param", align 8, !dbg !318
@__UNIQUE_ID_debug_legacy_dish_switchtype220 = internal constant [46 x i8] c"stv0299.parmtype=debug_legacy_dish_switch:int\00", section ".modinfo", align 1, !dbg !384
@__UNIQUE_ID_debug_legacy_dish_switch221 = internal constant [94 x i8] c"stv0299.parm=debug_legacy_dish_switch:Enable timing analysis for Dish Network legacy switches\00", section ".modinfo", align 1, !dbg !389
@__param_str_debug = internal constant [14 x i8] c"stv0299.debug\00", align 1, !dbg !4482
@debug = internal global i32 0, align 4, !dbg !426
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !394
@__UNIQUE_ID_debugtype222 = internal constant [27 x i8] c"stv0299.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !396
@__UNIQUE_ID_debug223 = internal constant [65 x i8] c"stv0299.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1, !dbg !401
@__UNIQUE_ID_description224 = internal constant [54 x i8] c"stv0299.description=ST STV0299 DVB Demodulator driver\00", section ".modinfo", align 1, !dbg !406
@__UNIQUE_ID_author225 = internal constant [132 x i8] c"stv0299.author=Ralph Metzler, Holger Waechtler, Peter Schildmann, Felix Domke, Andreas Oberritter, Andrew de Quincey, Kenneth Aafly\00", section ".modinfo", align 1, !dbg !411
@__UNIQUE_ID_file226 = internal constant [49 x i8] c"stv0299.file=drivers/media/dvb-frontends/stv0299\00", section ".modinfo", align 1, !dbg !416
@__UNIQUE_ID_license227 = internal constant [20 x i8] c"stv0299.license=GPL\00", section ".modinfo", align 1, !dbg !421
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"\017stv0299: %s: writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", align 1
@__func__.stv0299_writeregI = private unnamed_addr constant [18 x i8] c"stv0299_writeregI\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"\017stv0299: %s: readreg error (reg == 0x%02x, ret == %i)\0A\00", align 1
@__func__.stv0299_readreg = private unnamed_addr constant [16 x i8] c"stv0299_readreg\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\017stv0299: stv0299: init chip\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\017stv0299: %s : FE_SET_FRONTEND\0A\00", align 1
@__func__.stv0299_set_frontend = private unnamed_addr constant [21 x i8] c"stv0299_set_frontend\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"stv0299 does not support auto-inversion\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"\017stv0299: %s\0A\00", align 1
@__func__.stv0299_set_FEC = private unnamed_addr constant [16 x i8] c"stv0299_set_FEC\00", align 1
@stv0299_get_fec.fec_tab = internal global [5 x i32] [i32 2, i32 3, i32 5, i32 7, i32 1], align 16, !dbg !430
@__func__.stv0299_get_fec = private unnamed_addr constant [16 x i8] c"stv0299_get_fec\00", align 1
@__func__.stv0299_get_symbolrate = private unnamed_addr constant [23 x i8] c"stv0299_get_symbolrate\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"\017stv0299: %s : srate = %i\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"\017stv0299: %s : ofset = %i\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"\017stv0299: %s: readreg error (ret == %i)\0A\00", align 1
@__func__.stv0299_readregs = private unnamed_addr constant [17 x i8] c"stv0299_readregs\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"\017stv0299: %s : FE_READ_STATUS : VSTATUS: 0x%02x\0A\00", align 1
@__func__.stv0299_read_status = private unnamed_addr constant [20 x i8] c"stv0299_read_status\00", align 1
@.str.11 = private unnamed_addr constant [76 x i8] c"\017stv0299: %s : FE_READ_SIGNAL_STRENGTH : AGC2I: 0x%02x%02x, signal=0x%04x\0A\00", align 1
@__func__.stv0299_read_signal_strength = private unnamed_addr constant [29 x i8] c"stv0299_read_signal_strength\00", align 1
@__func__.stv0299_send_diseqc_msg = private unnamed_addr constant [24 x i8] c"stv0299_send_diseqc_msg\00", align 1
@jiffies = external dso_local global i64, align 8
@__func__.stv0299_wait_diseqc_idle = private unnamed_addr constant [25 x i8] c"stv0299_wait_diseqc_idle\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"\017stv0299: %s: timeout!!\0A\00", align 1
@__func__.stv0299_wait_diseqc_fifo = private unnamed_addr constant [25 x i8] c"stv0299_wait_diseqc_fifo\00", align 1
@__func__.stv0299_send_diseqc_burst = private unnamed_addr constant [26 x i8] c"stv0299_send_diseqc_burst\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"\017stv0299: %s: %s\0A\00", align 1
@__func__.stv0299_set_voltage = private unnamed_addr constant [20 x i8] c"stv0299_set_voltage\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"SEC_VOLTAGE_13\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"SEC_VOLTAGE_18\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"%s switch command: 0x%04lx\0A\00", align 1
@__func__.stv0299_send_legacy_dish_cmd = private unnamed_addr constant [29 x i8] c"stv0299_send_legacy_dish_cmd\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"%s(%d): switch delay (should be 32k followed by all 8k\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"%d: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"include/linux/ktime.h\00", align 1
@llvm.used = appending global [10 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug_legacy_dish_switch to i8*), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_debug_legacy_dish_switchtype220, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @__UNIQUE_ID_debug_legacy_dish_switch221, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_debugtype222, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__UNIQUE_ID_debug223, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__UNIQUE_ID_description224, i32 0, i32 0), i8* getelementptr inbounds ([132 x i8], [132 x i8]* @__UNIQUE_ID_author225, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_file226, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license227, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @stv0299_attach(%struct.stv0299_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4493 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.stv0299_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.stv0299_state*, align 8
  %id = alloca i32, align 4
  store %struct.stv0299_config* %config, %struct.stv0299_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stv0299_config** %config.addr, metadata !4496, metadata !DIExpression()), !dbg !4497
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4498, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !4500, metadata !DIExpression()), !dbg !4501
  store %struct.stv0299_state* null, %struct.stv0299_state** %state, align 8, !dbg !4501
  call void @llvm.dbg.declare(metadata i32* %id, metadata !4502, metadata !DIExpression()), !dbg !4503
  %call = call i8* @kzalloc(i64 1328, i32 3264) #8, !dbg !4504
  %0 = bitcast i8* %call to %struct.stv0299_state*, !dbg !4504
  store %struct.stv0299_state* %0, %struct.stv0299_state** %state, align 8, !dbg !4505
  %1 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !4506
  %cmp = icmp eq %struct.stv0299_state* %1, null, !dbg !4508
  br i1 %cmp, label %if.then, label %if.end, !dbg !4509

if.then:                                          ; preds = %entry
  br label %error, !dbg !4510

if.end:                                           ; preds = %entry
  %2 = load %struct.stv0299_config*, %struct.stv0299_config** %config.addr, align 8, !dbg !4511
  %3 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !4512
  %config1 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %3, i32 0, i32 1, !dbg !4513
  store %struct.stv0299_config* %2, %struct.stv0299_config** %config1, align 8, !dbg !4514
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4515
  %5 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !4516
  %i2c2 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %5, i32 0, i32 0, !dbg !4517
  store %struct.i2c_adapter* %4, %struct.i2c_adapter** %i2c2, align 8, !dbg !4518
  %6 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !4519
  %initialised = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %6, i32 0, i32 3, !dbg !4520
  %bf.load = load i8, i8* %initialised, align 8, !dbg !4521
  %bf.clear = and i8 %bf.load, -2, !dbg !4521
  store i8 %bf.clear, i8* %initialised, align 8, !dbg !4521
  %7 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !4522
  %tuner_frequency = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %7, i32 0, i32 4, !dbg !4523
  store i32 0, i32* %tuner_frequency, align 4, !dbg !4524
  %8 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !4525
  %symbol_rate = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %8, i32 0, i32 5, !dbg !4526
  store i32 0, i32* %symbol_rate, align 8, !dbg !4527
  %9 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !4528
  %fec_inner = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %9, i32 0, i32 6, !dbg !4529
  store i32 0, i32* %fec_inner, align 4, !dbg !4530
  %10 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !4531
  %errmode = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %10, i32 0, i32 7, !dbg !4532
  store i32 0, i32* %errmode, align 8, !dbg !4533
  %11 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !4534
  %call3 = call i32 @stv0299_writeregI(%struct.stv0299_state* %11, i8 zeroext 2, i8 zeroext 48) #8, !dbg !4535
  call void @msleep(i32 200) #8, !dbg !4536
  %12 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !4537
  %call4 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %12, i8 zeroext 0) #8, !dbg !4538
  %conv = zext i8 %call4 to i32, !dbg !4538
  store i32 %conv, i32* %id, align 4, !dbg !4539
  %13 = load i32, i32* %id, align 4, !dbg !4540
  %cmp5 = icmp ne i32 %13, 161, !dbg !4542
  br i1 %cmp5, label %land.lhs.true, label %if.end10, !dbg !4543

land.lhs.true:                                    ; preds = %if.end
  %14 = load i32, i32* %id, align 4, !dbg !4544
  %cmp7 = icmp ne i32 %14, 128, !dbg !4545
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !4546

if.then9:                                         ; preds = %land.lhs.true
  br label %error, !dbg !4547

if.end10:                                         ; preds = %land.lhs.true, %if.end
  %15 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !4548
  %frontend = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %15, i32 0, i32 2, !dbg !4549
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4550
  %16 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4551
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @stv0299_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4551
  %17 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !4552
  %18 = bitcast %struct.stv0299_state* %17 to i8*, !dbg !4552
  %19 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !4553
  %frontend11 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %19, i32 0, i32 2, !dbg !4554
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend11, i32 0, i32 3, !dbg !4555
  store i8* %18, i8** %demodulator_priv, align 8, !dbg !4556
  %20 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !4557
  %frontend12 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %20, i32 0, i32 2, !dbg !4558
  store %struct.dvb_frontend* %frontend12, %struct.dvb_frontend** %retval, align 8, !dbg !4559
  br label %return, !dbg !4559

error:                                            ; preds = %if.then9, %if.then
  call void @llvm.dbg.label(metadata !4560), !dbg !4561
  %21 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !4562
  %22 = bitcast %struct.stv0299_state* %21 to i8*, !dbg !4562
  call void @kfree(i8* %22) #8, !dbg !4563
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4564
  br label %return, !dbg !4564

return:                                           ; preds = %error, %if.end10
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4565
  ret %struct.dvb_frontend* %23, !dbg !4565
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4566 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4569, metadata !DIExpression()), !dbg !4573
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4579, metadata !DIExpression()), !dbg !4580
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4581, metadata !DIExpression()), !dbg !4582
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4583, metadata !DIExpression()), !dbg !4584
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4585, metadata !DIExpression()), !dbg !4589
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4591, metadata !DIExpression()), !dbg !4595
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4597, metadata !DIExpression()), !dbg !4601
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4606, metadata !DIExpression()), !dbg !4607
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4608, metadata !DIExpression()), !dbg !4609
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4610, metadata !DIExpression()), !dbg !4611
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4612, metadata !DIExpression()), !dbg !4613
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4614, metadata !DIExpression()), !dbg !4615
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4616, metadata !DIExpression()), !dbg !4617
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4618, metadata !DIExpression()), !dbg !4619
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4620, metadata !DIExpression()), !dbg !4621
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4622, metadata !DIExpression()), !dbg !4623
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4624, metadata !DIExpression()), !dbg !4625
  %0 = load i64, i64* %size.addr, align 8, !dbg !4626
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4627
  %or = or i32 %1, 256, !dbg !4628
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4629
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4630
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4631

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4632
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4633
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4634

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4635
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4636
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4637
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4638
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4615
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4639
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4640
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4641
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4642
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4643
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4644
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4645
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4645
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4645
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4645
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4645
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4646
  br label %kmalloc.exit, !dbg !4646

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4647
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4648
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4648
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4650

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4651
  br label %kmalloc_index.exit.i, !dbg !4651

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4652
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4654
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4655

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4656
  br label %kmalloc_index.exit.i, !dbg !4656

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4657
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4659
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4660

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4661
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4662
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4663

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4664
  br label %kmalloc_index.exit.i, !dbg !4664

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4665
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4667
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4668

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4669
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4670
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4671

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4672
  br label %kmalloc_index.exit.i, !dbg !4672

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4673
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4675
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4676

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4677
  br label %kmalloc_index.exit.i, !dbg !4677

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4678
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4680
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4681

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4682
  br label %kmalloc_index.exit.i, !dbg !4682

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4683
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4685
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4686

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4687
  br label %kmalloc_index.exit.i, !dbg !4687

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4688
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4690
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4691

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4692
  br label %kmalloc_index.exit.i, !dbg !4692

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4693
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4695
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4696

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4697
  br label %kmalloc_index.exit.i, !dbg !4697

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4698
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4700
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4701

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4702
  br label %kmalloc_index.exit.i, !dbg !4702

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4703
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4705
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4706

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4707
  br label %kmalloc_index.exit.i, !dbg !4707

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4708
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4710
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4711

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4712
  br label %kmalloc_index.exit.i, !dbg !4712

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4713
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4715
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4716

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4717
  br label %kmalloc_index.exit.i, !dbg !4717

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4718
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4720
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4721

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4722
  br label %kmalloc_index.exit.i, !dbg !4722

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4723
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4725
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4726

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4727
  br label %kmalloc_index.exit.i, !dbg !4727

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4728
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4730
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4731

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4732
  br label %kmalloc_index.exit.i, !dbg !4732

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4733
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4735
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4736

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4737
  br label %kmalloc_index.exit.i, !dbg !4737

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4738
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4740
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4741

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4742
  br label %kmalloc_index.exit.i, !dbg !4742

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4743
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4745
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4746

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4747
  br label %kmalloc_index.exit.i, !dbg !4747

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4748
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4750
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4751

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4752
  br label %kmalloc_index.exit.i, !dbg !4752

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4753
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4755
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4756

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4757
  br label %kmalloc_index.exit.i, !dbg !4757

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4758
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4760
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4761

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4762
  br label %kmalloc_index.exit.i, !dbg !4762

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4763
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4765
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4766

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4767
  br label %kmalloc_index.exit.i, !dbg !4767

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4768
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4770
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4771

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4772
  br label %kmalloc_index.exit.i, !dbg !4772

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4773
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4775
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4776

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4777
  br label %kmalloc_index.exit.i, !dbg !4777

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4778
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4780
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4781

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4782
  br label %kmalloc_index.exit.i, !dbg !4782

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4783
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4785
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4786

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4787
  br label %kmalloc_index.exit.i, !dbg !4787

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4788
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4790
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4791

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4792
  br label %kmalloc_index.exit.i, !dbg !4792

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4793, !srcloc !4796
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #9, !dbg !4797, !srcloc !4800
  unreachable, !dbg !4801

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4802
  store i32 %45, i32* %index.i, align 4, !dbg !4803
  %46 = load i32, i32* %index.i, align 4, !dbg !4804
  %tobool.i = icmp ne i32 %46, 0, !dbg !4804
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4806

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4807
  br label %kmalloc.exit, !dbg !4807

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4808
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4809
  %and.i.i = and i32 %48, 17, !dbg !4809
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4809
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4809
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4809
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4809
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4811

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4812
  br label %kmalloc_type.exit.i, !dbg !4812

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4813
  %and2.i.i = and i32 %49, 1, !dbg !4814
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4813
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4813
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4813
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4815
  br label %kmalloc_type.exit.i, !dbg !4815

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4816
  %idxprom.i = zext i32 %51 to i64, !dbg !4817
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4817
  %52 = load i32, i32* %index.i, align 4, !dbg !4818
  %idxprom6.i = zext i32 %52 to i64, !dbg !4817
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4817
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4817
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4819
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4820
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4821
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4822
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4823
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4823
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4823
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4823
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4823
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4584
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4824
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4825
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4826
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4827
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4828
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4829
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4830
  store i8* %62, i8** %retval.i, align 8, !dbg !4831
  br label %kmalloc.exit, !dbg !4831

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4832
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4833
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4834
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4834
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4834
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4834
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4834
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4835
  br label %kmalloc.exit, !dbg !4835

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4836
  ret i8* %65, !dbg !4837
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_writeregI(%struct.stv0299_state* %state, i8 zeroext %reg, i8 zeroext %data) #0 !dbg !4838 {
entry:
  %state.addr = alloca %struct.stv0299_state*, align 8
  %reg.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.stv0299_state* %state, %struct.stv0299_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state.addr, metadata !4841, metadata !DIExpression()), !dbg !4842
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4843, metadata !DIExpression()), !dbg !4844
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !4845, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4847, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !4849, metadata !DIExpression()), !dbg !4851
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !4852
  %0 = load i8, i8* %reg.addr, align 1, !dbg !4853
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !4852
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !4852
  %1 = load i8, i8* %data.addr, align 1, !dbg !4854
  store i8 %1, i8* %arrayinit.element, align 1, !dbg !4852
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !4855, metadata !DIExpression()), !dbg !4856
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !4857
  %2 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !4858
  %config = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %2, i32 0, i32 1, !dbg !4859
  %3 = load %struct.stv0299_config*, %struct.stv0299_config** %config, align 8, !dbg !4859
  %demod_address = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %3, i32 0, i32 0, !dbg !4860
  %4 = load i8, i8* %demod_address, align 8, !dbg !4860
  %conv = zext i8 %4 to i16, !dbg !4858
  store i16 %conv, i16* %addr, align 8, !dbg !4857
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !4857
  store i16 0, i16* %flags, align 2, !dbg !4857
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !4857
  store i16 2, i16* %len, align 4, !dbg !4857
  %buf1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !4857
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !4861
  store i8* %arraydecay, i8** %buf1, align 8, !dbg !4857
  %5 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !4862
  %i2c = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %5, i32 0, i32 0, !dbg !4863
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4863
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %6, %struct.i2c_msg* %msg, i32 1) #8, !dbg !4864
  store i32 %call, i32* %ret, align 4, !dbg !4865
  %7 = load i32, i32* %ret, align 4, !dbg !4866
  %cmp = icmp ne i32 %7, 1, !dbg !4868
  br i1 %cmp, label %if.then, label %if.end7, !dbg !4869

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4870

do.body:                                          ; preds = %if.then
  %8 = load i32, i32* @debug, align 4, !dbg !4871
  %tobool = icmp ne i32 %8, 0, !dbg !4871
  br i1 %tobool, label %if.then3, label %if.end, !dbg !4874

if.then3:                                         ; preds = %do.body
  %9 = load i8, i8* %reg.addr, align 1, !dbg !4871
  %conv4 = zext i8 %9 to i32, !dbg !4871
  %10 = load i8, i8* %data.addr, align 1, !dbg !4871
  %conv5 = zext i8 %10 to i32, !dbg !4871
  %11 = load i32, i32* %ret, align 4, !dbg !4871
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.stv0299_writeregI, i64 0, i64 0), i32 %conv4, i32 %conv5, i32 %11) #12, !dbg !4871
  br label %if.end, !dbg !4871

if.end:                                           ; preds = %if.then3, %do.body
  br label %do.end, !dbg !4874

do.end:                                           ; preds = %if.end
  br label %if.end7, !dbg !4874

if.end7:                                          ; preds = %do.end, %entry
  %12 = load i32, i32* %ret, align 4, !dbg !4875
  %cmp8 = icmp ne i32 %12, 1, !dbg !4876
  %13 = zext i1 %cmp8 to i64, !dbg !4877
  %cond = select i1 %cmp8, i32 -121, i32 0, !dbg !4877
  ret i32 %cond, !dbg !4878
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @stv0299_readreg(%struct.stv0299_state* %state, i8 zeroext %reg) #0 !dbg !4879 {
entry:
  %state.addr = alloca %struct.stv0299_state*, align 8
  %reg.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.stv0299_state* %state, %struct.stv0299_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state.addr, metadata !4882, metadata !DIExpression()), !dbg !4883
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4884, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.declare(metadata [1 x i8]* %b0, metadata !4888, metadata !DIExpression()), !dbg !4890
  %arrayinit.begin = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4891
  %0 = load i8, i8* %reg.addr, align 1, !dbg !4892
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !4891
  call void @llvm.dbg.declare(metadata [1 x i8]* %b1, metadata !4893, metadata !DIExpression()), !dbg !4894
  %1 = bitcast [1 x i8]* %b1 to i8*, !dbg !4894
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 1, i1 false), !dbg !4894
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !4895, metadata !DIExpression()), !dbg !4897
  %arrayinit.begin1 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4898
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 0, !dbg !4899
  %2 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !4900
  %config = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %2, i32 0, i32 1, !dbg !4901
  %3 = load %struct.stv0299_config*, %struct.stv0299_config** %config, align 8, !dbg !4901
  %demod_address = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %3, i32 0, i32 0, !dbg !4902
  %4 = load i8, i8* %demod_address, align 8, !dbg !4902
  %conv = zext i8 %4 to i16, !dbg !4900
  store i16 %conv, i16* %addr, align 16, !dbg !4899
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 1, !dbg !4899
  store i16 0, i16* %flags, align 2, !dbg !4899
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 2, !dbg !4899
  store i16 1, i16* %len, align 4, !dbg !4899
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 3, !dbg !4899
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4903
  store i8* %arraydecay, i8** %buf, align 8, !dbg !4899
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i64 1, !dbg !4898
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4904
  %5 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !4905
  %config3 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %5, i32 0, i32 1, !dbg !4906
  %6 = load %struct.stv0299_config*, %struct.stv0299_config** %config3, align 8, !dbg !4906
  %demod_address4 = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %6, i32 0, i32 0, !dbg !4907
  %7 = load i8, i8* %demod_address4, align 8, !dbg !4907
  %conv5 = zext i8 %7 to i16, !dbg !4905
  store i16 %conv5, i16* %addr2, align 16, !dbg !4904
  %flags6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4904
  store i16 1, i16* %flags6, align 2, !dbg !4904
  %len7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4904
  store i16 1, i16* %len7, align 4, !dbg !4904
  %buf8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4904
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4908
  store i8* %arraydecay9, i8** %buf8, align 8, !dbg !4904
  %8 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !4909
  %i2c = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %8, i32 0, i32 0, !dbg !4910
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4910
  %arraydecay10 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4911
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %9, %struct.i2c_msg* %arraydecay10, i32 2) #8, !dbg !4912
  store i32 %call, i32* %ret, align 4, !dbg !4913
  %10 = load i32, i32* %ret, align 4, !dbg !4914
  %cmp = icmp ne i32 %10, 2, !dbg !4916
  br i1 %cmp, label %if.then, label %if.end15, !dbg !4917

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4918

do.body:                                          ; preds = %if.then
  %11 = load i32, i32* @debug, align 4, !dbg !4919
  %tobool = icmp ne i32 %11, 0, !dbg !4919
  br i1 %tobool, label %if.then12, label %if.end, !dbg !4922

if.then12:                                        ; preds = %do.body
  %12 = load i8, i8* %reg.addr, align 1, !dbg !4919
  %conv13 = zext i8 %12 to i32, !dbg !4919
  %13 = load i32, i32* %ret, align 4, !dbg !4919
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.stv0299_readreg, i64 0, i64 0), i32 %conv13, i32 %13) #12, !dbg !4919
  br label %if.end, !dbg !4919

if.end:                                           ; preds = %if.then12, %do.body
  br label %do.end, !dbg !4922

do.end:                                           ; preds = %if.end
  br label %if.end15, !dbg !4922

if.end15:                                         ; preds = %do.end, %entry
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4923
  %14 = load i8, i8* %arrayidx, align 1, !dbg !4923
  ret i8 %14, !dbg !4924
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !4925 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4929, metadata !DIExpression()), !dbg !4934
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4936, metadata !DIExpression()), !dbg !4937
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4938, metadata !DIExpression()), !dbg !4939
  %0 = load i64, i64* %size.addr, align 8, !dbg !4940
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4942
  br i1 %1, label %if.then, label %if.end447, !dbg !4943

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4944
  %tobool = icmp ne i64 %2, 0, !dbg !4944
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4947

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4948
  br label %return, !dbg !4948

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4949
  %cmp = icmp ult i64 %3, 4096, !dbg !4951
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4952

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4953
  br label %return, !dbg !4953

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub = sub i64 %4, 1, !dbg !4954
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4954
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4954

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub4 = sub i64 %6, 1, !dbg !4954
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4954
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4954

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub6 = sub i64 %8, 1, !dbg !4954
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4954
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4954

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4954

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub9 = sub i64 %9, 1, !dbg !4954
  %and = and i64 %sub9, -9223372036854775808, !dbg !4954
  %tobool10 = icmp ne i64 %and, 0, !dbg !4954
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4954

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4954

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub13 = sub i64 %10, 1, !dbg !4954
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4954
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4954
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4954

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4954

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub18 = sub i64 %11, 1, !dbg !4954
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4954
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4954
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4954

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4954

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub23 = sub i64 %12, 1, !dbg !4954
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4954
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4954
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4954

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4954

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub28 = sub i64 %13, 1, !dbg !4954
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4954
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4954
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4954

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4954

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub33 = sub i64 %14, 1, !dbg !4954
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4954
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4954
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4954

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4954

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub38 = sub i64 %15, 1, !dbg !4954
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4954
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4954
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4954

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4954

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub43 = sub i64 %16, 1, !dbg !4954
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4954
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4954
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4954

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4954

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub48 = sub i64 %17, 1, !dbg !4954
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4954
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4954
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4954

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4954

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub53 = sub i64 %18, 1, !dbg !4954
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4954
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4954
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4954

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4954

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub58 = sub i64 %19, 1, !dbg !4954
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4954
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4954
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4954

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4954

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub63 = sub i64 %20, 1, !dbg !4954
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4954
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4954
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4954

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4954

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub68 = sub i64 %21, 1, !dbg !4954
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4954
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4954
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4954

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4954

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub73 = sub i64 %22, 1, !dbg !4954
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4954
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4954
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4954

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4954

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub78 = sub i64 %23, 1, !dbg !4954
  %and79 = and i64 %sub78, 562949953421312, !dbg !4954
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4954
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4954

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4954

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub83 = sub i64 %24, 1, !dbg !4954
  %and84 = and i64 %sub83, 281474976710656, !dbg !4954
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4954
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4954

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4954

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub88 = sub i64 %25, 1, !dbg !4954
  %and89 = and i64 %sub88, 140737488355328, !dbg !4954
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4954
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4954

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4954

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub93 = sub i64 %26, 1, !dbg !4954
  %and94 = and i64 %sub93, 70368744177664, !dbg !4954
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4954
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4954

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4954

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub98 = sub i64 %27, 1, !dbg !4954
  %and99 = and i64 %sub98, 35184372088832, !dbg !4954
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4954
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4954

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4954

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub103 = sub i64 %28, 1, !dbg !4954
  %and104 = and i64 %sub103, 17592186044416, !dbg !4954
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4954
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4954

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4954

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub108 = sub i64 %29, 1, !dbg !4954
  %and109 = and i64 %sub108, 8796093022208, !dbg !4954
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4954
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4954

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4954

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub113 = sub i64 %30, 1, !dbg !4954
  %and114 = and i64 %sub113, 4398046511104, !dbg !4954
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4954
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4954

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4954

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub118 = sub i64 %31, 1, !dbg !4954
  %and119 = and i64 %sub118, 2199023255552, !dbg !4954
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4954
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4954

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4954

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub123 = sub i64 %32, 1, !dbg !4954
  %and124 = and i64 %sub123, 1099511627776, !dbg !4954
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4954
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4954

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4954

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub128 = sub i64 %33, 1, !dbg !4954
  %and129 = and i64 %sub128, 549755813888, !dbg !4954
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4954
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4954

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4954

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub133 = sub i64 %34, 1, !dbg !4954
  %and134 = and i64 %sub133, 274877906944, !dbg !4954
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4954
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4954

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4954

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub138 = sub i64 %35, 1, !dbg !4954
  %and139 = and i64 %sub138, 137438953472, !dbg !4954
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4954
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4954

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4954

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub143 = sub i64 %36, 1, !dbg !4954
  %and144 = and i64 %sub143, 68719476736, !dbg !4954
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4954
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4954

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4954

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub148 = sub i64 %37, 1, !dbg !4954
  %and149 = and i64 %sub148, 34359738368, !dbg !4954
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4954
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4954

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4954

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub153 = sub i64 %38, 1, !dbg !4954
  %and154 = and i64 %sub153, 17179869184, !dbg !4954
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4954
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4954

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4954

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub158 = sub i64 %39, 1, !dbg !4954
  %and159 = and i64 %sub158, 8589934592, !dbg !4954
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4954
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4954

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4954

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub163 = sub i64 %40, 1, !dbg !4954
  %and164 = and i64 %sub163, 4294967296, !dbg !4954
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4954
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4954

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4954

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub168 = sub i64 %41, 1, !dbg !4954
  %and169 = and i64 %sub168, 2147483648, !dbg !4954
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4954
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4954

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4954

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub173 = sub i64 %42, 1, !dbg !4954
  %and174 = and i64 %sub173, 1073741824, !dbg !4954
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4954
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4954

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4954

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub178 = sub i64 %43, 1, !dbg !4954
  %and179 = and i64 %sub178, 536870912, !dbg !4954
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4954
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4954

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4954

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub183 = sub i64 %44, 1, !dbg !4954
  %and184 = and i64 %sub183, 268435456, !dbg !4954
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4954
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4954

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4954

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub188 = sub i64 %45, 1, !dbg !4954
  %and189 = and i64 %sub188, 134217728, !dbg !4954
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4954
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4954

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4954

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub193 = sub i64 %46, 1, !dbg !4954
  %and194 = and i64 %sub193, 67108864, !dbg !4954
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4954
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4954

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4954

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub198 = sub i64 %47, 1, !dbg !4954
  %and199 = and i64 %sub198, 33554432, !dbg !4954
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4954
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4954

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4954

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub203 = sub i64 %48, 1, !dbg !4954
  %and204 = and i64 %sub203, 16777216, !dbg !4954
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4954
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4954

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4954

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub208 = sub i64 %49, 1, !dbg !4954
  %and209 = and i64 %sub208, 8388608, !dbg !4954
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4954
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4954

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4954

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub213 = sub i64 %50, 1, !dbg !4954
  %and214 = and i64 %sub213, 4194304, !dbg !4954
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4954
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4954

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4954

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub218 = sub i64 %51, 1, !dbg !4954
  %and219 = and i64 %sub218, 2097152, !dbg !4954
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4954
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4954

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4954

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub223 = sub i64 %52, 1, !dbg !4954
  %and224 = and i64 %sub223, 1048576, !dbg !4954
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4954
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4954

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4954

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub228 = sub i64 %53, 1, !dbg !4954
  %and229 = and i64 %sub228, 524288, !dbg !4954
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4954
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4954

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4954

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub233 = sub i64 %54, 1, !dbg !4954
  %and234 = and i64 %sub233, 262144, !dbg !4954
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4954
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4954

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4954

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub238 = sub i64 %55, 1, !dbg !4954
  %and239 = and i64 %sub238, 131072, !dbg !4954
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4954
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4954

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4954

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub243 = sub i64 %56, 1, !dbg !4954
  %and244 = and i64 %sub243, 65536, !dbg !4954
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4954
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4954

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4954

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub248 = sub i64 %57, 1, !dbg !4954
  %and249 = and i64 %sub248, 32768, !dbg !4954
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4954
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4954

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4954

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub253 = sub i64 %58, 1, !dbg !4954
  %and254 = and i64 %sub253, 16384, !dbg !4954
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4954
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4954

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4954

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub258 = sub i64 %59, 1, !dbg !4954
  %and259 = and i64 %sub258, 8192, !dbg !4954
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4954
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4954

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4954

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub263 = sub i64 %60, 1, !dbg !4954
  %and264 = and i64 %sub263, 4096, !dbg !4954
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4954
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4954

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4954

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub268 = sub i64 %61, 1, !dbg !4954
  %and269 = and i64 %sub268, 2048, !dbg !4954
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4954
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4954

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4954

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub273 = sub i64 %62, 1, !dbg !4954
  %and274 = and i64 %sub273, 1024, !dbg !4954
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4954
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4954

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4954

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub278 = sub i64 %63, 1, !dbg !4954
  %and279 = and i64 %sub278, 512, !dbg !4954
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4954
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4954

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4954

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub283 = sub i64 %64, 1, !dbg !4954
  %and284 = and i64 %sub283, 256, !dbg !4954
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4954
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4954

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4954

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub288 = sub i64 %65, 1, !dbg !4954
  %and289 = and i64 %sub288, 128, !dbg !4954
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4954
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4954

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4954

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub293 = sub i64 %66, 1, !dbg !4954
  %and294 = and i64 %sub293, 64, !dbg !4954
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4954
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4954

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4954

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub298 = sub i64 %67, 1, !dbg !4954
  %and299 = and i64 %sub298, 32, !dbg !4954
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4954
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4954

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4954

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub303 = sub i64 %68, 1, !dbg !4954
  %and304 = and i64 %sub303, 16, !dbg !4954
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4954
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4954

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4954

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub308 = sub i64 %69, 1, !dbg !4954
  %and309 = and i64 %sub308, 8, !dbg !4954
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4954
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4954

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4954

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub313 = sub i64 %70, 1, !dbg !4954
  %and314 = and i64 %sub313, 4, !dbg !4954
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4954
  %71 = zext i1 %tobool315 to i64, !dbg !4954
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4954
  br label %cond.end, !dbg !4954

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4954
  br label %cond.end317, !dbg !4954

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4954
  br label %cond.end319, !dbg !4954

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4954
  br label %cond.end321, !dbg !4954

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4954
  br label %cond.end323, !dbg !4954

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4954
  br label %cond.end325, !dbg !4954

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4954
  br label %cond.end327, !dbg !4954

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4954
  br label %cond.end329, !dbg !4954

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4954
  br label %cond.end331, !dbg !4954

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4954
  br label %cond.end333, !dbg !4954

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4954
  br label %cond.end335, !dbg !4954

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4954
  br label %cond.end337, !dbg !4954

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4954
  br label %cond.end339, !dbg !4954

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4954
  br label %cond.end341, !dbg !4954

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4954
  br label %cond.end343, !dbg !4954

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4954
  br label %cond.end345, !dbg !4954

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4954
  br label %cond.end347, !dbg !4954

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4954
  br label %cond.end349, !dbg !4954

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4954
  br label %cond.end351, !dbg !4954

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4954
  br label %cond.end353, !dbg !4954

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4954
  br label %cond.end355, !dbg !4954

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4954
  br label %cond.end357, !dbg !4954

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4954
  br label %cond.end359, !dbg !4954

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4954
  br label %cond.end361, !dbg !4954

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4954
  br label %cond.end363, !dbg !4954

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4954
  br label %cond.end365, !dbg !4954

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4954
  br label %cond.end367, !dbg !4954

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4954
  br label %cond.end369, !dbg !4954

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4954
  br label %cond.end371, !dbg !4954

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4954
  br label %cond.end373, !dbg !4954

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4954
  br label %cond.end375, !dbg !4954

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4954
  br label %cond.end377, !dbg !4954

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4954
  br label %cond.end379, !dbg !4954

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4954
  br label %cond.end381, !dbg !4954

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4954
  br label %cond.end383, !dbg !4954

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4954
  br label %cond.end385, !dbg !4954

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4954
  br label %cond.end387, !dbg !4954

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4954
  br label %cond.end389, !dbg !4954

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4954
  br label %cond.end391, !dbg !4954

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4954
  br label %cond.end393, !dbg !4954

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4954
  br label %cond.end395, !dbg !4954

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4954
  br label %cond.end397, !dbg !4954

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4954
  br label %cond.end399, !dbg !4954

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4954
  br label %cond.end401, !dbg !4954

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4954
  br label %cond.end403, !dbg !4954

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4954
  br label %cond.end405, !dbg !4954

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4954
  br label %cond.end407, !dbg !4954

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4954
  br label %cond.end409, !dbg !4954

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4954
  br label %cond.end411, !dbg !4954

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4954
  br label %cond.end413, !dbg !4954

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4954
  br label %cond.end415, !dbg !4954

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4954
  br label %cond.end417, !dbg !4954

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4954
  br label %cond.end419, !dbg !4954

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4954
  br label %cond.end421, !dbg !4954

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4954
  br label %cond.end423, !dbg !4954

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4954
  br label %cond.end425, !dbg !4954

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4954
  br label %cond.end427, !dbg !4954

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4954
  br label %cond.end429, !dbg !4954

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4954
  br label %cond.end431, !dbg !4954

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4954
  br label %cond.end433, !dbg !4954

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4954
  br label %cond.end435, !dbg !4954

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4954
  br label %cond.end437, !dbg !4954

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4954
  br label %cond.end440, !dbg !4954

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4954

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4954
  br label %cond.end444, !dbg !4954

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4954
  %sub443 = sub i64 %72, 1, !dbg !4954
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4954
  br label %cond.end444, !dbg !4954

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4954
  %sub446 = sub i32 %cond445, 12, !dbg !4955
  %add = add i32 %sub446, 1, !dbg !4956
  store i32 %add, i32* %retval, align 4, !dbg !4957
  br label %return, !dbg !4957

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4958
  %dec = add i64 %73, -1, !dbg !4958
  store i64 %dec, i64* %size.addr, align 8, !dbg !4958
  %74 = load i64, i64* %size.addr, align 8, !dbg !4959
  %shr = lshr i64 %74, 12, !dbg !4959
  store i64 %shr, i64* %size.addr, align 8, !dbg !4959
  %75 = load i64, i64* %size.addr, align 8, !dbg !4960
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4937
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4961
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4962
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4961, !srcloc !4963
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4961
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4964
  %add.i = add i32 %79, 1, !dbg !4965
  store i32 %add.i, i32* %retval, align 4, !dbg !4966
  br label %return, !dbg !4966

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4967
  ret i32 %80, !dbg !4967
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4968 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4929, metadata !DIExpression()), !dbg !4972
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4936, metadata !DIExpression()), !dbg !4974
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4975, metadata !DIExpression()), !dbg !4976
  %0 = load i64, i64* %n.addr, align 8, !dbg !4977
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4974
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4978
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4979
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4978, !srcloc !4963
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4978
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4980
  %add.i = add i32 %4, 1, !dbg !4981
  %sub = sub i32 %add.i, 1, !dbg !4982
  ret i32 %sub, !dbg !4983
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4984 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4988, metadata !DIExpression()), !dbg !4989
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4990, metadata !DIExpression()), !dbg !4991
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4992, metadata !DIExpression()), !dbg !4993
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4994, metadata !DIExpression()), !dbg !4995
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4996
  ret i8* %0, !dbg !4997
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #7

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @stv0299_release(%struct.dvb_frontend* %fe) #0 !dbg !4998 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.stv0299_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4999, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5001, metadata !DIExpression()), !dbg !5002
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5003
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5004
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5004
  %2 = bitcast i8* %1 to %struct.stv0299_state*, !dbg !5003
  store %struct.stv0299_state* %2, %struct.stv0299_state** %state, align 8, !dbg !5002
  %3 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5005
  %4 = bitcast %struct.stv0299_state* %3 to i8*, !dbg !5005
  call void @kfree(i8* %4) #8, !dbg !5006
  ret void, !dbg !5007
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_init(%struct.dvb_frontend* %fe) #0 !dbg !5008 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.stv0299_state*, align 8
  %i = alloca i32, align 4
  %reg = alloca i8, align 1
  %val = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5009, metadata !DIExpression()), !dbg !5010
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5011, metadata !DIExpression()), !dbg !5012
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5013
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5014
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5014
  %2 = bitcast i8* %1 to %struct.stv0299_state*, !dbg !5013
  store %struct.stv0299_state* %2, %struct.stv0299_state** %state, align 8, !dbg !5012
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5015, metadata !DIExpression()), !dbg !5016
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !5017, metadata !DIExpression()), !dbg !5018
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5019, metadata !DIExpression()), !dbg !5020
  br label %do.body, !dbg !5021

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5022
  %tobool = icmp ne i32 %3, 0, !dbg !5022
  br i1 %tobool, label %if.then, label %if.end, !dbg !5025

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0)) #12, !dbg !5022
  br label %if.end, !dbg !5022

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5025

do.end:                                           ; preds = %if.end
  %4 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5026
  %5 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5027
  %mcr_reg = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %5, i32 0, i32 9, !dbg !5028
  %6 = load i8, i8* %mcr_reg, align 8, !dbg !5028
  %conv = zext i8 %6 to i32, !dbg !5027
  %or = or i32 48, %conv, !dbg !5029
  %conv1 = trunc i32 %or to i8, !dbg !5030
  %call2 = call i32 @stv0299_writeregI(%struct.stv0299_state* %4, i8 zeroext 2, i8 zeroext %conv1) #8, !dbg !5031
  call void @msleep(i32 50) #8, !dbg !5032
  store i32 0, i32* %i, align 4, !dbg !5033
  br label %for.cond, !dbg !5035

for.cond:                                         ; preds = %for.inc, %do.end
  %7 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5036
  %config = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %7, i32 0, i32 1, !dbg !5039
  %8 = load %struct.stv0299_config*, %struct.stv0299_config** %config, align 8, !dbg !5039
  %inittab = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %8, i32 0, i32 1, !dbg !5040
  %9 = load i8*, i8** %inittab, align 8, !dbg !5040
  %10 = load i32, i32* %i, align 4, !dbg !5041
  %idxprom = sext i32 %10 to i64, !dbg !5036
  %arrayidx = getelementptr i8, i8* %9, i64 %idxprom, !dbg !5036
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5036
  store i8 %11, i8* %reg, align 1, !dbg !5042
  %12 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5043
  %config3 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %12, i32 0, i32 1, !dbg !5044
  %13 = load %struct.stv0299_config*, %struct.stv0299_config** %config3, align 8, !dbg !5044
  %inittab4 = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %13, i32 0, i32 1, !dbg !5045
  %14 = load i8*, i8** %inittab4, align 8, !dbg !5045
  %15 = load i32, i32* %i, align 4, !dbg !5046
  %add = add i32 %15, 1, !dbg !5047
  %idxprom5 = sext i32 %add to i64, !dbg !5043
  %arrayidx6 = getelementptr i8, i8* %14, i64 %idxprom5, !dbg !5043
  %16 = load i8, i8* %arrayidx6, align 1, !dbg !5043
  store i8 %16, i8* %val, align 1, !dbg !5048
  %17 = load i8, i8* %reg, align 1, !dbg !5049
  %conv7 = zext i8 %17 to i32, !dbg !5049
  %cmp = icmp eq i32 %conv7, 255, !dbg !5051
  br i1 %cmp, label %land.lhs.true, label %if.end13, !dbg !5052

land.lhs.true:                                    ; preds = %for.cond
  %18 = load i8, i8* %val, align 1, !dbg !5053
  %conv9 = zext i8 %18 to i32, !dbg !5053
  %cmp10 = icmp eq i32 %conv9, 255, !dbg !5054
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !5055

if.then12:                                        ; preds = %land.lhs.true
  br label %for.end, !dbg !5056

if.end13:                                         ; preds = %land.lhs.true, %for.cond
  %19 = load i8, i8* %reg, align 1, !dbg !5057
  %conv14 = zext i8 %19 to i32, !dbg !5057
  %cmp15 = icmp eq i32 %conv14, 12, !dbg !5059
  br i1 %cmp15, label %land.lhs.true17, label %if.end24, !dbg !5060

land.lhs.true17:                                  ; preds = %if.end13
  %20 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5061
  %config18 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %20, i32 0, i32 1, !dbg !5062
  %21 = load %struct.stv0299_config*, %struct.stv0299_config** %config18, align 8, !dbg !5062
  %op0_off = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %21, i32 0, i32 3, !dbg !5063
  %bf.load = load i8, i8* %op0_off, align 4, !dbg !5063
  %bf.lshr = lshr i8 %bf.load, 5, !dbg !5063
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5063
  %conv19 = zext i8 %bf.clear to i32, !dbg !5061
  %tobool20 = icmp ne i32 %conv19, 0, !dbg !5061
  br i1 %tobool20, label %if.then21, label %if.end24, !dbg !5064

if.then21:                                        ; preds = %land.lhs.true17
  %22 = load i8, i8* %val, align 1, !dbg !5065
  %conv22 = zext i8 %22 to i32, !dbg !5065
  %and = and i32 %conv22, -17, !dbg !5065
  %conv23 = trunc i32 %and to i8, !dbg !5065
  store i8 %conv23, i8* %val, align 1, !dbg !5065
  br label %if.end24, !dbg !5066

if.end24:                                         ; preds = %if.then21, %land.lhs.true17, %if.end13
  %23 = load i8, i8* %reg, align 1, !dbg !5067
  %conv25 = zext i8 %23 to i32, !dbg !5067
  %cmp26 = icmp eq i32 %conv25, 2, !dbg !5069
  br i1 %cmp26, label %if.then28, label %if.end33, !dbg !5070

if.then28:                                        ; preds = %if.end24
  %24 = load i8, i8* %val, align 1, !dbg !5071
  %conv29 = zext i8 %24 to i32, !dbg !5071
  %and30 = and i32 %conv29, 15, !dbg !5072
  %conv31 = trunc i32 %and30 to i8, !dbg !5071
  %25 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5073
  %mcr_reg32 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %25, i32 0, i32 9, !dbg !5074
  store i8 %conv31, i8* %mcr_reg32, align 8, !dbg !5075
  br label %if.end33, !dbg !5073

if.end33:                                         ; preds = %if.then28, %if.end24
  %26 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5076
  %27 = load i8, i8* %reg, align 1, !dbg !5077
  %28 = load i8, i8* %val, align 1, !dbg !5078
  %call34 = call i32 @stv0299_writeregI(%struct.stv0299_state* %26, i8 zeroext %27, i8 zeroext %28) #8, !dbg !5079
  br label %for.inc, !dbg !5080

for.inc:                                          ; preds = %if.end33
  %29 = load i32, i32* %i, align 4, !dbg !5081
  %add35 = add i32 %29, 2, !dbg !5081
  store i32 %add35, i32* %i, align 4, !dbg !5081
  br label %for.cond, !dbg !5082, !llvm.loop !5083

for.end:                                          ; preds = %if.then12
  ret i32 0, !dbg !5086
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_sleep(%struct.dvb_frontend* %fe) #0 !dbg !5087 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.stv0299_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5088, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5090, metadata !DIExpression()), !dbg !5091
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5092
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5093
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5093
  %2 = bitcast i8* %1 to %struct.stv0299_state*, !dbg !5092
  store %struct.stv0299_state* %2, %struct.stv0299_state** %state, align 8, !dbg !5091
  %3 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5094
  %4 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5095
  %mcr_reg = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %4, i32 0, i32 9, !dbg !5096
  %5 = load i8, i8* %mcr_reg, align 8, !dbg !5096
  %conv = zext i8 %5 to i32, !dbg !5095
  %or = or i32 176, %conv, !dbg !5097
  %conv1 = trunc i32 %or to i8, !dbg !5098
  %call = call i32 @stv0299_writeregI(%struct.stv0299_state* %3, i8 zeroext 2, i8 zeroext %conv1) #8, !dbg !5099
  %6 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5100
  %initialised = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %6, i32 0, i32 3, !dbg !5101
  %bf.load = load i8, i8* %initialised, align 8, !dbg !5102
  %bf.clear = and i8 %bf.load, -2, !dbg !5102
  store i8 %bf.clear, i8* %initialised, align 8, !dbg !5102
  ret i32 0, !dbg !5103
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_write(%struct.dvb_frontend* %fe, i8* %buf, i32 %len) #0 !dbg !5104 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %state = alloca %struct.stv0299_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5105, metadata !DIExpression()), !dbg !5106
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5107, metadata !DIExpression()), !dbg !5108
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5109, metadata !DIExpression()), !dbg !5110
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5111, metadata !DIExpression()), !dbg !5112
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5113
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5114
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5114
  %2 = bitcast i8* %1 to %struct.stv0299_state*, !dbg !5113
  store %struct.stv0299_state* %2, %struct.stv0299_state** %state, align 8, !dbg !5112
  %3 = load i32, i32* %len.addr, align 4, !dbg !5115
  %cmp = icmp ne i32 %3, 2, !dbg !5117
  br i1 %cmp, label %if.then, label %if.end, !dbg !5118

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5119
  br label %return, !dbg !5119

if.end:                                           ; preds = %entry
  %4 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5120
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5121
  %arrayidx = getelementptr i8, i8* %5, i64 0, !dbg !5121
  %6 = load i8, i8* %arrayidx, align 1, !dbg !5121
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !5122
  %arrayidx1 = getelementptr i8, i8* %7, i64 1, !dbg !5122
  %8 = load i8, i8* %arrayidx1, align 1, !dbg !5122
  %call = call i32 @stv0299_writeregI(%struct.stv0299_state* %4, i8 zeroext %6, i8 zeroext %8) #8, !dbg !5123
  store i32 %call, i32* %retval, align 4, !dbg !5124
  br label %return, !dbg !5124

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5125
  ret i32 %9, !dbg !5125
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_set_frontend(%struct.dvb_frontend* %fe) #0 !dbg !5126 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.stv0299_state*, align 8
  %invval = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5127, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !5129, metadata !DIExpression()), !dbg !5130
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5131
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5132
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !5130
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5133, metadata !DIExpression()), !dbg !5134
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5135
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 3, !dbg !5136
  %2 = load i8*, i8** %demodulator_priv, align 8, !dbg !5136
  %3 = bitcast i8* %2 to %struct.stv0299_state*, !dbg !5135
  store %struct.stv0299_state* %3, %struct.stv0299_state** %state, align 8, !dbg !5134
  call void @llvm.dbg.declare(metadata i32* %invval, metadata !5137, metadata !DIExpression()), !dbg !5138
  store i32 0, i32* %invval, align 4, !dbg !5138
  br label %do.body, !dbg !5139

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @debug, align 4, !dbg !5140
  %tobool = icmp ne i32 %4, 0, !dbg !5140
  br i1 %tobool, label %if.then, label %if.end, !dbg !5143

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.stv0299_set_frontend, i64 0, i64 0)) #12, !dbg !5140
  br label %if.end, !dbg !5140

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5143

do.end:                                           ; preds = %if.end
  %5 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5144
  %config = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %5, i32 0, i32 1, !dbg !5146
  %6 = load %struct.stv0299_config*, %struct.stv0299_config** %config, align 8, !dbg !5146
  %set_ts_params = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %6, i32 0, i32 6, !dbg !5147
  %7 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %set_ts_params, align 8, !dbg !5147
  %tobool1 = icmp ne i32 (%struct.dvb_frontend*, i32)* %7, null, !dbg !5144
  br i1 %tobool1, label %if.then2, label %if.end6, !dbg !5148

if.then2:                                         ; preds = %do.end
  %8 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5149
  %config3 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %8, i32 0, i32 1, !dbg !5150
  %9 = load %struct.stv0299_config*, %struct.stv0299_config** %config3, align 8, !dbg !5150
  %set_ts_params4 = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %9, i32 0, i32 6, !dbg !5151
  %10 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %set_ts_params4, align 8, !dbg !5151
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5152
  %call5 = call i32 %10(%struct.dvb_frontend* %11, i32 0) #8, !dbg !5149
  br label %if.end6, !dbg !5149

if.end6:                                          ; preds = %if.then2, %do.end
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5153
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 4, !dbg !5155
  %13 = load i32, i32* %inversion, align 4, !dbg !5155
  %cmp = icmp eq i32 %13, 0, !dbg !5156
  br i1 %cmp, label %if.then7, label %if.else, !dbg !5157

if.then7:                                         ; preds = %if.end6
  store i32 0, i32* %invval, align 4, !dbg !5158
  br label %if.end14, !dbg !5159

if.else:                                          ; preds = %if.end6
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5160
  %inversion8 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %14, i32 0, i32 4, !dbg !5162
  %15 = load i32, i32* %inversion8, align 4, !dbg !5162
  %cmp9 = icmp eq i32 %15, 1, !dbg !5163
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !5164

if.then10:                                        ; preds = %if.else
  store i32 1, i32* %invval, align 4, !dbg !5165
  br label %if.end13, !dbg !5166

if.else11:                                        ; preds = %if.else
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0)) #12, !dbg !5167
  store i32 -22, i32* %retval, align 4, !dbg !5169
  br label %return, !dbg !5169

if.end13:                                         ; preds = %if.then10
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then7
  %16 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5170
  %config15 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %16, i32 0, i32 1, !dbg !5172
  %17 = load %struct.stv0299_config*, %struct.stv0299_config** %config15, align 8, !dbg !5172
  %invert = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %17, i32 0, i32 3, !dbg !5173
  %bf.load = load i8, i8* %invert, align 4, !dbg !5173
  %bf.clear = and i8 %bf.load, 1, !dbg !5173
  %tobool16 = icmp ne i8 %bf.clear, 0, !dbg !5170
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !5174

if.then17:                                        ; preds = %if.end14
  %18 = load i32, i32* %invval, align 4, !dbg !5175
  %neg = xor i32 %18, -1, !dbg !5176
  %and = and i32 %neg, 1, !dbg !5177
  store i32 %and, i32* %invval, align 4, !dbg !5178
  br label %if.end18, !dbg !5179

if.end18:                                         ; preds = %if.then17, %if.end14
  %19 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5180
  %20 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5181
  %call19 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %20, i8 zeroext 12) #8, !dbg !5182
  %conv = zext i8 %call19 to i32, !dbg !5182
  %and20 = and i32 %conv, 254, !dbg !5183
  %21 = load i32, i32* %invval, align 4, !dbg !5184
  %or = or i32 %and20, %21, !dbg !5185
  %conv21 = trunc i32 %or to i8, !dbg !5186
  %call22 = call i32 @stv0299_writeregI(%struct.stv0299_state* %19, i8 zeroext 12, i8 zeroext %conv21) #8, !dbg !5187
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5188
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 1, !dbg !5190
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5191
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5192
  %23 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5192
  %tobool23 = icmp ne i32 (%struct.dvb_frontend*)* %23, null, !dbg !5188
  br i1 %tobool23, label %if.then24, label %if.end36, !dbg !5193

if.then24:                                        ; preds = %if.end18
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5194
  %ops25 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 1, !dbg !5196
  %tuner_ops26 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops25, i32 0, i32 30, !dbg !5197
  %set_params27 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops26, i32 0, i32 6, !dbg !5198
  %25 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params27, align 8, !dbg !5198
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5199
  %call28 = call i32 %25(%struct.dvb_frontend* %26) #8, !dbg !5194
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5200
  %ops29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 1, !dbg !5202
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops29, i32 0, i32 26, !dbg !5203
  %28 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5203
  %tobool30 = icmp ne i32 (%struct.dvb_frontend*, i32)* %28, null, !dbg !5200
  br i1 %tobool30, label %if.then31, label %if.end35, !dbg !5204

if.then31:                                        ; preds = %if.then24
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5205
  %ops32 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %29, i32 0, i32 1, !dbg !5206
  %i2c_gate_ctrl33 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops32, i32 0, i32 26, !dbg !5207
  %30 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl33, align 8, !dbg !5207
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5208
  %call34 = call i32 %30(%struct.dvb_frontend* %31, i32 0) #8, !dbg !5205
  br label %if.end35, !dbg !5205

if.end35:                                         ; preds = %if.then31, %if.then24
  br label %if.end36, !dbg !5209

if.end36:                                         ; preds = %if.end35, %if.end18
  %32 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5210
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5211
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 5, !dbg !5212
  %34 = load i32, i32* %fec_inner, align 4, !dbg !5212
  %call37 = call i32 @stv0299_set_FEC(%struct.stv0299_state* %32, i32 %34) #8, !dbg !5213
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5214
  %36 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5215
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %36, i32 0, i32 10, !dbg !5216
  %37 = load i32, i32* %symbol_rate, align 4, !dbg !5216
  %call38 = call i32 @stv0299_set_symbolrate(%struct.dvb_frontend* %35, i32 %37) #8, !dbg !5217
  %38 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5218
  %call39 = call i32 @stv0299_writeregI(%struct.stv0299_state* %38, i8 zeroext 34, i8 zeroext 0) #8, !dbg !5219
  %39 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5220
  %call40 = call i32 @stv0299_writeregI(%struct.stv0299_state* %39, i8 zeroext 35, i8 zeroext 0) #8, !dbg !5221
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5222
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 0, !dbg !5223
  %41 = load i32, i32* %frequency, align 4, !dbg !5223
  %42 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5224
  %tuner_frequency = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %42, i32 0, i32 4, !dbg !5225
  store i32 %41, i32* %tuner_frequency, align 4, !dbg !5226
  %43 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5227
  %fec_inner41 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %43, i32 0, i32 5, !dbg !5228
  %44 = load i32, i32* %fec_inner41, align 4, !dbg !5228
  %45 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5229
  %fec_inner42 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %45, i32 0, i32 6, !dbg !5230
  store i32 %44, i32* %fec_inner42, align 4, !dbg !5231
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5232
  %symbol_rate43 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %46, i32 0, i32 10, !dbg !5233
  %47 = load i32, i32* %symbol_rate43, align 4, !dbg !5233
  %48 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5234
  %symbol_rate44 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %48, i32 0, i32 5, !dbg !5235
  store i32 %47, i32* %symbol_rate44, align 8, !dbg !5236
  store i32 0, i32* %retval, align 4, !dbg !5237
  br label %return, !dbg !5237

return:                                           ; preds = %if.end36, %if.else11
  %49 = load i32, i32* %retval, align 4, !dbg !5238
  ret i32 %49, !dbg !5238
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %fesettings) #0 !dbg !5239 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fesettings.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  %state = alloca %struct.stv0299_state*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5240, metadata !DIExpression()), !dbg !5241
  store %struct.dvb_frontend_tune_settings* %fesettings, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %fesettings.addr, metadata !5242, metadata !DIExpression()), !dbg !5243
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5244, metadata !DIExpression()), !dbg !5245
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5246
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5247
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5247
  %2 = bitcast i8* %1 to %struct.stv0299_state*, !dbg !5246
  store %struct.stv0299_state* %2, %struct.stv0299_state** %state, align 8, !dbg !5245
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !5248, metadata !DIExpression()), !dbg !5249
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5250
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 8, !dbg !5251
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !5249
  %4 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5252
  %config = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %4, i32 0, i32 1, !dbg !5253
  %5 = load %struct.stv0299_config*, %struct.stv0299_config** %config, align 8, !dbg !5253
  %min_delay_ms = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %5, i32 0, i32 4, !dbg !5254
  %6 = load i32, i32* %min_delay_ms, align 8, !dbg !5254
  %7 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5255
  %min_delay_ms1 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %7, i32 0, i32 0, !dbg !5256
  store i32 %6, i32* %min_delay_ms1, align 4, !dbg !5257
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5258
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 10, !dbg !5260
  %9 = load i32, i32* %symbol_rate, align 4, !dbg !5260
  %cmp = icmp ult i32 %9, 10000000, !dbg !5261
  br i1 %cmp, label %if.then, label %if.else, !dbg !5262

if.then:                                          ; preds = %entry
  %10 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5263
  %symbol_rate2 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %10, i32 0, i32 10, !dbg !5265
  %11 = load i32, i32* %symbol_rate2, align 4, !dbg !5265
  %div = udiv i32 %11, 32000, !dbg !5266
  %12 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5267
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %12, i32 0, i32 1, !dbg !5268
  store i32 %div, i32* %step_size, align 4, !dbg !5269
  %13 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5270
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %13, i32 0, i32 2, !dbg !5271
  store i32 5000, i32* %max_drift, align 4, !dbg !5272
  br label %if.end, !dbg !5273

if.else:                                          ; preds = %entry
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5274
  %symbol_rate3 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %14, i32 0, i32 10, !dbg !5276
  %15 = load i32, i32* %symbol_rate3, align 4, !dbg !5276
  %div4 = udiv i32 %15, 16000, !dbg !5277
  %16 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5278
  %step_size5 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %16, i32 0, i32 1, !dbg !5279
  store i32 %div4, i32* %step_size5, align 4, !dbg !5280
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5281
  %symbol_rate6 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 10, !dbg !5282
  %18 = load i32, i32* %symbol_rate6, align 4, !dbg !5282
  %div7 = udiv i32 %18, 2000, !dbg !5283
  %19 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5284
  %max_drift8 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %19, i32 0, i32 2, !dbg !5285
  store i32 %div7, i32* %max_drift8, align 4, !dbg !5286
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !5287
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_get_frontend(%struct.dvb_frontend* %fe, %struct.dtv_frontend_properties* %p) #0 !dbg !5288 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p.addr = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.stv0299_state*, align 8
  %derot_freq = alloca i32, align 4
  %invval = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5289, metadata !DIExpression()), !dbg !5290
  store %struct.dtv_frontend_properties* %p, %struct.dtv_frontend_properties** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p.addr, metadata !5291, metadata !DIExpression()), !dbg !5292
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5293, metadata !DIExpression()), !dbg !5294
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5295
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5296
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5296
  %2 = bitcast i8* %1 to %struct.stv0299_state*, !dbg !5295
  store %struct.stv0299_state* %2, %struct.stv0299_state** %state, align 8, !dbg !5294
  call void @llvm.dbg.declare(metadata i32* %derot_freq, metadata !5297, metadata !DIExpression()), !dbg !5298
  call void @llvm.dbg.declare(metadata i32* %invval, metadata !5299, metadata !DIExpression()), !dbg !5300
  %3 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5301
  %call = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %3, i8 zeroext 34) #8, !dbg !5302
  %conv = zext i8 %call to i32, !dbg !5302
  %shl = shl i32 %conv, 8, !dbg !5303
  %4 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5304
  %call1 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %4, i8 zeroext 35) #8, !dbg !5305
  %conv2 = zext i8 %call1 to i32, !dbg !5305
  %or = or i32 %shl, %conv2, !dbg !5306
  %conv3 = trunc i32 %or to i16, !dbg !5307
  %conv4 = sext i16 %conv3 to i32, !dbg !5308
  store i32 %conv4, i32* %derot_freq, align 4, !dbg !5309
  %5 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5310
  %config = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %5, i32 0, i32 1, !dbg !5311
  %6 = load %struct.stv0299_config*, %struct.stv0299_config** %config, align 8, !dbg !5311
  %mclk = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %6, i32 0, i32 2, !dbg !5312
  %7 = load i32, i32* %mclk, align 8, !dbg !5312
  %shr = lshr i32 %7, 16, !dbg !5313
  %8 = load i32, i32* %derot_freq, align 4, !dbg !5314
  %mul = mul i32 %8, %shr, !dbg !5314
  store i32 %mul, i32* %derot_freq, align 4, !dbg !5314
  %9 = load i32, i32* %derot_freq, align 4, !dbg !5315
  %add = add i32 %9, 500, !dbg !5315
  store i32 %add, i32* %derot_freq, align 4, !dbg !5315
  %10 = load i32, i32* %derot_freq, align 4, !dbg !5316
  %div = sdiv i32 %10, 1000, !dbg !5316
  store i32 %div, i32* %derot_freq, align 4, !dbg !5316
  %11 = load i32, i32* %derot_freq, align 4, !dbg !5317
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5318
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 0, !dbg !5319
  %13 = load i32, i32* %frequency, align 4, !dbg !5320
  %add5 = add i32 %13, %11, !dbg !5320
  store i32 %add5, i32* %frequency, align 4, !dbg !5320
  %14 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5321
  %call6 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %14, i8 zeroext 12) #8, !dbg !5322
  %conv7 = zext i8 %call6 to i32, !dbg !5322
  %and = and i32 %conv7, 1, !dbg !5323
  store i32 %and, i32* %invval, align 4, !dbg !5324
  %15 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5325
  %config8 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %15, i32 0, i32 1, !dbg !5327
  %16 = load %struct.stv0299_config*, %struct.stv0299_config** %config8, align 8, !dbg !5327
  %invert = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %16, i32 0, i32 3, !dbg !5328
  %bf.load = load i8, i8* %invert, align 4, !dbg !5328
  %bf.clear = and i8 %bf.load, 1, !dbg !5328
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !5325
  br i1 %tobool, label %if.then, label %if.end, !dbg !5329

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %invval, align 4, !dbg !5330
  %neg = xor i32 %17, -1, !dbg !5331
  %and9 = and i32 %neg, 1, !dbg !5332
  store i32 %and9, i32* %invval, align 4, !dbg !5333
  br label %if.end, !dbg !5334

if.end:                                           ; preds = %if.then, %entry
  %18 = load i32, i32* %invval, align 4, !dbg !5335
  %tobool10 = icmp ne i32 %18, 0, !dbg !5335
  %19 = zext i1 %tobool10 to i64, !dbg !5335
  %cond = select i1 %tobool10, i32 1, i32 0, !dbg !5335
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5336
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 4, !dbg !5337
  store i32 %cond, i32* %inversion, align 4, !dbg !5338
  %21 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5339
  %call11 = call i32 @stv0299_get_fec(%struct.stv0299_state* %21) #8, !dbg !5340
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5341
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 5, !dbg !5342
  store i32 %call11, i32* %fec_inner, align 4, !dbg !5343
  %23 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5344
  %call12 = call i32 @stv0299_get_symbolrate(%struct.stv0299_state* %23) #8, !dbg !5345
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5346
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 10, !dbg !5347
  store i32 %call12, i32* %symbol_rate, align 4, !dbg !5348
  ret i32 0, !dbg !5349
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !5350 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.stv0299_state*, align 8
  %signal = alloca i8, align 1
  %sync = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5351, metadata !DIExpression()), !dbg !5352
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5353, metadata !DIExpression()), !dbg !5354
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5355, metadata !DIExpression()), !dbg !5356
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5357
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5358
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5358
  %2 = bitcast i8* %1 to %struct.stv0299_state*, !dbg !5357
  store %struct.stv0299_state* %2, %struct.stv0299_state** %state, align 8, !dbg !5356
  call void @llvm.dbg.declare(metadata i8* %signal, metadata !5359, metadata !DIExpression()), !dbg !5360
  %3 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5361
  %call = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %3, i8 zeroext 24) #8, !dbg !5362
  %conv = zext i8 %call to i32, !dbg !5362
  %sub = sub i32 255, %conv, !dbg !5363
  %conv1 = trunc i32 %sub to i8, !dbg !5364
  store i8 %conv1, i8* %signal, align 1, !dbg !5360
  call void @llvm.dbg.declare(metadata i8* %sync, metadata !5365, metadata !DIExpression()), !dbg !5366
  %4 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5367
  %call2 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %4, i8 zeroext 27) #8, !dbg !5368
  store i8 %call2, i8* %sync, align 1, !dbg !5366
  br label %do.body, !dbg !5369

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @debug, align 4, !dbg !5370
  %tobool = icmp ne i32 %5, 0, !dbg !5370
  br i1 %tobool, label %if.then, label %if.end, !dbg !5373

if.then:                                          ; preds = %do.body
  %6 = load i8, i8* %sync, align 1, !dbg !5370
  %conv3 = zext i8 %6 to i32, !dbg !5370
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.stv0299_read_status, i64 0, i64 0), i32 %conv3) #12, !dbg !5370
  br label %if.end, !dbg !5370

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5373

do.end:                                           ; preds = %if.end
  %7 = load i32*, i32** %status.addr, align 8, !dbg !5374
  store i32 0, i32* %7, align 4, !dbg !5375
  %8 = load i8, i8* %signal, align 1, !dbg !5376
  %conv5 = zext i8 %8 to i32, !dbg !5376
  %cmp = icmp sgt i32 %conv5, 10, !dbg !5378
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !5379

if.then7:                                         ; preds = %do.end
  %9 = load i32*, i32** %status.addr, align 8, !dbg !5380
  %10 = load i32, i32* %9, align 4, !dbg !5381
  %or = or i32 %10, 1, !dbg !5381
  store i32 %or, i32* %9, align 4, !dbg !5381
  br label %if.end8, !dbg !5382

if.end8:                                          ; preds = %if.then7, %do.end
  %11 = load i8, i8* %sync, align 1, !dbg !5383
  %conv9 = zext i8 %11 to i32, !dbg !5383
  %and = and i32 %conv9, 128, !dbg !5385
  %tobool10 = icmp ne i32 %and, 0, !dbg !5385
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !5386

if.then11:                                        ; preds = %if.end8
  %12 = load i32*, i32** %status.addr, align 8, !dbg !5387
  %13 = load i32, i32* %12, align 4, !dbg !5388
  %or12 = or i32 %13, 2, !dbg !5388
  store i32 %or12, i32* %12, align 4, !dbg !5388
  br label %if.end13, !dbg !5389

if.end13:                                         ; preds = %if.then11, %if.end8
  %14 = load i8, i8* %sync, align 1, !dbg !5390
  %conv14 = zext i8 %14 to i32, !dbg !5390
  %and15 = and i32 %conv14, 16, !dbg !5392
  %tobool16 = icmp ne i32 %and15, 0, !dbg !5392
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !5393

if.then17:                                        ; preds = %if.end13
  %15 = load i32*, i32** %status.addr, align 8, !dbg !5394
  %16 = load i32, i32* %15, align 4, !dbg !5395
  %or18 = or i32 %16, 4, !dbg !5395
  store i32 %or18, i32* %15, align 4, !dbg !5395
  br label %if.end19, !dbg !5396

if.end19:                                         ; preds = %if.then17, %if.end13
  %17 = load i8, i8* %sync, align 1, !dbg !5397
  %conv20 = zext i8 %17 to i32, !dbg !5397
  %and21 = and i32 %conv20, 8, !dbg !5399
  %tobool22 = icmp ne i32 %and21, 0, !dbg !5399
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !5400

if.then23:                                        ; preds = %if.end19
  %18 = load i32*, i32** %status.addr, align 8, !dbg !5401
  %19 = load i32, i32* %18, align 4, !dbg !5402
  %or24 = or i32 %19, 8, !dbg !5402
  store i32 %or24, i32* %18, align 4, !dbg !5402
  br label %if.end25, !dbg !5403

if.end25:                                         ; preds = %if.then23, %if.end19
  %20 = load i8, i8* %sync, align 1, !dbg !5404
  %conv26 = zext i8 %20 to i32, !dbg !5404
  %and27 = and i32 %conv26, 152, !dbg !5406
  %cmp28 = icmp eq i32 %and27, 152, !dbg !5407
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !5408

if.then30:                                        ; preds = %if.end25
  %21 = load i32*, i32** %status.addr, align 8, !dbg !5409
  %22 = load i32, i32* %21, align 4, !dbg !5410
  %or31 = or i32 %22, 16, !dbg !5410
  store i32 %or31, i32* %21, align 4, !dbg !5410
  br label %if.end32, !dbg !5411

if.end32:                                         ; preds = %if.then30, %if.end25
  ret i32 0, !dbg !5412
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5413 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %state = alloca %struct.stv0299_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5414, metadata !DIExpression()), !dbg !5415
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5416, metadata !DIExpression()), !dbg !5417
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5418, metadata !DIExpression()), !dbg !5419
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5420
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5421
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5421
  %2 = bitcast i8* %1 to %struct.stv0299_state*, !dbg !5420
  store %struct.stv0299_state* %2, %struct.stv0299_state** %state, align 8, !dbg !5419
  %3 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5422
  %errmode = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %3, i32 0, i32 7, !dbg !5424
  %4 = load i32, i32* %errmode, align 8, !dbg !5424
  %cmp = icmp ne i32 %4, 0, !dbg !5425
  br i1 %cmp, label %if.then, label %if.end, !dbg !5426

if.then:                                          ; preds = %entry
  store i32 -38, i32* %retval, align 4, !dbg !5427
  br label %return, !dbg !5427

if.end:                                           ; preds = %entry
  %5 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5428
  %call = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %5, i8 zeroext 30) #8, !dbg !5429
  %conv = zext i8 %call to i32, !dbg !5429
  %6 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5430
  %call1 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %6, i8 zeroext 29) #8, !dbg !5431
  %conv2 = zext i8 %call1 to i32, !dbg !5431
  %shl = shl i32 %conv2, 8, !dbg !5432
  %or = or i32 %conv, %shl, !dbg !5433
  %7 = load i32*, i32** %ber.addr, align 8, !dbg !5434
  store i32 %or, i32* %7, align 4, !dbg !5435
  store i32 0, i32* %retval, align 4, !dbg !5436
  br label %return, !dbg !5436

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5437
  ret i32 %8, !dbg !5437
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_read_signal_strength(%struct.dvb_frontend* %fe, i16* %strength) #0 !dbg !5438 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %strength.addr = alloca i16*, align 8
  %state = alloca %struct.stv0299_state*, align 8
  %signal = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5439, metadata !DIExpression()), !dbg !5440
  store i16* %strength, i16** %strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %strength.addr, metadata !5441, metadata !DIExpression()), !dbg !5442
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5443, metadata !DIExpression()), !dbg !5444
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5445
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5446
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5446
  %2 = bitcast i8* %1 to %struct.stv0299_state*, !dbg !5445
  store %struct.stv0299_state* %2, %struct.stv0299_state** %state, align 8, !dbg !5444
  call void @llvm.dbg.declare(metadata i32* %signal, metadata !5447, metadata !DIExpression()), !dbg !5448
  %3 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5449
  %call = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %3, i8 zeroext 24) #8, !dbg !5450
  %conv = zext i8 %call to i32, !dbg !5450
  %shl = shl i32 %conv, 8, !dbg !5451
  %4 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5452
  %call1 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %4, i8 zeroext 25) #8, !dbg !5453
  %conv2 = zext i8 %call1 to i32, !dbg !5453
  %or = or i32 %shl, %conv2, !dbg !5454
  %sub = sub i32 65535, %or, !dbg !5455
  store i32 %sub, i32* %signal, align 4, !dbg !5448
  br label %do.body, !dbg !5456

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @debug, align 4, !dbg !5457
  %tobool = icmp ne i32 %5, 0, !dbg !5457
  br i1 %tobool, label %if.then, label %if.end, !dbg !5460

if.then:                                          ; preds = %do.body
  %6 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5457
  %call3 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %6, i8 zeroext 24) #8, !dbg !5457
  %conv4 = zext i8 %call3 to i32, !dbg !5457
  %7 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5457
  %call5 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %7, i8 zeroext 25) #8, !dbg !5457
  %conv6 = zext i8 %call5 to i32, !dbg !5457
  %8 = load i32, i32* %signal, align 4, !dbg !5457
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.stv0299_read_signal_strength, i64 0, i64 0), i32 %conv4, i32 %conv6, i32 %8) #12, !dbg !5457
  br label %if.end, !dbg !5457

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5460

do.end:                                           ; preds = %if.end
  %9 = load i32, i32* %signal, align 4, !dbg !5461
  %mul = mul i32 %9, 5, !dbg !5462
  %div = sdiv i32 %mul, 4, !dbg !5463
  store i32 %div, i32* %signal, align 4, !dbg !5464
  %10 = load i32, i32* %signal, align 4, !dbg !5465
  %cmp = icmp sgt i32 %10, 65535, !dbg !5466
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5467

cond.true:                                        ; preds = %do.end
  br label %cond.end13, !dbg !5467

cond.false:                                       ; preds = %do.end
  %11 = load i32, i32* %signal, align 4, !dbg !5468
  %cmp9 = icmp slt i32 %11, 0, !dbg !5469
  br i1 %cmp9, label %cond.true11, label %cond.false12, !dbg !5470

cond.true11:                                      ; preds = %cond.false
  br label %cond.end, !dbg !5470

cond.false12:                                     ; preds = %cond.false
  %12 = load i32, i32* %signal, align 4, !dbg !5471
  br label %cond.end, !dbg !5470

cond.end:                                         ; preds = %cond.false12, %cond.true11
  %cond = phi i32 [ 0, %cond.true11 ], [ %12, %cond.false12 ], !dbg !5470
  br label %cond.end13, !dbg !5467

cond.end13:                                       ; preds = %cond.end, %cond.true
  %cond14 = phi i32 [ 65535, %cond.true ], [ %cond, %cond.end ], !dbg !5467
  %conv15 = trunc i32 %cond14 to i16, !dbg !5467
  %13 = load i16*, i16** %strength.addr, align 8, !dbg !5472
  store i16 %conv15, i16* %13, align 2, !dbg !5473
  ret i32 0, !dbg !5474
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5475 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %state = alloca %struct.stv0299_state*, align 8
  %xsnr = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5476, metadata !DIExpression()), !dbg !5477
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5478, metadata !DIExpression()), !dbg !5479
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5480, metadata !DIExpression()), !dbg !5481
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5482
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5483
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5483
  %2 = bitcast i8* %1 to %struct.stv0299_state*, !dbg !5482
  store %struct.stv0299_state* %2, %struct.stv0299_state** %state, align 8, !dbg !5481
  call void @llvm.dbg.declare(metadata i32* %xsnr, metadata !5484, metadata !DIExpression()), !dbg !5485
  %3 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5486
  %call = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %3, i8 zeroext 36) #8, !dbg !5487
  %conv = zext i8 %call to i32, !dbg !5487
  %shl = shl i32 %conv, 8, !dbg !5488
  %4 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5489
  %call1 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %4, i8 zeroext 37) #8, !dbg !5490
  %conv2 = zext i8 %call1 to i32, !dbg !5490
  %or = or i32 %shl, %conv2, !dbg !5491
  %sub = sub i32 65535, %or, !dbg !5492
  store i32 %sub, i32* %xsnr, align 4, !dbg !5485
  %5 = load i32, i32* %xsnr, align 4, !dbg !5493
  %sub3 = sub i32 %5, 41216, !dbg !5494
  %mul = mul i32 3, %sub3, !dbg !5495
  store i32 %mul, i32* %xsnr, align 4, !dbg !5496
  %6 = load i32, i32* %xsnr, align 4, !dbg !5497
  %cmp = icmp sgt i32 %6, 65535, !dbg !5498
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5499

cond.true:                                        ; preds = %entry
  br label %cond.end9, !dbg !5499

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %xsnr, align 4, !dbg !5500
  %cmp5 = icmp slt i32 %7, 0, !dbg !5501
  br i1 %cmp5, label %cond.true7, label %cond.false8, !dbg !5502

cond.true7:                                       ; preds = %cond.false
  br label %cond.end, !dbg !5502

cond.false8:                                      ; preds = %cond.false
  %8 = load i32, i32* %xsnr, align 4, !dbg !5503
  br label %cond.end, !dbg !5502

cond.end:                                         ; preds = %cond.false8, %cond.true7
  %cond = phi i32 [ 0, %cond.true7 ], [ %8, %cond.false8 ], !dbg !5502
  br label %cond.end9, !dbg !5499

cond.end9:                                        ; preds = %cond.end, %cond.true
  %cond10 = phi i32 [ 65535, %cond.true ], [ %cond, %cond.end ], !dbg !5499
  %conv11 = trunc i32 %cond10 to i16, !dbg !5499
  %9 = load i16*, i16** %snr.addr, align 8, !dbg !5504
  store i16 %conv11, i16* %9, align 2, !dbg !5505
  ret i32 0, !dbg !5506
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !5507 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  %state = alloca %struct.stv0299_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5508, metadata !DIExpression()), !dbg !5509
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !5510, metadata !DIExpression()), !dbg !5511
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5512, metadata !DIExpression()), !dbg !5513
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5514
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5515
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5515
  %2 = bitcast i8* %1 to %struct.stv0299_state*, !dbg !5514
  store %struct.stv0299_state* %2, %struct.stv0299_state** %state, align 8, !dbg !5513
  %3 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5516
  %errmode = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %3, i32 0, i32 7, !dbg !5518
  %4 = load i32, i32* %errmode, align 8, !dbg !5518
  %cmp = icmp ne i32 %4, 1, !dbg !5519
  br i1 %cmp, label %if.then, label %if.end, !dbg !5520

if.then:                                          ; preds = %entry
  store i32 -38, i32* %retval, align 4, !dbg !5521
  br label %return, !dbg !5521

if.end:                                           ; preds = %entry
  %5 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5522
  %call = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %5, i8 zeroext 30) #8, !dbg !5523
  %conv = zext i8 %call to i32, !dbg !5523
  %6 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5524
  %ucblocks1 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %6, i32 0, i32 8, !dbg !5525
  %7 = load i32, i32* %ucblocks1, align 4, !dbg !5526
  %add = add i32 %7, %conv, !dbg !5526
  store i32 %add, i32* %ucblocks1, align 4, !dbg !5526
  %8 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5527
  %call2 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %8, i8 zeroext 29) #8, !dbg !5528
  %conv3 = zext i8 %call2 to i32, !dbg !5528
  %shl = shl i32 %conv3, 8, !dbg !5529
  %9 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5530
  %ucblocks4 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %9, i32 0, i32 8, !dbg !5531
  %10 = load i32, i32* %ucblocks4, align 4, !dbg !5532
  %add5 = add i32 %10, %shl, !dbg !5532
  store i32 %add5, i32* %ucblocks4, align 4, !dbg !5532
  %11 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5533
  %ucblocks6 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %11, i32 0, i32 8, !dbg !5534
  %12 = load i32, i32* %ucblocks6, align 4, !dbg !5534
  %13 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5535
  store i32 %12, i32* %13, align 4, !dbg !5536
  store i32 0, i32* %retval, align 4, !dbg !5537
  br label %return, !dbg !5537

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5538
  ret i32 %14, !dbg !5538
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_send_diseqc_msg(%struct.dvb_frontend* %fe, %struct.dvb_diseqc_master_cmd* %m) #0 !dbg !5539 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %m.addr = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %state = alloca %struct.stv0299_state*, align 8
  %val = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5540, metadata !DIExpression()), !dbg !5541
  store %struct.dvb_diseqc_master_cmd* %m, %struct.dvb_diseqc_master_cmd** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_diseqc_master_cmd** %m.addr, metadata !5542, metadata !DIExpression()), !dbg !5543
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5544, metadata !DIExpression()), !dbg !5545
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5546
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5547
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5547
  %2 = bitcast i8* %1 to %struct.stv0299_state*, !dbg !5546
  store %struct.stv0299_state* %2, %struct.stv0299_state** %state, align 8, !dbg !5545
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5548, metadata !DIExpression()), !dbg !5549
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5550, metadata !DIExpression()), !dbg !5551
  br label %do.body, !dbg !5552

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5553
  %tobool = icmp ne i32 %3, 0, !dbg !5553
  br i1 %tobool, label %if.then, label %if.end, !dbg !5556

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.stv0299_send_diseqc_msg, i64 0, i64 0)) #12, !dbg !5553
  br label %if.end, !dbg !5553

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5556

do.end:                                           ; preds = %if.end
  %4 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5557
  %call1 = call i32 @stv0299_wait_diseqc_idle(%struct.stv0299_state* %4, i32 100) #8, !dbg !5559
  %cmp = icmp slt i32 %call1, 0, !dbg !5560
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5561

if.then2:                                         ; preds = %do.end
  store i32 -110, i32* %retval, align 4, !dbg !5562
  br label %return, !dbg !5562

if.end3:                                          ; preds = %do.end
  %5 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5563
  %call4 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %5, i8 zeroext 8) #8, !dbg !5564
  store i8 %call4, i8* %val, align 1, !dbg !5565
  %6 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5566
  %7 = load i8, i8* %val, align 1, !dbg !5568
  %conv = zext i8 %7 to i32, !dbg !5568
  %and = and i32 %conv, -8, !dbg !5569
  %or = or i32 %and, 6, !dbg !5570
  %conv5 = trunc i32 %or to i8, !dbg !5571
  %call6 = call i32 @stv0299_writeregI(%struct.stv0299_state* %6, i8 zeroext 8, i8 zeroext %conv5) #8, !dbg !5572
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5572
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5573

if.then8:                                         ; preds = %if.end3
  store i32 -121, i32* %retval, align 4, !dbg !5574
  br label %return, !dbg !5574

if.end9:                                          ; preds = %if.end3
  store i32 0, i32* %i, align 4, !dbg !5575
  br label %for.cond, !dbg !5577

for.cond:                                         ; preds = %for.inc, %if.end9
  %8 = load i32, i32* %i, align 4, !dbg !5578
  %9 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %m.addr, align 8, !dbg !5580
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %9, i32 0, i32 1, !dbg !5581
  %10 = load i8, i8* %msg_len, align 1, !dbg !5581
  %conv10 = zext i8 %10 to i32, !dbg !5580
  %cmp11 = icmp slt i32 %8, %conv10, !dbg !5582
  br i1 %cmp11, label %for.body, label %for.end, !dbg !5583

for.body:                                         ; preds = %for.cond
  %11 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5584
  %call13 = call i32 @stv0299_wait_diseqc_fifo(%struct.stv0299_state* %11, i32 100) #8, !dbg !5587
  %cmp14 = icmp slt i32 %call13, 0, !dbg !5588
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !5589

if.then16:                                        ; preds = %for.body
  store i32 -110, i32* %retval, align 4, !dbg !5590
  br label %return, !dbg !5590

if.end17:                                         ; preds = %for.body
  %12 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5591
  %13 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %m.addr, align 8, !dbg !5593
  %msg = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %13, i32 0, i32 0, !dbg !5594
  %14 = load i32, i32* %i, align 4, !dbg !5595
  %idxprom = sext i32 %14 to i64, !dbg !5593
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %msg, i64 0, i64 %idxprom, !dbg !5593
  %15 = load i8, i8* %arrayidx, align 1, !dbg !5593
  %call18 = call i32 @stv0299_writeregI(%struct.stv0299_state* %12, i8 zeroext 9, i8 zeroext %15) #8, !dbg !5596
  %tobool19 = icmp ne i32 %call18, 0, !dbg !5596
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5597

if.then20:                                        ; preds = %if.end17
  store i32 -121, i32* %retval, align 4, !dbg !5598
  br label %return, !dbg !5598

if.end21:                                         ; preds = %if.end17
  br label %for.inc, !dbg !5599

for.inc:                                          ; preds = %if.end21
  %16 = load i32, i32* %i, align 4, !dbg !5600
  %inc = add i32 %16, 1, !dbg !5600
  store i32 %inc, i32* %i, align 4, !dbg !5600
  br label %for.cond, !dbg !5601, !llvm.loop !5602

for.end:                                          ; preds = %for.cond
  %17 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5604
  %call22 = call i32 @stv0299_wait_diseqc_idle(%struct.stv0299_state* %17, i32 100) #8, !dbg !5606
  %cmp23 = icmp slt i32 %call22, 0, !dbg !5607
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !5608

if.then25:                                        ; preds = %for.end
  store i32 -110, i32* %retval, align 4, !dbg !5609
  br label %return, !dbg !5609

if.end26:                                         ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !5610
  br label %return, !dbg !5610

return:                                           ; preds = %if.end26, %if.then25, %if.then20, %if.then16, %if.then8, %if.then2
  %18 = load i32, i32* %retval, align 4, !dbg !5611
  ret i32 %18, !dbg !5611
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_send_diseqc_burst(%struct.dvb_frontend* %fe, i32 %burst) #0 !dbg !5612 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %burst.addr = alloca i32, align 4
  %state = alloca %struct.stv0299_state*, align 8
  %val = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5613, metadata !DIExpression()), !dbg !5614
  store i32 %burst, i32* %burst.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %burst.addr, metadata !5615, metadata !DIExpression()), !dbg !5616
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5617, metadata !DIExpression()), !dbg !5618
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5619
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5620
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5620
  %2 = bitcast i8* %1 to %struct.stv0299_state*, !dbg !5619
  store %struct.stv0299_state* %2, %struct.stv0299_state** %state, align 8, !dbg !5618
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5621, metadata !DIExpression()), !dbg !5622
  br label %do.body, !dbg !5623

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5624
  %tobool = icmp ne i32 %3, 0, !dbg !5624
  br i1 %tobool, label %if.then, label %if.end, !dbg !5627

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.stv0299_send_diseqc_burst, i64 0, i64 0)) #12, !dbg !5624
  br label %if.end, !dbg !5624

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5627

do.end:                                           ; preds = %if.end
  %4 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5628
  %call1 = call i32 @stv0299_wait_diseqc_idle(%struct.stv0299_state* %4, i32 100) #8, !dbg !5630
  %cmp = icmp slt i32 %call1, 0, !dbg !5631
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5632

if.then2:                                         ; preds = %do.end
  store i32 -110, i32* %retval, align 4, !dbg !5633
  br label %return, !dbg !5633

if.end3:                                          ; preds = %do.end
  %5 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5634
  %call4 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %5, i8 zeroext 8) #8, !dbg !5635
  store i8 %call4, i8* %val, align 1, !dbg !5636
  %6 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5637
  %7 = load i8, i8* %val, align 1, !dbg !5639
  %conv = zext i8 %7 to i32, !dbg !5639
  %and = and i32 %conv, -8, !dbg !5640
  %or = or i32 %and, 2, !dbg !5641
  %conv5 = trunc i32 %or to i8, !dbg !5642
  %call6 = call i32 @stv0299_writeregI(%struct.stv0299_state* %6, i8 zeroext 8, i8 zeroext %conv5) #8, !dbg !5643
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5643
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5644

if.then8:                                         ; preds = %if.end3
  store i32 -121, i32* %retval, align 4, !dbg !5645
  br label %return, !dbg !5645

if.end9:                                          ; preds = %if.end3
  %8 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5646
  %9 = load i32, i32* %burst.addr, align 4, !dbg !5648
  %cmp10 = icmp eq i32 %9, 0, !dbg !5649
  %10 = zext i1 %cmp10 to i64, !dbg !5648
  %cond = select i1 %cmp10, i32 0, i32 255, !dbg !5648
  %conv12 = trunc i32 %cond to i8, !dbg !5648
  %call13 = call i32 @stv0299_writeregI(%struct.stv0299_state* %8, i8 zeroext 9, i8 zeroext %conv12) #8, !dbg !5650
  %tobool14 = icmp ne i32 %call13, 0, !dbg !5650
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5651

if.then15:                                        ; preds = %if.end9
  store i32 -121, i32* %retval, align 4, !dbg !5652
  br label %return, !dbg !5652

if.end16:                                         ; preds = %if.end9
  %11 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5653
  %call17 = call i32 @stv0299_wait_diseqc_idle(%struct.stv0299_state* %11, i32 100) #8, !dbg !5655
  %cmp18 = icmp slt i32 %call17, 0, !dbg !5656
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5657

if.then20:                                        ; preds = %if.end16
  store i32 -110, i32* %retval, align 4, !dbg !5658
  br label %return, !dbg !5658

if.end21:                                         ; preds = %if.end16
  %12 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5659
  %13 = load i8, i8* %val, align 1, !dbg !5661
  %call22 = call i32 @stv0299_writeregI(%struct.stv0299_state* %12, i8 zeroext 8, i8 zeroext %13) #8, !dbg !5662
  %tobool23 = icmp ne i32 %call22, 0, !dbg !5662
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5663

if.then24:                                        ; preds = %if.end21
  store i32 -121, i32* %retval, align 4, !dbg !5664
  br label %return, !dbg !5664

if.end25:                                         ; preds = %if.end21
  store i32 0, i32* %retval, align 4, !dbg !5665
  br label %return, !dbg !5665

return:                                           ; preds = %if.end25, %if.then24, %if.then20, %if.then15, %if.then8, %if.then2
  %14 = load i32, i32* %retval, align 4, !dbg !5666
  ret i32 %14, !dbg !5666
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_set_tone(%struct.dvb_frontend* %fe, i32 %tone) #0 !dbg !5667 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %tone.addr = alloca i32, align 4
  %state = alloca %struct.stv0299_state*, align 8
  %val = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5668, metadata !DIExpression()), !dbg !5669
  store i32 %tone, i32* %tone.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tone.addr, metadata !5670, metadata !DIExpression()), !dbg !5671
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5672, metadata !DIExpression()), !dbg !5673
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5674
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5675
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5675
  %2 = bitcast i8* %1 to %struct.stv0299_state*, !dbg !5674
  store %struct.stv0299_state* %2, %struct.stv0299_state** %state, align 8, !dbg !5673
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5676, metadata !DIExpression()), !dbg !5677
  %3 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5678
  %call = call i32 @stv0299_wait_diseqc_idle(%struct.stv0299_state* %3, i32 100) #8, !dbg !5680
  %cmp = icmp slt i32 %call, 0, !dbg !5681
  br i1 %cmp, label %if.then, label %if.end, !dbg !5682

if.then:                                          ; preds = %entry
  store i32 -110, i32* %retval, align 4, !dbg !5683
  br label %return, !dbg !5683

if.end:                                           ; preds = %entry
  %4 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5684
  %call1 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %4, i8 zeroext 8) #8, !dbg !5685
  store i8 %call1, i8* %val, align 1, !dbg !5686
  %5 = load i32, i32* %tone.addr, align 4, !dbg !5687
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ], !dbg !5688

sw.bb:                                            ; preds = %if.end
  %6 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5689
  %7 = load i8, i8* %val, align 1, !dbg !5691
  %conv = zext i8 %7 to i32, !dbg !5691
  %or = or i32 %conv, 3, !dbg !5692
  %conv2 = trunc i32 %or to i8, !dbg !5691
  %call3 = call i32 @stv0299_writeregI(%struct.stv0299_state* %6, i8 zeroext 8, i8 zeroext %conv2) #8, !dbg !5693
  store i32 %call3, i32* %retval, align 4, !dbg !5694
  br label %return, !dbg !5694

sw.bb4:                                           ; preds = %if.end
  %8 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5695
  %9 = load i8, i8* %val, align 1, !dbg !5696
  %conv5 = zext i8 %9 to i32, !dbg !5696
  %and = and i32 %conv5, -4, !dbg !5697
  %or6 = or i32 %and, 2, !dbg !5698
  %conv7 = trunc i32 %or6 to i8, !dbg !5699
  %call8 = call i32 @stv0299_writeregI(%struct.stv0299_state* %8, i8 zeroext 8, i8 zeroext %conv7) #8, !dbg !5700
  store i32 %call8, i32* %retval, align 4, !dbg !5701
  br label %return, !dbg !5701

sw.default:                                       ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5702
  br label %return, !dbg !5702

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5703
  ret i32 %10, !dbg !5703
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_set_voltage(%struct.dvb_frontend* %fe, i32 %voltage) #0 !dbg !5704 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %voltage.addr = alloca i32, align 4
  %state = alloca %struct.stv0299_state*, align 8
  %reg0x08 = alloca i8, align 1
  %reg0x0c = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5705, metadata !DIExpression()), !dbg !5706
  store i32 %voltage, i32* %voltage.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %voltage.addr, metadata !5707, metadata !DIExpression()), !dbg !5708
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5709, metadata !DIExpression()), !dbg !5710
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5711
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5712
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5712
  %2 = bitcast i8* %1 to %struct.stv0299_state*, !dbg !5711
  store %struct.stv0299_state* %2, %struct.stv0299_state** %state, align 8, !dbg !5710
  call void @llvm.dbg.declare(metadata i8* %reg0x08, metadata !5713, metadata !DIExpression()), !dbg !5714
  call void @llvm.dbg.declare(metadata i8* %reg0x0c, metadata !5715, metadata !DIExpression()), !dbg !5716
  br label %do.body, !dbg !5717

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5718
  %tobool = icmp ne i32 %3, 0, !dbg !5718
  br i1 %tobool, label %if.then, label %if.end, !dbg !5721

if.then:                                          ; preds = %do.body
  %4 = load i32, i32* %voltage.addr, align 4, !dbg !5718
  %cmp = icmp eq i32 %4, 0, !dbg !5718
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5718

cond.true:                                        ; preds = %if.then
  br label %cond.end, !dbg !5718

cond.false:                                       ; preds = %if.then
  %5 = load i32, i32* %voltage.addr, align 4, !dbg !5718
  %cmp1 = icmp eq i32 %5, 1, !dbg !5718
  %6 = zext i1 %cmp1 to i64, !dbg !5718
  %cond = select i1 %cmp1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), !dbg !5718
  br label %cond.end, !dbg !5718

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), %cond.true ], [ %cond, %cond.false ], !dbg !5718
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.stv0299_set_voltage, i64 0, i64 0), i8* %cond2) #12, !dbg !5718
  br label %if.end, !dbg !5718

if.end:                                           ; preds = %cond.end, %do.body
  br label %do.end, !dbg !5721

do.end:                                           ; preds = %if.end
  %7 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5722
  %call3 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %7, i8 zeroext 8) #8, !dbg !5723
  store i8 %call3, i8* %reg0x08, align 1, !dbg !5724
  %8 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5725
  %call4 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %8, i8 zeroext 12) #8, !dbg !5726
  store i8 %call4, i8* %reg0x0c, align 1, !dbg !5727
  %9 = load i8, i8* %reg0x0c, align 1, !dbg !5728
  %conv = zext i8 %9 to i32, !dbg !5728
  %and = and i32 %conv, 15, !dbg !5728
  %conv5 = trunc i32 %and to i8, !dbg !5728
  store i8 %conv5, i8* %reg0x0c, align 1, !dbg !5728
  %10 = load i8, i8* %reg0x08, align 1, !dbg !5729
  %conv6 = zext i8 %10 to i32, !dbg !5729
  %and7 = and i32 %conv6, 63, !dbg !5730
  %11 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5731
  %config = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %11, i32 0, i32 1, !dbg !5732
  %12 = load %struct.stv0299_config*, %struct.stv0299_config** %config, align 8, !dbg !5732
  %lock_output = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %12, i32 0, i32 3, !dbg !5733
  %bf.load = load i8, i8* %lock_output, align 4, !dbg !5733
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !5733
  %bf.clear = and i8 %bf.lshr, 3, !dbg !5733
  %conv8 = zext i8 %bf.clear to i32, !dbg !5731
  %shl = shl i32 %conv8, 6, !dbg !5734
  %or = or i32 %and7, %shl, !dbg !5735
  %conv9 = trunc i32 %or to i8, !dbg !5736
  store i8 %conv9, i8* %reg0x08, align 1, !dbg !5737
  %13 = load i32, i32* %voltage.addr, align 4, !dbg !5738
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
    i32 2, label %sw.bb29
  ], !dbg !5739

sw.bb:                                            ; preds = %do.end
  %14 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5740
  %config10 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %14, i32 0, i32 1, !dbg !5743
  %15 = load %struct.stv0299_config*, %struct.stv0299_config** %config10, align 8, !dbg !5743
  %volt13_op0_op1 = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %15, i32 0, i32 3, !dbg !5744
  %bf.load11 = load i8, i8* %volt13_op0_op1, align 4, !dbg !5744
  %bf.lshr12 = lshr i8 %bf.load11, 4, !dbg !5744
  %bf.clear13 = and i8 %bf.lshr12, 1, !dbg !5744
  %conv14 = zext i8 %bf.clear13 to i32, !dbg !5740
  %cmp15 = icmp eq i32 %conv14, 0, !dbg !5745
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !5746

if.then17:                                        ; preds = %sw.bb
  %16 = load i8, i8* %reg0x0c, align 1, !dbg !5747
  %conv18 = zext i8 %16 to i32, !dbg !5747
  %or19 = or i32 %conv18, 16, !dbg !5747
  %conv20 = trunc i32 %or19 to i8, !dbg !5747
  store i8 %conv20, i8* %reg0x0c, align 1, !dbg !5747
  br label %if.end24, !dbg !5748

if.else:                                          ; preds = %sw.bb
  %17 = load i8, i8* %reg0x0c, align 1, !dbg !5749
  %conv21 = zext i8 %17 to i32, !dbg !5749
  %or22 = or i32 %conv21, 64, !dbg !5749
  %conv23 = trunc i32 %or22 to i8, !dbg !5749
  store i8 %conv23, i8* %reg0x0c, align 1, !dbg !5749
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then17
  br label %sw.epilog, !dbg !5750

sw.bb25:                                          ; preds = %do.end
  %18 = load i8, i8* %reg0x0c, align 1, !dbg !5751
  %conv26 = zext i8 %18 to i32, !dbg !5751
  %or27 = or i32 %conv26, 80, !dbg !5751
  %conv28 = trunc i32 %or27 to i8, !dbg !5751
  store i8 %conv28, i8* %reg0x0c, align 1, !dbg !5751
  br label %sw.epilog, !dbg !5752

sw.bb29:                                          ; preds = %do.end
  store i8 0, i8* %reg0x08, align 1, !dbg !5753
  store i8 0, i8* %reg0x0c, align 1, !dbg !5754
  br label %sw.epilog, !dbg !5755

sw.default:                                       ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !5756
  br label %return, !dbg !5756

sw.epilog:                                        ; preds = %sw.bb29, %sw.bb25, %if.end24
  %19 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5757
  %config30 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %19, i32 0, i32 1, !dbg !5759
  %20 = load %struct.stv0299_config*, %struct.stv0299_config** %config30, align 8, !dbg !5759
  %op0_off = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %20, i32 0, i32 3, !dbg !5760
  %bf.load31 = load i8, i8* %op0_off, align 4, !dbg !5760
  %bf.lshr32 = lshr i8 %bf.load31, 5, !dbg !5760
  %bf.clear33 = and i8 %bf.lshr32, 1, !dbg !5760
  %tobool34 = icmp ne i8 %bf.clear33, 0, !dbg !5757
  br i1 %tobool34, label %if.then35, label %if.end39, !dbg !5761

if.then35:                                        ; preds = %sw.epilog
  %21 = load i8, i8* %reg0x0c, align 1, !dbg !5762
  %conv36 = zext i8 %21 to i32, !dbg !5762
  %and37 = and i32 %conv36, -17, !dbg !5762
  %conv38 = trunc i32 %and37 to i8, !dbg !5762
  store i8 %conv38, i8* %reg0x0c, align 1, !dbg !5762
  br label %if.end39, !dbg !5763

if.end39:                                         ; preds = %if.then35, %sw.epilog
  %22 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5764
  %23 = load i8, i8* %reg0x08, align 1, !dbg !5765
  %call40 = call i32 @stv0299_writeregI(%struct.stv0299_state* %22, i8 zeroext 8, i8 zeroext %23) #8, !dbg !5766
  %24 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5767
  %25 = load i8, i8* %reg0x0c, align 1, !dbg !5768
  %call41 = call i32 @stv0299_writeregI(%struct.stv0299_state* %24, i8 zeroext 12, i8 zeroext %25) #8, !dbg !5769
  store i32 %call41, i32* %retval, align 4, !dbg !5770
  br label %return, !dbg !5770

return:                                           ; preds = %if.end39, %sw.default
  %26 = load i32, i32* %retval, align 4, !dbg !5771
  ret i32 %26, !dbg !5771
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_send_legacy_dish_cmd(%struct.dvb_frontend* %fe, i64 %cmd) #0 !dbg !5772 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %cmd.addr = alloca i64, align 8
  %state = alloca %struct.stv0299_state*, align 8
  %reg0x08 = alloca i8, align 1
  %reg0x0c = alloca i8, align 1
  %lv_mask = alloca i8, align 1
  %last = alloca i8, align 1
  %i = alloca i32, align 4
  %nexttime = alloca i64, align 8
  %tv = alloca [10 x i64], align 16
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5773, metadata !DIExpression()), !dbg !5774
  store i64 %cmd, i64* %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmd.addr, metadata !5775, metadata !DIExpression()), !dbg !5776
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5777, metadata !DIExpression()), !dbg !5778
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5779
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5780
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5780
  %2 = bitcast i8* %1 to %struct.stv0299_state*, !dbg !5779
  store %struct.stv0299_state* %2, %struct.stv0299_state** %state, align 8, !dbg !5778
  call void @llvm.dbg.declare(metadata i8* %reg0x08, metadata !5781, metadata !DIExpression()), !dbg !5782
  call void @llvm.dbg.declare(metadata i8* %reg0x0c, metadata !5783, metadata !DIExpression()), !dbg !5784
  call void @llvm.dbg.declare(metadata i8* %lv_mask, metadata !5785, metadata !DIExpression()), !dbg !5786
  store i8 64, i8* %lv_mask, align 1, !dbg !5786
  call void @llvm.dbg.declare(metadata i8* %last, metadata !5787, metadata !DIExpression()), !dbg !5788
  store i8 1, i8* %last, align 1, !dbg !5788
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5789, metadata !DIExpression()), !dbg !5790
  call void @llvm.dbg.declare(metadata i64* %nexttime, metadata !5791, metadata !DIExpression()), !dbg !5792
  call void @llvm.dbg.declare(metadata [10 x i64]* %tv, metadata !5793, metadata !DIExpression()), !dbg !5797
  %3 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5798
  %call = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %3, i8 zeroext 8) #8, !dbg !5799
  store i8 %call, i8* %reg0x08, align 1, !dbg !5800
  %4 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5801
  %call1 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %4, i8 zeroext 12) #8, !dbg !5802
  store i8 %call1, i8* %reg0x0c, align 1, !dbg !5803
  %5 = load i8, i8* %reg0x0c, align 1, !dbg !5804
  %conv = zext i8 %5 to i32, !dbg !5804
  %and = and i32 %conv, 15, !dbg !5804
  %conv2 = trunc i32 %and to i8, !dbg !5804
  store i8 %conv2, i8* %reg0x0c, align 1, !dbg !5804
  %6 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5805
  %7 = load i8, i8* %reg0x08, align 1, !dbg !5806
  %conv3 = zext i8 %7 to i32, !dbg !5806
  %and4 = and i32 %conv3, 63, !dbg !5807
  %8 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5808
  %config = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %8, i32 0, i32 1, !dbg !5809
  %9 = load %struct.stv0299_config*, %struct.stv0299_config** %config, align 8, !dbg !5809
  %lock_output = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %9, i32 0, i32 3, !dbg !5810
  %bf.load = load i8, i8* %lock_output, align 4, !dbg !5810
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !5810
  %bf.clear = and i8 %bf.lshr, 3, !dbg !5810
  %conv5 = zext i8 %bf.clear to i32, !dbg !5808
  %shl = shl i32 %conv5, 6, !dbg !5811
  %or = or i32 %and4, %shl, !dbg !5812
  %conv6 = trunc i32 %or to i8, !dbg !5813
  %call7 = call i32 @stv0299_writeregI(%struct.stv0299_state* %6, i8 zeroext 8, i8 zeroext %conv6) #8, !dbg !5814
  %10 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5815
  %config8 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %10, i32 0, i32 1, !dbg !5817
  %11 = load %struct.stv0299_config*, %struct.stv0299_config** %config8, align 8, !dbg !5817
  %volt13_op0_op1 = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %11, i32 0, i32 3, !dbg !5818
  %bf.load9 = load i8, i8* %volt13_op0_op1, align 4, !dbg !5818
  %bf.lshr10 = lshr i8 %bf.load9, 4, !dbg !5818
  %bf.clear11 = and i8 %bf.lshr10, 1, !dbg !5818
  %conv12 = zext i8 %bf.clear11 to i32, !dbg !5815
  %cmp = icmp eq i32 %conv12, 0, !dbg !5819
  br i1 %cmp, label %if.then, label %if.end, !dbg !5820

if.then:                                          ; preds = %entry
  store i8 16, i8* %lv_mask, align 1, !dbg !5821
  br label %if.end, !dbg !5822

if.end:                                           ; preds = %if.then, %entry
  %12 = load i64, i64* %cmd.addr, align 8, !dbg !5823
  %shl14 = shl i64 %12, 1, !dbg !5824
  store i64 %shl14, i64* %cmd.addr, align 8, !dbg !5825
  %13 = load i32, i32* @debug_legacy_dish_switch, align 4, !dbg !5826
  %tobool = icmp ne i32 %13, 0, !dbg !5826
  br i1 %tobool, label %if.then15, label %if.end17, !dbg !5828

if.then15:                                        ; preds = %if.end
  %14 = load i64, i64* %cmd.addr, align 8, !dbg !5829
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.stv0299_send_legacy_dish_cmd, i64 0, i64 0), i64 %14) #12, !dbg !5830
  br label %if.end17, !dbg !5830

if.end17:                                         ; preds = %if.then15, %if.end
  %call18 = call i64 @ktime_get_boottime() #8, !dbg !5831
  store i64 %call18, i64* %nexttime, align 8, !dbg !5832
  %15 = load i32, i32* @debug_legacy_dish_switch, align 4, !dbg !5833
  %tobool19 = icmp ne i32 %15, 0, !dbg !5833
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5835

if.then20:                                        ; preds = %if.end17
  %16 = load i64, i64* %nexttime, align 8, !dbg !5836
  %arrayidx = getelementptr [10 x i64], [10 x i64]* %tv, i64 0, i64 0, !dbg !5837
  store i64 %16, i64* %arrayidx, align 16, !dbg !5838
  br label %if.end21, !dbg !5837

if.end21:                                         ; preds = %if.then20, %if.end17
  %17 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5839
  %18 = load i8, i8* %reg0x0c, align 1, !dbg !5840
  %conv22 = zext i8 %18 to i32, !dbg !5840
  %or23 = or i32 %conv22, 80, !dbg !5841
  %conv24 = trunc i32 %or23 to i8, !dbg !5840
  %call25 = call i32 @stv0299_writeregI(%struct.stv0299_state* %17, i8 zeroext 12, i8 zeroext %conv24) #8, !dbg !5842
  call void @dvb_frontend_sleep_until(i64* %nexttime, i32 32000) #8, !dbg !5843
  store i32 0, i32* %i, align 4, !dbg !5844
  br label %for.cond, !dbg !5846

for.cond:                                         ; preds = %for.inc, %if.end21
  %19 = load i32, i32* %i, align 4, !dbg !5847
  %cmp26 = icmp slt i32 %19, 9, !dbg !5849
  br i1 %cmp26, label %for.body, label %for.end, !dbg !5850

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* @debug_legacy_dish_switch, align 4, !dbg !5851
  %tobool28 = icmp ne i32 %20, 0, !dbg !5851
  br i1 %tobool28, label %if.then29, label %if.end32, !dbg !5854

if.then29:                                        ; preds = %for.body
  %call30 = call i64 @ktime_get_boottime() #8, !dbg !5855
  %21 = load i32, i32* %i, align 4, !dbg !5856
  %add = add i32 %21, 1, !dbg !5857
  %idxprom = sext i32 %add to i64, !dbg !5858
  %arrayidx31 = getelementptr [10 x i64], [10 x i64]* %tv, i64 0, i64 %idxprom, !dbg !5858
  store i64 %call30, i64* %arrayidx31, align 8, !dbg !5859
  br label %if.end32, !dbg !5858

if.end32:                                         ; preds = %if.then29, %for.body
  %22 = load i64, i64* %cmd.addr, align 8, !dbg !5860
  %and33 = and i64 %22, 1, !dbg !5862
  %23 = load i8, i8* %last, align 1, !dbg !5863
  %conv34 = zext i8 %23 to i64, !dbg !5863
  %cmp35 = icmp ne i64 %and33, %conv34, !dbg !5864
  br i1 %cmp35, label %if.then37, label %if.end49, !dbg !5865

if.then37:                                        ; preds = %if.end32
  %24 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5866
  %25 = load i8, i8* %reg0x0c, align 1, !dbg !5868
  %conv38 = zext i8 %25 to i32, !dbg !5868
  %26 = load i8, i8* %last, align 1, !dbg !5869
  %conv39 = zext i8 %26 to i32, !dbg !5869
  %tobool40 = icmp ne i32 %conv39, 0, !dbg !5869
  br i1 %tobool40, label %cond.true, label %cond.false, !dbg !5869

cond.true:                                        ; preds = %if.then37
  %27 = load i8, i8* %lv_mask, align 1, !dbg !5870
  %conv41 = zext i8 %27 to i32, !dbg !5870
  br label %cond.end, !dbg !5869

cond.false:                                       ; preds = %if.then37
  br label %cond.end, !dbg !5869

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv41, %cond.true ], [ 80, %cond.false ], !dbg !5869
  %or42 = or i32 %conv38, %cond, !dbg !5871
  %conv43 = trunc i32 %or42 to i8, !dbg !5868
  %call44 = call i32 @stv0299_writeregI(%struct.stv0299_state* %24, i8 zeroext 12, i8 zeroext %conv43) #8, !dbg !5872
  %28 = load i8, i8* %last, align 1, !dbg !5873
  %conv45 = zext i8 %28 to i32, !dbg !5874
  %tobool46 = icmp ne i32 %conv45, 0, !dbg !5874
  %29 = zext i1 %tobool46 to i64, !dbg !5874
  %cond47 = select i1 %tobool46, i32 0, i32 1, !dbg !5874
  %conv48 = trunc i32 %cond47 to i8, !dbg !5874
  store i8 %conv48, i8* %last, align 1, !dbg !5875
  br label %if.end49, !dbg !5876

if.end49:                                         ; preds = %cond.end, %if.end32
  %30 = load i64, i64* %cmd.addr, align 8, !dbg !5877
  %shr = lshr i64 %30, 1, !dbg !5878
  store i64 %shr, i64* %cmd.addr, align 8, !dbg !5879
  %31 = load i32, i32* %i, align 4, !dbg !5880
  %cmp50 = icmp ne i32 %31, 8, !dbg !5882
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !5883

if.then52:                                        ; preds = %if.end49
  call void @dvb_frontend_sleep_until(i64* %nexttime, i32 8000) #8, !dbg !5884
  br label %if.end53, !dbg !5884

if.end53:                                         ; preds = %if.then52, %if.end49
  br label %for.inc, !dbg !5885

for.inc:                                          ; preds = %if.end53
  %32 = load i32, i32* %i, align 4, !dbg !5886
  %inc = add i32 %32, 1, !dbg !5886
  store i32 %inc, i32* %i, align 4, !dbg !5886
  br label %for.cond, !dbg !5887, !llvm.loop !5888

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* @debug_legacy_dish_switch, align 4, !dbg !5890
  %tobool54 = icmp ne i32 %33, 0, !dbg !5890
  br i1 %tobool54, label %if.then55, label %if.end71, !dbg !5892

if.then55:                                        ; preds = %for.end
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5893
  %dvb = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %34, i32 0, i32 2, !dbg !5895
  %35 = load %struct.dvb_adapter*, %struct.dvb_adapter** %dvb, align 8, !dbg !5895
  %num = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %35, i32 0, i32 0, !dbg !5896
  %36 = load i32, i32* %num, align 8, !dbg !5896
  %call56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.stv0299_send_legacy_dish_cmd, i64 0, i64 0), i32 %36) #12, !dbg !5897
  store i32 1, i32* %i, align 4, !dbg !5898
  br label %for.cond57, !dbg !5900

for.cond57:                                       ; preds = %for.inc68, %if.then55
  %37 = load i32, i32* %i, align 4, !dbg !5901
  %cmp58 = icmp slt i32 %37, 10, !dbg !5903
  br i1 %cmp58, label %for.body60, label %for.end70, !dbg !5904

for.body60:                                       ; preds = %for.cond57
  %38 = load i32, i32* %i, align 4, !dbg !5905
  %39 = load i32, i32* %i, align 4, !dbg !5906
  %idxprom61 = sext i32 %39 to i64, !dbg !5907
  %arrayidx62 = getelementptr [10 x i64], [10 x i64]* %tv, i64 0, i64 %idxprom61, !dbg !5907
  %40 = load i64, i64* %arrayidx62, align 8, !dbg !5907
  %41 = load i32, i32* %i, align 4, !dbg !5908
  %sub = sub i32 %41, 1, !dbg !5909
  %idxprom63 = sext i32 %sub to i64, !dbg !5910
  %arrayidx64 = getelementptr [10 x i64], [10 x i64]* %tv, i64 0, i64 %idxprom63, !dbg !5910
  %42 = load i64, i64* %arrayidx64, align 8, !dbg !5910
  %call65 = call i64 @ktime_us_delta(i64 %40, i64 %42) #8, !dbg !5911
  %conv66 = trunc i64 %call65 to i32, !dbg !5912
  %call67 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 %38, i32 %conv66) #12, !dbg !5913
  br label %for.inc68, !dbg !5913

for.inc68:                                        ; preds = %for.body60
  %43 = load i32, i32* %i, align 4, !dbg !5914
  %inc69 = add i32 %43, 1, !dbg !5914
  store i32 %inc69, i32* %i, align 4, !dbg !5914
  br label %for.cond57, !dbg !5915, !llvm.loop !5916

for.end70:                                        ; preds = %for.cond57
  br label %if.end71, !dbg !5918

if.end71:                                         ; preds = %for.end70, %for.end
  ret i32 0, !dbg !5919
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_i2c_gate_ctrl(%struct.dvb_frontend* %fe, i32 %enable) #0 !dbg !5920 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %enable.addr = alloca i32, align 4
  %state = alloca %struct.stv0299_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5921, metadata !DIExpression()), !dbg !5922
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !5923, metadata !DIExpression()), !dbg !5924
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5925, metadata !DIExpression()), !dbg !5926
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5927
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5928
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5928
  %2 = bitcast i8* %1 to %struct.stv0299_state*, !dbg !5927
  store %struct.stv0299_state* %2, %struct.stv0299_state** %state, align 8, !dbg !5926
  %3 = load i32, i32* %enable.addr, align 4, !dbg !5929
  %tobool = icmp ne i32 %3, 0, !dbg !5929
  br i1 %tobool, label %if.then, label %if.else, !dbg !5931

if.then:                                          ; preds = %entry
  %4 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5932
  %call = call i32 @stv0299_writeregI(%struct.stv0299_state* %4, i8 zeroext 5, i8 zeroext -75) #8, !dbg !5934
  br label %if.end, !dbg !5935

if.else:                                          ; preds = %entry
  %5 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !5936
  %call1 = call i32 @stv0299_writeregI(%struct.stv0299_state* %5, i8 zeroext 5, i8 zeroext 53) #8, !dbg !5938
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__const_udelay(i64 4295) #8, !dbg !5939
  ret i32 0, !dbg !5944
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_set_FEC(%struct.stv0299_state* %state, i32 %fec) #0 !dbg !5945 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.stv0299_state*, align 8
  %fec.addr = alloca i32, align 4
  store %struct.stv0299_state* %state, %struct.stv0299_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state.addr, metadata !5948, metadata !DIExpression()), !dbg !5949
  store i32 %fec, i32* %fec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fec.addr, metadata !5950, metadata !DIExpression()), !dbg !5951
  br label %do.body, !dbg !5952

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !5953
  %tobool = icmp ne i32 %0, 0, !dbg !5953
  br i1 %tobool, label %if.then, label %if.end, !dbg !5956

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.stv0299_set_FEC, i64 0, i64 0)) #12, !dbg !5953
  br label %if.end, !dbg !5953

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5956

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %fec.addr, align 4, !dbg !5957
  switch i32 %1, label %sw.default [
    i32 9, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 5, label %sw.bb8
    i32 7, label %sw.bb10
  ], !dbg !5958

sw.bb:                                            ; preds = %do.end
  %2 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !5959
  %call1 = call i32 @stv0299_writeregI(%struct.stv0299_state* %2, i8 zeroext 49, i8 zeroext 31) #8, !dbg !5962
  store i32 %call1, i32* %retval, align 4, !dbg !5963
  br label %return, !dbg !5963

sw.bb2:                                           ; preds = %do.end
  %3 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !5964
  %call3 = call i32 @stv0299_writeregI(%struct.stv0299_state* %3, i8 zeroext 49, i8 zeroext 1) #8, !dbg !5966
  store i32 %call3, i32* %retval, align 4, !dbg !5967
  br label %return, !dbg !5967

sw.bb4:                                           ; preds = %do.end
  %4 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !5968
  %call5 = call i32 @stv0299_writeregI(%struct.stv0299_state* %4, i8 zeroext 49, i8 zeroext 2) #8, !dbg !5970
  store i32 %call5, i32* %retval, align 4, !dbg !5971
  br label %return, !dbg !5971

sw.bb6:                                           ; preds = %do.end
  %5 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !5972
  %call7 = call i32 @stv0299_writeregI(%struct.stv0299_state* %5, i8 zeroext 49, i8 zeroext 4) #8, !dbg !5974
  store i32 %call7, i32* %retval, align 4, !dbg !5975
  br label %return, !dbg !5975

sw.bb8:                                           ; preds = %do.end
  %6 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !5976
  %call9 = call i32 @stv0299_writeregI(%struct.stv0299_state* %6, i8 zeroext 49, i8 zeroext 8) #8, !dbg !5978
  store i32 %call9, i32* %retval, align 4, !dbg !5979
  br label %return, !dbg !5979

sw.bb10:                                          ; preds = %do.end
  %7 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !5980
  %call11 = call i32 @stv0299_writeregI(%struct.stv0299_state* %7, i8 zeroext 49, i8 zeroext 16) #8, !dbg !5982
  store i32 %call11, i32* %retval, align 4, !dbg !5983
  br label %return, !dbg !5983

sw.default:                                       ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !5984
  br label %return, !dbg !5984

return:                                           ; preds = %sw.default, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %8 = load i32, i32* %retval, align 4, !dbg !5986
  ret i32 %8, !dbg !5986
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_set_symbolrate(%struct.dvb_frontend* %fe, i32 %srate) #0 !dbg !5987 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %srate.addr = alloca i32, align 4
  %state = alloca %struct.stv0299_state*, align 8
  %big = alloca i64, align 8
  %ratio = alloca i32, align 4
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5988, metadata !DIExpression()), !dbg !5989
  store i32 %srate, i32* %srate.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %srate.addr, metadata !5990, metadata !DIExpression()), !dbg !5991
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state, metadata !5992, metadata !DIExpression()), !dbg !5993
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5994
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5995
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5995
  %2 = bitcast i8* %1 to %struct.stv0299_state*, !dbg !5994
  store %struct.stv0299_state* %2, %struct.stv0299_state** %state, align 8, !dbg !5993
  call void @llvm.dbg.declare(metadata i64* %big, metadata !5996, metadata !DIExpression()), !dbg !5997
  %3 = load i32, i32* %srate.addr, align 4, !dbg !5998
  %conv = zext i32 %3 to i64, !dbg !5998
  store i64 %conv, i64* %big, align 8, !dbg !5997
  call void @llvm.dbg.declare(metadata i32* %ratio, metadata !5999, metadata !DIExpression()), !dbg !6000
  %4 = load i32, i32* %srate.addr, align 4, !dbg !6001
  %cmp = icmp ult i32 %4, 1000000, !dbg !6003
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6004

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %srate.addr, align 4, !dbg !6005
  %cmp2 = icmp ugt i32 %5, 45000000, !dbg !6006
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6007

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !6008
  br label %return, !dbg !6008

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64, i64* %big, align 8, !dbg !6009
  %shl = shl i64 %6, 20, !dbg !6010
  store i64 %shl, i64* %big, align 8, !dbg !6011
  %7 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !6012
  %config = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %7, i32 0, i32 1, !dbg !6013
  %8 = load %struct.stv0299_config*, %struct.stv0299_config** %config, align 8, !dbg !6013
  %mclk = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %8, i32 0, i32 2, !dbg !6014
  %9 = load i32, i32* %mclk, align 8, !dbg !6014
  %sub = sub i32 %9, 1, !dbg !6015
  %conv4 = zext i32 %sub to i64, !dbg !6016
  %10 = load i64, i64* %big, align 8, !dbg !6017
  %add = add i64 %10, %conv4, !dbg !6017
  store i64 %add, i64* %big, align 8, !dbg !6017
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !6018, metadata !DIExpression()), !dbg !6020
  %11 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !6020
  %config5 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %11, i32 0, i32 1, !dbg !6020
  %12 = load %struct.stv0299_config*, %struct.stv0299_config** %config5, align 8, !dbg !6020
  %mclk6 = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %12, i32 0, i32 2, !dbg !6020
  %13 = load i32, i32* %mclk6, align 8, !dbg !6020
  store i32 %13, i32* %__base, align 4, !dbg !6020
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !6021, metadata !DIExpression()), !dbg !6020
  %14 = load i64, i64* %big, align 8, !dbg !6020
  %15 = load i32, i32* %__base, align 4, !dbg !6020
  %conv7 = zext i32 %15 to i64, !dbg !6020
  %rem = urem i64 %14, %conv7, !dbg !6020
  %conv8 = trunc i64 %rem to i32, !dbg !6020
  store i32 %conv8, i32* %__rem, align 4, !dbg !6020
  %16 = load i64, i64* %big, align 8, !dbg !6020
  %17 = load i32, i32* %__base, align 4, !dbg !6020
  %conv9 = zext i32 %17 to i64, !dbg !6020
  %div = udiv i64 %16, %conv9, !dbg !6020
  store i64 %div, i64* %big, align 8, !dbg !6020
  %18 = load i32, i32* %__rem, align 4, !dbg !6020
  store i32 %18, i32* %tmp, align 4, !dbg !6020
  %19 = load i32, i32* %tmp, align 4, !dbg !6020
  %20 = load i64, i64* %big, align 8, !dbg !6022
  %shl10 = shl i64 %20, 4, !dbg !6023
  %conv11 = trunc i64 %shl10 to i32, !dbg !6022
  store i32 %conv11, i32* %ratio, align 4, !dbg !6024
  %21 = load %struct.stv0299_state*, %struct.stv0299_state** %state, align 8, !dbg !6025
  %config12 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %21, i32 0, i32 1, !dbg !6026
  %22 = load %struct.stv0299_config*, %struct.stv0299_config** %config12, align 8, !dbg !6026
  %set_symbol_rate = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %22, i32 0, i32 5, !dbg !6027
  %23 = load i32 (%struct.dvb_frontend*, i32, i32)*, i32 (%struct.dvb_frontend*, i32, i32)** %set_symbol_rate, align 8, !dbg !6027
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6028
  %25 = load i32, i32* %srate.addr, align 4, !dbg !6029
  %26 = load i32, i32* %ratio, align 4, !dbg !6030
  %call = call i32 %23(%struct.dvb_frontend* %24, i32 %25, i32 %26) #8, !dbg !6025
  store i32 %call, i32* %retval, align 4, !dbg !6031
  br label %return, !dbg !6031

return:                                           ; preds = %if.end, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !6032
  ret i32 %27, !dbg !6032
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_get_fec(%struct.stv0299_state* %state) #0 !dbg !432 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.stv0299_state*, align 8
  %index = alloca i8, align 1
  store %struct.stv0299_state* %state, %struct.stv0299_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state.addr, metadata !6033, metadata !DIExpression()), !dbg !6034
  call void @llvm.dbg.declare(metadata i8* %index, metadata !6035, metadata !DIExpression()), !dbg !6036
  br label %do.body, !dbg !6037

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6038
  %tobool = icmp ne i32 %0, 0, !dbg !6038
  br i1 %tobool, label %if.then, label %if.end, !dbg !6041

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.stv0299_get_fec, i64 0, i64 0)) #12, !dbg !6038
  br label %if.end, !dbg !6038

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6041

do.end:                                           ; preds = %if.end
  %1 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !6042
  %call1 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %1, i8 zeroext 27) #8, !dbg !6043
  store i8 %call1, i8* %index, align 1, !dbg !6044
  %2 = load i8, i8* %index, align 1, !dbg !6045
  %conv = zext i8 %2 to i32, !dbg !6045
  %and = and i32 %conv, 7, !dbg !6045
  %conv2 = trunc i32 %and to i8, !dbg !6045
  store i8 %conv2, i8* %index, align 1, !dbg !6045
  %3 = load i8, i8* %index, align 1, !dbg !6046
  %conv3 = zext i8 %3 to i32, !dbg !6046
  %cmp = icmp sgt i32 %conv3, 4, !dbg !6048
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !6049

if.then5:                                         ; preds = %do.end
  store i32 9, i32* %retval, align 4, !dbg !6050
  br label %return, !dbg !6050

if.end6:                                          ; preds = %do.end
  %4 = load i8, i8* %index, align 1, !dbg !6051
  %idxprom = zext i8 %4 to i64, !dbg !6052
  %arrayidx = getelementptr [5 x i32], [5 x i32]* @stv0299_get_fec.fec_tab, i64 0, i64 %idxprom, !dbg !6052
  %5 = load i32, i32* %arrayidx, align 4, !dbg !6052
  store i32 %5, i32* %retval, align 4, !dbg !6053
  br label %return, !dbg !6053

return:                                           ; preds = %if.end6, %if.then5
  %6 = load i32, i32* %retval, align 4, !dbg !6054
  ret i32 %6, !dbg !6054
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_get_symbolrate(%struct.stv0299_state* %state) #0 !dbg !6055 {
entry:
  %state.addr = alloca %struct.stv0299_state*, align 8
  %Mclk = alloca i32, align 4
  %srate = alloca i32, align 4
  %offset = alloca i32, align 4
  %sfr = alloca [3 x i8], align 1
  %rtf = alloca i8, align 1
  store %struct.stv0299_state* %state, %struct.stv0299_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  call void @llvm.dbg.declare(metadata i32* %Mclk, metadata !6060, metadata !DIExpression()), !dbg !6061
  %0 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !6062
  %config = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %0, i32 0, i32 1, !dbg !6063
  %1 = load %struct.stv0299_config*, %struct.stv0299_config** %config, align 8, !dbg !6063
  %mclk = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %1, i32 0, i32 2, !dbg !6064
  %2 = load i32, i32* %mclk, align 8, !dbg !6064
  %conv = zext i32 %2 to i64, !dbg !6062
  %div = sdiv i64 %conv, 4096, !dbg !6065
  %conv1 = trunc i64 %div to i32, !dbg !6062
  store i32 %conv1, i32* %Mclk, align 4, !dbg !6061
  call void @llvm.dbg.declare(metadata i32* %srate, metadata !6066, metadata !DIExpression()), !dbg !6067
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !6068, metadata !DIExpression()), !dbg !6069
  call void @llvm.dbg.declare(metadata [3 x i8]* %sfr, metadata !6070, metadata !DIExpression()), !dbg !6072
  call void @llvm.dbg.declare(metadata i8* %rtf, metadata !6073, metadata !DIExpression()), !dbg !6074
  br label %do.body, !dbg !6075

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !6076
  %tobool = icmp ne i32 %3, 0, !dbg !6076
  br i1 %tobool, label %if.then, label %if.end, !dbg !6079

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.stv0299_get_symbolrate, i64 0, i64 0)) #12, !dbg !6076
  br label %if.end, !dbg !6076

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6079

do.end:                                           ; preds = %if.end
  %4 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !6080
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %sfr, i64 0, i64 0, !dbg !6081
  %call2 = call i32 @stv0299_readregs(%struct.stv0299_state* %4, i8 zeroext 31, i8* %arraydecay, i8 zeroext 3) #8, !dbg !6082
  %5 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !6083
  %call3 = call i32 @stv0299_readregs(%struct.stv0299_state* %5, i8 zeroext 26, i8* %rtf, i8 zeroext 1) #8, !dbg !6084
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %sfr, i64 0, i64 0, !dbg !6085
  %6 = load i8, i8* %arrayidx, align 1, !dbg !6085
  %conv4 = zext i8 %6 to i32, !dbg !6085
  %shl = shl i32 %conv4, 8, !dbg !6086
  %arrayidx5 = getelementptr [3 x i8], [3 x i8]* %sfr, i64 0, i64 1, !dbg !6087
  %7 = load i8, i8* %arrayidx5, align 1, !dbg !6087
  %conv6 = zext i8 %7 to i32, !dbg !6087
  %or = or i32 %shl, %conv6, !dbg !6088
  store i32 %or, i32* %srate, align 4, !dbg !6089
  %8 = load i32, i32* %Mclk, align 4, !dbg !6090
  %9 = load i32, i32* %srate, align 4, !dbg !6091
  %mul = mul i32 %9, %8, !dbg !6091
  store i32 %mul, i32* %srate, align 4, !dbg !6091
  %10 = load i32, i32* %srate, align 4, !dbg !6092
  %div7 = udiv i32 %10, 16, !dbg !6092
  store i32 %div7, i32* %srate, align 4, !dbg !6092
  %arrayidx8 = getelementptr [3 x i8], [3 x i8]* %sfr, i64 0, i64 2, !dbg !6093
  %11 = load i8, i8* %arrayidx8, align 1, !dbg !6093
  %conv9 = zext i8 %11 to i32, !dbg !6093
  %shr = ashr i32 %conv9, 4, !dbg !6094
  %12 = load i32, i32* %Mclk, align 4, !dbg !6095
  %mul10 = mul i32 %shr, %12, !dbg !6096
  %div11 = udiv i32 %mul10, 256, !dbg !6097
  %13 = load i32, i32* %srate, align 4, !dbg !6098
  %add = add i32 %13, %div11, !dbg !6098
  store i32 %add, i32* %srate, align 4, !dbg !6098
  %14 = load i8, i8* %rtf, align 1, !dbg !6099
  %conv12 = sext i8 %14 to i32, !dbg !6100
  %conv13 = sext i32 %conv12 to i64, !dbg !6100
  %15 = load i32, i32* %srate, align 4, !dbg !6101
  %conv14 = zext i32 %15 to i64, !dbg !6101
  %div15 = sdiv i64 %conv14, 4096, !dbg !6102
  %mul16 = mul i64 %conv13, %div15, !dbg !6103
  %conv17 = trunc i64 %mul16 to i32, !dbg !6100
  store i32 %conv17, i32* %offset, align 4, !dbg !6104
  %16 = load i32, i32* %offset, align 4, !dbg !6105
  %div18 = sdiv i32 %16, 128, !dbg !6105
  store i32 %div18, i32* %offset, align 4, !dbg !6105
  br label %do.body19, !dbg !6106

do.body19:                                        ; preds = %do.end
  %17 = load i32, i32* @debug, align 4, !dbg !6107
  %tobool20 = icmp ne i32 %17, 0, !dbg !6107
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !6110

if.then21:                                        ; preds = %do.body19
  %18 = load i32, i32* %srate, align 4, !dbg !6107
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.stv0299_get_symbolrate, i64 0, i64 0), i32 %18) #12, !dbg !6107
  br label %if.end23, !dbg !6107

if.end23:                                         ; preds = %if.then21, %do.body19
  br label %do.end24, !dbg !6110

do.end24:                                         ; preds = %if.end23
  br label %do.body25, !dbg !6111

do.body25:                                        ; preds = %do.end24
  %19 = load i32, i32* @debug, align 4, !dbg !6112
  %tobool26 = icmp ne i32 %19, 0, !dbg !6112
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !6115

if.then27:                                        ; preds = %do.body25
  %20 = load i32, i32* %offset, align 4, !dbg !6112
  %call28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.stv0299_get_symbolrate, i64 0, i64 0), i32 %20) #12, !dbg !6112
  br label %if.end29, !dbg !6112

if.end29:                                         ; preds = %if.then27, %do.body25
  br label %do.end30, !dbg !6115

do.end30:                                         ; preds = %if.end29
  %21 = load i32, i32* %offset, align 4, !dbg !6116
  %22 = load i32, i32* %srate, align 4, !dbg !6117
  %add31 = add i32 %22, %21, !dbg !6117
  store i32 %add31, i32* %srate, align 4, !dbg !6117
  %23 = load i32, i32* %srate, align 4, !dbg !6118
  %add32 = add i32 %23, 1000, !dbg !6118
  store i32 %add32, i32* %srate, align 4, !dbg !6118
  %24 = load i32, i32* %srate, align 4, !dbg !6119
  %div33 = udiv i32 %24, 2000, !dbg !6119
  store i32 %div33, i32* %srate, align 4, !dbg !6119
  %25 = load i32, i32* %srate, align 4, !dbg !6120
  %mul34 = mul i32 %25, 2000, !dbg !6120
  store i32 %mul34, i32* %srate, align 4, !dbg !6120
  %26 = load i32, i32* %srate, align 4, !dbg !6121
  ret i32 %26, !dbg !6122
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_readregs(%struct.stv0299_state* %state, i8 zeroext %reg1, i8* %b, i8 zeroext %len) #0 !dbg !6123 {
entry:
  %state.addr = alloca %struct.stv0299_state*, align 8
  %reg1.addr = alloca i8, align 1
  %b.addr = alloca i8*, align 8
  %len.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.stv0299_state* %state, %struct.stv0299_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state.addr, metadata !6126, metadata !DIExpression()), !dbg !6127
  store i8 %reg1, i8* %reg1.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg1.addr, metadata !6128, metadata !DIExpression()), !dbg !6129
  store i8* %b, i8** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %b.addr, metadata !6130, metadata !DIExpression()), !dbg !6131
  store i8 %len, i8* %len.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %len.addr, metadata !6132, metadata !DIExpression()), !dbg !6133
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6134, metadata !DIExpression()), !dbg !6135
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !6136, metadata !DIExpression()), !dbg !6137
  %arrayinit.begin = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !6138
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 0, !dbg !6139
  %0 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !6140
  %config = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %0, i32 0, i32 1, !dbg !6141
  %1 = load %struct.stv0299_config*, %struct.stv0299_config** %config, align 8, !dbg !6141
  %demod_address = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %1, i32 0, i32 0, !dbg !6142
  %2 = load i8, i8* %demod_address, align 8, !dbg !6142
  %conv = zext i8 %2 to i16, !dbg !6140
  store i16 %conv, i16* %addr, align 16, !dbg !6139
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 1, !dbg !6139
  store i16 0, i16* %flags, align 2, !dbg !6139
  %len1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 2, !dbg !6139
  store i16 1, i16* %len1, align 4, !dbg !6139
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 3, !dbg !6139
  store i8* %reg1.addr, i8** %buf, align 8, !dbg !6139
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i64 1, !dbg !6138
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !6143
  %3 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !6144
  %config3 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %3, i32 0, i32 1, !dbg !6145
  %4 = load %struct.stv0299_config*, %struct.stv0299_config** %config3, align 8, !dbg !6145
  %demod_address4 = getelementptr inbounds %struct.stv0299_config, %struct.stv0299_config* %4, i32 0, i32 0, !dbg !6146
  %5 = load i8, i8* %demod_address4, align 8, !dbg !6146
  %conv5 = zext i8 %5 to i16, !dbg !6144
  store i16 %conv5, i16* %addr2, align 16, !dbg !6143
  %flags6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !6143
  store i16 1, i16* %flags6, align 2, !dbg !6143
  %len7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !6143
  %6 = load i8, i8* %len.addr, align 1, !dbg !6147
  %conv8 = zext i8 %6 to i16, !dbg !6147
  store i16 %conv8, i16* %len7, align 4, !dbg !6143
  %buf9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !6143
  %7 = load i8*, i8** %b.addr, align 8, !dbg !6148
  store i8* %7, i8** %buf9, align 8, !dbg !6143
  %8 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !6149
  %i2c = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %8, i32 0, i32 0, !dbg !6150
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !6150
  %arraydecay = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !6151
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %9, %struct.i2c_msg* %arraydecay, i32 2) #8, !dbg !6152
  store i32 %call, i32* %ret, align 4, !dbg !6153
  %10 = load i32, i32* %ret, align 4, !dbg !6154
  %cmp = icmp ne i32 %10, 2, !dbg !6156
  br i1 %cmp, label %if.then, label %if.end13, !dbg !6157

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6158

do.body:                                          ; preds = %if.then
  %11 = load i32, i32* @debug, align 4, !dbg !6159
  %tobool = icmp ne i32 %11, 0, !dbg !6159
  br i1 %tobool, label %if.then11, label %if.end, !dbg !6162

if.then11:                                        ; preds = %do.body
  %12 = load i32, i32* %ret, align 4, !dbg !6159
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.stv0299_readregs, i64 0, i64 0), i32 %12) #12, !dbg !6159
  br label %if.end, !dbg !6159

if.end:                                           ; preds = %if.then11, %do.body
  br label %do.end, !dbg !6162

do.end:                                           ; preds = %if.end
  br label %if.end13, !dbg !6162

if.end13:                                         ; preds = %do.end, %entry
  %13 = load i32, i32* %ret, align 4, !dbg !6163
  %cmp14 = icmp eq i32 %13, 2, !dbg !6164
  br i1 %cmp14, label %cond.true, label %cond.false, !dbg !6163

cond.true:                                        ; preds = %if.end13
  br label %cond.end, !dbg !6163

cond.false:                                       ; preds = %if.end13
  %14 = load i32, i32* %ret, align 4, !dbg !6165
  br label %cond.end, !dbg !6163

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %14, %cond.false ], !dbg !6163
  ret i32 %cond, !dbg !6166
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_wait_diseqc_idle(%struct.stv0299_state* %state, i32 %timeout) #0 !dbg !6167 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.stv0299_state*, align 8
  %timeout.addr = alloca i32, align 4
  %start = alloca i64, align 8
  store %struct.stv0299_state* %state, %struct.stv0299_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state.addr, metadata !6170, metadata !DIExpression()), !dbg !6171
  store i32 %timeout, i32* %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout.addr, metadata !6172, metadata !DIExpression()), !dbg !6173
  call void @llvm.dbg.declare(metadata i64* %start, metadata !6174, metadata !DIExpression()), !dbg !6175
  %0 = load volatile i64, i64* @jiffies, align 8, !dbg !6176
  store i64 %0, i64* %start, align 8, !dbg !6175
  br label %do.body, !dbg !6177

do.body:                                          ; preds = %entry
  %1 = load i32, i32* @debug, align 4, !dbg !6178
  %tobool = icmp ne i32 %1, 0, !dbg !6178
  br i1 %tobool, label %if.then, label %if.end, !dbg !6181

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.stv0299_wait_diseqc_idle, i64 0, i64 0)) #12, !dbg !6178
  br label %if.end, !dbg !6178

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6181

do.end:                                           ; preds = %if.end
  br label %while.cond, !dbg !6182

while.cond:                                       ; preds = %if.end13, %do.end
  %2 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !6183
  %call1 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %2, i8 zeroext 10) #8, !dbg !6184
  %conv = zext i8 %call1 to i32, !dbg !6184
  %and = and i32 %conv, 3, !dbg !6185
  %cmp = icmp ne i32 %and, 2, !dbg !6186
  br i1 %cmp, label %while.body, label %while.end, !dbg !6182

while.body:                                       ; preds = %while.cond
  %3 = load volatile i64, i64* @jiffies, align 8, !dbg !6187
  %4 = load i64, i64* %start, align 8, !dbg !6190
  %sub = sub i64 %3, %4, !dbg !6191
  %5 = load i32, i32* %timeout.addr, align 4, !dbg !6192
  %conv3 = sext i32 %5 to i64, !dbg !6192
  %cmp4 = icmp ugt i64 %sub, %conv3, !dbg !6193
  br i1 %cmp4, label %if.then6, label %if.end13, !dbg !6194

if.then6:                                         ; preds = %while.body
  br label %do.body7, !dbg !6195

do.body7:                                         ; preds = %if.then6
  %6 = load i32, i32* @debug, align 4, !dbg !6197
  %tobool8 = icmp ne i32 %6, 0, !dbg !6197
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !6200

if.then9:                                         ; preds = %do.body7
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.stv0299_wait_diseqc_idle, i64 0, i64 0)) #12, !dbg !6197
  br label %if.end11, !dbg !6197

if.end11:                                         ; preds = %if.then9, %do.body7
  br label %do.end12, !dbg !6200

do.end12:                                         ; preds = %if.end11
  store i32 -110, i32* %retval, align 4, !dbg !6201
  br label %return, !dbg !6201

if.end13:                                         ; preds = %while.body
  call void @msleep(i32 10) #8, !dbg !6202
  br label %while.cond, !dbg !6182, !llvm.loop !6203

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !6205
  br label %return, !dbg !6205

return:                                           ; preds = %while.end, %do.end12
  %7 = load i32, i32* %retval, align 4, !dbg !6206
  ret i32 %7, !dbg !6206
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stv0299_wait_diseqc_fifo(%struct.stv0299_state* %state, i32 %timeout) #0 !dbg !6207 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.stv0299_state*, align 8
  %timeout.addr = alloca i32, align 4
  %start = alloca i64, align 8
  store %struct.stv0299_state* %state, %struct.stv0299_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stv0299_state** %state.addr, metadata !6208, metadata !DIExpression()), !dbg !6209
  store i32 %timeout, i32* %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout.addr, metadata !6210, metadata !DIExpression()), !dbg !6211
  call void @llvm.dbg.declare(metadata i64* %start, metadata !6212, metadata !DIExpression()), !dbg !6213
  %0 = load volatile i64, i64* @jiffies, align 8, !dbg !6214
  store i64 %0, i64* %start, align 8, !dbg !6213
  br label %do.body, !dbg !6215

do.body:                                          ; preds = %entry
  %1 = load i32, i32* @debug, align 4, !dbg !6216
  %tobool = icmp ne i32 %1, 0, !dbg !6216
  br i1 %tobool, label %if.then, label %if.end, !dbg !6219

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.stv0299_wait_diseqc_fifo, i64 0, i64 0)) #12, !dbg !6216
  br label %if.end, !dbg !6216

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6219

do.end:                                           ; preds = %if.end
  br label %while.cond, !dbg !6220

while.cond:                                       ; preds = %if.end12, %do.end
  %2 = load %struct.stv0299_state*, %struct.stv0299_state** %state.addr, align 8, !dbg !6221
  %call1 = call zeroext i8 @stv0299_readreg(%struct.stv0299_state* %2, i8 zeroext 10) #8, !dbg !6222
  %conv = zext i8 %call1 to i32, !dbg !6222
  %and = and i32 %conv, 1, !dbg !6223
  %tobool2 = icmp ne i32 %and, 0, !dbg !6220
  br i1 %tobool2, label %while.body, label %while.end, !dbg !6220

while.body:                                       ; preds = %while.cond
  %3 = load volatile i64, i64* @jiffies, align 8, !dbg !6224
  %4 = load i64, i64* %start, align 8, !dbg !6227
  %sub = sub i64 %3, %4, !dbg !6228
  %5 = load i32, i32* %timeout.addr, align 4, !dbg !6229
  %conv3 = sext i32 %5 to i64, !dbg !6229
  %cmp = icmp ugt i64 %sub, %conv3, !dbg !6230
  br i1 %cmp, label %if.then5, label %if.end12, !dbg !6231

if.then5:                                         ; preds = %while.body
  br label %do.body6, !dbg !6232

do.body6:                                         ; preds = %if.then5
  %6 = load i32, i32* @debug, align 4, !dbg !6234
  %tobool7 = icmp ne i32 %6, 0, !dbg !6234
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !6237

if.then8:                                         ; preds = %do.body6
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.stv0299_wait_diseqc_fifo, i64 0, i64 0)) #12, !dbg !6234
  br label %if.end10, !dbg !6234

if.end10:                                         ; preds = %if.then8, %do.body6
  br label %do.end11, !dbg !6237

do.end11:                                         ; preds = %if.end10
  store i32 -110, i32* %retval, align 4, !dbg !6238
  br label %return, !dbg !6238

if.end12:                                         ; preds = %while.body
  call void @msleep(i32 10) #8, !dbg !6239
  br label %while.cond, !dbg !6220, !llvm.loop !6240

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !6242
  br label %return, !dbg !6242

return:                                           ; preds = %while.end, %do.end11
  %7 = load i32, i32* %retval, align 4, !dbg !6243
  ret i32 %7, !dbg !6243
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_get_boottime() #0 !dbg !6244 {
entry:
  %call = call i64 @ktime_get_with_offset(i32 1) #8, !dbg !6245
  ret i64 %call, !dbg !6246
}

; Function Attrs: noredzone
declare dso_local void @dvb_frontend_sleep_until(i64*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_us_delta(i64 %later, i64 %earlier) #0 !dbg !6247 {
entry:
  %later.addr = alloca i64, align 8
  %earlier.addr = alloca i64, align 8
  store i64 %later, i64* %later.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %later.addr, metadata !6251, metadata !DIExpression()), !dbg !6252
  store i64 %earlier, i64* %earlier.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %earlier.addr, metadata !6253, metadata !DIExpression()), !dbg !6254
  %0 = load i64, i64* %later.addr, align 8, !dbg !6255
  %1 = load i64, i64* %earlier.addr, align 8, !dbg !6255
  %sub = sub i64 %0, %1, !dbg !6255
  %call = call i64 @ktime_to_us(i64 %sub) #8, !dbg !6256
  ret i64 %call, !dbg !6257
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get_with_offset(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_to_us(i64 %kt) #0 !dbg !6258 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !6261, metadata !DIExpression()), !dbg !6262
  %0 = load i64, i64* %kt.addr, align 8, !dbg !6263
  %call = call i64 @ktime_divns(i64 %0, i64 1000) #8, !dbg !6264
  ret i64 %call, !dbg !6265
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_divns(i64 %kt, i64 %div) #0 !dbg !6266 {
entry:
  %kt.addr = alloca i64, align 8
  %div.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !6269, metadata !DIExpression()), !dbg !6270
  store i64 %div, i64* %div.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %div.addr, metadata !6271, metadata !DIExpression()), !dbg !6272
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6273, metadata !DIExpression()), !dbg !6275
  %0 = load i64, i64* %div.addr, align 8, !dbg !6275
  %cmp = icmp slt i64 %0, 0, !dbg !6275
  %lnot = xor i1 %cmp, true, !dbg !6275
  %lnot1 = xor i1 %lnot, true, !dbg !6275
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6275
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !6275
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !6276
  %tobool = icmp ne i32 %1, 0, !dbg !6276
  %lnot2 = xor i1 %tobool, true, !dbg !6276
  %lnot4 = xor i1 %lnot2, true, !dbg !6276
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !6276
  %conv = sext i32 %lnot.ext5 to i64, !dbg !6276
  %tobool6 = icmp ne i64 %conv, 0, !dbg !6276
  br i1 %tobool6, label %if.then, label %if.end, !dbg !6275

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6276

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !6278

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !6280

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !6278

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i32 154, i32 2305, i64 12) #9, !dbg !6282, !srcloc !6284
  br label %do.end9, !dbg !6282

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 18) #9, !dbg !6285, !srcloc !6287
  br label %do.body10, !dbg !6278

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !6288

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !6278

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !6278

if.end:                                           ; preds = %do.end12, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !6275
  %tobool13 = icmp ne i32 %2, 0, !dbg !6275
  %lnot14 = xor i1 %tobool13, true, !dbg !6275
  %lnot16 = xor i1 %lnot14, true, !dbg !6275
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !6275
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !6275
  store i64 %conv18, i64* %tmp, align 8, !dbg !6276
  %3 = load i64, i64* %tmp, align 8, !dbg !6275
  %4 = load i64, i64* %kt.addr, align 8, !dbg !6290
  %5 = load i64, i64* %div.addr, align 8, !dbg !6291
  %div19 = sdiv i64 %4, %5, !dbg !6292
  ret i64 %div19, !dbg !6293
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
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
!llvm.module.flags = !{!4488, !4489, !4490, !4491}
!llvm.ident = !{!4492}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "stv0299_ops", scope: !2, file: !3, line: 704, type: !4487, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !297, globals: !317, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/stv0299.c", directory: "/home/lizy2001/genbc/linux")
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
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tk_offsets", file: !291, line: 60, baseType: !7, size: 32, elements: !292)
!291 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/lizy2001/genbc/linux")
!292 = !{!293, !294, !295, !296}
!293 = !DIEnumerator(name: "TK_OFFS_REAL", value: 0, isUnsigned: true)
!294 = !DIEnumerator(name: "TK_OFFS_BOOT", value: 1, isUnsigned: true)
!295 = !DIEnumerator(name: "TK_OFFS_TAI", value: 2, isUnsigned: true)
!296 = !DIEnumerator(name: "TK_OFFS_MAX", value: 3, isUnsigned: true)
!297 = !{!298, !300, !301, !307, !310, !313, !309}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !299, line: 148, baseType: !7)
!299 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !299, line: 107, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !303, line: 23, baseType: !304)
!303 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !305, line: 31, baseType: !306)
!305 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!306 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !303, line: 20, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !305, line: 26, baseType: !309)
!309 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !303, line: 18, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !305, line: 23, baseType: !312)
!312 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !303, line: 17, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !305, line: 21, baseType: !316)
!316 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!317 = !{!318, !384, !389, !394, !396, !401, !406, !411, !416, !421, !426, !428, !0, !430, !4477, !4482}
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "__param_debug_legacy_dish_switch", scope: !2, file: !3, line: 744, type: !320, isLocal: true, isDefinition: true, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !322, line: 69, size: 320, elements: !323)
!322 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!323 = !{!324, !328, !332, !352, !357, !361, !362}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !321, file: !322, line: 70, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !321, file: !322, line: 71, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !331, line: 76, flags: DIFlagFwdDecl)
!331 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !321, file: !322, line: 72, baseType: !333, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !322, line: 47, size: 256, elements: !336)
!336 = !{!337, !338, !343, !348}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !322, line: 49, baseType: !7, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !335, file: !322, line: 51, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!309, !325, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !335, file: !322, line: 53, baseType: !344, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!309, !347, !342}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !335, file: !322, line: 55, baseType: !349, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !300}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !321, file: !322, line: 73, baseType: !353, size: 16, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !303, line: 19, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !305, line: 24, baseType: !356)
!356 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !321, file: !322, line: 74, baseType: !358, size: 8, offset: 208)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !303, line: 16, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !305, line: 20, baseType: !360)
!360 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !322, line: 75, baseType: !314, size: 8, offset: 216)
!362 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !322, line: 76, baseType: !363, size: 64, offset: 256)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !322, line: 76, size: 64, elements: !364)
!364 = !{!365, !366, !373}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !363, file: !322, line: 77, baseType: !300, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !363, file: !322, line: 78, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !322, line: 86, size: 128, elements: !370)
!370 = !{!371, !372}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !369, file: !322, line: 87, baseType: !7, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !369, file: !322, line: 88, baseType: !347, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !363, file: !322, line: 79, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !322, line: 92, size: 256, elements: !377)
!377 = !{!378, !379, !380, !382, !383}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !376, file: !322, line: 94, baseType: !7, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !376, file: !322, line: 95, baseType: !7, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !376, file: !322, line: 96, baseType: !381, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !376, file: !322, line: 97, baseType: !333, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !376, file: !322, line: 98, baseType: !300, size: 64, offset: 192)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug_legacy_dish_switchtype220", scope: !2, file: !3, line: 744, type: !386, isLocal: true, isDefinition: true, align: 8)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 368, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 46)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug_legacy_dish_switch221", scope: !2, file: !3, line: 745, type: !391, isLocal: true, isDefinition: true, align: 8)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 752, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 94)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 747, type: !320, isLocal: true, isDefinition: true, align: 64)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype222", scope: !2, file: !3, line: 747, type: !398, isLocal: true, isDefinition: true, align: 8)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 216, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 27)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug223", scope: !2, file: !3, line: 748, type: !403, isLocal: true, isDefinition: true, align: 8)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 520, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 65)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description224", scope: !2, file: !3, line: 750, type: !408, isLocal: true, isDefinition: true, align: 8)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 432, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 54)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author225", scope: !2, file: !3, line: 751, type: !413, isLocal: true, isDefinition: true, align: 8)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 1056, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 132)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file226", scope: !2, file: !3, line: 752, type: !418, isLocal: true, isDefinition: true, align: 8)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 392, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 49)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license227", scope: !2, file: !3, line: 752, type: !423, isLocal: true, isDefinition: true, align: 8)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 160, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 20)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 62, type: !309, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(name: "debug_legacy_dish_switch", scope: !2, file: !3, line: 63, type: !309, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(name: "fec_tab", scope: !432, file: !3, line: 164, type: !4474, isLocal: true, isDefinition: true)
!432 = distinct !DISubprogram(name: "stv0299_get_fec", scope: !3, file: !3, line: 162, type: !433, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!433 = !DISubroutineType(types: !434)
!434 = !{!87, !435}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stv0299_state", file: !3, line: 45, size: 10624, elements: !437)
!437 = !{!438, !4127, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !436, file: !3, line: 46, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !441, line: 695, size: 7552, elements: !442)
!441 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!442 = !{!443, !444, !445, !484, !485, !499, !3520, !3521, !3522, !3523, !4074, !4075, !4076, !4080, !4081, !4082, !4083, !4115, !4126}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !440, file: !441, line: 696, baseType: !329, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !440, file: !441, line: 697, baseType: !7, size: 32, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !440, file: !441, line: 698, baseType: !446, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !441, line: 519, size: 320, elements: !449)
!449 = !{!450, !463, !464, !477, !478}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !448, file: !441, line: 529, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!309, !439, !454, !309}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !456, line: 69, size: 128, elements: !457)
!456 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!457 = !{!458, !459, !460, !461}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !455, file: !456, line: 70, baseType: !355, size: 16)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !456, line: 71, baseType: !355, size: 16, offset: 16)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !455, file: !456, line: 84, baseType: !355, size: 16, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !455, file: !456, line: 85, baseType: !462, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !448, file: !441, line: 531, baseType: !451, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !448, file: !441, line: 533, baseType: !465, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!309, !439, !354, !356, !327, !314, !309, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !456, line: 135, size: 272, elements: !470)
!470 = !{!471, !472, !473}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !469, file: !456, line: 136, baseType: !315, size: 8)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !469, file: !456, line: 137, baseType: !355, size: 16)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !469, file: !456, line: 138, baseType: !474, size: 272)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 272, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 34)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !448, file: !441, line: 536, baseType: !465, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !448, file: !441, line: 541, baseType: !479, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!482, !439}
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !303, line: 21, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !305, line: 27, baseType: !7)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !440, file: !441, line: 699, baseType: !300, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !440, file: !441, line: 702, baseType: !486, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !441, line: 557, size: 192, elements: !489)
!489 = !{!490, !494, !498}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !488, file: !441, line: 558, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !439, !7}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !488, file: !441, line: 559, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!309, !439, !7}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !488, file: !441, line: 560, baseType: !491, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !440, file: !441, line: 703, baseType: !500, size: 192, offset: 320)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !501, line: 30, size: 192, elements: !502)
!501 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!502 = !{!503, !513, !529}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !500, file: !501, line: 31, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !505, line: 29, baseType: !506)
!505 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !505, line: 20, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !506, file: !505, line: 21, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !510, line: 25, baseType: !511)
!510 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !510, line: 25, elements: !512)
!512 = !{}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !500, file: !501, line: 32, baseType: !514, size: 128)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !515, line: 125, size: 128, elements: !516)
!515 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!516 = !{!517, !528}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !514, file: !515, line: 126, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !515, line: 31, size: 64, elements: !519)
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !518, file: !515, line: 32, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !515, line: 24, size: 192, align: 64, elements: !523)
!523 = !{!524, !526, !527}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !522, file: !515, line: 25, baseType: !525, size: 64)
!525 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !522, file: !515, line: 26, baseType: !521, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !522, file: !515, line: 27, baseType: !521, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !514, file: !515, line: 127, baseType: !521, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !500, file: !501, line: 33, baseType: !530, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !532, line: 640, size: 48640, elements: !533)
!532 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!533 = !{!534, !540, !543, !544, !554, !555, !556, !557, !558, !559, !560, !561, !565, !588, !599, !691, !692, !693, !704, !705, !707, !708, !2824, !2825, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2907, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2922, !2923, !2924, !2926, !2927, !2928, !2929, !2930, !2931, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2955, !2960, !2961, !2962, !2963, !2964, !2966, !2969, !2972, !2975, !2978, !2982, !3083, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3129, !3130, !3131, !3132, !3133, !3138, !3139, !3140, !3143, !3144, !3147, !3150, !3153, !3154, !3186, !3189, !3190, !3269, !3270, !3273, !3274, !3277, !3278, !3279, !3283, !3284, !3285, !3298, !3299, !3300, !3310, !3315, !3316, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !531, file: !532, line: 646, baseType: !535, size: 128)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !536, line: 56, size: 128, elements: !537)
!536 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !536, line: 57, baseType: !525, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !535, file: !536, line: 58, baseType: !482, size: 32, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !531, file: !532, line: 649, baseType: !541, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !542)
!542 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !531, file: !532, line: 657, baseType: !300, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !531, file: !532, line: 658, baseType: !545, size: 32, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !546, line: 113, baseType: !547)
!546 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !546, line: 111, size: 32, elements: !548)
!548 = !{!549}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !547, file: !546, line: 112, baseType: !550, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !299, line: 168, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !299, line: 166, size: 32, elements: !552)
!552 = !{!553}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !551, file: !299, line: 167, baseType: !309, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !531, file: !532, line: 660, baseType: !7, size: 32, offset: 288)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !531, file: !532, line: 661, baseType: !7, size: 32, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !531, file: !532, line: 684, baseType: !309, size: 32, offset: 352)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !531, file: !532, line: 686, baseType: !309, size: 32, offset: 384)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !531, file: !532, line: 687, baseType: !309, size: 32, offset: 416)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !531, file: !532, line: 688, baseType: !309, size: 32, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !531, file: !532, line: 689, baseType: !7, size: 32, offset: 480)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !531, file: !532, line: 691, baseType: !562, size: 64, offset: 512)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !532, line: 691, flags: DIFlagFwdDecl)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !531, file: !532, line: 692, baseType: !566, size: 832, offset: 576)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !532, line: 451, size: 832, elements: !567)
!567 = !{!568, !573, !574, !580, !581, !582, !583, !584, !585, !586}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !566, file: !532, line: 453, baseType: !569, size: 128)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !532, line: 325, size: 128, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !569, file: !532, line: 326, baseType: !525, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !569, file: !532, line: 327, baseType: !482, size: 32, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !566, file: !532, line: 454, baseType: !522, size: 192, align: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !566, file: !532, line: 455, baseType: !575, size: 128, offset: 320)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !299, line: 178, size: 128, elements: !576)
!576 = !{!577, !579}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !575, file: !299, line: 179, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !575, file: !299, line: 179, baseType: !578, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !566, file: !532, line: 456, baseType: !7, size: 32, offset: 448)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !566, file: !532, line: 458, baseType: !302, size: 64, offset: 512)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !566, file: !532, line: 459, baseType: !302, size: 64, offset: 576)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !566, file: !532, line: 460, baseType: !302, size: 64, offset: 640)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !566, file: !532, line: 461, baseType: !302, size: 64, offset: 704)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !566, file: !532, line: 463, baseType: !302, size: 64, offset: 768)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !566, file: !532, line: 465, baseType: !587, offset: 832)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !532, line: 415, elements: !512)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !531, file: !532, line: 693, baseType: !589, size: 384, offset: 1408)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !532, line: 489, size: 384, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !589, file: !532, line: 490, baseType: !575, size: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !589, file: !532, line: 491, baseType: !525, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !589, file: !532, line: 492, baseType: !525, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !589, file: !532, line: 493, baseType: !7, size: 32, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !589, file: !532, line: 494, baseType: !356, size: 16, offset: 288)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !589, file: !532, line: 495, baseType: !356, size: 16, offset: 304)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !589, file: !532, line: 497, baseType: !598, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !531, file: !532, line: 697, baseType: !600, size: 1792, offset: 1792)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !532, line: 507, size: 1792, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !607, !608, !612, !613, !614, !615, !616, !617, !618, !688, !689}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !600, file: !532, line: 508, baseType: !522, size: 192, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !600, file: !532, line: 515, baseType: !302, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !600, file: !532, line: 516, baseType: !302, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !600, file: !532, line: 517, baseType: !302, size: 64, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !600, file: !532, line: 518, baseType: !302, size: 64, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !600, file: !532, line: 519, baseType: !302, size: 64, offset: 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !600, file: !532, line: 526, baseType: !609, size: 64, offset: 512)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !303, line: 22, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !305, line: 30, baseType: !611)
!611 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !600, file: !532, line: 527, baseType: !302, size: 64, offset: 576)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !600, file: !532, line: 528, baseType: !7, size: 32, offset: 640)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !600, file: !532, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !600, file: !532, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !600, file: !532, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !600, file: !532, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !600, file: !532, line: 563, baseType: !619, size: 512, offset: 704)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !620)
!620 = !{!621, !629, !630, !635, !684, !685, !686, !687}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !619, file: !191, line: 119, baseType: !622, size: 256)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !623, line: 9, size: 256, elements: !624)
!623 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!624 = !{!625, !626}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !622, file: !623, line: 10, baseType: !522, size: 192, align: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !622, file: !623, line: 11, baseType: !627, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !628, line: 29, baseType: !609)
!628 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !619, file: !191, line: 120, baseType: !627, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !619, file: !191, line: 121, baseType: !631, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!190, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !619, file: !191, line: 122, baseType: !636, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !638)
!638 = !{!639, !659, !660, !664, !674, !675, !679, !683}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !637, file: !191, line: 160, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !641, file: !191, line: 215, baseType: !504)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !641, file: !191, line: 216, baseType: !7, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !641, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !641, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !641, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !641, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !641, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !641, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !641, file: !191, line: 233, baseType: !627, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !641, file: !191, line: 234, baseType: !634, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !641, file: !191, line: 235, baseType: !627, size: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !641, file: !191, line: 236, baseType: !634, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !641, file: !191, line: 237, baseType: !656, size: 4096, offset: 512)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 4096, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 8)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !637, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !637, file: !191, line: 162, baseType: !661, size: 32, offset: 96)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !299, line: 27, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !663, line: 96, baseType: !309)
!663 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!664 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !637, file: !191, line: 163, baseType: !665, size: 32, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !666, line: 276, baseType: !667)
!666 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !666, line: 276, size: 32, elements: !668)
!668 = !{!669}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !667, file: !666, line: 276, baseType: !670, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !666, line: 70, baseType: !671)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !666, line: 65, size: 32, elements: !672)
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !671, file: !666, line: 66, baseType: !7, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !637, file: !191, line: 164, baseType: !634, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !637, file: !191, line: 165, baseType: !676, size: 128, offset: 256)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !623, line: 14, size: 128, elements: !677)
!677 = !{!678}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !676, file: !623, line: 15, baseType: !514, size: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !637, file: !191, line: 166, baseType: !680, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!627}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !637, file: !191, line: 167, baseType: !627, size: 64, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !619, file: !191, line: 123, baseType: !314, size: 8, offset: 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !619, file: !191, line: 124, baseType: !314, size: 8, offset: 456)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !619, file: !191, line: 125, baseType: !314, size: 8, offset: 464)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !619, file: !191, line: 126, baseType: !314, size: 8, offset: 472)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !600, file: !532, line: 572, baseType: !619, size: 512, offset: 1216)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !600, file: !532, line: 580, baseType: !690, size: 64, offset: 1728)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !531, file: !532, line: 721, baseType: !7, size: 32, offset: 3584)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !531, file: !532, line: 722, baseType: !309, size: 32, offset: 3616)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !531, file: !532, line: 723, baseType: !694, size: 64, offset: 3648)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !697, line: 17, baseType: !698)
!697 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !697, line: 17, size: 64, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !698, file: !697, line: 17, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 64, elements: !702)
!702 = !{!703}
!703 = !DISubrange(count: 1)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !531, file: !532, line: 724, baseType: !696, size: 64, offset: 3712)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !531, file: !532, line: 749, baseType: !706, offset: 3776)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !532, line: 290, elements: !512)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !531, file: !532, line: 751, baseType: !575, size: 128, offset: 3776)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !531, file: !532, line: 757, baseType: !709, size: 64, offset: 3904)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !711, line: 388, size: 7296, elements: !712)
!711 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!712 = !{!713, !2820}
!713 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !711, line: 389, baseType: !714, size: 7296)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !710, file: !711, line: 389, size: 7296, elements: !715)
!715 = !{!716, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2735, !2741, !2744, !2781, !2782, !2804, !2805, !2808, !2809, !2810, !2813, !2814, !2815, !2818, !2819}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !714, file: !711, line: 390, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !711, line: 305, size: 1472, elements: !719)
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !735, !736, !741, !742, !745, !749, !750, !2683, !2684, !2685}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !718, file: !711, line: 308, baseType: !525, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !718, file: !711, line: 309, baseType: !525, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !718, file: !711, line: 313, baseType: !717, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !718, file: !711, line: 313, baseType: !717, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !718, file: !711, line: 315, baseType: !522, size: 192, align: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !718, file: !711, line: 323, baseType: !525, size: 64, offset: 448)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !718, file: !711, line: 327, baseType: !709, size: 64, offset: 512)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !718, file: !711, line: 333, baseType: !728, size: 64, offset: 576)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !729, line: 284, baseType: !730)
!729 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !729, line: 284, size: 64, elements: !731)
!731 = !{!732}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !730, file: !729, line: 284, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !734, line: 19, baseType: !525)
!734 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!735 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !718, file: !711, line: 334, baseType: !525, size: 64, offset: 640)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !718, file: !711, line: 343, baseType: !737, size: 256, offset: 704)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !718, file: !711, line: 340, size: 256, elements: !738)
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !737, file: !711, line: 341, baseType: !522, size: 192, align: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !737, file: !711, line: 342, baseType: !525, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !718, file: !711, line: 351, baseType: !575, size: 128, offset: 960)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !718, file: !711, line: 353, baseType: !743, size: 64, offset: 1088)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !711, line: 353, flags: DIFlagFwdDecl)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !718, file: !711, line: 356, baseType: !746, size: 64, offset: 1152)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !748)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !711, line: 356, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !718, file: !711, line: 359, baseType: !525, size: 64, offset: 1216)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !718, file: !711, line: 361, baseType: !751, size: 64, offset: 1280)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !753)
!753 = !{!754, !772, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2485, !2667, !2676, !2677, !2678, !2679, !2680, !2681, !2682}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !752, file: !208, line: 920, baseType: !755, size: 128)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !752, file: !208, line: 917, size: 128, elements: !756)
!756 = !{!757, !763}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !755, file: !208, line: 918, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !759, line: 58, size: 64, elements: !760)
!759 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !758, file: !759, line: 59, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !755, file: !208, line: 919, baseType: !764, size: 128, align: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !299, line: 216, size: 128, align: 64, elements: !765)
!765 = !{!766, !768}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !764, file: !299, line: 217, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !764, file: !299, line: 218, baseType: !769, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !767}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !752, file: !208, line: 921, baseType: !773, size: 128, offset: 128)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !774, line: 8, size: 128, elements: !775)
!774 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!775 = !{!776, !780}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !773, file: !774, line: 9, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !779, line: 18, flags: DIFlagFwdDecl)
!779 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!780 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !773, file: !774, line: 10, baseType: !781, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !779, line: 89, size: 1536, elements: !783)
!783 = !{!784, !785, !790, !798, !799, !814, !2415, !2417, !2429, !2430, !2431, !2432, !2433, !2438, !2439, !2440}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !782, file: !779, line: 91, baseType: !7, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !782, file: !779, line: 92, baseType: !786, size: 32, offset: 32)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !666, line: 277, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !666, line: 277, size: 32, elements: !788)
!788 = !{!789}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !787, file: !666, line: 277, baseType: !670, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !782, file: !779, line: 93, baseType: !791, size: 128, offset: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !792, line: 38, size: 128, elements: !793)
!792 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!793 = !{!794, !796}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !791, file: !792, line: 39, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !791, file: !792, line: 39, baseType: !797, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !782, file: !779, line: 94, baseType: !781, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !782, file: !779, line: 95, baseType: !800, size: 128, offset: 256)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !779, line: 47, size: 128, elements: !801)
!801 = !{!802, !811}
!802 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !779, line: 48, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !779, line: 48, size: 64, elements: !804)
!804 = !{!805, !810}
!805 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !779, line: 49, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !779, line: 49, size: 64, elements: !807)
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !806, file: !779, line: 50, baseType: !482, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !806, file: !779, line: 50, baseType: !482, size: 32, offset: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !803, file: !779, line: 52, baseType: !302, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !800, file: !779, line: 54, baseType: !812, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !782, file: !779, line: 96, baseType: !815, size: 64, offset: 384)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !817)
!817 = !{!818, !820, !821, !829, !836, !837, !986, !1804, !1805, !1806, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !2083, !2091, !2092, !2093, !2411, !2412, !2413, !2414}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !816, file: !208, line: 611, baseType: !819, size: 16)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !299, line: 19, baseType: !356)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !816, file: !208, line: 612, baseType: !356, size: 16, offset: 16)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !816, file: !208, line: 613, baseType: !822, size: 32, offset: 32)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !823, line: 23, baseType: !824)
!823 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !823, line: 21, size: 32, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !824, file: !823, line: 22, baseType: !827, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !299, line: 32, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !663, line: 49, baseType: !7)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !816, file: !208, line: 614, baseType: !830, size: 32, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !823, line: 28, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !823, line: 26, size: 32, elements: !832)
!832 = !{!833}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !831, file: !823, line: 27, baseType: !834, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !299, line: 33, baseType: !835)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !663, line: 50, baseType: !7)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !816, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !816, file: !208, line: 622, baseType: !838, size: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !840)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !841)
!841 = !{!842, !846, !856, !860, !866, !870, !876, !880, !884, !888, !892, !893, !899, !903, !927, !956, !966, !972, !977, !981, !982}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !840, file: !208, line: 1865, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!781, !815, !781, !7}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !840, file: !208, line: 1866, baseType: !847, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!325, !781, !815, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !852, line: 10, size: 128, elements: !853)
!852 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !851, file: !852, line: 11, baseType: !349, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !851, file: !852, line: 12, baseType: !300, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !840, file: !208, line: 1867, baseType: !857, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!309, !815, !309}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !840, file: !208, line: 1868, baseType: !861, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!864, !815, !309}
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !840, file: !208, line: 1870, baseType: !867, size: 64, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!309, !781, !347, !309}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !840, file: !208, line: 1872, baseType: !871, size: 64, offset: 320)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!309, !815, !781, !819, !874}
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !299, line: 30, baseType: !875)
!875 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !840, file: !208, line: 1873, baseType: !877, size: 64, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!309, !781, !815, !781}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !840, file: !208, line: 1874, baseType: !881, size: 64, offset: 448)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!309, !815, !781}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !840, file: !208, line: 1875, baseType: !885, size: 64, offset: 512)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!309, !815, !781, !325}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !840, file: !208, line: 1876, baseType: !889, size: 64, offset: 576)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!309, !815, !781, !819}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !840, file: !208, line: 1877, baseType: !881, size: 64, offset: 640)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !840, file: !208, line: 1878, baseType: !894, size: 64, offset: 704)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!309, !815, !781, !819, !897}
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !299, line: 16, baseType: !898)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !299, line: 13, baseType: !482)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !840, file: !208, line: 1879, baseType: !900, size: 64, offset: 768)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!309, !815, !781, !815, !781, !7}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !840, file: !208, line: 1881, baseType: !904, size: 64, offset: 832)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!309, !781, !907}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !909)
!909 = !{!910, !911, !912, !913, !914, !917, !924, !925, !926}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !908, file: !208, line: 220, baseType: !7, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !908, file: !208, line: 221, baseType: !819, size: 16, offset: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !908, file: !208, line: 222, baseType: !822, size: 32, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !908, file: !208, line: 223, baseType: !830, size: 32, offset: 96)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !908, file: !208, line: 224, baseType: !915, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !299, line: 46, baseType: !916)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !663, line: 88, baseType: !611)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !908, file: !208, line: 225, baseType: !918, size: 128, offset: 192)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !919, line: 13, size: 128, elements: !920)
!919 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!920 = !{!921, !923}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !918, file: !919, line: 14, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !919, line: 8, baseType: !610)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !918, file: !919, line: 15, baseType: !542, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !908, file: !208, line: 226, baseType: !918, size: 128, offset: 320)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !908, file: !208, line: 227, baseType: !918, size: 128, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !908, file: !208, line: 234, baseType: !751, size: 64, offset: 576)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !840, file: !208, line: 1882, baseType: !928, size: 64, offset: 896)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!309, !931, !933, !482, !7}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !935, line: 22, size: 1152, elements: !936)
!935 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!936 = !{!937, !938, !939, !940, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !934, file: !935, line: 23, baseType: !482, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !934, file: !935, line: 24, baseType: !819, size: 16, offset: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !934, file: !935, line: 25, baseType: !7, size: 32, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !934, file: !935, line: 26, baseType: !941, size: 32, offset: 96)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !299, line: 104, baseType: !482)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !934, file: !935, line: 27, baseType: !302, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !934, file: !935, line: 28, baseType: !302, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !934, file: !935, line: 37, baseType: !302, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !934, file: !935, line: 38, baseType: !897, size: 32, offset: 320)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !934, file: !935, line: 39, baseType: !897, size: 32, offset: 352)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !934, file: !935, line: 40, baseType: !822, size: 32, offset: 384)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !934, file: !935, line: 41, baseType: !830, size: 32, offset: 416)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !934, file: !935, line: 42, baseType: !915, size: 64, offset: 448)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !934, file: !935, line: 43, baseType: !918, size: 128, offset: 512)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !934, file: !935, line: 44, baseType: !918, size: 128, offset: 640)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !934, file: !935, line: 45, baseType: !918, size: 128, offset: 768)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !934, file: !935, line: 46, baseType: !918, size: 128, offset: 896)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !934, file: !935, line: 47, baseType: !302, size: 64, offset: 1024)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !934, file: !935, line: 48, baseType: !302, size: 64, offset: 1088)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !840, file: !208, line: 1883, baseType: !957, size: 64, offset: 960)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!960, !781, !347, !963}
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !299, line: 60, baseType: !961)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !663, line: 73, baseType: !962)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !663, line: 15, baseType: !542)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !299, line: 55, baseType: !964)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !663, line: 72, baseType: !965)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !663, line: 16, baseType: !525)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !840, file: !208, line: 1884, baseType: !967, size: 64, offset: 1024)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!309, !815, !970, !302, !302}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !840, file: !208, line: 1886, baseType: !973, size: 64, offset: 1088)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!309, !815, !976, !309}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !840, file: !208, line: 1887, baseType: !978, size: 64, offset: 1152)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!309, !815, !781, !751, !7, !819}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !840, file: !208, line: 1890, baseType: !889, size: 64, offset: 1216)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !840, file: !208, line: 1891, baseType: !983, size: 64, offset: 1280)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!309, !815, !864, !309}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !816, file: !208, line: 623, baseType: !987, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !989)
!989 = !{!990, !991, !992, !993, !994, !995, !1044, !1381, !1469, !1552, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1568, !1572, !1573, !1576, !1579, !1582, !1583, !1584, !1625, !1657, !1658, !1659, !1660, !1661, !1662, !1665, !1669, !1678, !1679, !1681, !1682, !1683, !1742, !1743, !1758, !1759, !1760, !1761, !1762, !1766, !1767, !1770, !1785, !1786, !1787, !1798, !1799, !1800, !1801, !1802, !1803}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !988, file: !208, line: 1417, baseType: !575, size: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !988, file: !208, line: 1418, baseType: !897, size: 32, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !988, file: !208, line: 1419, baseType: !316, size: 8, offset: 160)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !988, file: !208, line: 1420, baseType: !525, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !988, file: !208, line: 1421, baseType: !915, size: 64, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !988, file: !208, line: 1422, baseType: !996, size: 64, offset: 320)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !998)
!998 = !{!999, !1000, !1001, !1008, !1012, !1016, !1020, !1021, !1022, !1032, !1035, !1036, !1037, !1041, !1042, !1043}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !997, file: !208, line: 2229, baseType: !325, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !997, file: !208, line: 2230, baseType: !309, size: 32, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !997, file: !208, line: 2238, baseType: !1002, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!309, !1005}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1007, line: 28, flags: DIFlagFwdDecl)
!1007 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !997, file: !208, line: 2239, baseType: !1009, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1011)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !997, file: !208, line: 2240, baseType: !1013, size: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!781, !996, !309, !325, !300}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !997, file: !208, line: 2242, baseType: !1017, size: 64, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !987}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !997, file: !208, line: 2243, baseType: !329, size: 64, offset: 384)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !997, file: !208, line: 2244, baseType: !996, size: 64, offset: 448)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !997, file: !208, line: 2245, baseType: !1023, size: 64, offset: 512)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !299, line: 182, size: 64, elements: !1024)
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1023, file: !299, line: 183, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !299, line: 186, size: 128, elements: !1028)
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1027, file: !299, line: 187, baseType: !1026, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1027, file: !299, line: 187, baseType: !1031, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !997, file: !208, line: 2247, baseType: !1033, offset: 576)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1034, line: 187, elements: !512)
!1034 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !997, file: !208, line: 2248, baseType: !1033, offset: 576)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !997, file: !208, line: 2249, baseType: !1033, offset: 576)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !997, file: !208, line: 2250, baseType: !1038, offset: 576)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1033, elements: !1039)
!1039 = !{!1040}
!1040 = !DISubrange(count: 3)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !997, file: !208, line: 2252, baseType: !1033, offset: 576)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !997, file: !208, line: 2253, baseType: !1033, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !997, file: !208, line: 2254, baseType: !1033, offset: 576)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !988, file: !208, line: 1423, baseType: !1045, size: 64, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !1048)
!1048 = !{!1049, !1053, !1057, !1058, !1062, !1068, !1072, !1073, !1074, !1078, !1082, !1083, !1084, !1085, !1091, !1096, !1097, !1103, !1104, !1105, !1106, !1365, !1380}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1047, file: !208, line: 1936, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!815, !987}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1047, file: !208, line: 1937, baseType: !1054, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !815}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1047, file: !208, line: 1938, baseType: !1054, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1047, file: !208, line: 1940, baseType: !1059, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !815, !309}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1047, file: !208, line: 1941, baseType: !1063, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!309, !815, !1066}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1047, file: !208, line: 1942, baseType: !1069, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!309, !815}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1047, file: !208, line: 1943, baseType: !1054, size: 64, offset: 384)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1047, file: !208, line: 1944, baseType: !1017, size: 64, offset: 448)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1047, file: !208, line: 1945, baseType: !1075, size: 64, offset: 512)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!309, !987, !309}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1047, file: !208, line: 1946, baseType: !1079, size: 64, offset: 576)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!309, !987}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1047, file: !208, line: 1947, baseType: !1079, size: 64, offset: 640)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1047, file: !208, line: 1948, baseType: !1079, size: 64, offset: 704)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1047, file: !208, line: 1949, baseType: !1079, size: 64, offset: 768)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1047, file: !208, line: 1950, baseType: !1086, size: 64, offset: 832)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!309, !781, !1089}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1047, file: !208, line: 1951, baseType: !1092, size: 64, offset: 896)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!309, !987, !1095, !347}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1047, file: !208, line: 1952, baseType: !1017, size: 64, offset: 960)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1047, file: !208, line: 1954, baseType: !1098, size: 64, offset: 1024)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!309, !1101, !781}
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !729, line: 539, flags: DIFlagFwdDecl)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1047, file: !208, line: 1955, baseType: !1098, size: 64, offset: 1088)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1047, file: !208, line: 1956, baseType: !1098, size: 64, offset: 1152)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1047, file: !208, line: 1957, baseType: !1098, size: 64, offset: 1216)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1047, file: !208, line: 1963, baseType: !1107, size: 64, offset: 1280)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!309, !987, !1110, !298}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !711, line: 68, size: 512, align: 128, elements: !1112)
!1112 = !{!1113, !1114, !1357, !1364}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1111, file: !711, line: 69, baseType: !525, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, scope: !1111, file: !711, line: 77, baseType: !1115, size: 320, offset: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1111, file: !711, line: 77, size: 320, elements: !1116)
!1116 = !{!1117, !1289, !1294, !1322, !1330, !1336, !1349, !1356}
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !1115, file: !711, line: 78, baseType: !1118, size: 320)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1115, file: !711, line: 78, size: 320, elements: !1119)
!1119 = !{!1120, !1121, !1287, !1288}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1118, file: !711, line: 84, baseType: !575, size: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1118, file: !711, line: 86, baseType: !1122, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !1124)
!1124 = !{!1125, !1126, !1140, !1141, !1142, !1143, !1157, !1158, !1159, !1160, !1280, !1281, !1284, !1285, !1286}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1123, file: !208, line: 452, baseType: !815, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1123, file: !208, line: 453, baseType: !1127, size: 128, offset: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1128, line: 292, size: 128, elements: !1129)
!1128 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1129 = !{!1130, !1138, !1139}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1127, file: !1128, line: 293, baseType: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !505, line: 83, baseType: !1132)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !505, line: 71, elements: !1133)
!1133 = !{!1134}
!1134 = !DIDerivedType(tag: DW_TAG_member, scope: !1132, file: !505, line: 72, baseType: !1135)
!1135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1132, file: !505, line: 72, elements: !1136)
!1136 = !{!1137}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1135, file: !505, line: 73, baseType: !506)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1127, file: !1128, line: 295, baseType: !298, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1127, file: !1128, line: 296, baseType: !300, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1123, file: !208, line: 454, baseType: !298, size: 32, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1123, file: !208, line: 455, baseType: !550, size: 32, offset: 224)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1123, file: !208, line: 460, baseType: !514, size: 128, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1123, file: !208, line: 461, baseType: !1144, size: 256, offset: 384)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1145, line: 35, size: 256, elements: !1146)
!1145 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1146 = !{!1147, !1154, !1155, !1156}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1144, file: !1145, line: 36, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1149, line: 13, baseType: !1150)
!1149 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !299, line: 175, baseType: !1151)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !299, line: 173, size: 64, elements: !1152)
!1152 = !{!1153}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1151, file: !299, line: 174, baseType: !609, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1144, file: !1145, line: 42, baseType: !1148, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1144, file: !1145, line: 46, baseType: !504, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1144, file: !1145, line: 47, baseType: !575, size: 128, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1123, file: !208, line: 462, baseType: !525, size: 64, offset: 640)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1123, file: !208, line: 463, baseType: !525, size: 64, offset: 704)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1123, file: !208, line: 464, baseType: !525, size: 64, offset: 768)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1123, file: !208, line: 465, baseType: !1161, size: 64, offset: 832)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1163)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1164)
!1164 = !{!1165, !1169, !1173, !1177, !1181, !1185, !1191, !1197, !1201, !1206, !1210, !1214, !1218, !1244, !1248, !1254, !1255, !1256, !1260, !1265, !1269, !1276}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1163, file: !208, line: 368, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!309, !1110, !1066}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1163, file: !208, line: 369, baseType: !1170, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!309, !751, !1110}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1163, file: !208, line: 372, baseType: !1174, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!309, !1122, !1066}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1163, file: !208, line: 375, baseType: !1178, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!309, !1110}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1163, file: !208, line: 381, baseType: !1182, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!309, !751, !1122, !578, !7}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1163, file: !208, line: 383, baseType: !1186, size: 64, offset: 320)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{null, !1189}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1163, file: !208, line: 385, baseType: !1192, size: 64, offset: 384)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!309, !751, !1122, !915, !7, !7, !1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1163, file: !208, line: 388, baseType: !1198, size: 64, offset: 448)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!309, !751, !1122, !915, !7, !7, !1110, !300}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1163, file: !208, line: 393, baseType: !1202, size: 64, offset: 512)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!1205, !1122, !1205}
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !299, line: 125, baseType: !302)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1163, file: !208, line: 394, baseType: !1207, size: 64, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{null, !1110, !7, !7}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1163, file: !208, line: 395, baseType: !1211, size: 64, offset: 640)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!309, !1110, !298}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1163, file: !208, line: 396, baseType: !1215, size: 64, offset: 704)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null, !1110}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1163, file: !208, line: 397, baseType: !1219, size: 64, offset: 768)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!960, !1222, !1242}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1224)
!1224 = !{!1225, !1226, !1227, !1231, !1232, !1233, !1234, !1235}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1223, file: !208, line: 321, baseType: !751, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1223, file: !208, line: 326, baseType: !915, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1223, file: !208, line: 327, baseType: !1228, size: 64, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !1222, !542, !542}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1223, file: !208, line: 328, baseType: !300, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1223, file: !208, line: 329, baseType: !309, size: 32, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1223, file: !208, line: 330, baseType: !354, size: 16, offset: 288)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1223, file: !208, line: 331, baseType: !354, size: 16, offset: 304)
!1235 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !208, line: 332, baseType: !1236, size: 64, offset: 320)
!1236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1223, file: !208, line: 332, size: 64, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1236, file: !208, line: 333, baseType: !7, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1236, file: !208, line: 334, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1163, file: !208, line: 402, baseType: !1245, size: 64, offset: 832)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!309, !1122, !1110, !1110, !183}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1163, file: !208, line: 404, baseType: !1249, size: 64, offset: 896)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!874, !1110, !1252}
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1253, line: 305, baseType: !7)
!1253 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1163, file: !208, line: 405, baseType: !1215, size: 64, offset: 960)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1163, file: !208, line: 406, baseType: !1178, size: 64, offset: 1024)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1163, file: !208, line: 407, baseType: !1257, size: 64, offset: 1088)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!309, !1110, !525, !525}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1163, file: !208, line: 409, baseType: !1261, size: 64, offset: 1152)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{null, !1110, !1264, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1163, file: !208, line: 410, baseType: !1266, size: 64, offset: 1216)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!309, !1122, !1110}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1163, file: !208, line: 413, baseType: !1270, size: 64, offset: 1280)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!309, !1273, !751, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1163, file: !208, line: 415, baseType: !1277, size: 64, offset: 1344)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !751}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1123, file: !208, line: 466, baseType: !525, size: 64, offset: 896)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1123, file: !208, line: 467, baseType: !1282, size: 32, offset: 960)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1283, line: 8, baseType: !482)
!1283 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1123, file: !208, line: 468, baseType: !1131, offset: 992)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1123, file: !208, line: 469, baseType: !575, size: 128, offset: 1024)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1123, file: !208, line: 470, baseType: !300, size: 64, offset: 1152)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1118, file: !711, line: 87, baseType: !525, size: 64, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1118, file: !711, line: 94, baseType: !525, size: 64, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1115, file: !711, line: 96, baseType: !1290, size: 64)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1115, file: !711, line: 96, size: 64, elements: !1291)
!1291 = !{!1292}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1290, file: !711, line: 101, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !299, line: 143, baseType: !302)
!1294 = !DIDerivedType(tag: DW_TAG_member, scope: !1115, file: !711, line: 103, baseType: !1295, size: 320)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1115, file: !711, line: 103, size: 320, elements: !1296)
!1296 = !{!1297, !1307, !1310, !1311}
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1295, file: !711, line: 104, baseType: !1298, size: 128)
!1298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1295, file: !711, line: 104, size: 128, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1298, file: !711, line: 105, baseType: !575, size: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !711, line: 106, baseType: !1302, size: 128)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1298, file: !711, line: 106, size: 128, elements: !1303)
!1303 = !{!1304, !1305, !1306}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1302, file: !711, line: 107, baseType: !1110, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1302, file: !711, line: 109, baseType: !309, size: 32, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1302, file: !711, line: 110, baseType: !309, size: 32, offset: 96)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1295, file: !711, line: 117, baseType: !1308, size: 64, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !711, line: 117, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1295, file: !711, line: 119, baseType: !300, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1295, file: !711, line: 120, baseType: !1312, size: 64, offset: 256)
!1312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1295, file: !711, line: 120, size: 64, elements: !1313)
!1313 = !{!1314, !1315, !1316}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1312, file: !711, line: 121, baseType: !300, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1312, file: !711, line: 122, baseType: !525, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, scope: !1312, file: !711, line: 123, baseType: !1317, size: 32)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1312, file: !711, line: 123, size: 32, elements: !1318)
!1318 = !{!1319, !1320, !1321}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1317, file: !711, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1317, file: !711, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1317, file: !711, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1322 = !DIDerivedType(tag: DW_TAG_member, scope: !1115, file: !711, line: 130, baseType: !1323, size: 192)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1115, file: !711, line: 130, size: 192, elements: !1324)
!1324 = !{!1325, !1326, !1327, !1328, !1329}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1323, file: !711, line: 131, baseType: !525, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1323, file: !711, line: 134, baseType: !316, size: 8, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1323, file: !711, line: 135, baseType: !316, size: 8, offset: 72)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1323, file: !711, line: 136, baseType: !550, size: 32, offset: 96)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1323, file: !711, line: 137, baseType: !7, size: 32, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1115, file: !711, line: 139, baseType: !1331, size: 256)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1115, file: !711, line: 139, size: 256, elements: !1332)
!1332 = !{!1333, !1334, !1335}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1331, file: !711, line: 140, baseType: !525, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1331, file: !711, line: 141, baseType: !550, size: 32, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1331, file: !711, line: 143, baseType: !575, size: 128, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, scope: !1115, file: !711, line: 145, baseType: !1337, size: 256)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1115, file: !711, line: 145, size: 256, elements: !1338)
!1338 = !{!1339, !1340, !1342, !1343, !1348}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1337, file: !711, line: 146, baseType: !525, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1337, file: !711, line: 147, baseType: !1341, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !729, line: 509, baseType: !1110)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1337, file: !711, line: 148, baseType: !525, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, scope: !1337, file: !711, line: 149, baseType: !1344, size: 64, offset: 192)
!1344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1337, file: !711, line: 149, size: 64, elements: !1345)
!1345 = !{!1346, !1347}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1344, file: !711, line: 150, baseType: !709, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1344, file: !711, line: 151, baseType: !550, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1337, file: !711, line: 156, baseType: !1131, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, scope: !1115, file: !711, line: 159, baseType: !1350, size: 128)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1115, file: !711, line: 159, size: 128, elements: !1351)
!1351 = !{!1352, !1355}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1350, file: !711, line: 161, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !711, line: 161, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1350, file: !711, line: 162, baseType: !300, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1115, file: !711, line: 176, baseType: !764, size: 128, align: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1111, file: !711, line: 179, baseType: !1358, size: 32, offset: 384)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1111, file: !711, line: 179, size: 32, elements: !1359)
!1359 = !{!1360, !1361, !1362, !1363}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1358, file: !711, line: 184, baseType: !550, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1358, file: !711, line: 192, baseType: !7, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1358, file: !711, line: 194, baseType: !7, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1358, file: !711, line: 195, baseType: !309, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1111, file: !711, line: 199, baseType: !550, size: 32, offset: 416)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1047, file: !208, line: 1964, baseType: !1366, size: 64, offset: 1344)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!542, !987, !1369}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1371, line: 12, size: 256, elements: !1372)
!1371 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1372 = !{!1373, !1374, !1375, !1376, !1377}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1370, file: !1371, line: 13, baseType: !298, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1370, file: !1371, line: 16, baseType: !309, size: 32, offset: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1370, file: !1371, line: 23, baseType: !525, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1370, file: !1371, line: 30, baseType: !525, size: 64, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1370, file: !1371, line: 33, baseType: !1378, size: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !711, line: 27, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1047, file: !208, line: 1966, baseType: !1366, size: 64, offset: 1408)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !988, file: !208, line: 1424, baseType: !1382, size: 64, offset: 448)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !1385)
!1385 = !{!1386, !1438, !1442, !1446, !1447, !1448, !1449, !1450, !1455, !1460, !1464}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1384, file: !202, line: 323, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!309, !1390}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1396, !1397, !1404, !1405, !1406, !1407, !1423, !1424, !1425}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1391, file: !202, line: 295, baseType: !1027, size: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1391, file: !202, line: 296, baseType: !575, size: 128, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1391, file: !202, line: 297, baseType: !575, size: 128, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1391, file: !202, line: 298, baseType: !575, size: 128, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1391, file: !202, line: 299, baseType: !1398, size: 192, offset: 512)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1399, line: 53, size: 192, elements: !1400)
!1399 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1400 = !{!1401, !1402, !1403}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1398, file: !1399, line: 54, baseType: !1148, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1398, file: !1399, line: 55, baseType: !1131, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1398, file: !1399, line: 59, baseType: !575, size: 128, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1391, file: !202, line: 300, baseType: !1131, offset: 704)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1391, file: !202, line: 301, baseType: !550, size: 32, offset: 704)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1391, file: !202, line: 302, baseType: !987, size: 64, offset: 768)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1391, file: !202, line: 303, baseType: !1408, size: 64, offset: 832)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !1409)
!1409 = !{!1410, !1422}
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !202, line: 69, baseType: !1411, size: 32)
!1411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1408, file: !202, line: 69, size: 32, elements: !1412)
!1412 = !{!1413, !1414, !1415}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1411, file: !202, line: 70, baseType: !822, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1411, file: !202, line: 71, baseType: !830, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1411, file: !202, line: 72, baseType: !1416, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1417, line: 24, baseType: !1418)
!1417 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1417, line: 22, size: 32, elements: !1419)
!1419 = !{!1420}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1418, file: !1417, line: 23, baseType: !1421, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1417, line: 20, baseType: !828)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1408, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1391, file: !202, line: 304, baseType: !915, size: 64, offset: 896)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1391, file: !202, line: 305, baseType: !525, size: 64, offset: 960)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1391, file: !202, line: 306, baseType: !1426, size: 576, offset: 1024)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !1427)
!1427 = !{!1428, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1426, file: !202, line: 206, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !611)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1426, file: !202, line: 207, baseType: !1429, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1426, file: !202, line: 208, baseType: !1429, size: 64, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1426, file: !202, line: 209, baseType: !1429, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1426, file: !202, line: 210, baseType: !1429, size: 64, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1426, file: !202, line: 211, baseType: !1429, size: 64, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1426, file: !202, line: 212, baseType: !1429, size: 64, offset: 384)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1426, file: !202, line: 213, baseType: !922, size: 64, offset: 448)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1426, file: !202, line: 214, baseType: !922, size: 64, offset: 512)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1384, file: !202, line: 324, baseType: !1439, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!1390, !987, !309}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1384, file: !202, line: 325, baseType: !1443, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{null, !1390}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1384, file: !202, line: 326, baseType: !1387, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1384, file: !202, line: 327, baseType: !1387, size: 64, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1384, file: !202, line: 328, baseType: !1387, size: 64, offset: 320)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1384, file: !202, line: 329, baseType: !1075, size: 64, offset: 384)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1384, file: !202, line: 332, baseType: !1451, size: 64, offset: 448)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1454, !815}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1384, file: !202, line: 333, baseType: !1456, size: 64, offset: 512)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!309, !815, !1459}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1384, file: !202, line: 335, baseType: !1461, size: 64, offset: 576)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!309, !815, !1454}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1384, file: !202, line: 337, baseType: !1465, size: 64, offset: 640)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!309, !987, !1468}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !988, file: !208, line: 1425, baseType: !1470, size: 64, offset: 512)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1472)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !1473)
!1473 = !{!1474, !1478, !1479, !1483, !1484, !1485, !1500, !1523, !1527, !1528, !1551}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1472, file: !202, line: 429, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!309, !987, !309, !309, !931}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1472, file: !202, line: 430, baseType: !1075, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1472, file: !202, line: 431, baseType: !1480, size: 64, offset: 128)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!309, !987, !7}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1472, file: !202, line: 432, baseType: !1480, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1472, file: !202, line: 433, baseType: !1075, size: 64, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1472, file: !202, line: 434, baseType: !1486, size: 64, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!309, !987, !309, !1489}
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1490, file: !202, line: 416, baseType: !309, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1490, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1490, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1490, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1490, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1490, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1490, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1490, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1472, file: !202, line: 435, baseType: !1501, size: 64, offset: 384)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!309, !987, !1408, !1504}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !1506)
!1506 = !{!1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1505, file: !202, line: 344, baseType: !309, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1505, file: !202, line: 345, baseType: !302, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1505, file: !202, line: 346, baseType: !302, size: 64, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1505, file: !202, line: 347, baseType: !302, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1505, file: !202, line: 348, baseType: !302, size: 64, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1505, file: !202, line: 349, baseType: !302, size: 64, offset: 320)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1505, file: !202, line: 350, baseType: !302, size: 64, offset: 384)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1505, file: !202, line: 351, baseType: !609, size: 64, offset: 448)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1505, file: !202, line: 353, baseType: !609, size: 64, offset: 512)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1505, file: !202, line: 354, baseType: !309, size: 32, offset: 576)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1505, file: !202, line: 355, baseType: !309, size: 32, offset: 608)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1505, file: !202, line: 356, baseType: !302, size: 64, offset: 640)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1505, file: !202, line: 357, baseType: !302, size: 64, offset: 704)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1505, file: !202, line: 358, baseType: !302, size: 64, offset: 768)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1505, file: !202, line: 359, baseType: !609, size: 64, offset: 832)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1505, file: !202, line: 360, baseType: !309, size: 32, offset: 896)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1472, file: !202, line: 436, baseType: !1524, size: 64, offset: 448)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!309, !987, !1468, !1504}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1472, file: !202, line: 438, baseType: !1501, size: 64, offset: 512)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1472, file: !202, line: 439, baseType: !1529, size: 64, offset: 576)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!309, !987, !1532}
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !1534)
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1533, file: !202, line: 410, baseType: !7, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1533, file: !202, line: 411, baseType: !1537, size: 1344, offset: 64)
!1537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1538, size: 1344, elements: !1039)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !1539)
!1539 = !{!1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1550}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1538, file: !202, line: 396, baseType: !7, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1538, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1538, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1538, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1538, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1538, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1538, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1538, file: !202, line: 404, baseType: !306, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1538, file: !202, line: 405, baseType: !1549, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !299, line: 126, baseType: !302)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1538, file: !202, line: 406, baseType: !1549, size: 64, offset: 384)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1472, file: !202, line: 440, baseType: !1480, size: 64, offset: 640)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !988, file: !208, line: 1426, baseType: !1553, size: 64, offset: 576)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1555)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !988, file: !208, line: 1427, baseType: !525, size: 64, offset: 640)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !988, file: !208, line: 1428, baseType: !525, size: 64, offset: 704)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !988, file: !208, line: 1429, baseType: !525, size: 64, offset: 768)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !988, file: !208, line: 1430, baseType: !781, size: 64, offset: 832)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !988, file: !208, line: 1431, baseType: !1144, size: 256, offset: 896)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !988, file: !208, line: 1432, baseType: !309, size: 32, offset: 1152)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !988, file: !208, line: 1433, baseType: !550, size: 32, offset: 1184)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !988, file: !208, line: 1437, baseType: !1564, size: 64, offset: 1216)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1567)
!1567 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !988, file: !208, line: 1449, baseType: !1569, size: 64, offset: 1280)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !792, line: 34, size: 64, elements: !1570)
!1570 = !{!1571}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1569, file: !792, line: 35, baseType: !795, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !988, file: !208, line: 1450, baseType: !575, size: 128, offset: 1344)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !988, file: !208, line: 1451, baseType: !1574, size: 64, offset: 1472)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !988, file: !208, line: 1452, baseType: !1577, size: 64, offset: 1536)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !532, line: 40, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !988, file: !208, line: 1453, baseType: !1580, size: 64, offset: 1600)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !988, file: !208, line: 1454, baseType: !1027, size: 128, offset: 1664)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !988, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !988, file: !208, line: 1456, baseType: !1585, size: 2432, offset: 1856)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !1586)
!1586 = !{!1587, !1588, !1589, !1591, !1623}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1585, file: !202, line: 519, baseType: !7, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1585, file: !202, line: 520, baseType: !1144, size: 256, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1585, file: !202, line: 521, baseType: !1590, size: 192, offset: 320)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 192, elements: !1039)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1585, file: !202, line: 522, baseType: !1592, size: 1728, offset: 512)
!1592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1593, size: 1728, elements: !1039)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !1594)
!1594 = !{!1595, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1593, file: !202, line: 223, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !1598)
!1598 = !{!1599, !1600, !1613, !1614}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1597, file: !202, line: 444, baseType: !309, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1597, file: !202, line: 445, baseType: !1601, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1603)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !1604)
!1604 = !{!1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1603, file: !202, line: 311, baseType: !1075, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1603, file: !202, line: 312, baseType: !1075, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1603, file: !202, line: 313, baseType: !1075, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1603, file: !202, line: 314, baseType: !1075, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1603, file: !202, line: 315, baseType: !1387, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1603, file: !202, line: 316, baseType: !1387, size: 64, offset: 320)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1603, file: !202, line: 317, baseType: !1387, size: 64, offset: 384)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1603, file: !202, line: 318, baseType: !1465, size: 64, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1597, file: !202, line: 446, baseType: !329, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1597, file: !202, line: 447, baseType: !1596, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1593, file: !202, line: 224, baseType: !309, size: 32, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1593, file: !202, line: 226, baseType: !575, size: 128, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1593, file: !202, line: 227, baseType: !525, size: 64, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1593, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1593, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1593, file: !202, line: 230, baseType: !1429, size: 64, offset: 384)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1593, file: !202, line: 231, baseType: !1429, size: 64, offset: 448)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1593, file: !202, line: 232, baseType: !300, size: 64, offset: 512)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1585, file: !202, line: 523, baseType: !1624, size: 192, offset: 2240)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1601, size: 192, elements: !1039)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !988, file: !208, line: 1458, baseType: !1626, size: 2112, offset: 4288)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !1627)
!1627 = !{!1628, !1629, !1636}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1626, file: !208, line: 1411, baseType: !309, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1626, file: !208, line: 1412, baseType: !1630, size: 128, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1631, line: 40, baseType: !1632)
!1631 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1631, line: 36, size: 128, elements: !1633)
!1633 = !{!1634, !1635}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1632, file: !1631, line: 37, baseType: !1131)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1632, file: !1631, line: 38, baseType: !575, size: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1626, file: !208, line: 1413, baseType: !1637, size: 1920, offset: 192)
!1637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1638, size: 1920, elements: !1039)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1639, line: 12, size: 640, elements: !1640)
!1639 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1640 = !{!1641, !1649, !1650, !1655, !1656}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1638, file: !1639, line: 13, baseType: !1642, size: 320)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1643, line: 17, size: 320, elements: !1644)
!1643 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1644 = !{!1645, !1646, !1647, !1648}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1642, file: !1643, line: 18, baseType: !309, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1642, file: !1643, line: 19, baseType: !309, size: 32, offset: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1642, file: !1643, line: 20, baseType: !1630, size: 128, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1642, file: !1643, line: 22, baseType: !764, size: 128, align: 64, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1638, file: !1639, line: 14, baseType: !381, size: 64, offset: 320)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1638, file: !1639, line: 15, baseType: !1651, size: 64, offset: 384)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1652, line: 16, size: 64, elements: !1653)
!1652 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1653 = !{!1654}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1651, file: !1652, line: 17, baseType: !530, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1638, file: !1639, line: 16, baseType: !1630, size: 128, offset: 448)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1638, file: !1639, line: 17, baseType: !550, size: 32, offset: 576)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !988, file: !208, line: 1465, baseType: !300, size: 64, offset: 6400)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !988, file: !208, line: 1468, baseType: !482, size: 32, offset: 6464)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !988, file: !208, line: 1470, baseType: !922, size: 64, offset: 6528)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !988, file: !208, line: 1471, baseType: !922, size: 64, offset: 6592)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !988, file: !208, line: 1473, baseType: !483, size: 32, offset: 6656)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !988, file: !208, line: 1474, baseType: !1663, size: 64, offset: 6720)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !988, file: !208, line: 1477, baseType: !1666, size: 256, offset: 6784)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 256, elements: !1667)
!1667 = !{!1668}
!1668 = !DISubrange(count: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !988, file: !208, line: 1478, baseType: !1670, size: 128, offset: 7040)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1671, line: 18, baseType: !1672)
!1671 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1671, line: 16, size: 128, elements: !1673)
!1673 = !{!1674}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1672, file: !1671, line: 17, baseType: !1675, size: 128)
!1675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 128, elements: !1676)
!1676 = !{!1677}
!1677 = !DISubrange(count: 16)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !988, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !988, file: !208, line: 1481, baseType: !1680, size: 32, offset: 7200)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !299, line: 150, baseType: !7)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !988, file: !208, line: 1487, baseType: !1398, size: 192, offset: 7232)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !988, file: !208, line: 1493, baseType: !325, size: 64, offset: 7424)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !988, file: !208, line: 1495, baseType: !1684, size: 64, offset: 7488)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1686)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !779, line: 135, size: 1024, align: 512, elements: !1687)
!1687 = !{!1688, !1692, !1693, !1700, !1706, !1710, !1714, !1718, !1719, !1723, !1727, !1732, !1736}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1686, file: !779, line: 136, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!309, !781, !7}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1686, file: !779, line: 137, baseType: !1689, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1686, file: !779, line: 138, baseType: !1694, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!309, !1697, !1699}
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1686, file: !779, line: 139, baseType: !1701, size: 64, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!309, !1697, !7, !325, !1704}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1686, file: !779, line: 141, baseType: !1707, size: 64, offset: 256)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!309, !1697}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1686, file: !779, line: 142, baseType: !1711, size: 64, offset: 320)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!309, !781}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1686, file: !779, line: 143, baseType: !1715, size: 64, offset: 384)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{null, !781}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1686, file: !779, line: 144, baseType: !1715, size: 64, offset: 448)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1686, file: !779, line: 145, baseType: !1720, size: 64, offset: 512)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{null, !781, !815}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1686, file: !779, line: 146, baseType: !1724, size: 64, offset: 576)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!347, !781, !347, !309}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1686, file: !779, line: 147, baseType: !1728, size: 64, offset: 640)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!777, !1731}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1686, file: !779, line: 148, baseType: !1733, size: 64, offset: 704)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!309, !931, !874}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1686, file: !779, line: 149, baseType: !1737, size: 64, offset: 768)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!781, !781, !1740}
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !816)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !988, file: !208, line: 1500, baseType: !309, size: 32, offset: 7552)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !988, file: !208, line: 1502, baseType: !1744, size: 448, offset: 7616)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1371, line: 60, size: 448, elements: !1745)
!1745 = !{!1746, !1751, !1752, !1753, !1754, !1755, !1756}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1744, file: !1371, line: 61, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!525, !1750, !1369}
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1744, file: !1371, line: 63, baseType: !1747, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1744, file: !1371, line: 66, baseType: !542, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1744, file: !1371, line: 67, baseType: !309, size: 32, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1744, file: !1371, line: 68, baseType: !7, size: 32, offset: 224)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1744, file: !1371, line: 71, baseType: !575, size: 128, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1744, file: !1371, line: 77, baseType: !1757, size: 64, offset: 384)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !988, file: !208, line: 1505, baseType: !1148, size: 64, offset: 8064)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !988, file: !208, line: 1508, baseType: !1148, size: 64, offset: 8128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !988, file: !208, line: 1511, baseType: !309, size: 32, offset: 8192)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !988, file: !208, line: 1514, baseType: !1282, size: 32, offset: 8224)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !988, file: !208, line: 1517, baseType: !1763, size: 64, offset: 8256)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1765, line: 18, flags: DIFlagFwdDecl)
!1765 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !988, file: !208, line: 1518, baseType: !1023, size: 64, offset: 8320)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !988, file: !208, line: 1525, baseType: !1768, size: 64, offset: 8384)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !823, line: 18, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !988, file: !208, line: 1532, baseType: !1771, size: 64, offset: 8448)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1772, line: 52, size: 64, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !{!1774}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1771, file: !1772, line: 53, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1772, line: 40, size: 256, elements: !1777)
!1777 = !{!1778, !1779, !1784}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1776, file: !1772, line: 42, baseType: !1131)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1776, file: !1772, line: 44, baseType: !1780, size: 192)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1772, line: 28, size: 192, elements: !1781)
!1781 = !{!1782, !1783}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1780, file: !1772, line: 29, baseType: !575, size: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1780, file: !1772, line: 31, baseType: !542, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1776, file: !1772, line: 49, baseType: !542, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !988, file: !208, line: 1533, baseType: !1771, size: 64, offset: 8512)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !988, file: !208, line: 1534, baseType: !764, size: 128, align: 64, offset: 8576)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !988, file: !208, line: 1535, baseType: !1788, size: 256, offset: 8704)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1765, line: 102, size: 256, elements: !1789)
!1789 = !{!1790, !1791, !1792}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1788, file: !1765, line: 103, baseType: !1148, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1788, file: !1765, line: 104, baseType: !575, size: 128, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1788, file: !1765, line: 105, baseType: !1793, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1765, line: 21, baseType: !1794)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{null, !1797}
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !988, file: !208, line: 1537, baseType: !1398, size: 192, offset: 8960)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !988, file: !208, line: 1542, baseType: !309, size: 32, offset: 9152)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !988, file: !208, line: 1545, baseType: !1131, offset: 9184)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !988, file: !208, line: 1546, baseType: !575, size: 128, offset: 9216)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !988, file: !208, line: 1548, baseType: !1131, offset: 9344)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !988, file: !208, line: 1549, baseType: !575, size: 128, offset: 9344)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !816, file: !208, line: 624, baseType: !1122, size: 64, offset: 256)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !816, file: !208, line: 631, baseType: !525, size: 64, offset: 320)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !208, line: 639, baseType: !1807, size: 32, offset: 384)
!1807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !208, line: 639, size: 32, elements: !1808)
!1808 = !{!1809, !1811}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1807, file: !208, line: 640, baseType: !1810, size: 32)
!1810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1807, file: !208, line: 641, baseType: !7, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !816, file: !208, line: 643, baseType: !897, size: 32, offset: 416)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !816, file: !208, line: 644, baseType: !915, size: 64, offset: 448)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !816, file: !208, line: 645, baseType: !918, size: 128, offset: 512)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !816, file: !208, line: 646, baseType: !918, size: 128, offset: 640)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !816, file: !208, line: 647, baseType: !918, size: 128, offset: 768)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !816, file: !208, line: 648, baseType: !1131, offset: 896)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !816, file: !208, line: 649, baseType: !356, size: 16, offset: 896)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !816, file: !208, line: 650, baseType: !314, size: 8, offset: 912)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !816, file: !208, line: 651, baseType: !314, size: 8, offset: 920)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !816, file: !208, line: 652, baseType: !1549, size: 64, offset: 960)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !816, file: !208, line: 659, baseType: !525, size: 64, offset: 1024)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !816, file: !208, line: 660, baseType: !1144, size: 256, offset: 1088)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !816, file: !208, line: 662, baseType: !525, size: 64, offset: 1344)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !816, file: !208, line: 663, baseType: !525, size: 64, offset: 1408)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !816, file: !208, line: 665, baseType: !1027, size: 128, offset: 1472)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !816, file: !208, line: 666, baseType: !575, size: 128, offset: 1600)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !816, file: !208, line: 675, baseType: !575, size: 128, offset: 1728)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !816, file: !208, line: 676, baseType: !575, size: 128, offset: 1856)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !816, file: !208, line: 677, baseType: !575, size: 128, offset: 1984)
!1831 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !208, line: 678, baseType: !1832, size: 128, offset: 2112)
!1832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !208, line: 678, size: 128, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1832, file: !208, line: 679, baseType: !1023, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1832, file: !208, line: 680, baseType: !764, size: 128, align: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !816, file: !208, line: 682, baseType: !1150, size: 64, offset: 2240)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !816, file: !208, line: 683, baseType: !1150, size: 64, offset: 2304)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !816, file: !208, line: 684, baseType: !550, size: 32, offset: 2368)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !816, file: !208, line: 685, baseType: !550, size: 32, offset: 2400)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !816, file: !208, line: 686, baseType: !550, size: 32, offset: 2432)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !816, file: !208, line: 688, baseType: !550, size: 32, offset: 2464)
!1842 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !208, line: 690, baseType: !1843, size: 64, offset: 2496)
!1843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !208, line: 690, size: 64, elements: !1844)
!1844 = !{!1845, !2082}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1843, file: !208, line: 691, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1848)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !1849)
!1849 = !{!1850, !1851, !1855, !1860, !1864, !1865, !1866, !1870, !1883, !1884, !1901, !1905, !1906, !1910, !1911, !1915, !1920, !1921, !1925, !1929, !2037, !2041, !2045, !2049, !2050, !2056, !2060, !2065, !2069, !2073, !2077, !2081}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1848, file: !208, line: 1823, baseType: !329, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1848, file: !208, line: 1824, baseType: !1852, size: 64, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!915, !751, !915, !309}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1848, file: !208, line: 1825, baseType: !1856, size: 64, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!960, !751, !347, !963, !1859}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1848, file: !208, line: 1826, baseType: !1861, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!960, !751, !325, !963, !1859}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1848, file: !208, line: 1827, baseType: !1219, size: 64, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1848, file: !208, line: 1828, baseType: !1219, size: 64, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1848, file: !208, line: 1829, baseType: !1867, size: 64, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!309, !1222, !874}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1848, file: !208, line: 1830, baseType: !1871, size: 64, offset: 448)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!309, !751, !1874}
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !1876)
!1876 = !{!1877, !1882}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1875, file: !208, line: 1777, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !1879)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!309, !1874, !325, !309, !915, !302, !7}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1875, file: !208, line: 1778, baseType: !915, size: 64, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1848, file: !208, line: 1831, baseType: !1871, size: 64, offset: 512)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1848, file: !208, line: 1832, baseType: !1885, size: 64, offset: 576)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!1888, !751, !1890}
!1888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1889, line: 52, baseType: !7)
!1889 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1892, line: 43, size: 128, elements: !1893)
!1892 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!1893 = !{!1894, !1900}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1891, file: !1892, line: 44, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1892, line: 37, baseType: !1896)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{null, !751, !1899, !1890}
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1891, file: !1892, line: 45, baseType: !1888, size: 32, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1848, file: !208, line: 1833, baseType: !1902, size: 64, offset: 640)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!542, !751, !7, !525}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1848, file: !208, line: 1834, baseType: !1902, size: 64, offset: 704)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1848, file: !208, line: 1835, baseType: !1907, size: 64, offset: 768)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!309, !751, !717}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1848, file: !208, line: 1836, baseType: !525, size: 64, offset: 832)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1848, file: !208, line: 1837, baseType: !1912, size: 64, offset: 896)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!309, !815, !751}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1848, file: !208, line: 1838, baseType: !1916, size: 64, offset: 960)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!309, !751, !1919}
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !300)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1848, file: !208, line: 1839, baseType: !1912, size: 64, offset: 1024)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1848, file: !208, line: 1840, baseType: !1922, size: 64, offset: 1088)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!309, !751, !915, !915, !309}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1848, file: !208, line: 1841, baseType: !1926, size: 64, offset: 1152)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!309, !309, !751, !309}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1848, file: !208, line: 1842, baseType: !1930, size: 64, offset: 1216)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!309, !751, !309, !1933}
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !1935)
!1935 = !{!1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1967, !1968, !1969, !1982, !2013}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1934, file: !208, line: 1063, baseType: !1933, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1934, file: !208, line: 1064, baseType: !575, size: 128, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1934, file: !208, line: 1065, baseType: !1027, size: 128, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1934, file: !208, line: 1066, baseType: !575, size: 128, offset: 320)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1934, file: !208, line: 1069, baseType: !575, size: 128, offset: 448)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1934, file: !208, line: 1072, baseType: !1919, size: 64, offset: 576)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1934, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1934, file: !208, line: 1074, baseType: !316, size: 8, offset: 672)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1934, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1934, file: !208, line: 1076, baseType: !309, size: 32, offset: 736)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1934, file: !208, line: 1077, baseType: !1630, size: 128, offset: 768)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1934, file: !208, line: 1078, baseType: !751, size: 64, offset: 896)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1934, file: !208, line: 1079, baseType: !915, size: 64, offset: 960)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1934, file: !208, line: 1080, baseType: !915, size: 64, offset: 1024)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1934, file: !208, line: 1082, baseType: !1951, size: 64, offset: 1088)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !1953)
!1953 = !{!1954, !1962, !1963, !1964, !1965, !1966}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1952, file: !208, line: 1315, baseType: !1955)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1956, line: 20, baseType: !1957)
!1956 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1956, line: 11, elements: !1958)
!1958 = !{!1959}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1957, file: !1956, line: 12, baseType: !1960)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !510, line: 33, baseType: !1961)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !510, line: 31, elements: !512)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1952, file: !208, line: 1316, baseType: !309, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1952, file: !208, line: 1317, baseType: !309, size: 32, offset: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1952, file: !208, line: 1318, baseType: !1951, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1952, file: !208, line: 1319, baseType: !751, size: 64, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1952, file: !208, line: 1320, baseType: !764, size: 128, align: 64, offset: 192)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1934, file: !208, line: 1084, baseType: !525, size: 64, offset: 1152)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1934, file: !208, line: 1085, baseType: !525, size: 64, offset: 1216)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1934, file: !208, line: 1087, baseType: !1970, size: 64, offset: 1280)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1972)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !1973)
!1973 = !{!1974, !1978}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1972, file: !208, line: 1012, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{null, !1933, !1933}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1972, file: !208, line: 1013, baseType: !1979, size: 64, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{null, !1933}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1934, file: !208, line: 1088, baseType: !1983, size: 64, offset: 1344)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1985)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !1986)
!1986 = !{!1987, !1991, !1995, !1996, !2000, !2004, !2008, !2012}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1985, file: !208, line: 1017, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!1919, !1919}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1985, file: !208, line: 1018, baseType: !1992, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{null, !1919}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1985, file: !208, line: 1019, baseType: !1979, size: 64, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1985, file: !208, line: 1020, baseType: !1997, size: 64, offset: 192)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!309, !1933, !309}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1985, file: !208, line: 1021, baseType: !2001, size: 64, offset: 256)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!874, !1933}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1985, file: !208, line: 1022, baseType: !2005, size: 64, offset: 320)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!309, !1933, !309, !578}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1985, file: !208, line: 1023, baseType: !2009, size: 64, offset: 384)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null, !1933, !1196}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1985, file: !208, line: 1024, baseType: !2001, size: 64, offset: 448)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1934, file: !208, line: 1097, baseType: !2014, size: 256, offset: 1408)
!2014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1934, file: !208, line: 1089, size: 256, elements: !2015)
!2015 = !{!2016, !2025, !2031}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2014, file: !208, line: 1090, baseType: !2017, size: 256)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2018, line: 10, size: 256, elements: !2019)
!2018 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2019 = !{!2020, !2021, !2024}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2017, file: !2018, line: 11, baseType: !482, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2017, file: !2018, line: 12, baseType: !2022, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2018, line: 5, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2017, file: !2018, line: 13, baseType: !575, size: 128, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2014, file: !208, line: 1091, baseType: !2026, size: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2018, line: 17, size: 64, elements: !2027)
!2027 = !{!2028}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2026, file: !2018, line: 18, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2018, line: 16, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2014, file: !208, line: 1096, baseType: !2032, size: 192)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2014, file: !208, line: 1092, size: 192, elements: !2033)
!2033 = !{!2034, !2035, !2036}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2032, file: !208, line: 1093, baseType: !575, size: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2032, file: !208, line: 1094, baseType: !309, size: 32, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2032, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1848, file: !208, line: 1843, baseType: !2038, size: 64, offset: 1280)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!960, !751, !1110, !309, !963, !1859, !309}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1848, file: !208, line: 1844, baseType: !2042, size: 64, offset: 1344)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!525, !751, !525, !525, !525, !525}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1848, file: !208, line: 1845, baseType: !2046, size: 64, offset: 1408)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!309, !309}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1848, file: !208, line: 1846, baseType: !1930, size: 64, offset: 1472)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1848, file: !208, line: 1847, baseType: !2051, size: 64, offset: 1536)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!960, !2054, !751, !1859, !963, !7}
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !532, line: 53, flags: DIFlagFwdDecl)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1848, file: !208, line: 1848, baseType: !2057, size: 64, offset: 1600)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!960, !751, !1859, !2054, !963, !7}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1848, file: !208, line: 1849, baseType: !2061, size: 64, offset: 1664)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!309, !751, !542, !2064, !1196}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1848, file: !208, line: 1850, baseType: !2066, size: 64, offset: 1728)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!542, !751, !309, !915, !915}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1848, file: !208, line: 1852, baseType: !2070, size: 64, offset: 1792)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{null, !1101, !751}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1848, file: !208, line: 1856, baseType: !2074, size: 64, offset: 1856)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!960, !751, !915, !751, !915, !963, !7}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1848, file: !208, line: 1858, baseType: !2078, size: 64, offset: 1920)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!915, !751, !915, !751, !915, !915, !7}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1848, file: !208, line: 1861, baseType: !1922, size: 64, offset: 1984)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1843, file: !208, line: 692, baseType: !1054, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !816, file: !208, line: 694, baseType: !2084, size: 64, offset: 2560)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !2086)
!2086 = !{!2087, !2088, !2089, !2090}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2085, file: !208, line: 1101, baseType: !1131)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2085, file: !208, line: 1102, baseType: !575, size: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2085, file: !208, line: 1103, baseType: !575, size: 128, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2085, file: !208, line: 1104, baseType: !575, size: 128, offset: 256)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !816, file: !208, line: 695, baseType: !1123, size: 1216, align: 64, offset: 2624)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !816, file: !208, line: 696, baseType: !575, size: 128, offset: 3840)
!2093 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !208, line: 697, baseType: !2094, size: 64, offset: 3968)
!2094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !208, line: 697, size: 64, elements: !2095)
!2095 = !{!2096, !2097, !2098, !2409, !2410}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2094, file: !208, line: 698, baseType: !2054, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2094, file: !208, line: 699, baseType: !1574, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2094, file: !208, line: 700, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2101, line: 14, size: 832, elements: !2102)
!2101 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2102 = !{!2103, !2404, !2405, !2406, !2407, !2408}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2100, file: !2101, line: 15, baseType: !2104, size: 512)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2105, line: 64, size: 512, elements: !2106)
!2105 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2106 = !{!2107, !2108, !2109, !2111, !2153, !2255, !2394, !2399, !2400, !2401, !2402, !2403}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2104, file: !2105, line: 65, baseType: !325, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2104, file: !2105, line: 66, baseType: !575, size: 128, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2104, file: !2105, line: 67, baseType: !2110, size: 64, offset: 192)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2104, file: !2105, line: 68, baseType: !2112, size: 64, offset: 256)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2105, line: 192, size: 704, elements: !2114)
!2114 = !{!2115, !2116, !2117, !2118}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2113, file: !2105, line: 193, baseType: !575, size: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2113, file: !2105, line: 194, baseType: !1131, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2113, file: !2105, line: 195, baseType: !2104, size: 512, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2113, file: !2105, line: 196, baseType: !2119, size: 64, offset: 640)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2121)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2105, line: 156, size: 192, elements: !2122)
!2122 = !{!2123, !2128, !2133}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2121, file: !2105, line: 157, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2125)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!309, !2112, !2110}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2121, file: !2105, line: 158, baseType: !2129, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2130)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!325, !2112, !2110}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2121, file: !2105, line: 159, baseType: !2134, size: 64, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2135)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!309, !2112, !2110, !2138}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2105, line: 148, size: 20736, elements: !2140)
!2140 = !{!2141, !2143, !2147, !2148, !2152}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2139, file: !2105, line: 149, baseType: !2142, size: 192)
!2142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 192, elements: !1039)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2139, file: !2105, line: 150, baseType: !2144, size: 4096, offset: 192)
!2144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 4096, elements: !2145)
!2145 = !{!2146}
!2146 = !DISubrange(count: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2139, file: !2105, line: 151, baseType: !309, size: 32, offset: 4288)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2139, file: !2105, line: 152, baseType: !2149, size: 16384, offset: 4320)
!2149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 16384, elements: !2150)
!2150 = !{!2151}
!2151 = !DISubrange(count: 2048)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2139, file: !2105, line: 153, baseType: !309, size: 32, offset: 20704)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2104, file: !2105, line: 69, baseType: !2154, size: 64, offset: 320)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2105, line: 138, size: 448, elements: !2156)
!2156 = !{!2157, !2161, !2180, !2182, !2215, !2245, !2249}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2155, file: !2105, line: 139, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{null, !2110}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2155, file: !2105, line: 140, baseType: !2162, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2164)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2165, line: 230, size: 128, elements: !2166)
!2165 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2166 = !{!2167, !2176}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2164, file: !2165, line: 231, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!960, !2110, !2171, !347}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2165, line: 30, size: 128, elements: !2173)
!2173 = !{!2174, !2175}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2172, file: !2165, line: 31, baseType: !325, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2172, file: !2165, line: 32, baseType: !819, size: 16, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2164, file: !2165, line: 232, baseType: !2177, size: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!960, !2110, !2171, !325, !963}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2155, file: !2105, line: 141, baseType: !2181, size: 64, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2155, file: !2105, line: 142, baseType: !2183, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2186)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2165, line: 84, size: 320, elements: !2187)
!2187 = !{!2188, !2189, !2193, !2212, !2213}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2186, file: !2165, line: 85, baseType: !325, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2186, file: !2165, line: 86, baseType: !2190, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!819, !2110, !2171, !309}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2186, file: !2165, line: 88, baseType: !2194, size: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!819, !2110, !2197, !309}
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2165, line: 168, size: 448, elements: !2199)
!2199 = !{!2200, !2201, !2202, !2203, !2207, !2208}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2198, file: !2165, line: 169, baseType: !2172, size: 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2198, file: !2165, line: 170, baseType: !963, size: 64, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2198, file: !2165, line: 171, baseType: !300, size: 64, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2198, file: !2165, line: 172, baseType: !2204, size: 64, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!960, !751, !2110, !2197, !347, !915, !963}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2198, file: !2165, line: 174, baseType: !2204, size: 64, offset: 320)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2198, file: !2165, line: 176, baseType: !2209, size: 64, offset: 384)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!309, !751, !2110, !2197, !717}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2186, file: !2165, line: 90, baseType: !2181, size: 64, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2186, file: !2165, line: 91, baseType: !2214, size: 64, offset: 256)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2155, file: !2105, line: 143, baseType: !2216, size: 64, offset: 256)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!2219, !2110}
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2221)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !2222)
!2222 = !{!2223, !2224, !2228, !2232, !2240, !2244}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2221, file: !225, line: 40, baseType: !224, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2221, file: !225, line: 41, baseType: !2225, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!874}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2221, file: !225, line: 42, baseType: !2229, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!300}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2221, file: !225, line: 43, baseType: !2233, size: 64, offset: 192)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!2236, !2238}
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2221, file: !225, line: 44, baseType: !2241, size: 64, offset: 256)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!2236}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2221, file: !225, line: 45, baseType: !349, size: 64, offset: 320)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2155, file: !2105, line: 144, baseType: !2246, size: 64, offset: 320)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!2236, !2110}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2155, file: !2105, line: 145, baseType: !2250, size: 64, offset: 384)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{null, !2110, !2253, !2254}
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2104, file: !2105, line: 70, baseType: !2256, size: 64, offset: 384)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1007, line: 123, size: 1024, elements: !2258)
!2258 = !{!2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2387, !2388, !2389, !2390, !2391}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2257, file: !1007, line: 124, baseType: !550, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2257, file: !1007, line: 125, baseType: !550, size: 32, offset: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2257, file: !1007, line: 135, baseType: !2256, size: 64, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2257, file: !1007, line: 136, baseType: !325, size: 64, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2257, file: !1007, line: 138, baseType: !522, size: 192, align: 64, offset: 192)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2257, file: !1007, line: 140, baseType: !2236, size: 64, offset: 384)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2257, file: !1007, line: 141, baseType: !7, size: 32, offset: 448)
!2266 = !DIDerivedType(tag: DW_TAG_member, scope: !2257, file: !1007, line: 142, baseType: !2267, size: 256, offset: 512)
!2267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2257, file: !1007, line: 142, size: 256, elements: !2268)
!2268 = !{!2269, !2315, !2319}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2267, file: !1007, line: 143, baseType: !2270, size: 192)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1007, line: 91, size: 192, elements: !2271)
!2271 = !{!2272, !2273, !2274}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2270, file: !1007, line: 92, baseType: !525, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2270, file: !1007, line: 94, baseType: !518, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2270, file: !1007, line: 100, baseType: !2275, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1007, line: 180, size: 704, elements: !2277)
!2277 = !{!2278, !2279, !2280, !2287, !2288, !2289, !2313, !2314}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2276, file: !1007, line: 182, baseType: !2256, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2276, file: !1007, line: 183, baseType: !7, size: 32, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2276, file: !1007, line: 186, baseType: !2281, size: 192, offset: 128)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2282, line: 19, size: 192, elements: !2283)
!2282 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2283 = !{!2284, !2285, !2286}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2281, file: !2282, line: 20, baseType: !1127, size: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2281, file: !2282, line: 21, baseType: !7, size: 32, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2281, file: !2282, line: 22, baseType: !7, size: 32, offset: 160)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2276, file: !1007, line: 187, baseType: !482, size: 32, offset: 320)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2276, file: !1007, line: 188, baseType: !482, size: 32, offset: 352)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2276, file: !1007, line: 189, baseType: !2290, size: 64, offset: 384)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1007, line: 168, size: 320, elements: !2292)
!2292 = !{!2293, !2297, !2301, !2305, !2309}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2291, file: !1007, line: 169, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!309, !1101, !2275}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2291, file: !1007, line: 171, baseType: !2298, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!309, !2256, !325, !819}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2291, file: !1007, line: 173, baseType: !2302, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!309, !2256}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2291, file: !1007, line: 174, baseType: !2306, size: 64, offset: 192)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!309, !2256, !2256, !325}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2291, file: !1007, line: 176, baseType: !2310, size: 64, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!309, !1101, !2256, !2275}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2276, file: !1007, line: 192, baseType: !575, size: 128, offset: 448)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2276, file: !1007, line: 194, baseType: !1630, size: 128, offset: 576)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2267, file: !1007, line: 144, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1007, line: 103, size: 64, elements: !2317)
!2317 = !{!2318}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2316, file: !1007, line: 104, baseType: !2256, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2267, file: !1007, line: 145, baseType: !2320, size: 256)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1007, line: 107, size: 256, elements: !2321)
!2321 = !{!2322, !2382, !2385, !2386}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2320, file: !1007, line: 108, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2325)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1007, line: 217, size: 768, elements: !2326)
!2326 = !{!2327, !2347, !2351, !2355, !2359, !2363, !2367, !2371, !2372, !2373, !2374, !2378}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2325, file: !1007, line: 222, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!309, !2331}
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1007, line: 197, size: 1088, elements: !2333)
!2333 = !{!2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2332, file: !1007, line: 199, baseType: !2256, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2332, file: !1007, line: 200, baseType: !751, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2332, file: !1007, line: 201, baseType: !1101, size: 64, offset: 128)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2332, file: !1007, line: 202, baseType: !300, size: 64, offset: 192)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2332, file: !1007, line: 205, baseType: !1398, size: 192, offset: 256)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2332, file: !1007, line: 206, baseType: !1398, size: 192, offset: 448)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2332, file: !1007, line: 207, baseType: !309, size: 32, offset: 640)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2332, file: !1007, line: 208, baseType: !575, size: 128, offset: 704)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2332, file: !1007, line: 209, baseType: !347, size: 64, offset: 832)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2332, file: !1007, line: 211, baseType: !963, size: 64, offset: 896)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2332, file: !1007, line: 212, baseType: !874, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2332, file: !1007, line: 213, baseType: !874, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2332, file: !1007, line: 214, baseType: !746, size: 64, offset: 1024)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2325, file: !1007, line: 223, baseType: !2348, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{null, !2331}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2325, file: !1007, line: 236, baseType: !2352, size: 64, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!309, !1101, !300}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2325, file: !1007, line: 238, baseType: !2356, size: 64, offset: 192)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!300, !1101, !1859}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2325, file: !1007, line: 239, baseType: !2360, size: 64, offset: 256)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!300, !1101, !300, !1859}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2325, file: !1007, line: 240, baseType: !2364, size: 64, offset: 320)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{null, !1101, !300}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2325, file: !1007, line: 242, baseType: !2368, size: 64, offset: 384)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!960, !2331, !347, !963, !915}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2325, file: !1007, line: 252, baseType: !963, size: 64, offset: 448)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2325, file: !1007, line: 259, baseType: !874, size: 8, offset: 512)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2325, file: !1007, line: 260, baseType: !2368, size: 64, offset: 576)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2325, file: !1007, line: 263, baseType: !2375, size: 64, offset: 640)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!1888, !2331, !1890}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2325, file: !1007, line: 266, baseType: !2379, size: 64, offset: 704)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!309, !2331, !717}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2320, file: !1007, line: 109, baseType: !2383, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1007, line: 31, flags: DIFlagFwdDecl)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2320, file: !1007, line: 110, baseType: !915, size: 64, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2320, file: !1007, line: 111, baseType: !2256, size: 64, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2257, file: !1007, line: 148, baseType: !300, size: 64, offset: 768)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2257, file: !1007, line: 154, baseType: !302, size: 64, offset: 832)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2257, file: !1007, line: 156, baseType: !356, size: 16, offset: 896)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2257, file: !1007, line: 157, baseType: !819, size: 16, offset: 912)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2257, file: !1007, line: 158, baseType: !2392, size: 64, offset: 960)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1007, line: 32, flags: DIFlagFwdDecl)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2104, file: !2105, line: 71, baseType: !2395, size: 32, offset: 448)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2396, line: 19, size: 32, elements: !2397)
!2396 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2397 = !{!2398}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2395, file: !2396, line: 20, baseType: !545, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2104, file: !2105, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2104, file: !2105, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2104, file: !2105, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2104, file: !2105, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2104, file: !2105, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2100, file: !2101, line: 16, baseType: !329, size: 64, offset: 512)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2100, file: !2101, line: 17, baseType: !1846, size: 64, offset: 576)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2100, file: !2101, line: 18, baseType: !575, size: 128, offset: 640)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2100, file: !2101, line: 19, baseType: !897, size: 32, offset: 768)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2100, file: !2101, line: 20, baseType: !7, size: 32, offset: 800)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2094, file: !208, line: 701, baseType: !347, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2094, file: !208, line: 702, baseType: !7, size: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !816, file: !208, line: 705, baseType: !483, size: 32, offset: 4032)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !816, file: !208, line: 708, baseType: !483, size: 32, offset: 4064)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !816, file: !208, line: 709, baseType: !1663, size: 64, offset: 4096)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !816, file: !208, line: 720, baseType: !300, size: 64, offset: 4160)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !782, file: !779, line: 98, baseType: !2416, size: 256, offset: 448)
!2416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 256, elements: !1667)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !782, file: !779, line: 101, baseType: !2418, size: 32, offset: 704)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2419, line: 25, size: 32, elements: !2420)
!2419 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2420 = !{!2421}
!2421 = !DIDerivedType(tag: DW_TAG_member, scope: !2418, file: !2419, line: 26, baseType: !2422, size: 32)
!2422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2418, file: !2419, line: 26, size: 32, elements: !2423)
!2423 = !{!2424}
!2424 = !DIDerivedType(tag: DW_TAG_member, scope: !2422, file: !2419, line: 30, baseType: !2425, size: 32)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2422, file: !2419, line: 30, size: 32, elements: !2426)
!2426 = !{!2427, !2428}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2425, file: !2419, line: 31, baseType: !1131)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2425, file: !2419, line: 32, baseType: !309, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !782, file: !779, line: 102, baseType: !1684, size: 64, offset: 768)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !782, file: !779, line: 103, baseType: !987, size: 64, offset: 832)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !782, file: !779, line: 104, baseType: !525, size: 64, offset: 896)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !782, file: !779, line: 105, baseType: !300, size: 64, offset: 960)
!2433 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !779, line: 107, baseType: !2434, size: 128, offset: 1024)
!2434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !779, line: 107, size: 128, elements: !2435)
!2435 = !{!2436, !2437}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2434, file: !779, line: 108, baseType: !575, size: 128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2434, file: !779, line: 109, baseType: !1899, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !782, file: !779, line: 111, baseType: !575, size: 128, offset: 1152)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !782, file: !779, line: 112, baseType: !575, size: 128, offset: 1280)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !782, file: !779, line: 120, baseType: !2441, size: 128, offset: 1408)
!2441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !779, line: 116, size: 128, elements: !2442)
!2442 = !{!2443, !2444, !2445}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2441, file: !779, line: 117, baseType: !1027, size: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2441, file: !779, line: 118, baseType: !791, size: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2441, file: !779, line: 119, baseType: !764, size: 128, align: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !752, file: !208, line: 922, baseType: !815, size: 64, offset: 256)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !752, file: !208, line: 923, baseType: !1846, size: 64, offset: 320)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !752, file: !208, line: 929, baseType: !1131, offset: 384)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !752, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !752, file: !208, line: 931, baseType: !1148, size: 64, offset: 448)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !752, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !752, file: !208, line: 933, baseType: !1680, size: 32, offset: 544)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !752, file: !208, line: 934, baseType: !1398, size: 192, offset: 576)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !752, file: !208, line: 935, baseType: !915, size: 64, offset: 768)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !752, file: !208, line: 936, baseType: !2456, size: 192, offset: 832)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !2457)
!2457 = !{!2458, !2459, !2481, !2482, !2483, !2484}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2456, file: !208, line: 886, baseType: !1955)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2456, file: !208, line: 887, baseType: !2460, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !2462)
!2462 = !{!2463, !2464, !2465, !2466, !2470, !2471, !2472, !2473}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2461, file: !217, line: 61, baseType: !545, size: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2461, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2461, file: !217, line: 63, baseType: !1131, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2461, file: !217, line: 65, baseType: !2467, size: 256, offset: 64)
!2467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1023, size: 256, elements: !2468)
!2468 = !{!2469}
!2469 = !DISubrange(count: 4)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2461, file: !217, line: 66, baseType: !1023, size: 64, offset: 320)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2461, file: !217, line: 68, baseType: !1630, size: 128, offset: 384)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2461, file: !217, line: 69, baseType: !764, size: 128, align: 64, offset: 512)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2461, file: !217, line: 70, baseType: !2474, size: 128, offset: 640)
!2474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2475, size: 128, elements: !702)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !2476)
!2476 = !{!2477, !2478}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2475, file: !217, line: 55, baseType: !309, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2475, file: !217, line: 56, baseType: !2479, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2456, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2456, file: !208, line: 889, baseType: !822, size: 32, offset: 96)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2456, file: !208, line: 889, baseType: !822, size: 32, offset: 128)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2456, file: !208, line: 890, baseType: !309, size: 32, offset: 160)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !752, file: !208, line: 937, baseType: !2486, size: 64, offset: 1024)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2488)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2489, line: 111, size: 1280, elements: !2490)
!2489 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2490 = !{!2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2510, !2511, !2512, !2513, !2514, !2515, !2622, !2623, !2624, !2625, !2651, !2652, !2662}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2488, file: !2489, line: 112, baseType: !550, size: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2488, file: !2489, line: 120, baseType: !822, size: 32, offset: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2488, file: !2489, line: 121, baseType: !830, size: 32, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2488, file: !2489, line: 122, baseType: !822, size: 32, offset: 96)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2488, file: !2489, line: 123, baseType: !830, size: 32, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2488, file: !2489, line: 124, baseType: !822, size: 32, offset: 160)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2488, file: !2489, line: 125, baseType: !830, size: 32, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2488, file: !2489, line: 126, baseType: !822, size: 32, offset: 224)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2488, file: !2489, line: 127, baseType: !830, size: 32, offset: 256)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2488, file: !2489, line: 128, baseType: !7, size: 32, offset: 288)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2488, file: !2489, line: 129, baseType: !2502, size: 64, offset: 320)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2503, line: 26, baseType: !2504)
!2503 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2503, line: 24, size: 64, elements: !2505)
!2505 = !{!2506}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2504, file: !2503, line: 25, baseType: !2507, size: 64)
!2507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 64, elements: !2508)
!2508 = !{!2509}
!2509 = !DISubrange(count: 2)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2488, file: !2489, line: 130, baseType: !2502, size: 64, offset: 384)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2488, file: !2489, line: 131, baseType: !2502, size: 64, offset: 448)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2488, file: !2489, line: 132, baseType: !2502, size: 64, offset: 512)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2488, file: !2489, line: 133, baseType: !2502, size: 64, offset: 576)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2488, file: !2489, line: 135, baseType: !316, size: 8, offset: 640)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2488, file: !2489, line: 137, baseType: !2516, size: 64, offset: 704)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2518, line: 189, size: 1664, elements: !2519)
!2518 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2519 = !{!2520, !2521, !2524, !2529, !2530, !2533, !2534, !2539, !2540, !2541, !2542, !2544, !2545, !2546, !2547, !2548, !2586, !2607}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2517, file: !2518, line: 190, baseType: !545, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2517, file: !2518, line: 191, baseType: !2522, size: 32, offset: 32)
!2522 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2518, line: 28, baseType: !2523)
!2523 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !299, line: 98, baseType: !307)
!2524 = !DIDerivedType(tag: DW_TAG_member, scope: !2517, file: !2518, line: 192, baseType: !2525, size: 192, offset: 64)
!2525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2517, file: !2518, line: 192, size: 192, elements: !2526)
!2526 = !{!2527, !2528}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2525, file: !2518, line: 193, baseType: !575, size: 128)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2525, file: !2518, line: 194, baseType: !522, size: 192, align: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2517, file: !2518, line: 199, baseType: !1144, size: 256, offset: 256)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2517, file: !2518, line: 200, baseType: !2531, size: 64, offset: 512)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2518, line: 200, flags: DIFlagFwdDecl)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2517, file: !2518, line: 201, baseType: !300, size: 64, offset: 576)
!2534 = !DIDerivedType(tag: DW_TAG_member, scope: !2517, file: !2518, line: 202, baseType: !2535, size: 64, offset: 640)
!2535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2517, file: !2518, line: 202, size: 64, elements: !2536)
!2536 = !{!2537, !2538}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2535, file: !2518, line: 203, baseType: !922, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2535, file: !2518, line: 204, baseType: !922, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2517, file: !2518, line: 206, baseType: !922, size: 64, offset: 704)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2517, file: !2518, line: 207, baseType: !822, size: 32, offset: 768)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2517, file: !2518, line: 208, baseType: !830, size: 32, offset: 800)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2517, file: !2518, line: 209, baseType: !2543, size: 32, offset: 832)
!2543 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2518, line: 31, baseType: !941)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2517, file: !2518, line: 210, baseType: !356, size: 16, offset: 864)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2517, file: !2518, line: 211, baseType: !356, size: 16, offset: 880)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2517, file: !2518, line: 215, baseType: !312, size: 16, offset: 896)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2517, file: !2518, line: 222, baseType: !525, size: 64, offset: 960)
!2548 = !DIDerivedType(tag: DW_TAG_member, scope: !2517, file: !2518, line: 239, baseType: !2549, size: 320, offset: 1024)
!2549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2517, file: !2518, line: 239, size: 320, elements: !2550)
!2550 = !{!2551, !2578}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2549, file: !2518, line: 240, baseType: !2552, size: 320)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2518, line: 108, size: 320, elements: !2553)
!2553 = !{!2554, !2555, !2567, !2570, !2577}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2552, file: !2518, line: 110, baseType: !525, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, scope: !2552, file: !2518, line: 111, baseType: !2556, size: 64, offset: 64)
!2556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2552, file: !2518, line: 111, size: 64, elements: !2557)
!2557 = !{!2558, !2566}
!2558 = !DIDerivedType(tag: DW_TAG_member, scope: !2556, file: !2518, line: 112, baseType: !2559, size: 64)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2556, file: !2518, line: 112, size: 64, elements: !2560)
!2560 = !{!2561, !2562}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2559, file: !2518, line: 114, baseType: !354, size: 16)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2559, file: !2518, line: 115, baseType: !2563, size: 48, offset: 16)
!2563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 48, elements: !2564)
!2564 = !{!2565}
!2565 = !DISubrange(count: 6)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2556, file: !2518, line: 121, baseType: !525, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2552, file: !2518, line: 123, baseType: !2568, size: 64, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2518, line: 96, flags: DIFlagFwdDecl)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2552, file: !2518, line: 124, baseType: !2571, size: 64, offset: 192)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2518, line: 102, size: 192, elements: !2573)
!2573 = !{!2574, !2575, !2576}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2572, file: !2518, line: 103, baseType: !764, size: 128, align: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2572, file: !2518, line: 104, baseType: !545, size: 32, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2572, file: !2518, line: 105, baseType: !874, size: 8, offset: 160)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2552, file: !2518, line: 125, baseType: !325, size: 64, offset: 256)
!2578 = !DIDerivedType(tag: DW_TAG_member, scope: !2549, file: !2518, line: 241, baseType: !2579, size: 320)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2549, file: !2518, line: 241, size: 320, elements: !2580)
!2580 = !{!2581, !2582, !2583, !2584, !2585}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2579, file: !2518, line: 242, baseType: !525, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2579, file: !2518, line: 243, baseType: !525, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2579, file: !2518, line: 244, baseType: !2568, size: 64, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2579, file: !2518, line: 245, baseType: !2571, size: 64, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2579, file: !2518, line: 246, baseType: !347, size: 64, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, scope: !2517, file: !2518, line: 254, baseType: !2587, size: 256, offset: 1344)
!2587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2517, file: !2518, line: 254, size: 256, elements: !2588)
!2588 = !{!2589, !2595}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2587, file: !2518, line: 255, baseType: !2590, size: 256)
!2590 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2518, line: 128, size: 256, elements: !2591)
!2591 = !{!2592, !2593}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2590, file: !2518, line: 129, baseType: !300, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2590, file: !2518, line: 130, baseType: !2594, size: 256)
!2594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 256, elements: !2468)
!2595 = !DIDerivedType(tag: DW_TAG_member, scope: !2587, file: !2518, line: 256, baseType: !2596, size: 256)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2587, file: !2518, line: 256, size: 256, elements: !2597)
!2597 = !{!2598, !2599}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2596, file: !2518, line: 258, baseType: !575, size: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2596, file: !2518, line: 259, baseType: !2600, size: 128, offset: 128)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2601, line: 22, size: 128, elements: !2602)
!2601 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2602 = !{!2603, !2606}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2600, file: !2601, line: 23, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2601, line: 23, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2600, file: !2601, line: 24, baseType: !525, size: 64, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2517, file: !2518, line: 274, baseType: !2608, size: 64, offset: 1600)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2518, line: 170, size: 192, elements: !2610)
!2610 = !{!2611, !2620, !2621}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2609, file: !2518, line: 171, baseType: !2612, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2518, line: 165, baseType: !2613)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!309, !2516, !2616, !2618, !2516}
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2569)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2590)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2609, file: !2518, line: 172, baseType: !2516, size: 64, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2609, file: !2518, line: 173, baseType: !2568, size: 64, offset: 128)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2488, file: !2489, line: 138, baseType: !2516, size: 64, offset: 768)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2488, file: !2489, line: 139, baseType: !2516, size: 64, offset: 832)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2488, file: !2489, line: 140, baseType: !2516, size: 64, offset: 896)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2488, file: !2489, line: 145, baseType: !2626, size: 64, offset: 960)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2628, line: 13, size: 896, elements: !2629)
!2628 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2629 = !{!2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2627, file: !2628, line: 14, baseType: !545, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2627, file: !2628, line: 15, baseType: !550, size: 32, offset: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2627, file: !2628, line: 16, baseType: !550, size: 32, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2627, file: !2628, line: 21, baseType: !1148, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2627, file: !2628, line: 27, baseType: !525, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2627, file: !2628, line: 28, baseType: !525, size: 64, offset: 256)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2627, file: !2628, line: 29, baseType: !1148, size: 64, offset: 320)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2627, file: !2628, line: 32, baseType: !1027, size: 128, offset: 384)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2627, file: !2628, line: 33, baseType: !822, size: 32, offset: 512)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2627, file: !2628, line: 37, baseType: !1148, size: 64, offset: 576)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2627, file: !2628, line: 44, baseType: !2641, size: 256, offset: 640)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2642, line: 15, size: 256, elements: !2643)
!2642 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2643 = !{!2644, !2645, !2646, !2647, !2648, !2649, !2650}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2641, file: !2642, line: 16, baseType: !504)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2641, file: !2642, line: 18, baseType: !309, size: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2641, file: !2642, line: 19, baseType: !309, size: 32, offset: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2641, file: !2642, line: 20, baseType: !309, size: 32, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2641, file: !2642, line: 21, baseType: !309, size: 32, offset: 96)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2641, file: !2642, line: 22, baseType: !525, size: 64, offset: 128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2641, file: !2642, line: 23, baseType: !525, size: 64, offset: 192)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2488, file: !2489, line: 146, baseType: !1768, size: 64, offset: 1024)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2488, file: !2489, line: 147, baseType: !2653, size: 64, offset: 1088)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2489, line: 25, size: 64, elements: !2655)
!2655 = !{!2656, !2657, !2658}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2654, file: !2489, line: 26, baseType: !550, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2654, file: !2489, line: 27, baseType: !309, size: 32, offset: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2654, file: !2489, line: 28, baseType: !2659, offset: 64)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, elements: !2660)
!2660 = !{!2661}
!2661 = !DISubrange(count: 0)
!2662 = !DIDerivedType(tag: DW_TAG_member, scope: !2488, file: !2489, line: 149, baseType: !2663, size: 128, offset: 1152)
!2663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2488, file: !2489, line: 149, size: 128, elements: !2664)
!2664 = !{!2665, !2666}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2663, file: !2489, line: 150, baseType: !309, size: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2663, file: !2489, line: 151, baseType: !764, size: 128, align: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !752, file: !208, line: 938, baseType: !2668, size: 256, offset: 1088)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !2669)
!2669 = !{!2670, !2671, !2672, !2673, !2674, !2675}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2668, file: !208, line: 897, baseType: !525, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2668, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2668, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2668, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2668, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2668, file: !208, line: 904, baseType: !915, size: 64, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !752, file: !208, line: 940, baseType: !302, size: 64, offset: 1344)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !752, file: !208, line: 945, baseType: !300, size: 64, offset: 1408)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !752, file: !208, line: 949, baseType: !575, size: 128, offset: 1472)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !752, file: !208, line: 950, baseType: !575, size: 128, offset: 1600)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !752, file: !208, line: 952, baseType: !1122, size: 64, offset: 1728)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !752, file: !208, line: 953, baseType: !1282, size: 32, offset: 1792)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !752, file: !208, line: 954, baseType: !1282, size: 32, offset: 1824)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !718, file: !711, line: 362, baseType: !300, size: 64, offset: 1344)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !718, file: !711, line: 365, baseType: !1148, size: 64, offset: 1408)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !718, file: !711, line: 373, baseType: !2686, offset: 1472)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !711, line: 296, elements: !512)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !714, file: !711, line: 391, baseType: !518, size: 64, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !714, file: !711, line: 392, baseType: !302, size: 64, offset: 128)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !714, file: !711, line: 394, baseType: !2042, size: 64, offset: 192)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !714, file: !711, line: 398, baseType: !525, size: 64, offset: 256)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !714, file: !711, line: 399, baseType: !525, size: 64, offset: 320)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !714, file: !711, line: 405, baseType: !525, size: 64, offset: 384)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !714, file: !711, line: 406, baseType: !525, size: 64, offset: 448)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !714, file: !711, line: 407, baseType: !2695, size: 64, offset: 512)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !729, line: 286, baseType: !2697)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !729, line: 286, size: 64, elements: !2698)
!2698 = !{!2699}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2697, file: !729, line: 286, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !734, line: 18, baseType: !525)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !714, file: !711, line: 416, baseType: !550, size: 32, offset: 576)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !714, file: !711, line: 428, baseType: !550, size: 32, offset: 608)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !714, file: !711, line: 437, baseType: !550, size: 32, offset: 640)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !714, file: !711, line: 447, baseType: !550, size: 32, offset: 672)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !714, file: !711, line: 450, baseType: !1148, size: 64, offset: 704)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !714, file: !711, line: 452, baseType: !309, size: 32, offset: 768)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !714, file: !711, line: 454, baseType: !1131, offset: 800)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !714, file: !711, line: 457, baseType: !1144, size: 256, offset: 832)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !714, file: !711, line: 459, baseType: !575, size: 128, offset: 1088)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !714, file: !711, line: 466, baseType: !525, size: 64, offset: 1216)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !714, file: !711, line: 467, baseType: !525, size: 64, offset: 1280)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !714, file: !711, line: 469, baseType: !525, size: 64, offset: 1344)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !714, file: !711, line: 470, baseType: !525, size: 64, offset: 1408)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !714, file: !711, line: 471, baseType: !1150, size: 64, offset: 1472)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !714, file: !711, line: 472, baseType: !525, size: 64, offset: 1536)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !714, file: !711, line: 473, baseType: !525, size: 64, offset: 1600)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !714, file: !711, line: 474, baseType: !525, size: 64, offset: 1664)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !714, file: !711, line: 475, baseType: !525, size: 64, offset: 1728)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !714, file: !711, line: 477, baseType: !1131, offset: 1792)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !714, file: !711, line: 478, baseType: !525, size: 64, offset: 1792)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !714, file: !711, line: 478, baseType: !525, size: 64, offset: 1856)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !714, file: !711, line: 478, baseType: !525, size: 64, offset: 1920)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !714, file: !711, line: 478, baseType: !525, size: 64, offset: 1984)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !714, file: !711, line: 479, baseType: !525, size: 64, offset: 2048)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !714, file: !711, line: 479, baseType: !525, size: 64, offset: 2112)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !714, file: !711, line: 479, baseType: !525, size: 64, offset: 2176)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !714, file: !711, line: 480, baseType: !525, size: 64, offset: 2240)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !714, file: !711, line: 480, baseType: !525, size: 64, offset: 2304)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !714, file: !711, line: 480, baseType: !525, size: 64, offset: 2368)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !714, file: !711, line: 480, baseType: !525, size: 64, offset: 2432)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !714, file: !711, line: 482, baseType: !2732, size: 2816, offset: 2496)
!2732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 2816, elements: !2733)
!2733 = !{!2734}
!2734 = !DISubrange(count: 44)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !714, file: !711, line: 488, baseType: !2736, size: 256, offset: 5312)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2737, line: 60, size: 256, elements: !2738)
!2737 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2738 = !{!2739}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2736, file: !2737, line: 61, baseType: !2740, size: 256)
!2740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1148, size: 256, elements: !2468)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !714, file: !711, line: 490, baseType: !2742, size: 64, offset: 5568)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !711, line: 490, flags: DIFlagFwdDecl)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !714, file: !711, line: 493, baseType: !2745, size: 896, offset: 5632)
!2745 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2746, line: 53, baseType: !2747)
!2746 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2746, line: 13, size: 896, elements: !2748)
!2748 = !{!2749, !2750, !2751, !2752, !2755, !2756, !2757, !2758, !2778, !2779, !2780}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2747, file: !2746, line: 18, baseType: !302, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2747, file: !2746, line: 28, baseType: !1150, size: 64, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2747, file: !2746, line: 31, baseType: !1144, size: 256, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2747, file: !2746, line: 32, baseType: !2753, size: 64, offset: 384)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2746, line: 32, flags: DIFlagFwdDecl)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2747, file: !2746, line: 37, baseType: !356, size: 16, offset: 448)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2747, file: !2746, line: 40, baseType: !1398, size: 192, offset: 512)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2747, file: !2746, line: 41, baseType: !300, size: 64, offset: 704)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2747, file: !2746, line: 42, baseType: !2759, size: 64, offset: 768)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2761)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2762, line: 13, size: 896, elements: !2763)
!2762 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2763 = !{!2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2761, file: !2762, line: 14, baseType: !300, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2761, file: !2762, line: 15, baseType: !525, size: 64, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2761, file: !2762, line: 17, baseType: !525, size: 64, offset: 128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2761, file: !2762, line: 17, baseType: !525, size: 64, offset: 192)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2761, file: !2762, line: 19, baseType: !542, size: 64, offset: 256)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2761, file: !2762, line: 21, baseType: !542, size: 64, offset: 320)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2761, file: !2762, line: 22, baseType: !542, size: 64, offset: 384)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2761, file: !2762, line: 23, baseType: !542, size: 64, offset: 448)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2761, file: !2762, line: 24, baseType: !542, size: 64, offset: 512)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2761, file: !2762, line: 25, baseType: !542, size: 64, offset: 576)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2761, file: !2762, line: 26, baseType: !542, size: 64, offset: 640)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2761, file: !2762, line: 27, baseType: !542, size: 64, offset: 704)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2761, file: !2762, line: 28, baseType: !542, size: 64, offset: 768)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2761, file: !2762, line: 29, baseType: !542, size: 64, offset: 832)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2747, file: !2746, line: 44, baseType: !550, size: 32, offset: 832)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2747, file: !2746, line: 50, baseType: !354, size: 16, offset: 864)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2747, file: !2746, line: 51, baseType: !310, size: 16, offset: 880)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !714, file: !711, line: 495, baseType: !525, size: 64, offset: 6528)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !714, file: !711, line: 497, baseType: !2783, size: 64, offset: 6592)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !711, line: 381, size: 384, elements: !2785)
!2785 = !{!2786, !2787, !2793}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2784, file: !711, line: 382, baseType: !550, size: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2784, file: !711, line: 383, baseType: !2788, size: 128, offset: 64)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !711, line: 376, size: 128, elements: !2789)
!2789 = !{!2790, !2791}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2788, file: !711, line: 377, baseType: !530, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2788, file: !711, line: 378, baseType: !2792, size: 64, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2784, file: !711, line: 384, baseType: !2794, size: 192, offset: 192)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2795, line: 26, size: 192, elements: !2796)
!2795 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2796 = !{!2797, !2798}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2794, file: !2795, line: 27, baseType: !7, size: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2794, file: !2795, line: 28, baseType: !2799, size: 128, offset: 64)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2800, line: 43, size: 128, elements: !2801)
!2800 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2801 = !{!2802, !2803}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2799, file: !2800, line: 44, baseType: !504)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2799, file: !2800, line: 45, baseType: !575, size: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !714, file: !711, line: 500, baseType: !1131, offset: 6656)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !714, file: !711, line: 501, baseType: !2806, size: 64, offset: 6656)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !711, line: 387, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !714, file: !711, line: 516, baseType: !1768, size: 64, offset: 6720)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !714, file: !711, line: 519, baseType: !751, size: 64, offset: 6784)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !714, file: !711, line: 521, baseType: !2811, size: 64, offset: 6848)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !711, line: 521, flags: DIFlagFwdDecl)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !714, file: !711, line: 545, baseType: !550, size: 32, offset: 6912)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !714, file: !711, line: 548, baseType: !874, size: 8, offset: 6944)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !714, file: !711, line: 550, baseType: !2816, offset: 6952)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2817, line: 142, elements: !512)
!2817 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !714, file: !711, line: 554, baseType: !1788, size: 256, offset: 6976)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !714, file: !711, line: 557, baseType: !482, size: 32, offset: 7232)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !710, file: !711, line: 565, baseType: !2821, offset: 7296)
!2821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, elements: !2822)
!2822 = !{!2823}
!2823 = !DISubrange(count: -1)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !531, file: !532, line: 758, baseType: !709, size: 64, offset: 3968)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !531, file: !532, line: 761, baseType: !2826, size: 320, offset: 4032)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2737, line: 34, size: 320, elements: !2827)
!2827 = !{!2828, !2829}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2826, file: !2737, line: 35, baseType: !302, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2826, file: !2737, line: 36, baseType: !2830, size: 256, offset: 64)
!2830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !717, size: 256, elements: !2468)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !531, file: !532, line: 766, baseType: !309, size: 32, offset: 4352)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !531, file: !532, line: 767, baseType: !309, size: 32, offset: 4384)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !531, file: !532, line: 768, baseType: !309, size: 32, offset: 4416)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !531, file: !532, line: 770, baseType: !309, size: 32, offset: 4448)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !531, file: !532, line: 772, baseType: !525, size: 64, offset: 4480)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !531, file: !532, line: 775, baseType: !7, size: 32, offset: 4544)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !531, file: !532, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !531, file: !532, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !531, file: !532, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !531, file: !532, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !531, file: !532, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !531, file: !532, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !531, file: !532, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !531, file: !532, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !531, file: !532, line: 831, baseType: !525, size: 64, offset: 4672)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !531, file: !532, line: 833, baseType: !2847, size: 384, offset: 4736)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !2848)
!2848 = !{!2849, !2854}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2847, file: !196, line: 26, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!542, !2853}
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, scope: !2847, file: !196, line: 27, baseType: !2855, size: 320, offset: 64)
!2855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2847, file: !196, line: 27, size: 320, elements: !2856)
!2856 = !{!2857, !2867, !2892}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2855, file: !196, line: 36, baseType: !2858, size: 320)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2855, file: !196, line: 29, size: 320, elements: !2859)
!2859 = !{!2860, !2862, !2863, !2864, !2865, !2866}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2858, file: !196, line: 30, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2858, file: !196, line: 31, baseType: !482, size: 32, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2858, file: !196, line: 32, baseType: !482, size: 32, offset: 96)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2858, file: !196, line: 33, baseType: !482, size: 32, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2858, file: !196, line: 34, baseType: !302, size: 64, offset: 192)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2858, file: !196, line: 35, baseType: !2861, size: 64, offset: 256)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2855, file: !196, line: 46, baseType: !2868, size: 192)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2855, file: !196, line: 38, size: 192, elements: !2869)
!2869 = !{!2870, !2871, !2872, !2891}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2868, file: !196, line: 39, baseType: !661, size: 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2868, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, scope: !2868, file: !196, line: 41, baseType: !2873, size: 64, offset: 64)
!2873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2868, file: !196, line: 41, size: 64, elements: !2874)
!2874 = !{!2875, !2883}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2873, file: !196, line: 42, baseType: !2876, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2878, line: 7, size: 128, elements: !2879)
!2878 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2879 = !{!2880, !2882}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2877, file: !2878, line: 8, baseType: !2881, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !663, line: 93, baseType: !611)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2877, file: !2878, line: 9, baseType: !611, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2873, file: !196, line: 43, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2886, line: 7, size: 64, elements: !2887)
!2886 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2887 = !{!2888, !2890}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2885, file: !2886, line: 8, baseType: !2889, size: 32)
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2886, line: 5, baseType: !307)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2885, file: !2886, line: 9, baseType: !307, size: 32, offset: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2868, file: !196, line: 45, baseType: !302, size: 64, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2855, file: !196, line: 54, baseType: !2893, size: 256)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2855, file: !196, line: 48, size: 256, elements: !2894)
!2894 = !{!2895, !2903, !2904, !2905, !2906}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2893, file: !196, line: 49, baseType: !2896, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2898, line: 36, size: 64, elements: !2899)
!2898 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!2899 = !{!2900, !2901, !2902}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2897, file: !2898, line: 37, baseType: !309, size: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2897, file: !2898, line: 38, baseType: !312, size: 16, offset: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2897, file: !2898, line: 39, baseType: !312, size: 16, offset: 48)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2893, file: !196, line: 50, baseType: !309, size: 32, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2893, file: !196, line: 51, baseType: !309, size: 32, offset: 96)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2893, file: !196, line: 52, baseType: !525, size: 64, offset: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2893, file: !196, line: 53, baseType: !525, size: 64, offset: 192)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !531, file: !532, line: 835, baseType: !2908, size: 32, offset: 5120)
!2908 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !299, line: 22, baseType: !2909)
!2909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !663, line: 28, baseType: !309)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !531, file: !532, line: 836, baseType: !2908, size: 32, offset: 5152)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !531, file: !532, line: 840, baseType: !525, size: 64, offset: 5184)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !531, file: !532, line: 849, baseType: !530, size: 64, offset: 5248)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !531, file: !532, line: 852, baseType: !530, size: 64, offset: 5312)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !531, file: !532, line: 857, baseType: !575, size: 128, offset: 5376)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !531, file: !532, line: 858, baseType: !575, size: 128, offset: 5504)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !531, file: !532, line: 859, baseType: !530, size: 64, offset: 5632)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !531, file: !532, line: 867, baseType: !575, size: 128, offset: 5696)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !531, file: !532, line: 868, baseType: !575, size: 128, offset: 5824)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !531, file: !532, line: 871, baseType: !2460, size: 64, offset: 5952)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !531, file: !532, line: 872, baseType: !2921, size: 512, offset: 6016)
!2921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1027, size: 512, elements: !2468)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !531, file: !532, line: 873, baseType: !575, size: 128, offset: 6528)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !531, file: !532, line: 874, baseType: !575, size: 128, offset: 6656)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !531, file: !532, line: 876, baseType: !2925, size: 64, offset: 6784)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !531, file: !532, line: 879, baseType: !1095, size: 64, offset: 6848)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !531, file: !532, line: 882, baseType: !1095, size: 64, offset: 6912)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !531, file: !532, line: 884, baseType: !302, size: 64, offset: 6976)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !531, file: !532, line: 885, baseType: !302, size: 64, offset: 7040)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !531, file: !532, line: 890, baseType: !302, size: 64, offset: 7104)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !531, file: !532, line: 891, baseType: !2932, size: 128, offset: 7168)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !532, line: 242, size: 128, elements: !2933)
!2933 = !{!2934, !2935, !2936}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2932, file: !532, line: 244, baseType: !302, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2932, file: !532, line: 245, baseType: !302, size: 64, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2932, file: !532, line: 246, baseType: !504, offset: 128)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !531, file: !532, line: 900, baseType: !525, size: 64, offset: 7296)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !531, file: !532, line: 901, baseType: !525, size: 64, offset: 7360)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !531, file: !532, line: 904, baseType: !302, size: 64, offset: 7424)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !531, file: !532, line: 907, baseType: !302, size: 64, offset: 7488)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !531, file: !532, line: 910, baseType: !525, size: 64, offset: 7552)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !531, file: !532, line: 911, baseType: !525, size: 64, offset: 7616)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !531, file: !532, line: 914, baseType: !2944, size: 640, offset: 7680)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2945, line: 123, size: 640, elements: !2946)
!2945 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2946 = !{!2947, !2953, !2954}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2944, file: !2945, line: 124, baseType: !2948, size: 576)
!2948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2949, size: 576, elements: !1039)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2945, line: 108, size: 192, elements: !2950)
!2950 = !{!2951, !2952}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2949, file: !2945, line: 109, baseType: !302, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2949, file: !2945, line: 110, baseType: !676, size: 128, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2944, file: !2945, line: 125, baseType: !7, size: 32, offset: 576)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2944, file: !2945, line: 126, baseType: !7, size: 32, offset: 608)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !531, file: !532, line: 917, baseType: !2956, size: 192, offset: 8320)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2945, line: 134, size: 192, elements: !2957)
!2957 = !{!2958, !2959}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2956, file: !2945, line: 135, baseType: !764, size: 128, align: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2956, file: !2945, line: 136, baseType: !7, size: 32, offset: 128)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !531, file: !532, line: 923, baseType: !2486, size: 64, offset: 8512)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !531, file: !532, line: 926, baseType: !2486, size: 64, offset: 8576)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !531, file: !532, line: 929, baseType: !2486, size: 64, offset: 8640)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !531, file: !532, line: 933, baseType: !2516, size: 64, offset: 8704)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !531, file: !532, line: 943, baseType: !2965, size: 128, offset: 8768)
!2965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 128, elements: !1676)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !531, file: !532, line: 945, baseType: !2967, size: 64, offset: 8896)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !532, line: 49, flags: DIFlagFwdDecl)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !531, file: !532, line: 956, baseType: !2970, size: 64, offset: 8960)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !532, line: 45, flags: DIFlagFwdDecl)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !531, file: !532, line: 959, baseType: !2973, size: 64, offset: 9024)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !532, line: 959, flags: DIFlagFwdDecl)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !531, file: !532, line: 962, baseType: !2976, size: 64, offset: 9088)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !532, line: 66, flags: DIFlagFwdDecl)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !531, file: !532, line: 966, baseType: !2979, size: 64, offset: 9152)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2981, line: 35, flags: DIFlagFwdDecl)
!2981 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !531, file: !532, line: 969, baseType: !2983, size: 64, offset: 9216)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2985, line: 82, size: 7296, elements: !2986)
!2985 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2986 = !{!2987, !2988, !2989, !2990, !2991, !2992, !2993, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3022, !3031, !3032, !3034, !3035, !3036, !3039, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3069, !3070, !3077, !3078, !3079, !3080, !3081, !3082}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2984, file: !2985, line: 83, baseType: !545, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2984, file: !2985, line: 84, baseType: !550, size: 32, offset: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2984, file: !2985, line: 85, baseType: !309, size: 32, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2984, file: !2985, line: 86, baseType: !575, size: 128, offset: 128)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2984, file: !2985, line: 88, baseType: !1630, size: 128, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2984, file: !2985, line: 91, baseType: !530, size: 64, offset: 384)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2984, file: !2985, line: 94, baseType: !2994, size: 192, offset: 448)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2995, line: 30, size: 192, elements: !2996)
!2995 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2996 = !{!2997, !2998}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2994, file: !2995, line: 31, baseType: !575, size: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2994, file: !2995, line: 32, baseType: !2999, size: 64, offset: 128)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3000, line: 25, baseType: !3001)
!3000 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3000, line: 23, size: 64, elements: !3002)
!3002 = !{!3003}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3001, file: !3000, line: 24, baseType: !701, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2984, file: !2985, line: 97, baseType: !1023, size: 64, offset: 640)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2984, file: !2985, line: 100, baseType: !309, size: 32, offset: 704)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2984, file: !2985, line: 106, baseType: !309, size: 32, offset: 736)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2984, file: !2985, line: 107, baseType: !530, size: 64, offset: 768)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2984, file: !2985, line: 110, baseType: !309, size: 32, offset: 832)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2984, file: !2985, line: 111, baseType: !7, size: 32, offset: 864)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2984, file: !2985, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2984, file: !2985, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2984, file: !2985, line: 128, baseType: !309, size: 32, offset: 928)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2984, file: !2985, line: 129, baseType: !575, size: 128, offset: 960)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2984, file: !2985, line: 132, baseType: !619, size: 512, offset: 1088)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2984, file: !2985, line: 133, baseType: !627, size: 64, offset: 1600)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2984, file: !2985, line: 140, baseType: !3017, size: 256, offset: 1664)
!3017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3018, size: 256, elements: !2508)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2985, line: 38, size: 128, elements: !3019)
!3019 = !{!3020, !3021}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3018, file: !2985, line: 39, baseType: !302, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3018, file: !2985, line: 40, baseType: !302, size: 64, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2984, file: !2985, line: 146, baseType: !3023, size: 192, offset: 1920)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2985, line: 66, size: 192, elements: !3024)
!3024 = !{!3025}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3023, file: !2985, line: 67, baseType: !3026, size: 192)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2985, line: 47, size: 192, elements: !3027)
!3027 = !{!3028, !3029, !3030}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3026, file: !2985, line: 48, baseType: !1150, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3026, file: !2985, line: 49, baseType: !1150, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3026, file: !2985, line: 50, baseType: !1150, size: 64, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2984, file: !2985, line: 150, baseType: !2944, size: 640, offset: 2112)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2984, file: !2985, line: 153, baseType: !3033, size: 256, offset: 2752)
!3033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2460, size: 256, elements: !2468)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2984, file: !2985, line: 159, baseType: !2460, size: 64, offset: 3008)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2984, file: !2985, line: 162, baseType: !309, size: 32, offset: 3072)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2984, file: !2985, line: 164, baseType: !3037, size: 64, offset: 3136)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2985, line: 164, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2984, file: !2985, line: 175, baseType: !3040, size: 32, offset: 3200)
!3040 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !666, line: 805, baseType: !3041)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !666, line: 798, size: 32, elements: !3042)
!3042 = !{!3043, !3044}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3041, file: !666, line: 803, baseType: !786, size: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3041, file: !666, line: 804, baseType: !1131, offset: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2984, file: !2985, line: 176, baseType: !302, size: 64, offset: 3264)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2984, file: !2985, line: 176, baseType: !302, size: 64, offset: 3328)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2984, file: !2985, line: 176, baseType: !302, size: 64, offset: 3392)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2984, file: !2985, line: 176, baseType: !302, size: 64, offset: 3456)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2984, file: !2985, line: 177, baseType: !302, size: 64, offset: 3520)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2984, file: !2985, line: 178, baseType: !302, size: 64, offset: 3584)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2984, file: !2985, line: 179, baseType: !2932, size: 128, offset: 3648)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2984, file: !2985, line: 180, baseType: !525, size: 64, offset: 3776)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2984, file: !2985, line: 180, baseType: !525, size: 64, offset: 3840)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2984, file: !2985, line: 180, baseType: !525, size: 64, offset: 3904)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2984, file: !2985, line: 180, baseType: !525, size: 64, offset: 3968)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2984, file: !2985, line: 181, baseType: !525, size: 64, offset: 4032)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2984, file: !2985, line: 181, baseType: !525, size: 64, offset: 4096)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2984, file: !2985, line: 181, baseType: !525, size: 64, offset: 4160)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2984, file: !2985, line: 181, baseType: !525, size: 64, offset: 4224)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2984, file: !2985, line: 182, baseType: !525, size: 64, offset: 4288)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2984, file: !2985, line: 182, baseType: !525, size: 64, offset: 4352)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2984, file: !2985, line: 182, baseType: !525, size: 64, offset: 4416)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2984, file: !2985, line: 182, baseType: !525, size: 64, offset: 4480)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2984, file: !2985, line: 183, baseType: !525, size: 64, offset: 4544)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2984, file: !2985, line: 183, baseType: !525, size: 64, offset: 4608)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2984, file: !2985, line: 184, baseType: !3067, offset: 4672)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3068, line: 12, elements: !512)
!3068 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2984, file: !2985, line: 192, baseType: !306, size: 64, offset: 4672)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2984, file: !2985, line: 203, baseType: !3071, size: 2048, offset: 4736)
!3071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3072, size: 2048, elements: !1676)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3073, line: 43, size: 128, elements: !3074)
!3073 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3074 = !{!3075, !3076}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3072, file: !3073, line: 44, baseType: !965, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3072, file: !3073, line: 45, baseType: !965, size: 64, offset: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2984, file: !2985, line: 220, baseType: !874, size: 8, offset: 6784)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2984, file: !2985, line: 221, baseType: !312, size: 16, offset: 6800)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2984, file: !2985, line: 222, baseType: !312, size: 16, offset: 6816)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2984, file: !2985, line: 224, baseType: !709, size: 64, offset: 6848)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2984, file: !2985, line: 227, baseType: !1398, size: 192, offset: 6912)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2984, file: !2985, line: 233, baseType: !1398, size: 192, offset: 7104)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !531, file: !532, line: 970, baseType: !3084, size: 64, offset: 9280)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2985, line: 20, size: 16576, elements: !3086)
!3086 = !{!3087, !3088, !3089, !3090}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3085, file: !2985, line: 21, baseType: !1131)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3085, file: !2985, line: 22, baseType: !545, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3085, file: !2985, line: 23, baseType: !1630, size: 128, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3085, file: !2985, line: 24, baseType: !3091, size: 16384, offset: 192)
!3091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3092, size: 16384, elements: !2145)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2995, line: 49, size: 256, elements: !3093)
!3093 = !{!3094}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3092, file: !2995, line: 50, baseType: !3095, size: 256)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2995, line: 35, size: 256, elements: !3096)
!3096 = !{!3097, !3104, !3105, !3111}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3095, file: !2995, line: 37, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3099, line: 19, baseType: !3100)
!3099 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3099, line: 18, baseType: !3102)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{null, !309}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3095, file: !2995, line: 38, baseType: !525, size: 64, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3095, file: !2995, line: 44, baseType: !3106, size: 64, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3099, line: 22, baseType: !3107)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3099, line: 21, baseType: !3109)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{null}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3095, file: !2995, line: 46, baseType: !2999, size: 64, offset: 192)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !531, file: !532, line: 971, baseType: !2999, size: 64, offset: 9344)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !531, file: !532, line: 972, baseType: !2999, size: 64, offset: 9408)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !531, file: !532, line: 974, baseType: !2999, size: 64, offset: 9472)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !531, file: !532, line: 975, baseType: !2994, size: 192, offset: 9536)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !531, file: !532, line: 976, baseType: !525, size: 64, offset: 9728)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !531, file: !532, line: 977, baseType: !963, size: 64, offset: 9792)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !531, file: !532, line: 978, baseType: !7, size: 32, offset: 9856)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !531, file: !532, line: 980, baseType: !767, size: 64, offset: 9920)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !531, file: !532, line: 989, baseType: !3121, size: 128, offset: 9984)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3122, line: 35, size: 128, elements: !3123)
!3122 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3123 = !{!3124, !3125, !3126}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3121, file: !3122, line: 36, baseType: !309, size: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3121, file: !3122, line: 37, baseType: !550, size: 32, offset: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3121, file: !3122, line: 38, baseType: !3127, size: 64, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3122, line: 23, flags: DIFlagFwdDecl)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !531, file: !532, line: 992, baseType: !302, size: 64, offset: 10112)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !531, file: !532, line: 993, baseType: !302, size: 64, offset: 10176)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !531, file: !532, line: 996, baseType: !1131, offset: 10240)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !531, file: !532, line: 999, baseType: !504, offset: 10240)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !531, file: !532, line: 1001, baseType: !3134, size: 64, offset: 10240)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !532, line: 636, size: 64, elements: !3135)
!3135 = !{!3136}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3134, file: !532, line: 637, baseType: !3137, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !531, file: !532, line: 1005, baseType: !514, size: 128, offset: 10304)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !531, file: !532, line: 1007, baseType: !530, size: 64, offset: 10432)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !531, file: !532, line: 1009, baseType: !3141, size: 64, offset: 10496)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !532, line: 1009, flags: DIFlagFwdDecl)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !531, file: !532, line: 1043, baseType: !300, size: 64, offset: 10560)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !531, file: !532, line: 1046, baseType: !3145, size: 64, offset: 10624)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !532, line: 41, flags: DIFlagFwdDecl)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !531, file: !532, line: 1050, baseType: !3148, size: 64, offset: 10688)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !532, line: 42, flags: DIFlagFwdDecl)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !531, file: !532, line: 1054, baseType: !3151, size: 64, offset: 10752)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !532, line: 55, flags: DIFlagFwdDecl)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !531, file: !532, line: 1056, baseType: !1577, size: 64, offset: 10816)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !531, file: !532, line: 1058, baseType: !3155, size: 64, offset: 10880)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3157, line: 99, size: 704, elements: !3158)
!3157 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3158 = !{!3159, !3160, !3161, !3162, !3163, !3164, !3165, !3184, !3185}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3156, file: !3157, line: 100, baseType: !1148, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3156, file: !3157, line: 101, baseType: !550, size: 32, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3156, file: !3157, line: 102, baseType: !550, size: 32, offset: 96)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3156, file: !3157, line: 105, baseType: !1131, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3156, file: !3157, line: 107, baseType: !356, size: 16, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3156, file: !3157, line: 109, baseType: !1127, size: 128, offset: 192)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3156, file: !3157, line: 110, baseType: !3166, size: 64, offset: 320)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3157, line: 73, size: 448, elements: !3168)
!3168 = !{!3169, !3172, !3173, !3178, !3183}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3167, file: !3157, line: 74, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3157, line: 74, flags: DIFlagFwdDecl)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3167, file: !3157, line: 75, baseType: !3155, size: 64, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, scope: !3167, file: !3157, line: 83, baseType: !3174, size: 128, offset: 128)
!3174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3167, file: !3157, line: 83, size: 128, elements: !3175)
!3175 = !{!3176, !3177}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3174, file: !3157, line: 84, baseType: !575, size: 128)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3174, file: !3157, line: 85, baseType: !1308, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, scope: !3167, file: !3157, line: 87, baseType: !3179, size: 128, offset: 256)
!3179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3167, file: !3157, line: 87, size: 128, elements: !3180)
!3180 = !{!3181, !3182}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3179, file: !3157, line: 88, baseType: !1027, size: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3179, file: !3157, line: 89, baseType: !764, size: 128, align: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3167, file: !3157, line: 92, baseType: !7, size: 32, offset: 384)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3156, file: !3157, line: 111, baseType: !1023, size: 64, offset: 384)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3156, file: !3157, line: 113, baseType: !1788, size: 256, offset: 448)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !531, file: !532, line: 1061, baseType: !3187, size: 64, offset: 10944)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !532, line: 43, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !531, file: !532, line: 1064, baseType: !525, size: 64, offset: 11008)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !531, file: !532, line: 1065, baseType: !3191, size: 64, offset: 11072)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2995, line: 14, baseType: !3193)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2995, line: 12, size: 384, elements: !3194)
!3194 = !{!3195}
!3195 = !DIDerivedType(tag: DW_TAG_member, scope: !3193, file: !2995, line: 13, baseType: !3196, size: 384)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3193, file: !2995, line: 13, size: 384, elements: !3197)
!3197 = !{!3198, !3199, !3200, !3201}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3196, file: !2995, line: 13, baseType: !309, size: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3196, file: !2995, line: 13, baseType: !309, size: 32, offset: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3196, file: !2995, line: 13, baseType: !309, size: 32, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3196, file: !2995, line: 13, baseType: !3202, size: 256, offset: 128)
!3202 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3203, line: 32, size: 256, elements: !3204)
!3203 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3204 = !{!3205, !3210, !3223, !3229, !3238, !3258, !3263}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3202, file: !3203, line: 37, baseType: !3206, size: 64)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !3203, line: 34, size: 64, elements: !3207)
!3207 = !{!3208, !3209}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3206, file: !3203, line: 35, baseType: !2909, size: 32)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3206, file: !3203, line: 36, baseType: !828, size: 32, offset: 32)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3202, file: !3203, line: 45, baseType: !3211, size: 192)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !3203, line: 40, size: 192, elements: !3212)
!3212 = !{!3213, !3215, !3216, !3222}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3211, file: !3203, line: 41, baseType: !3214, size: 32)
!3214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !663, line: 95, baseType: !309)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3211, file: !3203, line: 42, baseType: !309, size: 32, offset: 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3211, file: !3203, line: 43, baseType: !3217, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3203, line: 11, baseType: !3218)
!3218 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3203, line: 8, size: 64, elements: !3219)
!3219 = !{!3220, !3221}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3218, file: !3203, line: 9, baseType: !309, size: 32)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3218, file: !3203, line: 10, baseType: !300, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3211, file: !3203, line: 44, baseType: !309, size: 32, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3202, file: !3203, line: 52, baseType: !3224, size: 128)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !3203, line: 48, size: 128, elements: !3225)
!3225 = !{!3226, !3227, !3228}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3224, file: !3203, line: 49, baseType: !2909, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3224, file: !3203, line: 50, baseType: !828, size: 32, offset: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3224, file: !3203, line: 51, baseType: !3217, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3202, file: !3203, line: 61, baseType: !3230, size: 256)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !3203, line: 55, size: 256, elements: !3231)
!3231 = !{!3232, !3233, !3234, !3235, !3237}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3230, file: !3203, line: 56, baseType: !2909, size: 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3230, file: !3203, line: 57, baseType: !828, size: 32, offset: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3230, file: !3203, line: 58, baseType: !309, size: 32, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3230, file: !3203, line: 59, baseType: !3236, size: 64, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !663, line: 94, baseType: !962)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3230, file: !3203, line: 60, baseType: !3236, size: 64, offset: 192)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3202, file: !3203, line: 95, baseType: !3239, size: 256)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !3203, line: 64, size: 256, elements: !3240)
!3240 = !{!3241, !3242}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3239, file: !3203, line: 65, baseType: !300, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, scope: !3239, file: !3203, line: 77, baseType: !3243, size: 192, offset: 64)
!3243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3239, file: !3203, line: 77, size: 192, elements: !3244)
!3244 = !{!3245, !3246, !3253}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3243, file: !3203, line: 82, baseType: !312, size: 16)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3243, file: !3203, line: 88, baseType: !3247, size: 192)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3243, file: !3203, line: 84, size: 192, elements: !3248)
!3248 = !{!3249, !3251, !3252}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3247, file: !3203, line: 85, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 64, elements: !657)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3247, file: !3203, line: 86, baseType: !300, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3247, file: !3203, line: 87, baseType: !300, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3243, file: !3203, line: 93, baseType: !3254, size: 96)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3243, file: !3203, line: 90, size: 96, elements: !3255)
!3255 = !{!3256, !3257}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3254, file: !3203, line: 91, baseType: !3250, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3254, file: !3203, line: 92, baseType: !483, size: 32, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3202, file: !3203, line: 101, baseType: !3259, size: 128)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !3203, line: 98, size: 128, elements: !3260)
!3260 = !{!3261, !3262}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3259, file: !3203, line: 99, baseType: !542, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3259, file: !3203, line: 100, baseType: !309, size: 32, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3202, file: !3203, line: 108, baseType: !3264, size: 128)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !3203, line: 104, size: 128, elements: !3265)
!3265 = !{!3266, !3267, !3268}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3264, file: !3203, line: 105, baseType: !300, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3264, file: !3203, line: 106, baseType: !309, size: 32, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3264, file: !3203, line: 107, baseType: !7, size: 32, offset: 96)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !531, file: !532, line: 1067, baseType: !3067, offset: 11136)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !531, file: !532, line: 1099, baseType: !3271, size: 64, offset: 11136)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !532, line: 56, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !531, file: !532, line: 1103, baseType: !575, size: 128, offset: 11200)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !531, file: !532, line: 1104, baseType: !3275, size: 64, offset: 11328)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !532, line: 46, flags: DIFlagFwdDecl)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !531, file: !532, line: 1105, baseType: !1398, size: 192, offset: 11392)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !531, file: !532, line: 1106, baseType: !7, size: 32, offset: 11584)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !531, file: !532, line: 1109, baseType: !3280, size: 128, offset: 11648)
!3280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3281, size: 128, elements: !2508)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !532, line: 51, flags: DIFlagFwdDecl)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !531, file: !532, line: 1110, baseType: !1398, size: 192, offset: 11776)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !531, file: !532, line: 1111, baseType: !575, size: 128, offset: 11968)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !531, file: !532, line: 1173, baseType: !3286, size: 64, offset: 12096)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3288, line: 62, size: 256, align: 256, elements: !3289)
!3288 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3289 = !{!3290, !3291, !3292, !3297}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3287, file: !3288, line: 75, baseType: !483, size: 32)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3287, file: !3288, line: 90, baseType: !483, size: 32, offset: 32)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3287, file: !3288, line: 124, baseType: !3293, size: 64, offset: 64)
!3293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3287, file: !3288, line: 109, size: 64, elements: !3294)
!3294 = !{!3295, !3296}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3293, file: !3288, line: 110, baseType: !304, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3293, file: !3288, line: 112, baseType: !304, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3287, file: !3288, line: 144, baseType: !483, size: 32, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !531, file: !532, line: 1174, baseType: !482, size: 32, offset: 12160)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !531, file: !532, line: 1179, baseType: !525, size: 64, offset: 12224)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !531, file: !532, line: 1182, baseType: !3301, size: 128, offset: 12288)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2737, line: 76, size: 128, elements: !3302)
!3302 = !{!3303, !3308, !3309}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3301, file: !2737, line: 85, baseType: !3304, size: 64)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3305, line: 7, size: 64, elements: !3306)
!3305 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3306 = !{!3307}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3304, file: !3305, line: 12, baseType: !698, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3301, file: !2737, line: 88, baseType: !874, size: 8, offset: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3301, file: !2737, line: 95, baseType: !874, size: 8, offset: 72)
!3310 = !DIDerivedType(tag: DW_TAG_member, scope: !531, file: !532, line: 1184, baseType: !3311, size: 128, offset: 12416)
!3311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !532, line: 1184, size: 128, elements: !3312)
!3312 = !{!3313, !3314}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3311, file: !532, line: 1185, baseType: !545, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3311, file: !532, line: 1186, baseType: !764, size: 128, align: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !531, file: !532, line: 1190, baseType: !2054, size: 64, offset: 12544)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !531, file: !532, line: 1192, baseType: !3317, size: 128, offset: 12608)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2737, line: 64, size: 128, elements: !3318)
!3318 = !{!3319, !3320, !3321}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3317, file: !2737, line: 65, baseType: !1110, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3317, file: !2737, line: 67, baseType: !483, size: 32, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3317, file: !2737, line: 68, baseType: !483, size: 32, offset: 96)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !531, file: !532, line: 1206, baseType: !309, size: 32, offset: 12736)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !531, file: !532, line: 1207, baseType: !309, size: 32, offset: 12768)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !531, file: !532, line: 1209, baseType: !525, size: 64, offset: 12800)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !531, file: !532, line: 1219, baseType: !302, size: 64, offset: 12864)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !531, file: !532, line: 1220, baseType: !302, size: 64, offset: 12928)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !531, file: !532, line: 1317, baseType: !309, size: 32, offset: 12992)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !531, file: !532, line: 1319, baseType: !530, size: 64, offset: 13056)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !531, file: !532, line: 1322, baseType: !3330, size: 64, offset: 13120)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3332, line: 56, size: 512, elements: !3333)
!3332 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3339, !3340, !3342}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3331, file: !3332, line: 57, baseType: !3330, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3331, file: !3332, line: 58, baseType: !300, size: 64, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3331, file: !3332, line: 59, baseType: !525, size: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3331, file: !3332, line: 60, baseType: !525, size: 64, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3331, file: !3332, line: 61, baseType: !1195, size: 64, offset: 256)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3331, file: !3332, line: 62, baseType: !7, size: 32, offset: 320)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3331, file: !3332, line: 63, baseType: !3341, size: 64, offset: 384)
!3341 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !299, line: 153, baseType: !302)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3331, file: !3332, line: 64, baseType: !2236, size: 64, offset: 448)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !531, file: !532, line: 1326, baseType: !545, size: 32, offset: 13184)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !531, file: !532, line: 1342, baseType: !300, size: 64, offset: 13248)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !531, file: !532, line: 1343, baseType: !304, size: 64, offset: 13312)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !531, file: !532, line: 1344, baseType: !302, size: 64, offset: 13376)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !531, file: !532, line: 1345, baseType: !304, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !531, file: !532, line: 1346, baseType: !304, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !531, file: !532, line: 1347, baseType: !304, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !531, file: !532, line: 1348, baseType: !764, size: 128, align: 64, offset: 13504)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !531, file: !532, line: 1358, baseType: !3352, size: 34816, offset: 13824)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3353, line: 485, size: 34816, elements: !3354)
!3353 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3354 = !{!3355, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3384, !3385, !3386, !3387, !3388, !3389, !3392, !3393, !3394}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3352, file: !3353, line: 487, baseType: !3356, size: 192)
!3356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3357, size: 192, elements: !1039)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3358, line: 16, size: 64, elements: !3359)
!3358 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3359 = !{!3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3357, file: !3358, line: 17, baseType: !354, size: 16)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3357, file: !3358, line: 18, baseType: !354, size: 16, offset: 16)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3357, file: !3358, line: 19, baseType: !354, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3357, file: !3358, line: 19, baseType: !354, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3357, file: !3358, line: 19, baseType: !354, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3357, file: !3358, line: 19, baseType: !354, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3357, file: !3358, line: 19, baseType: !354, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3357, file: !3358, line: 20, baseType: !354, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3357, file: !3358, line: 20, baseType: !354, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3357, file: !3358, line: 20, baseType: !354, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3357, file: !3358, line: 20, baseType: !354, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3357, file: !3358, line: 20, baseType: !354, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3357, file: !3358, line: 20, baseType: !354, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3352, file: !3353, line: 491, baseType: !525, size: 64, offset: 192)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3352, file: !3353, line: 495, baseType: !356, size: 16, offset: 256)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3352, file: !3353, line: 496, baseType: !356, size: 16, offset: 272)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3352, file: !3353, line: 497, baseType: !356, size: 16, offset: 288)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3352, file: !3353, line: 498, baseType: !356, size: 16, offset: 304)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3352, file: !3353, line: 502, baseType: !525, size: 64, offset: 320)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3352, file: !3353, line: 503, baseType: !525, size: 64, offset: 384)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3352, file: !3353, line: 514, baseType: !3381, size: 256, offset: 448)
!3381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3382, size: 256, elements: !2468)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3353, line: 483, flags: DIFlagFwdDecl)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3352, file: !3353, line: 516, baseType: !525, size: 64, offset: 704)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3352, file: !3353, line: 518, baseType: !525, size: 64, offset: 768)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3352, file: !3353, line: 520, baseType: !525, size: 64, offset: 832)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3352, file: !3353, line: 521, baseType: !525, size: 64, offset: 896)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3352, file: !3353, line: 522, baseType: !525, size: 64, offset: 960)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3352, file: !3353, line: 528, baseType: !3390, size: 64, offset: 1024)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3353, line: 10, flags: DIFlagFwdDecl)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3352, file: !3353, line: 535, baseType: !525, size: 64, offset: 1088)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3352, file: !3353, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3352, file: !3353, line: 540, baseType: !3395, size: 33280, offset: 1536)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3396, line: 317, size: 33280, elements: !3397)
!3396 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3397 = !{!3398, !3399, !3400}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3395, file: !3396, line: 330, baseType: !7, size: 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3395, file: !3396, line: 337, baseType: !525, size: 64, offset: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3395, file: !3396, line: 348, baseType: !3401, size: 32768, offset: 512)
!3401 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3396, line: 304, size: 32768, elements: !3402)
!3402 = !{!3403, !3416, !3453, !3503, !3516}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3401, file: !3396, line: 305, baseType: !3404, size: 896)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3396, line: 12, size: 896, elements: !3405)
!3405 = !{!3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3415}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3404, file: !3396, line: 13, baseType: !482, size: 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3404, file: !3396, line: 14, baseType: !482, size: 32, offset: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3404, file: !3396, line: 15, baseType: !482, size: 32, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3404, file: !3396, line: 16, baseType: !482, size: 32, offset: 96)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3404, file: !3396, line: 17, baseType: !482, size: 32, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3404, file: !3396, line: 18, baseType: !482, size: 32, offset: 160)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3404, file: !3396, line: 19, baseType: !482, size: 32, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3404, file: !3396, line: 22, baseType: !3414, size: 640, offset: 224)
!3414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 640, elements: !424)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3404, file: !3396, line: 25, baseType: !482, size: 32, offset: 864)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3401, file: !3396, line: 306, baseType: !3417, size: 4096, align: 128)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3396, line: 34, size: 4096, align: 128, elements: !3418)
!3418 = !{!3419, !3420, !3421, !3422, !3423, !3438, !3439, !3440, !3442, !3444, !3448}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3417, file: !3396, line: 35, baseType: !354, size: 16)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3417, file: !3396, line: 36, baseType: !354, size: 16, offset: 16)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3417, file: !3396, line: 37, baseType: !354, size: 16, offset: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3417, file: !3396, line: 38, baseType: !354, size: 16, offset: 48)
!3423 = !DIDerivedType(tag: DW_TAG_member, scope: !3417, file: !3396, line: 39, baseType: !3424, size: 128, offset: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3417, file: !3396, line: 39, size: 128, elements: !3425)
!3425 = !{!3426, !3431}
!3426 = !DIDerivedType(tag: DW_TAG_member, scope: !3424, file: !3396, line: 40, baseType: !3427, size: 128)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3424, file: !3396, line: 40, size: 128, elements: !3428)
!3428 = !{!3429, !3430}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3427, file: !3396, line: 41, baseType: !302, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3427, file: !3396, line: 42, baseType: !302, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, scope: !3424, file: !3396, line: 44, baseType: !3432, size: 128)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3424, file: !3396, line: 44, size: 128, elements: !3433)
!3433 = !{!3434, !3435, !3436, !3437}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3432, file: !3396, line: 45, baseType: !482, size: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3432, file: !3396, line: 46, baseType: !482, size: 32, offset: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3432, file: !3396, line: 47, baseType: !482, size: 32, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3432, file: !3396, line: 48, baseType: !482, size: 32, offset: 96)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3417, file: !3396, line: 51, baseType: !482, size: 32, offset: 192)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3417, file: !3396, line: 52, baseType: !482, size: 32, offset: 224)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3417, file: !3396, line: 55, baseType: !3441, size: 1024, offset: 256)
!3441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 1024, elements: !1667)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3417, file: !3396, line: 58, baseType: !3443, size: 2048, offset: 1280)
!3443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 2048, elements: !2145)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3417, file: !3396, line: 60, baseType: !3445, size: 384, offset: 3328)
!3445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 384, elements: !3446)
!3446 = !{!3447}
!3447 = !DISubrange(count: 12)
!3448 = !DIDerivedType(tag: DW_TAG_member, scope: !3417, file: !3396, line: 62, baseType: !3449, size: 384, offset: 3712)
!3449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3417, file: !3396, line: 62, size: 384, elements: !3450)
!3450 = !{!3451, !3452}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3449, file: !3396, line: 63, baseType: !3445, size: 384)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3449, file: !3396, line: 64, baseType: !3445, size: 384)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3401, file: !3396, line: 307, baseType: !3454, size: 1088)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3396, line: 79, size: 1088, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3502}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3454, file: !3396, line: 80, baseType: !482, size: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3454, file: !3396, line: 81, baseType: !482, size: 32, offset: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3454, file: !3396, line: 82, baseType: !482, size: 32, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3454, file: !3396, line: 83, baseType: !482, size: 32, offset: 96)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3454, file: !3396, line: 84, baseType: !482, size: 32, offset: 128)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3454, file: !3396, line: 85, baseType: !482, size: 32, offset: 160)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3454, file: !3396, line: 86, baseType: !482, size: 32, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3454, file: !3396, line: 88, baseType: !3414, size: 640, offset: 224)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3454, file: !3396, line: 89, baseType: !314, size: 8, offset: 864)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3454, file: !3396, line: 90, baseType: !314, size: 8, offset: 872)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3454, file: !3396, line: 91, baseType: !314, size: 8, offset: 880)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3454, file: !3396, line: 92, baseType: !314, size: 8, offset: 888)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3454, file: !3396, line: 93, baseType: !314, size: 8, offset: 896)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3454, file: !3396, line: 94, baseType: !314, size: 8, offset: 904)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3454, file: !3396, line: 95, baseType: !3471, size: 64, offset: 960)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3473, line: 11, size: 128, elements: !3474)
!3473 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3474 = !{!3475, !3476}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3472, file: !3473, line: 12, baseType: !542, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3472, file: !3473, line: 13, baseType: !3477, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3479, line: 56, size: 1344, elements: !3480)
!3479 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3480 = !{!3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3478, file: !3479, line: 61, baseType: !525, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3478, file: !3479, line: 62, baseType: !525, size: 64, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3478, file: !3479, line: 63, baseType: !525, size: 64, offset: 128)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3478, file: !3479, line: 64, baseType: !525, size: 64, offset: 192)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3478, file: !3479, line: 65, baseType: !525, size: 64, offset: 256)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3478, file: !3479, line: 66, baseType: !525, size: 64, offset: 320)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3478, file: !3479, line: 68, baseType: !525, size: 64, offset: 384)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3478, file: !3479, line: 69, baseType: !525, size: 64, offset: 448)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3478, file: !3479, line: 70, baseType: !525, size: 64, offset: 512)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3478, file: !3479, line: 71, baseType: !525, size: 64, offset: 576)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3478, file: !3479, line: 72, baseType: !525, size: 64, offset: 640)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3478, file: !3479, line: 73, baseType: !525, size: 64, offset: 704)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3478, file: !3479, line: 74, baseType: !525, size: 64, offset: 768)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3478, file: !3479, line: 75, baseType: !525, size: 64, offset: 832)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3478, file: !3479, line: 76, baseType: !525, size: 64, offset: 896)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3478, file: !3479, line: 81, baseType: !525, size: 64, offset: 960)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3478, file: !3479, line: 83, baseType: !525, size: 64, offset: 1024)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3478, file: !3479, line: 84, baseType: !525, size: 64, offset: 1088)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3478, file: !3479, line: 85, baseType: !525, size: 64, offset: 1152)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3478, file: !3479, line: 86, baseType: !525, size: 64, offset: 1216)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3478, file: !3479, line: 87, baseType: !525, size: 64, offset: 1280)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3454, file: !3396, line: 96, baseType: !482, size: 32, offset: 1024)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3401, file: !3396, line: 308, baseType: !3504, size: 4608, align: 512)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3396, line: 289, size: 4608, align: 512, elements: !3505)
!3505 = !{!3506, !3507, !3514}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3504, file: !3396, line: 290, baseType: !3417, size: 4096, align: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3504, file: !3396, line: 291, baseType: !3508, size: 512, offset: 4096)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3396, line: 268, size: 512, elements: !3509)
!3509 = !{!3510, !3511, !3512}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3508, file: !3396, line: 269, baseType: !302, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3508, file: !3396, line: 270, baseType: !302, size: 64, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3508, file: !3396, line: 271, baseType: !3513, size: 384, offset: 128)
!3513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 384, elements: !2564)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3504, file: !3396, line: 292, baseType: !3515, offset: 4608)
!3515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, elements: !2660)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3401, file: !3396, line: 309, baseType: !3517, size: 32768)
!3517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 32768, elements: !3518)
!3518 = !{!3519}
!3519 = !DISubrange(count: 4096)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !440, file: !441, line: 704, baseType: !500, size: 192, offset: 512)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !440, file: !441, line: 706, baseType: !309, size: 32, offset: 704)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !440, file: !441, line: 707, baseType: !309, size: 32, offset: 736)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !440, file: !441, line: 708, baseType: !3524, size: 5568, offset: 768)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !3525)
!3525 = !{!3526, !3527, !3529, !3532, !3533, !3584, !3675, !3676, !3677, !3678, !3679, !3688, !3793, !3806, !4001, !4002, !4006, !4008, !4009, !4010, !4014, !4020, !4021, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4062, !4063, !4064, !4067, !4070, !4071, !4072, !4073}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3524, file: !237, line: 462, baseType: !2104, size: 512)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3524, file: !237, line: 463, baseType: !3528, size: 64, offset: 512)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3524, file: !237, line: 465, baseType: !3530, size: 64, offset: 576)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3524, file: !237, line: 467, baseType: !325, size: 64, offset: 640)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3524, file: !237, line: 468, baseType: !3534, size: 64, offset: 704)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3536)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3537)
!3537 = !{!3538, !3539, !3540, !3544, !3549, !3553}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3536, file: !237, line: 88, baseType: !325, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3536, file: !237, line: 89, baseType: !2183, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3536, file: !237, line: 90, baseType: !3541, size: 64, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!309, !3528, !2138}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3536, file: !237, line: 91, baseType: !3545, size: 64, offset: 192)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!347, !3528, !3548, !2253, !2254}
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3536, file: !237, line: 93, baseType: !3550, size: 64, offset: 256)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{null, !3528}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3536, file: !237, line: 95, baseType: !3554, size: 64, offset: 320)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3556)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3557)
!3557 = !{!3558, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3556, file: !244, line: 279, baseType: !3559, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!309, !3528}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3556, file: !244, line: 280, baseType: !3550, size: 64, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3556, file: !244, line: 281, baseType: !3559, size: 64, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3556, file: !244, line: 282, baseType: !3559, size: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3556, file: !244, line: 283, baseType: !3559, size: 64, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3556, file: !244, line: 284, baseType: !3559, size: 64, offset: 320)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3556, file: !244, line: 285, baseType: !3559, size: 64, offset: 384)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3556, file: !244, line: 286, baseType: !3559, size: 64, offset: 448)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3556, file: !244, line: 287, baseType: !3559, size: 64, offset: 512)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3556, file: !244, line: 288, baseType: !3559, size: 64, offset: 576)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3556, file: !244, line: 289, baseType: !3559, size: 64, offset: 640)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3556, file: !244, line: 290, baseType: !3559, size: 64, offset: 704)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3556, file: !244, line: 291, baseType: !3559, size: 64, offset: 768)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3556, file: !244, line: 292, baseType: !3559, size: 64, offset: 832)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3556, file: !244, line: 293, baseType: !3559, size: 64, offset: 896)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3556, file: !244, line: 294, baseType: !3559, size: 64, offset: 960)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3556, file: !244, line: 295, baseType: !3559, size: 64, offset: 1024)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3556, file: !244, line: 296, baseType: !3559, size: 64, offset: 1088)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3556, file: !244, line: 297, baseType: !3559, size: 64, offset: 1152)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3556, file: !244, line: 298, baseType: !3559, size: 64, offset: 1216)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3556, file: !244, line: 299, baseType: !3559, size: 64, offset: 1280)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3556, file: !244, line: 300, baseType: !3559, size: 64, offset: 1344)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3556, file: !244, line: 301, baseType: !3559, size: 64, offset: 1408)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3524, file: !237, line: 470, baseType: !3585, size: 64, offset: 768)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3587, line: 82, size: 1408, elements: !3588)
!3587 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3588 = !{!3589, !3590, !3591, !3592, !3593, !3594, !3595, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3670, !3673, !3674}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3586, file: !3587, line: 83, baseType: !325, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3586, file: !3587, line: 84, baseType: !325, size: 64, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3586, file: !3587, line: 85, baseType: !3528, size: 64, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3586, file: !3587, line: 86, baseType: !2183, size: 64, offset: 192)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3586, file: !3587, line: 87, baseType: !2183, size: 64, offset: 256)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3586, file: !3587, line: 88, baseType: !2183, size: 64, offset: 320)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3586, file: !3587, line: 90, baseType: !3596, size: 64, offset: 384)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!309, !3528, !3599}
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3601)
!3601 = !{!3602, !3603, !3604, !3605, !3606, !3607, !3608, !3621, !3634, !3635, !3636, !3637, !3638, !3646, !3647, !3648, !3649, !3650, !3651}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3600, file: !231, line: 96, baseType: !325, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3600, file: !231, line: 97, baseType: !3585, size: 64, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3600, file: !231, line: 99, baseType: !329, size: 64, offset: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3600, file: !231, line: 100, baseType: !325, size: 64, offset: 192)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3600, file: !231, line: 102, baseType: !874, size: 8, offset: 256)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3600, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3600, file: !231, line: 105, baseType: !3609, size: 64, offset: 320)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3611)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3612, line: 262, size: 1600, elements: !3613)
!3612 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3613 = !{!3614, !3615, !3616, !3620}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3611, file: !3612, line: 263, baseType: !1666, size: 256)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3611, file: !3612, line: 264, baseType: !1666, size: 256, offset: 256)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3611, file: !3612, line: 265, baseType: !3617, size: 1024, offset: 512)
!3617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 1024, elements: !3618)
!3618 = !{!3619}
!3619 = !DISubrange(count: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3611, file: !3612, line: 266, baseType: !2236, size: 64, offset: 1536)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3600, file: !231, line: 106, baseType: !3622, size: 64, offset: 384)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3624)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3612, line: 210, size: 256, elements: !3625)
!3625 = !{!3626, !3630, !3632, !3633}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3624, file: !3612, line: 211, baseType: !3627, size: 72)
!3627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 72, elements: !3628)
!3628 = !{!3629}
!3629 = !DISubrange(count: 9)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3624, file: !3612, line: 212, baseType: !3631, size: 64, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3612, line: 14, baseType: !525)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3624, file: !3612, line: 213, baseType: !483, size: 32, offset: 192)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3624, file: !3612, line: 214, baseType: !483, size: 32, offset: 224)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3600, file: !231, line: 108, baseType: !3559, size: 64, offset: 448)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3600, file: !231, line: 109, baseType: !3550, size: 64, offset: 512)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3600, file: !231, line: 110, baseType: !3559, size: 64, offset: 576)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3600, file: !231, line: 111, baseType: !3550, size: 64, offset: 640)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3600, file: !231, line: 112, baseType: !3639, size: 64, offset: 704)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!309, !3528, !3642}
!3642 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3643)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3644)
!3644 = !{!3645}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3643, file: !244, line: 51, baseType: !309, size: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3600, file: !231, line: 113, baseType: !3559, size: 64, offset: 768)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3600, file: !231, line: 114, baseType: !2183, size: 64, offset: 832)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3600, file: !231, line: 115, baseType: !2183, size: 64, offset: 896)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3600, file: !231, line: 117, baseType: !3554, size: 64, offset: 960)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3600, file: !231, line: 118, baseType: !3550, size: 64, offset: 1024)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3600, file: !231, line: 120, baseType: !3652, size: 64, offset: 1088)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3586, file: !3587, line: 91, baseType: !3541, size: 64, offset: 448)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3586, file: !3587, line: 92, baseType: !3559, size: 64, offset: 512)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3586, file: !3587, line: 93, baseType: !3550, size: 64, offset: 576)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3586, file: !3587, line: 94, baseType: !3559, size: 64, offset: 640)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3586, file: !3587, line: 95, baseType: !3550, size: 64, offset: 704)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3586, file: !3587, line: 97, baseType: !3559, size: 64, offset: 768)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3586, file: !3587, line: 98, baseType: !3559, size: 64, offset: 832)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3586, file: !3587, line: 100, baseType: !3639, size: 64, offset: 896)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3586, file: !3587, line: 101, baseType: !3559, size: 64, offset: 960)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3586, file: !3587, line: 103, baseType: !3559, size: 64, offset: 1024)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3586, file: !3587, line: 105, baseType: !3559, size: 64, offset: 1088)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3586, file: !3587, line: 107, baseType: !3554, size: 64, offset: 1152)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3586, file: !3587, line: 109, baseType: !3667, size: 64, offset: 1216)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3669)
!3669 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3587, line: 109, flags: DIFlagFwdDecl)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3586, file: !3587, line: 111, baseType: !3671, size: 64, offset: 1280)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3587, line: 111, flags: DIFlagFwdDecl)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3586, file: !3587, line: 112, baseType: !1033, offset: 1344)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3586, file: !3587, line: 114, baseType: !874, size: 8, offset: 1344)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3524, file: !237, line: 471, baseType: !3599, size: 64, offset: 832)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3524, file: !237, line: 473, baseType: !300, size: 64, offset: 896)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3524, file: !237, line: 475, baseType: !300, size: 64, offset: 960)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3524, file: !237, line: 480, baseType: !1398, size: 192, offset: 1024)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3524, file: !237, line: 484, baseType: !3680, size: 576, offset: 1216)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3681)
!3681 = !{!3682, !3683, !3684, !3685, !3686, !3687}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3680, file: !237, line: 362, baseType: !575, size: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3680, file: !237, line: 363, baseType: !575, size: 128, offset: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3680, file: !237, line: 364, baseType: !575, size: 128, offset: 256)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3680, file: !237, line: 365, baseType: !575, size: 128, offset: 384)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3680, file: !237, line: 366, baseType: !874, size: 8, offset: 512)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3680, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3524, file: !237, line: 485, baseType: !3689, size: 2304, offset: 1792)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3690)
!3690 = !{!3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3786, !3790}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3689, file: !244, line: 566, baseType: !3642, size: 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3689, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3689, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3689, file: !244, line: 569, baseType: !874, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3689, file: !244, line: 570, baseType: !874, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3689, file: !244, line: 571, baseType: !874, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3689, file: !244, line: 572, baseType: !874, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3689, file: !244, line: 573, baseType: !874, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3689, file: !244, line: 574, baseType: !874, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3689, file: !244, line: 575, baseType: !874, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3689, file: !244, line: 576, baseType: !874, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3689, file: !244, line: 577, baseType: !482, size: 32, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3689, file: !244, line: 578, baseType: !1131, offset: 96)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3689, file: !244, line: 580, baseType: !575, size: 128, offset: 128)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3689, file: !244, line: 581, baseType: !2794, size: 192, offset: 256)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3689, file: !244, line: 582, baseType: !3707, size: 64, offset: 448)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3709, line: 43, size: 1472, elements: !3710)
!3709 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3710 = !{!3711, !3712, !3713, !3714, !3715, !3718, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3708, file: !3709, line: 44, baseType: !325, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3708, file: !3709, line: 45, baseType: !309, size: 32, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3708, file: !3709, line: 46, baseType: !575, size: 128, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3708, file: !3709, line: 47, baseType: !1131, offset: 256)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3708, file: !3709, line: 48, baseType: !3716, size: 64, offset: 256)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3708, file: !3709, line: 49, baseType: !3719, size: 320, offset: 320)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3720, line: 11, size: 320, elements: !3721)
!3720 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3721 = !{!3722, !3723, !3724, !3729}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3719, file: !3720, line: 16, baseType: !1027, size: 128)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3719, file: !3720, line: 17, baseType: !525, size: 64, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3719, file: !3720, line: 18, baseType: !3725, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{null, !3728}
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3719, file: !3720, line: 19, baseType: !482, size: 32, offset: 256)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3708, file: !3709, line: 50, baseType: !525, size: 64, offset: 640)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3708, file: !3709, line: 51, baseType: !627, size: 64, offset: 704)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3708, file: !3709, line: 52, baseType: !627, size: 64, offset: 768)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3708, file: !3709, line: 53, baseType: !627, size: 64, offset: 832)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3708, file: !3709, line: 54, baseType: !627, size: 64, offset: 896)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3708, file: !3709, line: 55, baseType: !627, size: 64, offset: 960)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3708, file: !3709, line: 56, baseType: !525, size: 64, offset: 1024)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3708, file: !3709, line: 57, baseType: !525, size: 64, offset: 1088)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3708, file: !3709, line: 58, baseType: !525, size: 64, offset: 1152)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3708, file: !3709, line: 59, baseType: !525, size: 64, offset: 1216)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3708, file: !3709, line: 60, baseType: !525, size: 64, offset: 1280)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3708, file: !3709, line: 61, baseType: !3528, size: 64, offset: 1344)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3708, file: !3709, line: 62, baseType: !874, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3708, file: !3709, line: 63, baseType: !874, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3689, file: !244, line: 583, baseType: !874, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3689, file: !244, line: 584, baseType: !874, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3689, file: !244, line: 585, baseType: !874, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3689, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3689, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3689, file: !244, line: 592, baseType: !619, size: 512, offset: 576)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3689, file: !244, line: 593, baseType: !302, size: 64, offset: 1088)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3689, file: !244, line: 594, baseType: !1788, size: 256, offset: 1152)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3689, file: !244, line: 595, baseType: !1630, size: 128, offset: 1408)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3689, file: !244, line: 596, baseType: !3716, size: 64, offset: 1536)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3689, file: !244, line: 597, baseType: !550, size: 32, offset: 1600)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3689, file: !244, line: 598, baseType: !550, size: 32, offset: 1632)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3689, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3689, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3689, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3689, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3689, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3689, file: !244, line: 604, baseType: !874, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3689, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3689, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3689, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3689, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3689, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3689, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3689, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3689, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3689, file: !244, line: 613, baseType: !309, size: 32, offset: 1792)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3689, file: !244, line: 614, baseType: !309, size: 32, offset: 1824)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3689, file: !244, line: 615, baseType: !302, size: 64, offset: 1856)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3689, file: !244, line: 616, baseType: !302, size: 64, offset: 1920)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3689, file: !244, line: 617, baseType: !302, size: 64, offset: 1984)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3689, file: !244, line: 618, baseType: !302, size: 64, offset: 2048)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3689, file: !244, line: 620, baseType: !3777, size: 64, offset: 2112)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3779)
!3779 = !{!3780, !3781, !3782, !3783}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3778, file: !244, line: 537, baseType: !1131)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3778, file: !244, line: 538, baseType: !7, size: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3778, file: !244, line: 540, baseType: !575, size: 128, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3778, file: !244, line: 543, baseType: !3784, size: 64, offset: 192)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3689, file: !244, line: 621, baseType: !3787, size: 64, offset: 2176)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !3528, !307}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3689, file: !244, line: 622, baseType: !3791, size: 64, offset: 2240)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3524, file: !237, line: 486, baseType: !3794, size: 64, offset: 4096)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3796)
!3796 = !{!3797, !3798, !3799, !3803, !3804, !3805}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3795, file: !244, line: 643, baseType: !3556, size: 1472)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3795, file: !244, line: 644, baseType: !3559, size: 64, offset: 1472)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3795, file: !244, line: 645, baseType: !3800, size: 64, offset: 1536)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{null, !3528, !874}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3795, file: !244, line: 646, baseType: !3559, size: 64, offset: 1600)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3795, file: !244, line: 647, baseType: !3550, size: 64, offset: 1664)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3795, file: !244, line: 648, baseType: !3550, size: 64, offset: 1728)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3524, file: !237, line: 493, baseType: !3807, size: 64, offset: 4160)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3809)
!3809 = !{!3810, !3811, !3812, !3985, !3986, !3987, !3988, !3989, !3990, !3993, !3994, !3995, !3996, !3997, !3998, !3999}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3808, file: !258, line: 163, baseType: !575, size: 128)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3808, file: !258, line: 164, baseType: !325, size: 64, offset: 128)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3808, file: !258, line: 165, baseType: !3813, size: 64, offset: 192)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3815)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3816)
!3816 = !{!3817, !3935, !3946, !3951, !3955, !3962, !3966, !3970, !3977, !3981}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3815, file: !258, line: 106, baseType: !3818, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!309, !3807, !3821, !257}
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3823, line: 51, size: 1344, elements: !3824)
!3823 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3824 = !{!3825, !3826, !3828, !3829, !3919, !3928, !3929, !3930, !3931, !3932, !3933, !3934}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3822, file: !3823, line: 52, baseType: !325, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3822, file: !3823, line: 53, baseType: !3827, size: 32, offset: 64)
!3827 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3823, line: 28, baseType: !482)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3822, file: !3823, line: 54, baseType: !325, size: 64, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3822, file: !3823, line: 55, baseType: !3830, size: 192, offset: 192)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3831, line: 17, size: 192, elements: !3832)
!3831 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3832 = !{!3833, !3835, !3918}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3830, file: !3831, line: 18, baseType: !3834, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3830, file: !3831, line: 19, baseType: !3836, size: 64, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3838)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3831, line: 110, size: 1152, elements: !3839)
!3839 = !{!3840, !3844, !3848, !3854, !3860, !3864, !3868, !3873, !3877, !3878, !3882, !3886, !3890, !3901, !3902, !3903, !3904, !3914}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3838, file: !3831, line: 111, baseType: !3841, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!3834, !3834}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3838, file: !3831, line: 112, baseType: !3845, size: 64, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{null, !3834}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3838, file: !3831, line: 113, baseType: !3849, size: 64, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!874, !3852}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3830)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3838, file: !3831, line: 114, baseType: !3855, size: 64, offset: 192)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!2236, !3852, !3858}
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3524)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3838, file: !3831, line: 116, baseType: !3861, size: 64, offset: 256)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!874, !3852, !325}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3838, file: !3831, line: 118, baseType: !3865, size: 64, offset: 320)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!309, !3852, !325, !7, !300, !963}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3838, file: !3831, line: 123, baseType: !3869, size: 64, offset: 384)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!309, !3852, !325, !3872, !963}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3838, file: !3831, line: 126, baseType: !3874, size: 64, offset: 448)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!325, !3852}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3838, file: !3831, line: 127, baseType: !3874, size: 64, offset: 512)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3838, file: !3831, line: 128, baseType: !3879, size: 64, offset: 576)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!3834, !3852}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3838, file: !3831, line: 130, baseType: !3883, size: 64, offset: 640)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!3834, !3852, !3834}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3838, file: !3831, line: 133, baseType: !3887, size: 64, offset: 704)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!3834, !3852, !325}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3838, file: !3831, line: 135, baseType: !3891, size: 64, offset: 768)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!309, !3852, !325, !325, !7, !7, !3894}
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3831, line: 43, size: 640, elements: !3896)
!3896 = !{!3897, !3898, !3899}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3895, file: !3831, line: 44, baseType: !3834, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3895, file: !3831, line: 45, baseType: !7, size: 32, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3895, file: !3831, line: 46, baseType: !3900, size: 512, offset: 128)
!3900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 512, elements: !657)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3838, file: !3831, line: 140, baseType: !3883, size: 64, offset: 832)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3838, file: !3831, line: 143, baseType: !3879, size: 64, offset: 896)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3838, file: !3831, line: 145, baseType: !3841, size: 64, offset: 960)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3838, file: !3831, line: 146, baseType: !3905, size: 64, offset: 1024)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!309, !3852, !3908}
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3831, line: 29, size: 128, elements: !3910)
!3910 = !{!3911, !3912, !3913}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3909, file: !3831, line: 30, baseType: !7, size: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3909, file: !3831, line: 31, baseType: !7, size: 32, offset: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3909, file: !3831, line: 32, baseType: !3852, size: 64, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3838, file: !3831, line: 148, baseType: !3915, size: 64, offset: 1088)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!309, !3852, !3528}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3830, file: !3831, line: 20, baseType: !3528, size: 64, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3822, file: !3823, line: 57, baseType: !3920, size: 64, offset: 384)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3823, line: 31, size: 704, elements: !3922)
!3922 = !{!3923, !3924, !3925, !3926, !3927}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3921, file: !3823, line: 32, baseType: !347, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3921, file: !3823, line: 33, baseType: !309, size: 32, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3921, file: !3823, line: 34, baseType: !300, size: 64, offset: 128)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3921, file: !3823, line: 35, baseType: !3920, size: 64, offset: 192)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3921, file: !3823, line: 43, baseType: !2198, size: 448, offset: 256)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3822, file: !3823, line: 58, baseType: !3920, size: 64, offset: 448)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3822, file: !3823, line: 59, baseType: !3821, size: 64, offset: 512)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3822, file: !3823, line: 60, baseType: !3821, size: 64, offset: 576)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3822, file: !3823, line: 61, baseType: !3821, size: 64, offset: 640)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3822, file: !3823, line: 63, baseType: !2104, size: 512, offset: 704)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3822, file: !3823, line: 65, baseType: !525, size: 64, offset: 1216)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3822, file: !3823, line: 66, baseType: !300, size: 64, offset: 1280)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3815, file: !258, line: 108, baseType: !3936, size: 64, offset: 64)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!309, !3807, !3939, !257}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !3941)
!3941 = !{!3942, !3943, !3944}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3940, file: !258, line: 64, baseType: !3834, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3940, file: !258, line: 65, baseType: !309, size: 32, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3940, file: !258, line: 66, baseType: !3945, size: 512, offset: 96)
!3945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 512, elements: !1676)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3815, file: !258, line: 110, baseType: !3947, size: 64, offset: 128)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!309, !3807, !7, !3950}
!3950 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !299, line: 164, baseType: !525)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3815, file: !258, line: 111, baseType: !3952, size: 64, offset: 192)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{null, !3807, !7}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3815, file: !258, line: 112, baseType: !3956, size: 64, offset: 256)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!309, !3807, !3821, !3959, !7, !3961, !381}
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3815, file: !258, line: 117, baseType: !3963, size: 64, offset: 320)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!309, !3807, !7, !7, !300}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3815, file: !258, line: 119, baseType: !3967, size: 64, offset: 384)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{null, !3807, !7, !7}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3815, file: !258, line: 121, baseType: !3971, size: 64, offset: 448)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!309, !3807, !3974, !874}
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3976, line: 11, flags: DIFlagFwdDecl)
!3976 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3815, file: !258, line: 122, baseType: !3978, size: 64, offset: 512)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{null, !3807, !3974}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3815, file: !258, line: 123, baseType: !3982, size: 64, offset: 576)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!309, !3807, !3939, !3961, !381}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3808, file: !258, line: 166, baseType: !300, size: 64, offset: 256)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3808, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3808, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3808, file: !258, line: 171, baseType: !3834, size: 64, offset: 384)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3808, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3808, file: !258, line: 173, baseType: !3991, size: 64, offset: 512)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3808, file: !258, line: 175, baseType: !3807, size: 64, offset: 576)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3808, file: !258, line: 182, baseType: !3950, size: 64, offset: 640)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3808, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3808, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3808, file: !258, line: 185, baseType: !1127, size: 128, offset: 768)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3808, file: !258, line: 186, baseType: !1398, size: 192, offset: 896)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3808, file: !258, line: 187, baseType: !4000, offset: 1088)
!4000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2822)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3524, file: !237, line: 499, baseType: !575, size: 128, offset: 4224)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3524, file: !237, line: 502, baseType: !4003, size: 64, offset: 4352)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4005)
!4005 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3524, file: !237, line: 504, baseType: !4007, size: 64, offset: 4416)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3524, file: !237, line: 505, baseType: !302, size: 64, offset: 4480)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3524, file: !237, line: 510, baseType: !302, size: 64, offset: 4544)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3524, file: !237, line: 511, baseType: !4011, size: 64, offset: 4608)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4013)
!4013 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3524, file: !237, line: 513, baseType: !4015, size: 64, offset: 4672)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !4017)
!4017 = !{!4018, !4019}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4016, file: !237, line: 293, baseType: !7, size: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4016, file: !237, line: 294, baseType: !525, size: 64, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3524, file: !237, line: 515, baseType: !575, size: 128, offset: 4736)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3524, file: !237, line: 526, baseType: !4022, offset: 4864)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4023, line: 5, elements: !512)
!4023 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3524, file: !237, line: 528, baseType: !3821, size: 64, offset: 4864)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3524, file: !237, line: 529, baseType: !3834, size: 64, offset: 4928)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3524, file: !237, line: 534, baseType: !897, size: 32, offset: 4992)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3524, file: !237, line: 535, baseType: !482, size: 32, offset: 5024)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3524, file: !237, line: 537, baseType: !1131, offset: 5056)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3524, file: !237, line: 538, baseType: !575, size: 128, offset: 5056)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3524, file: !237, line: 540, baseType: !4031, size: 64, offset: 5184)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4033, line: 54, size: 960, elements: !4034)
!4033 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4034 = !{!4035, !4036, !4037, !4038, !4039, !4040, !4041, !4045, !4049, !4050, !4051, !4052, !4056, !4060, !4061}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4032, file: !4033, line: 55, baseType: !325, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4032, file: !4033, line: 56, baseType: !329, size: 64, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4032, file: !4033, line: 58, baseType: !2183, size: 64, offset: 128)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4032, file: !4033, line: 59, baseType: !2183, size: 64, offset: 192)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4032, file: !4033, line: 60, baseType: !2110, size: 64, offset: 256)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4032, file: !4033, line: 62, baseType: !3541, size: 64, offset: 320)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4032, file: !4033, line: 63, baseType: !4042, size: 64, offset: 384)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!347, !3528, !3548}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4032, file: !4033, line: 65, baseType: !4046, size: 64, offset: 448)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{null, !4031}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4032, file: !4033, line: 66, baseType: !3550, size: 64, offset: 512)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4032, file: !4033, line: 68, baseType: !3559, size: 64, offset: 576)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4032, file: !4033, line: 70, baseType: !2219, size: 64, offset: 640)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4032, file: !4033, line: 71, baseType: !4053, size: 64, offset: 704)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!2236, !3528}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4032, file: !4033, line: 73, baseType: !4057, size: 64, offset: 768)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{null, !3528, !2253, !2254}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4032, file: !4033, line: 75, baseType: !3554, size: 64, offset: 832)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4032, file: !4033, line: 77, baseType: !3671, size: 64, offset: 896)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3524, file: !237, line: 541, baseType: !2183, size: 64, offset: 5248)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3524, file: !237, line: 543, baseType: !3550, size: 64, offset: 5312)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3524, file: !237, line: 544, baseType: !4065, size: 64, offset: 5376)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3524, file: !237, line: 545, baseType: !4068, size: 64, offset: 5440)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3524, file: !237, line: 547, baseType: !874, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3524, file: !237, line: 548, baseType: !874, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3524, file: !237, line: 549, baseType: !874, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3524, file: !237, line: 550, baseType: !874, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !440, file: !441, line: 709, baseType: !525, size: 64, offset: 6336)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !440, file: !441, line: 713, baseType: !309, size: 32, offset: 6400)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !440, file: !441, line: 714, baseType: !4077, size: 384, offset: 6432)
!4077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 384, elements: !4078)
!4078 = !{!4079}
!4079 = !DISubrange(count: 48)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !440, file: !441, line: 715, baseType: !2794, size: 192, offset: 6848)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !440, file: !441, line: 717, baseType: !1398, size: 192, offset: 7040)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !440, file: !441, line: 718, baseType: !575, size: 128, offset: 7232)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !440, file: !441, line: 720, baseType: !4084, size: 64, offset: 7360)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !441, line: 618, size: 832, elements: !4086)
!4086 = !{!4087, !4091, !4092, !4096, !4097, !4098, !4099, !4103, !4104, !4107, !4108, !4111, !4114}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4085, file: !441, line: 619, baseType: !4088, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!309, !439}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4085, file: !441, line: 621, baseType: !4088, size: 64, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4085, file: !441, line: 622, baseType: !4093, size: 64, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{null, !439, !309}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4085, file: !441, line: 623, baseType: !4088, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4085, file: !441, line: 624, baseType: !4093, size: 64, offset: 256)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4085, file: !441, line: 625, baseType: !4088, size: 64, offset: 320)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4085, file: !441, line: 627, baseType: !4100, size: 64, offset: 384)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{null, !439}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4085, file: !441, line: 628, baseType: !4100, size: 64, offset: 448)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4085, file: !441, line: 631, baseType: !4105, size: 64, offset: 512)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !441, line: 631, flags: DIFlagFwdDecl)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4085, file: !441, line: 632, baseType: !4105, size: 64, offset: 576)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4085, file: !441, line: 633, baseType: !4109, size: 64, offset: 640)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !441, line: 633, flags: DIFlagFwdDecl)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4085, file: !441, line: 634, baseType: !4112, size: 64, offset: 704)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !441, line: 634, flags: DIFlagFwdDecl)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4085, file: !441, line: 635, baseType: !4112, size: 64, offset: 768)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !440, file: !441, line: 721, baseType: !4116, size: 64, offset: 7424)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4118)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !441, line: 664, size: 192, elements: !4119)
!4119 = !{!4120, !4121, !4122, !4123, !4124, !4125}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4118, file: !441, line: 665, baseType: !302, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4118, file: !441, line: 666, baseType: !309, size: 32, offset: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4118, file: !441, line: 667, baseType: !354, size: 16, offset: 96)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4118, file: !441, line: 668, baseType: !354, size: 16, offset: 112)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4118, file: !441, line: 669, baseType: !354, size: 16, offset: 128)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4118, file: !441, line: 670, baseType: !354, size: 16, offset: 144)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !440, file: !441, line: 723, baseType: !3807, size: 64, offset: 7488)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !436, file: !3, line: 47, baseType: !4128, size: 64, offset: 64)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4130)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stv0299_config", file: !4131, line: 47, size: 384, elements: !4132)
!4131 = !DIFile(filename: "drivers/media/dvb-frontends/stv0299.h", directory: "/home/lizy2001/genbc/linux")
!4132 = !{!4133, !4134, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4465}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4130, file: !4131, line: 50, baseType: !314, size: 8)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "inittab", scope: !4130, file: !4131, line: 56, baseType: !4135, size: 64, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "mclk", scope: !4130, file: !4131, line: 59, baseType: !482, size: 32, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "invert", scope: !4130, file: !4131, line: 62, baseType: !314, size: 1, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "skip_reinit", scope: !4130, file: !4131, line: 65, baseType: !314, size: 1, offset: 161, flags: DIFlagBitField, extraData: i64 160)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "lock_output", scope: !4130, file: !4131, line: 68, baseType: !314, size: 2, offset: 162, flags: DIFlagBitField, extraData: i64 160)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "volt13_op0_op1", scope: !4130, file: !4131, line: 71, baseType: !314, size: 1, offset: 164, flags: DIFlagBitField, extraData: i64 160)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "op0_off", scope: !4130, file: !4131, line: 74, baseType: !314, size: 1, offset: 165, flags: DIFlagBitField, extraData: i64 160)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4130, file: !4131, line: 77, baseType: !309, size: 32, offset: 192)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "set_symbol_rate", scope: !4130, file: !4131, line: 80, baseType: !4145, size: 64, offset: 256)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!309, !4148, !482, !482}
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !4150)
!4150 = !{!4151, !4152, !4419, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4463, !4464}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4149, file: !51, line: 687, baseType: !2395, size: 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4149, file: !51, line: 688, baseType: !4153, size: 6016, offset: 64)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !4154)
!4154 = !{!4155, !4167, !4169, !4173, !4174, !4175, !4179, !4180, !4184, !4189, !4193, !4194, !4204, !4281, !4285, !4289, !4294, !4295, !4296, !4297, !4307, !4318, !4322, !4326, !4330, !4334, !4338, !4342, !4343, !4344, !4348, !4401}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4153, file: !51, line: 436, baseType: !4156, size: 1280)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !4157)
!4157 = !{!4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4156, file: !51, line: 339, baseType: !3617, size: 1024)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4156, file: !51, line: 340, baseType: !482, size: 32, offset: 1024)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4156, file: !51, line: 341, baseType: !482, size: 32, offset: 1056)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !4156, file: !51, line: 342, baseType: !482, size: 32, offset: 1088)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !4156, file: !51, line: 343, baseType: !482, size: 32, offset: 1120)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !4156, file: !51, line: 344, baseType: !482, size: 32, offset: 1152)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !4156, file: !51, line: 345, baseType: !482, size: 32, offset: 1184)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !4156, file: !51, line: 346, baseType: !482, size: 32, offset: 1216)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !4156, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !4153, file: !51, line: 438, baseType: !4168, size: 64, offset: 1280)
!4168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 64, elements: !657)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4153, file: !51, line: 440, baseType: !4170, size: 64, offset: 1344)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !4148}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4153, file: !51, line: 441, baseType: !4170, size: 64, offset: 1408)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !4153, file: !51, line: 442, baseType: !4170, size: 64, offset: 1472)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4153, file: !51, line: 444, baseType: !4176, size: 64, offset: 1536)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!309, !4148}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4153, file: !51, line: 445, baseType: !4176, size: 64, offset: 1600)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4153, file: !51, line: 447, baseType: !4181, size: 64, offset: 1664)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!309, !4148, !4135, !309}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !4153, file: !51, line: 450, baseType: !4185, size: 64, offset: 1728)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!309, !4148, !874, !7, !381, !4188}
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !4153, file: !51, line: 457, baseType: !4190, size: 64, offset: 1792)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!50, !4148}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !4153, file: !51, line: 460, baseType: !4176, size: 64, offset: 1856)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !4153, file: !51, line: 461, baseType: !4195, size: 64, offset: 1920)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!309, !4148, !4198}
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !4200)
!4200 = !{!4201, !4202, !4203}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4199, file: !51, line: 70, baseType: !309, size: 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4199, file: !51, line: 71, baseType: !309, size: 32, offset: 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4199, file: !51, line: 72, baseType: !309, size: 32, offset: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !4153, file: !51, line: 463, baseType: !4205, size: 64, offset: 1984)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!309, !4148, !4208}
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !4210)
!4210 = !{!4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4274, !4275, !4276, !4277, !4278, !4279, !4280}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4209, file: !51, line: 587, baseType: !482, size: 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4209, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4209, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4209, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4209, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4209, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4209, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4209, file: !51, line: 595, baseType: !482, size: 32, offset: 224)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4209, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4209, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4209, file: !51, line: 598, baseType: !482, size: 32, offset: 320)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4209, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4209, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4209, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4209, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4209, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4209, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4209, file: !51, line: 610, baseType: !314, size: 8, offset: 544)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4209, file: !51, line: 611, baseType: !314, size: 8, offset: 552)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4209, file: !51, line: 612, baseType: !314, size: 8, offset: 560)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4209, file: !51, line: 613, baseType: !482, size: 32, offset: 576)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4209, file: !51, line: 614, baseType: !482, size: 32, offset: 608)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4209, file: !51, line: 615, baseType: !314, size: 8, offset: 640)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4209, file: !51, line: 621, baseType: !4235, size: 384, offset: 672)
!4235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4236, size: 384, elements: !1039)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4209, file: !51, line: 616, size: 128, elements: !4237)
!4237 = !{!4238, !4239, !4240, !4241}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4236, file: !51, line: 617, baseType: !314, size: 8)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4236, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4236, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4236, file: !51, line: 620, baseType: !314, size: 8, offset: 96)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4209, file: !51, line: 624, baseType: !482, size: 32, offset: 1056)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4209, file: !51, line: 627, baseType: !482, size: 32, offset: 1088)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4209, file: !51, line: 630, baseType: !314, size: 8, offset: 1120)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4209, file: !51, line: 631, baseType: !314, size: 8, offset: 1128)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4209, file: !51, line: 632, baseType: !314, size: 8, offset: 1136)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4209, file: !51, line: 633, baseType: !314, size: 8, offset: 1144)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4209, file: !51, line: 634, baseType: !314, size: 8, offset: 1152)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4209, file: !51, line: 635, baseType: !314, size: 8, offset: 1160)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4209, file: !51, line: 637, baseType: !314, size: 8, offset: 1168)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4209, file: !51, line: 638, baseType: !314, size: 8, offset: 1176)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4209, file: !51, line: 639, baseType: !314, size: 8, offset: 1184)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4209, file: !51, line: 640, baseType: !314, size: 8, offset: 1192)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4209, file: !51, line: 641, baseType: !314, size: 8, offset: 1200)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4209, file: !51, line: 642, baseType: !314, size: 8, offset: 1208)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4209, file: !51, line: 643, baseType: !314, size: 8, offset: 1216)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4209, file: !51, line: 644, baseType: !314, size: 8, offset: 1224)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4209, file: !51, line: 645, baseType: !314, size: 8, offset: 1232)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4209, file: !51, line: 647, baseType: !482, size: 32, offset: 1248)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4209, file: !51, line: 650, baseType: !4261, size: 296, offset: 1280)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !4262)
!4262 = !{!4263, !4264}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4261, file: !6, line: 826, baseType: !315, size: 8)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4261, file: !6, line: 827, baseType: !4265, size: 288, offset: 8)
!4265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4266, size: 288, elements: !2468)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !4267)
!4267 = !{!4268, !4269}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4266, file: !6, line: 804, baseType: !315, size: 8)
!4269 = !DIDerivedType(tag: DW_TAG_member, scope: !4266, file: !6, line: 805, baseType: !4270, size: 64, offset: 8)
!4270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4266, file: !6, line: 805, size: 64, elements: !4271)
!4271 = !{!4272, !4273}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4270, file: !6, line: 806, baseType: !304, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4270, file: !6, line: 807, baseType: !610, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4209, file: !51, line: 651, baseType: !4261, size: 296, offset: 1576)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4209, file: !51, line: 652, baseType: !4261, size: 296, offset: 1872)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4209, file: !51, line: 653, baseType: !4261, size: 296, offset: 2168)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4209, file: !51, line: 654, baseType: !4261, size: 296, offset: 2464)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4209, file: !51, line: 655, baseType: !4261, size: 296, offset: 2760)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4209, file: !51, line: 656, baseType: !4261, size: 296, offset: 3056)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4209, file: !51, line: 657, baseType: !4261, size: 296, offset: 3352)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !4153, file: !51, line: 466, baseType: !4282, size: 64, offset: 2048)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!309, !4148, !4188}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !4153, file: !51, line: 467, baseType: !4286, size: 64, offset: 2112)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!309, !4148, !2861}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !4153, file: !51, line: 468, baseType: !4290, size: 64, offset: 2176)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!309, !4148, !4293}
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !4153, file: !51, line: 469, baseType: !4290, size: 64, offset: 2240)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !4153, file: !51, line: 470, baseType: !4286, size: 64, offset: 2304)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !4153, file: !51, line: 472, baseType: !4176, size: 64, offset: 2368)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !4153, file: !51, line: 473, baseType: !4298, size: 64, offset: 2432)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!309, !4148, !4301}
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !4303)
!4303 = !{!4304, !4306}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4302, file: !6, line: 174, baseType: !4305, size: 48)
!4305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 48, elements: !2564)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4302, file: !6, line: 175, baseType: !315, size: 8, offset: 48)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !4153, file: !51, line: 474, baseType: !4308, size: 64, offset: 2496)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!309, !4148, !4311}
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !4313)
!4313 = !{!4314, !4316, !4317}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4312, file: !6, line: 196, baseType: !4315, size: 32)
!4315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 32, elements: !2468)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4312, file: !6, line: 197, baseType: !315, size: 8, offset: 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4312, file: !6, line: 198, baseType: !309, size: 32, offset: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !4153, file: !51, line: 475, baseType: !4319, size: 64, offset: 2560)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!309, !4148, !171}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !4153, file: !51, line: 477, baseType: !4323, size: 64, offset: 2624)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!309, !4148, !78}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !4153, file: !51, line: 478, baseType: !4327, size: 64, offset: 2688)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!309, !4148, !73}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !4153, file: !51, line: 480, baseType: !4331, size: 64, offset: 2752)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!309, !4148, !542}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !4153, file: !51, line: 481, baseType: !4335, size: 64, offset: 2816)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!309, !4148, !525}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4153, file: !51, line: 482, baseType: !4339, size: 64, offset: 2880)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!309, !4148, !309}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !4153, file: !51, line: 483, baseType: !4339, size: 64, offset: 2944)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !4153, file: !51, line: 484, baseType: !4176, size: 64, offset: 3008)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !4153, file: !51, line: 490, baseType: !4345, size: 64, offset: 3072)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!175, !4148}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !4153, file: !51, line: 492, baseType: !4349, size: 2304, offset: 3136)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !4350)
!4350 = !{!4351, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4378, !4382, !4383, !4384, !4385, !4386, !4387, !4392, !4396, !4400}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4349, file: !51, line: 228, baseType: !4352, size: 1216)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !4353)
!4353 = !{!4354, !4355, !4356, !4357, !4358, !4359, !4360}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4352, file: !51, line: 89, baseType: !3617, size: 1024)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4352, file: !51, line: 91, baseType: !482, size: 32, offset: 1024)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4352, file: !51, line: 92, baseType: !482, size: 32, offset: 1056)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4352, file: !51, line: 93, baseType: !482, size: 32, offset: 1088)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4352, file: !51, line: 95, baseType: !482, size: 32, offset: 1120)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4352, file: !51, line: 96, baseType: !482, size: 32, offset: 1152)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4352, file: !51, line: 97, baseType: !482, size: 32, offset: 1184)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4349, file: !51, line: 230, baseType: !4170, size: 64, offset: 1216)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4349, file: !51, line: 231, baseType: !4176, size: 64, offset: 1280)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4349, file: !51, line: 232, baseType: !4176, size: 64, offset: 1344)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4349, file: !51, line: 233, baseType: !4176, size: 64, offset: 1408)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4349, file: !51, line: 234, baseType: !4176, size: 64, offset: 1472)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4349, file: !51, line: 237, baseType: !4176, size: 64, offset: 1536)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4349, file: !51, line: 238, baseType: !4368, size: 64, offset: 1600)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!309, !4148, !4371}
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !4373)
!4373 = !{!4374, !4375, !4376, !4377}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4372, file: !51, line: 115, baseType: !7, size: 32)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4372, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4372, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4372, file: !51, line: 118, baseType: !302, size: 64, offset: 128)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4349, file: !51, line: 240, baseType: !4379, size: 64, offset: 1664)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!309, !4148, !300}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4349, file: !51, line: 242, baseType: !4286, size: 64, offset: 1728)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4349, file: !51, line: 243, baseType: !4286, size: 64, offset: 1792)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4349, file: !51, line: 244, baseType: !4286, size: 64, offset: 1856)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4349, file: !51, line: 248, baseType: !4286, size: 64, offset: 1920)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4349, file: !51, line: 249, baseType: !4290, size: 64, offset: 1984)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4349, file: !51, line: 250, baseType: !4388, size: 64, offset: 2048)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!309, !4148, !4391}
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4349, file: !51, line: 258, baseType: !4393, size: 64, offset: 2112)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!309, !4148, !313, !309}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4349, file: !51, line: 267, baseType: !4397, size: 64, offset: 2176)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!309, !4148, !482}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4349, file: !51, line: 268, baseType: !4397, size: 64, offset: 2240)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !4153, file: !51, line: 493, baseType: !4402, size: 576, offset: 5440)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !4403)
!4403 = !{!4404, !4408, !4412, !4413, !4414, !4415, !4416, !4417, !4418}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4402, file: !51, line: 304, baseType: !4405, size: 64)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !4406)
!4406 = !{!4407}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4405, file: !51, line: 277, baseType: !347, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4402, file: !51, line: 306, baseType: !4409, size: 64, offset: 64)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{null, !4148, !4371}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4402, file: !51, line: 308, baseType: !4290, size: 64, offset: 128)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4402, file: !51, line: 309, baseType: !4388, size: 64, offset: 192)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4402, file: !51, line: 310, baseType: !4170, size: 64, offset: 256)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4402, file: !51, line: 311, baseType: !4170, size: 64, offset: 320)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4402, file: !51, line: 312, baseType: !4170, size: 64, offset: 384)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4402, file: !51, line: 313, baseType: !4339, size: 64, offset: 448)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4402, file: !51, line: 316, baseType: !4379, size: 64, offset: 512)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !4149, file: !51, line: 689, baseType: !4420, size: 64, offset: 6080)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !4422)
!4422 = !{!4423, !4424, !4425, !4426, !4427, !4429, !4430, !4431, !4432, !4433, !4452}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4421, file: !272, line: 102, baseType: !309, size: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4421, file: !272, line: 103, baseType: !575, size: 128, offset: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4421, file: !272, line: 104, baseType: !575, size: 128, offset: 192)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4421, file: !272, line: 105, baseType: !325, size: 64, offset: 320)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !4421, file: !272, line: 106, baseType: !4428, size: 48, offset: 384)
!4428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 48, elements: !2564)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4421, file: !272, line: 107, baseType: !300, size: 64, offset: 448)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4421, file: !272, line: 109, baseType: !3528, size: 64, offset: 512)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4421, file: !272, line: 111, baseType: !329, size: 64, offset: 576)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !4421, file: !272, line: 113, baseType: !309, size: 32, offset: 640)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !4421, file: !272, line: 114, baseType: !4434, size: 64, offset: 704)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4436)
!4436 = !{!4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4451}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4435, file: !272, line: 158, baseType: !575, size: 128)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4435, file: !272, line: 159, baseType: !1846, size: 64, offset: 128)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4435, file: !272, line: 160, baseType: !4420, size: 64, offset: 192)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4435, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4435, file: !272, line: 162, baseType: !309, size: 32, offset: 288)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4435, file: !272, line: 163, baseType: !482, size: 32, offset: 320)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4435, file: !272, line: 167, baseType: !309, size: 32, offset: 352)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4435, file: !272, line: 168, baseType: !309, size: 32, offset: 384)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4435, file: !272, line: 169, baseType: !309, size: 32, offset: 416)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4435, file: !272, line: 171, baseType: !1630, size: 128, offset: 448)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4435, file: !272, line: 173, baseType: !4448, size: 64, offset: 576)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!309, !751, !7, !300}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4435, file: !272, line: 187, baseType: !300, size: 64, offset: 640)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !4421, file: !272, line: 115, baseType: !1398, size: 192, offset: 768)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !4149, file: !51, line: 690, baseType: !300, size: 64, offset: 6144)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !4149, file: !51, line: 691, baseType: !300, size: 64, offset: 6208)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !4149, file: !51, line: 692, baseType: !300, size: 64, offset: 6272)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !4149, file: !51, line: 693, baseType: !300, size: 64, offset: 6336)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !4149, file: !51, line: 694, baseType: !300, size: 64, offset: 6400)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !4149, file: !51, line: 695, baseType: !4209, size: 3648, offset: 6464)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4149, file: !51, line: 698, baseType: !4460, size: 64, offset: 10112)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!309, !300, !309, !309, !309}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4149, file: !51, line: 699, baseType: !309, size: 32, offset: 10176)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4149, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "set_ts_params", scope: !4130, file: !4131, line: 83, baseType: !4339, size: 64, offset: 320)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !436, file: !3, line: 48, baseType: !4149, size: 10240, offset: 128)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "initialised", scope: !436, file: !3, line: 50, baseType: !314, size: 1, offset: 10368, flags: DIFlagBitField, extraData: i64 10368)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_frequency", scope: !436, file: !3, line: 51, baseType: !482, size: 32, offset: 10400)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !436, file: !3, line: 52, baseType: !482, size: 32, offset: 10432)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !436, file: !3, line: 53, baseType: !87, size: 32, offset: 10464)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "errmode", scope: !436, file: !3, line: 54, baseType: !309, size: 32, offset: 10496)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "ucblocks", scope: !436, file: !3, line: 55, baseType: !482, size: 32, offset: 10528)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "mcr_reg", scope: !436, file: !3, line: 56, baseType: !314, size: 8, offset: 10560)
!4474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 160, elements: !4475)
!4475 = !{!4476}
!4476 = !DISubrange(count: 5)
!4477 = !DIGlobalVariableExpression(var: !4478, expr: !DIExpression())
!4478 = distinct !DIGlobalVariable(name: "__param_str_debug_legacy_dish_switch", scope: !2, file: !3, line: 744, type: !4479, isLocal: true, isDefinition: true)
!4479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 264, elements: !4480)
!4480 = !{!4481}
!4481 = !DISubrange(count: 33)
!4482 = !DIGlobalVariableExpression(var: !4483, expr: !DIExpression())
!4483 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 747, type: !4484, isLocal: true, isDefinition: true)
!4484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 112, elements: !4485)
!4485 = !{!4486}
!4486 = !DISubrange(count: 14)
!4487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4153)
!4488 = !{i32 7, !"Dwarf Version", i32 4}
!4489 = !{i32 2, !"Debug Info Version", i32 3}
!4490 = !{i32 1, !"wchar_size", i32 2}
!4491 = !{i32 1, !"Code Model", i32 2}
!4492 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4493 = distinct !DISubprogram(name: "stv0299_attach", scope: !3, file: !3, line: 666, type: !4494, scopeLine: 668, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !512)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!4148, !4128, !439}
!4496 = !DILocalVariable(name: "config", arg: 1, scope: !4493, file: !3, line: 666, type: !4128)
!4497 = !DILocation(line: 666, column: 66, scope: !4493)
!4498 = !DILocalVariable(name: "i2c", arg: 2, scope: !4493, file: !3, line: 667, type: !439)
!4499 = !DILocation(line: 667, column: 29, scope: !4493)
!4500 = !DILocalVariable(name: "state", scope: !4493, file: !3, line: 669, type: !435)
!4501 = !DILocation(line: 669, column: 24, scope: !4493)
!4502 = !DILocalVariable(name: "id", scope: !4493, file: !3, line: 670, type: !309)
!4503 = !DILocation(line: 670, column: 6, scope: !4493)
!4504 = !DILocation(line: 673, column: 10, scope: !4493)
!4505 = !DILocation(line: 673, column: 8, scope: !4493)
!4506 = !DILocation(line: 674, column: 6, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 674, column: 6)
!4508 = !DILocation(line: 674, column: 12, scope: !4507)
!4509 = !DILocation(line: 674, column: 6, scope: !4493)
!4510 = !DILocation(line: 674, column: 21, scope: !4507)
!4511 = !DILocation(line: 677, column: 18, scope: !4493)
!4512 = !DILocation(line: 677, column: 2, scope: !4493)
!4513 = !DILocation(line: 677, column: 9, scope: !4493)
!4514 = !DILocation(line: 677, column: 16, scope: !4493)
!4515 = !DILocation(line: 678, column: 15, scope: !4493)
!4516 = !DILocation(line: 678, column: 2, scope: !4493)
!4517 = !DILocation(line: 678, column: 9, scope: !4493)
!4518 = !DILocation(line: 678, column: 13, scope: !4493)
!4519 = !DILocation(line: 679, column: 2, scope: !4493)
!4520 = !DILocation(line: 679, column: 9, scope: !4493)
!4521 = !DILocation(line: 679, column: 21, scope: !4493)
!4522 = !DILocation(line: 680, column: 2, scope: !4493)
!4523 = !DILocation(line: 680, column: 9, scope: !4493)
!4524 = !DILocation(line: 680, column: 25, scope: !4493)
!4525 = !DILocation(line: 681, column: 2, scope: !4493)
!4526 = !DILocation(line: 681, column: 9, scope: !4493)
!4527 = !DILocation(line: 681, column: 21, scope: !4493)
!4528 = !DILocation(line: 682, column: 2, scope: !4493)
!4529 = !DILocation(line: 682, column: 9, scope: !4493)
!4530 = !DILocation(line: 682, column: 19, scope: !4493)
!4531 = !DILocation(line: 683, column: 2, scope: !4493)
!4532 = !DILocation(line: 683, column: 9, scope: !4493)
!4533 = !DILocation(line: 683, column: 17, scope: !4493)
!4534 = !DILocation(line: 686, column: 20, scope: !4493)
!4535 = !DILocation(line: 686, column: 2, scope: !4493)
!4536 = !DILocation(line: 687, column: 2, scope: !4493)
!4537 = !DILocation(line: 688, column: 23, scope: !4493)
!4538 = !DILocation(line: 688, column: 7, scope: !4493)
!4539 = !DILocation(line: 688, column: 5, scope: !4493)
!4540 = !DILocation(line: 692, column: 6, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 692, column: 6)
!4542 = !DILocation(line: 692, column: 9, scope: !4541)
!4543 = !DILocation(line: 692, column: 17, scope: !4541)
!4544 = !DILocation(line: 692, column: 20, scope: !4541)
!4545 = !DILocation(line: 692, column: 23, scope: !4541)
!4546 = !DILocation(line: 692, column: 6, scope: !4493)
!4547 = !DILocation(line: 692, column: 32, scope: !4541)
!4548 = !DILocation(line: 695, column: 10, scope: !4493)
!4549 = !DILocation(line: 695, column: 17, scope: !4493)
!4550 = !DILocation(line: 695, column: 26, scope: !4493)
!4551 = !DILocation(line: 695, column: 2, scope: !4493)
!4552 = !DILocation(line: 696, column: 37, scope: !4493)
!4553 = !DILocation(line: 696, column: 2, scope: !4493)
!4554 = !DILocation(line: 696, column: 9, scope: !4493)
!4555 = !DILocation(line: 696, column: 18, scope: !4493)
!4556 = !DILocation(line: 696, column: 35, scope: !4493)
!4557 = !DILocation(line: 697, column: 10, scope: !4493)
!4558 = !DILocation(line: 697, column: 17, scope: !4493)
!4559 = !DILocation(line: 697, column: 2, scope: !4493)
!4560 = !DILabel(scope: !4493, name: "error", file: !3, line: 699)
!4561 = !DILocation(line: 699, column: 1, scope: !4493)
!4562 = !DILocation(line: 700, column: 8, scope: !4493)
!4563 = !DILocation(line: 700, column: 2, scope: !4493)
!4564 = !DILocation(line: 701, column: 2, scope: !4493)
!4565 = !DILocation(line: 702, column: 1, scope: !4493)
!4566 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 662, type: !4567, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!300, !963, !298}
!4569 = !DILocalVariable(name: "s", arg: 1, scope: !4570, file: !284, line: 445, type: !1308)
!4570 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !284, file: !284, line: 445, type: !4571, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!300, !1308, !298, !963}
!4573 = !DILocation(line: 445, column: 72, scope: !4570, inlinedAt: !4574)
!4574 = distinct !DILocation(line: 552, column: 10, scope: !4575, inlinedAt: !4578)
!4575 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 540, column: 34)
!4576 = distinct !DILexicalBlock(scope: !4577, file: !284, line: 540, column: 6)
!4577 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 538, type: !4567, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!4578 = distinct !DILocation(line: 664, column: 9, scope: !4566)
!4579 = !DILocalVariable(name: "flags", arg: 2, scope: !4570, file: !284, line: 446, type: !298)
!4580 = !DILocation(line: 446, column: 9, scope: !4570, inlinedAt: !4574)
!4581 = !DILocalVariable(name: "size", arg: 3, scope: !4570, file: !284, line: 446, type: !963)
!4582 = !DILocation(line: 446, column: 23, scope: !4570, inlinedAt: !4574)
!4583 = !DILocalVariable(name: "ret", scope: !4570, file: !284, line: 448, type: !300)
!4584 = !DILocation(line: 448, column: 8, scope: !4570, inlinedAt: !4574)
!4585 = !DILocalVariable(name: "flags", arg: 1, scope: !4586, file: !284, line: 318, type: !298)
!4586 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 318, type: !4587, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!283, !298}
!4589 = !DILocation(line: 318, column: 67, scope: !4586, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 553, column: 20, scope: !4575, inlinedAt: !4578)
!4591 = !DILocalVariable(name: "size", arg: 1, scope: !4592, file: !284, line: 346, type: !963)
!4592 = distinct !DISubprogram(name: "kmalloc_index", scope: !284, file: !284, line: 346, type: !4593, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!7, !963}
!4595 = !DILocation(line: 346, column: 58, scope: !4592, inlinedAt: !4596)
!4596 = distinct !DILocation(line: 547, column: 11, scope: !4575, inlinedAt: !4578)
!4597 = !DILocalVariable(name: "size", arg: 1, scope: !4598, file: !284, line: 472, type: !963)
!4598 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !284, file: !284, line: 472, type: !4599, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!300, !963, !298, !7}
!4601 = !DILocation(line: 472, column: 28, scope: !4598, inlinedAt: !4602)
!4602 = distinct !DILocation(line: 481, column: 9, scope: !4603, inlinedAt: !4604)
!4603 = distinct !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 478, type: !4567, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!4604 = distinct !DILocation(line: 545, column: 11, scope: !4605, inlinedAt: !4578)
!4605 = distinct !DILexicalBlock(scope: !4575, file: !284, line: 544, column: 7)
!4606 = !DILocalVariable(name: "flags", arg: 2, scope: !4598, file: !284, line: 472, type: !298)
!4607 = !DILocation(line: 472, column: 40, scope: !4598, inlinedAt: !4602)
!4608 = !DILocalVariable(name: "order", arg: 3, scope: !4598, file: !284, line: 472, type: !7)
!4609 = !DILocation(line: 472, column: 60, scope: !4598, inlinedAt: !4602)
!4610 = !DILocalVariable(name: "size", arg: 1, scope: !4603, file: !284, line: 478, type: !963)
!4611 = !DILocation(line: 478, column: 51, scope: !4603, inlinedAt: !4604)
!4612 = !DILocalVariable(name: "flags", arg: 2, scope: !4603, file: !284, line: 478, type: !298)
!4613 = !DILocation(line: 478, column: 63, scope: !4603, inlinedAt: !4604)
!4614 = !DILocalVariable(name: "order", scope: !4603, file: !284, line: 480, type: !7)
!4615 = !DILocation(line: 480, column: 15, scope: !4603, inlinedAt: !4604)
!4616 = !DILocalVariable(name: "size", arg: 1, scope: !4577, file: !284, line: 538, type: !963)
!4617 = !DILocation(line: 538, column: 45, scope: !4577, inlinedAt: !4578)
!4618 = !DILocalVariable(name: "flags", arg: 2, scope: !4577, file: !284, line: 538, type: !298)
!4619 = !DILocation(line: 538, column: 57, scope: !4577, inlinedAt: !4578)
!4620 = !DILocalVariable(name: "index", scope: !4575, file: !284, line: 542, type: !7)
!4621 = !DILocation(line: 542, column: 16, scope: !4575, inlinedAt: !4578)
!4622 = !DILocalVariable(name: "size", arg: 1, scope: !4566, file: !284, line: 662, type: !963)
!4623 = !DILocation(line: 662, column: 36, scope: !4566)
!4624 = !DILocalVariable(name: "flags", arg: 2, scope: !4566, file: !284, line: 662, type: !298)
!4625 = !DILocation(line: 662, column: 48, scope: !4566)
!4626 = !DILocation(line: 664, column: 17, scope: !4566)
!4627 = !DILocation(line: 664, column: 23, scope: !4566)
!4628 = !DILocation(line: 664, column: 29, scope: !4566)
!4629 = !DILocation(line: 540, column: 27, scope: !4576, inlinedAt: !4578)
!4630 = !DILocation(line: 540, column: 6, scope: !4576, inlinedAt: !4578)
!4631 = !DILocation(line: 540, column: 6, scope: !4577, inlinedAt: !4578)
!4632 = !DILocation(line: 544, column: 7, scope: !4605, inlinedAt: !4578)
!4633 = !DILocation(line: 544, column: 12, scope: !4605, inlinedAt: !4578)
!4634 = !DILocation(line: 544, column: 7, scope: !4575, inlinedAt: !4578)
!4635 = !DILocation(line: 545, column: 25, scope: !4605, inlinedAt: !4578)
!4636 = !DILocation(line: 545, column: 31, scope: !4605, inlinedAt: !4578)
!4637 = !DILocation(line: 480, column: 33, scope: !4603, inlinedAt: !4604)
!4638 = !DILocation(line: 480, column: 23, scope: !4603, inlinedAt: !4604)
!4639 = !DILocation(line: 481, column: 29, scope: !4603, inlinedAt: !4604)
!4640 = !DILocation(line: 481, column: 35, scope: !4603, inlinedAt: !4604)
!4641 = !DILocation(line: 481, column: 42, scope: !4603, inlinedAt: !4604)
!4642 = !DILocation(line: 474, column: 23, scope: !4598, inlinedAt: !4602)
!4643 = !DILocation(line: 474, column: 29, scope: !4598, inlinedAt: !4602)
!4644 = !DILocation(line: 474, column: 36, scope: !4598, inlinedAt: !4602)
!4645 = !DILocation(line: 474, column: 9, scope: !4598, inlinedAt: !4602)
!4646 = !DILocation(line: 545, column: 4, scope: !4605, inlinedAt: !4578)
!4647 = !DILocation(line: 547, column: 25, scope: !4575, inlinedAt: !4578)
!4648 = !DILocation(line: 348, column: 7, scope: !4649, inlinedAt: !4596)
!4649 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 348, column: 6)
!4650 = !DILocation(line: 348, column: 6, scope: !4592, inlinedAt: !4596)
!4651 = !DILocation(line: 349, column: 3, scope: !4649, inlinedAt: !4596)
!4652 = !DILocation(line: 351, column: 6, scope: !4653, inlinedAt: !4596)
!4653 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 351, column: 6)
!4654 = !DILocation(line: 351, column: 11, scope: !4653, inlinedAt: !4596)
!4655 = !DILocation(line: 351, column: 6, scope: !4592, inlinedAt: !4596)
!4656 = !DILocation(line: 352, column: 3, scope: !4653, inlinedAt: !4596)
!4657 = !DILocation(line: 354, column: 32, scope: !4658, inlinedAt: !4596)
!4658 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 354, column: 6)
!4659 = !DILocation(line: 354, column: 37, scope: !4658, inlinedAt: !4596)
!4660 = !DILocation(line: 354, column: 42, scope: !4658, inlinedAt: !4596)
!4661 = !DILocation(line: 354, column: 45, scope: !4658, inlinedAt: !4596)
!4662 = !DILocation(line: 354, column: 50, scope: !4658, inlinedAt: !4596)
!4663 = !DILocation(line: 354, column: 6, scope: !4592, inlinedAt: !4596)
!4664 = !DILocation(line: 355, column: 3, scope: !4658, inlinedAt: !4596)
!4665 = !DILocation(line: 356, column: 32, scope: !4666, inlinedAt: !4596)
!4666 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 356, column: 6)
!4667 = !DILocation(line: 356, column: 37, scope: !4666, inlinedAt: !4596)
!4668 = !DILocation(line: 356, column: 43, scope: !4666, inlinedAt: !4596)
!4669 = !DILocation(line: 356, column: 46, scope: !4666, inlinedAt: !4596)
!4670 = !DILocation(line: 356, column: 51, scope: !4666, inlinedAt: !4596)
!4671 = !DILocation(line: 356, column: 6, scope: !4592, inlinedAt: !4596)
!4672 = !DILocation(line: 357, column: 3, scope: !4666, inlinedAt: !4596)
!4673 = !DILocation(line: 358, column: 6, scope: !4674, inlinedAt: !4596)
!4674 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 358, column: 6)
!4675 = !DILocation(line: 358, column: 11, scope: !4674, inlinedAt: !4596)
!4676 = !DILocation(line: 358, column: 6, scope: !4592, inlinedAt: !4596)
!4677 = !DILocation(line: 358, column: 26, scope: !4674, inlinedAt: !4596)
!4678 = !DILocation(line: 359, column: 6, scope: !4679, inlinedAt: !4596)
!4679 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 359, column: 6)
!4680 = !DILocation(line: 359, column: 11, scope: !4679, inlinedAt: !4596)
!4681 = !DILocation(line: 359, column: 6, scope: !4592, inlinedAt: !4596)
!4682 = !DILocation(line: 359, column: 26, scope: !4679, inlinedAt: !4596)
!4683 = !DILocation(line: 360, column: 6, scope: !4684, inlinedAt: !4596)
!4684 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 360, column: 6)
!4685 = !DILocation(line: 360, column: 11, scope: !4684, inlinedAt: !4596)
!4686 = !DILocation(line: 360, column: 6, scope: !4592, inlinedAt: !4596)
!4687 = !DILocation(line: 360, column: 26, scope: !4684, inlinedAt: !4596)
!4688 = !DILocation(line: 361, column: 6, scope: !4689, inlinedAt: !4596)
!4689 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 361, column: 6)
!4690 = !DILocation(line: 361, column: 11, scope: !4689, inlinedAt: !4596)
!4691 = !DILocation(line: 361, column: 6, scope: !4592, inlinedAt: !4596)
!4692 = !DILocation(line: 361, column: 26, scope: !4689, inlinedAt: !4596)
!4693 = !DILocation(line: 362, column: 6, scope: !4694, inlinedAt: !4596)
!4694 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 362, column: 6)
!4695 = !DILocation(line: 362, column: 11, scope: !4694, inlinedAt: !4596)
!4696 = !DILocation(line: 362, column: 6, scope: !4592, inlinedAt: !4596)
!4697 = !DILocation(line: 362, column: 26, scope: !4694, inlinedAt: !4596)
!4698 = !DILocation(line: 363, column: 6, scope: !4699, inlinedAt: !4596)
!4699 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 363, column: 6)
!4700 = !DILocation(line: 363, column: 11, scope: !4699, inlinedAt: !4596)
!4701 = !DILocation(line: 363, column: 6, scope: !4592, inlinedAt: !4596)
!4702 = !DILocation(line: 363, column: 26, scope: !4699, inlinedAt: !4596)
!4703 = !DILocation(line: 364, column: 6, scope: !4704, inlinedAt: !4596)
!4704 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 364, column: 6)
!4705 = !DILocation(line: 364, column: 11, scope: !4704, inlinedAt: !4596)
!4706 = !DILocation(line: 364, column: 6, scope: !4592, inlinedAt: !4596)
!4707 = !DILocation(line: 364, column: 26, scope: !4704, inlinedAt: !4596)
!4708 = !DILocation(line: 365, column: 6, scope: !4709, inlinedAt: !4596)
!4709 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 365, column: 6)
!4710 = !DILocation(line: 365, column: 11, scope: !4709, inlinedAt: !4596)
!4711 = !DILocation(line: 365, column: 6, scope: !4592, inlinedAt: !4596)
!4712 = !DILocation(line: 365, column: 26, scope: !4709, inlinedAt: !4596)
!4713 = !DILocation(line: 366, column: 6, scope: !4714, inlinedAt: !4596)
!4714 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 366, column: 6)
!4715 = !DILocation(line: 366, column: 11, scope: !4714, inlinedAt: !4596)
!4716 = !DILocation(line: 366, column: 6, scope: !4592, inlinedAt: !4596)
!4717 = !DILocation(line: 366, column: 26, scope: !4714, inlinedAt: !4596)
!4718 = !DILocation(line: 367, column: 6, scope: !4719, inlinedAt: !4596)
!4719 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 367, column: 6)
!4720 = !DILocation(line: 367, column: 11, scope: !4719, inlinedAt: !4596)
!4721 = !DILocation(line: 367, column: 6, scope: !4592, inlinedAt: !4596)
!4722 = !DILocation(line: 367, column: 26, scope: !4719, inlinedAt: !4596)
!4723 = !DILocation(line: 368, column: 6, scope: !4724, inlinedAt: !4596)
!4724 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 368, column: 6)
!4725 = !DILocation(line: 368, column: 11, scope: !4724, inlinedAt: !4596)
!4726 = !DILocation(line: 368, column: 6, scope: !4592, inlinedAt: !4596)
!4727 = !DILocation(line: 368, column: 26, scope: !4724, inlinedAt: !4596)
!4728 = !DILocation(line: 369, column: 6, scope: !4729, inlinedAt: !4596)
!4729 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 369, column: 6)
!4730 = !DILocation(line: 369, column: 11, scope: !4729, inlinedAt: !4596)
!4731 = !DILocation(line: 369, column: 6, scope: !4592, inlinedAt: !4596)
!4732 = !DILocation(line: 369, column: 26, scope: !4729, inlinedAt: !4596)
!4733 = !DILocation(line: 370, column: 6, scope: !4734, inlinedAt: !4596)
!4734 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 370, column: 6)
!4735 = !DILocation(line: 370, column: 11, scope: !4734, inlinedAt: !4596)
!4736 = !DILocation(line: 370, column: 6, scope: !4592, inlinedAt: !4596)
!4737 = !DILocation(line: 370, column: 26, scope: !4734, inlinedAt: !4596)
!4738 = !DILocation(line: 371, column: 6, scope: !4739, inlinedAt: !4596)
!4739 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 371, column: 6)
!4740 = !DILocation(line: 371, column: 11, scope: !4739, inlinedAt: !4596)
!4741 = !DILocation(line: 371, column: 6, scope: !4592, inlinedAt: !4596)
!4742 = !DILocation(line: 371, column: 26, scope: !4739, inlinedAt: !4596)
!4743 = !DILocation(line: 372, column: 6, scope: !4744, inlinedAt: !4596)
!4744 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 372, column: 6)
!4745 = !DILocation(line: 372, column: 11, scope: !4744, inlinedAt: !4596)
!4746 = !DILocation(line: 372, column: 6, scope: !4592, inlinedAt: !4596)
!4747 = !DILocation(line: 372, column: 26, scope: !4744, inlinedAt: !4596)
!4748 = !DILocation(line: 373, column: 6, scope: !4749, inlinedAt: !4596)
!4749 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 373, column: 6)
!4750 = !DILocation(line: 373, column: 11, scope: !4749, inlinedAt: !4596)
!4751 = !DILocation(line: 373, column: 6, scope: !4592, inlinedAt: !4596)
!4752 = !DILocation(line: 373, column: 26, scope: !4749, inlinedAt: !4596)
!4753 = !DILocation(line: 374, column: 6, scope: !4754, inlinedAt: !4596)
!4754 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 374, column: 6)
!4755 = !DILocation(line: 374, column: 11, scope: !4754, inlinedAt: !4596)
!4756 = !DILocation(line: 374, column: 6, scope: !4592, inlinedAt: !4596)
!4757 = !DILocation(line: 374, column: 26, scope: !4754, inlinedAt: !4596)
!4758 = !DILocation(line: 375, column: 6, scope: !4759, inlinedAt: !4596)
!4759 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 375, column: 6)
!4760 = !DILocation(line: 375, column: 11, scope: !4759, inlinedAt: !4596)
!4761 = !DILocation(line: 375, column: 6, scope: !4592, inlinedAt: !4596)
!4762 = !DILocation(line: 375, column: 27, scope: !4759, inlinedAt: !4596)
!4763 = !DILocation(line: 376, column: 6, scope: !4764, inlinedAt: !4596)
!4764 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 376, column: 6)
!4765 = !DILocation(line: 376, column: 11, scope: !4764, inlinedAt: !4596)
!4766 = !DILocation(line: 376, column: 6, scope: !4592, inlinedAt: !4596)
!4767 = !DILocation(line: 376, column: 32, scope: !4764, inlinedAt: !4596)
!4768 = !DILocation(line: 377, column: 6, scope: !4769, inlinedAt: !4596)
!4769 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 377, column: 6)
!4770 = !DILocation(line: 377, column: 11, scope: !4769, inlinedAt: !4596)
!4771 = !DILocation(line: 377, column: 6, scope: !4592, inlinedAt: !4596)
!4772 = !DILocation(line: 377, column: 32, scope: !4769, inlinedAt: !4596)
!4773 = !DILocation(line: 378, column: 6, scope: !4774, inlinedAt: !4596)
!4774 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 378, column: 6)
!4775 = !DILocation(line: 378, column: 11, scope: !4774, inlinedAt: !4596)
!4776 = !DILocation(line: 378, column: 6, scope: !4592, inlinedAt: !4596)
!4777 = !DILocation(line: 378, column: 32, scope: !4774, inlinedAt: !4596)
!4778 = !DILocation(line: 379, column: 6, scope: !4779, inlinedAt: !4596)
!4779 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 379, column: 6)
!4780 = !DILocation(line: 379, column: 11, scope: !4779, inlinedAt: !4596)
!4781 = !DILocation(line: 379, column: 6, scope: !4592, inlinedAt: !4596)
!4782 = !DILocation(line: 379, column: 33, scope: !4779, inlinedAt: !4596)
!4783 = !DILocation(line: 380, column: 6, scope: !4784, inlinedAt: !4596)
!4784 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 380, column: 6)
!4785 = !DILocation(line: 380, column: 11, scope: !4784, inlinedAt: !4596)
!4786 = !DILocation(line: 380, column: 6, scope: !4592, inlinedAt: !4596)
!4787 = !DILocation(line: 380, column: 33, scope: !4784, inlinedAt: !4596)
!4788 = !DILocation(line: 381, column: 6, scope: !4789, inlinedAt: !4596)
!4789 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 381, column: 6)
!4790 = !DILocation(line: 381, column: 11, scope: !4789, inlinedAt: !4596)
!4791 = !DILocation(line: 381, column: 6, scope: !4592, inlinedAt: !4596)
!4792 = !DILocation(line: 381, column: 33, scope: !4789, inlinedAt: !4596)
!4793 = !DILocation(line: 382, column: 2, scope: !4794, inlinedAt: !4596)
!4794 = distinct !DILexicalBlock(scope: !4795, file: !284, line: 382, column: 2)
!4795 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 382, column: 2)
!4796 = !{i32 -2144229599, i32 -2144229570, i32 -2144229524, i32 -2144229466, i32 -2144229412, i32 -2144229358, i32 -2144229303, i32 -2144229272}
!4797 = !DILocation(line: 382, column: 2, scope: !4798, inlinedAt: !4596)
!4798 = distinct !DILexicalBlock(scope: !4799, file: !284, line: 382, column: 2)
!4799 = distinct !DILexicalBlock(scope: !4795, file: !284, line: 382, column: 2)
!4800 = !{i32 -2144228829, i32 -2144228822, i32 -2144228768, i32 -2144228737, i32 -2144228707}
!4801 = !DILocation(line: 382, column: 2, scope: !4799, inlinedAt: !4596)
!4802 = !DILocation(line: 386, column: 1, scope: !4592, inlinedAt: !4596)
!4803 = !DILocation(line: 547, column: 9, scope: !4575, inlinedAt: !4578)
!4804 = !DILocation(line: 549, column: 8, scope: !4805, inlinedAt: !4578)
!4805 = distinct !DILexicalBlock(scope: !4575, file: !284, line: 549, column: 7)
!4806 = !DILocation(line: 549, column: 7, scope: !4575, inlinedAt: !4578)
!4807 = !DILocation(line: 550, column: 4, scope: !4805, inlinedAt: !4578)
!4808 = !DILocation(line: 553, column: 33, scope: !4575, inlinedAt: !4578)
!4809 = !DILocation(line: 325, column: 6, scope: !4810, inlinedAt: !4590)
!4810 = distinct !DILexicalBlock(scope: !4586, file: !284, line: 325, column: 6)
!4811 = !DILocation(line: 325, column: 6, scope: !4586, inlinedAt: !4590)
!4812 = !DILocation(line: 326, column: 3, scope: !4810, inlinedAt: !4590)
!4813 = !DILocation(line: 332, column: 9, scope: !4586, inlinedAt: !4590)
!4814 = !DILocation(line: 332, column: 15, scope: !4586, inlinedAt: !4590)
!4815 = !DILocation(line: 332, column: 2, scope: !4586, inlinedAt: !4590)
!4816 = !DILocation(line: 336, column: 1, scope: !4586, inlinedAt: !4590)
!4817 = !DILocation(line: 553, column: 5, scope: !4575, inlinedAt: !4578)
!4818 = !DILocation(line: 553, column: 41, scope: !4575, inlinedAt: !4578)
!4819 = !DILocation(line: 554, column: 5, scope: !4575, inlinedAt: !4578)
!4820 = !DILocation(line: 554, column: 12, scope: !4575, inlinedAt: !4578)
!4821 = !DILocation(line: 448, column: 31, scope: !4570, inlinedAt: !4574)
!4822 = !DILocation(line: 448, column: 34, scope: !4570, inlinedAt: !4574)
!4823 = !DILocation(line: 448, column: 14, scope: !4570, inlinedAt: !4574)
!4824 = !DILocation(line: 450, column: 22, scope: !4570, inlinedAt: !4574)
!4825 = !DILocation(line: 450, column: 25, scope: !4570, inlinedAt: !4574)
!4826 = !DILocation(line: 450, column: 30, scope: !4570, inlinedAt: !4574)
!4827 = !DILocation(line: 450, column: 36, scope: !4570, inlinedAt: !4574)
!4828 = !DILocation(line: 450, column: 8, scope: !4570, inlinedAt: !4574)
!4829 = !DILocation(line: 450, column: 6, scope: !4570, inlinedAt: !4574)
!4830 = !DILocation(line: 451, column: 9, scope: !4570, inlinedAt: !4574)
!4831 = !DILocation(line: 552, column: 3, scope: !4575, inlinedAt: !4578)
!4832 = !DILocation(line: 557, column: 19, scope: !4577, inlinedAt: !4578)
!4833 = !DILocation(line: 557, column: 25, scope: !4577, inlinedAt: !4578)
!4834 = !DILocation(line: 557, column: 9, scope: !4577, inlinedAt: !4578)
!4835 = !DILocation(line: 557, column: 2, scope: !4577, inlinedAt: !4578)
!4836 = !DILocation(line: 558, column: 1, scope: !4577, inlinedAt: !4578)
!4837 = !DILocation(line: 664, column: 2, scope: !4566)
!4838 = distinct !DISubprogram(name: "stv0299_writeregI", scope: !3, file: !3, line: 70, type: !4839, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!309, !435, !314, !314}
!4841 = !DILocalVariable(name: "state", arg: 1, scope: !4838, file: !3, line: 70, type: !435)
!4842 = !DILocation(line: 70, column: 53, scope: !4838)
!4843 = !DILocalVariable(name: "reg", arg: 2, scope: !4838, file: !3, line: 70, type: !314)
!4844 = !DILocation(line: 70, column: 63, scope: !4838)
!4845 = !DILocalVariable(name: "data", arg: 3, scope: !4838, file: !3, line: 70, type: !314)
!4846 = !DILocation(line: 70, column: 71, scope: !4838)
!4847 = !DILocalVariable(name: "ret", scope: !4838, file: !3, line: 72, type: !309)
!4848 = !DILocation(line: 72, column: 6, scope: !4838)
!4849 = !DILocalVariable(name: "buf", scope: !4838, file: !3, line: 73, type: !4850)
!4850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 16, elements: !2508)
!4851 = !DILocation(line: 73, column: 5, scope: !4838)
!4852 = !DILocation(line: 73, column: 14, scope: !4838)
!4853 = !DILocation(line: 73, column: 16, scope: !4838)
!4854 = !DILocation(line: 73, column: 21, scope: !4838)
!4855 = !DILocalVariable(name: "msg", scope: !4838, file: !3, line: 74, type: !455)
!4856 = !DILocation(line: 74, column: 17, scope: !4838)
!4857 = !DILocation(line: 74, column: 23, scope: !4838)
!4858 = !DILocation(line: 74, column: 33, scope: !4838)
!4859 = !DILocation(line: 74, column: 40, scope: !4838)
!4860 = !DILocation(line: 74, column: 48, scope: !4838)
!4861 = !DILocation(line: 74, column: 82, scope: !4838)
!4862 = !DILocation(line: 76, column: 22, scope: !4838)
!4863 = !DILocation(line: 76, column: 29, scope: !4838)
!4864 = !DILocation(line: 76, column: 8, scope: !4838)
!4865 = !DILocation(line: 76, column: 6, scope: !4838)
!4866 = !DILocation(line: 78, column: 6, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4838, file: !3, line: 78, column: 6)
!4868 = !DILocation(line: 78, column: 10, scope: !4867)
!4869 = !DILocation(line: 78, column: 6, scope: !4838)
!4870 = !DILocation(line: 79, column: 3, scope: !4867)
!4871 = !DILocation(line: 79, column: 3, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4873, file: !3, line: 79, column: 3)
!4873 = distinct !DILexicalBlock(scope: !4867, file: !3, line: 79, column: 3)
!4874 = !DILocation(line: 79, column: 3, scope: !4873)
!4875 = !DILocation(line: 82, column: 10, scope: !4838)
!4876 = !DILocation(line: 82, column: 14, scope: !4838)
!4877 = !DILocation(line: 82, column: 9, scope: !4838)
!4878 = !DILocation(line: 82, column: 2, scope: !4838)
!4879 = distinct !DISubprogram(name: "stv0299_readreg", scope: !3, file: !3, line: 95, type: !4880, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!314, !435, !314}
!4882 = !DILocalVariable(name: "state", arg: 1, scope: !4879, file: !3, line: 95, type: !435)
!4883 = !DILocation(line: 95, column: 50, scope: !4879)
!4884 = !DILocalVariable(name: "reg", arg: 2, scope: !4879, file: !3, line: 95, type: !314)
!4885 = !DILocation(line: 95, column: 60, scope: !4879)
!4886 = !DILocalVariable(name: "ret", scope: !4879, file: !3, line: 97, type: !309)
!4887 = !DILocation(line: 97, column: 6, scope: !4879)
!4888 = !DILocalVariable(name: "b0", scope: !4879, file: !3, line: 98, type: !4889)
!4889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 8, elements: !702)
!4890 = !DILocation(line: 98, column: 5, scope: !4879)
!4891 = !DILocation(line: 98, column: 13, scope: !4879)
!4892 = !DILocation(line: 98, column: 15, scope: !4879)
!4893 = !DILocalVariable(name: "b1", scope: !4879, file: !3, line: 99, type: !4889)
!4894 = !DILocation(line: 99, column: 5, scope: !4879)
!4895 = !DILocalVariable(name: "msg", scope: !4879, file: !3, line: 100, type: !4896)
!4896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 256, elements: !2508)
!4897 = !DILocation(line: 100, column: 17, scope: !4879)
!4898 = !DILocation(line: 100, column: 26, scope: !4879)
!4899 = !DILocation(line: 100, column: 28, scope: !4879)
!4900 = !DILocation(line: 100, column: 38, scope: !4879)
!4901 = !DILocation(line: 100, column: 45, scope: !4879)
!4902 = !DILocation(line: 100, column: 53, scope: !4879)
!4903 = !DILocation(line: 100, column: 87, scope: !4879)
!4904 = !DILocation(line: 101, column: 7, scope: !4879)
!4905 = !DILocation(line: 101, column: 17, scope: !4879)
!4906 = !DILocation(line: 101, column: 24, scope: !4879)
!4907 = !DILocation(line: 101, column: 32, scope: !4879)
!4908 = !DILocation(line: 101, column: 73, scope: !4879)
!4909 = !DILocation(line: 103, column: 22, scope: !4879)
!4910 = !DILocation(line: 103, column: 29, scope: !4879)
!4911 = !DILocation(line: 103, column: 34, scope: !4879)
!4912 = !DILocation(line: 103, column: 8, scope: !4879)
!4913 = !DILocation(line: 103, column: 6, scope: !4879)
!4914 = !DILocation(line: 105, column: 6, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4879, file: !3, line: 105, column: 6)
!4916 = !DILocation(line: 105, column: 10, scope: !4915)
!4917 = !DILocation(line: 105, column: 6, scope: !4879)
!4918 = !DILocation(line: 106, column: 3, scope: !4915)
!4919 = !DILocation(line: 106, column: 3, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4921, file: !3, line: 106, column: 3)
!4921 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 106, column: 3)
!4922 = !DILocation(line: 106, column: 3, scope: !4921)
!4923 = !DILocation(line: 109, column: 9, scope: !4879)
!4924 = !DILocation(line: 109, column: 2, scope: !4879)
!4925 = distinct !DISubprogram(name: "get_order", scope: !4926, file: !4926, line: 29, type: !4927, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!4926 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4927 = !DISubroutineType(types: !4928)
!4928 = !{!309, !525}
!4929 = !DILocalVariable(name: "x", arg: 1, scope: !4930, file: !4931, line: 366, type: !304)
!4930 = distinct !DISubprogram(name: "fls64", scope: !4931, file: !4931, line: 366, type: !4932, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!4931 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!309, !304}
!4934 = !DILocation(line: 366, column: 40, scope: !4930, inlinedAt: !4935)
!4935 = distinct !DILocation(line: 46, column: 9, scope: !4925)
!4936 = !DILocalVariable(name: "bitpos", scope: !4930, file: !4931, line: 368, type: !309)
!4937 = !DILocation(line: 368, column: 6, scope: !4930, inlinedAt: !4935)
!4938 = !DILocalVariable(name: "size", arg: 1, scope: !4925, file: !4926, line: 29, type: !525)
!4939 = !DILocation(line: 29, column: 63, scope: !4925)
!4940 = !DILocation(line: 31, column: 27, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4925, file: !4926, line: 31, column: 6)
!4942 = !DILocation(line: 31, column: 6, scope: !4941)
!4943 = !DILocation(line: 31, column: 6, scope: !4925)
!4944 = !DILocation(line: 32, column: 8, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4946, file: !4926, line: 32, column: 7)
!4946 = distinct !DILexicalBlock(scope: !4941, file: !4926, line: 31, column: 34)
!4947 = !DILocation(line: 32, column: 7, scope: !4946)
!4948 = !DILocation(line: 33, column: 4, scope: !4945)
!4949 = !DILocation(line: 35, column: 7, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4946, file: !4926, line: 35, column: 7)
!4951 = !DILocation(line: 35, column: 12, scope: !4950)
!4952 = !DILocation(line: 35, column: 7, scope: !4946)
!4953 = !DILocation(line: 36, column: 4, scope: !4950)
!4954 = !DILocation(line: 38, column: 10, scope: !4946)
!4955 = !DILocation(line: 38, column: 28, scope: !4946)
!4956 = !DILocation(line: 38, column: 41, scope: !4946)
!4957 = !DILocation(line: 38, column: 3, scope: !4946)
!4958 = !DILocation(line: 41, column: 6, scope: !4925)
!4959 = !DILocation(line: 42, column: 7, scope: !4925)
!4960 = !DILocation(line: 46, column: 15, scope: !4925)
!4961 = !DILocation(line: 374, column: 2, scope: !4930, inlinedAt: !4935)
!4962 = !DILocation(line: 376, column: 14, scope: !4930, inlinedAt: !4935)
!4963 = !{i32 267640}
!4964 = !DILocation(line: 377, column: 9, scope: !4930, inlinedAt: !4935)
!4965 = !DILocation(line: 377, column: 16, scope: !4930, inlinedAt: !4935)
!4966 = !DILocation(line: 46, column: 2, scope: !4925)
!4967 = !DILocation(line: 48, column: 1, scope: !4925)
!4968 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4969, file: !4969, line: 30, type: !4970, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!4969 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!309, !302}
!4972 = !DILocation(line: 366, column: 40, scope: !4930, inlinedAt: !4973)
!4973 = distinct !DILocation(line: 32, column: 9, scope: !4968)
!4974 = !DILocation(line: 368, column: 6, scope: !4930, inlinedAt: !4973)
!4975 = !DILocalVariable(name: "n", arg: 1, scope: !4968, file: !4969, line: 30, type: !302)
!4976 = !DILocation(line: 30, column: 21, scope: !4968)
!4977 = !DILocation(line: 32, column: 15, scope: !4968)
!4978 = !DILocation(line: 374, column: 2, scope: !4930, inlinedAt: !4973)
!4979 = !DILocation(line: 376, column: 14, scope: !4930, inlinedAt: !4973)
!4980 = !DILocation(line: 377, column: 9, scope: !4930, inlinedAt: !4973)
!4981 = !DILocation(line: 377, column: 16, scope: !4930, inlinedAt: !4973)
!4982 = !DILocation(line: 32, column: 18, scope: !4968)
!4983 = !DILocation(line: 32, column: 2, scope: !4968)
!4984 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4985, file: !4985, line: 137, type: !4986, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!4985 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4986 = !DISubroutineType(types: !4987)
!4987 = !{!300, !1308, !2236, !963, !298}
!4988 = !DILocalVariable(name: "s", arg: 1, scope: !4984, file: !4985, line: 137, type: !1308)
!4989 = !DILocation(line: 137, column: 54, scope: !4984)
!4990 = !DILocalVariable(name: "object", arg: 2, scope: !4984, file: !4985, line: 137, type: !2236)
!4991 = !DILocation(line: 137, column: 69, scope: !4984)
!4992 = !DILocalVariable(name: "size", arg: 3, scope: !4984, file: !4985, line: 138, type: !963)
!4993 = !DILocation(line: 138, column: 12, scope: !4984)
!4994 = !DILocalVariable(name: "flags", arg: 4, scope: !4984, file: !4985, line: 138, type: !298)
!4995 = !DILocation(line: 138, column: 24, scope: !4984)
!4996 = !DILocation(line: 140, column: 17, scope: !4984)
!4997 = !DILocation(line: 140, column: 2, scope: !4984)
!4998 = distinct !DISubprogram(name: "stv0299_release", scope: !3, file: !3, line: 658, type: !4171, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!4999 = !DILocalVariable(name: "fe", arg: 1, scope: !4998, file: !3, line: 658, type: !4148)
!5000 = !DILocation(line: 658, column: 50, scope: !4998)
!5001 = !DILocalVariable(name: "state", scope: !4998, file: !3, line: 660, type: !435)
!5002 = !DILocation(line: 660, column: 24, scope: !4998)
!5003 = !DILocation(line: 660, column: 32, scope: !4998)
!5004 = !DILocation(line: 660, column: 36, scope: !4998)
!5005 = !DILocation(line: 661, column: 8, scope: !4998)
!5006 = !DILocation(line: 661, column: 2, scope: !4998)
!5007 = !DILocation(line: 662, column: 1, scope: !4998)
!5008 = distinct !DISubprogram(name: "stv0299_init", scope: !3, file: !3, line: 445, type: !4177, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5009 = !DILocalVariable(name: "fe", arg: 1, scope: !5008, file: !3, line: 445, type: !4148)
!5010 = !DILocation(line: 445, column: 47, scope: !5008)
!5011 = !DILocalVariable(name: "state", scope: !5008, file: !3, line: 447, type: !435)
!5012 = !DILocation(line: 447, column: 24, scope: !5008)
!5013 = !DILocation(line: 447, column: 32, scope: !5008)
!5014 = !DILocation(line: 447, column: 36, scope: !5008)
!5015 = !DILocalVariable(name: "i", scope: !5008, file: !3, line: 448, type: !309)
!5016 = !DILocation(line: 448, column: 6, scope: !5008)
!5017 = !DILocalVariable(name: "reg", scope: !5008, file: !3, line: 449, type: !314)
!5018 = !DILocation(line: 449, column: 5, scope: !5008)
!5019 = !DILocalVariable(name: "val", scope: !5008, file: !3, line: 450, type: !314)
!5020 = !DILocation(line: 450, column: 5, scope: !5008)
!5021 = !DILocation(line: 452, column: 2, scope: !5008)
!5022 = !DILocation(line: 452, column: 2, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 452, column: 2)
!5024 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 452, column: 2)
!5025 = !DILocation(line: 452, column: 2, scope: !5024)
!5026 = !DILocation(line: 454, column: 20, scope: !5008)
!5027 = !DILocation(line: 454, column: 40, scope: !5008)
!5028 = !DILocation(line: 454, column: 47, scope: !5008)
!5029 = !DILocation(line: 454, column: 38, scope: !5008)
!5030 = !DILocation(line: 454, column: 33, scope: !5008)
!5031 = !DILocation(line: 454, column: 2, scope: !5008)
!5032 = !DILocation(line: 455, column: 2, scope: !5008)
!5033 = !DILocation(line: 457, column: 9, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 457, column: 2)
!5035 = !DILocation(line: 457, column: 7, scope: !5034)
!5036 = !DILocation(line: 458, column: 9, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 457, column: 25)
!5038 = distinct !DILexicalBlock(scope: !5034, file: !3, line: 457, column: 2)
!5039 = !DILocation(line: 458, column: 16, scope: !5037)
!5040 = !DILocation(line: 458, column: 24, scope: !5037)
!5041 = !DILocation(line: 458, column: 32, scope: !5037)
!5042 = !DILocation(line: 458, column: 7, scope: !5037)
!5043 = !DILocation(line: 459, column: 9, scope: !5037)
!5044 = !DILocation(line: 459, column: 16, scope: !5037)
!5045 = !DILocation(line: 459, column: 24, scope: !5037)
!5046 = !DILocation(line: 459, column: 32, scope: !5037)
!5047 = !DILocation(line: 459, column: 33, scope: !5037)
!5048 = !DILocation(line: 459, column: 7, scope: !5037)
!5049 = !DILocation(line: 460, column: 7, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 460, column: 7)
!5051 = !DILocation(line: 460, column: 11, scope: !5050)
!5052 = !DILocation(line: 460, column: 19, scope: !5050)
!5053 = !DILocation(line: 460, column: 22, scope: !5050)
!5054 = !DILocation(line: 460, column: 26, scope: !5050)
!5055 = !DILocation(line: 460, column: 7, scope: !5037)
!5056 = !DILocation(line: 461, column: 4, scope: !5050)
!5057 = !DILocation(line: 462, column: 7, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 462, column: 7)
!5059 = !DILocation(line: 462, column: 11, scope: !5058)
!5060 = !DILocation(line: 462, column: 19, scope: !5058)
!5061 = !DILocation(line: 462, column: 22, scope: !5058)
!5062 = !DILocation(line: 462, column: 29, scope: !5058)
!5063 = !DILocation(line: 462, column: 37, scope: !5058)
!5064 = !DILocation(line: 462, column: 7, scope: !5037)
!5065 = !DILocation(line: 463, column: 8, scope: !5058)
!5066 = !DILocation(line: 463, column: 4, scope: !5058)
!5067 = !DILocation(line: 464, column: 7, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 464, column: 7)
!5069 = !DILocation(line: 464, column: 11, scope: !5068)
!5070 = !DILocation(line: 464, column: 7, scope: !5037)
!5071 = !DILocation(line: 465, column: 21, scope: !5068)
!5072 = !DILocation(line: 465, column: 25, scope: !5068)
!5073 = !DILocation(line: 465, column: 4, scope: !5068)
!5074 = !DILocation(line: 465, column: 11, scope: !5068)
!5075 = !DILocation(line: 465, column: 19, scope: !5068)
!5076 = !DILocation(line: 466, column: 21, scope: !5037)
!5077 = !DILocation(line: 466, column: 28, scope: !5037)
!5078 = !DILocation(line: 466, column: 33, scope: !5037)
!5079 = !DILocation(line: 466, column: 3, scope: !5037)
!5080 = !DILocation(line: 467, column: 2, scope: !5037)
!5081 = !DILocation(line: 457, column: 18, scope: !5038)
!5082 = !DILocation(line: 457, column: 2, scope: !5038)
!5083 = distinct !{!5083, !5084, !5085}
!5084 = !DILocation(line: 457, column: 2, scope: !5034)
!5085 = !DILocation(line: 467, column: 2, scope: !5034)
!5086 = !DILocation(line: 469, column: 2, scope: !5008)
!5087 = distinct !DISubprogram(name: "stv0299_sleep", scope: !3, file: !3, line: 619, type: !4177, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5088 = !DILocalVariable(name: "fe", arg: 1, scope: !5087, file: !3, line: 619, type: !4148)
!5089 = !DILocation(line: 619, column: 47, scope: !5087)
!5090 = !DILocalVariable(name: "state", scope: !5087, file: !3, line: 621, type: !435)
!5091 = !DILocation(line: 621, column: 24, scope: !5087)
!5092 = !DILocation(line: 621, column: 32, scope: !5087)
!5093 = !DILocation(line: 621, column: 36, scope: !5087)
!5094 = !DILocation(line: 623, column: 20, scope: !5087)
!5095 = !DILocation(line: 623, column: 40, scope: !5087)
!5096 = !DILocation(line: 623, column: 47, scope: !5087)
!5097 = !DILocation(line: 623, column: 38, scope: !5087)
!5098 = !DILocation(line: 623, column: 33, scope: !5087)
!5099 = !DILocation(line: 623, column: 2, scope: !5087)
!5100 = !DILocation(line: 624, column: 2, scope: !5087)
!5101 = !DILocation(line: 624, column: 9, scope: !5087)
!5102 = !DILocation(line: 624, column: 21, scope: !5087)
!5103 = !DILocation(line: 626, column: 2, scope: !5087)
!5104 = distinct !DISubprogram(name: "stv0299_write", scope: !3, file: !3, line: 85, type: !4182, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5105 = !DILocalVariable(name: "fe", arg: 1, scope: !5104, file: !3, line: 85, type: !4148)
!5106 = !DILocation(line: 85, column: 47, scope: !5104)
!5107 = !DILocalVariable(name: "buf", arg: 2, scope: !5104, file: !3, line: 85, type: !4135)
!5108 = !DILocation(line: 85, column: 60, scope: !5104)
!5109 = !DILocalVariable(name: "len", arg: 3, scope: !5104, file: !3, line: 85, type: !309)
!5110 = !DILocation(line: 85, column: 71, scope: !5104)
!5111 = !DILocalVariable(name: "state", scope: !5104, file: !3, line: 87, type: !435)
!5112 = !DILocation(line: 87, column: 24, scope: !5104)
!5113 = !DILocation(line: 87, column: 32, scope: !5104)
!5114 = !DILocation(line: 87, column: 36, scope: !5104)
!5115 = !DILocation(line: 89, column: 6, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 89, column: 6)
!5117 = !DILocation(line: 89, column: 10, scope: !5116)
!5118 = !DILocation(line: 89, column: 6, scope: !5104)
!5119 = !DILocation(line: 90, column: 3, scope: !5116)
!5120 = !DILocation(line: 92, column: 27, scope: !5104)
!5121 = !DILocation(line: 92, column: 34, scope: !5104)
!5122 = !DILocation(line: 92, column: 42, scope: !5104)
!5123 = !DILocation(line: 92, column: 9, scope: !5104)
!5124 = !DILocation(line: 92, column: 2, scope: !5104)
!5125 = !DILocation(line: 93, column: 1, scope: !5104)
!5126 = distinct !DISubprogram(name: "stv0299_set_frontend", scope: !3, file: !3, line: 556, type: !4177, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5127 = !DILocalVariable(name: "fe", arg: 1, scope: !5126, file: !3, line: 556, type: !4148)
!5128 = !DILocation(line: 556, column: 54, scope: !5126)
!5129 = !DILocalVariable(name: "p", scope: !5126, file: !3, line: 558, type: !4208)
!5130 = !DILocation(line: 558, column: 34, scope: !5126)
!5131 = !DILocation(line: 558, column: 39, scope: !5126)
!5132 = !DILocation(line: 558, column: 43, scope: !5126)
!5133 = !DILocalVariable(name: "state", scope: !5126, file: !3, line: 559, type: !435)
!5134 = !DILocation(line: 559, column: 24, scope: !5126)
!5135 = !DILocation(line: 559, column: 32, scope: !5126)
!5136 = !DILocation(line: 559, column: 36, scope: !5126)
!5137 = !DILocalVariable(name: "invval", scope: !5126, file: !3, line: 560, type: !309)
!5138 = !DILocation(line: 560, column: 6, scope: !5126)
!5139 = !DILocation(line: 562, column: 2, scope: !5126)
!5140 = !DILocation(line: 562, column: 2, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 562, column: 2)
!5142 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 562, column: 2)
!5143 = !DILocation(line: 562, column: 2, scope: !5142)
!5144 = !DILocation(line: 563, column: 6, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 563, column: 6)
!5146 = !DILocation(line: 563, column: 13, scope: !5145)
!5147 = !DILocation(line: 563, column: 21, scope: !5145)
!5148 = !DILocation(line: 563, column: 6, scope: !5126)
!5149 = !DILocation(line: 564, column: 3, scope: !5145)
!5150 = !DILocation(line: 564, column: 10, scope: !5145)
!5151 = !DILocation(line: 564, column: 18, scope: !5145)
!5152 = !DILocation(line: 564, column: 32, scope: !5145)
!5153 = !DILocation(line: 567, column: 6, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 567, column: 6)
!5155 = !DILocation(line: 567, column: 9, scope: !5154)
!5156 = !DILocation(line: 567, column: 19, scope: !5154)
!5157 = !DILocation(line: 567, column: 6, scope: !5126)
!5158 = !DILocation(line: 567, column: 44, scope: !5154)
!5159 = !DILocation(line: 567, column: 37, scope: !5154)
!5160 = !DILocation(line: 568, column: 11, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 568, column: 11)
!5162 = !DILocation(line: 568, column: 14, scope: !5161)
!5163 = !DILocation(line: 568, column: 24, scope: !5161)
!5164 = !DILocation(line: 568, column: 11, scope: !5154)
!5165 = !DILocation(line: 568, column: 48, scope: !5161)
!5166 = !DILocation(line: 568, column: 41, scope: !5161)
!5167 = !DILocation(line: 570, column: 3, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 569, column: 7)
!5169 = !DILocation(line: 571, column: 3, scope: !5168)
!5170 = !DILocation(line: 573, column: 6, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 573, column: 6)
!5172 = !DILocation(line: 573, column: 13, scope: !5171)
!5173 = !DILocation(line: 573, column: 21, scope: !5171)
!5174 = !DILocation(line: 573, column: 6, scope: !5126)
!5175 = !DILocation(line: 573, column: 40, scope: !5171)
!5176 = !DILocation(line: 573, column: 39, scope: !5171)
!5177 = !DILocation(line: 573, column: 48, scope: !5171)
!5178 = !DILocation(line: 573, column: 36, scope: !5171)
!5179 = !DILocation(line: 573, column: 29, scope: !5171)
!5180 = !DILocation(line: 574, column: 20, scope: !5126)
!5181 = !DILocation(line: 574, column: 50, scope: !5126)
!5182 = !DILocation(line: 574, column: 34, scope: !5126)
!5183 = !DILocation(line: 574, column: 63, scope: !5126)
!5184 = !DILocation(line: 574, column: 73, scope: !5126)
!5185 = !DILocation(line: 574, column: 71, scope: !5126)
!5186 = !DILocation(line: 574, column: 33, scope: !5126)
!5187 = !DILocation(line: 574, column: 2, scope: !5126)
!5188 = !DILocation(line: 576, column: 6, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 576, column: 6)
!5190 = !DILocation(line: 576, column: 10, scope: !5189)
!5191 = !DILocation(line: 576, column: 14, scope: !5189)
!5192 = !DILocation(line: 576, column: 24, scope: !5189)
!5193 = !DILocation(line: 576, column: 6, scope: !5126)
!5194 = !DILocation(line: 577, column: 3, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 576, column: 36)
!5196 = !DILocation(line: 577, column: 7, scope: !5195)
!5197 = !DILocation(line: 577, column: 11, scope: !5195)
!5198 = !DILocation(line: 577, column: 21, scope: !5195)
!5199 = !DILocation(line: 577, column: 32, scope: !5195)
!5200 = !DILocation(line: 578, column: 7, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5195, file: !3, line: 578, column: 7)
!5202 = !DILocation(line: 578, column: 11, scope: !5201)
!5203 = !DILocation(line: 578, column: 15, scope: !5201)
!5204 = !DILocation(line: 578, column: 7, scope: !5195)
!5205 = !DILocation(line: 578, column: 30, scope: !5201)
!5206 = !DILocation(line: 578, column: 34, scope: !5201)
!5207 = !DILocation(line: 578, column: 38, scope: !5201)
!5208 = !DILocation(line: 578, column: 52, scope: !5201)
!5209 = !DILocation(line: 579, column: 2, scope: !5195)
!5210 = !DILocation(line: 581, column: 18, scope: !5126)
!5211 = !DILocation(line: 581, column: 25, scope: !5126)
!5212 = !DILocation(line: 581, column: 28, scope: !5126)
!5213 = !DILocation(line: 581, column: 2, scope: !5126)
!5214 = !DILocation(line: 582, column: 25, scope: !5126)
!5215 = !DILocation(line: 582, column: 29, scope: !5126)
!5216 = !DILocation(line: 582, column: 32, scope: !5126)
!5217 = !DILocation(line: 582, column: 2, scope: !5126)
!5218 = !DILocation(line: 583, column: 20, scope: !5126)
!5219 = !DILocation(line: 583, column: 2, scope: !5126)
!5220 = !DILocation(line: 584, column: 20, scope: !5126)
!5221 = !DILocation(line: 584, column: 2, scope: !5126)
!5222 = !DILocation(line: 586, column: 27, scope: !5126)
!5223 = !DILocation(line: 586, column: 30, scope: !5126)
!5224 = !DILocation(line: 586, column: 2, scope: !5126)
!5225 = !DILocation(line: 586, column: 9, scope: !5126)
!5226 = !DILocation(line: 586, column: 25, scope: !5126)
!5227 = !DILocation(line: 587, column: 21, scope: !5126)
!5228 = !DILocation(line: 587, column: 24, scope: !5126)
!5229 = !DILocation(line: 587, column: 2, scope: !5126)
!5230 = !DILocation(line: 587, column: 9, scope: !5126)
!5231 = !DILocation(line: 587, column: 19, scope: !5126)
!5232 = !DILocation(line: 588, column: 23, scope: !5126)
!5233 = !DILocation(line: 588, column: 26, scope: !5126)
!5234 = !DILocation(line: 588, column: 2, scope: !5126)
!5235 = !DILocation(line: 588, column: 9, scope: !5126)
!5236 = !DILocation(line: 588, column: 21, scope: !5126)
!5237 = !DILocation(line: 590, column: 2, scope: !5126)
!5238 = !DILocation(line: 591, column: 1, scope: !5126)
!5239 = distinct !DISubprogram(name: "stv0299_get_tune_settings", scope: !3, file: !3, line: 642, type: !4196, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5240 = !DILocalVariable(name: "fe", arg: 1, scope: !5239, file: !3, line: 642, type: !4148)
!5241 = !DILocation(line: 642, column: 59, scope: !5239)
!5242 = !DILocalVariable(name: "fesettings", arg: 2, scope: !5239, file: !3, line: 642, type: !4198)
!5243 = !DILocation(line: 642, column: 98, scope: !5239)
!5244 = !DILocalVariable(name: "state", scope: !5239, file: !3, line: 644, type: !435)
!5245 = !DILocation(line: 644, column: 24, scope: !5239)
!5246 = !DILocation(line: 644, column: 32, scope: !5239)
!5247 = !DILocation(line: 644, column: 36, scope: !5239)
!5248 = !DILocalVariable(name: "p", scope: !5239, file: !3, line: 645, type: !4208)
!5249 = !DILocation(line: 645, column: 34, scope: !5239)
!5250 = !DILocation(line: 645, column: 39, scope: !5239)
!5251 = !DILocation(line: 645, column: 43, scope: !5239)
!5252 = !DILocation(line: 647, column: 29, scope: !5239)
!5253 = !DILocation(line: 647, column: 36, scope: !5239)
!5254 = !DILocation(line: 647, column: 44, scope: !5239)
!5255 = !DILocation(line: 647, column: 2, scope: !5239)
!5256 = !DILocation(line: 647, column: 14, scope: !5239)
!5257 = !DILocation(line: 647, column: 27, scope: !5239)
!5258 = !DILocation(line: 648, column: 6, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 648, column: 6)
!5260 = !DILocation(line: 648, column: 9, scope: !5259)
!5261 = !DILocation(line: 648, column: 21, scope: !5259)
!5262 = !DILocation(line: 648, column: 6, scope: !5239)
!5263 = !DILocation(line: 649, column: 27, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5259, file: !3, line: 648, column: 33)
!5265 = !DILocation(line: 649, column: 30, scope: !5264)
!5266 = !DILocation(line: 649, column: 42, scope: !5264)
!5267 = !DILocation(line: 649, column: 3, scope: !5264)
!5268 = !DILocation(line: 649, column: 15, scope: !5264)
!5269 = !DILocation(line: 649, column: 25, scope: !5264)
!5270 = !DILocation(line: 650, column: 3, scope: !5264)
!5271 = !DILocation(line: 650, column: 15, scope: !5264)
!5272 = !DILocation(line: 650, column: 25, scope: !5264)
!5273 = !DILocation(line: 651, column: 2, scope: !5264)
!5274 = !DILocation(line: 652, column: 27, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5259, file: !3, line: 651, column: 9)
!5276 = !DILocation(line: 652, column: 30, scope: !5275)
!5277 = !DILocation(line: 652, column: 42, scope: !5275)
!5278 = !DILocation(line: 652, column: 3, scope: !5275)
!5279 = !DILocation(line: 652, column: 15, scope: !5275)
!5280 = !DILocation(line: 652, column: 25, scope: !5275)
!5281 = !DILocation(line: 653, column: 27, scope: !5275)
!5282 = !DILocation(line: 653, column: 30, scope: !5275)
!5283 = !DILocation(line: 653, column: 42, scope: !5275)
!5284 = !DILocation(line: 653, column: 3, scope: !5275)
!5285 = !DILocation(line: 653, column: 15, scope: !5275)
!5286 = !DILocation(line: 653, column: 25, scope: !5275)
!5287 = !DILocation(line: 655, column: 2, scope: !5239)
!5288 = distinct !DISubprogram(name: "stv0299_get_frontend", scope: !3, file: !3, line: 593, type: !4206, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5289 = !DILocalVariable(name: "fe", arg: 1, scope: !5288, file: !3, line: 593, type: !4148)
!5290 = !DILocation(line: 593, column: 54, scope: !5288)
!5291 = !DILocalVariable(name: "p", arg: 2, scope: !5288, file: !3, line: 594, type: !4208)
!5292 = !DILocation(line: 594, column: 37, scope: !5288)
!5293 = !DILocalVariable(name: "state", scope: !5288, file: !3, line: 596, type: !435)
!5294 = !DILocation(line: 596, column: 24, scope: !5288)
!5295 = !DILocation(line: 596, column: 32, scope: !5288)
!5296 = !DILocation(line: 596, column: 36, scope: !5288)
!5297 = !DILocalVariable(name: "derot_freq", scope: !5288, file: !3, line: 597, type: !307)
!5298 = !DILocation(line: 597, column: 6, scope: !5288)
!5299 = !DILocalVariable(name: "invval", scope: !5288, file: !3, line: 598, type: !309)
!5300 = !DILocation(line: 598, column: 6, scope: !5288)
!5301 = !DILocation(line: 600, column: 45, scope: !5288)
!5302 = !DILocation(line: 600, column: 28, scope: !5288)
!5303 = !DILocation(line: 600, column: 58, scope: !5288)
!5304 = !DILocation(line: 601, column: 24, scope: !5288)
!5305 = !DILocation(line: 601, column: 7, scope: !5288)
!5306 = !DILocation(line: 601, column: 5, scope: !5288)
!5307 = !DILocation(line: 600, column: 20, scope: !5288)
!5308 = !DILocation(line: 600, column: 15, scope: !5288)
!5309 = !DILocation(line: 600, column: 13, scope: !5288)
!5310 = !DILocation(line: 603, column: 17, scope: !5288)
!5311 = !DILocation(line: 603, column: 24, scope: !5288)
!5312 = !DILocation(line: 603, column: 32, scope: !5288)
!5313 = !DILocation(line: 603, column: 37, scope: !5288)
!5314 = !DILocation(line: 603, column: 13, scope: !5288)
!5315 = !DILocation(line: 604, column: 13, scope: !5288)
!5316 = !DILocation(line: 605, column: 13, scope: !5288)
!5317 = !DILocation(line: 607, column: 18, scope: !5288)
!5318 = !DILocation(line: 607, column: 2, scope: !5288)
!5319 = !DILocation(line: 607, column: 5, scope: !5288)
!5320 = !DILocation(line: 607, column: 15, scope: !5288)
!5321 = !DILocation(line: 609, column: 28, scope: !5288)
!5322 = !DILocation(line: 609, column: 11, scope: !5288)
!5323 = !DILocation(line: 609, column: 41, scope: !5288)
!5324 = !DILocation(line: 609, column: 9, scope: !5288)
!5325 = !DILocation(line: 610, column: 6, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 610, column: 6)
!5327 = !DILocation(line: 610, column: 13, scope: !5326)
!5328 = !DILocation(line: 610, column: 21, scope: !5326)
!5329 = !DILocation(line: 610, column: 6, scope: !5288)
!5330 = !DILocation(line: 610, column: 40, scope: !5326)
!5331 = !DILocation(line: 610, column: 39, scope: !5326)
!5332 = !DILocation(line: 610, column: 48, scope: !5326)
!5333 = !DILocation(line: 610, column: 36, scope: !5326)
!5334 = !DILocation(line: 610, column: 29, scope: !5326)
!5335 = !DILocation(line: 611, column: 17, scope: !5288)
!5336 = !DILocation(line: 611, column: 2, scope: !5288)
!5337 = !DILocation(line: 611, column: 5, scope: !5288)
!5338 = !DILocation(line: 611, column: 15, scope: !5288)
!5339 = !DILocation(line: 613, column: 33, scope: !5288)
!5340 = !DILocation(line: 613, column: 17, scope: !5288)
!5341 = !DILocation(line: 613, column: 2, scope: !5288)
!5342 = !DILocation(line: 613, column: 5, scope: !5288)
!5343 = !DILocation(line: 613, column: 15, scope: !5288)
!5344 = !DILocation(line: 614, column: 42, scope: !5288)
!5345 = !DILocation(line: 614, column: 19, scope: !5288)
!5346 = !DILocation(line: 614, column: 2, scope: !5288)
!5347 = !DILocation(line: 614, column: 5, scope: !5288)
!5348 = !DILocation(line: 614, column: 17, scope: !5288)
!5349 = !DILocation(line: 616, column: 2, scope: !5288)
!5350 = distinct !DISubprogram(name: "stv0299_read_status", scope: !3, file: !3, line: 472, type: !4283, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5351 = !DILocalVariable(name: "fe", arg: 1, scope: !5350, file: !3, line: 472, type: !4148)
!5352 = !DILocation(line: 472, column: 53, scope: !5350)
!5353 = !DILocalVariable(name: "status", arg: 2, scope: !5350, file: !3, line: 473, type: !4188)
!5354 = !DILocation(line: 473, column: 27, scope: !5350)
!5355 = !DILocalVariable(name: "state", scope: !5350, file: !3, line: 475, type: !435)
!5356 = !DILocation(line: 475, column: 24, scope: !5350)
!5357 = !DILocation(line: 475, column: 32, scope: !5350)
!5358 = !DILocation(line: 475, column: 36, scope: !5350)
!5359 = !DILocalVariable(name: "signal", scope: !5350, file: !3, line: 477, type: !314)
!5360 = !DILocation(line: 477, column: 5, scope: !5350)
!5361 = !DILocation(line: 477, column: 38, scope: !5350)
!5362 = !DILocation(line: 477, column: 21, scope: !5350)
!5363 = !DILocation(line: 477, column: 19, scope: !5350)
!5364 = !DILocation(line: 477, column: 14, scope: !5350)
!5365 = !DILocalVariable(name: "sync", scope: !5350, file: !3, line: 478, type: !314)
!5366 = !DILocation(line: 478, column: 5, scope: !5350)
!5367 = !DILocation(line: 478, column: 29, scope: !5350)
!5368 = !DILocation(line: 478, column: 12, scope: !5350)
!5369 = !DILocation(line: 480, column: 2, scope: !5350)
!5370 = !DILocation(line: 480, column: 2, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5372, file: !3, line: 480, column: 2)
!5372 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 480, column: 2)
!5373 = !DILocation(line: 480, column: 2, scope: !5372)
!5374 = !DILocation(line: 481, column: 3, scope: !5350)
!5375 = !DILocation(line: 481, column: 10, scope: !5350)
!5376 = !DILocation(line: 483, column: 6, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 483, column: 6)
!5378 = !DILocation(line: 483, column: 13, scope: !5377)
!5379 = !DILocation(line: 483, column: 6, scope: !5350)
!5380 = !DILocation(line: 484, column: 4, scope: !5377)
!5381 = !DILocation(line: 484, column: 11, scope: !5377)
!5382 = !DILocation(line: 484, column: 3, scope: !5377)
!5383 = !DILocation(line: 486, column: 6, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 486, column: 6)
!5385 = !DILocation(line: 486, column: 11, scope: !5384)
!5386 = !DILocation(line: 486, column: 6, scope: !5350)
!5387 = !DILocation(line: 487, column: 4, scope: !5384)
!5388 = !DILocation(line: 487, column: 11, scope: !5384)
!5389 = !DILocation(line: 487, column: 3, scope: !5384)
!5390 = !DILocation(line: 489, column: 6, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 489, column: 6)
!5392 = !DILocation(line: 489, column: 11, scope: !5391)
!5393 = !DILocation(line: 489, column: 6, scope: !5350)
!5394 = !DILocation(line: 490, column: 4, scope: !5391)
!5395 = !DILocation(line: 490, column: 11, scope: !5391)
!5396 = !DILocation(line: 490, column: 3, scope: !5391)
!5397 = !DILocation(line: 492, column: 6, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 492, column: 6)
!5399 = !DILocation(line: 492, column: 11, scope: !5398)
!5400 = !DILocation(line: 492, column: 6, scope: !5350)
!5401 = !DILocation(line: 493, column: 4, scope: !5398)
!5402 = !DILocation(line: 493, column: 11, scope: !5398)
!5403 = !DILocation(line: 493, column: 3, scope: !5398)
!5404 = !DILocation(line: 495, column: 7, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 495, column: 6)
!5406 = !DILocation(line: 495, column: 12, scope: !5405)
!5407 = !DILocation(line: 495, column: 20, scope: !5405)
!5408 = !DILocation(line: 495, column: 6, scope: !5350)
!5409 = !DILocation(line: 496, column: 4, scope: !5405)
!5410 = !DILocation(line: 496, column: 11, scope: !5405)
!5411 = !DILocation(line: 496, column: 3, scope: !5405)
!5412 = !DILocation(line: 498, column: 2, scope: !5350)
!5413 = distinct !DISubprogram(name: "stv0299_read_ber", scope: !3, file: !3, line: 501, type: !4287, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5414 = !DILocalVariable(name: "fe", arg: 1, scope: !5413, file: !3, line: 501, type: !4148)
!5415 = !DILocation(line: 501, column: 50, scope: !5413)
!5416 = !DILocalVariable(name: "ber", arg: 2, scope: !5413, file: !3, line: 501, type: !2861)
!5417 = !DILocation(line: 501, column: 59, scope: !5413)
!5418 = !DILocalVariable(name: "state", scope: !5413, file: !3, line: 503, type: !435)
!5419 = !DILocation(line: 503, column: 24, scope: !5413)
!5420 = !DILocation(line: 503, column: 32, scope: !5413)
!5421 = !DILocation(line: 503, column: 36, scope: !5413)
!5422 = !DILocation(line: 505, column: 6, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 505, column: 6)
!5424 = !DILocation(line: 505, column: 13, scope: !5423)
!5425 = !DILocation(line: 505, column: 21, scope: !5423)
!5426 = !DILocation(line: 505, column: 6, scope: !5413)
!5427 = !DILocation(line: 506, column: 3, scope: !5423)
!5428 = !DILocation(line: 508, column: 25, scope: !5413)
!5429 = !DILocation(line: 508, column: 9, scope: !5413)
!5430 = !DILocation(line: 508, column: 57, scope: !5413)
!5431 = !DILocation(line: 508, column: 41, scope: !5413)
!5432 = !DILocation(line: 508, column: 70, scope: !5413)
!5433 = !DILocation(line: 508, column: 38, scope: !5413)
!5434 = !DILocation(line: 508, column: 3, scope: !5413)
!5435 = !DILocation(line: 508, column: 7, scope: !5413)
!5436 = !DILocation(line: 510, column: 2, scope: !5413)
!5437 = !DILocation(line: 511, column: 1, scope: !5413)
!5438 = distinct !DISubprogram(name: "stv0299_read_signal_strength", scope: !3, file: !3, line: 513, type: !4291, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5439 = !DILocalVariable(name: "fe", arg: 1, scope: !5438, file: !3, line: 513, type: !4148)
!5440 = !DILocation(line: 513, column: 62, scope: !5438)
!5441 = !DILocalVariable(name: "strength", arg: 2, scope: !5438, file: !3, line: 513, type: !4293)
!5442 = !DILocation(line: 513, column: 71, scope: !5438)
!5443 = !DILocalVariable(name: "state", scope: !5438, file: !3, line: 515, type: !435)
!5444 = !DILocation(line: 515, column: 24, scope: !5438)
!5445 = !DILocation(line: 515, column: 32, scope: !5438)
!5446 = !DILocation(line: 515, column: 36, scope: !5438)
!5447 = !DILocalVariable(name: "signal", scope: !5438, file: !3, line: 517, type: !307)
!5448 = !DILocation(line: 517, column: 6, scope: !5438)
!5449 = !DILocation(line: 517, column: 44, scope: !5438)
!5450 = !DILocation(line: 517, column: 27, scope: !5438)
!5451 = !DILocation(line: 517, column: 57, scope: !5438)
!5452 = !DILocation(line: 518, column: 30, scope: !5438)
!5453 = !DILocation(line: 518, column: 13, scope: !5438)
!5454 = !DILocation(line: 518, column: 11, scope: !5438)
!5455 = !DILocation(line: 517, column: 23, scope: !5438)
!5456 = !DILocation(line: 520, column: 2, scope: !5438)
!5457 = !DILocation(line: 520, column: 2, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 520, column: 2)
!5459 = distinct !DILexicalBlock(scope: !5438, file: !3, line: 520, column: 2)
!5460 = !DILocation(line: 520, column: 2, scope: !5459)
!5461 = !DILocation(line: 524, column: 11, scope: !5438)
!5462 = !DILocation(line: 524, column: 18, scope: !5438)
!5463 = !DILocation(line: 524, column: 22, scope: !5438)
!5464 = !DILocation(line: 524, column: 9, scope: !5438)
!5465 = !DILocation(line: 525, column: 15, scope: !5438)
!5466 = !DILocation(line: 525, column: 22, scope: !5438)
!5467 = !DILocation(line: 525, column: 14, scope: !5438)
!5468 = !DILocation(line: 525, column: 44, scope: !5438)
!5469 = !DILocation(line: 525, column: 51, scope: !5438)
!5470 = !DILocation(line: 525, column: 43, scope: !5438)
!5471 = !DILocation(line: 525, column: 62, scope: !5438)
!5472 = !DILocation(line: 525, column: 3, scope: !5438)
!5473 = !DILocation(line: 525, column: 12, scope: !5438)
!5474 = !DILocation(line: 527, column: 2, scope: !5438)
!5475 = distinct !DISubprogram(name: "stv0299_read_snr", scope: !3, file: !3, line: 530, type: !4291, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5476 = !DILocalVariable(name: "fe", arg: 1, scope: !5475, file: !3, line: 530, type: !4148)
!5477 = !DILocation(line: 530, column: 50, scope: !5475)
!5478 = !DILocalVariable(name: "snr", arg: 2, scope: !5475, file: !3, line: 530, type: !4293)
!5479 = !DILocation(line: 530, column: 59, scope: !5475)
!5480 = !DILocalVariable(name: "state", scope: !5475, file: !3, line: 532, type: !435)
!5481 = !DILocation(line: 532, column: 24, scope: !5475)
!5482 = !DILocation(line: 532, column: 32, scope: !5475)
!5483 = !DILocation(line: 532, column: 36, scope: !5475)
!5484 = !DILocalVariable(name: "xsnr", scope: !5475, file: !3, line: 534, type: !307)
!5485 = !DILocation(line: 534, column: 6, scope: !5475)
!5486 = !DILocation(line: 534, column: 41, scope: !5475)
!5487 = !DILocation(line: 534, column: 24, scope: !5475)
!5488 = !DILocation(line: 534, column: 54, scope: !5475)
!5489 = !DILocation(line: 535, column: 26, scope: !5475)
!5490 = !DILocation(line: 535, column: 9, scope: !5475)
!5491 = !DILocation(line: 535, column: 7, scope: !5475)
!5492 = !DILocation(line: 534, column: 20, scope: !5475)
!5493 = !DILocation(line: 536, column: 14, scope: !5475)
!5494 = !DILocation(line: 536, column: 19, scope: !5475)
!5495 = !DILocation(line: 536, column: 11, scope: !5475)
!5496 = !DILocation(line: 536, column: 7, scope: !5475)
!5497 = !DILocation(line: 537, column: 10, scope: !5475)
!5498 = !DILocation(line: 537, column: 15, scope: !5475)
!5499 = !DILocation(line: 537, column: 9, scope: !5475)
!5500 = !DILocation(line: 537, column: 37, scope: !5475)
!5501 = !DILocation(line: 537, column: 42, scope: !5475)
!5502 = !DILocation(line: 537, column: 36, scope: !5475)
!5503 = !DILocation(line: 537, column: 53, scope: !5475)
!5504 = !DILocation(line: 537, column: 3, scope: !5475)
!5505 = !DILocation(line: 537, column: 7, scope: !5475)
!5506 = !DILocation(line: 539, column: 2, scope: !5475)
!5507 = distinct !DISubprogram(name: "stv0299_read_ucblocks", scope: !3, file: !3, line: 542, type: !4287, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5508 = !DILocalVariable(name: "fe", arg: 1, scope: !5507, file: !3, line: 542, type: !4148)
!5509 = !DILocation(line: 542, column: 55, scope: !5507)
!5510 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !5507, file: !3, line: 542, type: !2861)
!5511 = !DILocation(line: 542, column: 64, scope: !5507)
!5512 = !DILocalVariable(name: "state", scope: !5507, file: !3, line: 544, type: !435)
!5513 = !DILocation(line: 544, column: 24, scope: !5507)
!5514 = !DILocation(line: 544, column: 32, scope: !5507)
!5515 = !DILocation(line: 544, column: 36, scope: !5507)
!5516 = !DILocation(line: 546, column: 6, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 546, column: 6)
!5518 = !DILocation(line: 546, column: 13, scope: !5517)
!5519 = !DILocation(line: 546, column: 21, scope: !5517)
!5520 = !DILocation(line: 546, column: 6, scope: !5507)
!5521 = !DILocation(line: 547, column: 3, scope: !5517)
!5522 = !DILocation(line: 549, column: 37, scope: !5507)
!5523 = !DILocation(line: 549, column: 21, scope: !5507)
!5524 = !DILocation(line: 549, column: 2, scope: !5507)
!5525 = !DILocation(line: 549, column: 9, scope: !5507)
!5526 = !DILocation(line: 549, column: 18, scope: !5507)
!5527 = !DILocation(line: 550, column: 38, scope: !5507)
!5528 = !DILocation(line: 550, column: 22, scope: !5507)
!5529 = !DILocation(line: 550, column: 51, scope: !5507)
!5530 = !DILocation(line: 550, column: 2, scope: !5507)
!5531 = !DILocation(line: 550, column: 9, scope: !5507)
!5532 = !DILocation(line: 550, column: 18, scope: !5507)
!5533 = !DILocation(line: 551, column: 14, scope: !5507)
!5534 = !DILocation(line: 551, column: 21, scope: !5507)
!5535 = !DILocation(line: 551, column: 3, scope: !5507)
!5536 = !DILocation(line: 551, column: 12, scope: !5507)
!5537 = !DILocation(line: 553, column: 2, scope: !5507)
!5538 = !DILocation(line: 554, column: 1, scope: !5507)
!5539 = distinct !DISubprogram(name: "stv0299_send_diseqc_msg", scope: !3, file: !3, line: 263, type: !4299, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5540 = !DILocalVariable(name: "fe", arg: 1, scope: !5539, file: !3, line: 263, type: !4148)
!5541 = !DILocation(line: 263, column: 58, scope: !5539)
!5542 = !DILocalVariable(name: "m", arg: 2, scope: !5539, file: !3, line: 264, type: !4301)
!5543 = !DILocation(line: 264, column: 39, scope: !5539)
!5544 = !DILocalVariable(name: "state", scope: !5539, file: !3, line: 266, type: !435)
!5545 = !DILocation(line: 266, column: 24, scope: !5539)
!5546 = !DILocation(line: 266, column: 32, scope: !5539)
!5547 = !DILocation(line: 266, column: 36, scope: !5539)
!5548 = !DILocalVariable(name: "val", scope: !5539, file: !3, line: 267, type: !314)
!5549 = !DILocation(line: 267, column: 5, scope: !5539)
!5550 = !DILocalVariable(name: "i", scope: !5539, file: !3, line: 268, type: !309)
!5551 = !DILocation(line: 268, column: 6, scope: !5539)
!5552 = !DILocation(line: 270, column: 2, scope: !5539)
!5553 = !DILocation(line: 270, column: 2, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 270, column: 2)
!5555 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 270, column: 2)
!5556 = !DILocation(line: 270, column: 2, scope: !5555)
!5557 = !DILocation(line: 272, column: 32, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 272, column: 6)
!5559 = !DILocation(line: 272, column: 6, scope: !5558)
!5560 = !DILocation(line: 272, column: 44, scope: !5558)
!5561 = !DILocation(line: 272, column: 6, scope: !5539)
!5562 = !DILocation(line: 273, column: 3, scope: !5558)
!5563 = !DILocation(line: 275, column: 25, scope: !5539)
!5564 = !DILocation(line: 275, column: 8, scope: !5539)
!5565 = !DILocation(line: 275, column: 6, scope: !5539)
!5566 = !DILocation(line: 277, column: 25, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 277, column: 6)
!5568 = !DILocation(line: 277, column: 39, scope: !5567)
!5569 = !DILocation(line: 277, column: 43, scope: !5567)
!5570 = !DILocation(line: 277, column: 51, scope: !5567)
!5571 = !DILocation(line: 277, column: 38, scope: !5567)
!5572 = !DILocation(line: 277, column: 6, scope: !5567)
!5573 = !DILocation(line: 277, column: 6, scope: !5539)
!5574 = !DILocation(line: 278, column: 3, scope: !5567)
!5575 = !DILocation(line: 280, column: 8, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 280, column: 2)
!5577 = !DILocation(line: 280, column: 7, scope: !5576)
!5578 = !DILocation(line: 280, column: 12, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 280, column: 2)
!5580 = !DILocation(line: 280, column: 14, scope: !5579)
!5581 = !DILocation(line: 280, column: 17, scope: !5579)
!5582 = !DILocation(line: 280, column: 13, scope: !5579)
!5583 = !DILocation(line: 280, column: 2, scope: !5576)
!5584 = !DILocation(line: 281, column: 33, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5586, file: !3, line: 281, column: 7)
!5586 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 280, column: 31)
!5587 = !DILocation(line: 281, column: 7, scope: !5585)
!5588 = !DILocation(line: 281, column: 45, scope: !5585)
!5589 = !DILocation(line: 281, column: 7, scope: !5586)
!5590 = !DILocation(line: 282, column: 4, scope: !5585)
!5591 = !DILocation(line: 284, column: 26, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5586, file: !3, line: 284, column: 7)
!5593 = !DILocation(line: 284, column: 39, scope: !5592)
!5594 = !DILocation(line: 284, column: 42, scope: !5592)
!5595 = !DILocation(line: 284, column: 46, scope: !5592)
!5596 = !DILocation(line: 284, column: 7, scope: !5592)
!5597 = !DILocation(line: 284, column: 7, scope: !5586)
!5598 = !DILocation(line: 285, column: 4, scope: !5592)
!5599 = !DILocation(line: 286, column: 2, scope: !5586)
!5600 = !DILocation(line: 280, column: 27, scope: !5579)
!5601 = !DILocation(line: 280, column: 2, scope: !5579)
!5602 = distinct !{!5602, !5583, !5603}
!5603 = !DILocation(line: 286, column: 2, scope: !5576)
!5604 = !DILocation(line: 288, column: 32, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 288, column: 6)
!5606 = !DILocation(line: 288, column: 6, scope: !5605)
!5607 = !DILocation(line: 288, column: 44, scope: !5605)
!5608 = !DILocation(line: 288, column: 6, scope: !5539)
!5609 = !DILocation(line: 289, column: 3, scope: !5605)
!5610 = !DILocation(line: 291, column: 2, scope: !5539)
!5611 = !DILocation(line: 292, column: 1, scope: !5539)
!5612 = distinct !DISubprogram(name: "stv0299_send_diseqc_burst", scope: !3, file: !3, line: 294, type: !4320, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5613 = !DILocalVariable(name: "fe", arg: 1, scope: !5612, file: !3, line: 294, type: !4148)
!5614 = !DILocation(line: 294, column: 59, scope: !5612)
!5615 = !DILocalVariable(name: "burst", arg: 2, scope: !5612, file: !3, line: 295, type: !171)
!5616 = !DILocation(line: 295, column: 31, scope: !5612)
!5617 = !DILocalVariable(name: "state", scope: !5612, file: !3, line: 297, type: !435)
!5618 = !DILocation(line: 297, column: 24, scope: !5612)
!5619 = !DILocation(line: 297, column: 32, scope: !5612)
!5620 = !DILocation(line: 297, column: 36, scope: !5612)
!5621 = !DILocalVariable(name: "val", scope: !5612, file: !3, line: 298, type: !314)
!5622 = !DILocation(line: 298, column: 5, scope: !5612)
!5623 = !DILocation(line: 300, column: 2, scope: !5612)
!5624 = !DILocation(line: 300, column: 2, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5626, file: !3, line: 300, column: 2)
!5626 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 300, column: 2)
!5627 = !DILocation(line: 300, column: 2, scope: !5626)
!5628 = !DILocation(line: 302, column: 32, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 302, column: 6)
!5630 = !DILocation(line: 302, column: 6, scope: !5629)
!5631 = !DILocation(line: 302, column: 44, scope: !5629)
!5632 = !DILocation(line: 302, column: 6, scope: !5612)
!5633 = !DILocation(line: 303, column: 3, scope: !5629)
!5634 = !DILocation(line: 305, column: 25, scope: !5612)
!5635 = !DILocation(line: 305, column: 8, scope: !5612)
!5636 = !DILocation(line: 305, column: 6, scope: !5612)
!5637 = !DILocation(line: 307, column: 25, scope: !5638)
!5638 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 307, column: 6)
!5639 = !DILocation(line: 307, column: 39, scope: !5638)
!5640 = !DILocation(line: 307, column: 43, scope: !5638)
!5641 = !DILocation(line: 307, column: 51, scope: !5638)
!5642 = !DILocation(line: 307, column: 38, scope: !5638)
!5643 = !DILocation(line: 307, column: 6, scope: !5638)
!5644 = !DILocation(line: 307, column: 6, scope: !5612)
!5645 = !DILocation(line: 308, column: 3, scope: !5638)
!5646 = !DILocation(line: 310, column: 25, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 310, column: 6)
!5648 = !DILocation(line: 310, column: 38, scope: !5647)
!5649 = !DILocation(line: 310, column: 44, scope: !5647)
!5650 = !DILocation(line: 310, column: 6, scope: !5647)
!5651 = !DILocation(line: 310, column: 6, scope: !5612)
!5652 = !DILocation(line: 311, column: 3, scope: !5647)
!5653 = !DILocation(line: 313, column: 32, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 313, column: 6)
!5655 = !DILocation(line: 313, column: 6, scope: !5654)
!5656 = !DILocation(line: 313, column: 44, scope: !5654)
!5657 = !DILocation(line: 313, column: 6, scope: !5612)
!5658 = !DILocation(line: 314, column: 3, scope: !5654)
!5659 = !DILocation(line: 316, column: 25, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 316, column: 6)
!5661 = !DILocation(line: 316, column: 38, scope: !5660)
!5662 = !DILocation(line: 316, column: 6, scope: !5660)
!5663 = !DILocation(line: 316, column: 6, scope: !5612)
!5664 = !DILocation(line: 317, column: 3, scope: !5660)
!5665 = !DILocation(line: 319, column: 2, scope: !5612)
!5666 = !DILocation(line: 320, column: 1, scope: !5612)
!5667 = distinct !DISubprogram(name: "stv0299_set_tone", scope: !3, file: !3, line: 322, type: !4324, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5668 = !DILocalVariable(name: "fe", arg: 1, scope: !5667, file: !3, line: 322, type: !4148)
!5669 = !DILocation(line: 322, column: 50, scope: !5667)
!5670 = !DILocalVariable(name: "tone", arg: 2, scope: !5667, file: !3, line: 323, type: !78)
!5671 = !DILocation(line: 323, column: 30, scope: !5667)
!5672 = !DILocalVariable(name: "state", scope: !5667, file: !3, line: 325, type: !435)
!5673 = !DILocation(line: 325, column: 24, scope: !5667)
!5674 = !DILocation(line: 325, column: 32, scope: !5667)
!5675 = !DILocation(line: 325, column: 36, scope: !5667)
!5676 = !DILocalVariable(name: "val", scope: !5667, file: !3, line: 326, type: !314)
!5677 = !DILocation(line: 326, column: 5, scope: !5667)
!5678 = !DILocation(line: 328, column: 32, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 328, column: 6)
!5680 = !DILocation(line: 328, column: 6, scope: !5679)
!5681 = !DILocation(line: 328, column: 44, scope: !5679)
!5682 = !DILocation(line: 328, column: 6, scope: !5667)
!5683 = !DILocation(line: 329, column: 3, scope: !5679)
!5684 = !DILocation(line: 331, column: 25, scope: !5667)
!5685 = !DILocation(line: 331, column: 8, scope: !5667)
!5686 = !DILocation(line: 331, column: 6, scope: !5667)
!5687 = !DILocation(line: 333, column: 10, scope: !5667)
!5688 = !DILocation(line: 333, column: 2, scope: !5667)
!5689 = !DILocation(line: 335, column: 29, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 333, column: 16)
!5691 = !DILocation(line: 335, column: 42, scope: !5690)
!5692 = !DILocation(line: 335, column: 46, scope: !5690)
!5693 = !DILocation(line: 335, column: 10, scope: !5690)
!5694 = !DILocation(line: 335, column: 3, scope: !5690)
!5695 = !DILocation(line: 338, column: 29, scope: !5690)
!5696 = !DILocation(line: 338, column: 43, scope: !5690)
!5697 = !DILocation(line: 338, column: 47, scope: !5690)
!5698 = !DILocation(line: 338, column: 55, scope: !5690)
!5699 = !DILocation(line: 338, column: 42, scope: !5690)
!5700 = !DILocation(line: 338, column: 10, scope: !5690)
!5701 = !DILocation(line: 338, column: 3, scope: !5690)
!5702 = !DILocation(line: 341, column: 3, scope: !5690)
!5703 = !DILocation(line: 343, column: 1, scope: !5667)
!5704 = distinct !DISubprogram(name: "stv0299_set_voltage", scope: !3, file: !3, line: 345, type: !4328, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5705 = !DILocalVariable(name: "fe", arg: 1, scope: !5704, file: !3, line: 345, type: !4148)
!5706 = !DILocation(line: 345, column: 53, scope: !5704)
!5707 = !DILocalVariable(name: "voltage", arg: 2, scope: !5704, file: !3, line: 346, type: !73)
!5708 = !DILocation(line: 346, column: 31, scope: !5704)
!5709 = !DILocalVariable(name: "state", scope: !5704, file: !3, line: 348, type: !435)
!5710 = !DILocation(line: 348, column: 24, scope: !5704)
!5711 = !DILocation(line: 348, column: 32, scope: !5704)
!5712 = !DILocation(line: 348, column: 36, scope: !5704)
!5713 = !DILocalVariable(name: "reg0x08", scope: !5704, file: !3, line: 349, type: !314)
!5714 = !DILocation(line: 349, column: 5, scope: !5704)
!5715 = !DILocalVariable(name: "reg0x0c", scope: !5704, file: !3, line: 350, type: !314)
!5716 = !DILocation(line: 350, column: 5, scope: !5704)
!5717 = !DILocation(line: 352, column: 2, scope: !5704)
!5718 = !DILocation(line: 352, column: 2, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5720, file: !3, line: 352, column: 2)
!5720 = distinct !DILexicalBlock(scope: !5704, file: !3, line: 352, column: 2)
!5721 = !DILocation(line: 352, column: 2, scope: !5720)
!5722 = !DILocation(line: 356, column: 29, scope: !5704)
!5723 = !DILocation(line: 356, column: 12, scope: !5704)
!5724 = !DILocation(line: 356, column: 10, scope: !5704)
!5725 = !DILocation(line: 357, column: 29, scope: !5704)
!5726 = !DILocation(line: 357, column: 12, scope: !5704)
!5727 = !DILocation(line: 357, column: 10, scope: !5704)
!5728 = !DILocation(line: 362, column: 10, scope: !5704)
!5729 = !DILocation(line: 363, column: 13, scope: !5704)
!5730 = !DILocation(line: 363, column: 21, scope: !5704)
!5731 = !DILocation(line: 363, column: 32, scope: !5704)
!5732 = !DILocation(line: 363, column: 39, scope: !5704)
!5733 = !DILocation(line: 363, column: 47, scope: !5704)
!5734 = !DILocation(line: 363, column: 59, scope: !5704)
!5735 = !DILocation(line: 363, column: 29, scope: !5704)
!5736 = !DILocation(line: 363, column: 12, scope: !5704)
!5737 = !DILocation(line: 363, column: 10, scope: !5704)
!5738 = !DILocation(line: 365, column: 10, scope: !5704)
!5739 = !DILocation(line: 365, column: 2, scope: !5704)
!5740 = !DILocation(line: 367, column: 7, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 367, column: 7)
!5742 = distinct !DILexicalBlock(scope: !5704, file: !3, line: 365, column: 19)
!5743 = !DILocation(line: 367, column: 14, scope: !5741)
!5744 = !DILocation(line: 367, column: 22, scope: !5741)
!5745 = !DILocation(line: 367, column: 37, scope: !5741)
!5746 = !DILocation(line: 367, column: 7, scope: !5742)
!5747 = !DILocation(line: 368, column: 12, scope: !5741)
!5748 = !DILocation(line: 368, column: 4, scope: !5741)
!5749 = !DILocation(line: 370, column: 12, scope: !5741)
!5750 = !DILocation(line: 371, column: 3, scope: !5742)
!5751 = !DILocation(line: 373, column: 11, scope: !5742)
!5752 = !DILocation(line: 374, column: 3, scope: !5742)
!5753 = !DILocation(line: 377, column: 11, scope: !5742)
!5754 = !DILocation(line: 378, column: 11, scope: !5742)
!5755 = !DILocation(line: 379, column: 3, scope: !5742)
!5756 = !DILocation(line: 381, column: 3, scope: !5742)
!5757 = !DILocation(line: 384, column: 6, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5704, file: !3, line: 384, column: 6)
!5759 = !DILocation(line: 384, column: 13, scope: !5758)
!5760 = !DILocation(line: 384, column: 21, scope: !5758)
!5761 = !DILocation(line: 384, column: 6, scope: !5704)
!5762 = !DILocation(line: 385, column: 11, scope: !5758)
!5763 = !DILocation(line: 385, column: 3, scope: !5758)
!5764 = !DILocation(line: 387, column: 20, scope: !5704)
!5765 = !DILocation(line: 387, column: 33, scope: !5704)
!5766 = !DILocation(line: 387, column: 2, scope: !5704)
!5767 = !DILocation(line: 388, column: 27, scope: !5704)
!5768 = !DILocation(line: 388, column: 40, scope: !5704)
!5769 = !DILocation(line: 388, column: 9, scope: !5704)
!5770 = !DILocation(line: 388, column: 2, scope: !5704)
!5771 = !DILocation(line: 389, column: 1, scope: !5704)
!5772 = distinct !DISubprogram(name: "stv0299_send_legacy_dish_cmd", scope: !3, file: !3, line: 391, type: !4336, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5773 = !DILocalVariable(name: "fe", arg: 1, scope: !5772, file: !3, line: 391, type: !4148)
!5774 = !DILocation(line: 391, column: 63, scope: !5772)
!5775 = !DILocalVariable(name: "cmd", arg: 2, scope: !5772, file: !3, line: 391, type: !525)
!5776 = !DILocation(line: 391, column: 81, scope: !5772)
!5777 = !DILocalVariable(name: "state", scope: !5772, file: !3, line: 393, type: !435)
!5778 = !DILocation(line: 393, column: 24, scope: !5772)
!5779 = !DILocation(line: 393, column: 32, scope: !5772)
!5780 = !DILocation(line: 393, column: 36, scope: !5772)
!5781 = !DILocalVariable(name: "reg0x08", scope: !5772, file: !3, line: 394, type: !314)
!5782 = !DILocation(line: 394, column: 5, scope: !5772)
!5783 = !DILocalVariable(name: "reg0x0c", scope: !5772, file: !3, line: 395, type: !314)
!5784 = !DILocation(line: 395, column: 5, scope: !5772)
!5785 = !DILocalVariable(name: "lv_mask", scope: !5772, file: !3, line: 396, type: !314)
!5786 = !DILocation(line: 396, column: 5, scope: !5772)
!5787 = !DILocalVariable(name: "last", scope: !5772, file: !3, line: 397, type: !314)
!5788 = !DILocation(line: 397, column: 5, scope: !5772)
!5789 = !DILocalVariable(name: "i", scope: !5772, file: !3, line: 398, type: !309)
!5790 = !DILocation(line: 398, column: 6, scope: !5772)
!5791 = !DILocalVariable(name: "nexttime", scope: !5772, file: !3, line: 399, type: !627)
!5792 = !DILocation(line: 399, column: 10, scope: !5772)
!5793 = !DILocalVariable(name: "tv", scope: !5772, file: !3, line: 400, type: !5794)
!5794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 640, elements: !5795)
!5795 = !{!5796}
!5796 = !DISubrange(count: 10)
!5797 = !DILocation(line: 400, column: 10, scope: !5772)
!5798 = !DILocation(line: 402, column: 29, scope: !5772)
!5799 = !DILocation(line: 402, column: 12, scope: !5772)
!5800 = !DILocation(line: 402, column: 10, scope: !5772)
!5801 = !DILocation(line: 403, column: 29, scope: !5772)
!5802 = !DILocation(line: 403, column: 12, scope: !5772)
!5803 = !DILocation(line: 403, column: 10, scope: !5772)
!5804 = !DILocation(line: 404, column: 10, scope: !5772)
!5805 = !DILocation(line: 405, column: 21, scope: !5772)
!5806 = !DILocation(line: 405, column: 35, scope: !5772)
!5807 = !DILocation(line: 405, column: 43, scope: !5772)
!5808 = !DILocation(line: 405, column: 54, scope: !5772)
!5809 = !DILocation(line: 405, column: 61, scope: !5772)
!5810 = !DILocation(line: 405, column: 69, scope: !5772)
!5811 = !DILocation(line: 405, column: 81, scope: !5772)
!5812 = !DILocation(line: 405, column: 51, scope: !5772)
!5813 = !DILocation(line: 405, column: 34, scope: !5772)
!5814 = !DILocation(line: 405, column: 2, scope: !5772)
!5815 = !DILocation(line: 406, column: 6, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5772, file: !3, line: 406, column: 6)
!5817 = !DILocation(line: 406, column: 13, scope: !5816)
!5818 = !DILocation(line: 406, column: 21, scope: !5816)
!5819 = !DILocation(line: 406, column: 36, scope: !5816)
!5820 = !DILocation(line: 406, column: 6, scope: !5772)
!5821 = !DILocation(line: 407, column: 11, scope: !5816)
!5822 = !DILocation(line: 407, column: 3, scope: !5816)
!5823 = !DILocation(line: 409, column: 8, scope: !5772)
!5824 = !DILocation(line: 409, column: 12, scope: !5772)
!5825 = !DILocation(line: 409, column: 6, scope: !5772)
!5826 = !DILocation(line: 410, column: 6, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5772, file: !3, line: 410, column: 6)
!5828 = !DILocation(line: 410, column: 6, scope: !5772)
!5829 = !DILocation(line: 411, column: 52, scope: !5827)
!5830 = !DILocation(line: 411, column: 3, scope: !5827)
!5831 = !DILocation(line: 413, column: 13, scope: !5772)
!5832 = !DILocation(line: 413, column: 11, scope: !5772)
!5833 = !DILocation(line: 414, column: 6, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5772, file: !3, line: 414, column: 6)
!5835 = !DILocation(line: 414, column: 6, scope: !5772)
!5836 = !DILocation(line: 415, column: 11, scope: !5834)
!5837 = !DILocation(line: 415, column: 3, scope: !5834)
!5838 = !DILocation(line: 415, column: 9, scope: !5834)
!5839 = !DILocation(line: 416, column: 21, scope: !5772)
!5840 = !DILocation(line: 416, column: 34, scope: !5772)
!5841 = !DILocation(line: 416, column: 42, scope: !5772)
!5842 = !DILocation(line: 416, column: 2, scope: !5772)
!5843 = !DILocation(line: 418, column: 2, scope: !5772)
!5844 = !DILocation(line: 420, column: 8, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5772, file: !3, line: 420, column: 2)
!5846 = !DILocation(line: 420, column: 7, scope: !5845)
!5847 = !DILocation(line: 420, column: 12, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5845, file: !3, line: 420, column: 2)
!5849 = !DILocation(line: 420, column: 13, scope: !5848)
!5850 = !DILocation(line: 420, column: 2, scope: !5845)
!5851 = !DILocation(line: 421, column: 7, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 421, column: 7)
!5853 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 420, column: 22)
!5854 = !DILocation(line: 421, column: 7, scope: !5853)
!5855 = !DILocation(line: 422, column: 14, scope: !5852)
!5856 = !DILocation(line: 422, column: 7, scope: !5852)
!5857 = !DILocation(line: 422, column: 8, scope: !5852)
!5858 = !DILocation(line: 422, column: 4, scope: !5852)
!5859 = !DILocation(line: 422, column: 12, scope: !5852)
!5860 = !DILocation(line: 423, column: 7, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 423, column: 6)
!5862 = !DILocation(line: 423, column: 11, scope: !5861)
!5863 = !DILocation(line: 423, column: 22, scope: !5861)
!5864 = !DILocation(line: 423, column: 19, scope: !5861)
!5865 = !DILocation(line: 423, column: 6, scope: !5853)
!5866 = !DILocation(line: 425, column: 23, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 423, column: 28)
!5868 = !DILocation(line: 425, column: 36, scope: !5867)
!5869 = !DILocation(line: 425, column: 47, scope: !5867)
!5870 = !DILocation(line: 425, column: 54, scope: !5867)
!5871 = !DILocation(line: 425, column: 44, scope: !5867)
!5872 = !DILocation(line: 425, column: 4, scope: !5867)
!5873 = !DILocation(line: 426, column: 12, scope: !5867)
!5874 = !DILocation(line: 426, column: 11, scope: !5867)
!5875 = !DILocation(line: 426, column: 9, scope: !5867)
!5876 = !DILocation(line: 427, column: 3, scope: !5867)
!5877 = !DILocation(line: 429, column: 9, scope: !5853)
!5878 = !DILocation(line: 429, column: 13, scope: !5853)
!5879 = !DILocation(line: 429, column: 7, scope: !5853)
!5880 = !DILocation(line: 431, column: 7, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 431, column: 7)
!5882 = !DILocation(line: 431, column: 9, scope: !5881)
!5883 = !DILocation(line: 431, column: 7, scope: !5853)
!5884 = !DILocation(line: 432, column: 4, scope: !5881)
!5885 = !DILocation(line: 433, column: 2, scope: !5853)
!5886 = !DILocation(line: 420, column: 18, scope: !5848)
!5887 = !DILocation(line: 420, column: 2, scope: !5848)
!5888 = distinct !{!5888, !5850, !5889}
!5889 = !DILocation(line: 433, column: 2, scope: !5845)
!5890 = !DILocation(line: 434, column: 6, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5772, file: !3, line: 434, column: 6)
!5892 = !DILocation(line: 434, column: 6, scope: !5772)
!5893 = !DILocation(line: 436, column: 14, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5891, file: !3, line: 434, column: 32)
!5895 = !DILocation(line: 436, column: 18, scope: !5894)
!5896 = !DILocation(line: 436, column: 23, scope: !5894)
!5897 = !DILocation(line: 435, column: 3, scope: !5894)
!5898 = !DILocation(line: 437, column: 10, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5894, file: !3, line: 437, column: 3)
!5900 = !DILocation(line: 437, column: 8, scope: !5899)
!5901 = !DILocation(line: 437, column: 15, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5899, file: !3, line: 437, column: 3)
!5903 = !DILocation(line: 437, column: 17, scope: !5902)
!5904 = !DILocation(line: 437, column: 3, scope: !5899)
!5905 = !DILocation(line: 438, column: 23, scope: !5902)
!5906 = !DILocation(line: 439, column: 35, scope: !5902)
!5907 = !DILocation(line: 439, column: 32, scope: !5902)
!5908 = !DILocation(line: 439, column: 42, scope: !5902)
!5909 = !DILocation(line: 439, column: 43, scope: !5902)
!5910 = !DILocation(line: 439, column: 39, scope: !5902)
!5911 = !DILocation(line: 439, column: 17, scope: !5902)
!5912 = !DILocation(line: 439, column: 11, scope: !5902)
!5913 = !DILocation(line: 438, column: 4, scope: !5902)
!5914 = !DILocation(line: 437, column: 24, scope: !5902)
!5915 = !DILocation(line: 437, column: 3, scope: !5902)
!5916 = distinct !{!5916, !5904, !5917}
!5917 = !DILocation(line: 439, column: 47, scope: !5899)
!5918 = !DILocation(line: 440, column: 2, scope: !5894)
!5919 = !DILocation(line: 442, column: 2, scope: !5772)
!5920 = distinct !DISubprogram(name: "stv0299_i2c_gate_ctrl", scope: !3, file: !3, line: 629, type: !4340, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5921 = !DILocalVariable(name: "fe", arg: 1, scope: !5920, file: !3, line: 629, type: !4148)
!5922 = !DILocation(line: 629, column: 55, scope: !5920)
!5923 = !DILocalVariable(name: "enable", arg: 2, scope: !5920, file: !3, line: 629, type: !309)
!5924 = !DILocation(line: 629, column: 63, scope: !5920)
!5925 = !DILocalVariable(name: "state", scope: !5920, file: !3, line: 631, type: !435)
!5926 = !DILocation(line: 631, column: 24, scope: !5920)
!5927 = !DILocation(line: 631, column: 32, scope: !5920)
!5928 = !DILocation(line: 631, column: 36, scope: !5920)
!5929 = !DILocation(line: 633, column: 6, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 633, column: 6)
!5931 = !DILocation(line: 633, column: 6, scope: !5920)
!5932 = !DILocation(line: 634, column: 21, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5930, file: !3, line: 633, column: 14)
!5934 = !DILocation(line: 634, column: 3, scope: !5933)
!5935 = !DILocation(line: 635, column: 2, scope: !5933)
!5936 = !DILocation(line: 636, column: 21, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5930, file: !3, line: 635, column: 9)
!5938 = !DILocation(line: 636, column: 3, scope: !5937)
!5939 = !DILocation(line: 638, column: 2, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5941, file: !3, line: 638, column: 2)
!5941 = distinct !DILexicalBlock(scope: !5942, file: !3, line: 638, column: 2)
!5942 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 638, column: 2)
!5943 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 638, column: 2)
!5944 = !DILocation(line: 639, column: 2, scope: !5920)
!5945 = distinct !DISubprogram(name: "stv0299_set_FEC", scope: !3, file: !3, line: 126, type: !5946, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5946 = !DISubroutineType(types: !5947)
!5947 = !{!309, !435, !87}
!5948 = !DILocalVariable(name: "state", arg: 1, scope: !5945, file: !3, line: 126, type: !435)
!5949 = !DILocation(line: 126, column: 50, scope: !5945)
!5950 = !DILocalVariable(name: "fec", arg: 2, scope: !5945, file: !3, line: 126, type: !87)
!5951 = !DILocation(line: 126, column: 75, scope: !5945)
!5952 = !DILocation(line: 128, column: 2, scope: !5945)
!5953 = !DILocation(line: 128, column: 2, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5955, file: !3, line: 128, column: 2)
!5955 = distinct !DILexicalBlock(scope: !5945, file: !3, line: 128, column: 2)
!5956 = !DILocation(line: 128, column: 2, scope: !5955)
!5957 = !DILocation(line: 130, column: 10, scope: !5945)
!5958 = !DILocation(line: 130, column: 2, scope: !5945)
!5959 = !DILocation(line: 133, column: 29, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 132, column: 2)
!5961 = distinct !DILexicalBlock(scope: !5945, file: !3, line: 130, column: 15)
!5962 = !DILocation(line: 133, column: 10, scope: !5960)
!5963 = !DILocation(line: 133, column: 3, scope: !5960)
!5964 = !DILocation(line: 137, column: 29, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 136, column: 2)
!5966 = !DILocation(line: 137, column: 10, scope: !5965)
!5967 = !DILocation(line: 137, column: 3, scope: !5965)
!5968 = !DILocation(line: 141, column: 29, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 140, column: 2)
!5970 = !DILocation(line: 141, column: 10, scope: !5969)
!5971 = !DILocation(line: 141, column: 3, scope: !5969)
!5972 = !DILocation(line: 145, column: 29, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 144, column: 2)
!5974 = !DILocation(line: 145, column: 10, scope: !5973)
!5975 = !DILocation(line: 145, column: 3, scope: !5973)
!5976 = !DILocation(line: 149, column: 29, scope: !5977)
!5977 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 148, column: 2)
!5978 = !DILocation(line: 149, column: 10, scope: !5977)
!5979 = !DILocation(line: 149, column: 3, scope: !5977)
!5980 = !DILocation(line: 153, column: 29, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 152, column: 2)
!5982 = !DILocation(line: 153, column: 10, scope: !5981)
!5983 = !DILocation(line: 153, column: 3, scope: !5981)
!5984 = !DILocation(line: 157, column: 3, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 156, column: 2)
!5986 = !DILocation(line: 160, column: 1, scope: !5945)
!5987 = distinct !DISubprogram(name: "stv0299_set_symbolrate", scope: !3, file: !3, line: 213, type: !4398, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!5988 = !DILocalVariable(name: "fe", arg: 1, scope: !5987, file: !3, line: 213, type: !4148)
!5989 = !DILocation(line: 213, column: 57, scope: !5987)
!5990 = !DILocalVariable(name: "srate", arg: 2, scope: !5987, file: !3, line: 213, type: !482)
!5991 = !DILocation(line: 213, column: 65, scope: !5987)
!5992 = !DILocalVariable(name: "state", scope: !5987, file: !3, line: 215, type: !435)
!5993 = !DILocation(line: 215, column: 24, scope: !5987)
!5994 = !DILocation(line: 215, column: 32, scope: !5987)
!5995 = !DILocation(line: 215, column: 36, scope: !5987)
!5996 = !DILocalVariable(name: "big", scope: !5987, file: !3, line: 216, type: !302)
!5997 = !DILocation(line: 216, column: 6, scope: !5987)
!5998 = !DILocation(line: 216, column: 12, scope: !5987)
!5999 = !DILocalVariable(name: "ratio", scope: !5987, file: !3, line: 217, type: !482)
!6000 = !DILocation(line: 217, column: 6, scope: !5987)
!6001 = !DILocation(line: 220, column: 7, scope: !6002)
!6002 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 220, column: 6)
!6003 = !DILocation(line: 220, column: 13, scope: !6002)
!6004 = !DILocation(line: 220, column: 24, scope: !6002)
!6005 = !DILocation(line: 220, column: 28, scope: !6002)
!6006 = !DILocation(line: 220, column: 34, scope: !6002)
!6007 = !DILocation(line: 220, column: 6, scope: !5987)
!6008 = !DILocation(line: 220, column: 47, scope: !6002)
!6009 = !DILocation(line: 223, column: 8, scope: !5987)
!6010 = !DILocation(line: 223, column: 12, scope: !5987)
!6011 = !DILocation(line: 223, column: 6, scope: !5987)
!6012 = !DILocation(line: 224, column: 10, scope: !5987)
!6013 = !DILocation(line: 224, column: 17, scope: !5987)
!6014 = !DILocation(line: 224, column: 25, scope: !5987)
!6015 = !DILocation(line: 224, column: 29, scope: !5987)
!6016 = !DILocation(line: 224, column: 9, scope: !5987)
!6017 = !DILocation(line: 224, column: 6, scope: !5987)
!6018 = !DILocalVariable(name: "__base", scope: !6019, file: !3, line: 225, type: !941)
!6019 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 225, column: 2)
!6020 = !DILocation(line: 225, column: 2, scope: !6019)
!6021 = !DILocalVariable(name: "__rem", scope: !6019, file: !3, line: 225, type: !941)
!6022 = !DILocation(line: 226, column: 10, scope: !5987)
!6023 = !DILocation(line: 226, column: 14, scope: !5987)
!6024 = !DILocation(line: 226, column: 8, scope: !5987)
!6025 = !DILocation(line: 228, column: 9, scope: !5987)
!6026 = !DILocation(line: 228, column: 16, scope: !5987)
!6027 = !DILocation(line: 228, column: 24, scope: !5987)
!6028 = !DILocation(line: 228, column: 40, scope: !5987)
!6029 = !DILocation(line: 228, column: 44, scope: !5987)
!6030 = !DILocation(line: 228, column: 51, scope: !5987)
!6031 = !DILocation(line: 228, column: 2, scope: !5987)
!6032 = !DILocation(line: 229, column: 1, scope: !5987)
!6033 = !DILocalVariable(name: "state", arg: 1, scope: !432, file: !3, line: 162, type: !435)
!6034 = !DILocation(line: 162, column: 64, scope: !432)
!6035 = !DILocalVariable(name: "index", scope: !432, file: !3, line: 166, type: !314)
!6036 = !DILocation(line: 166, column: 5, scope: !432)
!6037 = !DILocation(line: 168, column: 2, scope: !432)
!6038 = !DILocation(line: 168, column: 2, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !6040, file: !3, line: 168, column: 2)
!6040 = distinct !DILexicalBlock(scope: !432, file: !3, line: 168, column: 2)
!6041 = !DILocation(line: 168, column: 2, scope: !6040)
!6042 = !DILocation(line: 170, column: 27, scope: !432)
!6043 = !DILocation(line: 170, column: 10, scope: !432)
!6044 = !DILocation(line: 170, column: 8, scope: !432)
!6045 = !DILocation(line: 171, column: 8, scope: !432)
!6046 = !DILocation(line: 173, column: 6, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !432, file: !3, line: 173, column: 6)
!6048 = !DILocation(line: 173, column: 12, scope: !6047)
!6049 = !DILocation(line: 173, column: 6, scope: !432)
!6050 = !DILocation(line: 174, column: 3, scope: !6047)
!6051 = !DILocation(line: 176, column: 18, scope: !432)
!6052 = !DILocation(line: 176, column: 9, scope: !432)
!6053 = !DILocation(line: 176, column: 2, scope: !432)
!6054 = !DILocation(line: 177, column: 1, scope: !432)
!6055 = distinct !DISubprogram(name: "stv0299_get_symbolrate", scope: !3, file: !3, line: 231, type: !6056, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!6056 = !DISubroutineType(types: !6057)
!6057 = !{!309, !435}
!6058 = !DILocalVariable(name: "state", arg: 1, scope: !6055, file: !3, line: 231, type: !435)
!6059 = !DILocation(line: 231, column: 58, scope: !6055)
!6060 = !DILocalVariable(name: "Mclk", scope: !6055, file: !3, line: 233, type: !482)
!6061 = !DILocation(line: 233, column: 6, scope: !6055)
!6062 = !DILocation(line: 233, column: 13, scope: !6055)
!6063 = !DILocation(line: 233, column: 20, scope: !6055)
!6064 = !DILocation(line: 233, column: 28, scope: !6055)
!6065 = !DILocation(line: 233, column: 33, scope: !6055)
!6066 = !DILocalVariable(name: "srate", scope: !6055, file: !3, line: 234, type: !482)
!6067 = !DILocation(line: 234, column: 6, scope: !6055)
!6068 = !DILocalVariable(name: "offset", scope: !6055, file: !3, line: 235, type: !307)
!6069 = !DILocation(line: 235, column: 6, scope: !6055)
!6070 = !DILocalVariable(name: "sfr", scope: !6055, file: !3, line: 236, type: !6071)
!6071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 24, elements: !1039)
!6072 = !DILocation(line: 236, column: 5, scope: !6055)
!6073 = !DILocalVariable(name: "rtf", scope: !6055, file: !3, line: 237, type: !358)
!6074 = !DILocation(line: 237, column: 5, scope: !6055)
!6075 = !DILocation(line: 239, column: 2, scope: !6055)
!6076 = !DILocation(line: 239, column: 2, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6078, file: !3, line: 239, column: 2)
!6078 = distinct !DILexicalBlock(scope: !6055, file: !3, line: 239, column: 2)
!6079 = !DILocation(line: 239, column: 2, scope: !6078)
!6080 = !DILocation(line: 241, column: 20, scope: !6055)
!6081 = !DILocation(line: 241, column: 33, scope: !6055)
!6082 = !DILocation(line: 241, column: 2, scope: !6055)
!6083 = !DILocation(line: 242, column: 20, scope: !6055)
!6084 = !DILocation(line: 242, column: 2, scope: !6055)
!6085 = !DILocation(line: 244, column: 11, scope: !6055)
!6086 = !DILocation(line: 244, column: 18, scope: !6055)
!6087 = !DILocation(line: 244, column: 26, scope: !6055)
!6088 = !DILocation(line: 244, column: 24, scope: !6055)
!6089 = !DILocation(line: 244, column: 8, scope: !6055)
!6090 = !DILocation(line: 245, column: 11, scope: !6055)
!6091 = !DILocation(line: 245, column: 8, scope: !6055)
!6092 = !DILocation(line: 246, column: 8, scope: !6055)
!6093 = !DILocation(line: 247, column: 12, scope: !6055)
!6094 = !DILocation(line: 247, column: 19, scope: !6055)
!6095 = !DILocation(line: 247, column: 27, scope: !6055)
!6096 = !DILocation(line: 247, column: 25, scope: !6055)
!6097 = !DILocation(line: 247, column: 32, scope: !6055)
!6098 = !DILocation(line: 247, column: 8, scope: !6055)
!6099 = !DILocation(line: 248, column: 17, scope: !6055)
!6100 = !DILocation(line: 248, column: 11, scope: !6055)
!6101 = !DILocation(line: 248, column: 24, scope: !6055)
!6102 = !DILocation(line: 248, column: 30, scope: !6055)
!6103 = !DILocation(line: 248, column: 21, scope: !6055)
!6104 = !DILocation(line: 248, column: 9, scope: !6055)
!6105 = !DILocation(line: 249, column: 9, scope: !6055)
!6106 = !DILocation(line: 251, column: 2, scope: !6055)
!6107 = !DILocation(line: 251, column: 2, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6109, file: !3, line: 251, column: 2)
!6109 = distinct !DILexicalBlock(scope: !6055, file: !3, line: 251, column: 2)
!6110 = !DILocation(line: 251, column: 2, scope: !6109)
!6111 = !DILocation(line: 252, column: 2, scope: !6055)
!6112 = !DILocation(line: 252, column: 2, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 252, column: 2)
!6114 = distinct !DILexicalBlock(scope: !6055, file: !3, line: 252, column: 2)
!6115 = !DILocation(line: 252, column: 2, scope: !6114)
!6116 = !DILocation(line: 254, column: 11, scope: !6055)
!6117 = !DILocation(line: 254, column: 8, scope: !6055)
!6118 = !DILocation(line: 256, column: 8, scope: !6055)
!6119 = !DILocation(line: 257, column: 8, scope: !6055)
!6120 = !DILocation(line: 258, column: 8, scope: !6055)
!6121 = !DILocation(line: 260, column: 9, scope: !6055)
!6122 = !DILocation(line: 260, column: 2, scope: !6055)
!6123 = distinct !DISubprogram(name: "stv0299_readregs", scope: !3, file: !3, line: 112, type: !6124, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!6124 = !DISubroutineType(types: !6125)
!6125 = !{!309, !435, !314, !313, !314}
!6126 = !DILocalVariable(name: "state", arg: 1, scope: !6123, file: !3, line: 112, type: !435)
!6127 = !DILocation(line: 112, column: 52, scope: !6123)
!6128 = !DILocalVariable(name: "reg1", arg: 2, scope: !6123, file: !3, line: 112, type: !314)
!6129 = !DILocation(line: 112, column: 62, scope: !6123)
!6130 = !DILocalVariable(name: "b", arg: 3, scope: !6123, file: !3, line: 112, type: !313)
!6131 = !DILocation(line: 112, column: 72, scope: !6123)
!6132 = !DILocalVariable(name: "len", arg: 4, scope: !6123, file: !3, line: 112, type: !314)
!6133 = !DILocation(line: 112, column: 78, scope: !6123)
!6134 = !DILocalVariable(name: "ret", scope: !6123, file: !3, line: 114, type: !309)
!6135 = !DILocation(line: 114, column: 6, scope: !6123)
!6136 = !DILocalVariable(name: "msg", scope: !6123, file: !3, line: 115, type: !4896)
!6137 = !DILocation(line: 115, column: 17, scope: !6123)
!6138 = !DILocation(line: 115, column: 26, scope: !6123)
!6139 = !DILocation(line: 115, column: 28, scope: !6123)
!6140 = !DILocation(line: 115, column: 38, scope: !6123)
!6141 = !DILocation(line: 115, column: 45, scope: !6123)
!6142 = !DILocation(line: 115, column: 53, scope: !6123)
!6143 = !DILocation(line: 116, column: 7, scope: !6123)
!6144 = !DILocation(line: 116, column: 17, scope: !6123)
!6145 = !DILocation(line: 116, column: 24, scope: !6123)
!6146 = !DILocation(line: 116, column: 32, scope: !6123)
!6147 = !DILocation(line: 116, column: 83, scope: !6123)
!6148 = !DILocation(line: 116, column: 73, scope: !6123)
!6149 = !DILocation(line: 118, column: 22, scope: !6123)
!6150 = !DILocation(line: 118, column: 29, scope: !6123)
!6151 = !DILocation(line: 118, column: 34, scope: !6123)
!6152 = !DILocation(line: 118, column: 8, scope: !6123)
!6153 = !DILocation(line: 118, column: 6, scope: !6123)
!6154 = !DILocation(line: 120, column: 6, scope: !6155)
!6155 = distinct !DILexicalBlock(scope: !6123, file: !3, line: 120, column: 6)
!6156 = !DILocation(line: 120, column: 10, scope: !6155)
!6157 = !DILocation(line: 120, column: 6, scope: !6123)
!6158 = !DILocation(line: 121, column: 3, scope: !6155)
!6159 = !DILocation(line: 121, column: 3, scope: !6160)
!6160 = distinct !DILexicalBlock(scope: !6161, file: !3, line: 121, column: 3)
!6161 = distinct !DILexicalBlock(scope: !6155, file: !3, line: 121, column: 3)
!6162 = !DILocation(line: 121, column: 3, scope: !6161)
!6163 = !DILocation(line: 123, column: 9, scope: !6123)
!6164 = !DILocation(line: 123, column: 13, scope: !6123)
!6165 = !DILocation(line: 123, column: 24, scope: !6123)
!6166 = !DILocation(line: 123, column: 2, scope: !6123)
!6167 = distinct !DISubprogram(name: "stv0299_wait_diseqc_idle", scope: !3, file: !3, line: 196, type: !6168, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!6168 = !DISubroutineType(types: !6169)
!6169 = !{!309, !435, !309}
!6170 = !DILocalVariable(name: "state", arg: 1, scope: !6167, file: !3, line: 196, type: !435)
!6171 = !DILocation(line: 196, column: 60, scope: !6167)
!6172 = !DILocalVariable(name: "timeout", arg: 2, scope: !6167, file: !3, line: 196, type: !309)
!6173 = !DILocation(line: 196, column: 71, scope: !6167)
!6174 = !DILocalVariable(name: "start", scope: !6167, file: !3, line: 198, type: !525)
!6175 = !DILocation(line: 198, column: 16, scope: !6167)
!6176 = !DILocation(line: 198, column: 24, scope: !6167)
!6177 = !DILocation(line: 200, column: 2, scope: !6167)
!6178 = !DILocation(line: 200, column: 2, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 200, column: 2)
!6180 = distinct !DILexicalBlock(scope: !6167, file: !3, line: 200, column: 2)
!6181 = !DILocation(line: 200, column: 2, scope: !6180)
!6182 = !DILocation(line: 202, column: 2, scope: !6167)
!6183 = !DILocation(line: 202, column: 26, scope: !6167)
!6184 = !DILocation(line: 202, column: 10, scope: !6167)
!6185 = !DILocation(line: 202, column: 39, scope: !6167)
!6186 = !DILocation(line: 202, column: 44, scope: !6167)
!6187 = !DILocation(line: 203, column: 7, scope: !6188)
!6188 = distinct !DILexicalBlock(scope: !6189, file: !3, line: 203, column: 7)
!6189 = distinct !DILexicalBlock(scope: !6167, file: !3, line: 202, column: 51)
!6190 = !DILocation(line: 203, column: 17, scope: !6188)
!6191 = !DILocation(line: 203, column: 15, scope: !6188)
!6192 = !DILocation(line: 203, column: 25, scope: !6188)
!6193 = !DILocation(line: 203, column: 23, scope: !6188)
!6194 = !DILocation(line: 203, column: 7, scope: !6189)
!6195 = !DILocation(line: 204, column: 4, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !6188, file: !3, line: 203, column: 34)
!6197 = !DILocation(line: 204, column: 4, scope: !6198)
!6198 = distinct !DILexicalBlock(scope: !6199, file: !3, line: 204, column: 4)
!6199 = distinct !DILexicalBlock(scope: !6196, file: !3, line: 204, column: 4)
!6200 = !DILocation(line: 204, column: 4, scope: !6199)
!6201 = !DILocation(line: 205, column: 4, scope: !6196)
!6202 = !DILocation(line: 207, column: 3, scope: !6189)
!6203 = distinct !{!6203, !6182, !6204}
!6204 = !DILocation(line: 208, column: 2, scope: !6167)
!6205 = !DILocation(line: 210, column: 2, scope: !6167)
!6206 = !DILocation(line: 211, column: 1, scope: !6167)
!6207 = distinct !DISubprogram(name: "stv0299_wait_diseqc_fifo", scope: !3, file: !3, line: 179, type: !6168, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!6208 = !DILocalVariable(name: "state", arg: 1, scope: !6207, file: !3, line: 179, type: !435)
!6209 = !DILocation(line: 179, column: 60, scope: !6207)
!6210 = !DILocalVariable(name: "timeout", arg: 2, scope: !6207, file: !3, line: 179, type: !309)
!6211 = !DILocation(line: 179, column: 71, scope: !6207)
!6212 = !DILocalVariable(name: "start", scope: !6207, file: !3, line: 181, type: !525)
!6213 = !DILocation(line: 181, column: 16, scope: !6207)
!6214 = !DILocation(line: 181, column: 24, scope: !6207)
!6215 = !DILocation(line: 183, column: 2, scope: !6207)
!6216 = !DILocation(line: 183, column: 2, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6218, file: !3, line: 183, column: 2)
!6218 = distinct !DILexicalBlock(scope: !6207, file: !3, line: 183, column: 2)
!6219 = !DILocation(line: 183, column: 2, scope: !6218)
!6220 = !DILocation(line: 185, column: 2, scope: !6207)
!6221 = !DILocation(line: 185, column: 25, scope: !6207)
!6222 = !DILocation(line: 185, column: 9, scope: !6207)
!6223 = !DILocation(line: 185, column: 38, scope: !6207)
!6224 = !DILocation(line: 186, column: 7, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6226, file: !3, line: 186, column: 7)
!6226 = distinct !DILexicalBlock(scope: !6207, file: !3, line: 185, column: 43)
!6227 = !DILocation(line: 186, column: 17, scope: !6225)
!6228 = !DILocation(line: 186, column: 15, scope: !6225)
!6229 = !DILocation(line: 186, column: 25, scope: !6225)
!6230 = !DILocation(line: 186, column: 23, scope: !6225)
!6231 = !DILocation(line: 186, column: 7, scope: !6226)
!6232 = !DILocation(line: 187, column: 4, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6225, file: !3, line: 186, column: 34)
!6234 = !DILocation(line: 187, column: 4, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6236, file: !3, line: 187, column: 4)
!6236 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 187, column: 4)
!6237 = !DILocation(line: 187, column: 4, scope: !6236)
!6238 = !DILocation(line: 188, column: 4, scope: !6233)
!6239 = !DILocation(line: 190, column: 3, scope: !6226)
!6240 = distinct !{!6240, !6220, !6241}
!6241 = !DILocation(line: 191, column: 2, scope: !6207)
!6242 = !DILocation(line: 193, column: 2, scope: !6207)
!6243 = !DILocation(line: 194, column: 1, scope: !6207)
!6244 = distinct !DISubprogram(name: "ktime_get_boottime", scope: !291, file: !291, line: 93, type: !681, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!6245 = !DILocation(line: 95, column: 9, scope: !6244)
!6246 = !DILocation(line: 95, column: 2, scope: !6244)
!6247 = distinct !DISubprogram(name: "ktime_us_delta", scope: !628, file: !628, line: 169, type: !6248, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!6248 = !DISubroutineType(types: !6249)
!6249 = !{!609, !6250, !6250}
!6250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!6251 = !DILocalVariable(name: "later", arg: 1, scope: !6247, file: !628, line: 169, type: !6250)
!6252 = !DILocation(line: 169, column: 48, scope: !6247)
!6253 = !DILocalVariable(name: "earlier", arg: 2, scope: !6247, file: !628, line: 169, type: !6250)
!6254 = !DILocation(line: 169, column: 69, scope: !6247)
!6255 = !DILocation(line: 171, column: 27, scope: !6247)
!6256 = !DILocation(line: 171, column: 15, scope: !6247)
!6257 = !DILocation(line: 171, column: 8, scope: !6247)
!6258 = distinct !DISubprogram(name: "ktime_to_us", scope: !628, file: !628, line: 159, type: !6259, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!6259 = !DISubroutineType(types: !6260)
!6260 = !{!609, !6250}
!6261 = !DILocalVariable(name: "kt", arg: 1, scope: !6258, file: !628, line: 159, type: !6250)
!6262 = !DILocation(line: 159, column: 45, scope: !6258)
!6263 = !DILocation(line: 161, column: 21, scope: !6258)
!6264 = !DILocation(line: 161, column: 9, scope: !6258)
!6265 = !DILocation(line: 161, column: 2, scope: !6258)
!6266 = distinct !DISubprogram(name: "ktime_divns", scope: !628, file: !628, line: 148, type: !6267, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !512)
!6267 = !DISubroutineType(types: !6268)
!6268 = !{!609, !6250, !609}
!6269 = !DILocalVariable(name: "kt", arg: 1, scope: !6266, file: !628, line: 148, type: !6250)
!6270 = !DILocation(line: 148, column: 45, scope: !6266)
!6271 = !DILocalVariable(name: "div", arg: 2, scope: !6266, file: !628, line: 148, type: !609)
!6272 = !DILocation(line: 148, column: 53, scope: !6266)
!6273 = !DILocalVariable(name: "__ret_warn_on", scope: !6274, file: !628, line: 154, type: !309)
!6274 = distinct !DILexicalBlock(scope: !6266, file: !628, line: 154, column: 2)
!6275 = !DILocation(line: 154, column: 2, scope: !6274)
!6276 = !DILocation(line: 154, column: 2, scope: !6277)
!6277 = distinct !DILexicalBlock(scope: !6274, file: !628, line: 154, column: 2)
!6278 = !DILocation(line: 154, column: 2, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6277, file: !628, line: 154, column: 2)
!6280 = !DILocation(line: 154, column: 2, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6279, file: !628, line: 154, column: 2)
!6282 = !DILocation(line: 154, column: 2, scope: !6283)
!6283 = distinct !DILexicalBlock(scope: !6279, file: !628, line: 154, column: 2)
!6284 = !{i32 -2145755872, i32 -2145755843, i32 -2145755797, i32 -2145755739, i32 -2145755685, i32 -2145755631, i32 -2145755576, i32 -2145755545}
!6285 = !DILocation(line: 154, column: 2, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6279, file: !628, line: 154, column: 2)
!6287 = !{i32 -2145755142, i32 -2145755135, i32 -2145755083, i32 -2145755052, i32 -2145755022}
!6288 = !DILocation(line: 154, column: 2, scope: !6289)
!6289 = distinct !DILexicalBlock(scope: !6279, file: !628, line: 154, column: 2)
!6290 = !DILocation(line: 155, column: 9, scope: !6266)
!6291 = !DILocation(line: 155, column: 14, scope: !6266)
!6292 = !DILocation(line: 155, column: 12, scope: !6266)
!6293 = !DILocation(line: 155, column: 2, scope: !6266)
