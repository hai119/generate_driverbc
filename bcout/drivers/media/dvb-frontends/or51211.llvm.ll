; ModuleID = '../bcout/drivers/media/dvb-frontends/or51211.llvm.bc'
source_filename = "drivers/media/dvb-frontends/or51211.c"
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
%struct.or51211_config = type { i8, i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)*, void (%struct.dvb_frontend*, i32)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)* }
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
%struct.or51211_state = type { %struct.i2c_adapter*, %struct.or51211_config*, %struct.dvb_frontend, %struct.bt878*, i8, i32, i32 }
%struct.bt878 = type opaque

@or51211_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Oren OR51211 VSB Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44000000, i32 958000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 2097838 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @or51211_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @or51211_init, i32 (%struct.dvb_frontend*)* @or51211_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @or51211_set_parameters, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @or51211_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* null, i32 (%struct.dvb_frontend*, i32*)* @or51211_read_status, i32 (%struct.dvb_frontend*, i32*)* @or51211_read_ber, i32 (%struct.dvb_frontend*, i16*)* @or51211_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @or51211_read_snr, i32 (%struct.dvb_frontend*, i32*)* @or51211_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !0
@__param_str_debug = internal constant [14 x i8] c"or51211.debug\00", align 1, !dbg !4457
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !4447
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !4370
@__UNIQUE_ID_debugtype220 = internal constant [27 x i8] c"or51211.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !4422
@__UNIQUE_ID_debug221 = internal constant [65 x i8] c"or51211.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1, !dbg !4427
@__UNIQUE_ID_description222 = internal constant [73 x i8] c"or51211.description=Oren OR51211 VSB [pcHDTV HD-2000] Demodulator Driver\00", section ".modinfo", align 1, !dbg !4432
@__UNIQUE_ID_author223 = internal constant [27 x i8] c"or51211.author=Kirk Lapray\00", section ".modinfo", align 1, !dbg !4437
@__UNIQUE_ID_file224 = internal constant [49 x i8] c"or51211.file=drivers/media/dvb-frontends/or51211\00", section ".modinfo", align 1, !dbg !4439
@__UNIQUE_ID_license225 = internal constant [20 x i8] c"or51211.license=GPL\00", section ".modinfo", align 1, !dbg !4444
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@__const.or51211_init.get_ver_buf = private unnamed_addr constant [5 x i8] c"\04\000\00\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"\016or51211: %s: Waiting for firmware upload (%s)...\0A\00", align 1
@__func__.or51211_init = private unnamed_addr constant [13 x i8] c"or51211_init\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"dvb-fe-or51211.fw\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\016or51211: %s: Got Hotplug firmware\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"\014or51211: %s: No firmware uploaded (timeout or file not found?)\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"\014or51211: %s: Writing firmware to device failed!\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"\016or51211: %s: Firmware upload complete.\0A\00", align 1
@cmd_buf = internal global [5 x i8] c"\04\01P\80\06", align 1, !dbg !4452
@.str.7 = private unnamed_addr constant [33 x i8] c"\014or51211: %s: Load DVR Error 5\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"\014or51211: %s: Load DVR Error A\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"\014or51211: %s: Load DVR Error B\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\014or51211: %s: Load DVR Error C\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"\014or51211: %s: Load DVR Error D\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"\014or51211: %s: Load DVR Error 6 - %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"\014or51211: %s: Load DVR Error 7 - %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"\016or51211: %s: ver TU%02x%02x%02x VSB mode %02x Status %02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"\014or51211: %s: Load DVR Error 8\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"\014or51211: %s: Load DVR Error 9\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"\014or51211: %s: error eprom addr\0A\00", align 1
@__func__.or51211_load_firmware = private unnamed_addr constant [22 x i8] c"or51211_load_firmware\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"\014or51211: %s: error eprom\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"\014or51211: %s: error 1\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"\014or51211: %s: error 2\0A\00", align 1
@run_buf = internal global [2 x i8] c"\7F\01", align 1, !dbg !4449
@.str.21 = private unnamed_addr constant [24 x i8] c"\014or51211: %s: error 3\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"\014or51211: %s: error 4\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"\016or51211: %s: Done.\0A\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"\014or51211: %s: error (addr %02x, err == %i)\0A\00", align 1
@__func__.i2c_writebytes = private unnamed_addr constant [15 x i8] c"i2c_writebytes\00", align 1
@__func__.i2c_readbytes = private unnamed_addr constant [14 x i8] c"i2c_readbytes\00", align 1
@__func__.or51211_setmode = private unnamed_addr constant [16 x i8] c"or51211_setmode\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"\014or51211: %s: error 5\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"\014or51211: %s: error 6\0A\00", align 1
@__const.or51211_read_status.snd_buf = private unnamed_addr constant [4 x i8] c"\04\00\03\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"\014or51211: %s: write error\0A\00", align 1
@__func__.or51211_read_status = private unnamed_addr constant [20 x i8] c"or51211_read_status\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"\014or51211: %s: read error\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"\014or51211: %s: error writing snr reg\0A\00", align 1
@__func__.or51211_read_snr = private unnamed_addr constant [17 x i8] c"or51211_read_snr\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"\014or51211: %s: read_status read error\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_author223, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_file224, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license225, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @or51211_attach(%struct.or51211_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4468 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.or51211_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.or51211_state*, align 8
  store %struct.or51211_config* %config, %struct.or51211_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.or51211_config** %config.addr, metadata !4471, metadata !DIExpression()), !dbg !4472
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4473, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.declare(metadata %struct.or51211_state** %state, metadata !4475, metadata !DIExpression()), !dbg !4476
  store %struct.or51211_state* null, %struct.or51211_state** %state, align 8, !dbg !4476
  %call = call i8* @kzalloc(i64 1320, i32 3264) #8, !dbg !4477
  %0 = bitcast i8* %call to %struct.or51211_state*, !dbg !4477
  store %struct.or51211_state* %0, %struct.or51211_state** %state, align 8, !dbg !4478
  %1 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4479
  %cmp = icmp eq %struct.or51211_state* %1, null, !dbg !4481
  br i1 %cmp, label %if.then, label %if.end, !dbg !4482

if.then:                                          ; preds = %entry
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4483
  br label %return, !dbg !4483

if.end:                                           ; preds = %entry
  %2 = load %struct.or51211_config*, %struct.or51211_config** %config.addr, align 8, !dbg !4484
  %3 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4485
  %config1 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %3, i32 0, i32 1, !dbg !4486
  store %struct.or51211_config* %2, %struct.or51211_config** %config1, align 8, !dbg !4487
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4488
  %5 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4489
  %i2c2 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %5, i32 0, i32 0, !dbg !4490
  store %struct.i2c_adapter* %4, %struct.i2c_adapter** %i2c2, align 8, !dbg !4491
  %6 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4492
  %initialized = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %6, i32 0, i32 4, !dbg !4493
  %bf.load = load i8, i8* %initialized, align 8, !dbg !4494
  %bf.clear = and i8 %bf.load, -2, !dbg !4494
  store i8 %bf.clear, i8* %initialized, align 8, !dbg !4494
  %7 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4495
  %current_frequency = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %7, i32 0, i32 6, !dbg !4496
  store i32 0, i32* %current_frequency, align 8, !dbg !4497
  %8 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4498
  %frontend = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %8, i32 0, i32 2, !dbg !4499
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4500
  %9 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4501
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @or51211_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4501
  %10 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4502
  %11 = bitcast %struct.or51211_state* %10 to i8*, !dbg !4502
  %12 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4503
  %frontend3 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %12, i32 0, i32 2, !dbg !4504
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend3, i32 0, i32 3, !dbg !4505
  store i8* %11, i8** %demodulator_priv, align 8, !dbg !4506
  %13 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4507
  %frontend4 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %13, i32 0, i32 2, !dbg !4508
  store %struct.dvb_frontend* %frontend4, %struct.dvb_frontend** %retval, align 8, !dbg !4509
  br label %return, !dbg !4509

return:                                           ; preds = %if.end, %if.then
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4510
  ret %struct.dvb_frontend* %14, !dbg !4510
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4511 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4514, metadata !DIExpression()), !dbg !4518
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4524, metadata !DIExpression()), !dbg !4525
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4526, metadata !DIExpression()), !dbg !4527
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4528, metadata !DIExpression()), !dbg !4529
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4530, metadata !DIExpression()), !dbg !4534
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4536, metadata !DIExpression()), !dbg !4540
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4542, metadata !DIExpression()), !dbg !4546
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4551, metadata !DIExpression()), !dbg !4552
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4553, metadata !DIExpression()), !dbg !4554
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4555, metadata !DIExpression()), !dbg !4556
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4557, metadata !DIExpression()), !dbg !4558
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4559, metadata !DIExpression()), !dbg !4560
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4561, metadata !DIExpression()), !dbg !4562
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4563, metadata !DIExpression()), !dbg !4564
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4565, metadata !DIExpression()), !dbg !4566
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4567, metadata !DIExpression()), !dbg !4568
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4569, metadata !DIExpression()), !dbg !4570
  %0 = load i64, i64* %size.addr, align 8, !dbg !4571
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4572
  %or = or i32 %1, 256, !dbg !4573
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4574
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4575
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4576

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4577
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4578
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4579

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4580
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4581
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4582
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4583
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4560
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4584
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4585
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4586
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4587
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4588
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4589
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4590
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4590
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4590
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4590
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4590
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4591
  br label %kmalloc.exit, !dbg !4591

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4592
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4593
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4593
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4595

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4596
  br label %kmalloc_index.exit.i, !dbg !4596

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4597
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4599
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4600

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4601
  br label %kmalloc_index.exit.i, !dbg !4601

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4602
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4604
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4605

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4606
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4607
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4608

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4609
  br label %kmalloc_index.exit.i, !dbg !4609

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4610
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4612
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4613

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4614
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4615
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4616

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4617
  br label %kmalloc_index.exit.i, !dbg !4617

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4618
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4620
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4621

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4622
  br label %kmalloc_index.exit.i, !dbg !4622

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4623
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4625
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4626

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4627
  br label %kmalloc_index.exit.i, !dbg !4627

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4628
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4630
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4631

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4632
  br label %kmalloc_index.exit.i, !dbg !4632

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4633
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4635
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4636

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4637
  br label %kmalloc_index.exit.i, !dbg !4637

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4638
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4640
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4641

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4642
  br label %kmalloc_index.exit.i, !dbg !4642

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4643
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4645
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4646

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4647
  br label %kmalloc_index.exit.i, !dbg !4647

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4648
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4650
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4651

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4652
  br label %kmalloc_index.exit.i, !dbg !4652

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4653
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4655
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4656

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4657
  br label %kmalloc_index.exit.i, !dbg !4657

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4658
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4660
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4661

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4662
  br label %kmalloc_index.exit.i, !dbg !4662

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4663
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4665
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4666

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4667
  br label %kmalloc_index.exit.i, !dbg !4667

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4668
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4670
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4671

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4672
  br label %kmalloc_index.exit.i, !dbg !4672

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4673
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4675
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4676

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4677
  br label %kmalloc_index.exit.i, !dbg !4677

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4678
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4680
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4681

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4682
  br label %kmalloc_index.exit.i, !dbg !4682

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4683
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4685
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4686

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4687
  br label %kmalloc_index.exit.i, !dbg !4687

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4688
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4690
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4691

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4692
  br label %kmalloc_index.exit.i, !dbg !4692

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4693
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4695
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4696

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4697
  br label %kmalloc_index.exit.i, !dbg !4697

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4698
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4700
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4701

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4702
  br label %kmalloc_index.exit.i, !dbg !4702

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4703
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4705
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4706

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4707
  br label %kmalloc_index.exit.i, !dbg !4707

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4708
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4710
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4711

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4712
  br label %kmalloc_index.exit.i, !dbg !4712

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4713
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4715
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4716

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4717
  br label %kmalloc_index.exit.i, !dbg !4717

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4718
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4720
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4721

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4722
  br label %kmalloc_index.exit.i, !dbg !4722

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4723
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4725
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4726

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4727
  br label %kmalloc_index.exit.i, !dbg !4727

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4728
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4730
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4731

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4732
  br label %kmalloc_index.exit.i, !dbg !4732

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4733
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4735
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4736

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4737
  br label %kmalloc_index.exit.i, !dbg !4737

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4738, !srcloc !4741
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #9, !dbg !4742, !srcloc !4745
  unreachable, !dbg !4746

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4747
  store i32 %45, i32* %index.i, align 4, !dbg !4748
  %46 = load i32, i32* %index.i, align 4, !dbg !4749
  %tobool.i = icmp ne i32 %46, 0, !dbg !4749
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4751

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4752
  br label %kmalloc.exit, !dbg !4752

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4753
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4754
  %and.i.i = and i32 %48, 17, !dbg !4754
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4754
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4754
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4754
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4754
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4756

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4757
  br label %kmalloc_type.exit.i, !dbg !4757

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4758
  %and2.i.i = and i32 %49, 1, !dbg !4759
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4758
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4758
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4758
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4760
  br label %kmalloc_type.exit.i, !dbg !4760

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4761
  %idxprom.i = zext i32 %51 to i64, !dbg !4762
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4762
  %52 = load i32, i32* %index.i, align 4, !dbg !4763
  %idxprom6.i = zext i32 %52 to i64, !dbg !4762
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4762
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4762
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4764
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4765
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4766
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4767
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4768
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4768
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4768
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4768
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4768
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4529
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4769
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4770
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4771
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4772
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4773
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4774
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4775
  store i8* %62, i8** %retval.i, align 8, !dbg !4776
  br label %kmalloc.exit, !dbg !4776

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4777
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4778
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4779
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4779
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4779
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4779
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4779
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4780
  br label %kmalloc.exit, !dbg !4780

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4781
  ret i8* %65, !dbg !4782
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #4

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !4783 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4787, metadata !DIExpression()), !dbg !4792
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4794, metadata !DIExpression()), !dbg !4795
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4796, metadata !DIExpression()), !dbg !4797
  %0 = load i64, i64* %size.addr, align 8, !dbg !4798
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4800
  br i1 %1, label %if.then, label %if.end447, !dbg !4801

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4802
  %tobool = icmp ne i64 %2, 0, !dbg !4802
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4805

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4806
  br label %return, !dbg !4806

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4807
  %cmp = icmp ult i64 %3, 4096, !dbg !4809
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4810

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4811
  br label %return, !dbg !4811

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub = sub i64 %4, 1, !dbg !4812
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4812
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4812

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub4 = sub i64 %6, 1, !dbg !4812
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4812
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4812

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub6 = sub i64 %8, 1, !dbg !4812
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4812
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4812

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4812

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub9 = sub i64 %9, 1, !dbg !4812
  %and = and i64 %sub9, -9223372036854775808, !dbg !4812
  %tobool10 = icmp ne i64 %and, 0, !dbg !4812
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4812

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4812

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub13 = sub i64 %10, 1, !dbg !4812
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4812
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4812
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4812

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4812

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub18 = sub i64 %11, 1, !dbg !4812
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4812
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4812
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4812

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4812

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub23 = sub i64 %12, 1, !dbg !4812
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4812
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4812
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4812

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4812

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub28 = sub i64 %13, 1, !dbg !4812
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4812
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4812
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4812

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4812

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub33 = sub i64 %14, 1, !dbg !4812
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4812
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4812
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4812

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4812

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub38 = sub i64 %15, 1, !dbg !4812
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4812
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4812
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4812

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4812

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub43 = sub i64 %16, 1, !dbg !4812
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4812
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4812
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4812

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4812

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub48 = sub i64 %17, 1, !dbg !4812
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4812
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4812
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4812

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4812

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub53 = sub i64 %18, 1, !dbg !4812
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4812
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4812
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4812

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4812

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub58 = sub i64 %19, 1, !dbg !4812
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4812
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4812
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4812

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4812

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub63 = sub i64 %20, 1, !dbg !4812
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4812
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4812
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4812

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4812

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub68 = sub i64 %21, 1, !dbg !4812
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4812
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4812
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4812

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4812

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub73 = sub i64 %22, 1, !dbg !4812
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4812
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4812
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4812

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4812

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub78 = sub i64 %23, 1, !dbg !4812
  %and79 = and i64 %sub78, 562949953421312, !dbg !4812
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4812
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4812

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4812

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub83 = sub i64 %24, 1, !dbg !4812
  %and84 = and i64 %sub83, 281474976710656, !dbg !4812
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4812
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4812

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4812

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub88 = sub i64 %25, 1, !dbg !4812
  %and89 = and i64 %sub88, 140737488355328, !dbg !4812
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4812
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4812

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4812

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub93 = sub i64 %26, 1, !dbg !4812
  %and94 = and i64 %sub93, 70368744177664, !dbg !4812
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4812
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4812

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4812

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub98 = sub i64 %27, 1, !dbg !4812
  %and99 = and i64 %sub98, 35184372088832, !dbg !4812
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4812
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4812

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4812

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub103 = sub i64 %28, 1, !dbg !4812
  %and104 = and i64 %sub103, 17592186044416, !dbg !4812
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4812
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4812

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4812

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub108 = sub i64 %29, 1, !dbg !4812
  %and109 = and i64 %sub108, 8796093022208, !dbg !4812
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4812
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4812

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4812

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub113 = sub i64 %30, 1, !dbg !4812
  %and114 = and i64 %sub113, 4398046511104, !dbg !4812
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4812
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4812

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4812

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub118 = sub i64 %31, 1, !dbg !4812
  %and119 = and i64 %sub118, 2199023255552, !dbg !4812
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4812
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4812

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4812

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub123 = sub i64 %32, 1, !dbg !4812
  %and124 = and i64 %sub123, 1099511627776, !dbg !4812
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4812
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4812

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4812

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub128 = sub i64 %33, 1, !dbg !4812
  %and129 = and i64 %sub128, 549755813888, !dbg !4812
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4812
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4812

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4812

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub133 = sub i64 %34, 1, !dbg !4812
  %and134 = and i64 %sub133, 274877906944, !dbg !4812
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4812
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4812

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4812

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub138 = sub i64 %35, 1, !dbg !4812
  %and139 = and i64 %sub138, 137438953472, !dbg !4812
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4812
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4812

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4812

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub143 = sub i64 %36, 1, !dbg !4812
  %and144 = and i64 %sub143, 68719476736, !dbg !4812
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4812
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4812

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4812

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub148 = sub i64 %37, 1, !dbg !4812
  %and149 = and i64 %sub148, 34359738368, !dbg !4812
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4812
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4812

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4812

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub153 = sub i64 %38, 1, !dbg !4812
  %and154 = and i64 %sub153, 17179869184, !dbg !4812
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4812
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4812

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4812

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub158 = sub i64 %39, 1, !dbg !4812
  %and159 = and i64 %sub158, 8589934592, !dbg !4812
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4812
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4812

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4812

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub163 = sub i64 %40, 1, !dbg !4812
  %and164 = and i64 %sub163, 4294967296, !dbg !4812
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4812
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4812

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4812

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub168 = sub i64 %41, 1, !dbg !4812
  %and169 = and i64 %sub168, 2147483648, !dbg !4812
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4812
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4812

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4812

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub173 = sub i64 %42, 1, !dbg !4812
  %and174 = and i64 %sub173, 1073741824, !dbg !4812
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4812
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4812

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4812

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub178 = sub i64 %43, 1, !dbg !4812
  %and179 = and i64 %sub178, 536870912, !dbg !4812
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4812
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4812

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4812

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub183 = sub i64 %44, 1, !dbg !4812
  %and184 = and i64 %sub183, 268435456, !dbg !4812
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4812
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4812

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4812

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub188 = sub i64 %45, 1, !dbg !4812
  %and189 = and i64 %sub188, 134217728, !dbg !4812
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4812
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4812

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4812

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub193 = sub i64 %46, 1, !dbg !4812
  %and194 = and i64 %sub193, 67108864, !dbg !4812
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4812
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4812

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4812

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub198 = sub i64 %47, 1, !dbg !4812
  %and199 = and i64 %sub198, 33554432, !dbg !4812
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4812
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4812

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4812

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub203 = sub i64 %48, 1, !dbg !4812
  %and204 = and i64 %sub203, 16777216, !dbg !4812
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4812
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4812

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4812

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub208 = sub i64 %49, 1, !dbg !4812
  %and209 = and i64 %sub208, 8388608, !dbg !4812
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4812
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4812

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4812

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub213 = sub i64 %50, 1, !dbg !4812
  %and214 = and i64 %sub213, 4194304, !dbg !4812
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4812
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4812

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4812

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub218 = sub i64 %51, 1, !dbg !4812
  %and219 = and i64 %sub218, 2097152, !dbg !4812
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4812
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4812

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4812

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub223 = sub i64 %52, 1, !dbg !4812
  %and224 = and i64 %sub223, 1048576, !dbg !4812
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4812
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4812

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4812

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub228 = sub i64 %53, 1, !dbg !4812
  %and229 = and i64 %sub228, 524288, !dbg !4812
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4812
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4812

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4812

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub233 = sub i64 %54, 1, !dbg !4812
  %and234 = and i64 %sub233, 262144, !dbg !4812
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4812
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4812

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4812

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub238 = sub i64 %55, 1, !dbg !4812
  %and239 = and i64 %sub238, 131072, !dbg !4812
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4812
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4812

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4812

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub243 = sub i64 %56, 1, !dbg !4812
  %and244 = and i64 %sub243, 65536, !dbg !4812
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4812
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4812

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4812

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub248 = sub i64 %57, 1, !dbg !4812
  %and249 = and i64 %sub248, 32768, !dbg !4812
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4812
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4812

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4812

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub253 = sub i64 %58, 1, !dbg !4812
  %and254 = and i64 %sub253, 16384, !dbg !4812
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4812
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4812

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4812

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub258 = sub i64 %59, 1, !dbg !4812
  %and259 = and i64 %sub258, 8192, !dbg !4812
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4812
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4812

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4812

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub263 = sub i64 %60, 1, !dbg !4812
  %and264 = and i64 %sub263, 4096, !dbg !4812
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4812
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4812

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4812

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub268 = sub i64 %61, 1, !dbg !4812
  %and269 = and i64 %sub268, 2048, !dbg !4812
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4812
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4812

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4812

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub273 = sub i64 %62, 1, !dbg !4812
  %and274 = and i64 %sub273, 1024, !dbg !4812
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4812
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4812

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4812

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub278 = sub i64 %63, 1, !dbg !4812
  %and279 = and i64 %sub278, 512, !dbg !4812
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4812
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4812

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4812

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub283 = sub i64 %64, 1, !dbg !4812
  %and284 = and i64 %sub283, 256, !dbg !4812
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4812
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4812

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4812

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub288 = sub i64 %65, 1, !dbg !4812
  %and289 = and i64 %sub288, 128, !dbg !4812
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4812
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4812

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4812

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub293 = sub i64 %66, 1, !dbg !4812
  %and294 = and i64 %sub293, 64, !dbg !4812
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4812
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4812

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4812

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub298 = sub i64 %67, 1, !dbg !4812
  %and299 = and i64 %sub298, 32, !dbg !4812
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4812
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4812

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4812

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub303 = sub i64 %68, 1, !dbg !4812
  %and304 = and i64 %sub303, 16, !dbg !4812
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4812
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4812

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4812

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub308 = sub i64 %69, 1, !dbg !4812
  %and309 = and i64 %sub308, 8, !dbg !4812
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4812
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4812

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4812

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub313 = sub i64 %70, 1, !dbg !4812
  %and314 = and i64 %sub313, 4, !dbg !4812
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4812
  %71 = zext i1 %tobool315 to i64, !dbg !4812
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4812
  br label %cond.end, !dbg !4812

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4812
  br label %cond.end317, !dbg !4812

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4812
  br label %cond.end319, !dbg !4812

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4812
  br label %cond.end321, !dbg !4812

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4812
  br label %cond.end323, !dbg !4812

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4812
  br label %cond.end325, !dbg !4812

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4812
  br label %cond.end327, !dbg !4812

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4812
  br label %cond.end329, !dbg !4812

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4812
  br label %cond.end331, !dbg !4812

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4812
  br label %cond.end333, !dbg !4812

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4812
  br label %cond.end335, !dbg !4812

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4812
  br label %cond.end337, !dbg !4812

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4812
  br label %cond.end339, !dbg !4812

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4812
  br label %cond.end341, !dbg !4812

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4812
  br label %cond.end343, !dbg !4812

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4812
  br label %cond.end345, !dbg !4812

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4812
  br label %cond.end347, !dbg !4812

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4812
  br label %cond.end349, !dbg !4812

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4812
  br label %cond.end351, !dbg !4812

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4812
  br label %cond.end353, !dbg !4812

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4812
  br label %cond.end355, !dbg !4812

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4812
  br label %cond.end357, !dbg !4812

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4812
  br label %cond.end359, !dbg !4812

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4812
  br label %cond.end361, !dbg !4812

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4812
  br label %cond.end363, !dbg !4812

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4812
  br label %cond.end365, !dbg !4812

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4812
  br label %cond.end367, !dbg !4812

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4812
  br label %cond.end369, !dbg !4812

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4812
  br label %cond.end371, !dbg !4812

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4812
  br label %cond.end373, !dbg !4812

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4812
  br label %cond.end375, !dbg !4812

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4812
  br label %cond.end377, !dbg !4812

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4812
  br label %cond.end379, !dbg !4812

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4812
  br label %cond.end381, !dbg !4812

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4812
  br label %cond.end383, !dbg !4812

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4812
  br label %cond.end385, !dbg !4812

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4812
  br label %cond.end387, !dbg !4812

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4812
  br label %cond.end389, !dbg !4812

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4812
  br label %cond.end391, !dbg !4812

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4812
  br label %cond.end393, !dbg !4812

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4812
  br label %cond.end395, !dbg !4812

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4812
  br label %cond.end397, !dbg !4812

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4812
  br label %cond.end399, !dbg !4812

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4812
  br label %cond.end401, !dbg !4812

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4812
  br label %cond.end403, !dbg !4812

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4812
  br label %cond.end405, !dbg !4812

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4812
  br label %cond.end407, !dbg !4812

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4812
  br label %cond.end409, !dbg !4812

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4812
  br label %cond.end411, !dbg !4812

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4812
  br label %cond.end413, !dbg !4812

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4812
  br label %cond.end415, !dbg !4812

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4812
  br label %cond.end417, !dbg !4812

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4812
  br label %cond.end419, !dbg !4812

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4812
  br label %cond.end421, !dbg !4812

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4812
  br label %cond.end423, !dbg !4812

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4812
  br label %cond.end425, !dbg !4812

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4812
  br label %cond.end427, !dbg !4812

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4812
  br label %cond.end429, !dbg !4812

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4812
  br label %cond.end431, !dbg !4812

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4812
  br label %cond.end433, !dbg !4812

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4812
  br label %cond.end435, !dbg !4812

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4812
  br label %cond.end437, !dbg !4812

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4812
  br label %cond.end440, !dbg !4812

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4812

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4812
  br label %cond.end444, !dbg !4812

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4812
  %sub443 = sub i64 %72, 1, !dbg !4812
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4812
  br label %cond.end444, !dbg !4812

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4812
  %sub446 = sub i32 %cond445, 12, !dbg !4813
  %add = add i32 %sub446, 1, !dbg !4814
  store i32 %add, i32* %retval, align 4, !dbg !4815
  br label %return, !dbg !4815

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4816
  %dec = add i64 %73, -1, !dbg !4816
  store i64 %dec, i64* %size.addr, align 8, !dbg !4816
  %74 = load i64, i64* %size.addr, align 8, !dbg !4817
  %shr = lshr i64 %74, 12, !dbg !4817
  store i64 %shr, i64* %size.addr, align 8, !dbg !4817
  %75 = load i64, i64* %size.addr, align 8, !dbg !4818
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4795
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4819
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4820
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !4819, !srcloc !4821
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4819
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4822
  %add.i = add i32 %79, 1, !dbg !4823
  store i32 %add.i, i32* %retval, align 4, !dbg !4824
  br label %return, !dbg !4824

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4825
  ret i32 %80, !dbg !4825
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4826 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4787, metadata !DIExpression()), !dbg !4830
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4794, metadata !DIExpression()), !dbg !4832
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4833, metadata !DIExpression()), !dbg !4834
  %0 = load i64, i64* %n.addr, align 8, !dbg !4835
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4832
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4836
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4837
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !4836, !srcloc !4821
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4836
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4838
  %add.i = add i32 %4, 1, !dbg !4839
  %sub = sub i32 %add.i, 1, !dbg !4840
  ret i32 %sub, !dbg !4841
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4842 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4846, metadata !DIExpression()), !dbg !4847
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4848, metadata !DIExpression()), !dbg !4849
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4850, metadata !DIExpression()), !dbg !4851
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4852, metadata !DIExpression()), !dbg !4853
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4854
  ret i8* %0, !dbg !4855
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @or51211_release(%struct.dvb_frontend* %fe) #0 !dbg !4856 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.or51211_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4857, metadata !DIExpression()), !dbg !4858
  call void @llvm.dbg.declare(metadata %struct.or51211_state** %state, metadata !4859, metadata !DIExpression()), !dbg !4860
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4861
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4862
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4862
  %2 = bitcast i8* %1 to %struct.or51211_state*, !dbg !4861
  store %struct.or51211_state* %2, %struct.or51211_state** %state, align 8, !dbg !4860
  %3 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4863
  %config = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %3, i32 0, i32 1, !dbg !4864
  %4 = load %struct.or51211_config*, %struct.or51211_config** %config, align 8, !dbg !4864
  %sleep = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %4, i32 0, i32 4, !dbg !4865
  %5 = load void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)** %sleep, align 8, !dbg !4865
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4866
  call void %5(%struct.dvb_frontend* %6) #8, !dbg !4863
  %7 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4867
  %8 = bitcast %struct.or51211_state* %7 to i8*, !dbg !4867
  call void @kfree(i8* %8) #8, !dbg !4868
  ret void, !dbg !4869
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @or51211_init(%struct.dvb_frontend* %fe) #0 !dbg !4870 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.or51211_state*, align 8
  %config = alloca %struct.or51211_config*, align 8
  %fw = alloca %struct.firmware*, align 8
  %get_ver_buf = alloca [5 x i8], align 1
  %rec_buf = alloca [14 x i8], align 1
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4871, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.declare(metadata %struct.or51211_state** %state, metadata !4873, metadata !DIExpression()), !dbg !4874
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4875
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4876
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4876
  %2 = bitcast i8* %1 to %struct.or51211_state*, !dbg !4875
  store %struct.or51211_state* %2, %struct.or51211_state** %state, align 8, !dbg !4874
  call void @llvm.dbg.declare(metadata %struct.or51211_config** %config, metadata !4877, metadata !DIExpression()), !dbg !4878
  %3 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4879
  %config1 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %3, i32 0, i32 1, !dbg !4880
  %4 = load %struct.or51211_config*, %struct.or51211_config** %config1, align 8, !dbg !4880
  store %struct.or51211_config* %4, %struct.or51211_config** %config, align 8, !dbg !4878
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw, metadata !4881, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.declare(metadata [5 x i8]* %get_ver_buf, metadata !4883, metadata !DIExpression()), !dbg !4885
  %5 = bitcast [5 x i8]* %get_ver_buf to i8*, !dbg !4885
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.or51211_init.get_ver_buf, i32 0, i32 0), i64 5, i1 false), !dbg !4885
  call void @llvm.dbg.declare(metadata [14 x i8]* %rec_buf, metadata !4886, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4889, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4891, metadata !DIExpression()), !dbg !4892
  %6 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4893
  %initialized = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %6, i32 0, i32 4, !dbg !4895
  %bf.load = load i8, i8* %initialized, align 8, !dbg !4895
  %bf.clear = and i8 %bf.load, 1, !dbg !4895
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !4893
  br i1 %tobool, label %if.end129, label %if.then, !dbg !4896

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.or51211_init, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)) #13, !dbg !4897
  %7 = load %struct.or51211_config*, %struct.or51211_config** %config, align 8, !dbg !4899
  %request_firmware = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %7, i32 0, i32 1, !dbg !4900
  %8 = load i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)*, i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)** %request_firmware, align 8, !dbg !4900
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4901
  %call2 = call i32 %8(%struct.dvb_frontend* %9, %struct.firmware** %fw, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !4899
  store i32 %call2, i32* %ret, align 4, !dbg !4902
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.or51211_init, i64 0, i64 0)) #13, !dbg !4903
  %10 = load i32, i32* %ret, align 4, !dbg !4904
  %tobool4 = icmp ne i32 %10, 0, !dbg !4904
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !4906

if.then5:                                         ; preds = %if.then
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.or51211_init, i64 0, i64 0)) #13, !dbg !4907
  %11 = load i32, i32* %ret, align 4, !dbg !4909
  store i32 %11, i32* %retval, align 4, !dbg !4910
  br label %return, !dbg !4910

if.end:                                           ; preds = %if.then
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4911
  %13 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !4912
  %call7 = call i32 @or51211_load_firmware(%struct.dvb_frontend* %12, %struct.firmware* %13) #8, !dbg !4913
  store i32 %call7, i32* %ret, align 4, !dbg !4914
  %14 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !4915
  call void @release_firmware(%struct.firmware* %14) #8, !dbg !4916
  %15 = load i32, i32* %ret, align 4, !dbg !4917
  %tobool8 = icmp ne i32 %15, 0, !dbg !4917
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !4919

if.then9:                                         ; preds = %if.end
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.or51211_init, i64 0, i64 0)) #13, !dbg !4920
  %16 = load i32, i32* %ret, align 4, !dbg !4922
  store i32 %16, i32* %retval, align 4, !dbg !4923
  br label %return, !dbg !4923

if.end11:                                         ; preds = %if.end
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.or51211_init, i64 0, i64 0)) #13, !dbg !4924
  %17 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4925
  %18 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4927
  %config13 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %18, i32 0, i32 1, !dbg !4928
  %19 = load %struct.or51211_config*, %struct.or51211_config** %config13, align 8, !dbg !4928
  %demod_address = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %19, i32 0, i32 0, !dbg !4929
  %20 = load i8, i8* %demod_address, align 8, !dbg !4929
  %call14 = call i32 @i2c_writebytes(%struct.or51211_state* %17, i8 zeroext %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @cmd_buf, i64 0, i64 0), i32 3) #8, !dbg !4930
  %tobool15 = icmp ne i32 %call14, 0, !dbg !4930
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !4931

if.then16:                                        ; preds = %if.end11
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.or51211_init, i64 0, i64 0)) #13, !dbg !4932
  store i32 -1, i32* %retval, align 4, !dbg !4934
  br label %return, !dbg !4934

if.end18:                                         ; preds = %if.end11
  %arrayidx = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 0, !dbg !4935
  store i8 4, i8* %arrayidx, align 1, !dbg !4936
  %arrayidx19 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 1, !dbg !4937
  store i8 0, i8* %arrayidx19, align 1, !dbg !4938
  %arrayidx20 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 2, !dbg !4939
  store i8 3, i8* %arrayidx20, align 1, !dbg !4940
  %arrayidx21 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 3, !dbg !4941
  store i8 0, i8* %arrayidx21, align 1, !dbg !4942
  call void @msleep(i32 30) #8, !dbg !4943
  %21 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4944
  %22 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4946
  %config22 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %22, i32 0, i32 1, !dbg !4947
  %23 = load %struct.or51211_config*, %struct.or51211_config** %config22, align 8, !dbg !4947
  %demod_address23 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %23, i32 0, i32 0, !dbg !4948
  %24 = load i8, i8* %demod_address23, align 8, !dbg !4948
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 0, !dbg !4949
  %call24 = call i32 @i2c_writebytes(%struct.or51211_state* %21, i8 zeroext %24, i8* %arraydecay, i32 3) #8, !dbg !4950
  %tobool25 = icmp ne i32 %call24, 0, !dbg !4950
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !4951

if.then26:                                        ; preds = %if.end18
  %call27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.or51211_init, i64 0, i64 0)) #13, !dbg !4952
  store i32 -1, i32* %retval, align 4, !dbg !4954
  br label %return, !dbg !4954

if.end28:                                         ; preds = %if.end18
  call void @msleep(i32 3) #8, !dbg !4955
  %25 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4956
  %26 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4958
  %config29 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %26, i32 0, i32 1, !dbg !4959
  %27 = load %struct.or51211_config*, %struct.or51211_config** %config29, align 8, !dbg !4959
  %demod_address30 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %27, i32 0, i32 0, !dbg !4960
  %28 = load i8, i8* %demod_address30, align 8, !dbg !4960
  %arrayidx31 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 10, !dbg !4961
  %call32 = call i32 @i2c_readbytes(%struct.or51211_state* %25, i8 zeroext %28, i8* %arrayidx31, i32 2) #8, !dbg !4962
  %tobool33 = icmp ne i32 %call32, 0, !dbg !4962
  br i1 %tobool33, label %if.then34, label %if.end36, !dbg !4963

if.then34:                                        ; preds = %if.end28
  %call35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.or51211_init, i64 0, i64 0)) #13, !dbg !4964
  store i32 -1, i32* %retval, align 4, !dbg !4966
  br label %return, !dbg !4966

if.end36:                                         ; preds = %if.end28
  %arrayidx37 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 0, !dbg !4967
  store i8 4, i8* %arrayidx37, align 1, !dbg !4968
  %arrayidx38 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 1, !dbg !4969
  store i8 0, i8* %arrayidx38, align 1, !dbg !4970
  %arrayidx39 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 2, !dbg !4971
  store i8 1, i8* %arrayidx39, align 1, !dbg !4972
  %arrayidx40 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 3, !dbg !4973
  store i8 0, i8* %arrayidx40, align 1, !dbg !4974
  call void @msleep(i32 20) #8, !dbg !4975
  %29 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4976
  %30 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4978
  %config41 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %30, i32 0, i32 1, !dbg !4979
  %31 = load %struct.or51211_config*, %struct.or51211_config** %config41, align 8, !dbg !4979
  %demod_address42 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %31, i32 0, i32 0, !dbg !4980
  %32 = load i8, i8* %demod_address42, align 8, !dbg !4980
  %arraydecay43 = getelementptr inbounds [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 0, !dbg !4981
  %call44 = call i32 @i2c_writebytes(%struct.or51211_state* %29, i8 zeroext %32, i8* %arraydecay43, i32 3) #8, !dbg !4982
  %tobool45 = icmp ne i32 %call44, 0, !dbg !4982
  br i1 %tobool45, label %if.then46, label %if.end48, !dbg !4983

if.then46:                                        ; preds = %if.end36
  %call47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.or51211_init, i64 0, i64 0)) #13, !dbg !4984
  store i32 -1, i32* %retval, align 4, !dbg !4986
  br label %return, !dbg !4986

if.end48:                                         ; preds = %if.end36
  call void @msleep(i32 3) #8, !dbg !4987
  %33 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4988
  %34 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !4990
  %config49 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %34, i32 0, i32 1, !dbg !4991
  %35 = load %struct.or51211_config*, %struct.or51211_config** %config49, align 8, !dbg !4991
  %demod_address50 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %35, i32 0, i32 0, !dbg !4992
  %36 = load i8, i8* %demod_address50, align 8, !dbg !4992
  %arrayidx51 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 12, !dbg !4993
  %call52 = call i32 @i2c_readbytes(%struct.or51211_state* %33, i8 zeroext %36, i8* %arrayidx51, i32 2) #8, !dbg !4994
  %tobool53 = icmp ne i32 %call52, 0, !dbg !4994
  br i1 %tobool53, label %if.then54, label %if.end56, !dbg !4995

if.then54:                                        ; preds = %if.end48
  %call55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.or51211_init, i64 0, i64 0)) #13, !dbg !4996
  store i32 -1, i32* %retval, align 4, !dbg !4998
  br label %return, !dbg !4998

if.end56:                                         ; preds = %if.end48
  store i32 0, i32* %i, align 4, !dbg !4999
  br label %for.cond, !dbg !5001

for.cond:                                         ; preds = %for.inc, %if.end56
  %37 = load i32, i32* %i, align 4, !dbg !5002
  %cmp = icmp slt i32 %37, 8, !dbg !5004
  br i1 %cmp, label %for.body, label %for.end, !dbg !5005

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %i, align 4, !dbg !5006
  %idxprom = sext i32 %38 to i64, !dbg !5007
  %arrayidx57 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 %idxprom, !dbg !5007
  store i8 -19, i8* %arrayidx57, align 1, !dbg !5008
  br label %for.inc, !dbg !5007

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4, !dbg !5009
  %inc = add i32 %39, 1, !dbg !5009
  store i32 %inc, i32* %i, align 4, !dbg !5009
  br label %for.cond, !dbg !5010, !llvm.loop !5011

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !5013
  br label %for.cond58, !dbg !5015

for.cond58:                                       ; preds = %for.inc89, %for.end
  %40 = load i32, i32* %i, align 4, !dbg !5016
  %cmp59 = icmp slt i32 %40, 5, !dbg !5018
  br i1 %cmp59, label %for.body60, label %for.end91, !dbg !5019

for.body60:                                       ; preds = %for.cond58
  call void @msleep(i32 30) #8, !dbg !5020
  %41 = load i32, i32* %i, align 4, !dbg !5022
  %add = add i32 %41, 1, !dbg !5023
  %conv = trunc i32 %add to i8, !dbg !5022
  %arrayidx61 = getelementptr [5 x i8], [5 x i8]* %get_ver_buf, i64 0, i64 4, !dbg !5024
  store i8 %conv, i8* %arrayidx61, align 1, !dbg !5025
  %42 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5026
  %43 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5028
  %config62 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %43, i32 0, i32 1, !dbg !5029
  %44 = load %struct.or51211_config*, %struct.or51211_config** %config62, align 8, !dbg !5029
  %demod_address63 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %44, i32 0, i32 0, !dbg !5030
  %45 = load i8, i8* %demod_address63, align 8, !dbg !5030
  %arraydecay64 = getelementptr inbounds [5 x i8], [5 x i8]* %get_ver_buf, i64 0, i64 0, !dbg !5031
  %call65 = call i32 @i2c_writebytes(%struct.or51211_state* %42, i8 zeroext %45, i8* %arraydecay64, i32 5) #8, !dbg !5032
  %tobool66 = icmp ne i32 %call65, 0, !dbg !5032
  br i1 %tobool66, label %if.then67, label %if.end69, !dbg !5033

if.then67:                                        ; preds = %for.body60
  %46 = load i32, i32* %i, align 4, !dbg !5034
  %call68 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.or51211_init, i64 0, i64 0), i32 %46) #13, !dbg !5034
  store i32 -1, i32* %retval, align 4, !dbg !5036
  br label %return, !dbg !5036

if.end69:                                         ; preds = %for.body60
  call void @msleep(i32 3) #8, !dbg !5037
  %47 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5038
  %48 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5040
  %config70 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %48, i32 0, i32 1, !dbg !5041
  %49 = load %struct.or51211_config*, %struct.or51211_config** %config70, align 8, !dbg !5041
  %demod_address71 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %49, i32 0, i32 0, !dbg !5042
  %50 = load i8, i8* %demod_address71, align 8, !dbg !5042
  %51 = load i32, i32* %i, align 4, !dbg !5043
  %mul = mul i32 %51, 2, !dbg !5044
  %idxprom72 = sext i32 %mul to i64, !dbg !5045
  %arrayidx73 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 %idxprom72, !dbg !5045
  %call74 = call i32 @i2c_readbytes(%struct.or51211_state* %47, i8 zeroext %50, i8* %arrayidx73, i32 2) #8, !dbg !5046
  %tobool75 = icmp ne i32 %call74, 0, !dbg !5046
  br i1 %tobool75, label %if.then76, label %if.end78, !dbg !5047

if.then76:                                        ; preds = %if.end69
  %52 = load i32, i32* %i, align 4, !dbg !5048
  %call77 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.or51211_init, i64 0, i64 0), i32 %52) #13, !dbg !5048
  store i32 -1, i32* %retval, align 4, !dbg !5050
  br label %return, !dbg !5050

if.end78:                                         ; preds = %if.end69
  %53 = load i32, i32* %i, align 4, !dbg !5051
  %mul79 = mul i32 %53, 2, !dbg !5053
  %add80 = add i32 %mul79, 1, !dbg !5054
  %idxprom81 = sext i32 %add80 to i64, !dbg !5055
  %arrayidx82 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 %idxprom81, !dbg !5055
  %54 = load i8, i8* %arrayidx82, align 1, !dbg !5055
  %conv83 = zext i8 %54 to i32, !dbg !5056
  %55 = load i32, i32* %i, align 4, !dbg !5057
  %add84 = add i32 %55, 1, !dbg !5058
  %cmp85 = icmp ne i32 %conv83, %add84, !dbg !5059
  br i1 %cmp85, label %if.then87, label %if.end88, !dbg !5060

if.then87:                                        ; preds = %if.end78
  %56 = load i32, i32* %i, align 4, !dbg !5061
  %dec = add i32 %56, -1, !dbg !5061
  store i32 %dec, i32* %i, align 4, !dbg !5061
  br label %if.end88, !dbg !5063

if.end88:                                         ; preds = %if.then87, %if.end78
  br label %for.inc89, !dbg !5064

for.inc89:                                        ; preds = %if.end88
  %57 = load i32, i32* %i, align 4, !dbg !5065
  %inc90 = add i32 %57, 1, !dbg !5065
  store i32 %inc90, i32* %i, align 4, !dbg !5065
  br label %for.cond58, !dbg !5066, !llvm.loop !5067

for.end91:                                        ; preds = %for.cond58
  br label %do.body, !dbg !5069

do.body:                                          ; preds = %for.end91
  %58 = load i32, i32* @debug, align 4, !dbg !5070
  %tobool92 = icmp ne i32 %58, 0, !dbg !5070
  br i1 %tobool92, label %if.then93, label %if.end94, !dbg !5073

if.then93:                                        ; preds = %do.body
  store i32 0, i32* %tmp, align 4, !dbg !5074
  %59 = load i32, i32* %tmp, align 4, !dbg !5077
  br label %if.end94, !dbg !5070

if.end94:                                         ; preds = %if.then93, %do.body
  br label %do.end, !dbg !5073

do.end:                                           ; preds = %if.end94
  %arrayidx95 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 2, !dbg !5078
  %60 = load i8, i8* %arrayidx95, align 1, !dbg !5078
  %conv96 = zext i8 %60 to i32, !dbg !5078
  %arrayidx97 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 4, !dbg !5078
  %61 = load i8, i8* %arrayidx97, align 1, !dbg !5078
  %conv98 = zext i8 %61 to i32, !dbg !5078
  %arrayidx99 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 6, !dbg !5078
  %62 = load i8, i8* %arrayidx99, align 1, !dbg !5078
  %conv100 = zext i8 %62 to i32, !dbg !5078
  %arrayidx101 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 12, !dbg !5078
  %63 = load i8, i8* %arrayidx101, align 1, !dbg !5078
  %conv102 = zext i8 %63 to i32, !dbg !5078
  %arrayidx103 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 10, !dbg !5078
  %64 = load i8, i8* %arrayidx103, align 1, !dbg !5078
  %conv104 = zext i8 %64 to i32, !dbg !5078
  %call105 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.or51211_init, i64 0, i64 0), i32 %conv96, i32 %conv98, i32 %conv100, i32 %conv102, i32 %conv104) #13, !dbg !5078
  %arrayidx106 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 0, !dbg !5079
  store i8 4, i8* %arrayidx106, align 1, !dbg !5080
  %arrayidx107 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 1, !dbg !5081
  store i8 0, i8* %arrayidx107, align 1, !dbg !5082
  %arrayidx108 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 2, !dbg !5083
  store i8 3, i8* %arrayidx108, align 1, !dbg !5084
  %arrayidx109 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 3, !dbg !5085
  store i8 0, i8* %arrayidx109, align 1, !dbg !5086
  call void @msleep(i32 20) #8, !dbg !5087
  %65 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5088
  %66 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5090
  %config110 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %66, i32 0, i32 1, !dbg !5091
  %67 = load %struct.or51211_config*, %struct.or51211_config** %config110, align 8, !dbg !5091
  %demod_address111 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %67, i32 0, i32 0, !dbg !5092
  %68 = load i8, i8* %demod_address111, align 8, !dbg !5092
  %arraydecay112 = getelementptr inbounds [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 0, !dbg !5093
  %call113 = call i32 @i2c_writebytes(%struct.or51211_state* %65, i8 zeroext %68, i8* %arraydecay112, i32 3) #8, !dbg !5094
  %tobool114 = icmp ne i32 %call113, 0, !dbg !5094
  br i1 %tobool114, label %if.then115, label %if.end117, !dbg !5095

if.then115:                                       ; preds = %do.end
  %call116 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.or51211_init, i64 0, i64 0)) #13, !dbg !5096
  store i32 -1, i32* %retval, align 4, !dbg !5098
  br label %return, !dbg !5098

if.end117:                                        ; preds = %do.end
  call void @msleep(i32 20) #8, !dbg !5099
  %69 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5100
  %70 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5102
  %config118 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %70, i32 0, i32 1, !dbg !5103
  %71 = load %struct.or51211_config*, %struct.or51211_config** %config118, align 8, !dbg !5103
  %demod_address119 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %71, i32 0, i32 0, !dbg !5104
  %72 = load i8, i8* %demod_address119, align 8, !dbg !5104
  %arrayidx120 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 8, !dbg !5105
  %call121 = call i32 @i2c_readbytes(%struct.or51211_state* %69, i8 zeroext %72, i8* %arrayidx120, i32 2) #8, !dbg !5106
  %tobool122 = icmp ne i32 %call121, 0, !dbg !5106
  br i1 %tobool122, label %if.then123, label %if.end125, !dbg !5107

if.then123:                                       ; preds = %if.end117
  %call124 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.or51211_init, i64 0, i64 0)) #13, !dbg !5108
  store i32 -1, i32* %retval, align 4, !dbg !5110
  br label %return, !dbg !5110

if.end125:                                        ; preds = %if.end117
  %73 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5111
  %initialized126 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %73, i32 0, i32 4, !dbg !5112
  %bf.load127 = load i8, i8* %initialized126, align 8, !dbg !5113
  %bf.clear128 = and i8 %bf.load127, -2, !dbg !5113
  %bf.set = or i8 %bf.clear128, 1, !dbg !5113
  store i8 %bf.set, i8* %initialized126, align 8, !dbg !5113
  br label %if.end129, !dbg !5114

if.end129:                                        ; preds = %if.end125, %entry
  store i32 0, i32* %retval, align 4, !dbg !5115
  br label %return, !dbg !5115

return:                                           ; preds = %if.end129, %if.then123, %if.then115, %if.then76, %if.then67, %if.then54, %if.then46, %if.then34, %if.then26, %if.then16, %if.then9, %if.then5
  %74 = load i32, i32* %retval, align 4, !dbg !5116
  ret i32 %74, !dbg !5116
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @or51211_sleep(%struct.dvb_frontend* %fe) #0 !dbg !5117 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5118, metadata !DIExpression()), !dbg !5119
  ret i32 0, !dbg !5120
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @or51211_set_parameters(%struct.dvb_frontend* %fe) #0 !dbg !5121 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.or51211_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5122, metadata !DIExpression()), !dbg !5123
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !5124, metadata !DIExpression()), !dbg !5125
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5126
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5127
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !5125
  call void @llvm.dbg.declare(metadata %struct.or51211_state** %state, metadata !5128, metadata !DIExpression()), !dbg !5129
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5130
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 3, !dbg !5131
  %2 = load i8*, i8** %demodulator_priv, align 8, !dbg !5131
  %3 = bitcast i8* %2 to %struct.or51211_state*, !dbg !5130
  store %struct.or51211_state* %3, %struct.or51211_state** %state, align 8, !dbg !5129
  %4 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5132
  %current_frequency = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %4, i32 0, i32 6, !dbg !5134
  %5 = load i32, i32* %current_frequency, align 8, !dbg !5134
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5135
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 0, !dbg !5136
  %7 = load i32, i32* %frequency, align 4, !dbg !5136
  %cmp = icmp ne i32 %5, %7, !dbg !5137
  br i1 %cmp, label %if.then, label %if.end15, !dbg !5138

if.then:                                          ; preds = %entry
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5139
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1, !dbg !5142
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5143
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5144
  %9 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5144
  %tobool = icmp ne i32 (%struct.dvb_frontend*)* %9, null, !dbg !5139
  br i1 %tobool, label %if.then1, label %if.end11, !dbg !5145

if.then1:                                         ; preds = %if.then
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5146
  %ops2 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1, !dbg !5148
  %tuner_ops3 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops2, i32 0, i32 30, !dbg !5149
  %set_params4 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops3, i32 0, i32 6, !dbg !5150
  %11 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params4, align 8, !dbg !5150
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5151
  %call = call i32 %11(%struct.dvb_frontend* %12) #8, !dbg !5146
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5152
  %ops5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1, !dbg !5154
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops5, i32 0, i32 26, !dbg !5155
  %14 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5155
  %tobool6 = icmp ne i32 (%struct.dvb_frontend*, i32)* %14, null, !dbg !5152
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !5156

if.then7:                                         ; preds = %if.then1
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5157
  %ops8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 1, !dbg !5158
  %i2c_gate_ctrl9 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops8, i32 0, i32 26, !dbg !5159
  %16 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl9, align 8, !dbg !5159
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5160
  %call10 = call i32 %16(%struct.dvb_frontend* %17, i32 0) #8, !dbg !5157
  br label %if.end, !dbg !5157

if.end:                                           ; preds = %if.then7, %if.then1
  br label %if.end11, !dbg !5161

if.end11:                                         ; preds = %if.end, %if.then
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5162
  %call12 = call i32 @or51211_setmode(%struct.dvb_frontend* %18, i32 0) #8, !dbg !5163
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5164
  %frequency13 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 0, !dbg !5165
  %20 = load i32, i32* %frequency13, align 4, !dbg !5165
  %21 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5166
  %current_frequency14 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %21, i32 0, i32 6, !dbg !5167
  store i32 %20, i32* %current_frequency14, align 8, !dbg !5168
  br label %if.end15, !dbg !5169

if.end15:                                         ; preds = %if.end11, %entry
  ret i32 0, !dbg !5170
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @or51211_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %fesettings) #0 !dbg !5171 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fesettings.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5172, metadata !DIExpression()), !dbg !5173
  store %struct.dvb_frontend_tune_settings* %fesettings, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %fesettings.addr, metadata !5174, metadata !DIExpression()), !dbg !5175
  %0 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5176
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %0, i32 0, i32 0, !dbg !5177
  store i32 500, i32* %min_delay_ms, align 4, !dbg !5178
  %1 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5179
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %1, i32 0, i32 1, !dbg !5180
  store i32 0, i32* %step_size, align 4, !dbg !5181
  %2 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5182
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %2, i32 0, i32 2, !dbg !5183
  store i32 0, i32* %max_drift, align 4, !dbg !5184
  ret i32 0, !dbg !5185
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @or51211_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !5186 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.or51211_state*, align 8
  %rec_buf = alloca [2 x i8], align 1
  %snd_buf = alloca [4 x i8], align 1
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5187, metadata !DIExpression()), !dbg !5188
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5189, metadata !DIExpression()), !dbg !5190
  call void @llvm.dbg.declare(metadata %struct.or51211_state** %state, metadata !5191, metadata !DIExpression()), !dbg !5192
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5193
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5194
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5194
  %2 = bitcast i8* %1 to %struct.or51211_state*, !dbg !5193
  store %struct.or51211_state* %2, %struct.or51211_state** %state, align 8, !dbg !5192
  call void @llvm.dbg.declare(metadata [2 x i8]* %rec_buf, metadata !5195, metadata !DIExpression()), !dbg !5197
  call void @llvm.dbg.declare(metadata [4 x i8]* %snd_buf, metadata !5198, metadata !DIExpression()), !dbg !5200
  %3 = bitcast [4 x i8]* %snd_buf to i8*, !dbg !5200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.or51211_read_status.snd_buf, i32 0, i32 0), i64 4, i1 false), !dbg !5200
  %4 = load i32*, i32** %status.addr, align 8, !dbg !5201
  store i32 0, i32* %4, align 4, !dbg !5202
  %5 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5203
  %6 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5205
  %config = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %6, i32 0, i32 1, !dbg !5206
  %7 = load %struct.or51211_config*, %struct.or51211_config** %config, align 8, !dbg !5206
  %demod_address = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %7, i32 0, i32 0, !dbg !5207
  %8 = load i8, i8* %demod_address, align 8, !dbg !5207
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %snd_buf, i64 0, i64 0, !dbg !5208
  %call = call i32 @i2c_writebytes(%struct.or51211_state* %5, i8 zeroext %8, i8* %arraydecay, i32 3) #8, !dbg !5209
  %tobool = icmp ne i32 %call, 0, !dbg !5209
  br i1 %tobool, label %if.then, label %if.end, !dbg !5210

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.or51211_read_status, i64 0, i64 0)) #13, !dbg !5211
  store i32 -1, i32* %retval, align 4, !dbg !5213
  br label %return, !dbg !5213

if.end:                                           ; preds = %entry
  call void @msleep(i32 3) #8, !dbg !5214
  %9 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5215
  %10 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5217
  %config2 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %10, i32 0, i32 1, !dbg !5218
  %11 = load %struct.or51211_config*, %struct.or51211_config** %config2, align 8, !dbg !5218
  %demod_address3 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %11, i32 0, i32 0, !dbg !5219
  %12 = load i8, i8* %demod_address3, align 8, !dbg !5219
  %arraydecay4 = getelementptr inbounds [2 x i8], [2 x i8]* %rec_buf, i64 0, i64 0, !dbg !5220
  %call5 = call i32 @i2c_readbytes(%struct.or51211_state* %9, i8 zeroext %12, i8* %arraydecay4, i32 2) #8, !dbg !5221
  %tobool6 = icmp ne i32 %call5, 0, !dbg !5221
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !5222

if.then7:                                         ; preds = %if.end
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.or51211_read_status, i64 0, i64 0)) #13, !dbg !5223
  store i32 -1, i32* %retval, align 4, !dbg !5225
  br label %return, !dbg !5225

if.end9:                                          ; preds = %if.end
  br label %do.body, !dbg !5226

do.body:                                          ; preds = %if.end9
  %13 = load i32, i32* @debug, align 4, !dbg !5227
  %tobool10 = icmp ne i32 %13, 0, !dbg !5227
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5230

if.then11:                                        ; preds = %do.body
  store i32 0, i32* %tmp, align 4, !dbg !5231
  %14 = load i32, i32* %tmp, align 4, !dbg !5234
  br label %if.end12, !dbg !5227

if.end12:                                         ; preds = %if.then11, %do.body
  br label %do.end, !dbg !5230

do.end:                                           ; preds = %if.end12
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %rec_buf, i64 0, i64 0, !dbg !5235
  %15 = load i8, i8* %arrayidx, align 1, !dbg !5235
  %conv = zext i8 %15 to i32, !dbg !5235
  %and = and i32 %conv, 1, !dbg !5237
  %tobool13 = icmp ne i32 %and, 0, !dbg !5237
  br i1 %tobool13, label %if.then14, label %if.end19, !dbg !5238

if.then14:                                        ; preds = %do.end
  %16 = load i32*, i32** %status.addr, align 8, !dbg !5239
  %17 = load i32, i32* %16, align 4, !dbg !5241
  %or = or i32 %17, 1, !dbg !5241
  store i32 %or, i32* %16, align 4, !dbg !5241
  %18 = load i32*, i32** %status.addr, align 8, !dbg !5242
  %19 = load i32, i32* %18, align 4, !dbg !5243
  %or15 = or i32 %19, 2, !dbg !5243
  store i32 %or15, i32* %18, align 4, !dbg !5243
  %20 = load i32*, i32** %status.addr, align 8, !dbg !5244
  %21 = load i32, i32* %20, align 4, !dbg !5245
  %or16 = or i32 %21, 4, !dbg !5245
  store i32 %or16, i32* %20, align 4, !dbg !5245
  %22 = load i32*, i32** %status.addr, align 8, !dbg !5246
  %23 = load i32, i32* %22, align 4, !dbg !5247
  %or17 = or i32 %23, 8, !dbg !5247
  store i32 %or17, i32* %22, align 4, !dbg !5247
  %24 = load i32*, i32** %status.addr, align 8, !dbg !5248
  %25 = load i32, i32* %24, align 4, !dbg !5249
  %or18 = or i32 %25, 16, !dbg !5249
  store i32 %or18, i32* %24, align 4, !dbg !5249
  br label %if.end19, !dbg !5250

if.end19:                                         ; preds = %if.then14, %do.end
  store i32 0, i32* %retval, align 4, !dbg !5251
  br label %return, !dbg !5251

return:                                           ; preds = %if.end19, %if.then7, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !5252
  ret i32 %26, !dbg !5252
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @or51211_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5253 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5254, metadata !DIExpression()), !dbg !5255
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5256, metadata !DIExpression()), !dbg !5257
  %0 = load i32*, i32** %ber.addr, align 8, !dbg !5258
  store i32 -38, i32* %0, align 4, !dbg !5259
  ret i32 0, !dbg !5260
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @or51211_read_signal_strength(%struct.dvb_frontend* %fe, i16* %strength) #0 !dbg !5261 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %strength.addr = alloca i16*, align 8
  %state = alloca %struct.or51211_state*, align 8
  %snr = alloca i16, align 2
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5262, metadata !DIExpression()), !dbg !5263
  store i16* %strength, i16** %strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %strength.addr, metadata !5264, metadata !DIExpression()), !dbg !5265
  call void @llvm.dbg.declare(metadata %struct.or51211_state** %state, metadata !5266, metadata !DIExpression()), !dbg !5267
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5268
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5269
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5269
  %2 = bitcast i8* %1 to %struct.or51211_state*, !dbg !5270
  store %struct.or51211_state* %2, %struct.or51211_state** %state, align 8, !dbg !5267
  call void @llvm.dbg.declare(metadata i16* %snr, metadata !5271, metadata !DIExpression()), !dbg !5272
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5273, metadata !DIExpression()), !dbg !5274
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5275
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 1, !dbg !5276
  %read_snr = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 16, !dbg !5277
  %4 = load i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)** %read_snr, align 8, !dbg !5277
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5278
  %call = call i32 %4(%struct.dvb_frontend* %5, i16* %snr) #8, !dbg !5275
  store i32 %call, i32* %ret, align 4, !dbg !5279
  %6 = load i32, i32* %ret, align 4, !dbg !5280
  %cmp = icmp ne i32 %6, 0, !dbg !5282
  br i1 %cmp, label %if.then, label %if.end, !dbg !5283

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %ret, align 4, !dbg !5284
  store i32 %7, i32* %retval, align 4, !dbg !5285
  br label %return, !dbg !5285

if.end:                                           ; preds = %entry
  %8 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5286
  %snr1 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %8, i32 0, i32 5, !dbg !5288
  %9 = load i32, i32* %snr1, align 4, !dbg !5288
  %cmp2 = icmp uge i32 %9, 587202560, !dbg !5289
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !5290

if.then3:                                         ; preds = %if.end
  %10 = load i16*, i16** %strength.addr, align 8, !dbg !5291
  store i16 -1, i16* %10, align 2, !dbg !5292
  br label %if.end5, !dbg !5293

if.else:                                          ; preds = %if.end
  %11 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5294
  %snr4 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %11, i32 0, i32 5, !dbg !5295
  %12 = load i32, i32* %snr4, align 4, !dbg !5295
  %div = udiv i32 %12, 8960, !dbg !5296
  %conv = trunc i32 %div to i16, !dbg !5294
  %13 = load i16*, i16** %strength.addr, align 8, !dbg !5297
  store i16 %conv, i16* %13, align 2, !dbg !5298
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  store i32 0, i32* %retval, align 4, !dbg !5299
  br label %return, !dbg !5299

return:                                           ; preds = %if.end5, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5300
  ret i32 %14, !dbg !5300
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @or51211_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5301 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %state = alloca %struct.or51211_state*, align 8
  %rec_buf = alloca [2 x i8], align 1
  %snd_buf = alloca [3 x i8], align 1
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5302, metadata !DIExpression()), !dbg !5303
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5304, metadata !DIExpression()), !dbg !5305
  call void @llvm.dbg.declare(metadata %struct.or51211_state** %state, metadata !5306, metadata !DIExpression()), !dbg !5307
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5308
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5309
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5309
  %2 = bitcast i8* %1 to %struct.or51211_state*, !dbg !5308
  store %struct.or51211_state* %2, %struct.or51211_state** %state, align 8, !dbg !5307
  call void @llvm.dbg.declare(metadata [2 x i8]* %rec_buf, metadata !5310, metadata !DIExpression()), !dbg !5311
  call void @llvm.dbg.declare(metadata [3 x i8]* %snd_buf, metadata !5312, metadata !DIExpression()), !dbg !5314
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %snd_buf, i64 0, i64 0, !dbg !5315
  store i8 4, i8* %arrayidx, align 1, !dbg !5316
  %arrayidx1 = getelementptr [3 x i8], [3 x i8]* %snd_buf, i64 0, i64 1, !dbg !5317
  store i8 0, i8* %arrayidx1, align 1, !dbg !5318
  %arrayidx2 = getelementptr [3 x i8], [3 x i8]* %snd_buf, i64 0, i64 2, !dbg !5319
  store i8 4, i8* %arrayidx2, align 1, !dbg !5320
  %3 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5321
  %4 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5323
  %config = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %4, i32 0, i32 1, !dbg !5324
  %5 = load %struct.or51211_config*, %struct.or51211_config** %config, align 8, !dbg !5324
  %demod_address = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %5, i32 0, i32 0, !dbg !5325
  %6 = load i8, i8* %demod_address, align 8, !dbg !5325
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %snd_buf, i64 0, i64 0, !dbg !5326
  %call = call i32 @i2c_writebytes(%struct.or51211_state* %3, i8 zeroext %6, i8* %arraydecay, i32 3) #8, !dbg !5327
  %tobool = icmp ne i32 %call, 0, !dbg !5327
  br i1 %tobool, label %if.then, label %if.end, !dbg !5328

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.or51211_read_snr, i64 0, i64 0)) #13, !dbg !5329
  store i32 -1, i32* %retval, align 4, !dbg !5331
  br label %return, !dbg !5331

if.end:                                           ; preds = %entry
  %7 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5332
  %8 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5334
  %config4 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %8, i32 0, i32 1, !dbg !5335
  %9 = load %struct.or51211_config*, %struct.or51211_config** %config4, align 8, !dbg !5335
  %demod_address5 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %9, i32 0, i32 0, !dbg !5336
  %10 = load i8, i8* %demod_address5, align 8, !dbg !5336
  %arraydecay6 = getelementptr inbounds [2 x i8], [2 x i8]* %rec_buf, i64 0, i64 0, !dbg !5337
  %call7 = call i32 @i2c_readbytes(%struct.or51211_state* %7, i8 zeroext %10, i8* %arraydecay6, i32 2) #8, !dbg !5338
  %tobool8 = icmp ne i32 %call7, 0, !dbg !5338
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !5339

if.then9:                                         ; preds = %if.end
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.or51211_read_snr, i64 0, i64 0)) #13, !dbg !5340
  store i32 -1, i32* %retval, align 4, !dbg !5342
  br label %return, !dbg !5342

if.end11:                                         ; preds = %if.end
  %arrayidx12 = getelementptr [2 x i8], [2 x i8]* %rec_buf, i64 0, i64 0, !dbg !5343
  %11 = load i8, i8* %arrayidx12, align 1, !dbg !5343
  %conv = zext i8 %11 to i32, !dbg !5343
  %call13 = call i32 @calculate_snr(i32 %conv, i32 89599047) #8, !dbg !5344
  %12 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5345
  %snr14 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %12, i32 0, i32 5, !dbg !5346
  store i32 %call13, i32* %snr14, align 4, !dbg !5347
  %13 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5348
  %snr15 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %13, i32 0, i32 5, !dbg !5349
  %14 = load i32, i32* %snr15, align 4, !dbg !5349
  %shr = lshr i32 %14, 16, !dbg !5350
  %conv16 = trunc i32 %shr to i16, !dbg !5351
  %15 = load i16*, i16** %snr.addr, align 8, !dbg !5352
  store i16 %conv16, i16* %15, align 2, !dbg !5353
  br label %do.body, !dbg !5354

do.body:                                          ; preds = %if.end11
  %16 = load i32, i32* @debug, align 4, !dbg !5355
  %tobool17 = icmp ne i32 %16, 0, !dbg !5355
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5358

if.then18:                                        ; preds = %do.body
  store i32 0, i32* %tmp, align 4, !dbg !5359
  %17 = load i32, i32* %tmp, align 4, !dbg !5362
  br label %if.end19, !dbg !5355

if.end19:                                         ; preds = %if.then18, %do.body
  br label %do.end, !dbg !5358

do.end:                                           ; preds = %if.end19
  store i32 0, i32* %retval, align 4, !dbg !5363
  br label %return, !dbg !5363

return:                                           ; preds = %do.end, %if.then9, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !5364
  ret i32 %18, !dbg !5364
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @or51211_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !5365 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5366, metadata !DIExpression()), !dbg !5367
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !5368, metadata !DIExpression()), !dbg !5369
  %0 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5370
  store i32 -38, i32* %0, align 4, !dbg !5371
  ret i32 0, !dbg !5372
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #4

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @or51211_load_firmware(%struct.dvb_frontend* %fe, %struct.firmware* %fw) #0 !dbg !5373 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fw.addr = alloca %struct.firmware*, align 8
  %state = alloca %struct.or51211_state*, align 8
  %tudata = alloca [585 x i8], align 16
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5376, metadata !DIExpression()), !dbg !5377
  store %struct.firmware* %fw, %struct.firmware** %fw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw.addr, metadata !5378, metadata !DIExpression()), !dbg !5379
  call void @llvm.dbg.declare(metadata %struct.or51211_state** %state, metadata !5380, metadata !DIExpression()), !dbg !5381
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5382
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5383
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5383
  %2 = bitcast i8* %1 to %struct.or51211_state*, !dbg !5382
  store %struct.or51211_state* %2, %struct.or51211_state** %state, align 8, !dbg !5381
  call void @llvm.dbg.declare(metadata [585 x i8]* %tudata, metadata !5384, metadata !DIExpression()), !dbg !5388
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5389, metadata !DIExpression()), !dbg !5390
  br label %do.body, !dbg !5391

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5392
  %tobool = icmp ne i32 %3, 0, !dbg !5392
  br i1 %tobool, label %if.then, label %if.end, !dbg !5395

if.then:                                          ; preds = %do.body
  store i32 0, i32* %tmp, align 4, !dbg !5396
  %4 = load i32, i32* %tmp, align 4, !dbg !5399
  br label %if.end, !dbg !5392

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5395

do.end:                                           ; preds = %if.end
  %arrayidx = getelementptr [585 x i8], [585 x i8]* %tudata, i64 0, i64 0, !dbg !5400
  store i8 17, i8* %arrayidx, align 16, !dbg !5401
  %5 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5402
  %arraydecay = getelementptr inbounds [585 x i8], [585 x i8]* %tudata, i64 0, i64 0, !dbg !5404
  %call = call i32 @i2c_writebytes(%struct.or51211_state* %5, i8 zeroext 80, i8* %arraydecay, i32 1) #8, !dbg !5405
  %tobool1 = icmp ne i32 %call, 0, !dbg !5405
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !5406

if.then2:                                         ; preds = %do.end
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.or51211_load_firmware, i64 0, i64 0)) #13, !dbg !5407
  store i32 -1, i32* %retval, align 4, !dbg !5409
  br label %return, !dbg !5409

if.end4:                                          ; preds = %do.end
  %6 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5410
  %arrayidx5 = getelementptr [585 x i8], [585 x i8]* %tudata, i64 0, i64 145, !dbg !5412
  %call6 = call i32 @i2c_readbytes(%struct.or51211_state* %6, i8 zeroext 80, i8* %arrayidx5, i32 192) #8, !dbg !5413
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5413
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !5414

if.then8:                                         ; preds = %if.end4
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.or51211_load_firmware, i64 0, i64 0)) #13, !dbg !5415
  store i32 -1, i32* %retval, align 4, !dbg !5417
  br label %return, !dbg !5417

if.end10:                                         ; preds = %if.end4
  store i32 0, i32* %i, align 4, !dbg !5418
  br label %for.cond, !dbg !5420

for.cond:                                         ; preds = %for.inc, %if.end10
  %7 = load i32, i32* %i, align 4, !dbg !5421
  %cmp = icmp slt i32 %7, 145, !dbg !5423
  br i1 %cmp, label %for.body, label %for.end, !dbg !5424

for.body:                                         ; preds = %for.cond
  %8 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !5425
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %8, i32 0, i32 1, !dbg !5426
  %9 = load i8*, i8** %data, align 8, !dbg !5426
  %10 = load i32, i32* %i, align 4, !dbg !5427
  %idxprom = sext i32 %10 to i64, !dbg !5425
  %arrayidx11 = getelementptr i8, i8* %9, i64 %idxprom, !dbg !5425
  %11 = load i8, i8* %arrayidx11, align 1, !dbg !5425
  %12 = load i32, i32* %i, align 4, !dbg !5428
  %idxprom12 = sext i32 %12 to i64, !dbg !5429
  %arrayidx13 = getelementptr [585 x i8], [585 x i8]* %tudata, i64 0, i64 %idxprom12, !dbg !5429
  store i8 %11, i8* %arrayidx13, align 1, !dbg !5430
  br label %for.inc, !dbg !5429

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !5431
  %inc = add i32 %13, 1, !dbg !5431
  store i32 %inc, i32* %i, align 4, !dbg !5431
  br label %for.cond, !dbg !5432, !llvm.loop !5433

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !5435
  br label %for.cond14, !dbg !5437

for.cond14:                                       ; preds = %for.inc23, %for.end
  %14 = load i32, i32* %i, align 4, !dbg !5438
  %cmp15 = icmp slt i32 %14, 248, !dbg !5440
  br i1 %cmp15, label %for.body16, label %for.end25, !dbg !5441

for.body16:                                       ; preds = %for.cond14
  %15 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !5442
  %data17 = getelementptr inbounds %struct.firmware, %struct.firmware* %15, i32 0, i32 1, !dbg !5443
  %16 = load i8*, i8** %data17, align 8, !dbg !5443
  %17 = load i32, i32* %i, align 4, !dbg !5444
  %add = add i32 145, %17, !dbg !5445
  %idxprom18 = sext i32 %add to i64, !dbg !5442
  %arrayidx19 = getelementptr i8, i8* %16, i64 %idxprom18, !dbg !5442
  %18 = load i8, i8* %arrayidx19, align 1, !dbg !5442
  %19 = load i32, i32* %i, align 4, !dbg !5446
  %add20 = add i32 %19, 337, !dbg !5447
  %idxprom21 = sext i32 %add20 to i64, !dbg !5448
  %arrayidx22 = getelementptr [585 x i8], [585 x i8]* %tudata, i64 0, i64 %idxprom21, !dbg !5448
  store i8 %18, i8* %arrayidx22, align 1, !dbg !5449
  br label %for.inc23, !dbg !5448

for.inc23:                                        ; preds = %for.body16
  %20 = load i32, i32* %i, align 4, !dbg !5450
  %inc24 = add i32 %20, 1, !dbg !5450
  store i32 %inc24, i32* %i, align 4, !dbg !5450
  br label %for.cond14, !dbg !5451, !llvm.loop !5452

for.end25:                                        ; preds = %for.cond14
  %21 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5454
  %config = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %21, i32 0, i32 1, !dbg !5455
  %22 = load %struct.or51211_config*, %struct.or51211_config** %config, align 8, !dbg !5455
  %reset = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %22, i32 0, i32 3, !dbg !5456
  %23 = load void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)** %reset, align 8, !dbg !5456
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5457
  call void %23(%struct.dvb_frontend* %24) #8, !dbg !5454
  %25 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5458
  %26 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5460
  %config26 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %26, i32 0, i32 1, !dbg !5461
  %27 = load %struct.or51211_config*, %struct.or51211_config** %config26, align 8, !dbg !5461
  %demod_address = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %27, i32 0, i32 0, !dbg !5462
  %28 = load i8, i8* %demod_address, align 8, !dbg !5462
  %arraydecay27 = getelementptr inbounds [585 x i8], [585 x i8]* %tudata, i64 0, i64 0, !dbg !5463
  %call28 = call i32 @i2c_writebytes(%struct.or51211_state* %25, i8 zeroext %28, i8* %arraydecay27, i32 585) #8, !dbg !5464
  %tobool29 = icmp ne i32 %call28, 0, !dbg !5464
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !5465

if.then30:                                        ; preds = %for.end25
  %call31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.or51211_load_firmware, i64 0, i64 0)) #13, !dbg !5466
  store i32 -1, i32* %retval, align 4, !dbg !5468
  br label %return, !dbg !5468

if.end32:                                         ; preds = %for.end25
  call void @msleep(i32 1) #8, !dbg !5469
  %29 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5470
  %30 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5472
  %config33 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %30, i32 0, i32 1, !dbg !5473
  %31 = load %struct.or51211_config*, %struct.or51211_config** %config33, align 8, !dbg !5473
  %demod_address34 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %31, i32 0, i32 0, !dbg !5474
  %32 = load i8, i8* %demod_address34, align 8, !dbg !5474
  %33 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !5475
  %data35 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 1, !dbg !5476
  %34 = load i8*, i8** %data35, align 8, !dbg !5476
  %arrayidx36 = getelementptr i8, i8* %34, i64 393, !dbg !5475
  %call37 = call i32 @i2c_writebytes(%struct.or51211_state* %29, i8 zeroext %32, i8* %arrayidx36, i32 8125) #8, !dbg !5477
  %tobool38 = icmp ne i32 %call37, 0, !dbg !5477
  br i1 %tobool38, label %if.then39, label %if.end41, !dbg !5478

if.then39:                                        ; preds = %if.end32
  %call40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.or51211_load_firmware, i64 0, i64 0)) #13, !dbg !5479
  store i32 -1, i32* %retval, align 4, !dbg !5481
  br label %return, !dbg !5481

if.end41:                                         ; preds = %if.end32
  call void @msleep(i32 1) #8, !dbg !5482
  %35 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5483
  %36 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5485
  %config42 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %36, i32 0, i32 1, !dbg !5486
  %37 = load %struct.or51211_config*, %struct.or51211_config** %config42, align 8, !dbg !5486
  %demod_address43 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %37, i32 0, i32 0, !dbg !5487
  %38 = load i8, i8* %demod_address43, align 8, !dbg !5487
  %call44 = call i32 @i2c_writebytes(%struct.or51211_state* %35, i8 zeroext %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @run_buf, i64 0, i64 0), i32 2) #8, !dbg !5488
  %tobool45 = icmp ne i32 %call44, 0, !dbg !5488
  br i1 %tobool45, label %if.then46, label %if.end48, !dbg !5489

if.then46:                                        ; preds = %if.end41
  %call47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.or51211_load_firmware, i64 0, i64 0)) #13, !dbg !5490
  store i32 -1, i32* %retval, align 4, !dbg !5492
  br label %return, !dbg !5492

if.end48:                                         ; preds = %if.end41
  call void @msleep(i32 10) #8, !dbg !5493
  %39 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5494
  %40 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5496
  %config49 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %40, i32 0, i32 1, !dbg !5497
  %41 = load %struct.or51211_config*, %struct.or51211_config** %config49, align 8, !dbg !5497
  %demod_address50 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %41, i32 0, i32 0, !dbg !5498
  %42 = load i8, i8* %demod_address50, align 8, !dbg !5498
  %call51 = call i32 @i2c_writebytes(%struct.or51211_state* %39, i8 zeroext %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @run_buf, i64 0, i64 0), i32 2) #8, !dbg !5499
  %tobool52 = icmp ne i32 %call51, 0, !dbg !5499
  br i1 %tobool52, label %if.then53, label %if.end55, !dbg !5500

if.then53:                                        ; preds = %if.end48
  %call54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.or51211_load_firmware, i64 0, i64 0)) #13, !dbg !5501
  store i32 -1, i32* %retval, align 4, !dbg !5503
  br label %return, !dbg !5503

if.end55:                                         ; preds = %if.end48
  call void @msleep(i32 10) #8, !dbg !5504
  %call56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.or51211_load_firmware, i64 0, i64 0)) #13, !dbg !5505
  store i32 0, i32* %retval, align 4, !dbg !5506
  br label %return, !dbg !5506

return:                                           ; preds = %if.end55, %if.then53, %if.then46, %if.then39, %if.then30, %if.then8, %if.then2
  %43 = load i32, i32* %retval, align 4, !dbg !5507
  ret i32 %43, !dbg !5507
}

; Function Attrs: noredzone
declare dso_local void @release_firmware(%struct.firmware*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_writebytes(%struct.or51211_state* %state, i8 zeroext %reg, i8* %buf, i32 %len) #0 !dbg !5508 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.or51211_state*, align 8
  %reg.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.or51211_state* %state, %struct.or51211_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.or51211_state** %state.addr, metadata !5511, metadata !DIExpression()), !dbg !5512
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5513, metadata !DIExpression()), !dbg !5514
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5515, metadata !DIExpression()), !dbg !5516
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5519, metadata !DIExpression()), !dbg !5520
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5521, metadata !DIExpression()), !dbg !5522
  %0 = load i8, i8* %reg.addr, align 1, !dbg !5523
  %conv = zext i8 %0 to i16, !dbg !5523
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5524
  store i16 %conv, i16* %addr, align 8, !dbg !5525
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5526
  store i16 0, i16* %flags, align 2, !dbg !5527
  %1 = load i32, i32* %len.addr, align 4, !dbg !5528
  %conv1 = trunc i32 %1 to i16, !dbg !5528
  %len2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5529
  store i16 %conv1, i16* %len2, align 4, !dbg !5530
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5531
  %buf3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5532
  store i8* %2, i8** %buf3, align 8, !dbg !5533
  %3 = load %struct.or51211_state*, %struct.or51211_state** %state.addr, align 8, !dbg !5534
  %i2c = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %3, i32 0, i32 0, !dbg !5536
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5536
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %4, %struct.i2c_msg* %msg, i32 1) #8, !dbg !5537
  store i32 %call, i32* %err, align 4, !dbg !5538
  %cmp = icmp ne i32 %call, 1, !dbg !5539
  br i1 %cmp, label %if.then, label %if.end, !dbg !5540

if.then:                                          ; preds = %entry
  %5 = load i8, i8* %reg.addr, align 1, !dbg !5541
  %conv5 = zext i8 %5 to i32, !dbg !5541
  %6 = load i32, i32* %err, align 4, !dbg !5541
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.i2c_writebytes, i64 0, i64 0), i32 %conv5, i32 %6) #13, !dbg !5541
  store i32 -121, i32* %retval, align 4, !dbg !5543
  br label %return, !dbg !5543

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5544
  br label %return, !dbg !5544

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5545
  ret i32 %7, !dbg !5545
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_readbytes(%struct.or51211_state* %state, i8 zeroext %reg, i8* %buf, i32 %len) #0 !dbg !5546 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.or51211_state*, align 8
  %reg.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.or51211_state* %state, %struct.or51211_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.or51211_state** %state.addr, metadata !5549, metadata !DIExpression()), !dbg !5550
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5551, metadata !DIExpression()), !dbg !5552
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5553, metadata !DIExpression()), !dbg !5554
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5555, metadata !DIExpression()), !dbg !5556
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5557, metadata !DIExpression()), !dbg !5558
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5559, metadata !DIExpression()), !dbg !5560
  %0 = load i8, i8* %reg.addr, align 1, !dbg !5561
  %conv = zext i8 %0 to i16, !dbg !5561
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5562
  store i16 %conv, i16* %addr, align 8, !dbg !5563
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5564
  store i16 1, i16* %flags, align 2, !dbg !5565
  %1 = load i32, i32* %len.addr, align 4, !dbg !5566
  %conv1 = trunc i32 %1 to i16, !dbg !5566
  %len2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5567
  store i16 %conv1, i16* %len2, align 4, !dbg !5568
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5569
  %buf3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5570
  store i8* %2, i8** %buf3, align 8, !dbg !5571
  %3 = load %struct.or51211_state*, %struct.or51211_state** %state.addr, align 8, !dbg !5572
  %i2c = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %3, i32 0, i32 0, !dbg !5574
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5574
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %4, %struct.i2c_msg* %msg, i32 1) #8, !dbg !5575
  store i32 %call, i32* %err, align 4, !dbg !5576
  %cmp = icmp ne i32 %call, 1, !dbg !5577
  br i1 %cmp, label %if.then, label %if.end, !dbg !5578

if.then:                                          ; preds = %entry
  %5 = load i8, i8* %reg.addr, align 1, !dbg !5579
  %conv5 = zext i8 %5 to i32, !dbg !5579
  %6 = load i32, i32* %err, align 4, !dbg !5579
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.i2c_readbytes, i64 0, i64 0), i32 %conv5, i32 %6) #13, !dbg !5579
  store i32 -121, i32* %retval, align 4, !dbg !5581
  br label %return, !dbg !5581

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5582
  br label %return, !dbg !5582

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5583
  ret i32 %7, !dbg !5583
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @or51211_setmode(%struct.dvb_frontend* %fe, i32 %mode) #0 !dbg !5584 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %mode.addr = alloca i32, align 4
  %state = alloca %struct.or51211_state*, align 8
  %rec_buf = alloca [14 x i8], align 1
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5585, metadata !DIExpression()), !dbg !5586
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !5587, metadata !DIExpression()), !dbg !5588
  call void @llvm.dbg.declare(metadata %struct.or51211_state** %state, metadata !5589, metadata !DIExpression()), !dbg !5590
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5591
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5592
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5592
  %2 = bitcast i8* %1 to %struct.or51211_state*, !dbg !5591
  store %struct.or51211_state* %2, %struct.or51211_state** %state, align 8, !dbg !5590
  call void @llvm.dbg.declare(metadata [14 x i8]* %rec_buf, metadata !5593, metadata !DIExpression()), !dbg !5595
  %3 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5596
  %config = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %3, i32 0, i32 1, !dbg !5597
  %4 = load %struct.or51211_config*, %struct.or51211_config** %config, align 8, !dbg !5597
  %setmode = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %4, i32 0, i32 2, !dbg !5598
  %5 = load void (%struct.dvb_frontend*, i32)*, void (%struct.dvb_frontend*, i32)** %setmode, align 8, !dbg !5598
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5599
  %7 = load i32, i32* %mode.addr, align 4, !dbg !5600
  call void %5(%struct.dvb_frontend* %6, i32 %7) #8, !dbg !5596
  %8 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5601
  %9 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5603
  %config1 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %9, i32 0, i32 1, !dbg !5604
  %10 = load %struct.or51211_config*, %struct.or51211_config** %config1, align 8, !dbg !5604
  %demod_address = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %10, i32 0, i32 0, !dbg !5605
  %11 = load i8, i8* %demod_address, align 8, !dbg !5605
  %call = call i32 @i2c_writebytes(%struct.or51211_state* %8, i8 zeroext %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @run_buf, i64 0, i64 0), i32 2) #8, !dbg !5606
  %tobool = icmp ne i32 %call, 0, !dbg !5606
  br i1 %tobool, label %if.then, label %if.end, !dbg !5607

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.or51211_setmode, i64 0, i64 0)) #13, !dbg !5608
  store i32 -1, i32* %retval, align 4, !dbg !5610
  br label %return, !dbg !5610

if.end:                                           ; preds = %entry
  call void @msleep(i32 10) #8, !dbg !5611
  %12 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5612
  %13 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5614
  %config3 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %13, i32 0, i32 1, !dbg !5615
  %14 = load %struct.or51211_config*, %struct.or51211_config** %config3, align 8, !dbg !5615
  %demod_address4 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %14, i32 0, i32 0, !dbg !5616
  %15 = load i8, i8* %demod_address4, align 8, !dbg !5616
  %call5 = call i32 @i2c_writebytes(%struct.or51211_state* %12, i8 zeroext %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @run_buf, i64 0, i64 0), i32 2) #8, !dbg !5617
  %tobool6 = icmp ne i32 %call5, 0, !dbg !5617
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !5618

if.then7:                                         ; preds = %if.end
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.or51211_setmode, i64 0, i64 0)) #13, !dbg !5619
  store i32 -1, i32* %retval, align 4, !dbg !5621
  br label %return, !dbg !5621

if.end9:                                          ; preds = %if.end
  call void @msleep(i32 10) #8, !dbg !5622
  %16 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5623
  %17 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5625
  %config10 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %17, i32 0, i32 1, !dbg !5626
  %18 = load %struct.or51211_config*, %struct.or51211_config** %config10, align 8, !dbg !5626
  %demod_address11 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %18, i32 0, i32 0, !dbg !5627
  %19 = load i8, i8* %demod_address11, align 8, !dbg !5627
  %call12 = call i32 @i2c_writebytes(%struct.or51211_state* %16, i8 zeroext %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @cmd_buf, i64 0, i64 0), i32 3) #8, !dbg !5628
  %tobool13 = icmp ne i32 %call12, 0, !dbg !5628
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !5629

if.then14:                                        ; preds = %if.end9
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.or51211_setmode, i64 0, i64 0)) #13, !dbg !5630
  store i32 -1, i32* %retval, align 4, !dbg !5632
  br label %return, !dbg !5632

if.end16:                                         ; preds = %if.end9
  %arrayidx = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 0, !dbg !5633
  store i8 4, i8* %arrayidx, align 1, !dbg !5634
  %arrayidx17 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 1, !dbg !5635
  store i8 0, i8* %arrayidx17, align 1, !dbg !5636
  %arrayidx18 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 2, !dbg !5637
  store i8 3, i8* %arrayidx18, align 1, !dbg !5638
  %arrayidx19 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 3, !dbg !5639
  store i8 0, i8* %arrayidx19, align 1, !dbg !5640
  call void @msleep(i32 20) #8, !dbg !5641
  %20 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5642
  %21 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5644
  %config20 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %21, i32 0, i32 1, !dbg !5645
  %22 = load %struct.or51211_config*, %struct.or51211_config** %config20, align 8, !dbg !5645
  %demod_address21 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %22, i32 0, i32 0, !dbg !5646
  %23 = load i8, i8* %demod_address21, align 8, !dbg !5646
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 0, !dbg !5647
  %call22 = call i32 @i2c_writebytes(%struct.or51211_state* %20, i8 zeroext %23, i8* %arraydecay, i32 3) #8, !dbg !5648
  %tobool23 = icmp ne i32 %call22, 0, !dbg !5648
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !5649

if.then24:                                        ; preds = %if.end16
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.or51211_setmode, i64 0, i64 0)) #13, !dbg !5650
  br label %if.end26, !dbg !5652

if.end26:                                         ; preds = %if.then24, %if.end16
  call void @msleep(i32 3) #8, !dbg !5653
  %24 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5654
  %25 = load %struct.or51211_state*, %struct.or51211_state** %state, align 8, !dbg !5656
  %config27 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %25, i32 0, i32 1, !dbg !5657
  %26 = load %struct.or51211_config*, %struct.or51211_config** %config27, align 8, !dbg !5657
  %demod_address28 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %26, i32 0, i32 0, !dbg !5658
  %27 = load i8, i8* %demod_address28, align 8, !dbg !5658
  %arrayidx29 = getelementptr [14 x i8], [14 x i8]* %rec_buf, i64 0, i64 10, !dbg !5659
  %call30 = call i32 @i2c_readbytes(%struct.or51211_state* %24, i8 zeroext %27, i8* %arrayidx29, i32 2) #8, !dbg !5660
  %tobool31 = icmp ne i32 %call30, 0, !dbg !5660
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !5661

if.then32:                                        ; preds = %if.end26
  %call33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.or51211_setmode, i64 0, i64 0)) #13, !dbg !5662
  store i32 -1, i32* %retval, align 4, !dbg !5664
  br label %return, !dbg !5664

if.end34:                                         ; preds = %if.end26
  br label %do.body, !dbg !5665

do.body:                                          ; preds = %if.end34
  %28 = load i32, i32* @debug, align 4, !dbg !5666
  %tobool35 = icmp ne i32 %28, 0, !dbg !5666
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !5669

if.then36:                                        ; preds = %do.body
  store i32 0, i32* %tmp, align 4, !dbg !5670
  %29 = load i32, i32* %tmp, align 4, !dbg !5673
  br label %if.end37, !dbg !5666

if.end37:                                         ; preds = %if.then36, %do.body
  br label %do.end, !dbg !5669

do.end:                                           ; preds = %if.end37
  store i32 0, i32* %retval, align 4, !dbg !5674
  br label %return, !dbg !5674

return:                                           ; preds = %do.end, %if.then32, %if.then14, %if.then7, %if.then
  %30 = load i32, i32* %retval, align 4, !dbg !5675
  ret i32 %30, !dbg !5675
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @calculate_snr(i32 %mse, i32 %c) #0 !dbg !5676 {
entry:
  %retval = alloca i32, align 4
  %mse.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %mse, i32* %mse.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mse.addr, metadata !5679, metadata !DIExpression()), !dbg !5680
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !5681, metadata !DIExpression()), !dbg !5682
  %0 = load i32, i32* %mse.addr, align 4, !dbg !5683
  %cmp = icmp eq i32 %0, 0, !dbg !5685
  br i1 %cmp, label %if.then, label %if.end, !dbg !5686

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5687
  br label %return, !dbg !5687

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %mse.addr, align 4, !dbg !5688
  %call = call i32 @intlog10(i32 %1) #8, !dbg !5689
  %mul = mul i32 2, %call, !dbg !5690
  store i32 %mul, i32* %mse.addr, align 4, !dbg !5691
  %2 = load i32, i32* %mse.addr, align 4, !dbg !5692
  %3 = load i32, i32* %c.addr, align 4, !dbg !5694
  %cmp1 = icmp ugt i32 %2, %3, !dbg !5695
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5696

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5697
  br label %return, !dbg !5697

if.end3:                                          ; preds = %if.end
  %4 = load i32, i32* %c.addr, align 4, !dbg !5699
  %5 = load i32, i32* %mse.addr, align 4, !dbg !5700
  %sub = sub i32 %4, %5, !dbg !5701
  %mul4 = mul i32 10, %sub, !dbg !5702
  store i32 %mul4, i32* %retval, align 4, !dbg !5703
  br label %return, !dbg !5703

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !5704
  ret i32 %6, !dbg !5704
}

; Function Attrs: noredzone
declare dso_local i32 @intlog10(i32) #4

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!llvm.module.flags = !{!4463, !4464, !4465, !4466}
!llvm.ident = !{!4467}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "or51211_ops", scope: !2, file: !3, line: 520, type: !4462, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !290, globals: !4369, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/or51211.c", directory: "/home/lizy2001/genbc/linux")
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
!290 = !{!291, !293, !294, !295, !301}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !292, line: 148, baseType: !7)
!292 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!294 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !297, line: 17, baseType: !298)
!297 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !299, line: 21, baseType: !300)
!299 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!300 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "or51211_state", file: !3, line: 40, size: 10560, elements: !303)
!303 = !{!304, !4017, !4362, !4363, !4366, !4367, !4368}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !302, file: !3, line: 42, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !307, line: 695, size: 7552, elements: !308)
!307 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!308 = !{!309, !313, !314, !357, !358, !372, !3410, !3411, !3412, !3413, !3964, !3965, !3966, !3970, !3971, !3972, !3973, !4005, !4016}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !306, file: !307, line: 696, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !312, line: 76, flags: DIFlagFwdDecl)
!312 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!313 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !306, file: !307, line: 697, baseType: !7, size: 32, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !306, file: !307, line: 698, baseType: !315, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !307, line: 519, size: 320, elements: !318)
!318 = !{!319, !334, !335, !350, !351}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !317, file: !307, line: 529, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!294, !305, !323, !294}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !325, line: 69, size: 128, elements: !326)
!325 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!326 = !{!327, !330, !331, !332}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !324, file: !325, line: 70, baseType: !328, size: 16)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !299, line: 24, baseType: !329)
!329 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !325, line: 71, baseType: !328, size: 16, offset: 16)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !324, file: !325, line: 84, baseType: !328, size: 16, offset: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !324, file: !325, line: 85, baseType: !333, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !317, file: !307, line: 531, baseType: !320, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !317, file: !307, line: 533, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!294, !305, !339, !329, !340, !296, !294, !341}
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !297, line: 19, baseType: !328)
!340 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !325, line: 135, size: 272, elements: !343)
!343 = !{!344, !345, !346}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !342, file: !325, line: 136, baseType: !298, size: 8)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !342, file: !325, line: 137, baseType: !328, size: 16)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !342, file: !325, line: 138, baseType: !347, size: 272)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 272, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 34)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !317, file: !307, line: 536, baseType: !336, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !317, file: !307, line: 541, baseType: !352, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!355, !305}
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !297, line: 21, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !299, line: 27, baseType: !7)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !306, file: !307, line: 699, baseType: !293, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !306, file: !307, line: 702, baseType: !359, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !307, line: 557, size: 192, elements: !362)
!362 = !{!363, !367, !371}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !361, file: !307, line: 558, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !305, !7}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !361, file: !307, line: 559, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!294, !305, !7}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !361, file: !307, line: 560, baseType: !364, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !306, file: !307, line: 703, baseType: !373, size: 192, offset: 320)
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
!406 = !{!407, !413, !416, !417, !427, !428, !429, !430, !431, !432, !433, !434, !438, !464, !475, !567, !568, !569, !580, !581, !583, !584, !2712, !2713, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2795, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2810, !2811, !2812, !2814, !2815, !2816, !2817, !2818, !2819, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2843, !2848, !2849, !2850, !2851, !2852, !2854, !2857, !2860, !2863, !2866, !2870, !2971, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3017, !3018, !3019, !3020, !3021, !3026, !3027, !3028, !3031, !3032, !3035, !3038, !3041, !3042, !3074, !3077, !3078, !3157, !3158, !3161, !3162, !3165, !3166, !3167, !3171, !3172, !3173, !3186, !3187, !3188, !3198, !3203, !3204, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !404, file: !405, line: 646, baseType: !408, size: 128)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !409, line: 56, size: 128, elements: !410)
!409 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!410 = !{!411, !412}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !408, file: !409, line: 57, baseType: !398, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !408, file: !409, line: 58, baseType: !355, size: 32, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !404, file: !405, line: 649, baseType: !414, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !415)
!415 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !404, file: !405, line: 657, baseType: !293, size: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !404, file: !405, line: 658, baseType: !418, size: 32, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !419, line: 113, baseType: !420)
!419 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !419, line: 111, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !420, file: !419, line: 112, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !292, line: 168, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 166, size: 32, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !424, file: !292, line: 167, baseType: !294, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !404, file: !405, line: 660, baseType: !7, size: 32, offset: 288)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !404, file: !405, line: 661, baseType: !7, size: 32, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !404, file: !405, line: 684, baseType: !294, size: 32, offset: 352)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !404, file: !405, line: 686, baseType: !294, size: 32, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !404, file: !405, line: 687, baseType: !294, size: 32, offset: 416)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !404, file: !405, line: 688, baseType: !294, size: 32, offset: 448)
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
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !292, line: 178, size: 128, elements: !449)
!449 = !{!450, !452}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !448, file: !292, line: 179, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !448, file: !292, line: 179, baseType: !451, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !439, file: !405, line: 456, baseType: !7, size: 32, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !439, file: !405, line: 458, baseType: !455, size: 64, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !297, line: 23, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !299, line: 31, baseType: !457)
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
!471 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !465, file: !405, line: 494, baseType: !329, size: 16, offset: 288)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !465, file: !405, line: 495, baseType: !329, size: 16, offset: 304)
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
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !297, line: 22, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !299, line: 30, baseType: !487)
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
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !292, line: 27, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !539, line: 96, baseType: !294)
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
!560 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !495, file: !191, line: 123, baseType: !296, size: 8, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !495, file: !191, line: 124, baseType: !296, size: 8, offset: 456)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !495, file: !191, line: 125, baseType: !296, size: 8, offset: 464)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !495, file: !191, line: 126, baseType: !296, size: 8, offset: 472)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !476, file: !405, line: 572, baseType: !495, size: 512, offset: 1216)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !476, file: !405, line: 580, baseType: !566, size: 64, offset: 1728)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !404, file: !405, line: 721, baseType: !7, size: 32, offset: 3584)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !404, file: !405, line: 722, baseType: !294, size: 32, offset: 3616)
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
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !292, line: 216, size: 128, align: 64, elements: !641)
!641 = !{!642, !644}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !640, file: !292, line: 217, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !640, file: !292, line: 218, baseType: !645, size: 64, offset: 64)
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
!689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !658, file: !655, line: 96, baseType: !691, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !693)
!693 = !{!694, !696, !697, !705, !712, !713, !868, !1687, !1688, !1689, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1966, !1974, !1975, !1976, !2294, !2295, !2296, !2297}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !692, file: !208, line: 611, baseType: !695, size: 16)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !292, line: 19, baseType: !329)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !692, file: !208, line: 612, baseType: !329, size: 16, offset: 16)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !692, file: !208, line: 613, baseType: !698, size: 32, offset: 32)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !699, line: 23, baseType: !700)
!699 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !699, line: 21, size: 32, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !700, file: !699, line: 22, baseType: !703, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !292, line: 32, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !539, line: 49, baseType: !7)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !692, file: !208, line: 614, baseType: !706, size: 32, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !699, line: 28, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !699, line: 26, size: 32, elements: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !707, file: !699, line: 27, baseType: !710, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !292, line: 33, baseType: !711)
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
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !730, line: 10, size: 128, elements: !731)
!730 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!731 = !{!732, !736}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !729, file: !730, line: 11, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !293}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !729, file: !730, line: 12, baseType: !293, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !716, file: !208, line: 1867, baseType: !738, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!294, !691, !294}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !716, file: !208, line: 1868, baseType: !742, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!745, !691, !294}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !716, file: !208, line: 1870, baseType: !748, size: 64, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!294, !657, !751, !294}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !716, file: !208, line: 1872, baseType: !753, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!294, !691, !657, !695, !756}
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !292, line: 30, baseType: !757)
!757 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !716, file: !208, line: 1873, baseType: !759, size: 64, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!294, !657, !691, !657}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !716, file: !208, line: 1874, baseType: !763, size: 64, offset: 448)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!294, !691, !657}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !716, file: !208, line: 1875, baseType: !767, size: 64, offset: 512)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!294, !691, !657, !726}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !716, file: !208, line: 1876, baseType: !771, size: 64, offset: 576)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!294, !691, !657, !695}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !716, file: !208, line: 1877, baseType: !763, size: 64, offset: 640)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !716, file: !208, line: 1878, baseType: !776, size: 64, offset: 704)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!294, !691, !657, !695, !779}
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !292, line: 16, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !292, line: 13, baseType: !355)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !716, file: !208, line: 1879, baseType: !782, size: 64, offset: 768)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!294, !691, !657, !691, !657, !7}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !716, file: !208, line: 1881, baseType: !786, size: 64, offset: 832)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!294, !657, !789}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !799, !806, !807, !808}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !790, file: !208, line: 220, baseType: !7, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !790, file: !208, line: 221, baseType: !695, size: 16, offset: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !790, file: !208, line: 222, baseType: !698, size: 32, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !790, file: !208, line: 223, baseType: !706, size: 32, offset: 96)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !790, file: !208, line: 224, baseType: !797, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !292, line: 46, baseType: !798)
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
!812 = !{!294, !813, !815, !355, !7}
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
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !292, line: 104, baseType: !355)
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
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !292, line: 60, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !539, line: 73, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !539, line: 15, baseType: !415)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !292, line: 55, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !539, line: 72, baseType: !847)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !539, line: 16, baseType: !398)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !716, file: !208, line: 1884, baseType: !849, size: 64, offset: 1024)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!294, !691, !852, !455, !455}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !716, file: !208, line: 1886, baseType: !855, size: 64, offset: 1088)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!294, !691, !858, !294}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !716, file: !208, line: 1887, baseType: !860, size: 64, offset: 1152)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!294, !691, !657, !627, !7, !695}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !716, file: !208, line: 1890, baseType: !771, size: 64, offset: 1216)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !716, file: !208, line: 1891, baseType: !865, size: 64, offset: 1280)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!294, !691, !745, !294}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !692, file: !208, line: 623, baseType: !869, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !871)
!871 = !{!872, !873, !874, !875, !876, !877, !926, !1263, !1351, !1434, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1450, !1454, !1455, !1458, !1461, !1464, !1465, !1466, !1507, !1540, !1541, !1542, !1543, !1544, !1545, !1548, !1552, !1561, !1562, !1564, !1565, !1566, !1625, !1626, !1641, !1642, !1643, !1644, !1645, !1649, !1650, !1653, !1668, !1669, !1670, !1681, !1682, !1683, !1684, !1685, !1686}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !870, file: !208, line: 1417, baseType: !448, size: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !870, file: !208, line: 1418, baseType: !779, size: 32, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !870, file: !208, line: 1419, baseType: !300, size: 8, offset: 160)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !870, file: !208, line: 1420, baseType: !398, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !870, file: !208, line: 1421, baseType: !797, size: 64, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !870, file: !208, line: 1422, baseType: !878, size: 64, offset: 320)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !880)
!880 = !{!881, !882, !883, !890, !894, !898, !902, !903, !904, !914, !917, !918, !919, !923, !924, !925}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !879, file: !208, line: 2229, baseType: !726, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !879, file: !208, line: 2230, baseType: !294, size: 32, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !879, file: !208, line: 2238, baseType: !884, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!294, !887}
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
!897 = !{!657, !878, !294, !726, !293}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !879, file: !208, line: 2242, baseType: !899, size: 64, offset: 320)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !869}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !879, file: !208, line: 2243, baseType: !310, size: 64, offset: 384)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !879, file: !208, line: 2244, baseType: !878, size: 64, offset: 448)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !879, file: !208, line: 2245, baseType: !905, size: 64, offset: 512)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !292, line: 182, size: 64, elements: !906)
!906 = !{!907}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !905, file: !292, line: 183, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !292, line: 186, size: 128, elements: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !909, file: !292, line: 187, baseType: !908, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !909, file: !292, line: 187, baseType: !913, size: 64, offset: 64)
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
!943 = !{null, !691, !294}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !929, file: !208, line: 1941, baseType: !945, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!294, !691, !948}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !929, file: !208, line: 1942, baseType: !951, size: 64, offset: 320)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!294, !691}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !929, file: !208, line: 1943, baseType: !936, size: 64, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !929, file: !208, line: 1944, baseType: !899, size: 64, offset: 448)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !929, file: !208, line: 1945, baseType: !957, size: 64, offset: 512)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!294, !869, !294}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !929, file: !208, line: 1946, baseType: !961, size: 64, offset: 576)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!294, !869}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !929, file: !208, line: 1947, baseType: !961, size: 64, offset: 640)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !929, file: !208, line: 1948, baseType: !961, size: 64, offset: 704)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !929, file: !208, line: 1949, baseType: !961, size: 64, offset: 768)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !929, file: !208, line: 1950, baseType: !968, size: 64, offset: 832)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!294, !657, !971}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !929, file: !208, line: 1951, baseType: !974, size: 64, offset: 896)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!294, !869, !977, !751}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !929, file: !208, line: 1952, baseType: !899, size: 64, offset: 960)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !929, file: !208, line: 1954, baseType: !980, size: 64, offset: 1024)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!294, !983, !657}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !605, line: 539, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !929, file: !208, line: 1955, baseType: !980, size: 64, offset: 1088)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !929, file: !208, line: 1956, baseType: !980, size: 64, offset: 1152)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !929, file: !208, line: 1957, baseType: !980, size: 64, offset: 1216)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !929, file: !208, line: 1963, baseType: !989, size: 64, offset: 1280)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!294, !869, !992, !291}
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
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1009, file: !1010, line: 295, baseType: !291, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1009, file: !1010, line: 296, baseType: !293, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1005, file: !208, line: 454, baseType: !291, size: 32, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1005, file: !208, line: 455, baseType: !423, size: 32, offset: 224)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1005, file: !208, line: 460, baseType: !387, size: 128, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1005, file: !208, line: 461, baseType: !1026, size: 256, offset: 384)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1027, line: 35, size: 256, elements: !1028)
!1027 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1028 = !{!1029, !1036, !1037, !1038}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1026, file: !1027, line: 36, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1031, line: 13, baseType: !1032)
!1031 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !292, line: 175, baseType: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 173, size: 64, elements: !1034)
!1034 = !{!1035}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1033, file: !292, line: 174, baseType: !485, size: 64)
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
!1050 = !{!294, !992, !948}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1045, file: !208, line: 369, baseType: !1052, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!294, !627, !992}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1045, file: !208, line: 372, baseType: !1056, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!294, !1004, !948}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1045, file: !208, line: 375, baseType: !1060, size: 64, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!294, !992}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1045, file: !208, line: 381, baseType: !1064, size: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!294, !627, !1004, !451, !7}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1045, file: !208, line: 383, baseType: !1068, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1045, file: !208, line: 385, baseType: !1074, size: 64, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!294, !627, !1004, !797, !7, !7, !1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1045, file: !208, line: 388, baseType: !1080, size: 64, offset: 448)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!294, !627, !1004, !797, !7, !7, !992, !293}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1045, file: !208, line: 393, baseType: !1084, size: 64, offset: 512)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!1087, !1004, !1087}
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !292, line: 125, baseType: !455)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1045, file: !208, line: 394, baseType: !1089, size: 64, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !992, !7, !7}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1045, file: !208, line: 395, baseType: !1093, size: 64, offset: 640)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!294, !992, !291}
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
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1105, file: !208, line: 328, baseType: !293, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1105, file: !208, line: 329, baseType: !294, size: 32, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1105, file: !208, line: 330, baseType: !339, size: 16, offset: 288)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1105, file: !208, line: 331, baseType: !339, size: 16, offset: 304)
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
!1129 = !{!294, !1004, !992, !992, !183}
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
!1141 = !{!294, !992, !398, !398}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1045, file: !208, line: 409, baseType: !1143, size: 64, offset: 1152)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !992, !1146, !1146}
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1045, file: !208, line: 410, baseType: !1148, size: 64, offset: 1216)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!294, !1004, !992}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1045, file: !208, line: 413, baseType: !1152, size: 64, offset: 1280)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!294, !1155, !627, !1157}
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
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1005, file: !208, line: 470, baseType: !293, size: 64, offset: 1152)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1000, file: !587, line: 87, baseType: !398, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1000, file: !587, line: 94, baseType: !398, size: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !587, line: 96, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !587, line: 96, size: 64, elements: !1173)
!1173 = !{!1174}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1172, file: !587, line: 101, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !292, line: 143, baseType: !455)
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
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1184, file: !587, line: 109, baseType: !294, size: 32, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1184, file: !587, line: 110, baseType: !294, size: 32, offset: 96)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1177, file: !587, line: 117, baseType: !1190, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !587, line: 117, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1177, file: !587, line: 119, baseType: !293, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !587, line: 120, baseType: !1194, size: 64, offset: 256)
!1194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1177, file: !587, line: 120, size: 64, elements: !1195)
!1195 = !{!1196, !1197, !1198}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1194, file: !587, line: 121, baseType: !293, size: 64)
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
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1205, file: !587, line: 134, baseType: !300, size: 8, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1205, file: !587, line: 135, baseType: !300, size: 8, offset: 72)
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
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1232, file: !587, line: 162, baseType: !293, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !997, file: !587, line: 176, baseType: !640, size: 128, align: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !587, line: 179, baseType: !1240, size: 32, offset: 384)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !993, file: !587, line: 179, size: 32, elements: !1241)
!1241 = !{!1242, !1243, !1244, !1245}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1240, file: !587, line: 184, baseType: !423, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1240, file: !587, line: 192, baseType: !7, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1240, file: !587, line: 194, baseType: !7, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1240, file: !587, line: 195, baseType: !294, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !993, file: !587, line: 199, baseType: !423, size: 32, offset: 416)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !929, file: !208, line: 1964, baseType: !1248, size: 64, offset: 1344)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!415, !869, !1251}
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1253, line: 12, size: 256, elements: !1254)
!1253 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1254 = !{!1255, !1256, !1257, !1258, !1259}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1252, file: !1253, line: 13, baseType: !291, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1252, file: !1253, line: 16, baseType: !294, size: 32, offset: 32)
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
!1271 = !{!294, !1272}
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
!1323 = !{!1272, !869, !294}
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
!1340 = !{!294, !691, !1341}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1266, file: !202, line: 335, baseType: !1343, size: 64, offset: 576)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!294, !691, !1336}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1266, file: !202, line: 337, baseType: !1347, size: 64, offset: 640)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!294, !869, !1350}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !870, file: !208, line: 1425, baseType: !1352, size: 64, offset: 512)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1354)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !1355)
!1355 = !{!1356, !1360, !1361, !1365, !1366, !1367, !1382, !1405, !1409, !1410, !1433}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1354, file: !202, line: 429, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!294, !869, !294, !294, !813}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1354, file: !202, line: 430, baseType: !957, size: 64, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1354, file: !202, line: 431, baseType: !1362, size: 64, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!294, !869, !7}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1354, file: !202, line: 432, baseType: !1362, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1354, file: !202, line: 433, baseType: !957, size: 64, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1354, file: !202, line: 434, baseType: !1368, size: 64, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!294, !869, !294, !1371}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1372, file: !202, line: 416, baseType: !294, size: 32)
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
!1385 = !{!294, !869, !1290, !1386}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !1388)
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1387, file: !202, line: 344, baseType: !294, size: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1387, file: !202, line: 345, baseType: !455, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1387, file: !202, line: 346, baseType: !455, size: 64, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1387, file: !202, line: 347, baseType: !455, size: 64, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1387, file: !202, line: 348, baseType: !455, size: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1387, file: !202, line: 349, baseType: !455, size: 64, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1387, file: !202, line: 350, baseType: !455, size: 64, offset: 384)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1387, file: !202, line: 351, baseType: !485, size: 64, offset: 448)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1387, file: !202, line: 353, baseType: !485, size: 64, offset: 512)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1387, file: !202, line: 354, baseType: !294, size: 32, offset: 576)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1387, file: !202, line: 355, baseType: !294, size: 32, offset: 608)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1387, file: !202, line: 356, baseType: !455, size: 64, offset: 640)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1387, file: !202, line: 357, baseType: !455, size: 64, offset: 704)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1387, file: !202, line: 358, baseType: !455, size: 64, offset: 768)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1387, file: !202, line: 359, baseType: !485, size: 64, offset: 832)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1387, file: !202, line: 360, baseType: !294, size: 32, offset: 896)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1354, file: !202, line: 436, baseType: !1406, size: 64, offset: 448)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!294, !869, !1350, !1386}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1354, file: !202, line: 438, baseType: !1383, size: 64, offset: 512)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1354, file: !202, line: 439, baseType: !1411, size: 64, offset: 576)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!294, !869, !1414}
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
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !292, line: 126, baseType: !455)
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
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !870, file: !208, line: 1432, baseType: !294, size: 32, offset: 1152)
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
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1479, file: !202, line: 444, baseType: !294, size: 32)
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
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1479, file: !202, line: 446, baseType: !310, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1479, file: !202, line: 447, baseType: !1478, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1475, file: !202, line: 224, baseType: !294, size: 32, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1475, file: !202, line: 226, baseType: !448, size: 128, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1475, file: !202, line: 227, baseType: !398, size: 64, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1475, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1475, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1475, file: !202, line: 230, baseType: !1311, size: 64, offset: 384)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1475, file: !202, line: 231, baseType: !1311, size: 64, offset: 448)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1475, file: !202, line: 232, baseType: !293, size: 64, offset: 512)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1467, file: !202, line: 523, baseType: !1506, size: 192, offset: 2240)
!1506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1483, size: 192, elements: !921)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !870, file: !208, line: 1458, baseType: !1508, size: 2112, offset: 4288)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !1509)
!1509 = !{!1510, !1511, !1518}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1508, file: !208, line: 1411, baseType: !294, size: 32)
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
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1524, file: !1525, line: 18, baseType: !294, size: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1524, file: !1525, line: 19, baseType: !294, size: 32, offset: 32)
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
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !870, file: !208, line: 1465, baseType: !293, size: 64, offset: 6400)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !870, file: !208, line: 1468, baseType: !355, size: 32, offset: 6464)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !870, file: !208, line: 1470, baseType: !804, size: 64, offset: 6528)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !870, file: !208, line: 1471, baseType: !804, size: 64, offset: 6592)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !870, file: !208, line: 1473, baseType: !356, size: 32, offset: 6656)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !870, file: !208, line: 1474, baseType: !1546, size: 64, offset: 6720)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !870, file: !208, line: 1477, baseType: !1549, size: 256, offset: 6784)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 256, elements: !1550)
!1550 = !{!1551}
!1551 = !DISubrange(count: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !870, file: !208, line: 1478, baseType: !1553, size: 128, offset: 7040)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1554, line: 18, baseType: !1555)
!1554 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1554, line: 16, size: 128, elements: !1556)
!1556 = !{!1557}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1555, file: !1554, line: 17, baseType: !1558, size: 128)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 128, elements: !1559)
!1559 = !{!1560}
!1560 = !DISubrange(count: 16)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !870, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !870, file: !208, line: 1481, baseType: !1563, size: 32, offset: 7200)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !292, line: 150, baseType: !7)
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
!1574 = !{!294, !657, !7}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1569, file: !655, line: 137, baseType: !1572, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1569, file: !655, line: 138, baseType: !1577, size: 64, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!294, !1580, !1582}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1569, file: !655, line: 139, baseType: !1584, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!294, !1580, !7, !726, !1587}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1569, file: !655, line: 141, baseType: !1590, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!294, !1580}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1569, file: !655, line: 142, baseType: !1594, size: 64, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!294, !657}
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
!1609 = !{!751, !657, !751, !294}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1569, file: !655, line: 147, baseType: !1611, size: 64, offset: 640)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!653, !1614}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1569, file: !655, line: 148, baseType: !1616, size: 64, offset: 704)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!294, !813, !756}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1569, file: !655, line: 149, baseType: !1620, size: 64, offset: 768)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!657, !657, !1623}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !870, file: !208, line: 1500, baseType: !294, size: 32, offset: 7552)
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
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1627, file: !1253, line: 67, baseType: !294, size: 32, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1627, file: !1253, line: 68, baseType: !7, size: 32, offset: 224)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1627, file: !1253, line: 71, baseType: !448, size: 128, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1627, file: !1253, line: 77, baseType: !1640, size: 64, offset: 384)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !870, file: !208, line: 1505, baseType: !1030, size: 64, offset: 8064)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !870, file: !208, line: 1508, baseType: !1030, size: 64, offset: 8128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !870, file: !208, line: 1511, baseType: !294, size: 32, offset: 8192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !870, file: !208, line: 1514, baseType: !1164, size: 32, offset: 8224)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !870, file: !208, line: 1517, baseType: !1646, size: 64, offset: 8256)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1648, line: 18, flags: DIFlagFwdDecl)
!1648 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !870, file: !208, line: 1518, baseType: !905, size: 64, offset: 8320)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !870, file: !208, line: 1525, baseType: !1651, size: 64, offset: 8384)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !699, line: 18, flags: DIFlagFwdDecl)
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
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !870, file: !208, line: 1542, baseType: !294, size: 32, offset: 9152)
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
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !692, file: !208, line: 649, baseType: !329, size: 16, offset: 896)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !692, file: !208, line: 650, baseType: !296, size: 8, offset: 912)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !692, file: !208, line: 651, baseType: !296, size: 8, offset: 920)
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
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1731, file: !208, line: 1823, baseType: !310, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1731, file: !208, line: 1824, baseType: !1735, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!797, !627, !797, !294}
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
!1752 = !{!294, !1104, !756}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1731, file: !208, line: 1830, baseType: !1754, size: 64, offset: 448)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!294, !627, !1757}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !1759)
!1759 = !{!1760, !1765}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1758, file: !208, line: 1777, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !1762)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!294, !1757, !726, !294, !797, !455, !7}
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
!1792 = !{!294, !627, !593}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1731, file: !208, line: 1836, baseType: !398, size: 64, offset: 832)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1731, file: !208, line: 1837, baseType: !1795, size: 64, offset: 896)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!294, !691, !627}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1731, file: !208, line: 1838, baseType: !1799, size: 64, offset: 960)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!294, !627, !1802}
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !293)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1731, file: !208, line: 1839, baseType: !1795, size: 64, offset: 1024)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1731, file: !208, line: 1840, baseType: !1805, size: 64, offset: 1088)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!294, !627, !797, !797, !294}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1731, file: !208, line: 1841, baseType: !1809, size: 64, offset: 1152)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!294, !294, !627, !294}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1731, file: !208, line: 1842, baseType: !1813, size: 64, offset: 1216)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!294, !627, !294, !1816}
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
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1817, file: !208, line: 1074, baseType: !300, size: 8, offset: 672)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1817, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1817, file: !208, line: 1076, baseType: !294, size: 32, offset: 736)
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
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1835, file: !208, line: 1316, baseType: !294, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1835, file: !208, line: 1317, baseType: !294, size: 32, offset: 32)
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
!1882 = !{!294, !1816, !294}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1868, file: !208, line: 1021, baseType: !1884, size: 64, offset: 256)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!756, !1816}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1868, file: !208, line: 1022, baseType: !1888, size: 64, offset: 320)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!294, !1816, !294, !451}
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
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1915, file: !208, line: 1094, baseType: !294, size: 32, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1915, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1731, file: !208, line: 1843, baseType: !1921, size: 64, offset: 1280)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!842, !627, !992, !294, !845, !1742, !294}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1731, file: !208, line: 1844, baseType: !1925, size: 64, offset: 1344)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!398, !627, !398, !398, !398, !398}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1731, file: !208, line: 1845, baseType: !1929, size: 64, offset: 1408)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!294, !294}
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
!1946 = !{!294, !627, !415, !1947, !1078}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1731, file: !208, line: 1850, baseType: !1949, size: 64, offset: 1728)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!415, !627, !294, !797, !797}
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
!2010 = !{!294, !1995, !1993}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2004, file: !1988, line: 158, baseType: !2012, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2013)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!726, !1995, !1993}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2004, file: !1988, line: 159, baseType: !2017, size: 64, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2018)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!294, !1995, !1993, !2021}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1988, line: 148, size: 20736, elements: !2023)
!2023 = !{!2024, !2026, !2030, !2031, !2035}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2022, file: !1988, line: 149, baseType: !2025, size: 192)
!2025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 192, elements: !921)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2022, file: !1988, line: 150, baseType: !2027, size: 4096, offset: 192)
!2027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 4096, elements: !2028)
!2028 = !{!2029}
!2029 = !DISubrange(count: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2022, file: !1988, line: 151, baseType: !294, size: 32, offset: 4288)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2022, file: !1988, line: 152, baseType: !2032, size: 16384, offset: 4320)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 16384, elements: !2033)
!2033 = !{!2034}
!2034 = !DISubrange(count: 2048)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2022, file: !1988, line: 153, baseType: !294, size: 32, offset: 20704)
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
!2075 = !{!695, !1993, !2054, !294}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2069, file: !2048, line: 88, baseType: !2077, size: 64, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!695, !1993, !2080, !294}
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2048, line: 168, size: 448, elements: !2082)
!2082 = !{!2083, !2084, !2085, !2086, !2090, !2091}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2081, file: !2048, line: 169, baseType: !2055, size: 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2081, file: !2048, line: 170, baseType: !845, size: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2081, file: !2048, line: 171, baseType: !293, size: 64, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2081, file: !2048, line: 172, baseType: !2087, size: 64, offset: 256)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!842, !627, !1993, !2080, !751, !797, !845}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2081, file: !2048, line: 174, baseType: !2087, size: 64, offset: 320)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2081, file: !2048, line: 176, baseType: !2092, size: 64, offset: 384)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!294, !627, !1993, !2080, !593}
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
!2114 = !{!293}
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
!2179 = !{!294, !983, !2158}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2174, file: !889, line: 171, baseType: !2181, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!294, !2139, !726, !695}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2174, file: !889, line: 173, baseType: !2185, size: 64, offset: 128)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!294, !2139}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2174, file: !889, line: 174, baseType: !2189, size: 64, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!294, !2139, !2139, !726}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2174, file: !889, line: 176, baseType: !2193, size: 64, offset: 256)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!294, !983, !2139, !2158}
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
!2213 = !{!294, !2214}
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !889, line: 197, size: 1088, elements: !2216)
!2216 = !{!2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2215, file: !889, line: 199, baseType: !2139, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2215, file: !889, line: 200, baseType: !627, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2215, file: !889, line: 201, baseType: !983, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2215, file: !889, line: 202, baseType: !293, size: 64, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2215, file: !889, line: 205, baseType: !1280, size: 192, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2215, file: !889, line: 206, baseType: !1280, size: 192, offset: 448)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2215, file: !889, line: 207, baseType: !294, size: 32, offset: 640)
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
!2237 = !{!294, !983, !293}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2208, file: !889, line: 238, baseType: !2239, size: 64, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!293, !983, !1742}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2208, file: !889, line: 239, baseType: !2243, size: 64, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!293, !983, !293, !1742}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2208, file: !889, line: 240, baseType: !2247, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{null, !983, !293}
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
!2264 = !{!294, !2214, !593}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2203, file: !889, line: 109, baseType: !2266, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !889, line: 31, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2203, file: !889, line: 110, baseType: !797, size: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2203, file: !889, line: 111, baseType: !2139, size: 64, offset: 192)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2140, file: !889, line: 148, baseType: !293, size: 64, offset: 768)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2140, file: !889, line: 154, baseType: !455, size: 64, offset: 832)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2140, file: !889, line: 156, baseType: !329, size: 16, offset: 896)
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
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1983, file: !1984, line: 16, baseType: !310, size: 64, offset: 512)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1983, file: !1984, line: 17, baseType: !1729, size: 64, offset: 576)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1983, file: !1984, line: 18, baseType: !448, size: 128, offset: 640)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1983, file: !1984, line: 19, baseType: !779, size: 32, offset: 768)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1983, file: !1984, line: 20, baseType: !7, size: 32, offset: 800)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !1977, file: !208, line: 701, baseType: !751, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !1977, file: !208, line: 702, baseType: !7, size: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !692, file: !208, line: 705, baseType: !356, size: 32, offset: 4032)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !692, file: !208, line: 708, baseType: !356, size: 32, offset: 4064)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !692, file: !208, line: 709, baseType: !1546, size: 64, offset: 4096)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !692, file: !208, line: 720, baseType: !293, size: 64, offset: 4160)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !658, file: !655, line: 98, baseType: !2299, size: 256, offset: 448)
!2299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 256, elements: !1550)
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
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2308, file: !2302, line: 32, baseType: !294, size: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !658, file: !655, line: 102, baseType: !1567, size: 64, offset: 768)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !658, file: !655, line: 103, baseType: !869, size: 64, offset: 832)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !658, file: !655, line: 104, baseType: !398, size: 64, offset: 896)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !658, file: !655, line: 105, baseType: !293, size: 64, offset: 960)
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
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2358, file: !217, line: 55, baseType: !294, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2358, file: !217, line: 56, baseType: !2362, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2339, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2339, file: !208, line: 889, baseType: !698, size: 32, offset: 96)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2339, file: !208, line: 889, baseType: !698, size: 32, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2339, file: !208, line: 890, baseType: !294, size: 32, offset: 160)
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
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2371, file: !2372, line: 135, baseType: !300, size: 8, offset: 640)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2371, file: !2372, line: 137, baseType: !2399, size: 64, offset: 704)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2401, line: 189, size: 1664, elements: !2402)
!2401 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2402 = !{!2403, !2404, !2409, !2414, !2415, !2418, !2419, !2424, !2425, !2426, !2427, !2429, !2430, !2431, !2433, !2434, !2472, !2493}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2400, file: !2401, line: 190, baseType: !418, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2400, file: !2401, line: 191, baseType: !2405, size: 32, offset: 32)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2401, line: 28, baseType: !2406)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !292, line: 98, baseType: !2407)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !297, line: 20, baseType: !2408)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !299, line: 26, baseType: !294)
!2409 = !DIDerivedType(tag: DW_TAG_member, scope: !2400, file: !2401, line: 192, baseType: !2410, size: 192, offset: 64)
!2410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2400, file: !2401, line: 192, size: 192, elements: !2411)
!2411 = !{!2412, !2413}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2410, file: !2401, line: 193, baseType: !448, size: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2410, file: !2401, line: 194, baseType: !395, size: 192, align: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2400, file: !2401, line: 199, baseType: !1026, size: 256, offset: 256)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2400, file: !2401, line: 200, baseType: !2416, size: 64, offset: 512)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2401, line: 200, flags: DIFlagFwdDecl)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2400, file: !2401, line: 201, baseType: !293, size: 64, offset: 576)
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
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2400, file: !2401, line: 210, baseType: !329, size: 16, offset: 864)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2400, file: !2401, line: 211, baseType: !329, size: 16, offset: 880)
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
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2445, file: !2401, line: 114, baseType: !339, size: 16)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2445, file: !2401, line: 115, baseType: !2449, size: 48, offset: 16)
!2449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 48, elements: !2450)
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
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2476, file: !2401, line: 129, baseType: !293, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2476, file: !2401, line: 130, baseType: !2480, size: 256)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 256, elements: !2351)
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
!2501 = !{!294, !2399, !2502, !2504, !2399}
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
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2527, file: !2528, line: 18, baseType: !294, size: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2527, file: !2528, line: 19, baseType: !294, size: 32, offset: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2527, file: !2528, line: 20, baseType: !294, size: 32, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2527, file: !2528, line: 21, baseType: !294, size: 32, offset: 96)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2527, file: !2528, line: 22, baseType: !398, size: 64, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2527, file: !2528, line: 23, baseType: !398, size: 64, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2371, file: !2372, line: 146, baseType: !1651, size: 64, offset: 1024)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2371, file: !2372, line: 147, baseType: !2539, size: 64, offset: 1088)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2372, line: 25, size: 64, elements: !2541)
!2541 = !{!2542, !2543, !2544}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2540, file: !2372, line: 26, baseType: !423, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2540, file: !2372, line: 27, baseType: !294, size: 32, offset: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2540, file: !2372, line: 28, baseType: !2545, offset: 64)
!2545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, elements: !2546)
!2546 = !{!2547}
!2547 = !DISubrange(count: 0)
!2548 = !DIDerivedType(tag: DW_TAG_member, scope: !2371, file: !2372, line: 149, baseType: !2549, size: 128, offset: 1152)
!2549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2371, file: !2372, line: 149, size: 128, elements: !2550)
!2550 = !{!2551, !2552}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2549, file: !2372, line: 150, baseType: !294, size: 32)
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
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !628, file: !208, line: 945, baseType: !293, size: 64, offset: 1408)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !628, file: !208, line: 949, baseType: !448, size: 128, offset: 1472)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !628, file: !208, line: 950, baseType: !448, size: 128, offset: 1600)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !628, file: !208, line: 952, baseType: !1004, size: 64, offset: 1728)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !628, file: !208, line: 953, baseType: !1164, size: 32, offset: 1792)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !628, file: !208, line: 954, baseType: !1164, size: 32, offset: 1824)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !594, file: !587, line: 362, baseType: !293, size: 64, offset: 1344)
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
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !590, file: !587, line: 452, baseType: !294, size: 32, offset: 768)
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
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2633, file: !2632, line: 37, baseType: !329, size: 16, offset: 448)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2633, file: !2632, line: 40, baseType: !1280, size: 192, offset: 512)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2633, file: !2632, line: 41, baseType: !293, size: 64, offset: 704)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2633, file: !2632, line: 42, baseType: !2645, size: 64, offset: 768)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2647)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2648, line: 13, size: 896, elements: !2649)
!2648 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2649 = !{!2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2647, file: !2648, line: 14, baseType: !293, size: 64)
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
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2633, file: !2632, line: 50, baseType: !339, size: 16, offset: 864)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2633, file: !2632, line: 51, baseType: !2667, size: 16, offset: 880)
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !297, line: 18, baseType: !2668)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !299, line: 23, baseType: !2432)
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
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !404, file: !405, line: 766, baseType: !294, size: 32, offset: 4352)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !404, file: !405, line: 767, baseType: !294, size: 32, offset: 4384)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !404, file: !405, line: 768, baseType: !294, size: 32, offset: 4416)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !404, file: !405, line: 770, baseType: !294, size: 32, offset: 4448)
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
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2785, file: !2786, line: 37, baseType: !294, size: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2785, file: !2786, line: 38, baseType: !2432, size: 16, offset: 32)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2785, file: !2786, line: 39, baseType: !2432, size: 16, offset: 48)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2781, file: !196, line: 50, baseType: !294, size: 32, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2781, file: !196, line: 51, baseType: !294, size: 32, offset: 96)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2781, file: !196, line: 52, baseType: !398, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2781, file: !196, line: 53, baseType: !398, size: 64, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !404, file: !405, line: 835, baseType: !2796, size: 32, offset: 5120)
!2796 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !292, line: 22, baseType: !2797)
!2797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !539, line: 28, baseType: !294)
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
!2853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 128, elements: !1559)
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
!2868 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2869, line: 35, flags: DIFlagFwdDecl)
!2869 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !404, file: !405, line: 969, baseType: !2871, size: 64, offset: 9216)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2873, line: 82, size: 7296, elements: !2874)
!2873 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2874 = !{!2875, !2876, !2877, !2878, !2879, !2880, !2881, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2910, !2919, !2920, !2922, !2923, !2924, !2927, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2957, !2958, !2965, !2966, !2967, !2968, !2969, !2970}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2872, file: !2873, line: 83, baseType: !418, size: 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2872, file: !2873, line: 84, baseType: !423, size: 32, offset: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2872, file: !2873, line: 85, baseType: !294, size: 32, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2872, file: !2873, line: 86, baseType: !448, size: 128, offset: 128)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2872, file: !2873, line: 88, baseType: !1512, size: 128, offset: 256)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2872, file: !2873, line: 91, baseType: !403, size: 64, offset: 384)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2872, file: !2873, line: 94, baseType: !2882, size: 192, offset: 448)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2883, line: 30, size: 192, elements: !2884)
!2883 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2884 = !{!2885, !2886}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2882, file: !2883, line: 31, baseType: !448, size: 128)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2882, file: !2883, line: 32, baseType: !2887, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2888, line: 25, baseType: !2889)
!2888 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2888, line: 23, size: 64, elements: !2890)
!2890 = !{!2891}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2889, file: !2888, line: 24, baseType: !577, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2872, file: !2873, line: 97, baseType: !905, size: 64, offset: 640)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2872, file: !2873, line: 100, baseType: !294, size: 32, offset: 704)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2872, file: !2873, line: 106, baseType: !294, size: 32, offset: 736)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2872, file: !2873, line: 107, baseType: !403, size: 64, offset: 768)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2872, file: !2873, line: 110, baseType: !294, size: 32, offset: 832)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2872, file: !2873, line: 111, baseType: !7, size: 32, offset: 864)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2872, file: !2873, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2872, file: !2873, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2872, file: !2873, line: 128, baseType: !294, size: 32, offset: 928)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2872, file: !2873, line: 129, baseType: !448, size: 128, offset: 960)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2872, file: !2873, line: 132, baseType: !495, size: 512, offset: 1088)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2872, file: !2873, line: 133, baseType: !503, size: 64, offset: 1600)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2872, file: !2873, line: 140, baseType: !2905, size: 256, offset: 1664)
!2905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2906, size: 256, elements: !2391)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2873, line: 38, size: 128, elements: !2907)
!2907 = !{!2908, !2909}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2906, file: !2873, line: 39, baseType: !455, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2906, file: !2873, line: 40, baseType: !455, size: 64, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2872, file: !2873, line: 146, baseType: !2911, size: 192, offset: 1920)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2873, line: 66, size: 192, elements: !2912)
!2912 = !{!2913}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2911, file: !2873, line: 67, baseType: !2914, size: 192)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2873, line: 47, size: 192, elements: !2915)
!2915 = !{!2916, !2917, !2918}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2914, file: !2873, line: 48, baseType: !1032, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2914, file: !2873, line: 49, baseType: !1032, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2914, file: !2873, line: 50, baseType: !1032, size: 64, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2872, file: !2873, line: 150, baseType: !2832, size: 640, offset: 2112)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2872, file: !2873, line: 153, baseType: !2921, size: 256, offset: 2752)
!2921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2343, size: 256, elements: !2351)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2872, file: !2873, line: 159, baseType: !2343, size: 64, offset: 3008)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2872, file: !2873, line: 162, baseType: !294, size: 32, offset: 3072)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2872, file: !2873, line: 164, baseType: !2925, size: 64, offset: 3136)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2873, line: 164, flags: DIFlagFwdDecl)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2872, file: !2873, line: 175, baseType: !2928, size: 32, offset: 3200)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !542, line: 805, baseType: !2929)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !542, line: 798, size: 32, elements: !2930)
!2930 = !{!2931, !2932}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2929, file: !542, line: 803, baseType: !662, size: 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2929, file: !542, line: 804, baseType: !1013, offset: 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2872, file: !2873, line: 176, baseType: !455, size: 64, offset: 3264)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2872, file: !2873, line: 176, baseType: !455, size: 64, offset: 3328)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2872, file: !2873, line: 176, baseType: !455, size: 64, offset: 3392)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2872, file: !2873, line: 176, baseType: !455, size: 64, offset: 3456)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2872, file: !2873, line: 177, baseType: !455, size: 64, offset: 3520)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2872, file: !2873, line: 178, baseType: !455, size: 64, offset: 3584)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2872, file: !2873, line: 179, baseType: !2820, size: 128, offset: 3648)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2872, file: !2873, line: 180, baseType: !398, size: 64, offset: 3776)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2872, file: !2873, line: 180, baseType: !398, size: 64, offset: 3840)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2872, file: !2873, line: 180, baseType: !398, size: 64, offset: 3904)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2872, file: !2873, line: 180, baseType: !398, size: 64, offset: 3968)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2872, file: !2873, line: 181, baseType: !398, size: 64, offset: 4032)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2872, file: !2873, line: 181, baseType: !398, size: 64, offset: 4096)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2872, file: !2873, line: 181, baseType: !398, size: 64, offset: 4160)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2872, file: !2873, line: 181, baseType: !398, size: 64, offset: 4224)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2872, file: !2873, line: 182, baseType: !398, size: 64, offset: 4288)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2872, file: !2873, line: 182, baseType: !398, size: 64, offset: 4352)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2872, file: !2873, line: 182, baseType: !398, size: 64, offset: 4416)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2872, file: !2873, line: 182, baseType: !398, size: 64, offset: 4480)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2872, file: !2873, line: 183, baseType: !398, size: 64, offset: 4544)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2872, file: !2873, line: 183, baseType: !398, size: 64, offset: 4608)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2872, file: !2873, line: 184, baseType: !2955, offset: 4672)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2956, line: 12, elements: !385)
!2956 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2872, file: !2873, line: 192, baseType: !457, size: 64, offset: 4672)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2872, file: !2873, line: 203, baseType: !2959, size: 2048, offset: 4736)
!2959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2960, size: 2048, elements: !1559)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2961, line: 43, size: 128, elements: !2962)
!2961 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2962 = !{!2963, !2964}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2960, file: !2961, line: 44, baseType: !847, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2960, file: !2961, line: 45, baseType: !847, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2872, file: !2873, line: 220, baseType: !756, size: 8, offset: 6784)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2872, file: !2873, line: 221, baseType: !2432, size: 16, offset: 6800)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2872, file: !2873, line: 222, baseType: !2432, size: 16, offset: 6816)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2872, file: !2873, line: 224, baseType: !585, size: 64, offset: 6848)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2872, file: !2873, line: 227, baseType: !1280, size: 192, offset: 6912)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2872, file: !2873, line: 233, baseType: !1280, size: 192, offset: 7104)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !404, file: !405, line: 970, baseType: !2972, size: 64, offset: 9280)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2873, line: 20, size: 16576, elements: !2974)
!2974 = !{!2975, !2976, !2977, !2978}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2973, file: !2873, line: 21, baseType: !1013)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2973, file: !2873, line: 22, baseType: !418, size: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2973, file: !2873, line: 23, baseType: !1512, size: 128, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2973, file: !2873, line: 24, baseType: !2979, size: 16384, offset: 192)
!2979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2980, size: 16384, elements: !2028)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2883, line: 49, size: 256, elements: !2981)
!2981 = !{!2982}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2980, file: !2883, line: 50, baseType: !2983, size: 256)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2883, line: 35, size: 256, elements: !2984)
!2984 = !{!2985, !2992, !2993, !2999}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2983, file: !2883, line: 37, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2987, line: 19, baseType: !2988)
!2987 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2987, line: 18, baseType: !2990)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{null, !294}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2983, file: !2883, line: 38, baseType: !398, size: 64, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2983, file: !2883, line: 44, baseType: !2994, size: 64, offset: 128)
!2994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2987, line: 22, baseType: !2995)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2987, line: 21, baseType: !2997)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{null}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2983, file: !2883, line: 46, baseType: !2887, size: 64, offset: 192)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !404, file: !405, line: 971, baseType: !2887, size: 64, offset: 9344)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !404, file: !405, line: 972, baseType: !2887, size: 64, offset: 9408)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !404, file: !405, line: 974, baseType: !2887, size: 64, offset: 9472)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !404, file: !405, line: 975, baseType: !2882, size: 192, offset: 9536)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !404, file: !405, line: 976, baseType: !398, size: 64, offset: 9728)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !404, file: !405, line: 977, baseType: !845, size: 64, offset: 9792)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !404, file: !405, line: 978, baseType: !7, size: 32, offset: 9856)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !404, file: !405, line: 980, baseType: !643, size: 64, offset: 9920)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !404, file: !405, line: 989, baseType: !3009, size: 128, offset: 9984)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3010, line: 35, size: 128, elements: !3011)
!3010 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3011 = !{!3012, !3013, !3014}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3009, file: !3010, line: 36, baseType: !294, size: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3009, file: !3010, line: 37, baseType: !423, size: 32, offset: 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3009, file: !3010, line: 38, baseType: !3015, size: 64, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3010, line: 23, flags: DIFlagFwdDecl)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !404, file: !405, line: 992, baseType: !455, size: 64, offset: 10112)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !404, file: !405, line: 993, baseType: !455, size: 64, offset: 10176)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !404, file: !405, line: 996, baseType: !1013, offset: 10240)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !404, file: !405, line: 999, baseType: !377, offset: 10240)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !404, file: !405, line: 1001, baseType: !3022, size: 64, offset: 10240)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !405, line: 636, size: 64, elements: !3023)
!3023 = !{!3024}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3022, file: !405, line: 637, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !404, file: !405, line: 1005, baseType: !387, size: 128, offset: 10304)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !404, file: !405, line: 1007, baseType: !403, size: 64, offset: 10432)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !404, file: !405, line: 1009, baseType: !3029, size: 64, offset: 10496)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !405, line: 1009, flags: DIFlagFwdDecl)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !404, file: !405, line: 1043, baseType: !293, size: 64, offset: 10560)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !404, file: !405, line: 1046, baseType: !3033, size: 64, offset: 10624)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !405, line: 41, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !404, file: !405, line: 1050, baseType: !3036, size: 64, offset: 10688)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !405, line: 42, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !404, file: !405, line: 1054, baseType: !3039, size: 64, offset: 10752)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !405, line: 55, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !404, file: !405, line: 1056, baseType: !1459, size: 64, offset: 10816)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !404, file: !405, line: 1058, baseType: !3043, size: 64, offset: 10880)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3045, line: 99, size: 704, elements: !3046)
!3045 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3046 = !{!3047, !3048, !3049, !3050, !3051, !3052, !3053, !3072, !3073}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3044, file: !3045, line: 100, baseType: !1030, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3044, file: !3045, line: 101, baseType: !423, size: 32, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3044, file: !3045, line: 102, baseType: !423, size: 32, offset: 96)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3044, file: !3045, line: 105, baseType: !1013, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3044, file: !3045, line: 107, baseType: !329, size: 16, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3044, file: !3045, line: 109, baseType: !1009, size: 128, offset: 192)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3044, file: !3045, line: 110, baseType: !3054, size: 64, offset: 320)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3045, line: 73, size: 448, elements: !3056)
!3056 = !{!3057, !3060, !3061, !3066, !3071}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3055, file: !3045, line: 74, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3045, line: 74, flags: DIFlagFwdDecl)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3055, file: !3045, line: 75, baseType: !3043, size: 64, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, scope: !3055, file: !3045, line: 83, baseType: !3062, size: 128, offset: 128)
!3062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3055, file: !3045, line: 83, size: 128, elements: !3063)
!3063 = !{!3064, !3065}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3062, file: !3045, line: 84, baseType: !448, size: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3062, file: !3045, line: 85, baseType: !1190, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, scope: !3055, file: !3045, line: 87, baseType: !3067, size: 128, offset: 256)
!3067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3055, file: !3045, line: 87, size: 128, elements: !3068)
!3068 = !{!3069, !3070}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3067, file: !3045, line: 88, baseType: !909, size: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3067, file: !3045, line: 89, baseType: !640, size: 128, align: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3055, file: !3045, line: 92, baseType: !7, size: 32, offset: 384)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3044, file: !3045, line: 111, baseType: !905, size: 64, offset: 384)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3044, file: !3045, line: 113, baseType: !1671, size: 256, offset: 448)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !404, file: !405, line: 1061, baseType: !3075, size: 64, offset: 10944)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !405, line: 43, flags: DIFlagFwdDecl)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !404, file: !405, line: 1064, baseType: !398, size: 64, offset: 11008)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !404, file: !405, line: 1065, baseType: !3079, size: 64, offset: 11072)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2883, line: 14, baseType: !3081)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2883, line: 12, size: 384, elements: !3082)
!3082 = !{!3083}
!3083 = !DIDerivedType(tag: DW_TAG_member, scope: !3081, file: !2883, line: 13, baseType: !3084, size: 384)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3081, file: !2883, line: 13, size: 384, elements: !3085)
!3085 = !{!3086, !3087, !3088, !3089}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3084, file: !2883, line: 13, baseType: !294, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3084, file: !2883, line: 13, baseType: !294, size: 32, offset: 32)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3084, file: !2883, line: 13, baseType: !294, size: 32, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3084, file: !2883, line: 13, baseType: !3090, size: 256, offset: 128)
!3090 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3091, line: 32, size: 256, elements: !3092)
!3091 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3092 = !{!3093, !3098, !3111, !3117, !3126, !3146, !3151}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3090, file: !3091, line: 37, baseType: !3094, size: 64)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3090, file: !3091, line: 34, size: 64, elements: !3095)
!3095 = !{!3096, !3097}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3094, file: !3091, line: 35, baseType: !2797, size: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3094, file: !3091, line: 36, baseType: !704, size: 32, offset: 32)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3090, file: !3091, line: 45, baseType: !3099, size: 192)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3090, file: !3091, line: 40, size: 192, elements: !3100)
!3100 = !{!3101, !3103, !3104, !3110}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3099, file: !3091, line: 41, baseType: !3102, size: 32)
!3102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !539, line: 95, baseType: !294)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3099, file: !3091, line: 42, baseType: !294, size: 32, offset: 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3099, file: !3091, line: 43, baseType: !3105, size: 64, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3091, line: 11, baseType: !3106)
!3106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3091, line: 8, size: 64, elements: !3107)
!3107 = !{!3108, !3109}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3106, file: !3091, line: 9, baseType: !294, size: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3106, file: !3091, line: 10, baseType: !293, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3099, file: !3091, line: 44, baseType: !294, size: 32, offset: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3090, file: !3091, line: 52, baseType: !3112, size: 128)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3090, file: !3091, line: 48, size: 128, elements: !3113)
!3113 = !{!3114, !3115, !3116}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3112, file: !3091, line: 49, baseType: !2797, size: 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3112, file: !3091, line: 50, baseType: !704, size: 32, offset: 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3112, file: !3091, line: 51, baseType: !3105, size: 64, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3090, file: !3091, line: 61, baseType: !3118, size: 256)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3090, file: !3091, line: 55, size: 256, elements: !3119)
!3119 = !{!3120, !3121, !3122, !3123, !3125}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3118, file: !3091, line: 56, baseType: !2797, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3118, file: !3091, line: 57, baseType: !704, size: 32, offset: 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3118, file: !3091, line: 58, baseType: !294, size: 32, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3118, file: !3091, line: 59, baseType: !3124, size: 64, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !539, line: 94, baseType: !844)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3118, file: !3091, line: 60, baseType: !3124, size: 64, offset: 192)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3090, file: !3091, line: 95, baseType: !3127, size: 256)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3090, file: !3091, line: 64, size: 256, elements: !3128)
!3128 = !{!3129, !3130}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3127, file: !3091, line: 65, baseType: !293, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, scope: !3127, file: !3091, line: 77, baseType: !3131, size: 192, offset: 64)
!3131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3127, file: !3091, line: 77, size: 192, elements: !3132)
!3132 = !{!3133, !3134, !3141}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3131, file: !3091, line: 82, baseType: !2432, size: 16)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3131, file: !3091, line: 88, baseType: !3135, size: 192)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3131, file: !3091, line: 84, size: 192, elements: !3136)
!3136 = !{!3137, !3139, !3140}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3135, file: !3091, line: 85, baseType: !3138, size: 64)
!3138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 64, elements: !533)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3135, file: !3091, line: 86, baseType: !293, size: 64, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3135, file: !3091, line: 87, baseType: !293, size: 64, offset: 128)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3131, file: !3091, line: 93, baseType: !3142, size: 96)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3131, file: !3091, line: 90, size: 96, elements: !3143)
!3143 = !{!3144, !3145}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3142, file: !3091, line: 91, baseType: !3138, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3142, file: !3091, line: 92, baseType: !356, size: 32, offset: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3090, file: !3091, line: 101, baseType: !3147, size: 128)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3090, file: !3091, line: 98, size: 128, elements: !3148)
!3148 = !{!3149, !3150}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3147, file: !3091, line: 99, baseType: !415, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3147, file: !3091, line: 100, baseType: !294, size: 32, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3090, file: !3091, line: 108, baseType: !3152, size: 128)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3090, file: !3091, line: 104, size: 128, elements: !3153)
!3153 = !{!3154, !3155, !3156}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3152, file: !3091, line: 105, baseType: !293, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3152, file: !3091, line: 106, baseType: !294, size: 32, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3152, file: !3091, line: 107, baseType: !7, size: 32, offset: 96)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !404, file: !405, line: 1067, baseType: !2955, offset: 11136)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !404, file: !405, line: 1099, baseType: !3159, size: 64, offset: 11136)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !405, line: 56, flags: DIFlagFwdDecl)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !404, file: !405, line: 1103, baseType: !448, size: 128, offset: 11200)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !404, file: !405, line: 1104, baseType: !3163, size: 64, offset: 11328)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !405, line: 46, flags: DIFlagFwdDecl)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !404, file: !405, line: 1105, baseType: !1280, size: 192, offset: 11392)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !404, file: !405, line: 1106, baseType: !7, size: 32, offset: 11584)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !404, file: !405, line: 1109, baseType: !3168, size: 128, offset: 11648)
!3168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3169, size: 128, elements: !2391)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !405, line: 51, flags: DIFlagFwdDecl)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !404, file: !405, line: 1110, baseType: !1280, size: 192, offset: 11776)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !404, file: !405, line: 1111, baseType: !448, size: 128, offset: 11968)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !404, file: !405, line: 1173, baseType: !3174, size: 64, offset: 12096)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3176, line: 62, size: 256, align: 256, elements: !3177)
!3176 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3177 = !{!3178, !3179, !3180, !3185}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3175, file: !3176, line: 75, baseType: !356, size: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3175, file: !3176, line: 90, baseType: !356, size: 32, offset: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3175, file: !3176, line: 124, baseType: !3181, size: 64, offset: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3175, file: !3176, line: 109, size: 64, elements: !3182)
!3182 = !{!3183, !3184}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3181, file: !3176, line: 110, baseType: !456, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3181, file: !3176, line: 112, baseType: !456, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3175, file: !3176, line: 144, baseType: !356, size: 32, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !404, file: !405, line: 1174, baseType: !355, size: 32, offset: 12160)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !404, file: !405, line: 1179, baseType: !398, size: 64, offset: 12224)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !404, file: !405, line: 1182, baseType: !3189, size: 128, offset: 12288)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2623, line: 76, size: 128, elements: !3190)
!3190 = !{!3191, !3196, !3197}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3189, file: !2623, line: 85, baseType: !3192, size: 64)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3193, line: 7, size: 64, elements: !3194)
!3193 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3194 = !{!3195}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3192, file: !3193, line: 12, baseType: !574, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3189, file: !2623, line: 88, baseType: !756, size: 8, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3189, file: !2623, line: 95, baseType: !756, size: 8, offset: 72)
!3198 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !405, line: 1184, baseType: !3199, size: 128, offset: 12416)
!3199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !404, file: !405, line: 1184, size: 128, elements: !3200)
!3200 = !{!3201, !3202}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3199, file: !405, line: 1185, baseType: !418, size: 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3199, file: !405, line: 1186, baseType: !640, size: 128, align: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !404, file: !405, line: 1190, baseType: !1937, size: 64, offset: 12544)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !404, file: !405, line: 1192, baseType: !3205, size: 128, offset: 12608)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2623, line: 64, size: 128, elements: !3206)
!3206 = !{!3207, !3208, !3209}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3205, file: !2623, line: 65, baseType: !992, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3205, file: !2623, line: 67, baseType: !356, size: 32, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3205, file: !2623, line: 68, baseType: !356, size: 32, offset: 96)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !404, file: !405, line: 1206, baseType: !294, size: 32, offset: 12736)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !404, file: !405, line: 1207, baseType: !294, size: 32, offset: 12768)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !404, file: !405, line: 1209, baseType: !398, size: 64, offset: 12800)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !404, file: !405, line: 1219, baseType: !455, size: 64, offset: 12864)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !404, file: !405, line: 1220, baseType: !455, size: 64, offset: 12928)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !404, file: !405, line: 1317, baseType: !294, size: 32, offset: 12992)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !404, file: !405, line: 1319, baseType: !403, size: 64, offset: 13056)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !404, file: !405, line: 1322, baseType: !3218, size: 64, offset: 13120)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3220, line: 56, size: 512, elements: !3221)
!3220 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3221 = !{!3222, !3223, !3224, !3225, !3226, !3227, !3228, !3230}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3219, file: !3220, line: 57, baseType: !3218, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3219, file: !3220, line: 58, baseType: !293, size: 64, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3219, file: !3220, line: 59, baseType: !398, size: 64, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3219, file: !3220, line: 60, baseType: !398, size: 64, offset: 192)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3219, file: !3220, line: 61, baseType: !1077, size: 64, offset: 256)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3219, file: !3220, line: 62, baseType: !7, size: 32, offset: 320)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3219, file: !3220, line: 63, baseType: !3229, size: 64, offset: 384)
!3229 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !292, line: 153, baseType: !455)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3219, file: !3220, line: 64, baseType: !2119, size: 64, offset: 448)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !404, file: !405, line: 1326, baseType: !418, size: 32, offset: 13184)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !404, file: !405, line: 1342, baseType: !293, size: 64, offset: 13248)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !404, file: !405, line: 1343, baseType: !456, size: 64, offset: 13312)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !404, file: !405, line: 1344, baseType: !455, size: 64, offset: 13376)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !404, file: !405, line: 1345, baseType: !456, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !404, file: !405, line: 1346, baseType: !456, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !404, file: !405, line: 1347, baseType: !456, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !404, file: !405, line: 1348, baseType: !640, size: 128, align: 64, offset: 13504)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !404, file: !405, line: 1358, baseType: !3240, size: 34816, offset: 13824)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3241, line: 485, size: 34816, elements: !3242)
!3241 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3242 = !{!3243, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3272, !3273, !3274, !3275, !3276, !3277, !3280, !3281, !3282}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3240, file: !3241, line: 487, baseType: !3244, size: 192)
!3244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3245, size: 192, elements: !921)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3246, line: 16, size: 64, elements: !3247)
!3246 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3247 = !{!3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3245, file: !3246, line: 17, baseType: !339, size: 16)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3245, file: !3246, line: 18, baseType: !339, size: 16, offset: 16)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3245, file: !3246, line: 19, baseType: !339, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3245, file: !3246, line: 19, baseType: !339, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3245, file: !3246, line: 19, baseType: !339, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3245, file: !3246, line: 19, baseType: !339, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3245, file: !3246, line: 19, baseType: !339, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3245, file: !3246, line: 20, baseType: !339, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3245, file: !3246, line: 20, baseType: !339, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3245, file: !3246, line: 20, baseType: !339, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3245, file: !3246, line: 20, baseType: !339, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3245, file: !3246, line: 20, baseType: !339, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3245, file: !3246, line: 20, baseType: !339, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3240, file: !3241, line: 491, baseType: !398, size: 64, offset: 192)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3240, file: !3241, line: 495, baseType: !329, size: 16, offset: 256)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3240, file: !3241, line: 496, baseType: !329, size: 16, offset: 272)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3240, file: !3241, line: 497, baseType: !329, size: 16, offset: 288)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3240, file: !3241, line: 498, baseType: !329, size: 16, offset: 304)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3240, file: !3241, line: 502, baseType: !398, size: 64, offset: 320)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3240, file: !3241, line: 503, baseType: !398, size: 64, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3240, file: !3241, line: 514, baseType: !3269, size: 256, offset: 448)
!3269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3270, size: 256, elements: !2351)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3241, line: 483, flags: DIFlagFwdDecl)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3240, file: !3241, line: 516, baseType: !398, size: 64, offset: 704)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3240, file: !3241, line: 518, baseType: !398, size: 64, offset: 768)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3240, file: !3241, line: 520, baseType: !398, size: 64, offset: 832)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3240, file: !3241, line: 521, baseType: !398, size: 64, offset: 896)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3240, file: !3241, line: 522, baseType: !398, size: 64, offset: 960)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3240, file: !3241, line: 528, baseType: !3278, size: 64, offset: 1024)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3241, line: 10, flags: DIFlagFwdDecl)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3240, file: !3241, line: 535, baseType: !398, size: 64, offset: 1088)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3240, file: !3241, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3240, file: !3241, line: 540, baseType: !3283, size: 33280, offset: 1536)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3284, line: 317, size: 33280, elements: !3285)
!3284 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3285 = !{!3286, !3287, !3288}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3283, file: !3284, line: 330, baseType: !7, size: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3283, file: !3284, line: 337, baseType: !398, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3283, file: !3284, line: 348, baseType: !3289, size: 32768, offset: 512)
!3289 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3284, line: 304, size: 32768, elements: !3290)
!3290 = !{!3291, !3306, !3343, !3393, !3406}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3289, file: !3284, line: 305, baseType: !3292, size: 896)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3284, line: 12, size: 896, elements: !3293)
!3293 = !{!3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3305}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3292, file: !3284, line: 13, baseType: !355, size: 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3292, file: !3284, line: 14, baseType: !355, size: 32, offset: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3292, file: !3284, line: 15, baseType: !355, size: 32, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3292, file: !3284, line: 16, baseType: !355, size: 32, offset: 96)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3292, file: !3284, line: 17, baseType: !355, size: 32, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3292, file: !3284, line: 18, baseType: !355, size: 32, offset: 160)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3292, file: !3284, line: 19, baseType: !355, size: 32, offset: 192)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3292, file: !3284, line: 22, baseType: !3302, size: 640, offset: 224)
!3302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 640, elements: !3303)
!3303 = !{!3304}
!3304 = !DISubrange(count: 20)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3292, file: !3284, line: 25, baseType: !355, size: 32, offset: 864)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3289, file: !3284, line: 306, baseType: !3307, size: 4096, align: 128)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3284, line: 34, size: 4096, align: 128, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3312, !3313, !3328, !3329, !3330, !3332, !3334, !3338}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3307, file: !3284, line: 35, baseType: !339, size: 16)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3307, file: !3284, line: 36, baseType: !339, size: 16, offset: 16)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3307, file: !3284, line: 37, baseType: !339, size: 16, offset: 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3307, file: !3284, line: 38, baseType: !339, size: 16, offset: 48)
!3313 = !DIDerivedType(tag: DW_TAG_member, scope: !3307, file: !3284, line: 39, baseType: !3314, size: 128, offset: 64)
!3314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3307, file: !3284, line: 39, size: 128, elements: !3315)
!3315 = !{!3316, !3321}
!3316 = !DIDerivedType(tag: DW_TAG_member, scope: !3314, file: !3284, line: 40, baseType: !3317, size: 128)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3314, file: !3284, line: 40, size: 128, elements: !3318)
!3318 = !{!3319, !3320}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3317, file: !3284, line: 41, baseType: !455, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3317, file: !3284, line: 42, baseType: !455, size: 64, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, scope: !3314, file: !3284, line: 44, baseType: !3322, size: 128)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3314, file: !3284, line: 44, size: 128, elements: !3323)
!3323 = !{!3324, !3325, !3326, !3327}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3322, file: !3284, line: 45, baseType: !355, size: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3322, file: !3284, line: 46, baseType: !355, size: 32, offset: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3322, file: !3284, line: 47, baseType: !355, size: 32, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3322, file: !3284, line: 48, baseType: !355, size: 32, offset: 96)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3307, file: !3284, line: 51, baseType: !355, size: 32, offset: 192)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3307, file: !3284, line: 52, baseType: !355, size: 32, offset: 224)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3307, file: !3284, line: 55, baseType: !3331, size: 1024, offset: 256)
!3331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 1024, elements: !1550)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3307, file: !3284, line: 58, baseType: !3333, size: 2048, offset: 1280)
!3333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 2048, elements: !2028)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3307, file: !3284, line: 60, baseType: !3335, size: 384, offset: 3328)
!3335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 384, elements: !3336)
!3336 = !{!3337}
!3337 = !DISubrange(count: 12)
!3338 = !DIDerivedType(tag: DW_TAG_member, scope: !3307, file: !3284, line: 62, baseType: !3339, size: 384, offset: 3712)
!3339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3307, file: !3284, line: 62, size: 384, elements: !3340)
!3340 = !{!3341, !3342}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3339, file: !3284, line: 63, baseType: !3335, size: 384)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3339, file: !3284, line: 64, baseType: !3335, size: 384)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3289, file: !3284, line: 307, baseType: !3344, size: 1088)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3284, line: 79, size: 1088, elements: !3345)
!3345 = !{!3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3392}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3344, file: !3284, line: 80, baseType: !355, size: 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3344, file: !3284, line: 81, baseType: !355, size: 32, offset: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3344, file: !3284, line: 82, baseType: !355, size: 32, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3344, file: !3284, line: 83, baseType: !355, size: 32, offset: 96)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3344, file: !3284, line: 84, baseType: !355, size: 32, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3344, file: !3284, line: 85, baseType: !355, size: 32, offset: 160)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3344, file: !3284, line: 86, baseType: !355, size: 32, offset: 192)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3344, file: !3284, line: 88, baseType: !3302, size: 640, offset: 224)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3344, file: !3284, line: 89, baseType: !296, size: 8, offset: 864)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3344, file: !3284, line: 90, baseType: !296, size: 8, offset: 872)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3344, file: !3284, line: 91, baseType: !296, size: 8, offset: 880)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3344, file: !3284, line: 92, baseType: !296, size: 8, offset: 888)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3344, file: !3284, line: 93, baseType: !296, size: 8, offset: 896)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3344, file: !3284, line: 94, baseType: !296, size: 8, offset: 904)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3344, file: !3284, line: 95, baseType: !3361, size: 64, offset: 960)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3363, line: 11, size: 128, elements: !3364)
!3363 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3364 = !{!3365, !3366}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3362, file: !3363, line: 12, baseType: !415, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3362, file: !3363, line: 13, baseType: !3367, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3369, line: 56, size: 1344, elements: !3370)
!3369 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3370 = !{!3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3368, file: !3369, line: 61, baseType: !398, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3368, file: !3369, line: 62, baseType: !398, size: 64, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3368, file: !3369, line: 63, baseType: !398, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3368, file: !3369, line: 64, baseType: !398, size: 64, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3368, file: !3369, line: 65, baseType: !398, size: 64, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3368, file: !3369, line: 66, baseType: !398, size: 64, offset: 320)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3368, file: !3369, line: 68, baseType: !398, size: 64, offset: 384)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3368, file: !3369, line: 69, baseType: !398, size: 64, offset: 448)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3368, file: !3369, line: 70, baseType: !398, size: 64, offset: 512)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3368, file: !3369, line: 71, baseType: !398, size: 64, offset: 576)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3368, file: !3369, line: 72, baseType: !398, size: 64, offset: 640)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3368, file: !3369, line: 73, baseType: !398, size: 64, offset: 704)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3368, file: !3369, line: 74, baseType: !398, size: 64, offset: 768)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3368, file: !3369, line: 75, baseType: !398, size: 64, offset: 832)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3368, file: !3369, line: 76, baseType: !398, size: 64, offset: 896)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3368, file: !3369, line: 81, baseType: !398, size: 64, offset: 960)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3368, file: !3369, line: 83, baseType: !398, size: 64, offset: 1024)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3368, file: !3369, line: 84, baseType: !398, size: 64, offset: 1088)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3368, file: !3369, line: 85, baseType: !398, size: 64, offset: 1152)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3368, file: !3369, line: 86, baseType: !398, size: 64, offset: 1216)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3368, file: !3369, line: 87, baseType: !398, size: 64, offset: 1280)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3344, file: !3284, line: 96, baseType: !355, size: 32, offset: 1024)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3289, file: !3284, line: 308, baseType: !3394, size: 4608, align: 512)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3284, line: 289, size: 4608, align: 512, elements: !3395)
!3395 = !{!3396, !3397, !3404}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3394, file: !3284, line: 290, baseType: !3307, size: 4096, align: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3394, file: !3284, line: 291, baseType: !3398, size: 512, offset: 4096)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3284, line: 268, size: 512, elements: !3399)
!3399 = !{!3400, !3401, !3402}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3398, file: !3284, line: 269, baseType: !455, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3398, file: !3284, line: 270, baseType: !455, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3398, file: !3284, line: 271, baseType: !3403, size: 384, offset: 128)
!3403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 384, elements: !2450)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3394, file: !3284, line: 292, baseType: !3405, offset: 4608)
!3405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, elements: !2546)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3289, file: !3284, line: 309, baseType: !3407, size: 32768)
!3407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 32768, elements: !3408)
!3408 = !{!3409}
!3409 = !DISubrange(count: 4096)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !306, file: !307, line: 704, baseType: !373, size: 192, offset: 512)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !306, file: !307, line: 706, baseType: !294, size: 32, offset: 704)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !306, file: !307, line: 707, baseType: !294, size: 32, offset: 736)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !306, file: !307, line: 708, baseType: !3414, size: 5568, offset: 768)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !3415)
!3415 = !{!3416, !3417, !3419, !3422, !3423, !3474, !3565, !3566, !3567, !3568, !3569, !3578, !3683, !3696, !3891, !3892, !3896, !3898, !3899, !3900, !3904, !3910, !3911, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3952, !3953, !3954, !3957, !3960, !3961, !3962, !3963}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3414, file: !237, line: 462, baseType: !1987, size: 512)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3414, file: !237, line: 463, baseType: !3418, size: 64, offset: 512)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3414, file: !237, line: 465, baseType: !3420, size: 64, offset: 576)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3414, file: !237, line: 467, baseType: !726, size: 64, offset: 640)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3414, file: !237, line: 468, baseType: !3424, size: 64, offset: 704)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3426)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3427)
!3427 = !{!3428, !3429, !3430, !3434, !3439, !3443}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3426, file: !237, line: 88, baseType: !726, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3426, file: !237, line: 89, baseType: !2066, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3426, file: !237, line: 90, baseType: !3431, size: 64, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!294, !3418, !2021}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3426, file: !237, line: 91, baseType: !3435, size: 64, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!751, !3418, !3438, !2136, !2137}
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3426, file: !237, line: 93, baseType: !3440, size: 64, offset: 256)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{null, !3418}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3426, file: !237, line: 95, baseType: !3444, size: 64, offset: 320)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3446)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3447)
!3447 = !{!3448, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3446, file: !244, line: 279, baseType: !3449, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!294, !3418}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3446, file: !244, line: 280, baseType: !3440, size: 64, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3446, file: !244, line: 281, baseType: !3449, size: 64, offset: 128)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3446, file: !244, line: 282, baseType: !3449, size: 64, offset: 192)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3446, file: !244, line: 283, baseType: !3449, size: 64, offset: 256)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3446, file: !244, line: 284, baseType: !3449, size: 64, offset: 320)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3446, file: !244, line: 285, baseType: !3449, size: 64, offset: 384)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3446, file: !244, line: 286, baseType: !3449, size: 64, offset: 448)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3446, file: !244, line: 287, baseType: !3449, size: 64, offset: 512)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3446, file: !244, line: 288, baseType: !3449, size: 64, offset: 576)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3446, file: !244, line: 289, baseType: !3449, size: 64, offset: 640)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3446, file: !244, line: 290, baseType: !3449, size: 64, offset: 704)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3446, file: !244, line: 291, baseType: !3449, size: 64, offset: 768)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3446, file: !244, line: 292, baseType: !3449, size: 64, offset: 832)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3446, file: !244, line: 293, baseType: !3449, size: 64, offset: 896)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3446, file: !244, line: 294, baseType: !3449, size: 64, offset: 960)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3446, file: !244, line: 295, baseType: !3449, size: 64, offset: 1024)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3446, file: !244, line: 296, baseType: !3449, size: 64, offset: 1088)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3446, file: !244, line: 297, baseType: !3449, size: 64, offset: 1152)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3446, file: !244, line: 298, baseType: !3449, size: 64, offset: 1216)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3446, file: !244, line: 299, baseType: !3449, size: 64, offset: 1280)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3446, file: !244, line: 300, baseType: !3449, size: 64, offset: 1344)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3446, file: !244, line: 301, baseType: !3449, size: 64, offset: 1408)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3414, file: !237, line: 470, baseType: !3475, size: 64, offset: 768)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3477, line: 82, size: 1408, elements: !3478)
!3477 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3478 = !{!3479, !3480, !3481, !3482, !3483, !3484, !3485, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3560, !3563, !3564}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3476, file: !3477, line: 83, baseType: !726, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3476, file: !3477, line: 84, baseType: !726, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3476, file: !3477, line: 85, baseType: !3418, size: 64, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3476, file: !3477, line: 86, baseType: !2066, size: 64, offset: 192)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3476, file: !3477, line: 87, baseType: !2066, size: 64, offset: 256)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3476, file: !3477, line: 88, baseType: !2066, size: 64, offset: 320)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3476, file: !3477, line: 90, baseType: !3486, size: 64, offset: 384)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!294, !3418, !3489}
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3491)
!3491 = !{!3492, !3493, !3494, !3495, !3496, !3497, !3498, !3511, !3524, !3525, !3526, !3527, !3528, !3536, !3537, !3538, !3539, !3540, !3541}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3490, file: !231, line: 96, baseType: !726, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3490, file: !231, line: 97, baseType: !3475, size: 64, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3490, file: !231, line: 99, baseType: !310, size: 64, offset: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3490, file: !231, line: 100, baseType: !726, size: 64, offset: 192)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3490, file: !231, line: 102, baseType: !756, size: 8, offset: 256)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3490, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3490, file: !231, line: 105, baseType: !3499, size: 64, offset: 320)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3501)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3502, line: 262, size: 1600, elements: !3503)
!3502 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3503 = !{!3504, !3505, !3506, !3510}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3501, file: !3502, line: 263, baseType: !1549, size: 256)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3501, file: !3502, line: 264, baseType: !1549, size: 256, offset: 256)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3501, file: !3502, line: 265, baseType: !3507, size: 1024, offset: 512)
!3507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 1024, elements: !3508)
!3508 = !{!3509}
!3509 = !DISubrange(count: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3501, file: !3502, line: 266, baseType: !2119, size: 64, offset: 1536)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3490, file: !231, line: 106, baseType: !3512, size: 64, offset: 384)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3514)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3502, line: 210, size: 256, elements: !3515)
!3515 = !{!3516, !3520, !3522, !3523}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3514, file: !3502, line: 211, baseType: !3517, size: 72)
!3517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 72, elements: !3518)
!3518 = !{!3519}
!3519 = !DISubrange(count: 9)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3514, file: !3502, line: 212, baseType: !3521, size: 64, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3502, line: 14, baseType: !398)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3514, file: !3502, line: 213, baseType: !356, size: 32, offset: 192)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3514, file: !3502, line: 214, baseType: !356, size: 32, offset: 224)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3490, file: !231, line: 108, baseType: !3449, size: 64, offset: 448)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3490, file: !231, line: 109, baseType: !3440, size: 64, offset: 512)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3490, file: !231, line: 110, baseType: !3449, size: 64, offset: 576)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3490, file: !231, line: 111, baseType: !3440, size: 64, offset: 640)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3490, file: !231, line: 112, baseType: !3529, size: 64, offset: 704)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!294, !3418, !3532}
!3532 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3533)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3534)
!3534 = !{!3535}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3533, file: !244, line: 51, baseType: !294, size: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3490, file: !231, line: 113, baseType: !3449, size: 64, offset: 768)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3490, file: !231, line: 114, baseType: !2066, size: 64, offset: 832)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3490, file: !231, line: 115, baseType: !2066, size: 64, offset: 896)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3490, file: !231, line: 117, baseType: !3444, size: 64, offset: 960)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3490, file: !231, line: 118, baseType: !3440, size: 64, offset: 1024)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3490, file: !231, line: 120, baseType: !3542, size: 64, offset: 1088)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3476, file: !3477, line: 91, baseType: !3431, size: 64, offset: 448)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3476, file: !3477, line: 92, baseType: !3449, size: 64, offset: 512)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3476, file: !3477, line: 93, baseType: !3440, size: 64, offset: 576)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3476, file: !3477, line: 94, baseType: !3449, size: 64, offset: 640)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3476, file: !3477, line: 95, baseType: !3440, size: 64, offset: 704)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3476, file: !3477, line: 97, baseType: !3449, size: 64, offset: 768)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3476, file: !3477, line: 98, baseType: !3449, size: 64, offset: 832)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3476, file: !3477, line: 100, baseType: !3529, size: 64, offset: 896)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3476, file: !3477, line: 101, baseType: !3449, size: 64, offset: 960)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3476, file: !3477, line: 103, baseType: !3449, size: 64, offset: 1024)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3476, file: !3477, line: 105, baseType: !3449, size: 64, offset: 1088)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3476, file: !3477, line: 107, baseType: !3444, size: 64, offset: 1152)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3476, file: !3477, line: 109, baseType: !3557, size: 64, offset: 1216)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3559)
!3559 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3477, line: 109, flags: DIFlagFwdDecl)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3476, file: !3477, line: 111, baseType: !3561, size: 64, offset: 1280)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3477, line: 111, flags: DIFlagFwdDecl)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3476, file: !3477, line: 112, baseType: !915, offset: 1344)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3476, file: !3477, line: 114, baseType: !756, size: 8, offset: 1344)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3414, file: !237, line: 471, baseType: !3489, size: 64, offset: 832)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3414, file: !237, line: 473, baseType: !293, size: 64, offset: 896)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3414, file: !237, line: 475, baseType: !293, size: 64, offset: 960)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3414, file: !237, line: 480, baseType: !1280, size: 192, offset: 1024)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3414, file: !237, line: 484, baseType: !3570, size: 576, offset: 1216)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3571)
!3571 = !{!3572, !3573, !3574, !3575, !3576, !3577}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3570, file: !237, line: 362, baseType: !448, size: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3570, file: !237, line: 363, baseType: !448, size: 128, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3570, file: !237, line: 364, baseType: !448, size: 128, offset: 256)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3570, file: !237, line: 365, baseType: !448, size: 128, offset: 384)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3570, file: !237, line: 366, baseType: !756, size: 8, offset: 512)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3570, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3414, file: !237, line: 485, baseType: !3579, size: 2304, offset: 1792)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3580)
!3580 = !{!3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3676, !3680}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3579, file: !244, line: 566, baseType: !3532, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3579, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3579, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3579, file: !244, line: 569, baseType: !756, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3579, file: !244, line: 570, baseType: !756, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3579, file: !244, line: 571, baseType: !756, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3579, file: !244, line: 572, baseType: !756, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3579, file: !244, line: 573, baseType: !756, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3579, file: !244, line: 574, baseType: !756, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3579, file: !244, line: 575, baseType: !756, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3579, file: !244, line: 576, baseType: !756, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3579, file: !244, line: 577, baseType: !355, size: 32, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3579, file: !244, line: 578, baseType: !1013, offset: 96)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3579, file: !244, line: 580, baseType: !448, size: 128, offset: 128)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3579, file: !244, line: 581, baseType: !2682, size: 192, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3579, file: !244, line: 582, baseType: !3597, size: 64, offset: 448)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3599, line: 43, size: 1472, elements: !3600)
!3599 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3600 = !{!3601, !3602, !3603, !3604, !3605, !3608, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3598, file: !3599, line: 44, baseType: !726, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3598, file: !3599, line: 45, baseType: !294, size: 32, offset: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3598, file: !3599, line: 46, baseType: !448, size: 128, offset: 128)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3598, file: !3599, line: 47, baseType: !1013, offset: 256)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3598, file: !3599, line: 48, baseType: !3606, size: 64, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3598, file: !3599, line: 49, baseType: !3609, size: 320, offset: 320)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3610, line: 11, size: 320, elements: !3611)
!3610 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3611 = !{!3612, !3613, !3614, !3619}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3609, file: !3610, line: 16, baseType: !909, size: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3609, file: !3610, line: 17, baseType: !398, size: 64, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3609, file: !3610, line: 18, baseType: !3615, size: 64, offset: 192)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{null, !3618}
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3609, file: !3610, line: 19, baseType: !355, size: 32, offset: 256)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3598, file: !3599, line: 50, baseType: !398, size: 64, offset: 640)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3598, file: !3599, line: 51, baseType: !503, size: 64, offset: 704)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3598, file: !3599, line: 52, baseType: !503, size: 64, offset: 768)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3598, file: !3599, line: 53, baseType: !503, size: 64, offset: 832)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3598, file: !3599, line: 54, baseType: !503, size: 64, offset: 896)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3598, file: !3599, line: 55, baseType: !503, size: 64, offset: 960)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3598, file: !3599, line: 56, baseType: !398, size: 64, offset: 1024)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3598, file: !3599, line: 57, baseType: !398, size: 64, offset: 1088)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3598, file: !3599, line: 58, baseType: !398, size: 64, offset: 1152)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3598, file: !3599, line: 59, baseType: !398, size: 64, offset: 1216)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3598, file: !3599, line: 60, baseType: !398, size: 64, offset: 1280)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3598, file: !3599, line: 61, baseType: !3418, size: 64, offset: 1344)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3598, file: !3599, line: 62, baseType: !756, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3598, file: !3599, line: 63, baseType: !756, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3579, file: !244, line: 583, baseType: !756, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3579, file: !244, line: 584, baseType: !756, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3579, file: !244, line: 585, baseType: !756, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3579, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3579, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3579, file: !244, line: 592, baseType: !495, size: 512, offset: 576)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3579, file: !244, line: 593, baseType: !455, size: 64, offset: 1088)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3579, file: !244, line: 594, baseType: !1671, size: 256, offset: 1152)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3579, file: !244, line: 595, baseType: !1512, size: 128, offset: 1408)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3579, file: !244, line: 596, baseType: !3606, size: 64, offset: 1536)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3579, file: !244, line: 597, baseType: !423, size: 32, offset: 1600)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3579, file: !244, line: 598, baseType: !423, size: 32, offset: 1632)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3579, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3579, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3579, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3579, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3579, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3579, file: !244, line: 604, baseType: !756, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3579, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3579, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3579, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3579, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3579, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3579, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3579, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3579, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3579, file: !244, line: 613, baseType: !294, size: 32, offset: 1792)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3579, file: !244, line: 614, baseType: !294, size: 32, offset: 1824)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3579, file: !244, line: 615, baseType: !455, size: 64, offset: 1856)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3579, file: !244, line: 616, baseType: !455, size: 64, offset: 1920)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3579, file: !244, line: 617, baseType: !455, size: 64, offset: 1984)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3579, file: !244, line: 618, baseType: !455, size: 64, offset: 2048)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3579, file: !244, line: 620, baseType: !3667, size: 64, offset: 2112)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3669)
!3669 = !{!3670, !3671, !3672, !3673}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3668, file: !244, line: 537, baseType: !1013)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3668, file: !244, line: 538, baseType: !7, size: 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3668, file: !244, line: 540, baseType: !448, size: 128, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3668, file: !244, line: 543, baseType: !3674, size: 64, offset: 192)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3579, file: !244, line: 621, baseType: !3677, size: 64, offset: 2176)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{null, !3418, !2407}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3579, file: !244, line: 622, baseType: !3681, size: 64, offset: 2240)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3414, file: !237, line: 486, baseType: !3684, size: 64, offset: 4096)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3686)
!3686 = !{!3687, !3688, !3689, !3693, !3694, !3695}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3685, file: !244, line: 643, baseType: !3446, size: 1472)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3685, file: !244, line: 644, baseType: !3449, size: 64, offset: 1472)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3685, file: !244, line: 645, baseType: !3690, size: 64, offset: 1536)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{null, !3418, !756}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3685, file: !244, line: 646, baseType: !3449, size: 64, offset: 1600)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3685, file: !244, line: 647, baseType: !3440, size: 64, offset: 1664)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3685, file: !244, line: 648, baseType: !3440, size: 64, offset: 1728)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3414, file: !237, line: 493, baseType: !3697, size: 64, offset: 4160)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3699)
!3699 = !{!3700, !3701, !3702, !3875, !3876, !3877, !3878, !3879, !3880, !3883, !3884, !3885, !3886, !3887, !3888, !3889}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3698, file: !258, line: 163, baseType: !448, size: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3698, file: !258, line: 164, baseType: !726, size: 64, offset: 128)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3698, file: !258, line: 165, baseType: !3703, size: 64, offset: 192)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3705)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3706)
!3706 = !{!3707, !3825, !3836, !3841, !3845, !3852, !3856, !3860, !3867, !3871}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3705, file: !258, line: 106, baseType: !3708, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!294, !3697, !3711, !257}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3713, line: 51, size: 1344, elements: !3714)
!3713 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3714 = !{!3715, !3716, !3718, !3719, !3809, !3818, !3819, !3820, !3821, !3822, !3823, !3824}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3712, file: !3713, line: 52, baseType: !726, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3712, file: !3713, line: 53, baseType: !3717, size: 32, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3713, line: 28, baseType: !355)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3712, file: !3713, line: 54, baseType: !726, size: 64, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3712, file: !3713, line: 55, baseType: !3720, size: 192, offset: 192)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3721, line: 17, size: 192, elements: !3722)
!3721 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3722 = !{!3723, !3725, !3808}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3720, file: !3721, line: 18, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3720, file: !3721, line: 19, baseType: !3726, size: 64, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3728)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3721, line: 110, size: 1152, elements: !3729)
!3729 = !{!3730, !3734, !3738, !3744, !3750, !3754, !3758, !3763, !3767, !3768, !3772, !3776, !3780, !3791, !3792, !3793, !3794, !3804}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3728, file: !3721, line: 111, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!3724, !3724}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3728, file: !3721, line: 112, baseType: !3735, size: 64, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{null, !3724}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3728, file: !3721, line: 113, baseType: !3739, size: 64, offset: 128)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!756, !3742}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3720)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3728, file: !3721, line: 114, baseType: !3745, size: 64, offset: 192)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!2119, !3742, !3748}
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3414)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3728, file: !3721, line: 116, baseType: !3751, size: 64, offset: 256)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!756, !3742, !726}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3728, file: !3721, line: 118, baseType: !3755, size: 64, offset: 320)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!294, !3742, !726, !7, !293, !845}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3728, file: !3721, line: 123, baseType: !3759, size: 64, offset: 384)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!294, !3742, !726, !3762, !845}
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3728, file: !3721, line: 126, baseType: !3764, size: 64, offset: 448)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!726, !3742}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3728, file: !3721, line: 127, baseType: !3764, size: 64, offset: 512)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3728, file: !3721, line: 128, baseType: !3769, size: 64, offset: 576)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!3724, !3742}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3728, file: !3721, line: 130, baseType: !3773, size: 64, offset: 640)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!3724, !3742, !3724}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3728, file: !3721, line: 133, baseType: !3777, size: 64, offset: 704)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!3724, !3742, !726}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3728, file: !3721, line: 135, baseType: !3781, size: 64, offset: 768)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!294, !3742, !726, !726, !7, !7, !3784}
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3721, line: 43, size: 640, elements: !3786)
!3786 = !{!3787, !3788, !3789}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3785, file: !3721, line: 44, baseType: !3724, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3785, file: !3721, line: 45, baseType: !7, size: 32, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3785, file: !3721, line: 46, baseType: !3790, size: 512, offset: 128)
!3790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 512, elements: !533)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3728, file: !3721, line: 140, baseType: !3773, size: 64, offset: 832)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3728, file: !3721, line: 143, baseType: !3769, size: 64, offset: 896)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3728, file: !3721, line: 145, baseType: !3731, size: 64, offset: 960)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3728, file: !3721, line: 146, baseType: !3795, size: 64, offset: 1024)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!294, !3742, !3798}
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3721, line: 29, size: 128, elements: !3800)
!3800 = !{!3801, !3802, !3803}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3799, file: !3721, line: 30, baseType: !7, size: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3799, file: !3721, line: 31, baseType: !7, size: 32, offset: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3799, file: !3721, line: 32, baseType: !3742, size: 64, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3728, file: !3721, line: 148, baseType: !3805, size: 64, offset: 1088)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!294, !3742, !3418}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3720, file: !3721, line: 20, baseType: !3418, size: 64, offset: 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3712, file: !3713, line: 57, baseType: !3810, size: 64, offset: 384)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3713, line: 31, size: 704, elements: !3812)
!3812 = !{!3813, !3814, !3815, !3816, !3817}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3811, file: !3713, line: 32, baseType: !751, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3811, file: !3713, line: 33, baseType: !294, size: 32, offset: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3811, file: !3713, line: 34, baseType: !293, size: 64, offset: 128)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3811, file: !3713, line: 35, baseType: !3810, size: 64, offset: 192)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3811, file: !3713, line: 43, baseType: !2081, size: 448, offset: 256)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3712, file: !3713, line: 58, baseType: !3810, size: 64, offset: 448)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3712, file: !3713, line: 59, baseType: !3711, size: 64, offset: 512)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3712, file: !3713, line: 60, baseType: !3711, size: 64, offset: 576)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3712, file: !3713, line: 61, baseType: !3711, size: 64, offset: 640)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3712, file: !3713, line: 63, baseType: !1987, size: 512, offset: 704)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3712, file: !3713, line: 65, baseType: !398, size: 64, offset: 1216)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3712, file: !3713, line: 66, baseType: !293, size: 64, offset: 1280)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3705, file: !258, line: 108, baseType: !3826, size: 64, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!294, !3697, !3829, !257}
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !3831)
!3831 = !{!3832, !3833, !3834}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3830, file: !258, line: 64, baseType: !3724, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3830, file: !258, line: 65, baseType: !294, size: 32, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3830, file: !258, line: 66, baseType: !3835, size: 512, offset: 96)
!3835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 512, elements: !1559)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3705, file: !258, line: 110, baseType: !3837, size: 64, offset: 128)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!294, !3697, !7, !3840}
!3840 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !292, line: 164, baseType: !398)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3705, file: !258, line: 111, baseType: !3842, size: 64, offset: 192)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{null, !3697, !7}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3705, file: !258, line: 112, baseType: !3846, size: 64, offset: 256)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!294, !3697, !3711, !3849, !7, !3851, !1532}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3705, file: !258, line: 117, baseType: !3853, size: 64, offset: 320)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!294, !3697, !7, !7, !293}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3705, file: !258, line: 119, baseType: !3857, size: 64, offset: 384)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{null, !3697, !7, !7}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3705, file: !258, line: 121, baseType: !3861, size: 64, offset: 448)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!294, !3697, !3864, !756}
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3866, line: 11, flags: DIFlagFwdDecl)
!3866 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3705, file: !258, line: 122, baseType: !3868, size: 64, offset: 512)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{null, !3697, !3864}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3705, file: !258, line: 123, baseType: !3872, size: 64, offset: 576)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!294, !3697, !3829, !3851, !1532}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3698, file: !258, line: 166, baseType: !293, size: 64, offset: 256)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3698, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3698, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3698, file: !258, line: 171, baseType: !3724, size: 64, offset: 384)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3698, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3698, file: !258, line: 173, baseType: !3881, size: 64, offset: 512)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3698, file: !258, line: 175, baseType: !3697, size: 64, offset: 576)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3698, file: !258, line: 182, baseType: !3840, size: 64, offset: 640)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3698, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3698, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3698, file: !258, line: 185, baseType: !1009, size: 128, offset: 768)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3698, file: !258, line: 186, baseType: !1280, size: 192, offset: 896)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3698, file: !258, line: 187, baseType: !3890, offset: 1088)
!3890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2710)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3414, file: !237, line: 499, baseType: !448, size: 128, offset: 4224)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3414, file: !237, line: 502, baseType: !3893, size: 64, offset: 4352)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3895)
!3895 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3414, file: !237, line: 504, baseType: !3897, size: 64, offset: 4416)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3414, file: !237, line: 505, baseType: !455, size: 64, offset: 4480)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3414, file: !237, line: 510, baseType: !455, size: 64, offset: 4544)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3414, file: !237, line: 511, baseType: !3901, size: 64, offset: 4608)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3903)
!3903 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3414, file: !237, line: 513, baseType: !3905, size: 64, offset: 4672)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !3907)
!3907 = !{!3908, !3909}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3906, file: !237, line: 293, baseType: !7, size: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3906, file: !237, line: 294, baseType: !398, size: 64, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3414, file: !237, line: 515, baseType: !448, size: 128, offset: 4736)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3414, file: !237, line: 526, baseType: !3912, offset: 4864)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3913, line: 5, elements: !385)
!3913 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3414, file: !237, line: 528, baseType: !3711, size: 64, offset: 4864)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3414, file: !237, line: 529, baseType: !3724, size: 64, offset: 4928)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3414, file: !237, line: 534, baseType: !779, size: 32, offset: 4992)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3414, file: !237, line: 535, baseType: !355, size: 32, offset: 5024)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3414, file: !237, line: 537, baseType: !1013, offset: 5056)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3414, file: !237, line: 538, baseType: !448, size: 128, offset: 5056)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3414, file: !237, line: 540, baseType: !3921, size: 64, offset: 5184)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3923, line: 54, size: 960, elements: !3924)
!3923 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3924 = !{!3925, !3926, !3927, !3928, !3929, !3930, !3931, !3935, !3939, !3940, !3941, !3942, !3946, !3950, !3951}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3922, file: !3923, line: 55, baseType: !726, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3922, file: !3923, line: 56, baseType: !310, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3922, file: !3923, line: 58, baseType: !2066, size: 64, offset: 128)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3922, file: !3923, line: 59, baseType: !2066, size: 64, offset: 192)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3922, file: !3923, line: 60, baseType: !1993, size: 64, offset: 256)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3922, file: !3923, line: 62, baseType: !3431, size: 64, offset: 320)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3922, file: !3923, line: 63, baseType: !3932, size: 64, offset: 384)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!751, !3418, !3438}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3922, file: !3923, line: 65, baseType: !3936, size: 64, offset: 448)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{null, !3921}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3922, file: !3923, line: 66, baseType: !3440, size: 64, offset: 512)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3922, file: !3923, line: 68, baseType: !3449, size: 64, offset: 576)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3922, file: !3923, line: 70, baseType: !2102, size: 64, offset: 640)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3922, file: !3923, line: 71, baseType: !3943, size: 64, offset: 704)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!2119, !3418}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3922, file: !3923, line: 73, baseType: !3947, size: 64, offset: 768)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !3418, !2136, !2137}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3922, file: !3923, line: 75, baseType: !3444, size: 64, offset: 832)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3922, file: !3923, line: 77, baseType: !3561, size: 64, offset: 896)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3414, file: !237, line: 541, baseType: !2066, size: 64, offset: 5248)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3414, file: !237, line: 543, baseType: !3440, size: 64, offset: 5312)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3414, file: !237, line: 544, baseType: !3955, size: 64, offset: 5376)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3414, file: !237, line: 545, baseType: !3958, size: 64, offset: 5440)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3414, file: !237, line: 547, baseType: !756, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3414, file: !237, line: 548, baseType: !756, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3414, file: !237, line: 549, baseType: !756, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3414, file: !237, line: 550, baseType: !756, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !306, file: !307, line: 709, baseType: !398, size: 64, offset: 6336)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !306, file: !307, line: 713, baseType: !294, size: 32, offset: 6400)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !307, line: 714, baseType: !3967, size: 384, offset: 6432)
!3967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 384, elements: !3968)
!3968 = !{!3969}
!3969 = !DISubrange(count: 48)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !306, file: !307, line: 715, baseType: !2682, size: 192, offset: 6848)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !306, file: !307, line: 717, baseType: !1280, size: 192, offset: 7040)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !306, file: !307, line: 718, baseType: !448, size: 128, offset: 7232)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !306, file: !307, line: 720, baseType: !3974, size: 64, offset: 7360)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !307, line: 618, size: 832, elements: !3976)
!3976 = !{!3977, !3981, !3982, !3986, !3987, !3988, !3989, !3993, !3994, !3997, !3998, !4001, !4004}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !3975, file: !307, line: 619, baseType: !3978, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!294, !305}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !3975, file: !307, line: 621, baseType: !3978, size: 64, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !3975, file: !307, line: 622, baseType: !3983, size: 64, offset: 128)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{null, !305, !294}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !3975, file: !307, line: 623, baseType: !3978, size: 64, offset: 192)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !3975, file: !307, line: 624, baseType: !3983, size: 64, offset: 256)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !3975, file: !307, line: 625, baseType: !3978, size: 64, offset: 320)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !3975, file: !307, line: 627, baseType: !3990, size: 64, offset: 384)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{null, !305}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !3975, file: !307, line: 628, baseType: !3990, size: 64, offset: 448)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !3975, file: !307, line: 631, baseType: !3995, size: 64, offset: 512)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !307, line: 631, flags: DIFlagFwdDecl)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !3975, file: !307, line: 632, baseType: !3995, size: 64, offset: 576)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !3975, file: !307, line: 633, baseType: !3999, size: 64, offset: 640)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !307, line: 633, flags: DIFlagFwdDecl)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !3975, file: !307, line: 634, baseType: !4002, size: 64, offset: 704)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !307, line: 634, flags: DIFlagFwdDecl)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !3975, file: !307, line: 635, baseType: !4002, size: 64, offset: 768)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !306, file: !307, line: 721, baseType: !4006, size: 64, offset: 7424)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4008)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !307, line: 664, size: 192, elements: !4009)
!4009 = !{!4010, !4011, !4012, !4013, !4014, !4015}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4008, file: !307, line: 665, baseType: !455, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4008, file: !307, line: 666, baseType: !294, size: 32, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4008, file: !307, line: 667, baseType: !339, size: 16, offset: 96)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4008, file: !307, line: 668, baseType: !339, size: 16, offset: 112)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4008, file: !307, line: 669, baseType: !339, size: 16, offset: 128)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4008, file: !307, line: 670, baseType: !339, size: 16, offset: 144)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !306, file: !307, line: 723, baseType: !3697, size: 64, offset: 7488)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !302, file: !3, line: 45, baseType: !4018, size: 64, offset: 64)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4020)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "or51211_config", file: !4021, line: 14, size: 320, elements: !4022)
!4021 = !DIFile(filename: "drivers/media/dvb-frontends/or51211.h", directory: "/home/lizy2001/genbc/linux")
!4022 = !{!4023, !4024, !4356, !4360, !4361}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4020, file: !4021, line: 17, baseType: !296, size: 8)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "request_firmware", scope: !4020, file: !4021, line: 20, baseType: !4025, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!294, !4028, !4347, !751}
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !4030)
!4030 = !{!4031, !4032, !4301, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4345, !4346}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4029, file: !51, line: 687, baseType: !2278, size: 32)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4029, file: !51, line: 688, baseType: !4033, size: 6016, offset: 64)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !4034)
!4034 = !{!4035, !4047, !4049, !4053, !4054, !4055, !4059, !4060, !4066, !4071, !4075, !4076, !4086, !4163, !4167, !4171, !4176, !4177, !4178, !4179, !4189, !4200, !4204, !4208, !4212, !4216, !4220, !4224, !4225, !4226, !4230, !4283}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4033, file: !51, line: 436, baseType: !4036, size: 1280)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !4037)
!4037 = !{!4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4036, file: !51, line: 339, baseType: !3507, size: 1024)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4036, file: !51, line: 340, baseType: !355, size: 32, offset: 1024)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4036, file: !51, line: 341, baseType: !355, size: 32, offset: 1056)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !4036, file: !51, line: 342, baseType: !355, size: 32, offset: 1088)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !4036, file: !51, line: 343, baseType: !355, size: 32, offset: 1120)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !4036, file: !51, line: 344, baseType: !355, size: 32, offset: 1152)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !4036, file: !51, line: 345, baseType: !355, size: 32, offset: 1184)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !4036, file: !51, line: 346, baseType: !355, size: 32, offset: 1216)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !4036, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !4033, file: !51, line: 438, baseType: !4048, size: 64, offset: 1280)
!4048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 64, elements: !533)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4033, file: !51, line: 440, baseType: !4050, size: 64, offset: 1344)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{null, !4028}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4033, file: !51, line: 441, baseType: !4050, size: 64, offset: 1408)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !4033, file: !51, line: 442, baseType: !4050, size: 64, offset: 1472)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4033, file: !51, line: 444, baseType: !4056, size: 64, offset: 1536)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!294, !4028}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4033, file: !51, line: 445, baseType: !4056, size: 64, offset: 1600)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4033, file: !51, line: 447, baseType: !4061, size: 64, offset: 1664)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!294, !4028, !4064, !294}
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !4033, file: !51, line: 450, baseType: !4067, size: 64, offset: 1728)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!294, !4028, !756, !7, !1532, !4070}
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !4033, file: !51, line: 457, baseType: !4072, size: 64, offset: 1792)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!50, !4028}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !4033, file: !51, line: 460, baseType: !4056, size: 64, offset: 1856)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !4033, file: !51, line: 461, baseType: !4077, size: 64, offset: 1920)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!294, !4028, !4080}
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !4082)
!4082 = !{!4083, !4084, !4085}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4081, file: !51, line: 70, baseType: !294, size: 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4081, file: !51, line: 71, baseType: !294, size: 32, offset: 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4081, file: !51, line: 72, baseType: !294, size: 32, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !4033, file: !51, line: 463, baseType: !4087, size: 64, offset: 1984)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!294, !4028, !4090}
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !4092)
!4092 = !{!4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4156, !4157, !4158, !4159, !4160, !4161, !4162}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4091, file: !51, line: 587, baseType: !355, size: 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4091, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4091, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4091, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4091, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4091, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4091, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4091, file: !51, line: 595, baseType: !355, size: 32, offset: 224)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4091, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4091, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4091, file: !51, line: 598, baseType: !355, size: 32, offset: 320)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4091, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4091, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4091, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4091, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4091, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4091, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4091, file: !51, line: 610, baseType: !296, size: 8, offset: 544)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4091, file: !51, line: 611, baseType: !296, size: 8, offset: 552)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4091, file: !51, line: 612, baseType: !296, size: 8, offset: 560)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4091, file: !51, line: 613, baseType: !355, size: 32, offset: 576)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4091, file: !51, line: 614, baseType: !355, size: 32, offset: 608)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4091, file: !51, line: 615, baseType: !296, size: 8, offset: 640)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4091, file: !51, line: 621, baseType: !4117, size: 384, offset: 672)
!4117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4118, size: 384, elements: !921)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4091, file: !51, line: 616, size: 128, elements: !4119)
!4119 = !{!4120, !4121, !4122, !4123}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4118, file: !51, line: 617, baseType: !296, size: 8)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4118, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4118, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4118, file: !51, line: 620, baseType: !296, size: 8, offset: 96)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4091, file: !51, line: 624, baseType: !355, size: 32, offset: 1056)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4091, file: !51, line: 627, baseType: !355, size: 32, offset: 1088)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4091, file: !51, line: 630, baseType: !296, size: 8, offset: 1120)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4091, file: !51, line: 631, baseType: !296, size: 8, offset: 1128)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4091, file: !51, line: 632, baseType: !296, size: 8, offset: 1136)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4091, file: !51, line: 633, baseType: !296, size: 8, offset: 1144)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4091, file: !51, line: 634, baseType: !296, size: 8, offset: 1152)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4091, file: !51, line: 635, baseType: !296, size: 8, offset: 1160)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4091, file: !51, line: 637, baseType: !296, size: 8, offset: 1168)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4091, file: !51, line: 638, baseType: !296, size: 8, offset: 1176)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4091, file: !51, line: 639, baseType: !296, size: 8, offset: 1184)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4091, file: !51, line: 640, baseType: !296, size: 8, offset: 1192)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4091, file: !51, line: 641, baseType: !296, size: 8, offset: 1200)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4091, file: !51, line: 642, baseType: !296, size: 8, offset: 1208)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4091, file: !51, line: 643, baseType: !296, size: 8, offset: 1216)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4091, file: !51, line: 644, baseType: !296, size: 8, offset: 1224)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4091, file: !51, line: 645, baseType: !296, size: 8, offset: 1232)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4091, file: !51, line: 647, baseType: !355, size: 32, offset: 1248)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4091, file: !51, line: 650, baseType: !4143, size: 296, offset: 1280)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !4144)
!4144 = !{!4145, !4146}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4143, file: !6, line: 826, baseType: !298, size: 8)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4143, file: !6, line: 827, baseType: !4147, size: 288, offset: 8)
!4147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4148, size: 288, elements: !2351)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !4149)
!4149 = !{!4150, !4151}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4148, file: !6, line: 804, baseType: !298, size: 8)
!4151 = !DIDerivedType(tag: DW_TAG_member, scope: !4148, file: !6, line: 805, baseType: !4152, size: 64, offset: 8)
!4152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4148, file: !6, line: 805, size: 64, elements: !4153)
!4153 = !{!4154, !4155}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4152, file: !6, line: 806, baseType: !456, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4152, file: !6, line: 807, baseType: !486, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4091, file: !51, line: 651, baseType: !4143, size: 296, offset: 1576)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4091, file: !51, line: 652, baseType: !4143, size: 296, offset: 1872)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4091, file: !51, line: 653, baseType: !4143, size: 296, offset: 2168)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4091, file: !51, line: 654, baseType: !4143, size: 296, offset: 2464)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4091, file: !51, line: 655, baseType: !4143, size: 296, offset: 2760)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4091, file: !51, line: 656, baseType: !4143, size: 296, offset: 3056)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4091, file: !51, line: 657, baseType: !4143, size: 296, offset: 3352)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !4033, file: !51, line: 466, baseType: !4164, size: 64, offset: 2048)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!294, !4028, !4070}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !4033, file: !51, line: 467, baseType: !4168, size: 64, offset: 2112)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!294, !4028, !2749}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !4033, file: !51, line: 468, baseType: !4172, size: 64, offset: 2176)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!294, !4028, !4175}
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !4033, file: !51, line: 469, baseType: !4172, size: 64, offset: 2240)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !4033, file: !51, line: 470, baseType: !4168, size: 64, offset: 2304)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !4033, file: !51, line: 472, baseType: !4056, size: 64, offset: 2368)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !4033, file: !51, line: 473, baseType: !4180, size: 64, offset: 2432)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!294, !4028, !4183}
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !4185)
!4185 = !{!4186, !4188}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4184, file: !6, line: 174, baseType: !4187, size: 48)
!4187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 48, elements: !2450)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4184, file: !6, line: 175, baseType: !298, size: 8, offset: 48)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !4033, file: !51, line: 474, baseType: !4190, size: 64, offset: 2496)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!294, !4028, !4193}
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !4195)
!4195 = !{!4196, !4198, !4199}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4194, file: !6, line: 196, baseType: !4197, size: 32)
!4197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 32, elements: !2351)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4194, file: !6, line: 197, baseType: !298, size: 8, offset: 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4194, file: !6, line: 198, baseType: !294, size: 32, offset: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !4033, file: !51, line: 475, baseType: !4201, size: 64, offset: 2560)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!294, !4028, !171}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !4033, file: !51, line: 477, baseType: !4205, size: 64, offset: 2624)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!294, !4028, !78}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !4033, file: !51, line: 478, baseType: !4209, size: 64, offset: 2688)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!294, !4028, !73}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !4033, file: !51, line: 480, baseType: !4213, size: 64, offset: 2752)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!294, !4028, !415}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !4033, file: !51, line: 481, baseType: !4217, size: 64, offset: 2816)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!294, !4028, !398}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4033, file: !51, line: 482, baseType: !4221, size: 64, offset: 2880)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!294, !4028, !294}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !4033, file: !51, line: 483, baseType: !4221, size: 64, offset: 2944)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !4033, file: !51, line: 484, baseType: !4056, size: 64, offset: 3008)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !4033, file: !51, line: 490, baseType: !4227, size: 64, offset: 3072)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!175, !4028}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !4033, file: !51, line: 492, baseType: !4231, size: 2304, offset: 3136)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !4232)
!4232 = !{!4233, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4260, !4264, !4265, !4266, !4267, !4268, !4269, !4274, !4278, !4282}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4231, file: !51, line: 228, baseType: !4234, size: 1216)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !4235)
!4235 = !{!4236, !4237, !4238, !4239, !4240, !4241, !4242}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4234, file: !51, line: 89, baseType: !3507, size: 1024)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4234, file: !51, line: 91, baseType: !355, size: 32, offset: 1024)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4234, file: !51, line: 92, baseType: !355, size: 32, offset: 1056)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4234, file: !51, line: 93, baseType: !355, size: 32, offset: 1088)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4234, file: !51, line: 95, baseType: !355, size: 32, offset: 1120)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4234, file: !51, line: 96, baseType: !355, size: 32, offset: 1152)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4234, file: !51, line: 97, baseType: !355, size: 32, offset: 1184)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4231, file: !51, line: 230, baseType: !4050, size: 64, offset: 1216)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4231, file: !51, line: 231, baseType: !4056, size: 64, offset: 1280)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4231, file: !51, line: 232, baseType: !4056, size: 64, offset: 1344)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4231, file: !51, line: 233, baseType: !4056, size: 64, offset: 1408)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4231, file: !51, line: 234, baseType: !4056, size: 64, offset: 1472)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4231, file: !51, line: 237, baseType: !4056, size: 64, offset: 1536)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4231, file: !51, line: 238, baseType: !4250, size: 64, offset: 1600)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!294, !4028, !4253}
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !4255)
!4255 = !{!4256, !4257, !4258, !4259}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4254, file: !51, line: 115, baseType: !7, size: 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4254, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4254, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4254, file: !51, line: 118, baseType: !455, size: 64, offset: 128)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4231, file: !51, line: 240, baseType: !4261, size: 64, offset: 1664)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!294, !4028, !293}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4231, file: !51, line: 242, baseType: !4168, size: 64, offset: 1728)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4231, file: !51, line: 243, baseType: !4168, size: 64, offset: 1792)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4231, file: !51, line: 244, baseType: !4168, size: 64, offset: 1856)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4231, file: !51, line: 248, baseType: !4168, size: 64, offset: 1920)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4231, file: !51, line: 249, baseType: !4172, size: 64, offset: 1984)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4231, file: !51, line: 250, baseType: !4270, size: 64, offset: 2048)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!294, !4028, !4273}
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4231, file: !51, line: 258, baseType: !4275, size: 64, offset: 2112)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!294, !4028, !295, !294}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4231, file: !51, line: 267, baseType: !4279, size: 64, offset: 2176)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!294, !4028, !355}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4231, file: !51, line: 268, baseType: !4279, size: 64, offset: 2240)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !4033, file: !51, line: 493, baseType: !4284, size: 576, offset: 5440)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !4285)
!4285 = !{!4286, !4290, !4294, !4295, !4296, !4297, !4298, !4299, !4300}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4284, file: !51, line: 304, baseType: !4287, size: 64)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !4288)
!4288 = !{!4289}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4287, file: !51, line: 277, baseType: !751, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4284, file: !51, line: 306, baseType: !4291, size: 64, offset: 64)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{null, !4028, !4253}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4284, file: !51, line: 308, baseType: !4172, size: 64, offset: 128)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4284, file: !51, line: 309, baseType: !4270, size: 64, offset: 192)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4284, file: !51, line: 310, baseType: !4050, size: 64, offset: 256)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4284, file: !51, line: 311, baseType: !4050, size: 64, offset: 320)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4284, file: !51, line: 312, baseType: !4050, size: 64, offset: 384)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4284, file: !51, line: 313, baseType: !4221, size: 64, offset: 448)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4284, file: !51, line: 316, baseType: !4261, size: 64, offset: 512)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !4029, file: !51, line: 689, baseType: !4302, size: 64, offset: 6080)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !4304)
!4304 = !{!4305, !4306, !4307, !4308, !4309, !4311, !4312, !4313, !4314, !4315, !4334}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4303, file: !272, line: 102, baseType: !294, size: 32)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4303, file: !272, line: 103, baseType: !448, size: 128, offset: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4303, file: !272, line: 104, baseType: !448, size: 128, offset: 192)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4303, file: !272, line: 105, baseType: !726, size: 64, offset: 320)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !4303, file: !272, line: 106, baseType: !4310, size: 48, offset: 384)
!4310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 48, elements: !2450)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4303, file: !272, line: 107, baseType: !293, size: 64, offset: 448)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4303, file: !272, line: 109, baseType: !3418, size: 64, offset: 512)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4303, file: !272, line: 111, baseType: !310, size: 64, offset: 576)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !4303, file: !272, line: 113, baseType: !294, size: 32, offset: 640)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !4303, file: !272, line: 114, baseType: !4316, size: 64, offset: 704)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4318)
!4318 = !{!4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4333}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4317, file: !272, line: 158, baseType: !448, size: 128)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4317, file: !272, line: 159, baseType: !1729, size: 64, offset: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4317, file: !272, line: 160, baseType: !4302, size: 64, offset: 192)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4317, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4317, file: !272, line: 162, baseType: !294, size: 32, offset: 288)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4317, file: !272, line: 163, baseType: !355, size: 32, offset: 320)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4317, file: !272, line: 167, baseType: !294, size: 32, offset: 352)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4317, file: !272, line: 168, baseType: !294, size: 32, offset: 384)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4317, file: !272, line: 169, baseType: !294, size: 32, offset: 416)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4317, file: !272, line: 171, baseType: !1512, size: 128, offset: 448)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4317, file: !272, line: 173, baseType: !4330, size: 64, offset: 576)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!294, !627, !7, !293}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4317, file: !272, line: 187, baseType: !293, size: 64, offset: 640)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !4303, file: !272, line: 115, baseType: !1280, size: 192, offset: 768)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !4029, file: !51, line: 690, baseType: !293, size: 64, offset: 6144)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !4029, file: !51, line: 691, baseType: !293, size: 64, offset: 6208)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !4029, file: !51, line: 692, baseType: !293, size: 64, offset: 6272)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !4029, file: !51, line: 693, baseType: !293, size: 64, offset: 6336)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !4029, file: !51, line: 694, baseType: !293, size: 64, offset: 6400)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !4029, file: !51, line: 695, baseType: !4091, size: 3648, offset: 6464)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4029, file: !51, line: 698, baseType: !4342, size: 64, offset: 10112)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!294, !293, !294, !294, !294}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4029, file: !51, line: 699, baseType: !294, size: 32, offset: 10176)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4029, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4350)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !4351, line: 12, size: 192, elements: !4352)
!4351 = !DIFile(filename: "./include/linux/firmware.h", directory: "/home/lizy2001/genbc/linux")
!4352 = !{!4353, !4354, !4355}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4350, file: !4351, line: 13, baseType: !845, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4350, file: !4351, line: 14, baseType: !4064, size: 64, offset: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4350, file: !4351, line: 17, baseType: !293, size: 64, offset: 128)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "setmode", scope: !4020, file: !4021, line: 21, baseType: !4357, size: 64, offset: 128)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{null, !4028, !294}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4020, file: !4021, line: 22, baseType: !4050, size: 64, offset: 192)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4020, file: !4021, line: 23, baseType: !4050, size: 64, offset: 256)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !302, file: !3, line: 47, baseType: !4029, size: 10240, offset: 128)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "bt", scope: !302, file: !3, line: 48, baseType: !4364, size: 64, offset: 10368)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DICompositeType(tag: DW_TAG_structure_type, name: "bt878", file: !3, line: 48, flags: DIFlagFwdDecl)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !302, file: !3, line: 51, baseType: !296, size: 1, offset: 10432, flags: DIFlagBitField, extraData: i64 10432)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !302, file: !3, line: 52, baseType: !355, size: 32, offset: 10464)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "current_frequency", scope: !302, file: !3, line: 55, baseType: !355, size: 32, offset: 10496)
!4369 = !{!4370, !4422, !4427, !4432, !4437, !4439, !4444, !4447, !0, !4449, !4452, !4457}
!4370 = !DIGlobalVariableExpression(var: !4371, expr: !DIExpression())
!4371 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 547, type: !4372, isLocal: true, isDefinition: true, align: 64)
!4372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4373)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4374, line: 69, size: 320, elements: !4375)
!4374 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!4375 = !{!4376, !4377, !4378, !4394, !4396, !4400, !4401}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4373, file: !4374, line: 70, baseType: !726, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4373, file: !4374, line: 71, baseType: !310, size: 64, offset: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4373, file: !4374, line: 72, baseType: !4379, size: 64, offset: 128)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4381)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4374, line: 47, size: 256, elements: !4382)
!4382 = !{!4383, !4384, !4389, !4393}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4381, file: !4374, line: 49, baseType: !7, size: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4381, file: !4374, line: 51, baseType: !4385, size: 64, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!294, !726, !4388}
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4381, file: !4374, line: 53, baseType: !4390, size: 64, offset: 128)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!294, !751, !4388}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4381, file: !4374, line: 55, baseType: !733, size: 64, offset: 192)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4373, file: !4374, line: 73, baseType: !4395, size: 16, offset: 192)
!4395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4373, file: !4374, line: 74, baseType: !4397, size: 8, offset: 208)
!4397 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !297, line: 16, baseType: !4398)
!4398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !299, line: 20, baseType: !4399)
!4399 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4373, file: !4374, line: 75, baseType: !296, size: 8, offset: 216)
!4401 = !DIDerivedType(tag: DW_TAG_member, scope: !4373, file: !4374, line: 76, baseType: !4402, size: 64, offset: 256)
!4402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4373, file: !4374, line: 76, size: 64, elements: !4403)
!4403 = !{!4404, !4405, !4412}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4402, file: !4374, line: 77, baseType: !293, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4402, file: !4374, line: 78, baseType: !4406, size: 64)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4408)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4374, line: 86, size: 128, elements: !4409)
!4409 = !{!4410, !4411}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4408, file: !4374, line: 87, baseType: !7, size: 32)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4408, file: !4374, line: 88, baseType: !751, size: 64, offset: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4402, file: !4374, line: 79, baseType: !4413, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4415)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4374, line: 92, size: 256, elements: !4416)
!4416 = !{!4417, !4418, !4419, !4420, !4421}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4415, file: !4374, line: 94, baseType: !7, size: 32)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4415, file: !4374, line: 95, baseType: !7, size: 32, offset: 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4415, file: !4374, line: 96, baseType: !1532, size: 64, offset: 64)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4415, file: !4374, line: 97, baseType: !4379, size: 64, offset: 128)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4415, file: !4374, line: 98, baseType: !293, size: 64, offset: 192)
!4422 = !DIGlobalVariableExpression(var: !4423, expr: !DIExpression())
!4423 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 547, type: !4424, isLocal: true, isDefinition: true, align: 8)
!4424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 216, elements: !4425)
!4425 = !{!4426}
!4426 = !DISubrange(count: 27)
!4427 = !DIGlobalVariableExpression(var: !4428, expr: !DIExpression())
!4428 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 548, type: !4429, isLocal: true, isDefinition: true, align: 8)
!4429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 520, elements: !4430)
!4430 = !{!4431}
!4431 = !DISubrange(count: 65)
!4432 = !DIGlobalVariableExpression(var: !4433, expr: !DIExpression())
!4433 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 550, type: !4434, isLocal: true, isDefinition: true, align: 8)
!4434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 584, elements: !4435)
!4435 = !{!4436}
!4436 = !DISubrange(count: 73)
!4437 = !DIGlobalVariableExpression(var: !4438, expr: !DIExpression())
!4438 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author223", scope: !2, file: !3, line: 551, type: !4424, isLocal: true, isDefinition: true, align: 8)
!4439 = !DIGlobalVariableExpression(var: !4440, expr: !DIExpression())
!4440 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file224", scope: !2, file: !3, line: 552, type: !4441, isLocal: true, isDefinition: true, align: 8)
!4441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 392, elements: !4442)
!4442 = !{!4443}
!4443 = !DISubrange(count: 49)
!4444 = !DIGlobalVariableExpression(var: !4445, expr: !DIExpression())
!4445 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license225", scope: !2, file: !3, line: 552, type: !4446, isLocal: true, isDefinition: true, align: 8)
!4446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 160, elements: !3303)
!4447 = !DIGlobalVariableExpression(var: !4448, expr: !DIExpression())
!4448 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 33, type: !294, isLocal: true, isDefinition: true)
!4449 = !DIGlobalVariableExpression(var: !4450, expr: !DIExpression())
!4450 = distinct !DIGlobalVariable(name: "run_buf", scope: !2, file: !3, line: 37, type: !4451, isLocal: true, isDefinition: true)
!4451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 16, elements: !2391)
!4452 = !DIGlobalVariableExpression(var: !4453, expr: !DIExpression())
!4453 = distinct !DIGlobalVariable(name: "cmd_buf", scope: !2, file: !3, line: 38, type: !4454, isLocal: true, isDefinition: true)
!4454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 40, elements: !4455)
!4455 = !{!4456}
!4456 = !DISubrange(count: 5)
!4457 = !DIGlobalVariableExpression(var: !4458, expr: !DIExpression())
!4458 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 547, type: !4459, isLocal: true, isDefinition: true)
!4459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 112, elements: !4460)
!4460 = !{!4461}
!4461 = !DISubrange(count: 14)
!4462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4033)
!4463 = !{i32 7, !"Dwarf Version", i32 4}
!4464 = !{i32 2, !"Debug Info Version", i32 3}
!4465 = !{i32 1, !"wchar_size", i32 2}
!4466 = !{i32 1, !"Code Model", i32 2}
!4467 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4468 = distinct !DISubprogram(name: "or51211_attach", scope: !3, file: !3, line: 498, type: !4469, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!4028, !4018, !305}
!4471 = !DILocalVariable(name: "config", arg: 1, scope: !4468, file: !3, line: 498, type: !4018)
!4472 = !DILocation(line: 498, column: 66, scope: !4468)
!4473 = !DILocalVariable(name: "i2c", arg: 2, scope: !4468, file: !3, line: 499, type: !305)
!4474 = !DILocation(line: 499, column: 29, scope: !4468)
!4475 = !DILocalVariable(name: "state", scope: !4468, file: !3, line: 501, type: !301)
!4476 = !DILocation(line: 501, column: 24, scope: !4468)
!4477 = !DILocation(line: 504, column: 10, scope: !4468)
!4478 = !DILocation(line: 504, column: 8, scope: !4468)
!4479 = !DILocation(line: 505, column: 6, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 505, column: 6)
!4481 = !DILocation(line: 505, column: 12, scope: !4480)
!4482 = !DILocation(line: 505, column: 6, scope: !4468)
!4483 = !DILocation(line: 506, column: 3, scope: !4480)
!4484 = !DILocation(line: 509, column: 18, scope: !4468)
!4485 = !DILocation(line: 509, column: 2, scope: !4468)
!4486 = !DILocation(line: 509, column: 9, scope: !4468)
!4487 = !DILocation(line: 509, column: 16, scope: !4468)
!4488 = !DILocation(line: 510, column: 15, scope: !4468)
!4489 = !DILocation(line: 510, column: 2, scope: !4468)
!4490 = !DILocation(line: 510, column: 9, scope: !4468)
!4491 = !DILocation(line: 510, column: 13, scope: !4468)
!4492 = !DILocation(line: 511, column: 2, scope: !4468)
!4493 = !DILocation(line: 511, column: 9, scope: !4468)
!4494 = !DILocation(line: 511, column: 21, scope: !4468)
!4495 = !DILocation(line: 512, column: 2, scope: !4468)
!4496 = !DILocation(line: 512, column: 9, scope: !4468)
!4497 = !DILocation(line: 512, column: 27, scope: !4468)
!4498 = !DILocation(line: 515, column: 10, scope: !4468)
!4499 = !DILocation(line: 515, column: 17, scope: !4468)
!4500 = !DILocation(line: 515, column: 26, scope: !4468)
!4501 = !DILocation(line: 515, column: 2, scope: !4468)
!4502 = !DILocation(line: 516, column: 37, scope: !4468)
!4503 = !DILocation(line: 516, column: 2, scope: !4468)
!4504 = !DILocation(line: 516, column: 9, scope: !4468)
!4505 = !DILocation(line: 516, column: 18, scope: !4468)
!4506 = !DILocation(line: 516, column: 35, scope: !4468)
!4507 = !DILocation(line: 517, column: 10, scope: !4468)
!4508 = !DILocation(line: 517, column: 17, scope: !4468)
!4509 = !DILocation(line: 517, column: 2, scope: !4468)
!4510 = !DILocation(line: 518, column: 1, scope: !4468)
!4511 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 662, type: !4512, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!293, !845, !291}
!4514 = !DILocalVariable(name: "s", arg: 1, scope: !4515, file: !284, line: 445, type: !1190)
!4515 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !284, file: !284, line: 445, type: !4516, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!293, !1190, !291, !845}
!4518 = !DILocation(line: 445, column: 72, scope: !4515, inlinedAt: !4519)
!4519 = distinct !DILocation(line: 552, column: 10, scope: !4520, inlinedAt: !4523)
!4520 = distinct !DILexicalBlock(scope: !4521, file: !284, line: 540, column: 34)
!4521 = distinct !DILexicalBlock(scope: !4522, file: !284, line: 540, column: 6)
!4522 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 538, type: !4512, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4523 = distinct !DILocation(line: 664, column: 9, scope: !4511)
!4524 = !DILocalVariable(name: "flags", arg: 2, scope: !4515, file: !284, line: 446, type: !291)
!4525 = !DILocation(line: 446, column: 9, scope: !4515, inlinedAt: !4519)
!4526 = !DILocalVariable(name: "size", arg: 3, scope: !4515, file: !284, line: 446, type: !845)
!4527 = !DILocation(line: 446, column: 23, scope: !4515, inlinedAt: !4519)
!4528 = !DILocalVariable(name: "ret", scope: !4515, file: !284, line: 448, type: !293)
!4529 = !DILocation(line: 448, column: 8, scope: !4515, inlinedAt: !4519)
!4530 = !DILocalVariable(name: "flags", arg: 1, scope: !4531, file: !284, line: 318, type: !291)
!4531 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 318, type: !4532, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!283, !291}
!4534 = !DILocation(line: 318, column: 67, scope: !4531, inlinedAt: !4535)
!4535 = distinct !DILocation(line: 553, column: 20, scope: !4520, inlinedAt: !4523)
!4536 = !DILocalVariable(name: "size", arg: 1, scope: !4537, file: !284, line: 346, type: !845)
!4537 = distinct !DISubprogram(name: "kmalloc_index", scope: !284, file: !284, line: 346, type: !4538, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!7, !845}
!4540 = !DILocation(line: 346, column: 58, scope: !4537, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 547, column: 11, scope: !4520, inlinedAt: !4523)
!4542 = !DILocalVariable(name: "size", arg: 1, scope: !4543, file: !284, line: 472, type: !845)
!4543 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !284, file: !284, line: 472, type: !4544, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!293, !845, !291, !7}
!4546 = !DILocation(line: 472, column: 28, scope: !4543, inlinedAt: !4547)
!4547 = distinct !DILocation(line: 481, column: 9, scope: !4548, inlinedAt: !4549)
!4548 = distinct !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 478, type: !4512, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4549 = distinct !DILocation(line: 545, column: 11, scope: !4550, inlinedAt: !4523)
!4550 = distinct !DILexicalBlock(scope: !4520, file: !284, line: 544, column: 7)
!4551 = !DILocalVariable(name: "flags", arg: 2, scope: !4543, file: !284, line: 472, type: !291)
!4552 = !DILocation(line: 472, column: 40, scope: !4543, inlinedAt: !4547)
!4553 = !DILocalVariable(name: "order", arg: 3, scope: !4543, file: !284, line: 472, type: !7)
!4554 = !DILocation(line: 472, column: 60, scope: !4543, inlinedAt: !4547)
!4555 = !DILocalVariable(name: "size", arg: 1, scope: !4548, file: !284, line: 478, type: !845)
!4556 = !DILocation(line: 478, column: 51, scope: !4548, inlinedAt: !4549)
!4557 = !DILocalVariable(name: "flags", arg: 2, scope: !4548, file: !284, line: 478, type: !291)
!4558 = !DILocation(line: 478, column: 63, scope: !4548, inlinedAt: !4549)
!4559 = !DILocalVariable(name: "order", scope: !4548, file: !284, line: 480, type: !7)
!4560 = !DILocation(line: 480, column: 15, scope: !4548, inlinedAt: !4549)
!4561 = !DILocalVariable(name: "size", arg: 1, scope: !4522, file: !284, line: 538, type: !845)
!4562 = !DILocation(line: 538, column: 45, scope: !4522, inlinedAt: !4523)
!4563 = !DILocalVariable(name: "flags", arg: 2, scope: !4522, file: !284, line: 538, type: !291)
!4564 = !DILocation(line: 538, column: 57, scope: !4522, inlinedAt: !4523)
!4565 = !DILocalVariable(name: "index", scope: !4520, file: !284, line: 542, type: !7)
!4566 = !DILocation(line: 542, column: 16, scope: !4520, inlinedAt: !4523)
!4567 = !DILocalVariable(name: "size", arg: 1, scope: !4511, file: !284, line: 662, type: !845)
!4568 = !DILocation(line: 662, column: 36, scope: !4511)
!4569 = !DILocalVariable(name: "flags", arg: 2, scope: !4511, file: !284, line: 662, type: !291)
!4570 = !DILocation(line: 662, column: 48, scope: !4511)
!4571 = !DILocation(line: 664, column: 17, scope: !4511)
!4572 = !DILocation(line: 664, column: 23, scope: !4511)
!4573 = !DILocation(line: 664, column: 29, scope: !4511)
!4574 = !DILocation(line: 540, column: 27, scope: !4521, inlinedAt: !4523)
!4575 = !DILocation(line: 540, column: 6, scope: !4521, inlinedAt: !4523)
!4576 = !DILocation(line: 540, column: 6, scope: !4522, inlinedAt: !4523)
!4577 = !DILocation(line: 544, column: 7, scope: !4550, inlinedAt: !4523)
!4578 = !DILocation(line: 544, column: 12, scope: !4550, inlinedAt: !4523)
!4579 = !DILocation(line: 544, column: 7, scope: !4520, inlinedAt: !4523)
!4580 = !DILocation(line: 545, column: 25, scope: !4550, inlinedAt: !4523)
!4581 = !DILocation(line: 545, column: 31, scope: !4550, inlinedAt: !4523)
!4582 = !DILocation(line: 480, column: 33, scope: !4548, inlinedAt: !4549)
!4583 = !DILocation(line: 480, column: 23, scope: !4548, inlinedAt: !4549)
!4584 = !DILocation(line: 481, column: 29, scope: !4548, inlinedAt: !4549)
!4585 = !DILocation(line: 481, column: 35, scope: !4548, inlinedAt: !4549)
!4586 = !DILocation(line: 481, column: 42, scope: !4548, inlinedAt: !4549)
!4587 = !DILocation(line: 474, column: 23, scope: !4543, inlinedAt: !4547)
!4588 = !DILocation(line: 474, column: 29, scope: !4543, inlinedAt: !4547)
!4589 = !DILocation(line: 474, column: 36, scope: !4543, inlinedAt: !4547)
!4590 = !DILocation(line: 474, column: 9, scope: !4543, inlinedAt: !4547)
!4591 = !DILocation(line: 545, column: 4, scope: !4550, inlinedAt: !4523)
!4592 = !DILocation(line: 547, column: 25, scope: !4520, inlinedAt: !4523)
!4593 = !DILocation(line: 348, column: 7, scope: !4594, inlinedAt: !4541)
!4594 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 348, column: 6)
!4595 = !DILocation(line: 348, column: 6, scope: !4537, inlinedAt: !4541)
!4596 = !DILocation(line: 349, column: 3, scope: !4594, inlinedAt: !4541)
!4597 = !DILocation(line: 351, column: 6, scope: !4598, inlinedAt: !4541)
!4598 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 351, column: 6)
!4599 = !DILocation(line: 351, column: 11, scope: !4598, inlinedAt: !4541)
!4600 = !DILocation(line: 351, column: 6, scope: !4537, inlinedAt: !4541)
!4601 = !DILocation(line: 352, column: 3, scope: !4598, inlinedAt: !4541)
!4602 = !DILocation(line: 354, column: 32, scope: !4603, inlinedAt: !4541)
!4603 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 354, column: 6)
!4604 = !DILocation(line: 354, column: 37, scope: !4603, inlinedAt: !4541)
!4605 = !DILocation(line: 354, column: 42, scope: !4603, inlinedAt: !4541)
!4606 = !DILocation(line: 354, column: 45, scope: !4603, inlinedAt: !4541)
!4607 = !DILocation(line: 354, column: 50, scope: !4603, inlinedAt: !4541)
!4608 = !DILocation(line: 354, column: 6, scope: !4537, inlinedAt: !4541)
!4609 = !DILocation(line: 355, column: 3, scope: !4603, inlinedAt: !4541)
!4610 = !DILocation(line: 356, column: 32, scope: !4611, inlinedAt: !4541)
!4611 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 356, column: 6)
!4612 = !DILocation(line: 356, column: 37, scope: !4611, inlinedAt: !4541)
!4613 = !DILocation(line: 356, column: 43, scope: !4611, inlinedAt: !4541)
!4614 = !DILocation(line: 356, column: 46, scope: !4611, inlinedAt: !4541)
!4615 = !DILocation(line: 356, column: 51, scope: !4611, inlinedAt: !4541)
!4616 = !DILocation(line: 356, column: 6, scope: !4537, inlinedAt: !4541)
!4617 = !DILocation(line: 357, column: 3, scope: !4611, inlinedAt: !4541)
!4618 = !DILocation(line: 358, column: 6, scope: !4619, inlinedAt: !4541)
!4619 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 358, column: 6)
!4620 = !DILocation(line: 358, column: 11, scope: !4619, inlinedAt: !4541)
!4621 = !DILocation(line: 358, column: 6, scope: !4537, inlinedAt: !4541)
!4622 = !DILocation(line: 358, column: 26, scope: !4619, inlinedAt: !4541)
!4623 = !DILocation(line: 359, column: 6, scope: !4624, inlinedAt: !4541)
!4624 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 359, column: 6)
!4625 = !DILocation(line: 359, column: 11, scope: !4624, inlinedAt: !4541)
!4626 = !DILocation(line: 359, column: 6, scope: !4537, inlinedAt: !4541)
!4627 = !DILocation(line: 359, column: 26, scope: !4624, inlinedAt: !4541)
!4628 = !DILocation(line: 360, column: 6, scope: !4629, inlinedAt: !4541)
!4629 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 360, column: 6)
!4630 = !DILocation(line: 360, column: 11, scope: !4629, inlinedAt: !4541)
!4631 = !DILocation(line: 360, column: 6, scope: !4537, inlinedAt: !4541)
!4632 = !DILocation(line: 360, column: 26, scope: !4629, inlinedAt: !4541)
!4633 = !DILocation(line: 361, column: 6, scope: !4634, inlinedAt: !4541)
!4634 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 361, column: 6)
!4635 = !DILocation(line: 361, column: 11, scope: !4634, inlinedAt: !4541)
!4636 = !DILocation(line: 361, column: 6, scope: !4537, inlinedAt: !4541)
!4637 = !DILocation(line: 361, column: 26, scope: !4634, inlinedAt: !4541)
!4638 = !DILocation(line: 362, column: 6, scope: !4639, inlinedAt: !4541)
!4639 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 362, column: 6)
!4640 = !DILocation(line: 362, column: 11, scope: !4639, inlinedAt: !4541)
!4641 = !DILocation(line: 362, column: 6, scope: !4537, inlinedAt: !4541)
!4642 = !DILocation(line: 362, column: 26, scope: !4639, inlinedAt: !4541)
!4643 = !DILocation(line: 363, column: 6, scope: !4644, inlinedAt: !4541)
!4644 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 363, column: 6)
!4645 = !DILocation(line: 363, column: 11, scope: !4644, inlinedAt: !4541)
!4646 = !DILocation(line: 363, column: 6, scope: !4537, inlinedAt: !4541)
!4647 = !DILocation(line: 363, column: 26, scope: !4644, inlinedAt: !4541)
!4648 = !DILocation(line: 364, column: 6, scope: !4649, inlinedAt: !4541)
!4649 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 364, column: 6)
!4650 = !DILocation(line: 364, column: 11, scope: !4649, inlinedAt: !4541)
!4651 = !DILocation(line: 364, column: 6, scope: !4537, inlinedAt: !4541)
!4652 = !DILocation(line: 364, column: 26, scope: !4649, inlinedAt: !4541)
!4653 = !DILocation(line: 365, column: 6, scope: !4654, inlinedAt: !4541)
!4654 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 365, column: 6)
!4655 = !DILocation(line: 365, column: 11, scope: !4654, inlinedAt: !4541)
!4656 = !DILocation(line: 365, column: 6, scope: !4537, inlinedAt: !4541)
!4657 = !DILocation(line: 365, column: 26, scope: !4654, inlinedAt: !4541)
!4658 = !DILocation(line: 366, column: 6, scope: !4659, inlinedAt: !4541)
!4659 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 366, column: 6)
!4660 = !DILocation(line: 366, column: 11, scope: !4659, inlinedAt: !4541)
!4661 = !DILocation(line: 366, column: 6, scope: !4537, inlinedAt: !4541)
!4662 = !DILocation(line: 366, column: 26, scope: !4659, inlinedAt: !4541)
!4663 = !DILocation(line: 367, column: 6, scope: !4664, inlinedAt: !4541)
!4664 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 367, column: 6)
!4665 = !DILocation(line: 367, column: 11, scope: !4664, inlinedAt: !4541)
!4666 = !DILocation(line: 367, column: 6, scope: !4537, inlinedAt: !4541)
!4667 = !DILocation(line: 367, column: 26, scope: !4664, inlinedAt: !4541)
!4668 = !DILocation(line: 368, column: 6, scope: !4669, inlinedAt: !4541)
!4669 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 368, column: 6)
!4670 = !DILocation(line: 368, column: 11, scope: !4669, inlinedAt: !4541)
!4671 = !DILocation(line: 368, column: 6, scope: !4537, inlinedAt: !4541)
!4672 = !DILocation(line: 368, column: 26, scope: !4669, inlinedAt: !4541)
!4673 = !DILocation(line: 369, column: 6, scope: !4674, inlinedAt: !4541)
!4674 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 369, column: 6)
!4675 = !DILocation(line: 369, column: 11, scope: !4674, inlinedAt: !4541)
!4676 = !DILocation(line: 369, column: 6, scope: !4537, inlinedAt: !4541)
!4677 = !DILocation(line: 369, column: 26, scope: !4674, inlinedAt: !4541)
!4678 = !DILocation(line: 370, column: 6, scope: !4679, inlinedAt: !4541)
!4679 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 370, column: 6)
!4680 = !DILocation(line: 370, column: 11, scope: !4679, inlinedAt: !4541)
!4681 = !DILocation(line: 370, column: 6, scope: !4537, inlinedAt: !4541)
!4682 = !DILocation(line: 370, column: 26, scope: !4679, inlinedAt: !4541)
!4683 = !DILocation(line: 371, column: 6, scope: !4684, inlinedAt: !4541)
!4684 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 371, column: 6)
!4685 = !DILocation(line: 371, column: 11, scope: !4684, inlinedAt: !4541)
!4686 = !DILocation(line: 371, column: 6, scope: !4537, inlinedAt: !4541)
!4687 = !DILocation(line: 371, column: 26, scope: !4684, inlinedAt: !4541)
!4688 = !DILocation(line: 372, column: 6, scope: !4689, inlinedAt: !4541)
!4689 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 372, column: 6)
!4690 = !DILocation(line: 372, column: 11, scope: !4689, inlinedAt: !4541)
!4691 = !DILocation(line: 372, column: 6, scope: !4537, inlinedAt: !4541)
!4692 = !DILocation(line: 372, column: 26, scope: !4689, inlinedAt: !4541)
!4693 = !DILocation(line: 373, column: 6, scope: !4694, inlinedAt: !4541)
!4694 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 373, column: 6)
!4695 = !DILocation(line: 373, column: 11, scope: !4694, inlinedAt: !4541)
!4696 = !DILocation(line: 373, column: 6, scope: !4537, inlinedAt: !4541)
!4697 = !DILocation(line: 373, column: 26, scope: !4694, inlinedAt: !4541)
!4698 = !DILocation(line: 374, column: 6, scope: !4699, inlinedAt: !4541)
!4699 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 374, column: 6)
!4700 = !DILocation(line: 374, column: 11, scope: !4699, inlinedAt: !4541)
!4701 = !DILocation(line: 374, column: 6, scope: !4537, inlinedAt: !4541)
!4702 = !DILocation(line: 374, column: 26, scope: !4699, inlinedAt: !4541)
!4703 = !DILocation(line: 375, column: 6, scope: !4704, inlinedAt: !4541)
!4704 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 375, column: 6)
!4705 = !DILocation(line: 375, column: 11, scope: !4704, inlinedAt: !4541)
!4706 = !DILocation(line: 375, column: 6, scope: !4537, inlinedAt: !4541)
!4707 = !DILocation(line: 375, column: 27, scope: !4704, inlinedAt: !4541)
!4708 = !DILocation(line: 376, column: 6, scope: !4709, inlinedAt: !4541)
!4709 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 376, column: 6)
!4710 = !DILocation(line: 376, column: 11, scope: !4709, inlinedAt: !4541)
!4711 = !DILocation(line: 376, column: 6, scope: !4537, inlinedAt: !4541)
!4712 = !DILocation(line: 376, column: 32, scope: !4709, inlinedAt: !4541)
!4713 = !DILocation(line: 377, column: 6, scope: !4714, inlinedAt: !4541)
!4714 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 377, column: 6)
!4715 = !DILocation(line: 377, column: 11, scope: !4714, inlinedAt: !4541)
!4716 = !DILocation(line: 377, column: 6, scope: !4537, inlinedAt: !4541)
!4717 = !DILocation(line: 377, column: 32, scope: !4714, inlinedAt: !4541)
!4718 = !DILocation(line: 378, column: 6, scope: !4719, inlinedAt: !4541)
!4719 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 378, column: 6)
!4720 = !DILocation(line: 378, column: 11, scope: !4719, inlinedAt: !4541)
!4721 = !DILocation(line: 378, column: 6, scope: !4537, inlinedAt: !4541)
!4722 = !DILocation(line: 378, column: 32, scope: !4719, inlinedAt: !4541)
!4723 = !DILocation(line: 379, column: 6, scope: !4724, inlinedAt: !4541)
!4724 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 379, column: 6)
!4725 = !DILocation(line: 379, column: 11, scope: !4724, inlinedAt: !4541)
!4726 = !DILocation(line: 379, column: 6, scope: !4537, inlinedAt: !4541)
!4727 = !DILocation(line: 379, column: 33, scope: !4724, inlinedAt: !4541)
!4728 = !DILocation(line: 380, column: 6, scope: !4729, inlinedAt: !4541)
!4729 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 380, column: 6)
!4730 = !DILocation(line: 380, column: 11, scope: !4729, inlinedAt: !4541)
!4731 = !DILocation(line: 380, column: 6, scope: !4537, inlinedAt: !4541)
!4732 = !DILocation(line: 380, column: 33, scope: !4729, inlinedAt: !4541)
!4733 = !DILocation(line: 381, column: 6, scope: !4734, inlinedAt: !4541)
!4734 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 381, column: 6)
!4735 = !DILocation(line: 381, column: 11, scope: !4734, inlinedAt: !4541)
!4736 = !DILocation(line: 381, column: 6, scope: !4537, inlinedAt: !4541)
!4737 = !DILocation(line: 381, column: 33, scope: !4734, inlinedAt: !4541)
!4738 = !DILocation(line: 382, column: 2, scope: !4739, inlinedAt: !4541)
!4739 = distinct !DILexicalBlock(scope: !4740, file: !284, line: 382, column: 2)
!4740 = distinct !DILexicalBlock(scope: !4537, file: !284, line: 382, column: 2)
!4741 = !{i32 -2143554380, i32 -2143554351, i32 -2143554305, i32 -2143554247, i32 -2143554193, i32 -2143554139, i32 -2143554084, i32 -2143554053}
!4742 = !DILocation(line: 382, column: 2, scope: !4743, inlinedAt: !4541)
!4743 = distinct !DILexicalBlock(scope: !4744, file: !284, line: 382, column: 2)
!4744 = distinct !DILexicalBlock(scope: !4740, file: !284, line: 382, column: 2)
!4745 = !{i32 -2143553610, i32 -2143553603, i32 -2143553549, i32 -2143553518, i32 -2143553488}
!4746 = !DILocation(line: 382, column: 2, scope: !4744, inlinedAt: !4541)
!4747 = !DILocation(line: 386, column: 1, scope: !4537, inlinedAt: !4541)
!4748 = !DILocation(line: 547, column: 9, scope: !4520, inlinedAt: !4523)
!4749 = !DILocation(line: 549, column: 8, scope: !4750, inlinedAt: !4523)
!4750 = distinct !DILexicalBlock(scope: !4520, file: !284, line: 549, column: 7)
!4751 = !DILocation(line: 549, column: 7, scope: !4520, inlinedAt: !4523)
!4752 = !DILocation(line: 550, column: 4, scope: !4750, inlinedAt: !4523)
!4753 = !DILocation(line: 553, column: 33, scope: !4520, inlinedAt: !4523)
!4754 = !DILocation(line: 325, column: 6, scope: !4755, inlinedAt: !4535)
!4755 = distinct !DILexicalBlock(scope: !4531, file: !284, line: 325, column: 6)
!4756 = !DILocation(line: 325, column: 6, scope: !4531, inlinedAt: !4535)
!4757 = !DILocation(line: 326, column: 3, scope: !4755, inlinedAt: !4535)
!4758 = !DILocation(line: 332, column: 9, scope: !4531, inlinedAt: !4535)
!4759 = !DILocation(line: 332, column: 15, scope: !4531, inlinedAt: !4535)
!4760 = !DILocation(line: 332, column: 2, scope: !4531, inlinedAt: !4535)
!4761 = !DILocation(line: 336, column: 1, scope: !4531, inlinedAt: !4535)
!4762 = !DILocation(line: 553, column: 5, scope: !4520, inlinedAt: !4523)
!4763 = !DILocation(line: 553, column: 41, scope: !4520, inlinedAt: !4523)
!4764 = !DILocation(line: 554, column: 5, scope: !4520, inlinedAt: !4523)
!4765 = !DILocation(line: 554, column: 12, scope: !4520, inlinedAt: !4523)
!4766 = !DILocation(line: 448, column: 31, scope: !4515, inlinedAt: !4519)
!4767 = !DILocation(line: 448, column: 34, scope: !4515, inlinedAt: !4519)
!4768 = !DILocation(line: 448, column: 14, scope: !4515, inlinedAt: !4519)
!4769 = !DILocation(line: 450, column: 22, scope: !4515, inlinedAt: !4519)
!4770 = !DILocation(line: 450, column: 25, scope: !4515, inlinedAt: !4519)
!4771 = !DILocation(line: 450, column: 30, scope: !4515, inlinedAt: !4519)
!4772 = !DILocation(line: 450, column: 36, scope: !4515, inlinedAt: !4519)
!4773 = !DILocation(line: 450, column: 8, scope: !4515, inlinedAt: !4519)
!4774 = !DILocation(line: 450, column: 6, scope: !4515, inlinedAt: !4519)
!4775 = !DILocation(line: 451, column: 9, scope: !4515, inlinedAt: !4519)
!4776 = !DILocation(line: 552, column: 3, scope: !4520, inlinedAt: !4523)
!4777 = !DILocation(line: 557, column: 19, scope: !4522, inlinedAt: !4523)
!4778 = !DILocation(line: 557, column: 25, scope: !4522, inlinedAt: !4523)
!4779 = !DILocation(line: 557, column: 9, scope: !4522, inlinedAt: !4523)
!4780 = !DILocation(line: 557, column: 2, scope: !4522, inlinedAt: !4523)
!4781 = !DILocation(line: 558, column: 1, scope: !4522, inlinedAt: !4523)
!4782 = !DILocation(line: 664, column: 2, scope: !4511)
!4783 = distinct !DISubprogram(name: "get_order", scope: !4784, file: !4784, line: 29, type: !4785, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4784 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!294, !398}
!4787 = !DILocalVariable(name: "x", arg: 1, scope: !4788, file: !4789, line: 366, type: !456)
!4788 = distinct !DISubprogram(name: "fls64", scope: !4789, file: !4789, line: 366, type: !4790, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4789 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4790 = !DISubroutineType(types: !4791)
!4791 = !{!294, !456}
!4792 = !DILocation(line: 366, column: 40, scope: !4788, inlinedAt: !4793)
!4793 = distinct !DILocation(line: 46, column: 9, scope: !4783)
!4794 = !DILocalVariable(name: "bitpos", scope: !4788, file: !4789, line: 368, type: !294)
!4795 = !DILocation(line: 368, column: 6, scope: !4788, inlinedAt: !4793)
!4796 = !DILocalVariable(name: "size", arg: 1, scope: !4783, file: !4784, line: 29, type: !398)
!4797 = !DILocation(line: 29, column: 63, scope: !4783)
!4798 = !DILocation(line: 31, column: 27, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4783, file: !4784, line: 31, column: 6)
!4800 = !DILocation(line: 31, column: 6, scope: !4799)
!4801 = !DILocation(line: 31, column: 6, scope: !4783)
!4802 = !DILocation(line: 32, column: 8, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4804, file: !4784, line: 32, column: 7)
!4804 = distinct !DILexicalBlock(scope: !4799, file: !4784, line: 31, column: 34)
!4805 = !DILocation(line: 32, column: 7, scope: !4804)
!4806 = !DILocation(line: 33, column: 4, scope: !4803)
!4807 = !DILocation(line: 35, column: 7, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4804, file: !4784, line: 35, column: 7)
!4809 = !DILocation(line: 35, column: 12, scope: !4808)
!4810 = !DILocation(line: 35, column: 7, scope: !4804)
!4811 = !DILocation(line: 36, column: 4, scope: !4808)
!4812 = !DILocation(line: 38, column: 10, scope: !4804)
!4813 = !DILocation(line: 38, column: 28, scope: !4804)
!4814 = !DILocation(line: 38, column: 41, scope: !4804)
!4815 = !DILocation(line: 38, column: 3, scope: !4804)
!4816 = !DILocation(line: 41, column: 6, scope: !4783)
!4817 = !DILocation(line: 42, column: 7, scope: !4783)
!4818 = !DILocation(line: 46, column: 15, scope: !4783)
!4819 = !DILocation(line: 374, column: 2, scope: !4788, inlinedAt: !4793)
!4820 = !DILocation(line: 376, column: 14, scope: !4788, inlinedAt: !4793)
!4821 = !{i32 252600}
!4822 = !DILocation(line: 377, column: 9, scope: !4788, inlinedAt: !4793)
!4823 = !DILocation(line: 377, column: 16, scope: !4788, inlinedAt: !4793)
!4824 = !DILocation(line: 46, column: 2, scope: !4783)
!4825 = !DILocation(line: 48, column: 1, scope: !4783)
!4826 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4827, file: !4827, line: 30, type: !4828, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4827 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!294, !455}
!4830 = !DILocation(line: 366, column: 40, scope: !4788, inlinedAt: !4831)
!4831 = distinct !DILocation(line: 32, column: 9, scope: !4826)
!4832 = !DILocation(line: 368, column: 6, scope: !4788, inlinedAt: !4831)
!4833 = !DILocalVariable(name: "n", arg: 1, scope: !4826, file: !4827, line: 30, type: !455)
!4834 = !DILocation(line: 30, column: 21, scope: !4826)
!4835 = !DILocation(line: 32, column: 15, scope: !4826)
!4836 = !DILocation(line: 374, column: 2, scope: !4788, inlinedAt: !4831)
!4837 = !DILocation(line: 376, column: 14, scope: !4788, inlinedAt: !4831)
!4838 = !DILocation(line: 377, column: 9, scope: !4788, inlinedAt: !4831)
!4839 = !DILocation(line: 377, column: 16, scope: !4788, inlinedAt: !4831)
!4840 = !DILocation(line: 32, column: 18, scope: !4826)
!4841 = !DILocation(line: 32, column: 2, scope: !4826)
!4842 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4843, file: !4843, line: 137, type: !4844, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4843 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!293, !1190, !2119, !845, !291}
!4846 = !DILocalVariable(name: "s", arg: 1, scope: !4842, file: !4843, line: 137, type: !1190)
!4847 = !DILocation(line: 137, column: 54, scope: !4842)
!4848 = !DILocalVariable(name: "object", arg: 2, scope: !4842, file: !4843, line: 137, type: !2119)
!4849 = !DILocation(line: 137, column: 69, scope: !4842)
!4850 = !DILocalVariable(name: "size", arg: 3, scope: !4842, file: !4843, line: 138, type: !845)
!4851 = !DILocation(line: 138, column: 12, scope: !4842)
!4852 = !DILocalVariable(name: "flags", arg: 4, scope: !4842, file: !4843, line: 138, type: !291)
!4853 = !DILocation(line: 138, column: 24, scope: !4842)
!4854 = !DILocation(line: 140, column: 17, scope: !4842)
!4855 = !DILocation(line: 140, column: 2, scope: !4842)
!4856 = distinct !DISubprogram(name: "or51211_release", scope: !3, file: !3, line: 489, type: !4051, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4857 = !DILocalVariable(name: "fe", arg: 1, scope: !4856, file: !3, line: 489, type: !4028)
!4858 = !DILocation(line: 489, column: 50, scope: !4856)
!4859 = !DILocalVariable(name: "state", scope: !4856, file: !3, line: 491, type: !301)
!4860 = !DILocation(line: 491, column: 24, scope: !4856)
!4861 = !DILocation(line: 491, column: 32, scope: !4856)
!4862 = !DILocation(line: 491, column: 36, scope: !4856)
!4863 = !DILocation(line: 492, column: 2, scope: !4856)
!4864 = !DILocation(line: 492, column: 9, scope: !4856)
!4865 = !DILocation(line: 492, column: 17, scope: !4856)
!4866 = !DILocation(line: 492, column: 23, scope: !4856)
!4867 = !DILocation(line: 493, column: 8, scope: !4856)
!4868 = !DILocation(line: 493, column: 2, scope: !4856)
!4869 = !DILocation(line: 494, column: 1, scope: !4856)
!4870 = distinct !DISubprogram(name: "or51211_init", scope: !3, file: !3, line: 349, type: !4057, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4871 = !DILocalVariable(name: "fe", arg: 1, scope: !4870, file: !3, line: 349, type: !4028)
!4872 = !DILocation(line: 349, column: 46, scope: !4870)
!4873 = !DILocalVariable(name: "state", scope: !4870, file: !3, line: 351, type: !301)
!4874 = !DILocation(line: 351, column: 24, scope: !4870)
!4875 = !DILocation(line: 351, column: 32, scope: !4870)
!4876 = !DILocation(line: 351, column: 36, scope: !4870)
!4877 = !DILocalVariable(name: "config", scope: !4870, file: !3, line: 352, type: !4018)
!4878 = !DILocation(line: 352, column: 31, scope: !4870)
!4879 = !DILocation(line: 352, column: 40, scope: !4870)
!4880 = !DILocation(line: 352, column: 47, scope: !4870)
!4881 = !DILocalVariable(name: "fw", scope: !4870, file: !3, line: 353, type: !4348)
!4882 = !DILocation(line: 353, column: 25, scope: !4870)
!4883 = !DILocalVariable(name: "get_ver_buf", scope: !4870, file: !3, line: 354, type: !4884)
!4884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 40, elements: !4455)
!4885 = !DILocation(line: 354, column: 16, scope: !4870)
!4886 = !DILocalVariable(name: "rec_buf", scope: !4870, file: !3, line: 355, type: !4887)
!4887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 112, elements: !4460)
!4888 = !DILocation(line: 355, column: 16, scope: !4870)
!4889 = !DILocalVariable(name: "ret", scope: !4870, file: !3, line: 356, type: !294)
!4890 = !DILocation(line: 356, column: 6, scope: !4870)
!4891 = !DILocalVariable(name: "i", scope: !4870, file: !3, line: 356, type: !294)
!4892 = !DILocation(line: 356, column: 10, scope: !4870)
!4893 = !DILocation(line: 358, column: 7, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4870, file: !3, line: 358, column: 6)
!4895 = !DILocation(line: 358, column: 14, scope: !4894)
!4896 = !DILocation(line: 358, column: 6, scope: !4870)
!4897 = !DILocation(line: 360, column: 3, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 358, column: 27)
!4899 = !DILocation(line: 362, column: 9, scope: !4898)
!4900 = !DILocation(line: 362, column: 17, scope: !4898)
!4901 = !DILocation(line: 362, column: 34, scope: !4898)
!4902 = !DILocation(line: 362, column: 7, scope: !4898)
!4903 = !DILocation(line: 364, column: 3, scope: !4898)
!4904 = !DILocation(line: 365, column: 7, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 365, column: 7)
!4906 = !DILocation(line: 365, column: 7, scope: !4898)
!4907 = !DILocation(line: 366, column: 4, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 365, column: 12)
!4909 = !DILocation(line: 367, column: 11, scope: !4908)
!4910 = !DILocation(line: 367, column: 4, scope: !4908)
!4911 = !DILocation(line: 370, column: 31, scope: !4898)
!4912 = !DILocation(line: 370, column: 35, scope: !4898)
!4913 = !DILocation(line: 370, column: 9, scope: !4898)
!4914 = !DILocation(line: 370, column: 7, scope: !4898)
!4915 = !DILocation(line: 371, column: 20, scope: !4898)
!4916 = !DILocation(line: 371, column: 3, scope: !4898)
!4917 = !DILocation(line: 372, column: 7, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 372, column: 7)
!4919 = !DILocation(line: 372, column: 7, scope: !4898)
!4920 = !DILocation(line: 373, column: 4, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4918, file: !3, line: 372, column: 12)
!4922 = !DILocation(line: 374, column: 11, scope: !4921)
!4923 = !DILocation(line: 374, column: 4, scope: !4921)
!4924 = !DILocation(line: 376, column: 3, scope: !4898)
!4925 = !DILocation(line: 387, column: 22, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 387, column: 7)
!4927 = !DILocation(line: 387, column: 28, scope: !4926)
!4928 = !DILocation(line: 387, column: 35, scope: !4926)
!4929 = !DILocation(line: 387, column: 43, scope: !4926)
!4930 = !DILocation(line: 387, column: 7, scope: !4926)
!4931 = !DILocation(line: 387, column: 7, scope: !4898)
!4932 = !DILocation(line: 389, column: 4, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 388, column: 20)
!4934 = !DILocation(line: 390, column: 4, scope: !4933)
!4935 = !DILocation(line: 395, column: 3, scope: !4898)
!4936 = !DILocation(line: 395, column: 14, scope: !4898)
!4937 = !DILocation(line: 396, column: 3, scope: !4898)
!4938 = !DILocation(line: 396, column: 14, scope: !4898)
!4939 = !DILocation(line: 397, column: 3, scope: !4898)
!4940 = !DILocation(line: 397, column: 14, scope: !4898)
!4941 = !DILocation(line: 398, column: 3, scope: !4898)
!4942 = !DILocation(line: 398, column: 14, scope: !4898)
!4943 = !DILocation(line: 399, column: 3, scope: !4898)
!4944 = !DILocation(line: 400, column: 22, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 400, column: 7)
!4946 = !DILocation(line: 400, column: 28, scope: !4945)
!4947 = !DILocation(line: 400, column: 35, scope: !4945)
!4948 = !DILocation(line: 400, column: 43, scope: !4945)
!4949 = !DILocation(line: 401, column: 8, scope: !4945)
!4950 = !DILocation(line: 400, column: 7, scope: !4945)
!4951 = !DILocation(line: 400, column: 7, scope: !4898)
!4952 = !DILocation(line: 402, column: 4, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 401, column: 20)
!4954 = !DILocation(line: 403, column: 4, scope: !4953)
!4955 = !DILocation(line: 405, column: 3, scope: !4898)
!4956 = !DILocation(line: 406, column: 21, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 406, column: 7)
!4958 = !DILocation(line: 406, column: 27, scope: !4957)
!4959 = !DILocation(line: 406, column: 34, scope: !4957)
!4960 = !DILocation(line: 406, column: 42, scope: !4957)
!4961 = !DILocation(line: 407, column: 8, scope: !4957)
!4962 = !DILocation(line: 406, column: 7, scope: !4957)
!4963 = !DILocation(line: 406, column: 7, scope: !4898)
!4964 = !DILocation(line: 408, column: 4, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 407, column: 24)
!4966 = !DILocation(line: 409, column: 4, scope: !4965)
!4967 = !DILocation(line: 412, column: 3, scope: !4898)
!4968 = !DILocation(line: 412, column: 14, scope: !4898)
!4969 = !DILocation(line: 413, column: 3, scope: !4898)
!4970 = !DILocation(line: 413, column: 14, scope: !4898)
!4971 = !DILocation(line: 414, column: 3, scope: !4898)
!4972 = !DILocation(line: 414, column: 14, scope: !4898)
!4973 = !DILocation(line: 415, column: 3, scope: !4898)
!4974 = !DILocation(line: 415, column: 14, scope: !4898)
!4975 = !DILocation(line: 416, column: 3, scope: !4898)
!4976 = !DILocation(line: 417, column: 22, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 417, column: 7)
!4978 = !DILocation(line: 417, column: 28, scope: !4977)
!4979 = !DILocation(line: 417, column: 35, scope: !4977)
!4980 = !DILocation(line: 417, column: 43, scope: !4977)
!4981 = !DILocation(line: 418, column: 8, scope: !4977)
!4982 = !DILocation(line: 417, column: 7, scope: !4977)
!4983 = !DILocation(line: 417, column: 7, scope: !4898)
!4984 = !DILocation(line: 419, column: 4, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4977, file: !3, line: 418, column: 20)
!4986 = !DILocation(line: 420, column: 4, scope: !4985)
!4987 = !DILocation(line: 422, column: 3, scope: !4898)
!4988 = !DILocation(line: 423, column: 21, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 423, column: 7)
!4990 = !DILocation(line: 423, column: 27, scope: !4989)
!4991 = !DILocation(line: 423, column: 34, scope: !4989)
!4992 = !DILocation(line: 423, column: 42, scope: !4989)
!4993 = !DILocation(line: 424, column: 8, scope: !4989)
!4994 = !DILocation(line: 423, column: 7, scope: !4989)
!4995 = !DILocation(line: 423, column: 7, scope: !4898)
!4996 = !DILocation(line: 425, column: 4, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 424, column: 24)
!4998 = !DILocation(line: 426, column: 4, scope: !4997)
!4999 = !DILocation(line: 429, column: 10, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 429, column: 3)
!5001 = !DILocation(line: 429, column: 8, scope: !5000)
!5002 = !DILocation(line: 429, column: 15, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 429, column: 3)
!5004 = !DILocation(line: 429, column: 17, scope: !5003)
!5005 = !DILocation(line: 429, column: 3, scope: !5000)
!5006 = !DILocation(line: 430, column: 12, scope: !5003)
!5007 = !DILocation(line: 430, column: 4, scope: !5003)
!5008 = !DILocation(line: 430, column: 14, scope: !5003)
!5009 = !DILocation(line: 429, column: 23, scope: !5003)
!5010 = !DILocation(line: 429, column: 3, scope: !5003)
!5011 = distinct !{!5011, !5005, !5012}
!5012 = !DILocation(line: 430, column: 15, scope: !5000)
!5013 = !DILocation(line: 432, column: 10, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 432, column: 3)
!5015 = !DILocation(line: 432, column: 8, scope: !5014)
!5016 = !DILocation(line: 432, column: 15, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 432, column: 3)
!5018 = !DILocation(line: 432, column: 17, scope: !5017)
!5019 = !DILocation(line: 432, column: 3, scope: !5014)
!5020 = !DILocation(line: 433, column: 4, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 432, column: 27)
!5022 = !DILocation(line: 434, column: 21, scope: !5021)
!5023 = !DILocation(line: 434, column: 22, scope: !5021)
!5024 = !DILocation(line: 434, column: 4, scope: !5021)
!5025 = !DILocation(line: 434, column: 19, scope: !5021)
!5026 = !DILocation(line: 435, column: 23, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 435, column: 8)
!5028 = !DILocation(line: 435, column: 29, scope: !5027)
!5029 = !DILocation(line: 435, column: 36, scope: !5027)
!5030 = !DILocation(line: 435, column: 44, scope: !5027)
!5031 = !DILocation(line: 436, column: 9, scope: !5027)
!5032 = !DILocation(line: 435, column: 8, scope: !5027)
!5033 = !DILocation(line: 435, column: 8, scope: !5021)
!5034 = !DILocation(line: 437, column: 5, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 436, column: 25)
!5036 = !DILocation(line: 438, column: 5, scope: !5035)
!5037 = !DILocation(line: 440, column: 4, scope: !5021)
!5038 = !DILocation(line: 442, column: 22, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 442, column: 8)
!5040 = !DILocation(line: 442, column: 28, scope: !5039)
!5041 = !DILocation(line: 442, column: 35, scope: !5039)
!5042 = !DILocation(line: 442, column: 43, scope: !5039)
!5043 = !DILocation(line: 443, column: 17, scope: !5039)
!5044 = !DILocation(line: 443, column: 18, scope: !5039)
!5045 = !DILocation(line: 443, column: 9, scope: !5039)
!5046 = !DILocation(line: 442, column: 8, scope: !5039)
!5047 = !DILocation(line: 442, column: 8, scope: !5021)
!5048 = !DILocation(line: 444, column: 5, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5039, file: !3, line: 443, column: 26)
!5050 = !DILocation(line: 445, column: 5, scope: !5049)
!5051 = !DILocation(line: 448, column: 21, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 448, column: 8)
!5053 = !DILocation(line: 448, column: 22, scope: !5052)
!5054 = !DILocation(line: 448, column: 24, scope: !5052)
!5055 = !DILocation(line: 448, column: 13, scope: !5052)
!5056 = !DILocation(line: 448, column: 8, scope: !5052)
!5057 = !DILocation(line: 448, column: 29, scope: !5052)
!5058 = !DILocation(line: 448, column: 30, scope: !5052)
!5059 = !DILocation(line: 448, column: 27, scope: !5052)
!5060 = !DILocation(line: 448, column: 8, scope: !5021)
!5061 = !DILocation(line: 449, column: 7, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 448, column: 33)
!5063 = !DILocation(line: 450, column: 4, scope: !5062)
!5064 = !DILocation(line: 451, column: 3, scope: !5021)
!5065 = !DILocation(line: 432, column: 23, scope: !5017)
!5066 = !DILocation(line: 432, column: 3, scope: !5017)
!5067 = distinct !{!5067, !5019, !5068}
!5068 = !DILocation(line: 451, column: 3, scope: !5014)
!5069 = !DILocation(line: 452, column: 3, scope: !4898)
!5070 = !DILocation(line: 452, column: 3, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 452, column: 3)
!5072 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 452, column: 3)
!5073 = !DILocation(line: 452, column: 3, scope: !5072)
!5074 = !DILocation(line: 452, column: 3, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 452, column: 3)
!5076 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 452, column: 3)
!5077 = !DILocation(line: 452, column: 3, scope: !5076)
!5078 = !DILocation(line: 454, column: 3, scope: !4898)
!5079 = !DILocation(line: 458, column: 3, scope: !4898)
!5080 = !DILocation(line: 458, column: 14, scope: !4898)
!5081 = !DILocation(line: 459, column: 3, scope: !4898)
!5082 = !DILocation(line: 459, column: 14, scope: !4898)
!5083 = !DILocation(line: 460, column: 3, scope: !4898)
!5084 = !DILocation(line: 460, column: 14, scope: !4898)
!5085 = !DILocation(line: 461, column: 3, scope: !4898)
!5086 = !DILocation(line: 461, column: 14, scope: !4898)
!5087 = !DILocation(line: 462, column: 3, scope: !4898)
!5088 = !DILocation(line: 463, column: 22, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 463, column: 7)
!5090 = !DILocation(line: 463, column: 28, scope: !5089)
!5091 = !DILocation(line: 463, column: 35, scope: !5089)
!5092 = !DILocation(line: 463, column: 43, scope: !5089)
!5093 = !DILocation(line: 464, column: 8, scope: !5089)
!5094 = !DILocation(line: 463, column: 7, scope: !5089)
!5095 = !DILocation(line: 463, column: 7, scope: !4898)
!5096 = !DILocation(line: 465, column: 4, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 464, column: 20)
!5098 = !DILocation(line: 466, column: 4, scope: !5097)
!5099 = !DILocation(line: 468, column: 3, scope: !4898)
!5100 = !DILocation(line: 469, column: 21, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 469, column: 7)
!5102 = !DILocation(line: 469, column: 27, scope: !5101)
!5103 = !DILocation(line: 469, column: 34, scope: !5101)
!5104 = !DILocation(line: 469, column: 42, scope: !5101)
!5105 = !DILocation(line: 470, column: 8, scope: !5101)
!5106 = !DILocation(line: 469, column: 7, scope: !5101)
!5107 = !DILocation(line: 469, column: 7, scope: !4898)
!5108 = !DILocation(line: 471, column: 4, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5101, file: !3, line: 470, column: 23)
!5110 = !DILocation(line: 472, column: 4, scope: !5109)
!5111 = !DILocation(line: 474, column: 3, scope: !4898)
!5112 = !DILocation(line: 474, column: 10, scope: !4898)
!5113 = !DILocation(line: 474, column: 22, scope: !4898)
!5114 = !DILocation(line: 475, column: 2, scope: !4898)
!5115 = !DILocation(line: 477, column: 2, scope: !4870)
!5116 = !DILocation(line: 478, column: 1, scope: !4870)
!5117 = distinct !DISubprogram(name: "or51211_sleep", scope: !3, file: !3, line: 344, type: !4057, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5118 = !DILocalVariable(name: "fe", arg: 1, scope: !5117, file: !3, line: 344, type: !4028)
!5119 = !DILocation(line: 344, column: 47, scope: !5117)
!5120 = !DILocation(line: 346, column: 2, scope: !5117)
!5121 = distinct !DISubprogram(name: "or51211_set_parameters", scope: !3, file: !3, line: 205, type: !4057, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5122 = !DILocalVariable(name: "fe", arg: 1, scope: !5121, file: !3, line: 205, type: !4028)
!5123 = !DILocation(line: 205, column: 56, scope: !5121)
!5124 = !DILocalVariable(name: "p", scope: !5121, file: !3, line: 207, type: !4090)
!5125 = !DILocation(line: 207, column: 34, scope: !5121)
!5126 = !DILocation(line: 207, column: 39, scope: !5121)
!5127 = !DILocation(line: 207, column: 43, scope: !5121)
!5128 = !DILocalVariable(name: "state", scope: !5121, file: !3, line: 208, type: !301)
!5129 = !DILocation(line: 208, column: 24, scope: !5121)
!5130 = !DILocation(line: 208, column: 32, scope: !5121)
!5131 = !DILocation(line: 208, column: 36, scope: !5121)
!5132 = !DILocation(line: 211, column: 6, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 211, column: 6)
!5134 = !DILocation(line: 211, column: 13, scope: !5133)
!5135 = !DILocation(line: 211, column: 34, scope: !5133)
!5136 = !DILocation(line: 211, column: 37, scope: !5133)
!5137 = !DILocation(line: 211, column: 31, scope: !5133)
!5138 = !DILocation(line: 211, column: 6, scope: !5121)
!5139 = !DILocation(line: 212, column: 7, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 212, column: 7)
!5141 = distinct !DILexicalBlock(scope: !5133, file: !3, line: 211, column: 48)
!5142 = !DILocation(line: 212, column: 11, scope: !5140)
!5143 = !DILocation(line: 212, column: 15, scope: !5140)
!5144 = !DILocation(line: 212, column: 25, scope: !5140)
!5145 = !DILocation(line: 212, column: 7, scope: !5141)
!5146 = !DILocation(line: 213, column: 4, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 212, column: 37)
!5148 = !DILocation(line: 213, column: 8, scope: !5147)
!5149 = !DILocation(line: 213, column: 12, scope: !5147)
!5150 = !DILocation(line: 213, column: 22, scope: !5147)
!5151 = !DILocation(line: 213, column: 33, scope: !5147)
!5152 = !DILocation(line: 214, column: 8, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 214, column: 8)
!5154 = !DILocation(line: 214, column: 12, scope: !5153)
!5155 = !DILocation(line: 214, column: 16, scope: !5153)
!5156 = !DILocation(line: 214, column: 8, scope: !5147)
!5157 = !DILocation(line: 214, column: 31, scope: !5153)
!5158 = !DILocation(line: 214, column: 35, scope: !5153)
!5159 = !DILocation(line: 214, column: 39, scope: !5153)
!5160 = !DILocation(line: 214, column: 53, scope: !5153)
!5161 = !DILocation(line: 215, column: 3, scope: !5147)
!5162 = !DILocation(line: 218, column: 19, scope: !5141)
!5163 = !DILocation(line: 218, column: 3, scope: !5141)
!5164 = !DILocation(line: 221, column: 30, scope: !5141)
!5165 = !DILocation(line: 221, column: 33, scope: !5141)
!5166 = !DILocation(line: 221, column: 3, scope: !5141)
!5167 = !DILocation(line: 221, column: 10, scope: !5141)
!5168 = !DILocation(line: 221, column: 28, scope: !5141)
!5169 = !DILocation(line: 222, column: 2, scope: !5141)
!5170 = !DILocation(line: 223, column: 2, scope: !5121)
!5171 = distinct !DISubprogram(name: "or51211_get_tune_settings", scope: !3, file: !3, line: 480, type: !4078, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5172 = !DILocalVariable(name: "fe", arg: 1, scope: !5171, file: !3, line: 480, type: !4028)
!5173 = !DILocation(line: 480, column: 59, scope: !5171)
!5174 = !DILocalVariable(name: "fesettings", arg: 2, scope: !5171, file: !3, line: 481, type: !4080)
!5175 = !DILocation(line: 481, column: 45, scope: !5171)
!5176 = !DILocation(line: 483, column: 2, scope: !5171)
!5177 = !DILocation(line: 483, column: 14, scope: !5171)
!5178 = !DILocation(line: 483, column: 27, scope: !5171)
!5179 = !DILocation(line: 484, column: 2, scope: !5171)
!5180 = !DILocation(line: 484, column: 14, scope: !5171)
!5181 = !DILocation(line: 484, column: 24, scope: !5171)
!5182 = !DILocation(line: 485, column: 2, scope: !5171)
!5183 = !DILocation(line: 485, column: 14, scope: !5171)
!5184 = !DILocation(line: 485, column: 24, scope: !5171)
!5185 = !DILocation(line: 486, column: 2, scope: !5171)
!5186 = distinct !DISubprogram(name: "or51211_read_status", scope: !3, file: !3, line: 226, type: !4165, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5187 = !DILocalVariable(name: "fe", arg: 1, scope: !5186, file: !3, line: 226, type: !4028)
!5188 = !DILocation(line: 226, column: 53, scope: !5186)
!5189 = !DILocalVariable(name: "status", arg: 2, scope: !5186, file: !3, line: 226, type: !4070)
!5190 = !DILocation(line: 226, column: 73, scope: !5186)
!5191 = !DILocalVariable(name: "state", scope: !5186, file: !3, line: 228, type: !301)
!5192 = !DILocation(line: 228, column: 24, scope: !5186)
!5193 = !DILocation(line: 228, column: 32, scope: !5186)
!5194 = !DILocation(line: 228, column: 36, scope: !5186)
!5195 = !DILocalVariable(name: "rec_buf", scope: !5186, file: !3, line: 229, type: !5196)
!5196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 16, elements: !2391)
!5197 = !DILocation(line: 229, column: 16, scope: !5186)
!5198 = !DILocalVariable(name: "snd_buf", scope: !5186, file: !3, line: 230, type: !5199)
!5199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 32, elements: !2351)
!5200 = !DILocation(line: 230, column: 16, scope: !5186)
!5201 = !DILocation(line: 231, column: 3, scope: !5186)
!5202 = !DILocation(line: 231, column: 10, scope: !5186)
!5203 = !DILocation(line: 234, column: 21, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 234, column: 6)
!5205 = !DILocation(line: 234, column: 27, scope: !5204)
!5206 = !DILocation(line: 234, column: 34, scope: !5204)
!5207 = !DILocation(line: 234, column: 42, scope: !5204)
!5208 = !DILocation(line: 234, column: 56, scope: !5204)
!5209 = !DILocation(line: 234, column: 6, scope: !5204)
!5210 = !DILocation(line: 234, column: 6, scope: !5186)
!5211 = !DILocation(line: 235, column: 3, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 234, column: 68)
!5213 = !DILocation(line: 236, column: 3, scope: !5212)
!5214 = !DILocation(line: 238, column: 2, scope: !5186)
!5215 = !DILocation(line: 239, column: 20, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 239, column: 6)
!5217 = !DILocation(line: 239, column: 26, scope: !5216)
!5218 = !DILocation(line: 239, column: 33, scope: !5216)
!5219 = !DILocation(line: 239, column: 41, scope: !5216)
!5220 = !DILocation(line: 239, column: 55, scope: !5216)
!5221 = !DILocation(line: 239, column: 6, scope: !5216)
!5222 = !DILocation(line: 239, column: 6, scope: !5186)
!5223 = !DILocation(line: 240, column: 3, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 239, column: 67)
!5225 = !DILocation(line: 241, column: 3, scope: !5224)
!5226 = !DILocation(line: 243, column: 2, scope: !5186)
!5227 = !DILocation(line: 243, column: 2, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5229, file: !3, line: 243, column: 2)
!5229 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 243, column: 2)
!5230 = !DILocation(line: 243, column: 2, scope: !5229)
!5231 = !DILocation(line: 243, column: 2, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 243, column: 2)
!5233 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 243, column: 2)
!5234 = !DILocation(line: 243, column: 2, scope: !5233)
!5235 = !DILocation(line: 245, column: 6, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 245, column: 6)
!5237 = !DILocation(line: 245, column: 17, scope: !5236)
!5238 = !DILocation(line: 245, column: 6, scope: !5186)
!5239 = !DILocation(line: 246, column: 4, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 245, column: 26)
!5241 = !DILocation(line: 246, column: 11, scope: !5240)
!5242 = !DILocation(line: 247, column: 4, scope: !5240)
!5243 = !DILocation(line: 247, column: 11, scope: !5240)
!5244 = !DILocation(line: 248, column: 4, scope: !5240)
!5245 = !DILocation(line: 248, column: 11, scope: !5240)
!5246 = !DILocation(line: 249, column: 4, scope: !5240)
!5247 = !DILocation(line: 249, column: 11, scope: !5240)
!5248 = !DILocation(line: 250, column: 4, scope: !5240)
!5249 = !DILocation(line: 250, column: 11, scope: !5240)
!5250 = !DILocation(line: 251, column: 2, scope: !5240)
!5251 = !DILocation(line: 252, column: 2, scope: !5186)
!5252 = !DILocation(line: 253, column: 1, scope: !5186)
!5253 = distinct !DISubprogram(name: "or51211_read_ber", scope: !3, file: !3, line: 332, type: !4169, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5254 = !DILocalVariable(name: "fe", arg: 1, scope: !5253, file: !3, line: 332, type: !4028)
!5255 = !DILocation(line: 332, column: 50, scope: !5253)
!5256 = !DILocalVariable(name: "ber", arg: 2, scope: !5253, file: !3, line: 332, type: !2749)
!5257 = !DILocation(line: 332, column: 59, scope: !5253)
!5258 = !DILocation(line: 334, column: 3, scope: !5253)
!5259 = !DILocation(line: 334, column: 7, scope: !5253)
!5260 = !DILocation(line: 335, column: 2, scope: !5253)
!5261 = distinct !DISubprogram(name: "or51211_read_signal_strength", scope: !3, file: !3, line: 310, type: !4173, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5262 = !DILocalVariable(name: "fe", arg: 1, scope: !5261, file: !3, line: 310, type: !4028)
!5263 = !DILocation(line: 310, column: 62, scope: !5261)
!5264 = !DILocalVariable(name: "strength", arg: 2, scope: !5261, file: !3, line: 310, type: !4175)
!5265 = !DILocation(line: 310, column: 71, scope: !5261)
!5266 = !DILocalVariable(name: "state", scope: !5261, file: !3, line: 315, type: !301)
!5267 = !DILocation(line: 315, column: 24, scope: !5261)
!5268 = !DILocation(line: 315, column: 55, scope: !5261)
!5269 = !DILocation(line: 315, column: 59, scope: !5261)
!5270 = !DILocation(line: 315, column: 32, scope: !5261)
!5271 = !DILocalVariable(name: "snr", scope: !5261, file: !3, line: 316, type: !339)
!5272 = !DILocation(line: 316, column: 6, scope: !5261)
!5273 = !DILocalVariable(name: "ret", scope: !5261, file: !3, line: 317, type: !294)
!5274 = !DILocation(line: 317, column: 6, scope: !5261)
!5275 = !DILocation(line: 319, column: 8, scope: !5261)
!5276 = !DILocation(line: 319, column: 12, scope: !5261)
!5277 = !DILocation(line: 319, column: 16, scope: !5261)
!5278 = !DILocation(line: 319, column: 25, scope: !5261)
!5279 = !DILocation(line: 319, column: 6, scope: !5261)
!5280 = !DILocation(line: 320, column: 6, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 320, column: 6)
!5282 = !DILocation(line: 320, column: 10, scope: !5281)
!5283 = !DILocation(line: 320, column: 6, scope: !5261)
!5284 = !DILocation(line: 321, column: 10, scope: !5281)
!5285 = !DILocation(line: 321, column: 3, scope: !5281)
!5286 = !DILocation(line: 324, column: 6, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 324, column: 6)
!5288 = !DILocation(line: 324, column: 13, scope: !5287)
!5289 = !DILocation(line: 324, column: 17, scope: !5287)
!5290 = !DILocation(line: 324, column: 6, scope: !5261)
!5291 = !DILocation(line: 325, column: 4, scope: !5287)
!5292 = !DILocation(line: 325, column: 13, scope: !5287)
!5293 = !DILocation(line: 325, column: 3, scope: !5287)
!5294 = !DILocation(line: 327, column: 15, scope: !5287)
!5295 = !DILocation(line: 327, column: 22, scope: !5287)
!5296 = !DILocation(line: 327, column: 26, scope: !5287)
!5297 = !DILocation(line: 327, column: 4, scope: !5287)
!5298 = !DILocation(line: 327, column: 13, scope: !5287)
!5299 = !DILocation(line: 329, column: 2, scope: !5261)
!5300 = !DILocation(line: 330, column: 1, scope: !5261)
!5301 = distinct !DISubprogram(name: "or51211_read_snr", scope: !3, file: !3, line: 281, type: !4173, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5302 = !DILocalVariable(name: "fe", arg: 1, scope: !5301, file: !3, line: 281, type: !4028)
!5303 = !DILocation(line: 281, column: 50, scope: !5301)
!5304 = !DILocalVariable(name: "snr", arg: 2, scope: !5301, file: !3, line: 281, type: !4175)
!5305 = !DILocation(line: 281, column: 59, scope: !5301)
!5306 = !DILocalVariable(name: "state", scope: !5301, file: !3, line: 283, type: !301)
!5307 = !DILocation(line: 283, column: 24, scope: !5301)
!5308 = !DILocation(line: 283, column: 32, scope: !5301)
!5309 = !DILocation(line: 283, column: 36, scope: !5301)
!5310 = !DILocalVariable(name: "rec_buf", scope: !5301, file: !3, line: 284, type: !4451)
!5311 = !DILocation(line: 284, column: 5, scope: !5301)
!5312 = !DILocalVariable(name: "snd_buf", scope: !5301, file: !3, line: 285, type: !5313)
!5313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 24, elements: !921)
!5314 = !DILocation(line: 285, column: 5, scope: !5301)
!5315 = !DILocation(line: 288, column: 2, scope: !5301)
!5316 = !DILocation(line: 288, column: 13, scope: !5301)
!5317 = !DILocation(line: 289, column: 2, scope: !5301)
!5318 = !DILocation(line: 289, column: 13, scope: !5301)
!5319 = !DILocation(line: 290, column: 2, scope: !5301)
!5320 = !DILocation(line: 290, column: 13, scope: !5301)
!5321 = !DILocation(line: 292, column: 21, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 292, column: 6)
!5323 = !DILocation(line: 292, column: 27, scope: !5322)
!5324 = !DILocation(line: 292, column: 34, scope: !5322)
!5325 = !DILocation(line: 292, column: 42, scope: !5322)
!5326 = !DILocation(line: 292, column: 56, scope: !5322)
!5327 = !DILocation(line: 292, column: 6, scope: !5322)
!5328 = !DILocation(line: 292, column: 6, scope: !5301)
!5329 = !DILocation(line: 293, column: 3, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 292, column: 68)
!5331 = !DILocation(line: 294, column: 3, scope: !5330)
!5332 = !DILocation(line: 296, column: 20, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 296, column: 6)
!5334 = !DILocation(line: 296, column: 26, scope: !5333)
!5335 = !DILocation(line: 296, column: 33, scope: !5333)
!5336 = !DILocation(line: 296, column: 41, scope: !5333)
!5337 = !DILocation(line: 296, column: 55, scope: !5333)
!5338 = !DILocation(line: 296, column: 6, scope: !5333)
!5339 = !DILocation(line: 296, column: 6, scope: !5301)
!5340 = !DILocation(line: 297, column: 3, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5333, file: !3, line: 296, column: 67)
!5342 = !DILocation(line: 298, column: 3, scope: !5341)
!5343 = !DILocation(line: 301, column: 29, scope: !5301)
!5344 = !DILocation(line: 301, column: 15, scope: !5301)
!5345 = !DILocation(line: 301, column: 2, scope: !5301)
!5346 = !DILocation(line: 301, column: 9, scope: !5301)
!5347 = !DILocation(line: 301, column: 13, scope: !5301)
!5348 = !DILocation(line: 302, column: 10, scope: !5301)
!5349 = !DILocation(line: 302, column: 17, scope: !5301)
!5350 = !DILocation(line: 302, column: 22, scope: !5301)
!5351 = !DILocation(line: 302, column: 9, scope: !5301)
!5352 = !DILocation(line: 302, column: 3, scope: !5301)
!5353 = !DILocation(line: 302, column: 7, scope: !5301)
!5354 = !DILocation(line: 304, column: 2, scope: !5301)
!5355 = !DILocation(line: 304, column: 2, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 304, column: 2)
!5357 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 304, column: 2)
!5358 = !DILocation(line: 304, column: 2, scope: !5357)
!5359 = !DILocation(line: 304, column: 2, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 304, column: 2)
!5361 = distinct !DILexicalBlock(scope: !5356, file: !3, line: 304, column: 2)
!5362 = !DILocation(line: 304, column: 2, scope: !5361)
!5363 = !DILocation(line: 307, column: 2, scope: !5301)
!5364 = !DILocation(line: 308, column: 1, scope: !5301)
!5365 = distinct !DISubprogram(name: "or51211_read_ucblocks", scope: !3, file: !3, line: 338, type: !4169, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5366 = !DILocalVariable(name: "fe", arg: 1, scope: !5365, file: !3, line: 338, type: !4028)
!5367 = !DILocation(line: 338, column: 55, scope: !5365)
!5368 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !5365, file: !3, line: 338, type: !2749)
!5369 = !DILocation(line: 338, column: 64, scope: !5365)
!5370 = !DILocation(line: 340, column: 3, scope: !5365)
!5371 = !DILocation(line: 340, column: 12, scope: !5365)
!5372 = !DILocation(line: 341, column: 2, scope: !5365)
!5373 = distinct !DISubprogram(name: "or51211_load_firmware", scope: !3, file: !3, line: 93, type: !5374, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5374 = !DISubroutineType(types: !5375)
!5375 = !{!294, !4028, !4348}
!5376 = !DILocalVariable(name: "fe", arg: 1, scope: !5373, file: !3, line: 93, type: !4028)
!5377 = !DILocation(line: 93, column: 56, scope: !5373)
!5378 = !DILocalVariable(name: "fw", arg: 2, scope: !5373, file: !3, line: 94, type: !4348)
!5379 = !DILocation(line: 94, column: 30, scope: !5373)
!5380 = !DILocalVariable(name: "state", scope: !5373, file: !3, line: 96, type: !301)
!5381 = !DILocation(line: 96, column: 24, scope: !5373)
!5382 = !DILocation(line: 96, column: 32, scope: !5373)
!5383 = !DILocation(line: 96, column: 36, scope: !5373)
!5384 = !DILocalVariable(name: "tudata", scope: !5373, file: !3, line: 97, type: !5385)
!5385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 4680, elements: !5386)
!5386 = !{!5387}
!5387 = !DISubrange(count: 585)
!5388 = !DILocation(line: 97, column: 5, scope: !5373)
!5389 = !DILocalVariable(name: "i", scope: !5373, file: !3, line: 98, type: !294)
!5390 = !DILocation(line: 98, column: 6, scope: !5373)
!5391 = !DILocation(line: 100, column: 2, scope: !5373)
!5392 = !DILocation(line: 100, column: 2, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 100, column: 2)
!5394 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 100, column: 2)
!5395 = !DILocation(line: 100, column: 2, scope: !5394)
!5396 = !DILocation(line: 100, column: 2, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 100, column: 2)
!5398 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 100, column: 2)
!5399 = !DILocation(line: 100, column: 2, scope: !5398)
!5400 = !DILocation(line: 103, column: 2, scope: !5373)
!5401 = !DILocation(line: 103, column: 12, scope: !5373)
!5402 = !DILocation(line: 104, column: 21, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 104, column: 6)
!5404 = !DILocation(line: 104, column: 32, scope: !5403)
!5405 = !DILocation(line: 104, column: 6, scope: !5403)
!5406 = !DILocation(line: 104, column: 6, scope: !5373)
!5407 = !DILocation(line: 105, column: 3, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 104, column: 43)
!5409 = !DILocation(line: 106, column: 3, scope: !5408)
!5410 = !DILocation(line: 108, column: 20, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 108, column: 6)
!5412 = !DILocation(line: 108, column: 32, scope: !5411)
!5413 = !DILocation(line: 108, column: 6, scope: !5411)
!5414 = !DILocation(line: 108, column: 6, scope: !5373)
!5415 = !DILocation(line: 109, column: 3, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5411, file: !3, line: 108, column: 50)
!5417 = !DILocation(line: 110, column: 3, scope: !5416)
!5418 = !DILocation(line: 114, column: 9, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 114, column: 2)
!5420 = !DILocation(line: 114, column: 7, scope: !5419)
!5421 = !DILocation(line: 114, column: 14, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5419, file: !3, line: 114, column: 2)
!5423 = !DILocation(line: 114, column: 16, scope: !5422)
!5424 = !DILocation(line: 114, column: 2, scope: !5419)
!5425 = !DILocation(line: 115, column: 15, scope: !5422)
!5426 = !DILocation(line: 115, column: 19, scope: !5422)
!5427 = !DILocation(line: 115, column: 24, scope: !5422)
!5428 = !DILocation(line: 115, column: 10, scope: !5422)
!5429 = !DILocation(line: 115, column: 3, scope: !5422)
!5430 = !DILocation(line: 115, column: 13, scope: !5422)
!5431 = !DILocation(line: 114, column: 24, scope: !5422)
!5432 = !DILocation(line: 114, column: 2, scope: !5422)
!5433 = distinct !{!5433, !5424, !5434}
!5434 = !DILocation(line: 115, column: 25, scope: !5419)
!5435 = !DILocation(line: 117, column: 9, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 117, column: 2)
!5437 = !DILocation(line: 117, column: 7, scope: !5436)
!5438 = !DILocation(line: 117, column: 14, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 117, column: 2)
!5440 = !DILocation(line: 117, column: 16, scope: !5439)
!5441 = !DILocation(line: 117, column: 2, scope: !5436)
!5442 = !DILocation(line: 118, column: 19, scope: !5439)
!5443 = !DILocation(line: 118, column: 23, scope: !5439)
!5444 = !DILocation(line: 118, column: 32, scope: !5439)
!5445 = !DILocation(line: 118, column: 31, scope: !5439)
!5446 = !DILocation(line: 118, column: 10, scope: !5439)
!5447 = !DILocation(line: 118, column: 11, scope: !5439)
!5448 = !DILocation(line: 118, column: 3, scope: !5439)
!5449 = !DILocation(line: 118, column: 17, scope: !5439)
!5450 = !DILocation(line: 117, column: 24, scope: !5439)
!5451 = !DILocation(line: 117, column: 2, scope: !5439)
!5452 = distinct !{!5452, !5441, !5453}
!5453 = !DILocation(line: 118, column: 33, scope: !5436)
!5454 = !DILocation(line: 120, column: 2, scope: !5373)
!5455 = !DILocation(line: 120, column: 9, scope: !5373)
!5456 = !DILocation(line: 120, column: 17, scope: !5373)
!5457 = !DILocation(line: 120, column: 23, scope: !5373)
!5458 = !DILocation(line: 122, column: 21, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 122, column: 6)
!5460 = !DILocation(line: 122, column: 27, scope: !5459)
!5461 = !DILocation(line: 122, column: 34, scope: !5459)
!5462 = !DILocation(line: 122, column: 42, scope: !5459)
!5463 = !DILocation(line: 122, column: 56, scope: !5459)
!5464 = !DILocation(line: 122, column: 6, scope: !5459)
!5465 = !DILocation(line: 122, column: 6, scope: !5373)
!5466 = !DILocation(line: 123, column: 3, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 122, column: 69)
!5468 = !DILocation(line: 124, column: 3, scope: !5467)
!5469 = !DILocation(line: 126, column: 2, scope: !5373)
!5470 = !DILocation(line: 128, column: 21, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 128, column: 6)
!5472 = !DILocation(line: 128, column: 27, scope: !5471)
!5473 = !DILocation(line: 128, column: 34, scope: !5471)
!5474 = !DILocation(line: 128, column: 42, scope: !5471)
!5475 = !DILocation(line: 129, column: 8, scope: !5471)
!5476 = !DILocation(line: 129, column: 12, scope: !5471)
!5477 = !DILocation(line: 128, column: 6, scope: !5471)
!5478 = !DILocation(line: 128, column: 6, scope: !5373)
!5479 = !DILocation(line: 130, column: 3, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5471, file: !3, line: 129, column: 29)
!5481 = !DILocation(line: 131, column: 3, scope: !5480)
!5482 = !DILocation(line: 133, column: 2, scope: !5373)
!5483 = !DILocation(line: 135, column: 21, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 135, column: 6)
!5485 = !DILocation(line: 135, column: 27, scope: !5484)
!5486 = !DILocation(line: 135, column: 34, scope: !5484)
!5487 = !DILocation(line: 135, column: 42, scope: !5484)
!5488 = !DILocation(line: 135, column: 6, scope: !5484)
!5489 = !DILocation(line: 135, column: 6, scope: !5373)
!5490 = !DILocation(line: 136, column: 3, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 135, column: 68)
!5492 = !DILocation(line: 137, column: 3, scope: !5491)
!5493 = !DILocation(line: 141, column: 2, scope: !5373)
!5494 = !DILocation(line: 142, column: 21, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 142, column: 6)
!5496 = !DILocation(line: 142, column: 27, scope: !5495)
!5497 = !DILocation(line: 142, column: 34, scope: !5495)
!5498 = !DILocation(line: 142, column: 42, scope: !5495)
!5499 = !DILocation(line: 142, column: 6, scope: !5495)
!5500 = !DILocation(line: 142, column: 6, scope: !5373)
!5501 = !DILocation(line: 143, column: 3, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5495, file: !3, line: 142, column: 68)
!5503 = !DILocation(line: 144, column: 3, scope: !5502)
!5504 = !DILocation(line: 146, column: 2, scope: !5373)
!5505 = !DILocation(line: 148, column: 2, scope: !5373)
!5506 = !DILocation(line: 149, column: 2, scope: !5373)
!5507 = !DILocation(line: 150, column: 1, scope: !5373)
!5508 = distinct !DISubprogram(name: "i2c_writebytes", scope: !3, file: !3, line: 58, type: !5509, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5509 = !DISubroutineType(types: !5510)
!5510 = !{!294, !301, !296, !4064, !294}
!5511 = !DILocalVariable(name: "state", arg: 1, scope: !5508, file: !3, line: 58, type: !301)
!5512 = !DILocation(line: 58, column: 50, scope: !5508)
!5513 = !DILocalVariable(name: "reg", arg: 2, scope: !5508, file: !3, line: 58, type: !296)
!5514 = !DILocation(line: 58, column: 60, scope: !5508)
!5515 = !DILocalVariable(name: "buf", arg: 3, scope: !5508, file: !3, line: 58, type: !4064)
!5516 = !DILocation(line: 58, column: 75, scope: !5508)
!5517 = !DILocalVariable(name: "len", arg: 4, scope: !5508, file: !3, line: 59, type: !294)
!5518 = !DILocation(line: 59, column: 11, scope: !5508)
!5519 = !DILocalVariable(name: "err", scope: !5508, file: !3, line: 61, type: !294)
!5520 = !DILocation(line: 61, column: 6, scope: !5508)
!5521 = !DILocalVariable(name: "msg", scope: !5508, file: !3, line: 62, type: !324)
!5522 = !DILocation(line: 62, column: 17, scope: !5508)
!5523 = !DILocation(line: 63, column: 13, scope: !5508)
!5524 = !DILocation(line: 63, column: 6, scope: !5508)
!5525 = !DILocation(line: 63, column: 11, scope: !5508)
!5526 = !DILocation(line: 64, column: 6, scope: !5508)
!5527 = !DILocation(line: 64, column: 12, scope: !5508)
!5528 = !DILocation(line: 65, column: 13, scope: !5508)
!5529 = !DILocation(line: 65, column: 6, scope: !5508)
!5530 = !DILocation(line: 65, column: 11, scope: !5508)
!5531 = !DILocation(line: 66, column: 19, scope: !5508)
!5532 = !DILocation(line: 66, column: 6, scope: !5508)
!5533 = !DILocation(line: 66, column: 11, scope: !5508)
!5534 = !DILocation(line: 68, column: 27, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 68, column: 6)
!5536 = !DILocation(line: 68, column: 34, scope: !5535)
!5537 = !DILocation(line: 68, column: 13, scope: !5535)
!5538 = !DILocation(line: 68, column: 11, scope: !5535)
!5539 = !DILocation(line: 68, column: 49, scope: !5535)
!5540 = !DILocation(line: 68, column: 6, scope: !5508)
!5541 = !DILocation(line: 69, column: 3, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 68, column: 55)
!5543 = !DILocation(line: 70, column: 3, scope: !5542)
!5544 = !DILocation(line: 73, column: 2, scope: !5508)
!5545 = !DILocation(line: 74, column: 1, scope: !5508)
!5546 = distinct !DISubprogram(name: "i2c_readbytes", scope: !3, file: !3, line: 76, type: !5547, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5547 = !DISubroutineType(types: !5548)
!5548 = !{!294, !301, !296, !295, !294}
!5549 = !DILocalVariable(name: "state", arg: 1, scope: !5546, file: !3, line: 76, type: !301)
!5550 = !DILocation(line: 76, column: 48, scope: !5546)
!5551 = !DILocalVariable(name: "reg", arg: 2, scope: !5546, file: !3, line: 76, type: !296)
!5552 = !DILocation(line: 76, column: 58, scope: !5546)
!5553 = !DILocalVariable(name: "buf", arg: 3, scope: !5546, file: !3, line: 76, type: !295)
!5554 = !DILocation(line: 76, column: 67, scope: !5546)
!5555 = !DILocalVariable(name: "len", arg: 4, scope: !5546, file: !3, line: 76, type: !294)
!5556 = !DILocation(line: 76, column: 76, scope: !5546)
!5557 = !DILocalVariable(name: "err", scope: !5546, file: !3, line: 78, type: !294)
!5558 = !DILocation(line: 78, column: 6, scope: !5546)
!5559 = !DILocalVariable(name: "msg", scope: !5546, file: !3, line: 79, type: !324)
!5560 = !DILocation(line: 79, column: 17, scope: !5546)
!5561 = !DILocation(line: 80, column: 13, scope: !5546)
!5562 = !DILocation(line: 80, column: 6, scope: !5546)
!5563 = !DILocation(line: 80, column: 11, scope: !5546)
!5564 = !DILocation(line: 81, column: 6, scope: !5546)
!5565 = !DILocation(line: 81, column: 12, scope: !5546)
!5566 = !DILocation(line: 82, column: 13, scope: !5546)
!5567 = !DILocation(line: 82, column: 6, scope: !5546)
!5568 = !DILocation(line: 82, column: 11, scope: !5546)
!5569 = !DILocation(line: 83, column: 13, scope: !5546)
!5570 = !DILocation(line: 83, column: 6, scope: !5546)
!5571 = !DILocation(line: 83, column: 11, scope: !5546)
!5572 = !DILocation(line: 85, column: 27, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 85, column: 6)
!5574 = !DILocation(line: 85, column: 34, scope: !5573)
!5575 = !DILocation(line: 85, column: 13, scope: !5573)
!5576 = !DILocation(line: 85, column: 11, scope: !5573)
!5577 = !DILocation(line: 85, column: 49, scope: !5573)
!5578 = !DILocation(line: 85, column: 6, scope: !5546)
!5579 = !DILocation(line: 86, column: 3, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 85, column: 55)
!5581 = !DILocation(line: 87, column: 3, scope: !5580)
!5582 = !DILocation(line: 90, column: 2, scope: !5546)
!5583 = !DILocation(line: 91, column: 1, scope: !5546)
!5584 = distinct !DISubprogram(name: "or51211_setmode", scope: !3, file: !3, line: 152, type: !4222, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5585 = !DILocalVariable(name: "fe", arg: 1, scope: !5584, file: !3, line: 152, type: !4028)
!5586 = !DILocation(line: 152, column: 49, scope: !5584)
!5587 = !DILocalVariable(name: "mode", arg: 2, scope: !5584, file: !3, line: 152, type: !294)
!5588 = !DILocation(line: 152, column: 57, scope: !5584)
!5589 = !DILocalVariable(name: "state", scope: !5584, file: !3, line: 154, type: !301)
!5590 = !DILocation(line: 154, column: 24, scope: !5584)
!5591 = !DILocation(line: 154, column: 32, scope: !5584)
!5592 = !DILocation(line: 154, column: 36, scope: !5584)
!5593 = !DILocalVariable(name: "rec_buf", scope: !5584, file: !3, line: 155, type: !5594)
!5594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 112, elements: !4460)
!5595 = !DILocation(line: 155, column: 5, scope: !5584)
!5596 = !DILocation(line: 157, column: 2, scope: !5584)
!5597 = !DILocation(line: 157, column: 9, scope: !5584)
!5598 = !DILocation(line: 157, column: 17, scope: !5584)
!5599 = !DILocation(line: 157, column: 25, scope: !5584)
!5600 = !DILocation(line: 157, column: 29, scope: !5584)
!5601 = !DILocation(line: 159, column: 21, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5584, file: !3, line: 159, column: 6)
!5603 = !DILocation(line: 159, column: 27, scope: !5602)
!5604 = !DILocation(line: 159, column: 34, scope: !5602)
!5605 = !DILocation(line: 159, column: 42, scope: !5602)
!5606 = !DILocation(line: 159, column: 6, scope: !5602)
!5607 = !DILocation(line: 159, column: 6, scope: !5584)
!5608 = !DILocation(line: 160, column: 3, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 159, column: 68)
!5610 = !DILocation(line: 161, column: 3, scope: !5609)
!5611 = !DILocation(line: 165, column: 2, scope: !5584)
!5612 = !DILocation(line: 166, column: 21, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5584, file: !3, line: 166, column: 6)
!5614 = !DILocation(line: 166, column: 27, scope: !5613)
!5615 = !DILocation(line: 166, column: 34, scope: !5613)
!5616 = !DILocation(line: 166, column: 42, scope: !5613)
!5617 = !DILocation(line: 166, column: 6, scope: !5613)
!5618 = !DILocation(line: 166, column: 6, scope: !5584)
!5619 = !DILocation(line: 167, column: 3, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 166, column: 68)
!5621 = !DILocation(line: 168, column: 3, scope: !5620)
!5622 = !DILocation(line: 171, column: 2, scope: !5584)
!5623 = !DILocation(line: 182, column: 21, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5584, file: !3, line: 182, column: 6)
!5625 = !DILocation(line: 182, column: 27, scope: !5624)
!5626 = !DILocation(line: 182, column: 34, scope: !5624)
!5627 = !DILocation(line: 182, column: 42, scope: !5624)
!5628 = !DILocation(line: 182, column: 6, scope: !5624)
!5629 = !DILocation(line: 182, column: 6, scope: !5584)
!5630 = !DILocation(line: 183, column: 3, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 182, column: 68)
!5632 = !DILocation(line: 184, column: 3, scope: !5631)
!5633 = !DILocation(line: 187, column: 2, scope: !5584)
!5634 = !DILocation(line: 187, column: 13, scope: !5584)
!5635 = !DILocation(line: 188, column: 2, scope: !5584)
!5636 = !DILocation(line: 188, column: 13, scope: !5584)
!5637 = !DILocation(line: 189, column: 2, scope: !5584)
!5638 = !DILocation(line: 189, column: 13, scope: !5584)
!5639 = !DILocation(line: 190, column: 2, scope: !5584)
!5640 = !DILocation(line: 190, column: 13, scope: !5584)
!5641 = !DILocation(line: 191, column: 2, scope: !5584)
!5642 = !DILocation(line: 192, column: 21, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5584, file: !3, line: 192, column: 6)
!5644 = !DILocation(line: 192, column: 27, scope: !5643)
!5645 = !DILocation(line: 192, column: 34, scope: !5643)
!5646 = !DILocation(line: 192, column: 42, scope: !5643)
!5647 = !DILocation(line: 192, column: 56, scope: !5643)
!5648 = !DILocation(line: 192, column: 6, scope: !5643)
!5649 = !DILocation(line: 192, column: 6, scope: !5584)
!5650 = !DILocation(line: 193, column: 3, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 192, column: 68)
!5652 = !DILocation(line: 194, column: 2, scope: !5651)
!5653 = !DILocation(line: 195, column: 2, scope: !5584)
!5654 = !DILocation(line: 196, column: 20, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5584, file: !3, line: 196, column: 6)
!5656 = !DILocation(line: 196, column: 26, scope: !5655)
!5657 = !DILocation(line: 196, column: 33, scope: !5655)
!5658 = !DILocation(line: 196, column: 41, scope: !5655)
!5659 = !DILocation(line: 196, column: 56, scope: !5655)
!5660 = !DILocation(line: 196, column: 6, scope: !5655)
!5661 = !DILocation(line: 196, column: 6, scope: !5584)
!5662 = !DILocation(line: 197, column: 3, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 196, column: 72)
!5664 = !DILocation(line: 198, column: 3, scope: !5663)
!5665 = !DILocation(line: 200, column: 2, scope: !5584)
!5666 = !DILocation(line: 200, column: 2, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5668, file: !3, line: 200, column: 2)
!5668 = distinct !DILexicalBlock(scope: !5584, file: !3, line: 200, column: 2)
!5669 = !DILocation(line: 200, column: 2, scope: !5668)
!5670 = !DILocation(line: 200, column: 2, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 200, column: 2)
!5672 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 200, column: 2)
!5673 = !DILocation(line: 200, column: 2, scope: !5672)
!5674 = !DILocation(line: 202, column: 2, scope: !5584)
!5675 = !DILocation(line: 203, column: 1, scope: !5584)
!5676 = distinct !DISubprogram(name: "calculate_snr", scope: !3, file: !3, line: 266, type: !5677, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{!355, !355, !355}
!5679 = !DILocalVariable(name: "mse", arg: 1, scope: !5676, file: !3, line: 266, type: !355)
!5680 = !DILocation(line: 266, column: 30, scope: !5676)
!5681 = !DILocalVariable(name: "c", arg: 2, scope: !5676, file: !3, line: 266, type: !355)
!5682 = !DILocation(line: 266, column: 39, scope: !5676)
!5683 = !DILocation(line: 268, column: 6, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 268, column: 6)
!5685 = !DILocation(line: 268, column: 10, scope: !5684)
!5686 = !DILocation(line: 268, column: 6, scope: !5676)
!5687 = !DILocation(line: 269, column: 3, scope: !5684)
!5688 = !DILocation(line: 271, column: 19, scope: !5676)
!5689 = !DILocation(line: 271, column: 10, scope: !5676)
!5690 = !DILocation(line: 271, column: 9, scope: !5676)
!5691 = !DILocation(line: 271, column: 6, scope: !5676)
!5692 = !DILocation(line: 272, column: 6, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 272, column: 6)
!5694 = !DILocation(line: 272, column: 12, scope: !5693)
!5695 = !DILocation(line: 272, column: 10, scope: !5693)
!5696 = !DILocation(line: 272, column: 6, scope: !5676)
!5697 = !DILocation(line: 276, column: 3, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5693, file: !3, line: 272, column: 15)
!5699 = !DILocation(line: 278, column: 13, scope: !5676)
!5700 = !DILocation(line: 278, column: 17, scope: !5676)
!5701 = !DILocation(line: 278, column: 15, scope: !5676)
!5702 = !DILocation(line: 278, column: 11, scope: !5676)
!5703 = !DILocation(line: 278, column: 2, scope: !5676)
!5704 = !DILocation(line: 279, column: 1, scope: !5676)
