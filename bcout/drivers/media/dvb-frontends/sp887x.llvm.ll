; ModuleID = '../bcout/drivers/media/dvb-frontends/sp887x.llvm.bc'
source_filename = "drivers/media/dvb-frontends/sp887x.c"
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
%struct.sp887x_config = type { i8, i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)* }
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
%struct.sp887x_state = type { %struct.i2c_adapter*, %struct.sp887x_config*, %struct.dvb_frontend, i8 }

@sp887x_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Spase SP887x DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 50500000, i32 858000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 1073753774 }, [8 x i8] c"\03\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @sp887x_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @sp887x_init, i32 (%struct.dvb_frontend*)* @sp887x_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @sp887x_setup_frontend_parameters, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @sp887x_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* null, i32 (%struct.dvb_frontend*, i32*)* @sp887x_read_status, i32 (%struct.dvb_frontend*, i32*)* @sp887x_read_ber, i32 (%struct.dvb_frontend*, i16*)* @sp887x_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @sp887x_read_snr, i32 (%struct.dvb_frontend*, i32*)* @sp887x_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* @sp887x_i2c_gate_ctrl, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !0
@__param_str_debug = internal constant [13 x i8] c"sp887x.debug\00", align 1, !dbg !4442
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !392
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !295
@__UNIQUE_ID_debugtype220 = internal constant [26 x i8] c"sp887x.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !367
@__UNIQUE_ID_debug221 = internal constant [64 x i8] c"sp887x.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1, !dbg !372
@__UNIQUE_ID_description222 = internal constant [57 x i8] c"sp887x.description=Spase sp887x DVB-T demodulator driver\00", section ".modinfo", align 1, !dbg !377
@__UNIQUE_ID_file223 = internal constant [47 x i8] c"sp887x.file=drivers/media/dvb-frontends/sp887x\00", section ".modinfo", align 1, !dbg !382
@__UNIQUE_ID_license224 = internal constant [19 x i8] c"sp887x.license=GPL\00", section ".modinfo", align 1, !dbg !387
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: readreg error (ret == %i)\0A\00", align 1
@__func__.sp887x_readreg = private unnamed_addr constant [15 x i8] c"sp887x_readreg\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"sp887x: waiting for firmware upload (%s)...\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"dvb-fe-sp887x.fw\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"sp887x: no firmware upload (timeout or file not found?)\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"sp887x: writing firmware to device failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"sp887x: firmware upload complete\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"\017sp887x: %s\0A\00", align 1
@__func__.sp887x_initial_setup = private unnamed_addr constant [21 x i8] c"sp887x_initial_setup\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"%s: firmware upload... \00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"failed.\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"%s: i2c error (err == %i)\0A\00", align 1
@__func__.sp887x_microcontroller_stop = private unnamed_addr constant [28 x i8] c"sp887x_microcontroller_stop\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"%s: i2c write error (addr %02x, err == %i)\0A\00", align 1
@__func__.i2c_writebytes = private unnamed_addr constant [15 x i8] c"i2c_writebytes\00", align 1
@__func__.sp887x_setup_agc = private unnamed_addr constant [17 x i8] c"sp887x_setup_agc\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"%s: writereg error (reg %03x, data %03x, ret == %i)\0A\00", align 1
@__func__.sp887x_writereg = private unnamed_addr constant [16 x i8] c"sp887x_writereg\00", align 1
@sp887x_correct_offsets.srate_correction = internal constant [3 x i32] [i32 1879617, i32 4544878, i32 8098561], align 4, !dbg !394
@__func__.sp887x_microcontroller_start = private unnamed_addr constant [29 x i8] c"sp887x_microcontroller_start\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"\017sp887x: sp887x: implement tuner adjustment (%+i steps)!!\0A\00", align 1
@llvm.used = appending global [6 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__UNIQUE_ID_file223, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license224, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @sp887x_attach(%struct.sp887x_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4453 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.sp887x_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.sp887x_state*, align 8
  store %struct.sp887x_config* %config, %struct.sp887x_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sp887x_config** %config.addr, metadata !4456, metadata !DIExpression()), !dbg !4457
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4458, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state, metadata !4460, metadata !DIExpression()), !dbg !4461
  store %struct.sp887x_state* null, %struct.sp887x_state** %state, align 8, !dbg !4461
  %call = call i8* @kzalloc(i64 1304, i32 3264) #8, !dbg !4462
  %0 = bitcast i8* %call to %struct.sp887x_state*, !dbg !4462
  store %struct.sp887x_state* %0, %struct.sp887x_state** %state, align 8, !dbg !4463
  %1 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !4464
  %cmp = icmp eq %struct.sp887x_state* %1, null, !dbg !4466
  br i1 %cmp, label %if.then, label %if.end, !dbg !4467

if.then:                                          ; preds = %entry
  br label %error, !dbg !4468

if.end:                                           ; preds = %entry
  %2 = load %struct.sp887x_config*, %struct.sp887x_config** %config.addr, align 8, !dbg !4469
  %3 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !4470
  %config1 = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %3, i32 0, i32 1, !dbg !4471
  store %struct.sp887x_config* %2, %struct.sp887x_config** %config1, align 8, !dbg !4472
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4473
  %5 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !4474
  %i2c2 = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %5, i32 0, i32 0, !dbg !4475
  store %struct.i2c_adapter* %4, %struct.i2c_adapter** %i2c2, align 8, !dbg !4476
  %6 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !4477
  %initialised = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %6, i32 0, i32 3, !dbg !4478
  %bf.load = load i8, i8* %initialised, align 8, !dbg !4479
  %bf.clear = and i8 %bf.load, -2, !dbg !4479
  store i8 %bf.clear, i8* %initialised, align 8, !dbg !4479
  %7 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !4480
  %call3 = call i32 @sp887x_readreg(%struct.sp887x_state* %7, i16 zeroext 512) #8, !dbg !4482
  %cmp4 = icmp slt i32 %call3, 0, !dbg !4483
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4484

if.then5:                                         ; preds = %if.end
  br label %error, !dbg !4485

if.end6:                                          ; preds = %if.end
  %8 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !4486
  %frontend = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %8, i32 0, i32 2, !dbg !4487
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4488
  %9 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4489
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @sp887x_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4489
  %10 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !4490
  %11 = bitcast %struct.sp887x_state* %10 to i8*, !dbg !4490
  %12 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !4491
  %frontend7 = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %12, i32 0, i32 2, !dbg !4492
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend7, i32 0, i32 3, !dbg !4493
  store i8* %11, i8** %demodulator_priv, align 8, !dbg !4494
  %13 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !4495
  %frontend8 = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %13, i32 0, i32 2, !dbg !4496
  store %struct.dvb_frontend* %frontend8, %struct.dvb_frontend** %retval, align 8, !dbg !4497
  br label %return, !dbg !4497

error:                                            ; preds = %if.then5, %if.then
  call void @llvm.dbg.label(metadata !4498), !dbg !4499
  %14 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !4500
  %15 = bitcast %struct.sp887x_state* %14 to i8*, !dbg !4500
  call void @kfree(i8* %15) #8, !dbg !4501
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4502
  br label %return, !dbg !4502

return:                                           ; preds = %error, %if.end6
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4503
  ret %struct.dvb_frontend* %16, !dbg !4503
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

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
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4568
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
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4576
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
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4583
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4583
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4583
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4583
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4583
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
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4731, !srcloc !4734
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #9, !dbg !4735, !srcloc !4738
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
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4761
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4761
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4761
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4761
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4761
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4522
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4762
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4763
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4764
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4765
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4766
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4767
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4768
  store i8* %62, i8** %retval.i, align 8, !dbg !4769
  br label %kmalloc.exit, !dbg !4769

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4770
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4771
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4772
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4772
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4772
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4772
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4772
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4773
  br label %kmalloc.exit, !dbg !4773

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4774
  ret i8* %65, !dbg !4775
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sp887x_readreg(%struct.sp887x_state* %state, i16 zeroext %reg) #0 !dbg !4776 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.sp887x_state*, align 8
  %reg.addr = alloca i16, align 2
  %b0 = alloca [2 x i8], align 1
  %b1 = alloca [2 x i8], align 1
  %ret = alloca i32, align 4
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.sp887x_state* %state, %struct.sp887x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state.addr, metadata !4779, metadata !DIExpression()), !dbg !4780
  store i16 %reg, i16* %reg.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %reg.addr, metadata !4781, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.declare(metadata [2 x i8]* %b0, metadata !4783, metadata !DIExpression()), !dbg !4785
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %b0, i64 0, i64 0, !dbg !4786
  %0 = load i16, i16* %reg.addr, align 2, !dbg !4787
  %conv = zext i16 %0 to i32, !dbg !4787
  %shr = ashr i32 %conv, 8, !dbg !4788
  %conv1 = trunc i32 %shr to i8, !dbg !4787
  store i8 %conv1, i8* %arrayinit.begin, align 1, !dbg !4786
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !4786
  %1 = load i16, i16* %reg.addr, align 2, !dbg !4789
  %conv2 = zext i16 %1 to i32, !dbg !4789
  %and = and i32 %conv2, 255, !dbg !4790
  %conv3 = trunc i32 %and to i8, !dbg !4789
  store i8 %conv3, i8* %arrayinit.element, align 1, !dbg !4786
  call void @llvm.dbg.declare(metadata [2 x i8]* %b1, metadata !4791, metadata !DIExpression()), !dbg !4792
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4793, metadata !DIExpression()), !dbg !4794
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !4795, metadata !DIExpression()), !dbg !4797
  %arrayinit.begin4 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4798
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin4, i32 0, i32 0, !dbg !4799
  %2 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !4800
  %config = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %2, i32 0, i32 1, !dbg !4801
  %3 = load %struct.sp887x_config*, %struct.sp887x_config** %config, align 8, !dbg !4801
  %demod_address = getelementptr inbounds %struct.sp887x_config, %struct.sp887x_config* %3, i32 0, i32 0, !dbg !4802
  %4 = load i8, i8* %demod_address, align 8, !dbg !4802
  %conv5 = zext i8 %4 to i16, !dbg !4800
  store i16 %conv5, i16* %addr, align 16, !dbg !4799
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin4, i32 0, i32 1, !dbg !4799
  store i16 0, i16* %flags, align 2, !dbg !4799
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin4, i32 0, i32 2, !dbg !4799
  store i16 2, i16* %len, align 4, !dbg !4799
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin4, i32 0, i32 3, !dbg !4799
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %b0, i64 0, i64 0, !dbg !4803
  store i8* %arraydecay, i8** %buf, align 8, !dbg !4799
  %arrayinit.element6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin4, i64 1, !dbg !4798
  %addr7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element6, i32 0, i32 0, !dbg !4804
  %5 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !4805
  %config8 = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %5, i32 0, i32 1, !dbg !4806
  %6 = load %struct.sp887x_config*, %struct.sp887x_config** %config8, align 8, !dbg !4806
  %demod_address9 = getelementptr inbounds %struct.sp887x_config, %struct.sp887x_config* %6, i32 0, i32 0, !dbg !4807
  %7 = load i8, i8* %demod_address9, align 8, !dbg !4807
  %conv10 = zext i8 %7 to i16, !dbg !4805
  store i16 %conv10, i16* %addr7, align 16, !dbg !4804
  %flags11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element6, i32 0, i32 1, !dbg !4804
  store i16 1, i16* %flags11, align 2, !dbg !4804
  %len12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element6, i32 0, i32 2, !dbg !4804
  store i16 2, i16* %len12, align 4, !dbg !4804
  %buf13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element6, i32 0, i32 3, !dbg !4804
  %arraydecay14 = getelementptr inbounds [2 x i8], [2 x i8]* %b1, i64 0, i64 0, !dbg !4808
  store i8* %arraydecay14, i8** %buf13, align 8, !dbg !4804
  %8 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !4809
  %i2c = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %8, i32 0, i32 0, !dbg !4811
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4811
  %arraydecay15 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4812
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %9, %struct.i2c_msg* %arraydecay15, i32 2) #8, !dbg !4813
  store i32 %call, i32* %ret, align 4, !dbg !4814
  %cmp = icmp ne i32 %call, 2, !dbg !4815
  br i1 %cmp, label %if.then, label %if.end, !dbg !4816

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %ret, align 4, !dbg !4817
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.sp887x_readreg, i64 0, i64 0), i32 %10) #12, !dbg !4819
  store i32 -1, i32* %retval, align 4, !dbg !4820
  br label %return, !dbg !4820

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %b1, i64 0, i64 0, !dbg !4821
  %11 = load i8, i8* %arrayidx, align 1, !dbg !4821
  %conv18 = zext i8 %11 to i32, !dbg !4821
  %shl = shl i32 %conv18, 8, !dbg !4822
  %arrayidx19 = getelementptr [2 x i8], [2 x i8]* %b1, i64 0, i64 1, !dbg !4823
  %12 = load i8, i8* %arrayidx19, align 1, !dbg !4823
  %conv20 = zext i8 %12 to i32, !dbg !4823
  %or = or i32 %shl, %conv20, !dbg !4824
  %and21 = and i32 %or, 4095, !dbg !4825
  store i32 %and21, i32* %retval, align 4, !dbg !4826
  br label %return, !dbg !4826

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !4827
  ret i32 %13, !dbg !4827
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
define internal i32 @get_order(i64 %size) #6 !dbg !4828 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4832, metadata !DIExpression()), !dbg !4837
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4839, metadata !DIExpression()), !dbg !4840
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4841, metadata !DIExpression()), !dbg !4842
  %0 = load i64, i64* %size.addr, align 8, !dbg !4843
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4845
  br i1 %1, label %if.then, label %if.end447, !dbg !4846

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4847
  %tobool = icmp ne i64 %2, 0, !dbg !4847
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4850

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4851
  br label %return, !dbg !4851

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4852
  %cmp = icmp ult i64 %3, 4096, !dbg !4854
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4855

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4856
  br label %return, !dbg !4856

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub = sub i64 %4, 1, !dbg !4857
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4857
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4857

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub4 = sub i64 %6, 1, !dbg !4857
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4857
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4857

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub6 = sub i64 %8, 1, !dbg !4857
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4857
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4857

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4857

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub9 = sub i64 %9, 1, !dbg !4857
  %and = and i64 %sub9, -9223372036854775808, !dbg !4857
  %tobool10 = icmp ne i64 %and, 0, !dbg !4857
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4857

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4857

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub13 = sub i64 %10, 1, !dbg !4857
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4857
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4857
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4857

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4857

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub18 = sub i64 %11, 1, !dbg !4857
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4857
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4857
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4857

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4857

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub23 = sub i64 %12, 1, !dbg !4857
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4857
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4857
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4857

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4857

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub28 = sub i64 %13, 1, !dbg !4857
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4857
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4857
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4857

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4857

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub33 = sub i64 %14, 1, !dbg !4857
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4857
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4857
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4857

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4857

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub38 = sub i64 %15, 1, !dbg !4857
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4857
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4857
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4857

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4857

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub43 = sub i64 %16, 1, !dbg !4857
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4857
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4857
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4857

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4857

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub48 = sub i64 %17, 1, !dbg !4857
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4857
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4857
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4857

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4857

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub53 = sub i64 %18, 1, !dbg !4857
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4857
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4857
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4857

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4857

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub58 = sub i64 %19, 1, !dbg !4857
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4857
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4857
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4857

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4857

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub63 = sub i64 %20, 1, !dbg !4857
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4857
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4857
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4857

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4857

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub68 = sub i64 %21, 1, !dbg !4857
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4857
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4857
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4857

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4857

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub73 = sub i64 %22, 1, !dbg !4857
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4857
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4857
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4857

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4857

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub78 = sub i64 %23, 1, !dbg !4857
  %and79 = and i64 %sub78, 562949953421312, !dbg !4857
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4857
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4857

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4857

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub83 = sub i64 %24, 1, !dbg !4857
  %and84 = and i64 %sub83, 281474976710656, !dbg !4857
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4857
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4857

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4857

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub88 = sub i64 %25, 1, !dbg !4857
  %and89 = and i64 %sub88, 140737488355328, !dbg !4857
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4857
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4857

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4857

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub93 = sub i64 %26, 1, !dbg !4857
  %and94 = and i64 %sub93, 70368744177664, !dbg !4857
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4857
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4857

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4857

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub98 = sub i64 %27, 1, !dbg !4857
  %and99 = and i64 %sub98, 35184372088832, !dbg !4857
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4857
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4857

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4857

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub103 = sub i64 %28, 1, !dbg !4857
  %and104 = and i64 %sub103, 17592186044416, !dbg !4857
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4857
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4857

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4857

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub108 = sub i64 %29, 1, !dbg !4857
  %and109 = and i64 %sub108, 8796093022208, !dbg !4857
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4857
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4857

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4857

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub113 = sub i64 %30, 1, !dbg !4857
  %and114 = and i64 %sub113, 4398046511104, !dbg !4857
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4857
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4857

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4857

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub118 = sub i64 %31, 1, !dbg !4857
  %and119 = and i64 %sub118, 2199023255552, !dbg !4857
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4857
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4857

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4857

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub123 = sub i64 %32, 1, !dbg !4857
  %and124 = and i64 %sub123, 1099511627776, !dbg !4857
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4857
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4857

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4857

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub128 = sub i64 %33, 1, !dbg !4857
  %and129 = and i64 %sub128, 549755813888, !dbg !4857
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4857
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4857

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4857

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub133 = sub i64 %34, 1, !dbg !4857
  %and134 = and i64 %sub133, 274877906944, !dbg !4857
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4857
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4857

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4857

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub138 = sub i64 %35, 1, !dbg !4857
  %and139 = and i64 %sub138, 137438953472, !dbg !4857
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4857
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4857

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4857

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub143 = sub i64 %36, 1, !dbg !4857
  %and144 = and i64 %sub143, 68719476736, !dbg !4857
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4857
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4857

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4857

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub148 = sub i64 %37, 1, !dbg !4857
  %and149 = and i64 %sub148, 34359738368, !dbg !4857
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4857
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4857

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4857

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub153 = sub i64 %38, 1, !dbg !4857
  %and154 = and i64 %sub153, 17179869184, !dbg !4857
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4857
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4857

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4857

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub158 = sub i64 %39, 1, !dbg !4857
  %and159 = and i64 %sub158, 8589934592, !dbg !4857
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4857
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4857

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4857

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub163 = sub i64 %40, 1, !dbg !4857
  %and164 = and i64 %sub163, 4294967296, !dbg !4857
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4857
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4857

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4857

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub168 = sub i64 %41, 1, !dbg !4857
  %and169 = and i64 %sub168, 2147483648, !dbg !4857
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4857
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4857

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4857

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub173 = sub i64 %42, 1, !dbg !4857
  %and174 = and i64 %sub173, 1073741824, !dbg !4857
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4857
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4857

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4857

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub178 = sub i64 %43, 1, !dbg !4857
  %and179 = and i64 %sub178, 536870912, !dbg !4857
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4857
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4857

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4857

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub183 = sub i64 %44, 1, !dbg !4857
  %and184 = and i64 %sub183, 268435456, !dbg !4857
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4857
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4857

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4857

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub188 = sub i64 %45, 1, !dbg !4857
  %and189 = and i64 %sub188, 134217728, !dbg !4857
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4857
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4857

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4857

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub193 = sub i64 %46, 1, !dbg !4857
  %and194 = and i64 %sub193, 67108864, !dbg !4857
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4857
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4857

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4857

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub198 = sub i64 %47, 1, !dbg !4857
  %and199 = and i64 %sub198, 33554432, !dbg !4857
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4857
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4857

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4857

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub203 = sub i64 %48, 1, !dbg !4857
  %and204 = and i64 %sub203, 16777216, !dbg !4857
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4857
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4857

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4857

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub208 = sub i64 %49, 1, !dbg !4857
  %and209 = and i64 %sub208, 8388608, !dbg !4857
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4857
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4857

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4857

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub213 = sub i64 %50, 1, !dbg !4857
  %and214 = and i64 %sub213, 4194304, !dbg !4857
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4857
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4857

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4857

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub218 = sub i64 %51, 1, !dbg !4857
  %and219 = and i64 %sub218, 2097152, !dbg !4857
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4857
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4857

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4857

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub223 = sub i64 %52, 1, !dbg !4857
  %and224 = and i64 %sub223, 1048576, !dbg !4857
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4857
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4857

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4857

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub228 = sub i64 %53, 1, !dbg !4857
  %and229 = and i64 %sub228, 524288, !dbg !4857
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4857
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4857

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4857

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub233 = sub i64 %54, 1, !dbg !4857
  %and234 = and i64 %sub233, 262144, !dbg !4857
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4857
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4857

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4857

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub238 = sub i64 %55, 1, !dbg !4857
  %and239 = and i64 %sub238, 131072, !dbg !4857
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4857
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4857

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4857

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub243 = sub i64 %56, 1, !dbg !4857
  %and244 = and i64 %sub243, 65536, !dbg !4857
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4857
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4857

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4857

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub248 = sub i64 %57, 1, !dbg !4857
  %and249 = and i64 %sub248, 32768, !dbg !4857
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4857
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4857

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4857

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub253 = sub i64 %58, 1, !dbg !4857
  %and254 = and i64 %sub253, 16384, !dbg !4857
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4857
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4857

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4857

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub258 = sub i64 %59, 1, !dbg !4857
  %and259 = and i64 %sub258, 8192, !dbg !4857
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4857
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4857

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4857

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub263 = sub i64 %60, 1, !dbg !4857
  %and264 = and i64 %sub263, 4096, !dbg !4857
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4857
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4857

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4857

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub268 = sub i64 %61, 1, !dbg !4857
  %and269 = and i64 %sub268, 2048, !dbg !4857
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4857
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4857

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4857

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub273 = sub i64 %62, 1, !dbg !4857
  %and274 = and i64 %sub273, 1024, !dbg !4857
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4857
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4857

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4857

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub278 = sub i64 %63, 1, !dbg !4857
  %and279 = and i64 %sub278, 512, !dbg !4857
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4857
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4857

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4857

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub283 = sub i64 %64, 1, !dbg !4857
  %and284 = and i64 %sub283, 256, !dbg !4857
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4857
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4857

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4857

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub288 = sub i64 %65, 1, !dbg !4857
  %and289 = and i64 %sub288, 128, !dbg !4857
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4857
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4857

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4857

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub293 = sub i64 %66, 1, !dbg !4857
  %and294 = and i64 %sub293, 64, !dbg !4857
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4857
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4857

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4857

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub298 = sub i64 %67, 1, !dbg !4857
  %and299 = and i64 %sub298, 32, !dbg !4857
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4857
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4857

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4857

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub303 = sub i64 %68, 1, !dbg !4857
  %and304 = and i64 %sub303, 16, !dbg !4857
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4857
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4857

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4857

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub308 = sub i64 %69, 1, !dbg !4857
  %and309 = and i64 %sub308, 8, !dbg !4857
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4857
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4857

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4857

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub313 = sub i64 %70, 1, !dbg !4857
  %and314 = and i64 %sub313, 4, !dbg !4857
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4857
  %71 = zext i1 %tobool315 to i64, !dbg !4857
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4857
  br label %cond.end, !dbg !4857

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4857
  br label %cond.end317, !dbg !4857

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4857
  br label %cond.end319, !dbg !4857

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4857
  br label %cond.end321, !dbg !4857

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4857
  br label %cond.end323, !dbg !4857

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4857
  br label %cond.end325, !dbg !4857

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4857
  br label %cond.end327, !dbg !4857

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4857
  br label %cond.end329, !dbg !4857

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4857
  br label %cond.end331, !dbg !4857

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4857
  br label %cond.end333, !dbg !4857

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4857
  br label %cond.end335, !dbg !4857

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4857
  br label %cond.end337, !dbg !4857

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4857
  br label %cond.end339, !dbg !4857

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4857
  br label %cond.end341, !dbg !4857

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4857
  br label %cond.end343, !dbg !4857

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4857
  br label %cond.end345, !dbg !4857

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4857
  br label %cond.end347, !dbg !4857

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4857
  br label %cond.end349, !dbg !4857

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4857
  br label %cond.end351, !dbg !4857

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4857
  br label %cond.end353, !dbg !4857

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4857
  br label %cond.end355, !dbg !4857

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4857
  br label %cond.end357, !dbg !4857

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4857
  br label %cond.end359, !dbg !4857

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4857
  br label %cond.end361, !dbg !4857

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4857
  br label %cond.end363, !dbg !4857

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4857
  br label %cond.end365, !dbg !4857

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4857
  br label %cond.end367, !dbg !4857

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4857
  br label %cond.end369, !dbg !4857

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4857
  br label %cond.end371, !dbg !4857

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4857
  br label %cond.end373, !dbg !4857

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4857
  br label %cond.end375, !dbg !4857

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4857
  br label %cond.end377, !dbg !4857

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4857
  br label %cond.end379, !dbg !4857

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4857
  br label %cond.end381, !dbg !4857

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4857
  br label %cond.end383, !dbg !4857

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4857
  br label %cond.end385, !dbg !4857

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4857
  br label %cond.end387, !dbg !4857

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4857
  br label %cond.end389, !dbg !4857

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4857
  br label %cond.end391, !dbg !4857

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4857
  br label %cond.end393, !dbg !4857

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4857
  br label %cond.end395, !dbg !4857

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4857
  br label %cond.end397, !dbg !4857

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4857
  br label %cond.end399, !dbg !4857

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4857
  br label %cond.end401, !dbg !4857

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4857
  br label %cond.end403, !dbg !4857

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4857
  br label %cond.end405, !dbg !4857

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4857
  br label %cond.end407, !dbg !4857

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4857
  br label %cond.end409, !dbg !4857

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4857
  br label %cond.end411, !dbg !4857

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4857
  br label %cond.end413, !dbg !4857

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4857
  br label %cond.end415, !dbg !4857

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4857
  br label %cond.end417, !dbg !4857

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4857
  br label %cond.end419, !dbg !4857

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4857
  br label %cond.end421, !dbg !4857

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4857
  br label %cond.end423, !dbg !4857

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4857
  br label %cond.end425, !dbg !4857

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4857
  br label %cond.end427, !dbg !4857

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4857
  br label %cond.end429, !dbg !4857

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4857
  br label %cond.end431, !dbg !4857

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4857
  br label %cond.end433, !dbg !4857

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4857
  br label %cond.end435, !dbg !4857

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4857
  br label %cond.end437, !dbg !4857

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4857
  br label %cond.end440, !dbg !4857

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4857

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4857
  br label %cond.end444, !dbg !4857

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4857
  %sub443 = sub i64 %72, 1, !dbg !4857
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4857
  br label %cond.end444, !dbg !4857

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4857
  %sub446 = sub i32 %cond445, 12, !dbg !4858
  %add = add i32 %sub446, 1, !dbg !4859
  store i32 %add, i32* %retval, align 4, !dbg !4860
  br label %return, !dbg !4860

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4861
  %dec = add i64 %73, -1, !dbg !4861
  store i64 %dec, i64* %size.addr, align 8, !dbg !4861
  %74 = load i64, i64* %size.addr, align 8, !dbg !4862
  %shr = lshr i64 %74, 12, !dbg !4862
  store i64 %shr, i64* %size.addr, align 8, !dbg !4862
  %75 = load i64, i64* %size.addr, align 8, !dbg !4863
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4840
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4864
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4865
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4864, !srcloc !4866
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4864
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4867
  %add.i = add i32 %79, 1, !dbg !4868
  store i32 %add.i, i32* %retval, align 4, !dbg !4869
  br label %return, !dbg !4869

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4870
  ret i32 %80, !dbg !4870
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4871 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4832, metadata !DIExpression()), !dbg !4875
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4839, metadata !DIExpression()), !dbg !4877
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4878, metadata !DIExpression()), !dbg !4879
  %0 = load i64, i64* %n.addr, align 8, !dbg !4880
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4877
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4881
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4882
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4881, !srcloc !4866
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4881
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4883
  %add.i = add i32 %4, 1, !dbg !4884
  %sub = sub i32 %add.i, 1, !dbg !4885
  ret i32 %sub, !dbg !4886
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4887 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4891, metadata !DIExpression()), !dbg !4892
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4893, metadata !DIExpression()), !dbg !4894
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4895, metadata !DIExpression()), !dbg !4896
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4897, metadata !DIExpression()), !dbg !4898
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4899
  ret i8* %0, !dbg !4900
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sp887x_release(%struct.dvb_frontend* %fe) #0 !dbg !4901 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.sp887x_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4902, metadata !DIExpression()), !dbg !4903
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state, metadata !4904, metadata !DIExpression()), !dbg !4905
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4906
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4907
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4907
  %2 = bitcast i8* %1 to %struct.sp887x_state*, !dbg !4906
  store %struct.sp887x_state* %2, %struct.sp887x_state** %state, align 8, !dbg !4905
  %3 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !4908
  %4 = bitcast %struct.sp887x_state* %3 to i8*, !dbg !4908
  call void @kfree(i8* %4) #8, !dbg !4909
  ret void, !dbg !4910
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sp887x_init(%struct.dvb_frontend* %fe) #0 !dbg !4911 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.sp887x_state*, align 8
  %fw = alloca %struct.firmware*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4912, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state, metadata !4914, metadata !DIExpression()), !dbg !4915
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4916
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4917
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4917
  %2 = bitcast i8* %1 to %struct.sp887x_state*, !dbg !4916
  store %struct.sp887x_state* %2, %struct.sp887x_state** %state, align 8, !dbg !4915
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw, metadata !4918, metadata !DIExpression()), !dbg !4919
  store %struct.firmware* null, %struct.firmware** %fw, align 8, !dbg !4919
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4920, metadata !DIExpression()), !dbg !4921
  %3 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !4922
  %initialised = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %3, i32 0, i32 3, !dbg !4924
  %bf.load = load i8, i8* %initialised, align 8, !dbg !4924
  %bf.clear = and i8 %bf.load, 1, !dbg !4924
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !4922
  br i1 %tobool, label %if.end14, label %if.then, !dbg !4925

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #12, !dbg !4926
  %4 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !4928
  %config = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %4, i32 0, i32 1, !dbg !4929
  %5 = load %struct.sp887x_config*, %struct.sp887x_config** %config, align 8, !dbg !4929
  %request_firmware = getelementptr inbounds %struct.sp887x_config, %struct.sp887x_config* %5, i32 0, i32 1, !dbg !4930
  %6 = load i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)*, i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)** %request_firmware, align 8, !dbg !4930
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4931
  %call1 = call i32 %6(%struct.dvb_frontend* %7, %struct.firmware** %fw, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !4928
  store i32 %call1, i32* %ret, align 4, !dbg !4932
  %8 = load i32, i32* %ret, align 4, !dbg !4933
  %tobool2 = icmp ne i32 %8, 0, !dbg !4933
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !4935

if.then3:                                         ; preds = %if.then
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !4936
  %9 = load i32, i32* %ret, align 4, !dbg !4938
  store i32 %9, i32* %retval, align 4, !dbg !4939
  br label %return, !dbg !4939

if.end:                                           ; preds = %if.then
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4940
  %11 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !4941
  %call5 = call i32 @sp887x_initial_setup(%struct.dvb_frontend* %10, %struct.firmware* %11) #8, !dbg !4942
  store i32 %call5, i32* %ret, align 4, !dbg !4943
  %12 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !4944
  call void @release_firmware(%struct.firmware* %12) #8, !dbg !4945
  %13 = load i32, i32* %ret, align 4, !dbg !4946
  %tobool6 = icmp ne i32 %13, 0, !dbg !4946
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !4948

if.then7:                                         ; preds = %if.end
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0)) #12, !dbg !4949
  %14 = load i32, i32* %ret, align 4, !dbg !4951
  store i32 %14, i32* %retval, align 4, !dbg !4952
  br label %return, !dbg !4952

if.end9:                                          ; preds = %if.end
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !4953
  %15 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !4954
  %initialised11 = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %15, i32 0, i32 3, !dbg !4955
  %bf.load12 = load i8, i8* %initialised11, align 8, !dbg !4956
  %bf.clear13 = and i8 %bf.load12, -2, !dbg !4956
  %bf.set = or i8 %bf.clear13, 1, !dbg !4956
  store i8 %bf.set, i8* %initialised11, align 8, !dbg !4956
  br label %if.end14, !dbg !4957

if.end14:                                         ; preds = %if.end9, %entry
  %16 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !4958
  %call15 = call i32 @sp887x_writereg(%struct.sp887x_state* %16, i16 zeroext 3096, i16 zeroext 13) #8, !dbg !4959
  store i32 0, i32* %retval, align 4, !dbg !4960
  br label %return, !dbg !4960

return:                                           ; preds = %if.end14, %if.then7, %if.then3
  %17 = load i32, i32* %retval, align 4, !dbg !4961
  ret i32 %17, !dbg !4961
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sp887x_sleep(%struct.dvb_frontend* %fe) #0 !dbg !4962 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.sp887x_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4963, metadata !DIExpression()), !dbg !4964
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state, metadata !4965, metadata !DIExpression()), !dbg !4966
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4967
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4968
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4968
  %2 = bitcast i8* %1 to %struct.sp887x_state*, !dbg !4967
  store %struct.sp887x_state* %2, %struct.sp887x_state** %state, align 8, !dbg !4966
  %3 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !4969
  %call = call i32 @sp887x_writereg(%struct.sp887x_state* %3, i16 zeroext 3096, i16 zeroext 0) #8, !dbg !4970
  ret i32 0, !dbg !4971
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sp887x_setup_frontend_parameters(%struct.dvb_frontend* %fe) #0 !dbg !4972 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.sp887x_state*, align 8
  %actual_freq = alloca i32, align 4
  %err = alloca i32, align 4
  %val = alloca i16, align 2
  %reg0xc05 = alloca i16, align 2
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4973, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !4975, metadata !DIExpression()), !dbg !4976
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4977
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !4978
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !4976
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state, metadata !4979, metadata !DIExpression()), !dbg !4980
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4981
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 3, !dbg !4982
  %2 = load i8*, i8** %demodulator_priv, align 8, !dbg !4982
  %3 = bitcast i8* %2 to %struct.sp887x_state*, !dbg !4981
  store %struct.sp887x_state* %3, %struct.sp887x_state** %state, align 8, !dbg !4980
  call void @llvm.dbg.declare(metadata i32* %actual_freq, metadata !4983, metadata !DIExpression()), !dbg !4984
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4985, metadata !DIExpression()), !dbg !4986
  call void @llvm.dbg.declare(metadata i16* %val, metadata !4987, metadata !DIExpression()), !dbg !4988
  call void @llvm.dbg.declare(metadata i16* %reg0xc05, metadata !4989, metadata !DIExpression()), !dbg !4990
  %4 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !4991
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %4, i32 0, i32 7, !dbg !4993
  %5 = load i32, i32* %bandwidth_hz, align 4, !dbg !4993
  %cmp = icmp ne i32 %5, 8000000, !dbg !4994
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4995

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !4996
  %bandwidth_hz1 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 7, !dbg !4997
  %7 = load i32, i32* %bandwidth_hz1, align 4, !dbg !4997
  %cmp2 = icmp ne i32 %7, 7000000, !dbg !4998
  br i1 %cmp2, label %land.lhs.true3, label %if.end, !dbg !4999

land.lhs.true3:                                   ; preds = %land.lhs.true
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5000
  %bandwidth_hz4 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 7, !dbg !5001
  %9 = load i32, i32* %bandwidth_hz4, align 4, !dbg !5001
  %cmp5 = icmp ne i32 %9, 6000000, !dbg !5002
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5003

if.then:                                          ; preds = %land.lhs.true3
  store i32 -22, i32* %retval, align 4, !dbg !5004
  br label %return, !dbg !5004

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %10 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5005
  %call = call i32 @configure_reg0xc05(%struct.dtv_frontend_properties* %10, i16* %reg0xc05) #8, !dbg !5007
  store i32 %call, i32* %err, align 4, !dbg !5008
  %tobool = icmp ne i32 %call, 0, !dbg !5008
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !5009

if.then6:                                         ; preds = %if.end
  %11 = load i32, i32* %err, align 4, !dbg !5010
  store i32 %11, i32* %retval, align 4, !dbg !5011
  br label %return, !dbg !5011

if.end7:                                          ; preds = %if.end
  %12 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5012
  call void @sp887x_microcontroller_stop(%struct.sp887x_state* %12) #8, !dbg !5013
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5014
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1, !dbg !5016
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5017
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5018
  %14 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5018
  %tobool8 = icmp ne i32 (%struct.dvb_frontend*)* %14, null, !dbg !5014
  br i1 %tobool8, label %if.then9, label %if.end21, !dbg !5019

if.then9:                                         ; preds = %if.end7
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5020
  %ops10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 1, !dbg !5022
  %tuner_ops11 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops10, i32 0, i32 30, !dbg !5023
  %set_params12 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops11, i32 0, i32 6, !dbg !5024
  %16 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params12, align 8, !dbg !5024
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5025
  %call13 = call i32 %16(%struct.dvb_frontend* %17) #8, !dbg !5020
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5026
  %ops14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 1, !dbg !5028
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops14, i32 0, i32 26, !dbg !5029
  %19 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5029
  %tobool15 = icmp ne i32 (%struct.dvb_frontend*, i32)* %19, null, !dbg !5026
  br i1 %tobool15, label %if.then16, label %if.end20, !dbg !5030

if.then16:                                        ; preds = %if.then9
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5031
  %ops17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 1, !dbg !5032
  %i2c_gate_ctrl18 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops17, i32 0, i32 26, !dbg !5033
  %21 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl18, align 8, !dbg !5033
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5034
  %call19 = call i32 %21(%struct.dvb_frontend* %22, i32 0) #8, !dbg !5031
  br label %if.end20, !dbg !5031

if.end20:                                         ; preds = %if.then16, %if.then9
  br label %if.end21, !dbg !5035

if.end21:                                         ; preds = %if.end20, %if.end7
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5036
  %ops22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %23, i32 0, i32 1, !dbg !5038
  %tuner_ops23 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops22, i32 0, i32 30, !dbg !5039
  %get_frequency = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops23, i32 0, i32 9, !dbg !5040
  %24 = load i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)** %get_frequency, align 8, !dbg !5040
  %tobool24 = icmp ne i32 (%struct.dvb_frontend*, i32*)* %24, null, !dbg !5036
  br i1 %tobool24, label %if.then25, label %if.else, !dbg !5041

if.then25:                                        ; preds = %if.end21
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5042
  %ops26 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 1, !dbg !5044
  %tuner_ops27 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops26, i32 0, i32 30, !dbg !5045
  %get_frequency28 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops27, i32 0, i32 9, !dbg !5046
  %26 = load i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)** %get_frequency28, align 8, !dbg !5046
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5047
  %call29 = call i32 %26(%struct.dvb_frontend* %27, i32* %actual_freq) #8, !dbg !5042
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5048
  %ops30 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 1, !dbg !5050
  %i2c_gate_ctrl31 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops30, i32 0, i32 26, !dbg !5051
  %29 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl31, align 8, !dbg !5051
  %tobool32 = icmp ne i32 (%struct.dvb_frontend*, i32)* %29, null, !dbg !5048
  br i1 %tobool32, label %if.then33, label %if.end37, !dbg !5052

if.then33:                                        ; preds = %if.then25
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5053
  %ops34 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %30, i32 0, i32 1, !dbg !5054
  %i2c_gate_ctrl35 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops34, i32 0, i32 26, !dbg !5055
  %31 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl35, align 8, !dbg !5055
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5056
  %call36 = call i32 %31(%struct.dvb_frontend* %32, i32 0) #8, !dbg !5053
  br label %if.end37, !dbg !5053

if.end37:                                         ; preds = %if.then33, %if.then25
  br label %if.end38, !dbg !5057

if.else:                                          ; preds = %if.end21
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5058
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 0, !dbg !5060
  %34 = load i32, i32* %frequency, align 4, !dbg !5060
  store i32 %34, i32* %actual_freq, align 4, !dbg !5061
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.end37
  %35 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5062
  %call39 = call i32 @sp887x_readreg(%struct.sp887x_state* %35, i16 zeroext 512) #8, !dbg !5063
  %36 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5064
  %37 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5065
  %38 = load i32, i32* %actual_freq, align 4, !dbg !5066
  call void @sp887x_correct_offsets(%struct.sp887x_state* %36, %struct.dtv_frontend_properties* %37, i32 %38) #8, !dbg !5067
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5068
  %bandwidth_hz40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 7, !dbg !5070
  %40 = load i32, i32* %bandwidth_hz40, align 4, !dbg !5070
  %cmp41 = icmp eq i32 %40, 6000000, !dbg !5071
  br i1 %cmp41, label %if.then42, label %if.else43, !dbg !5072

if.then42:                                        ; preds = %if.end38
  store i16 2, i16* %val, align 2, !dbg !5073
  br label %if.end49, !dbg !5074

if.else43:                                        ; preds = %if.end38
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5075
  %bandwidth_hz44 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 7, !dbg !5077
  %42 = load i32, i32* %bandwidth_hz44, align 4, !dbg !5077
  %cmp45 = icmp eq i32 %42, 7000000, !dbg !5078
  br i1 %cmp45, label %if.then46, label %if.else47, !dbg !5079

if.then46:                                        ; preds = %if.else43
  store i16 1, i16* %val, align 2, !dbg !5080
  br label %if.end48, !dbg !5081

if.else47:                                        ; preds = %if.else43
  store i16 0, i16* %val, align 2, !dbg !5082
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then46
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then42
  %43 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5083
  %44 = load i16, i16* %val, align 2, !dbg !5084
  %call50 = call i32 @sp887x_writereg(%struct.sp887x_state* %43, i16 zeroext 785, i16 zeroext %44) #8, !dbg !5085
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5086
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 6, !dbg !5088
  %46 = load i32, i32* %transmission_mode, align 4, !dbg !5088
  %cmp51 = icmp eq i32 %46, 0, !dbg !5089
  br i1 %cmp51, label %if.then52, label %if.else54, !dbg !5090

if.then52:                                        ; preds = %if.end49
  %47 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5091
  %call53 = call i32 @sp887x_writereg(%struct.sp887x_state* %47, i16 zeroext 824, i16 zeroext 0) #8, !dbg !5092
  br label %if.end56, !dbg !5092

if.else54:                                        ; preds = %if.end49
  %48 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5093
  %call55 = call i32 @sp887x_writereg(%struct.sp887x_state* %48, i16 zeroext 824, i16 zeroext 1) #8, !dbg !5094
  br label %if.end56

if.end56:                                         ; preds = %if.else54, %if.then52
  %49 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5095
  %50 = load i16, i16* %reg0xc05, align 2, !dbg !5096
  %call57 = call i32 @sp887x_writereg(%struct.sp887x_state* %49, i16 zeroext 3077, i16 zeroext %50) #8, !dbg !5097
  %51 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5098
  %bandwidth_hz58 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %51, i32 0, i32 7, !dbg !5100
  %52 = load i32, i32* %bandwidth_hz58, align 4, !dbg !5100
  %cmp59 = icmp eq i32 %52, 6000000, !dbg !5101
  br i1 %cmp59, label %if.then60, label %if.else61, !dbg !5102

if.then60:                                        ; preds = %if.end56
  store i16 16, i16* %val, align 2, !dbg !5103
  br label %if.end67, !dbg !5104

if.else61:                                        ; preds = %if.end56
  %53 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5105
  %bandwidth_hz62 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %53, i32 0, i32 7, !dbg !5107
  %54 = load i32, i32* %bandwidth_hz62, align 4, !dbg !5107
  %cmp63 = icmp eq i32 %54, 7000000, !dbg !5108
  br i1 %cmp63, label %if.then64, label %if.else65, !dbg !5109

if.then64:                                        ; preds = %if.else61
  store i16 24, i16* %val, align 2, !dbg !5110
  br label %if.end66, !dbg !5111

if.else65:                                        ; preds = %if.else61
  store i16 0, i16* %val, align 2, !dbg !5112
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %if.then64
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then60
  %55 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5113
  %56 = load i16, i16* %val, align 2, !dbg !5114
  %conv = zext i16 %56 to i32, !dbg !5114
  %or = or i32 352, %conv, !dbg !5115
  %conv68 = trunc i32 %or to i16, !dbg !5116
  %call69 = call i32 @sp887x_writereg(%struct.sp887x_state* %55, i16 zeroext 3860, i16 zeroext %conv68) #8, !dbg !5117
  %57 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5118
  %call70 = call i32 @sp887x_writereg(%struct.sp887x_state* %57, i16 zeroext 3861, i16 zeroext 0) #8, !dbg !5119
  %58 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5120
  call void @sp887x_microcontroller_start(%struct.sp887x_state* %58) #8, !dbg !5121
  store i32 0, i32* %retval, align 4, !dbg !5122
  br label %return, !dbg !5122

return:                                           ; preds = %if.end67, %if.then6, %if.then
  %59 = load i32, i32* %retval, align 4, !dbg !5123
  ret i32 %59, !dbg !5123
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sp887x_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %fesettings) #0 !dbg !5124 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fesettings.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5125, metadata !DIExpression()), !dbg !5126
  store %struct.dvb_frontend_tune_settings* %fesettings, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %fesettings.addr, metadata !5127, metadata !DIExpression()), !dbg !5128
  %0 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5129
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %0, i32 0, i32 0, !dbg !5130
  store i32 350, i32* %min_delay_ms, align 4, !dbg !5131
  %1 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5132
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %1, i32 0, i32 1, !dbg !5133
  store i32 333332, i32* %step_size, align 4, !dbg !5134
  %2 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5135
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %2, i32 0, i32 2, !dbg !5136
  store i32 333333, i32* %max_drift, align 4, !dbg !5137
  ret i32 0, !dbg !5138
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sp887x_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !5139 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.sp887x_state*, align 8
  %snr12 = alloca i16, align 2
  %sync0x200 = alloca i16, align 2
  %sync0xf17 = alloca i16, align 2
  %steps = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5140, metadata !DIExpression()), !dbg !5141
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5142, metadata !DIExpression()), !dbg !5143
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state, metadata !5144, metadata !DIExpression()), !dbg !5145
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5146
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5147
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5147
  %2 = bitcast i8* %1 to %struct.sp887x_state*, !dbg !5146
  store %struct.sp887x_state* %2, %struct.sp887x_state** %state, align 8, !dbg !5145
  call void @llvm.dbg.declare(metadata i16* %snr12, metadata !5148, metadata !DIExpression()), !dbg !5149
  %3 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5150
  %call = call i32 @sp887x_readreg(%struct.sp887x_state* %3, i16 zeroext 3862) #8, !dbg !5151
  %conv = trunc i32 %call to i16, !dbg !5151
  store i16 %conv, i16* %snr12, align 2, !dbg !5149
  call void @llvm.dbg.declare(metadata i16* %sync0x200, metadata !5152, metadata !DIExpression()), !dbg !5153
  %4 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5154
  %call1 = call i32 @sp887x_readreg(%struct.sp887x_state* %4, i16 zeroext 512) #8, !dbg !5155
  %conv2 = trunc i32 %call1 to i16, !dbg !5155
  store i16 %conv2, i16* %sync0x200, align 2, !dbg !5153
  call void @llvm.dbg.declare(metadata i16* %sync0xf17, metadata !5156, metadata !DIExpression()), !dbg !5157
  %5 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5158
  %call3 = call i32 @sp887x_readreg(%struct.sp887x_state* %5, i16 zeroext 3863) #8, !dbg !5159
  %conv4 = trunc i32 %call3 to i16, !dbg !5159
  store i16 %conv4, i16* %sync0xf17, align 2, !dbg !5157
  %6 = load i32*, i32** %status.addr, align 8, !dbg !5160
  store i32 0, i32* %6, align 4, !dbg !5161
  %7 = load i16, i16* %snr12, align 2, !dbg !5162
  %conv5 = zext i16 %7 to i32, !dbg !5162
  %cmp = icmp sgt i32 %conv5, 15, !dbg !5164
  br i1 %cmp, label %if.then, label %if.end, !dbg !5165

if.then:                                          ; preds = %entry
  %8 = load i32*, i32** %status.addr, align 8, !dbg !5166
  %9 = load i32, i32* %8, align 4, !dbg !5167
  %or = or i32 %9, 1, !dbg !5167
  store i32 %or, i32* %8, align 4, !dbg !5167
  br label %if.end, !dbg !5168

if.end:                                           ; preds = %if.then, %entry
  %10 = load i16, i16* %sync0xf17, align 2, !dbg !5169
  %conv7 = zext i16 %10 to i32, !dbg !5169
  %and = and i32 %conv7, 15, !dbg !5171
  %cmp8 = icmp eq i32 %and, 2, !dbg !5172
  br i1 %cmp8, label %if.then10, label %if.end13, !dbg !5173

if.then10:                                        ; preds = %if.end
  %11 = load i32*, i32** %status.addr, align 8, !dbg !5174
  %12 = load i32, i32* %11, align 4, !dbg !5176
  %or11 = or i32 %12, 16, !dbg !5176
  store i32 %or11, i32* %11, align 4, !dbg !5176
  %13 = load i32*, i32** %status.addr, align 8, !dbg !5177
  %14 = load i32, i32* %13, align 4, !dbg !5178
  %or12 = or i32 %14, 14, !dbg !5178
  store i32 %or12, i32* %13, align 4, !dbg !5178
  br label %if.end13, !dbg !5179

if.end13:                                         ; preds = %if.then10, %if.end
  %15 = load i16, i16* %sync0x200, align 2, !dbg !5180
  %conv14 = zext i16 %15 to i32, !dbg !5180
  %and15 = and i32 %conv14, 1, !dbg !5182
  %tobool = icmp ne i32 %and15, 0, !dbg !5182
  br i1 %tobool, label %if.then16, label %if.end27, !dbg !5183

if.then16:                                        ; preds = %if.end13
  call void @llvm.dbg.declare(metadata i32* %steps, metadata !5184, metadata !DIExpression()), !dbg !5186
  %16 = load i16, i16* %sync0x200, align 2, !dbg !5187
  %conv17 = zext i16 %16 to i32, !dbg !5187
  %shr = ashr i32 %conv17, 4, !dbg !5188
  %and18 = and i32 %shr, 15, !dbg !5189
  store i32 %and18, i32* %steps, align 4, !dbg !5186
  %17 = load i32, i32* %steps, align 4, !dbg !5190
  %and19 = and i32 %17, 8, !dbg !5192
  %tobool20 = icmp ne i32 %and19, 0, !dbg !5192
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !5193

if.then21:                                        ; preds = %if.then16
  %18 = load i32, i32* %steps, align 4, !dbg !5194
  %sub = sub i32 0, %18, !dbg !5195
  store i32 %sub, i32* %steps, align 4, !dbg !5196
  br label %if.end22, !dbg !5197

if.end22:                                         ; preds = %if.then21, %if.then16
  br label %do.body, !dbg !5198

do.body:                                          ; preds = %if.end22
  %19 = load i32, i32* @debug, align 4, !dbg !5199
  %tobool23 = icmp ne i32 %19, 0, !dbg !5199
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !5202

if.then24:                                        ; preds = %do.body
  %20 = load i32, i32* %steps, align 4, !dbg !5199
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0), i32 %20) #12, !dbg !5199
  br label %if.end26, !dbg !5199

if.end26:                                         ; preds = %if.then24, %do.body
  br label %do.end, !dbg !5202

do.end:                                           ; preds = %if.end26
  br label %if.end27, !dbg !5203

if.end27:                                         ; preds = %do.end, %if.end13
  ret i32 0, !dbg !5204
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sp887x_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5205 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %state = alloca %struct.sp887x_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5206, metadata !DIExpression()), !dbg !5207
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state, metadata !5210, metadata !DIExpression()), !dbg !5211
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5212
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5213
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5213
  %2 = bitcast i8* %1 to %struct.sp887x_state*, !dbg !5212
  store %struct.sp887x_state* %2, %struct.sp887x_state** %state, align 8, !dbg !5211
  %3 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5214
  %call = call i32 @sp887x_readreg(%struct.sp887x_state* %3, i16 zeroext 3080) #8, !dbg !5215
  %and = and i32 %call, 63, !dbg !5216
  %4 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5217
  %call1 = call i32 @sp887x_readreg(%struct.sp887x_state* %4, i16 zeroext 3079) #8, !dbg !5218
  %shl = shl i32 %call1, 6, !dbg !5219
  %or = or i32 %and, %shl, !dbg !5220
  %5 = load i32*, i32** %ber.addr, align 8, !dbg !5221
  store i32 %or, i32* %5, align 4, !dbg !5222
  %6 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5223
  %call2 = call i32 @sp887x_writereg(%struct.sp887x_state* %6, i16 zeroext 3080, i16 zeroext 0) #8, !dbg !5224
  %7 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5225
  %call3 = call i32 @sp887x_writereg(%struct.sp887x_state* %7, i16 zeroext 3079, i16 zeroext 0) #8, !dbg !5226
  %8 = load i32*, i32** %ber.addr, align 8, !dbg !5227
  %9 = load i32, i32* %8, align 4, !dbg !5229
  %cmp = icmp uge i32 %9, 262128, !dbg !5230
  br i1 %cmp, label %if.then, label %if.end, !dbg !5231

if.then:                                          ; preds = %entry
  %10 = load i32*, i32** %ber.addr, align 8, !dbg !5232
  store i32 -1, i32* %10, align 4, !dbg !5233
  br label %if.end, !dbg !5234

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !5235
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sp887x_read_signal_strength(%struct.dvb_frontend* %fe, i16* %strength) #0 !dbg !5236 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %strength.addr = alloca i16*, align 8
  %state = alloca %struct.sp887x_state*, align 8
  %snr12 = alloca i16, align 2
  %signal = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5237, metadata !DIExpression()), !dbg !5238
  store i16* %strength, i16** %strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %strength.addr, metadata !5239, metadata !DIExpression()), !dbg !5240
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state, metadata !5241, metadata !DIExpression()), !dbg !5242
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5243
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5244
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5244
  %2 = bitcast i8* %1 to %struct.sp887x_state*, !dbg !5243
  store %struct.sp887x_state* %2, %struct.sp887x_state** %state, align 8, !dbg !5242
  call void @llvm.dbg.declare(metadata i16* %snr12, metadata !5245, metadata !DIExpression()), !dbg !5246
  %3 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5247
  %call = call i32 @sp887x_readreg(%struct.sp887x_state* %3, i16 zeroext 3862) #8, !dbg !5248
  %conv = trunc i32 %call to i16, !dbg !5248
  store i16 %conv, i16* %snr12, align 2, !dbg !5246
  call void @llvm.dbg.declare(metadata i32* %signal, metadata !5249, metadata !DIExpression()), !dbg !5250
  %4 = load i16, i16* %snr12, align 2, !dbg !5251
  %conv1 = zext i16 %4 to i32, !dbg !5251
  %shl = shl i32 %conv1, 4, !dbg !5252
  %mul = mul i32 3, %shl, !dbg !5253
  store i32 %mul, i32* %signal, align 4, !dbg !5250
  %5 = load i32, i32* %signal, align 4, !dbg !5254
  %cmp = icmp ult i32 %5, 65535, !dbg !5255
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5256

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %signal, align 4, !dbg !5257
  br label %cond.end, !dbg !5256

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5256

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ 65535, %cond.false ], !dbg !5256
  %conv3 = trunc i32 %cond to i16, !dbg !5256
  %7 = load i16*, i16** %strength.addr, align 8, !dbg !5258
  store i16 %conv3, i16* %7, align 2, !dbg !5259
  ret i32 0, !dbg !5260
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sp887x_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5261 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %state = alloca %struct.sp887x_state*, align 8
  %snr12 = alloca i16, align 2
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5262, metadata !DIExpression()), !dbg !5263
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5264, metadata !DIExpression()), !dbg !5265
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state, metadata !5266, metadata !DIExpression()), !dbg !5267
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5268
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5269
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5269
  %2 = bitcast i8* %1 to %struct.sp887x_state*, !dbg !5268
  store %struct.sp887x_state* %2, %struct.sp887x_state** %state, align 8, !dbg !5267
  call void @llvm.dbg.declare(metadata i16* %snr12, metadata !5270, metadata !DIExpression()), !dbg !5271
  %3 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5272
  %call = call i32 @sp887x_readreg(%struct.sp887x_state* %3, i16 zeroext 3862) #8, !dbg !5273
  %conv = trunc i32 %call to i16, !dbg !5273
  store i16 %conv, i16* %snr12, align 2, !dbg !5271
  %4 = load i16, i16* %snr12, align 2, !dbg !5274
  %conv1 = zext i16 %4 to i32, !dbg !5274
  %shl = shl i32 %conv1, 4, !dbg !5275
  %5 = load i16, i16* %snr12, align 2, !dbg !5276
  %conv2 = zext i16 %5 to i32, !dbg !5276
  %shr = ashr i32 %conv2, 8, !dbg !5277
  %or = or i32 %shl, %shr, !dbg !5278
  %conv3 = trunc i32 %or to i16, !dbg !5279
  %6 = load i16*, i16** %snr.addr, align 8, !dbg !5280
  store i16 %conv3, i16* %6, align 2, !dbg !5281
  ret i32 0, !dbg !5282
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sp887x_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !5283 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  %state = alloca %struct.sp887x_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5284, metadata !DIExpression()), !dbg !5285
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !5286, metadata !DIExpression()), !dbg !5287
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state, metadata !5288, metadata !DIExpression()), !dbg !5289
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5290
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5291
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5291
  %2 = bitcast i8* %1 to %struct.sp887x_state*, !dbg !5290
  store %struct.sp887x_state* %2, %struct.sp887x_state** %state, align 8, !dbg !5289
  %3 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5292
  %call = call i32 @sp887x_readreg(%struct.sp887x_state* %3, i16 zeroext 3084) #8, !dbg !5293
  %4 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5294
  store i32 %call, i32* %4, align 4, !dbg !5295
  %5 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5296
  %6 = load i32, i32* %5, align 4, !dbg !5298
  %cmp = icmp eq i32 %6, 4095, !dbg !5299
  br i1 %cmp, label %if.then, label %if.end, !dbg !5300

if.then:                                          ; preds = %entry
  %7 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5301
  store i32 -1, i32* %7, align 4, !dbg !5302
  br label %if.end, !dbg !5303

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !5304
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sp887x_i2c_gate_ctrl(%struct.dvb_frontend* %fe, i32 %enable) #0 !dbg !5305 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %enable.addr = alloca i32, align 4
  %state = alloca %struct.sp887x_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5306, metadata !DIExpression()), !dbg !5307
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !5308, metadata !DIExpression()), !dbg !5309
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state, metadata !5310, metadata !DIExpression()), !dbg !5311
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5312
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5313
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5313
  %2 = bitcast i8* %1 to %struct.sp887x_state*, !dbg !5312
  store %struct.sp887x_state* %2, %struct.sp887x_state** %state, align 8, !dbg !5311
  %3 = load i32, i32* %enable.addr, align 4, !dbg !5314
  %tobool = icmp ne i32 %3, 0, !dbg !5314
  br i1 %tobool, label %if.then, label %if.else, !dbg !5316

if.then:                                          ; preds = %entry
  %4 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5317
  %call = call i32 @sp887x_writereg(%struct.sp887x_state* %4, i16 zeroext 518, i16 zeroext 1) #8, !dbg !5319
  store i32 %call, i32* %retval, align 4, !dbg !5320
  br label %return, !dbg !5320

if.else:                                          ; preds = %entry
  %5 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5321
  %call1 = call i32 @sp887x_writereg(%struct.sp887x_state* %5, i16 zeroext 518, i16 zeroext 0) #8, !dbg !5323
  store i32 %call1, i32* %retval, align 4, !dbg !5324
  br label %return, !dbg !5324

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !5325
  ret i32 %6, !dbg !5325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sp887x_initial_setup(%struct.dvb_frontend* %fe, %struct.firmware* %fw) #0 !dbg !5326 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fw.addr = alloca %struct.firmware*, align 8
  %state = alloca %struct.sp887x_state*, align 8
  %buf = alloca [32 x i8], align 16
  %i = alloca i32, align 4
  %fw_size = alloca i32, align 4
  %mem = alloca i8*, align 8
  %c = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5329, metadata !DIExpression()), !dbg !5330
  store %struct.firmware* %fw, %struct.firmware** %fw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw.addr, metadata !5331, metadata !DIExpression()), !dbg !5332
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state, metadata !5333, metadata !DIExpression()), !dbg !5334
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5335
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5336
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5336
  %2 = bitcast i8* %1 to %struct.sp887x_state*, !dbg !5335
  store %struct.sp887x_state* %2, %struct.sp887x_state** %state, align 8, !dbg !5334
  call void @llvm.dbg.declare(metadata [32 x i8]* %buf, metadata !5337, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5340, metadata !DIExpression()), !dbg !5341
  call void @llvm.dbg.declare(metadata i32* %fw_size, metadata !5342, metadata !DIExpression()), !dbg !5343
  %3 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !5344
  %size = getelementptr inbounds %struct.firmware, %struct.firmware* %3, i32 0, i32 0, !dbg !5345
  %4 = load i64, i64* %size, align 8, !dbg !5345
  %conv = trunc i64 %4 to i32, !dbg !5344
  store i32 %conv, i32* %fw_size, align 4, !dbg !5343
  call void @llvm.dbg.declare(metadata i8** %mem, metadata !5346, metadata !DIExpression()), !dbg !5347
  %5 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !5348
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %5, i32 0, i32 1, !dbg !5349
  %6 = load i8*, i8** %data, align 8, !dbg !5349
  store i8* %6, i8** %mem, align 8, !dbg !5347
  br label %do.body, !dbg !5350

do.body:                                          ; preds = %entry
  %7 = load i32, i32* @debug, align 4, !dbg !5351
  %tobool = icmp ne i32 %7, 0, !dbg !5351
  br i1 %tobool, label %if.then, label %if.end, !dbg !5354

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sp887x_initial_setup, i64 0, i64 0)) #12, !dbg !5351
  br label %if.end, !dbg !5351

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5354

do.end:                                           ; preds = %if.end
  %8 = load i32, i32* %fw_size, align 4, !dbg !5355
  %cmp = icmp slt i32 %8, 16394, !dbg !5357
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5358

if.then2:                                         ; preds = %do.end
  store i32 -19, i32* %retval, align 4, !dbg !5359
  br label %return, !dbg !5359

if.end3:                                          ; preds = %do.end
  %9 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !5360
  %data4 = getelementptr inbounds %struct.firmware, %struct.firmware* %9, i32 0, i32 1, !dbg !5361
  %10 = load i8*, i8** %data4, align 8, !dbg !5361
  %add.ptr = getelementptr i8, i8* %10, i64 10, !dbg !5362
  store i8* %add.ptr, i8** %mem, align 8, !dbg !5363
  %11 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5364
  %call5 = call i32 @sp887x_writereg(%struct.sp887x_state* %11, i16 zeroext 3866, i16 zeroext 0) #8, !dbg !5365
  %12 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5366
  call void @sp887x_microcontroller_stop(%struct.sp887x_state* %12) #8, !dbg !5367
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sp887x_initial_setup, i64 0, i64 0)) #12, !dbg !5368
  %13 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5369
  %call7 = call i32 @sp887x_writereg(%struct.sp887x_state* %13, i16 zeroext -28920, i16 zeroext 8191) #8, !dbg !5370
  %14 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5371
  %call8 = call i32 @sp887x_writereg(%struct.sp887x_state* %14, i16 zeroext -28918, i16 zeroext 0) #8, !dbg !5372
  store i32 0, i32* %i, align 4, !dbg !5373
  br label %for.cond, !dbg !5375

for.cond:                                         ; preds = %for.inc, %if.end3
  %15 = load i32, i32* %i, align 4, !dbg !5376
  %cmp9 = icmp slt i32 %15, 16384, !dbg !5378
  br i1 %cmp9, label %for.body, label %for.end, !dbg !5379

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %c, metadata !5380, metadata !DIExpression()), !dbg !5382
  store i32 30, i32* %c, align 4, !dbg !5382
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5383, metadata !DIExpression()), !dbg !5384
  %16 = load i32, i32* %c, align 4, !dbg !5385
  %17 = load i32, i32* %i, align 4, !dbg !5387
  %sub = sub i32 16384, %17, !dbg !5388
  %cmp11 = icmp sgt i32 %16, %sub, !dbg !5389
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !5390

if.then13:                                        ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !5391
  %sub14 = sub i32 16384, %18, !dbg !5392
  store i32 %sub14, i32* %c, align 4, !dbg !5393
  br label %if.end15, !dbg !5394

if.end15:                                         ; preds = %if.then13, %for.body
  %arrayidx = getelementptr [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !5395
  store i8 -49, i8* %arrayidx, align 16, !dbg !5396
  %arrayidx16 = getelementptr [32 x i8], [32 x i8]* %buf, i64 0, i64 1, !dbg !5397
  store i8 10, i8* %arrayidx16, align 1, !dbg !5398
  %arrayidx17 = getelementptr [32 x i8], [32 x i8]* %buf, i64 0, i64 2, !dbg !5399
  %19 = load i8*, i8** %mem, align 8, !dbg !5400
  %20 = load i32, i32* %i, align 4, !dbg !5401
  %idx.ext = sext i32 %20 to i64, !dbg !5402
  %add.ptr18 = getelementptr i8, i8* %19, i64 %idx.ext, !dbg !5402
  %21 = load i32, i32* %c, align 4, !dbg !5403
  %conv19 = sext i32 %21 to i64, !dbg !5403
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %arrayidx17, i8* align 1 %add.ptr18, i64 %conv19, i1 false), !dbg !5404
  %22 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5405
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !5407
  %23 = load i32, i32* %c, align 4, !dbg !5408
  %add = add i32 %23, 2, !dbg !5409
  %conv20 = trunc i32 %add to i8, !dbg !5408
  %call21 = call i32 @i2c_writebytes(%struct.sp887x_state* %22, i8* %arraydecay, i8 zeroext %conv20) #8, !dbg !5410
  store i32 %call21, i32* %err, align 4, !dbg !5411
  %cmp22 = icmp slt i32 %call21, 0, !dbg !5412
  br i1 %cmp22, label %if.then24, label %if.end27, !dbg !5413

if.then24:                                        ; preds = %if.end15
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !5414
  %24 = load i32, i32* %err, align 4, !dbg !5416
  %call26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sp887x_initial_setup, i64 0, i64 0), i32 %24) #12, !dbg !5417
  %25 = load i32, i32* %err, align 4, !dbg !5418
  store i32 %25, i32* %retval, align 4, !dbg !5419
  br label %return, !dbg !5419

if.end27:                                         ; preds = %if.end15
  br label %for.inc, !dbg !5420

for.inc:                                          ; preds = %if.end27
  %26 = load i32, i32* %i, align 4, !dbg !5421
  %add28 = add i32 %26, 30, !dbg !5421
  store i32 %add28, i32* %i, align 4, !dbg !5421
  br label %for.cond, !dbg !5422, !llvm.loop !5423

for.end:                                          ; preds = %for.cond
  %27 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5425
  %call29 = call i32 @sp887x_writereg(%struct.sp887x_state* %27, i16 zeroext 3091, i16 zeroext 1) #8, !dbg !5426
  %28 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5427
  %call30 = call i32 @sp887x_writereg(%struct.sp887x_state* %28, i16 zeroext 3092, i16 zeroext 0) #8, !dbg !5428
  %29 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5429
  %call31 = call i32 @sp887x_writereg(%struct.sp887x_state* %29, i16 zeroext 3098, i16 zeroext 2162) #8, !dbg !5430
  %30 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5431
  %call32 = call i32 @sp887x_writereg(%struct.sp887x_state* %30, i16 zeroext 3099, i16 zeroext 1) #8, !dbg !5432
  %31 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5433
  %call33 = call i32 @sp887x_writereg(%struct.sp887x_state* %31, i16 zeroext 3100, i16 zeroext 0) #8, !dbg !5434
  %32 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5435
  %call34 = call i32 @sp887x_writereg(%struct.sp887x_state* %32, i16 zeroext 3098, i16 zeroext 2161) #8, !dbg !5436
  %33 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5437
  %call35 = call i32 @sp887x_writereg(%struct.sp887x_state* %33, i16 zeroext 769, i16 zeroext 2) #8, !dbg !5438
  %34 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5439
  call void @sp887x_setup_agc(%struct.sp887x_state* %34) #8, !dbg !5440
  %35 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5441
  %call36 = call i32 @sp887x_writereg(%struct.sp887x_state* %35, i16 zeroext 3328, i16 zeroext 16) #8, !dbg !5442
  %36 = load %struct.sp887x_state*, %struct.sp887x_state** %state, align 8, !dbg !5443
  %call37 = call i32 @sp887x_writereg(%struct.sp887x_state* %36, i16 zeroext 209, i16 zeroext 0) #8, !dbg !5444
  store i32 0, i32* %retval, align 4, !dbg !5445
  br label %return, !dbg !5445

return:                                           ; preds = %for.end, %if.then24, %if.then2
  %37 = load i32, i32* %retval, align 4, !dbg !5446
  ret i32 %37, !dbg !5446
}

; Function Attrs: noredzone
declare dso_local void @release_firmware(%struct.firmware*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sp887x_writereg(%struct.sp887x_state* %state, i16 zeroext %reg, i16 zeroext %data) #0 !dbg !5447 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.sp887x_state*, align 8
  %reg.addr = alloca i16, align 2
  %data.addr = alloca i16, align 2
  %b0 = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  %ret = alloca i32, align 4
  store %struct.sp887x_state* %state, %struct.sp887x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state.addr, metadata !5450, metadata !DIExpression()), !dbg !5451
  store i16 %reg, i16* %reg.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %reg.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  store i16 %data, i16* %data.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %data.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  call void @llvm.dbg.declare(metadata [4 x i8]* %b0, metadata !5456, metadata !DIExpression()), !dbg !5458
  %arrayinit.begin = getelementptr inbounds [4 x i8], [4 x i8]* %b0, i64 0, i64 0, !dbg !5459
  %0 = load i16, i16* %reg.addr, align 2, !dbg !5460
  %conv = zext i16 %0 to i32, !dbg !5460
  %shr = ashr i32 %conv, 8, !dbg !5461
  %conv1 = trunc i32 %shr to i8, !dbg !5460
  store i8 %conv1, i8* %arrayinit.begin, align 1, !dbg !5459
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !5459
  %1 = load i16, i16* %reg.addr, align 2, !dbg !5462
  %conv2 = zext i16 %1 to i32, !dbg !5462
  %and = and i32 %conv2, 255, !dbg !5463
  %conv3 = trunc i32 %and to i8, !dbg !5462
  store i8 %conv3, i8* %arrayinit.element, align 1, !dbg !5459
  %arrayinit.element4 = getelementptr inbounds i8, i8* %arrayinit.element, i64 1, !dbg !5459
  %2 = load i16, i16* %data.addr, align 2, !dbg !5464
  %conv5 = zext i16 %2 to i32, !dbg !5464
  %shr6 = ashr i32 %conv5, 8, !dbg !5465
  %conv7 = trunc i32 %shr6 to i8, !dbg !5464
  store i8 %conv7, i8* %arrayinit.element4, align 1, !dbg !5459
  %arrayinit.element8 = getelementptr inbounds i8, i8* %arrayinit.element4, i64 1, !dbg !5459
  %3 = load i16, i16* %data.addr, align 2, !dbg !5466
  %conv9 = zext i16 %3 to i32, !dbg !5466
  %and10 = and i32 %conv9, 255, !dbg !5467
  %conv11 = trunc i32 %and10 to i8, !dbg !5466
  store i8 %conv11, i8* %arrayinit.element8, align 1, !dbg !5459
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5468, metadata !DIExpression()), !dbg !5469
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5470
  %4 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5471
  %config = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %4, i32 0, i32 1, !dbg !5472
  %5 = load %struct.sp887x_config*, %struct.sp887x_config** %config, align 8, !dbg !5472
  %demod_address = getelementptr inbounds %struct.sp887x_config, %struct.sp887x_config* %5, i32 0, i32 0, !dbg !5473
  %6 = load i8, i8* %demod_address, align 8, !dbg !5473
  %conv12 = zext i8 %6 to i16, !dbg !5471
  store i16 %conv12, i16* %addr, align 8, !dbg !5470
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5470
  store i16 0, i16* %flags, align 2, !dbg !5470
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5470
  store i16 4, i16* %len, align 4, !dbg !5470
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5470
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %b0, i64 0, i64 0, !dbg !5474
  store i8* %arraydecay, i8** %buf, align 8, !dbg !5470
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5475, metadata !DIExpression()), !dbg !5476
  %7 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5477
  %i2c = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %7, i32 0, i32 0, !dbg !5479
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5479
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %8, %struct.i2c_msg* %msg, i32 1) #8, !dbg !5480
  store i32 %call, i32* %ret, align 4, !dbg !5481
  %cmp = icmp ne i32 %call, 1, !dbg !5482
  br i1 %cmp, label %if.then, label %if.end31, !dbg !5483

if.then:                                          ; preds = %entry
  %9 = load i16, i16* %reg.addr, align 2, !dbg !5484
  %conv14 = zext i16 %9 to i32, !dbg !5484
  %cmp15 = icmp eq i32 %conv14, 3866, !dbg !5487
  br i1 %cmp15, label %land.lhs.true, label %if.then25, !dbg !5488

land.lhs.true:                                    ; preds = %if.then
  %10 = load i16, i16* %data.addr, align 2, !dbg !5489
  %conv17 = zext i16 %10 to i32, !dbg !5489
  %cmp18 = icmp eq i32 %conv17, 0, !dbg !5490
  br i1 %cmp18, label %land.lhs.true20, label %if.then25, !dbg !5491

land.lhs.true20:                                  ; preds = %land.lhs.true
  %11 = load i32, i32* %ret, align 4, !dbg !5492
  %cmp21 = icmp eq i32 %11, -121, !dbg !5493
  br i1 %cmp21, label %if.end, label %lor.lhs.false, !dbg !5494

lor.lhs.false:                                    ; preds = %land.lhs.true20
  %12 = load i32, i32* %ret, align 4, !dbg !5495
  %cmp23 = icmp eq i32 %12, -14, !dbg !5496
  br i1 %cmp23, label %if.end, label %if.then25, !dbg !5497

if.then25:                                        ; preds = %lor.lhs.false, %land.lhs.true, %if.then
  %13 = load i16, i16* %reg.addr, align 2, !dbg !5498
  %conv26 = zext i16 %13 to i32, !dbg !5498
  %and27 = and i32 %conv26, 65535, !dbg !5500
  %14 = load i16, i16* %data.addr, align 2, !dbg !5501
  %conv28 = zext i16 %14 to i32, !dbg !5501
  %and29 = and i32 %conv28, 65535, !dbg !5502
  %15 = load i32, i32* %ret, align 4, !dbg !5503
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.sp887x_writereg, i64 0, i64 0), i32 %and27, i32 %and29, i32 %15) #12, !dbg !5504
  %16 = load i32, i32* %ret, align 4, !dbg !5505
  store i32 %16, i32* %retval, align 4, !dbg !5506
  br label %return, !dbg !5506

if.end:                                           ; preds = %lor.lhs.false, %land.lhs.true20
  br label %if.end31, !dbg !5507

if.end31:                                         ; preds = %if.end, %entry
  store i32 0, i32* %retval, align 4, !dbg !5508
  br label %return, !dbg !5508

return:                                           ; preds = %if.end31, %if.then25
  %17 = load i32, i32* %retval, align 4, !dbg !5509
  ret i32 %17, !dbg !5509
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sp887x_microcontroller_stop(%struct.sp887x_state* %state) #0 !dbg !5510 {
entry:
  %state.addr = alloca %struct.sp887x_state*, align 8
  store %struct.sp887x_state* %state, %struct.sp887x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state.addr, metadata !5513, metadata !DIExpression()), !dbg !5514
  br label %do.body, !dbg !5515

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !5516
  %tobool = icmp ne i32 %0, 0, !dbg !5516
  br i1 %tobool, label %if.then, label %if.end, !dbg !5519

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.sp887x_microcontroller_stop, i64 0, i64 0)) #12, !dbg !5516
  br label %if.end, !dbg !5516

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5519

do.end:                                           ; preds = %if.end
  %1 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5520
  %call1 = call i32 @sp887x_writereg(%struct.sp887x_state* %1, i16 zeroext 3848, i16 zeroext 0) #8, !dbg !5521
  %2 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5522
  %call2 = call i32 @sp887x_writereg(%struct.sp887x_state* %2, i16 zeroext 3849, i16 zeroext 0) #8, !dbg !5523
  %3 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5524
  %call3 = call i32 @sp887x_writereg(%struct.sp887x_state* %3, i16 zeroext 3840, i16 zeroext 0) #8, !dbg !5525
  ret void, !dbg !5526
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_writebytes(%struct.sp887x_state* %state, i8* %buf, i8 zeroext %len) #0 !dbg !5527 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.sp887x_state*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i8, align 1
  %msg = alloca %struct.i2c_msg, align 8
  %err = alloca i32, align 4
  store %struct.sp887x_state* %state, %struct.sp887x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state.addr, metadata !5530, metadata !DIExpression()), !dbg !5531
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5532, metadata !DIExpression()), !dbg !5533
  store i8 %len, i8* %len.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %len.addr, metadata !5534, metadata !DIExpression()), !dbg !5535
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5536, metadata !DIExpression()), !dbg !5537
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5538
  %0 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5539
  %config = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %0, i32 0, i32 1, !dbg !5540
  %1 = load %struct.sp887x_config*, %struct.sp887x_config** %config, align 8, !dbg !5540
  %demod_address = getelementptr inbounds %struct.sp887x_config, %struct.sp887x_config* %1, i32 0, i32 0, !dbg !5541
  %2 = load i8, i8* %demod_address, align 8, !dbg !5541
  %conv = zext i8 %2 to i16, !dbg !5539
  store i16 %conv, i16* %addr, align 8, !dbg !5538
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5538
  store i16 0, i16* %flags, align 2, !dbg !5538
  %len1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5538
  %3 = load i8, i8* %len.addr, align 1, !dbg !5542
  %conv2 = zext i8 %3 to i16, !dbg !5542
  store i16 %conv2, i16* %len1, align 4, !dbg !5538
  %buf3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5538
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5543
  store i8* %4, i8** %buf3, align 8, !dbg !5538
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5544, metadata !DIExpression()), !dbg !5545
  %5 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5546
  %i2c = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %5, i32 0, i32 0, !dbg !5548
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5548
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %6, %struct.i2c_msg* %msg, i32 1) #8, !dbg !5549
  store i32 %call, i32* %err, align 4, !dbg !5550
  %cmp = icmp ne i32 %call, 1, !dbg !5551
  br i1 %cmp, label %if.then, label %if.end, !dbg !5552

if.then:                                          ; preds = %entry
  %7 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5553
  %config5 = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %7, i32 0, i32 1, !dbg !5555
  %8 = load %struct.sp887x_config*, %struct.sp887x_config** %config5, align 8, !dbg !5555
  %demod_address6 = getelementptr inbounds %struct.sp887x_config, %struct.sp887x_config* %8, i32 0, i32 0, !dbg !5556
  %9 = load i8, i8* %demod_address6, align 8, !dbg !5556
  %conv7 = zext i8 %9 to i32, !dbg !5553
  %10 = load i32, i32* %err, align 4, !dbg !5557
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.i2c_writebytes, i64 0, i64 0), i32 %conv7, i32 %10) #12, !dbg !5558
  store i32 -121, i32* %retval, align 4, !dbg !5559
  br label %return, !dbg !5559

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5560
  br label %return, !dbg !5560

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5561
  ret i32 %11, !dbg !5561
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sp887x_setup_agc(%struct.sp887x_state* %state) #0 !dbg !5562 {
entry:
  %state.addr = alloca %struct.sp887x_state*, align 8
  store %struct.sp887x_state* %state, %struct.sp887x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state.addr, metadata !5563, metadata !DIExpression()), !dbg !5564
  br label %do.body, !dbg !5565

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !5566
  %tobool = icmp ne i32 %0, 0, !dbg !5566
  br i1 %tobool, label %if.then, label %if.end, !dbg !5569

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.sp887x_setup_agc, i64 0, i64 0)) #12, !dbg !5566
  br label %if.end, !dbg !5566

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5569

do.end:                                           ; preds = %if.end
  %1 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5570
  %call1 = call i32 @sp887x_writereg(%struct.sp887x_state* %1, i16 zeroext 828, i16 zeroext 84) #8, !dbg !5571
  %2 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5572
  %call2 = call i32 @sp887x_writereg(%struct.sp887x_state* %2, i16 zeroext 827, i16 zeroext 76) #8, !dbg !5573
  %3 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5574
  %call3 = call i32 @sp887x_writereg(%struct.sp887x_state* %3, i16 zeroext 808, i16 zeroext 0) #8, !dbg !5575
  %4 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5576
  %call4 = call i32 @sp887x_writereg(%struct.sp887x_state* %4, i16 zeroext 807, i16 zeroext 5) #8, !dbg !5577
  %5 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5578
  %call5 = call i32 @sp887x_writereg(%struct.sp887x_state* %5, i16 zeroext 806, i16 zeroext 1) #8, !dbg !5579
  %6 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5580
  %call6 = call i32 @sp887x_writereg(%struct.sp887x_state* %6, i16 zeroext 805, i16 zeroext 1) #8, !dbg !5581
  %7 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5582
  %call7 = call i32 @sp887x_writereg(%struct.sp887x_state* %7, i16 zeroext 804, i16 zeroext 1) #8, !dbg !5583
  %8 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5584
  %call8 = call i32 @sp887x_writereg(%struct.sp887x_state* %8, i16 zeroext 792, i16 zeroext 80) #8, !dbg !5585
  %9 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5586
  %call9 = call i32 @sp887x_writereg(%struct.sp887x_state* %9, i16 zeroext 791, i16 zeroext 1022) #8, !dbg !5587
  %10 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5588
  %call10 = call i32 @sp887x_writereg(%struct.sp887x_state* %10, i16 zeroext 790, i16 zeroext 1) #8, !dbg !5589
  %11 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5590
  %call11 = call i32 @sp887x_writereg(%struct.sp887x_state* %11, i16 zeroext 787, i16 zeroext 5) #8, !dbg !5591
  %12 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5592
  %call12 = call i32 @sp887x_writereg(%struct.sp887x_state* %12, i16 zeroext 786, i16 zeroext 2) #8, !dbg !5593
  %13 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5594
  %call13 = call i32 @sp887x_writereg(%struct.sp887x_state* %13, i16 zeroext 774, i16 zeroext 0) #8, !dbg !5595
  %14 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5596
  %call14 = call i32 @sp887x_writereg(%struct.sp887x_state* %14, i16 zeroext 771, i16 zeroext 0) #8, !dbg !5597
  ret void, !dbg !5598
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @configure_reg0xc05(%struct.dtv_frontend_properties* %p, i16* %reg0xc05) #0 !dbg !5599 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.dtv_frontend_properties*, align 8
  %reg0xc05.addr = alloca i16*, align 8
  %known_parameters = alloca i32, align 4
  store %struct.dtv_frontend_properties* %p, %struct.dtv_frontend_properties** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p.addr, metadata !5602, metadata !DIExpression()), !dbg !5603
  store i16* %reg0xc05, i16** %reg0xc05.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %reg0xc05.addr, metadata !5604, metadata !DIExpression()), !dbg !5605
  call void @llvm.dbg.declare(metadata i32* %known_parameters, metadata !5606, metadata !DIExpression()), !dbg !5607
  store i32 1, i32* %known_parameters, align 4, !dbg !5607
  %0 = load i16*, i16** %reg0xc05.addr, align 8, !dbg !5608
  store i16 0, i16* %0, align 2, !dbg !5609
  %1 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5610
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %1, i32 0, i32 1, !dbg !5611
  %2 = load i32, i32* %modulation, align 4, !dbg !5611
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb3
    i32 6, label %sw.bb7
  ], !dbg !5612

sw.bb:                                            ; preds = %entry
  br label %sw.epilog, !dbg !5613

sw.bb1:                                           ; preds = %entry
  %3 = load i16*, i16** %reg0xc05.addr, align 8, !dbg !5615
  %4 = load i16, i16* %3, align 2, !dbg !5616
  %conv = zext i16 %4 to i32, !dbg !5616
  %or = or i32 %conv, 1024, !dbg !5616
  %conv2 = trunc i32 %or to i16, !dbg !5616
  store i16 %conv2, i16* %3, align 2, !dbg !5616
  br label %sw.epilog, !dbg !5617

sw.bb3:                                           ; preds = %entry
  %5 = load i16*, i16** %reg0xc05.addr, align 8, !dbg !5618
  %6 = load i16, i16* %5, align 2, !dbg !5619
  %conv4 = zext i16 %6 to i32, !dbg !5619
  %or5 = or i32 %conv4, 2048, !dbg !5619
  %conv6 = trunc i32 %or5 to i16, !dbg !5619
  store i16 %conv6, i16* %5, align 2, !dbg !5619
  br label %sw.epilog, !dbg !5620

sw.bb7:                                           ; preds = %entry
  store i32 0, i32* %known_parameters, align 4, !dbg !5621
  br label %sw.epilog, !dbg !5622

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5623
  br label %return, !dbg !5623

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb3, %sw.bb1, %sw.bb
  %7 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5624
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %7, i32 0, i32 9, !dbg !5625
  %8 = load i32, i32* %hierarchy, align 4, !dbg !5625
  switch i32 %8, label %sw.default22 [
    i32 0, label %sw.bb8
    i32 1, label %sw.bb9
    i32 2, label %sw.bb13
    i32 3, label %sw.bb17
    i32 4, label %sw.bb21
  ], !dbg !5626

sw.bb8:                                           ; preds = %sw.epilog
  br label %sw.epilog23, !dbg !5627

sw.bb9:                                           ; preds = %sw.epilog
  %9 = load i16*, i16** %reg0xc05.addr, align 8, !dbg !5629
  %10 = load i16, i16* %9, align 2, !dbg !5630
  %conv10 = zext i16 %10 to i32, !dbg !5630
  %or11 = or i32 %conv10, 128, !dbg !5630
  %conv12 = trunc i32 %or11 to i16, !dbg !5630
  store i16 %conv12, i16* %9, align 2, !dbg !5630
  br label %sw.epilog23, !dbg !5631

sw.bb13:                                          ; preds = %sw.epilog
  %11 = load i16*, i16** %reg0xc05.addr, align 8, !dbg !5632
  %12 = load i16, i16* %11, align 2, !dbg !5633
  %conv14 = zext i16 %12 to i32, !dbg !5633
  %or15 = or i32 %conv14, 256, !dbg !5633
  %conv16 = trunc i32 %or15 to i16, !dbg !5633
  store i16 %conv16, i16* %11, align 2, !dbg !5633
  br label %sw.epilog23, !dbg !5634

sw.bb17:                                          ; preds = %sw.epilog
  %13 = load i16*, i16** %reg0xc05.addr, align 8, !dbg !5635
  %14 = load i16, i16* %13, align 2, !dbg !5636
  %conv18 = zext i16 %14 to i32, !dbg !5636
  %or19 = or i32 %conv18, 384, !dbg !5636
  %conv20 = trunc i32 %or19 to i16, !dbg !5636
  store i16 %conv20, i16* %13, align 2, !dbg !5636
  br label %sw.epilog23, !dbg !5637

sw.bb21:                                          ; preds = %sw.epilog
  store i32 0, i32* %known_parameters, align 4, !dbg !5638
  br label %sw.epilog23, !dbg !5639

sw.default22:                                     ; preds = %sw.epilog
  store i32 -22, i32* %retval, align 4, !dbg !5640
  br label %return, !dbg !5640

sw.epilog23:                                      ; preds = %sw.bb21, %sw.bb17, %sw.bb13, %sw.bb9, %sw.bb8
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5641
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 11, !dbg !5642
  %16 = load i32, i32* %code_rate_HP, align 4, !dbg !5642
  switch i32 %16, label %sw.default42 [
    i32 1, label %sw.bb24
    i32 2, label %sw.bb25
    i32 3, label %sw.bb29
    i32 5, label %sw.bb33
    i32 7, label %sw.bb37
    i32 9, label %sw.bb41
  ], !dbg !5643

sw.bb24:                                          ; preds = %sw.epilog23
  br label %sw.epilog43, !dbg !5644

sw.bb25:                                          ; preds = %sw.epilog23
  %17 = load i16*, i16** %reg0xc05.addr, align 8, !dbg !5646
  %18 = load i16, i16* %17, align 2, !dbg !5647
  %conv26 = zext i16 %18 to i32, !dbg !5647
  %or27 = or i32 %conv26, 8, !dbg !5647
  %conv28 = trunc i32 %or27 to i16, !dbg !5647
  store i16 %conv28, i16* %17, align 2, !dbg !5647
  br label %sw.epilog43, !dbg !5648

sw.bb29:                                          ; preds = %sw.epilog23
  %19 = load i16*, i16** %reg0xc05.addr, align 8, !dbg !5649
  %20 = load i16, i16* %19, align 2, !dbg !5650
  %conv30 = zext i16 %20 to i32, !dbg !5650
  %or31 = or i32 %conv30, 16, !dbg !5650
  %conv32 = trunc i32 %or31 to i16, !dbg !5650
  store i16 %conv32, i16* %19, align 2, !dbg !5650
  br label %sw.epilog43, !dbg !5651

sw.bb33:                                          ; preds = %sw.epilog23
  %21 = load i16*, i16** %reg0xc05.addr, align 8, !dbg !5652
  %22 = load i16, i16* %21, align 2, !dbg !5653
  %conv34 = zext i16 %22 to i32, !dbg !5653
  %or35 = or i32 %conv34, 24, !dbg !5653
  %conv36 = trunc i32 %or35 to i16, !dbg !5653
  store i16 %conv36, i16* %21, align 2, !dbg !5653
  br label %sw.epilog43, !dbg !5654

sw.bb37:                                          ; preds = %sw.epilog23
  %23 = load i16*, i16** %reg0xc05.addr, align 8, !dbg !5655
  %24 = load i16, i16* %23, align 2, !dbg !5656
  %conv38 = zext i16 %24 to i32, !dbg !5656
  %or39 = or i32 %conv38, 32, !dbg !5656
  %conv40 = trunc i32 %or39 to i16, !dbg !5656
  store i16 %conv40, i16* %23, align 2, !dbg !5656
  br label %sw.epilog43, !dbg !5657

sw.bb41:                                          ; preds = %sw.epilog23
  store i32 0, i32* %known_parameters, align 4, !dbg !5658
  br label %sw.epilog43, !dbg !5659

sw.default42:                                     ; preds = %sw.epilog23
  store i32 -22, i32* %retval, align 4, !dbg !5660
  br label %return, !dbg !5660

sw.epilog43:                                      ; preds = %sw.bb41, %sw.bb37, %sw.bb33, %sw.bb29, %sw.bb25, %sw.bb24
  %25 = load i32, i32* %known_parameters, align 4, !dbg !5661
  %tobool = icmp ne i32 %25, 0, !dbg !5661
  br i1 %tobool, label %if.then, label %if.else, !dbg !5663

if.then:                                          ; preds = %sw.epilog43
  %26 = load i16*, i16** %reg0xc05.addr, align 8, !dbg !5664
  %27 = load i16, i16* %26, align 2, !dbg !5665
  %conv44 = zext i16 %27 to i32, !dbg !5665
  %or45 = or i32 %conv44, 4, !dbg !5665
  %conv46 = trunc i32 %or45 to i16, !dbg !5665
  store i16 %conv46, i16* %26, align 2, !dbg !5665
  br label %if.end, !dbg !5666

if.else:                                          ; preds = %sw.epilog43
  %28 = load i16*, i16** %reg0xc05.addr, align 8, !dbg !5667
  %29 = load i16, i16* %28, align 2, !dbg !5668
  %conv47 = zext i16 %29 to i32, !dbg !5668
  %or48 = or i32 %conv47, 2, !dbg !5668
  %conv49 = trunc i32 %or48 to i16, !dbg !5668
  store i16 %conv49, i16* %28, align 2, !dbg !5668
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %retval, align 4, !dbg !5669
  br label %return, !dbg !5669

return:                                           ; preds = %if.end, %sw.default42, %sw.default22, %sw.default
  %30 = load i32, i32* %retval, align 4, !dbg !5670
  ret i32 %30, !dbg !5670
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sp887x_correct_offsets(%struct.sp887x_state* %state, %struct.dtv_frontend_properties* %p, i32 %actual_freq) #0 !dbg !396 {
entry:
  %state.addr = alloca %struct.sp887x_state*, align 8
  %p.addr = alloca %struct.dtv_frontend_properties*, align 8
  %actual_freq.addr = alloca i32, align 4
  %bw_index = alloca i32, align 4
  %freq_offset = alloca i32, align 4
  %sysclock = alloca i32, align 4
  %ifreq = alloca i32, align 4
  %freq = alloca i32, align 4
  %frequency_shift = alloca i32, align 4
  store %struct.sp887x_state* %state, %struct.sp887x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state.addr, metadata !5671, metadata !DIExpression()), !dbg !5672
  store %struct.dtv_frontend_properties* %p, %struct.dtv_frontend_properties** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p.addr, metadata !5673, metadata !DIExpression()), !dbg !5674
  store i32 %actual_freq, i32* %actual_freq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %actual_freq.addr, metadata !5675, metadata !DIExpression()), !dbg !5676
  call void @llvm.dbg.declare(metadata i32* %bw_index, metadata !5677, metadata !DIExpression()), !dbg !5678
  call void @llvm.dbg.declare(metadata i32* %freq_offset, metadata !5679, metadata !DIExpression()), !dbg !5680
  %0 = load i32, i32* %actual_freq.addr, align 4, !dbg !5681
  %1 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5682
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %1, i32 0, i32 0, !dbg !5683
  %2 = load i32, i32* %frequency, align 4, !dbg !5683
  %sub = sub i32 %0, %2, !dbg !5684
  store i32 %sub, i32* %freq_offset, align 4, !dbg !5680
  call void @llvm.dbg.declare(metadata i32* %sysclock, metadata !5685, metadata !DIExpression()), !dbg !5686
  store i32 61003, i32* %sysclock, align 4, !dbg !5686
  call void @llvm.dbg.declare(metadata i32* %ifreq, metadata !5687, metadata !DIExpression()), !dbg !5688
  store i32 36000000, i32* %ifreq, align 4, !dbg !5688
  call void @llvm.dbg.declare(metadata i32* %freq, metadata !5689, metadata !DIExpression()), !dbg !5690
  call void @llvm.dbg.declare(metadata i32* %frequency_shift, metadata !5691, metadata !DIExpression()), !dbg !5692
  %3 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5693
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %3, i32 0, i32 7, !dbg !5694
  %4 = load i32, i32* %bandwidth_hz, align 4, !dbg !5694
  switch i32 %4, label %sw.default [
    i32 8000000, label %sw.bb
    i32 7000000, label %sw.bb1
    i32 6000000, label %sw.bb2
  ], !dbg !5695

sw.default:                                       ; preds = %entry
  br label %sw.bb, !dbg !5696

sw.bb:                                            ; preds = %entry, %sw.default
  store i32 0, i32* %bw_index, align 4, !dbg !5697
  br label %sw.epilog, !dbg !5699

sw.bb1:                                           ; preds = %entry
  store i32 1, i32* %bw_index, align 4, !dbg !5700
  br label %sw.epilog, !dbg !5701

sw.bb2:                                           ; preds = %entry
  store i32 2, i32* %bw_index, align 4, !dbg !5702
  br label %sw.epilog, !dbg !5703

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %5 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5704
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 4, !dbg !5706
  %6 = load i32, i32* %inversion, align 4, !dbg !5706
  %cmp = icmp eq i32 %6, 1, !dbg !5707
  br i1 %cmp, label %if.then, label %if.else, !dbg !5708

if.then:                                          ; preds = %sw.epilog
  %7 = load i32, i32* %ifreq, align 4, !dbg !5709
  %8 = load i32, i32* %freq_offset, align 4, !dbg !5710
  %sub3 = sub i32 %7, %8, !dbg !5711
  store i32 %sub3, i32* %freq, align 4, !dbg !5712
  br label %if.end, !dbg !5713

if.else:                                          ; preds = %sw.epilog
  %9 = load i32, i32* %ifreq, align 4, !dbg !5714
  %10 = load i32, i32* %freq_offset, align 4, !dbg !5715
  %add = add i32 %9, %10, !dbg !5716
  store i32 %add, i32* %freq, align 4, !dbg !5717
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %freq, align 4, !dbg !5718
  %div = sdiv i32 %11, 333, !dbg !5719
  %12 = load i32, i32* %sysclock, align 4, !dbg !5720
  call void @divide(i32 %div, i32 %12, i32* null, i32* %frequency_shift) #8, !dbg !5721
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5722
  %inversion4 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 4, !dbg !5724
  %14 = load i32, i32* %inversion4, align 4, !dbg !5724
  %cmp5 = icmp eq i32 %14, 1, !dbg !5725
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !5726

if.then6:                                         ; preds = %if.end
  %15 = load i32, i32* %frequency_shift, align 4, !dbg !5727
  %sub7 = sub i32 0, %15, !dbg !5728
  store i32 %sub7, i32* %frequency_shift, align 4, !dbg !5729
  br label %if.end8, !dbg !5730

if.end8:                                          ; preds = %if.then6, %if.end
  %16 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5731
  %17 = load i32, i32* %bw_index, align 4, !dbg !5732
  %idxprom = sext i32 %17 to i64, !dbg !5733
  %arrayidx = getelementptr [3 x i32], [3 x i32]* @sp887x_correct_offsets.srate_correction, i64 0, i64 %idxprom, !dbg !5733
  %18 = load i32, i32* %arrayidx, align 4, !dbg !5733
  %shr = lshr i32 %18, 12, !dbg !5734
  %conv = trunc i32 %shr to i16, !dbg !5733
  %call = call i32 @sp887x_writereg(%struct.sp887x_state* %16, i16 zeroext 793, i16 zeroext %conv) #8, !dbg !5735
  %19 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5736
  %20 = load i32, i32* %bw_index, align 4, !dbg !5737
  %idxprom9 = sext i32 %20 to i64, !dbg !5738
  %arrayidx10 = getelementptr [3 x i32], [3 x i32]* @sp887x_correct_offsets.srate_correction, i64 0, i64 %idxprom9, !dbg !5738
  %21 = load i32, i32* %arrayidx10, align 4, !dbg !5738
  %and = and i32 %21, 4095, !dbg !5739
  %conv11 = trunc i32 %and to i16, !dbg !5738
  %call12 = call i32 @sp887x_writereg(%struct.sp887x_state* %19, i16 zeroext 794, i16 zeroext %conv11) #8, !dbg !5740
  %22 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5741
  %23 = load i32, i32* %frequency_shift, align 4, !dbg !5742
  %shr13 = ashr i32 %23, 12, !dbg !5743
  %conv14 = trunc i32 %shr13 to i16, !dbg !5742
  %call15 = call i32 @sp887x_writereg(%struct.sp887x_state* %22, i16 zeroext 777, i16 zeroext %conv14) #8, !dbg !5744
  %24 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5745
  %25 = load i32, i32* %frequency_shift, align 4, !dbg !5746
  %and16 = and i32 %25, 4095, !dbg !5747
  %conv17 = trunc i32 %and16 to i16, !dbg !5746
  %call18 = call i32 @sp887x_writereg(%struct.sp887x_state* %24, i16 zeroext 778, i16 zeroext %conv17) #8, !dbg !5748
  ret void, !dbg !5749
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sp887x_microcontroller_start(%struct.sp887x_state* %state) #0 !dbg !5750 {
entry:
  %state.addr = alloca %struct.sp887x_state*, align 8
  store %struct.sp887x_state* %state, %struct.sp887x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sp887x_state** %state.addr, metadata !5751, metadata !DIExpression()), !dbg !5752
  br label %do.body, !dbg !5753

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !5754
  %tobool = icmp ne i32 %0, 0, !dbg !5754
  br i1 %tobool, label %if.then, label %if.end, !dbg !5757

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.sp887x_microcontroller_start, i64 0, i64 0)) #12, !dbg !5754
  br label %if.end, !dbg !5754

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5757

do.end:                                           ; preds = %if.end
  %1 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5758
  %call1 = call i32 @sp887x_writereg(%struct.sp887x_state* %1, i16 zeroext 3848, i16 zeroext 0) #8, !dbg !5759
  %2 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5760
  %call2 = call i32 @sp887x_writereg(%struct.sp887x_state* %2, i16 zeroext 3849, i16 zeroext 0) #8, !dbg !5761
  %3 = load %struct.sp887x_state*, %struct.sp887x_state** %state.addr, align 8, !dbg !5762
  %call3 = call i32 @sp887x_writereg(%struct.sp887x_state* %3, i16 zeroext 3840, i16 zeroext 1) #8, !dbg !5763
  ret void, !dbg !5764
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @divide(i32 %n, i32 %d, i32* %quotient_i, i32* %quotient_f) #0 !dbg !5765 {
entry:
  %n.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %quotient_i.addr = alloca i32*, align 8
  %quotient_f.addr = alloca i32*, align 8
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !5768, metadata !DIExpression()), !dbg !5769
  store i32 %d, i32* %d.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %d.addr, metadata !5770, metadata !DIExpression()), !dbg !5771
  store i32* %quotient_i, i32** %quotient_i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %quotient_i.addr, metadata !5772, metadata !DIExpression()), !dbg !5773
  store i32* %quotient_f, i32** %quotient_f.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %quotient_f.addr, metadata !5774, metadata !DIExpression()), !dbg !5775
  call void @llvm.dbg.declare(metadata i32* %q, metadata !5776, metadata !DIExpression()), !dbg !5777
  call void @llvm.dbg.declare(metadata i32* %r, metadata !5778, metadata !DIExpression()), !dbg !5779
  %0 = load i32, i32* %n.addr, align 4, !dbg !5780
  %1 = load i32, i32* %d.addr, align 4, !dbg !5781
  %rem = srem i32 %0, %1, !dbg !5782
  %shl = shl i32 %rem, 8, !dbg !5783
  store i32 %shl, i32* %r, align 4, !dbg !5784
  %2 = load i32, i32* %r, align 4, !dbg !5785
  %3 = load i32, i32* %d.addr, align 4, !dbg !5786
  %div = udiv i32 %2, %3, !dbg !5787
  store i32 %div, i32* %q, align 4, !dbg !5788
  %4 = load i32*, i32** %quotient_i.addr, align 8, !dbg !5789
  %tobool = icmp ne i32* %4, null, !dbg !5789
  br i1 %tobool, label %if.then, label %if.end, !dbg !5791

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %q, align 4, !dbg !5792
  %6 = load i32*, i32** %quotient_i.addr, align 8, !dbg !5793
  store i32 %5, i32* %6, align 4, !dbg !5794
  br label %if.end, !dbg !5795

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32*, i32** %quotient_f.addr, align 8, !dbg !5796
  %tobool1 = icmp ne i32* %7, null, !dbg !5796
  br i1 %tobool1, label %if.then2, label %if.end12, !dbg !5798

if.then2:                                         ; preds = %if.end
  %8 = load i32, i32* %r, align 4, !dbg !5799
  %9 = load i32, i32* %d.addr, align 4, !dbg !5801
  %rem3 = urem i32 %8, %9, !dbg !5802
  %shl4 = shl i32 %rem3, 8, !dbg !5803
  store i32 %shl4, i32* %r, align 4, !dbg !5804
  %10 = load i32, i32* %q, align 4, !dbg !5805
  %shl5 = shl i32 %10, 8, !dbg !5806
  %11 = load i32, i32* %r, align 4, !dbg !5807
  %12 = load i32, i32* %d.addr, align 4, !dbg !5808
  %div6 = udiv i32 %11, %12, !dbg !5809
  %or = or i32 %shl5, %div6, !dbg !5810
  store i32 %or, i32* %q, align 4, !dbg !5811
  %13 = load i32, i32* %r, align 4, !dbg !5812
  %14 = load i32, i32* %d.addr, align 4, !dbg !5813
  %rem7 = urem i32 %13, %14, !dbg !5814
  %shl8 = shl i32 %rem7, 8, !dbg !5815
  store i32 %shl8, i32* %r, align 4, !dbg !5816
  %15 = load i32, i32* %q, align 4, !dbg !5817
  %shl9 = shl i32 %15, 8, !dbg !5818
  %16 = load i32, i32* %r, align 4, !dbg !5819
  %17 = load i32, i32* %d.addr, align 4, !dbg !5820
  %div10 = udiv i32 %16, %17, !dbg !5821
  %or11 = or i32 %shl9, %div10, !dbg !5822
  %18 = load i32*, i32** %quotient_f.addr, align 8, !dbg !5823
  store i32 %or11, i32* %18, align 4, !dbg !5824
  br label %if.end12, !dbg !5825

if.end12:                                         ; preds = %if.then2, %if.end
  ret void, !dbg !5826
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
!llvm.module.flags = !{!4448, !4449, !4450, !4451}
!llvm.ident = !{!4452}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sp887x_ops", scope: !2, file: !3, line: 594, type: !4447, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !290, globals: !294, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/sp887x.c", directory: "/home/lizy2001/genbc/linux")
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
!290 = !{!291, !293}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !292, line: 148, baseType: !7)
!292 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!294 = !{!295, !367, !372, !377, !382, !387, !392, !0, !394, !4442}
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 623, type: !297, isLocal: true, isDefinition: true, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !299, line: 69, size: 320, elements: !300)
!299 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!300 = !{!301, !305, !309, !330, !337, !341, !345}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !298, file: !299, line: 70, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!304 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !298, file: !299, line: 71, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !308, line: 76, flags: DIFlagFwdDecl)
!308 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !298, file: !299, line: 72, baseType: !310, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !299, line: 47, size: 256, elements: !313)
!313 = !{!314, !315, !321, !326}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !299, line: 49, baseType: !7, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !312, file: !299, line: 51, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!319, !302, !320}
!319 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !312, file: !299, line: 53, baseType: !322, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!319, !325, !320}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !312, file: !299, line: 55, baseType: !327, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !293}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !298, file: !299, line: 73, baseType: !331, size: 16, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !333, line: 19, baseType: !334)
!333 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !335, line: 24, baseType: !336)
!335 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!336 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !298, file: !299, line: 74, baseType: !338, size: 8, offset: 208)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !333, line: 16, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !335, line: 20, baseType: !340)
!340 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !298, file: !299, line: 75, baseType: !342, size: 8, offset: 216)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !333, line: 17, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !335, line: 21, baseType: !344)
!344 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!345 = !DIDerivedType(tag: DW_TAG_member, scope: !298, file: !299, line: 76, baseType: !346, size: 64, offset: 256)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !299, line: 76, size: 64, elements: !347)
!347 = !{!348, !349, !356}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !346, file: !299, line: 77, baseType: !293, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !346, file: !299, line: 78, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !299, line: 86, size: 128, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !352, file: !299, line: 87, baseType: !7, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !352, file: !299, line: 88, baseType: !325, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !346, file: !299, line: 79, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !299, line: 92, size: 256, elements: !360)
!360 = !{!361, !362, !363, !365, !366}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !359, file: !299, line: 94, baseType: !7, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !359, file: !299, line: 95, baseType: !7, size: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !359, file: !299, line: 96, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !359, file: !299, line: 97, baseType: !310, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !359, file: !299, line: 98, baseType: !293, size: 64, offset: 192)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 623, type: !369, isLocal: true, isDefinition: true, align: 8)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 208, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 26)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 624, type: !374, isLocal: true, isDefinition: true, align: 8)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 512, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 64)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 626, type: !379, isLocal: true, isDefinition: true, align: 8)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 456, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 57)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file223", scope: !2, file: !3, line: 627, type: !384, isLocal: true, isDefinition: true, align: 8)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 376, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 47)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license224", scope: !2, file: !3, line: 627, type: !389, isLocal: true, isDefinition: true, align: 8)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 152, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 19)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 34, type: !319, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "srate_correction", scope: !396, file: !3, line: 309, type: !4441, isLocal: true, isDefinition: true)
!396 = distinct !DISubprogram(name: "sp887x_correct_offsets", scope: !3, file: !3, line: 305, type: !397, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !399, !4172, !319}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sp887x_state", file: !3, line: 25, size: 10432, elements: !401)
!401 = !{!402, !4099, !4439, !4440}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !400, file: !3, line: 26, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !405, line: 695, size: 7552, elements: !406)
!405 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!406 = !{!407, !408, !409, !448, !449, !463, !3492, !3493, !3494, !3495, !4046, !4047, !4048, !4052, !4053, !4054, !4055, !4087, !4098}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !404, file: !405, line: 696, baseType: !306, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !404, file: !405, line: 697, baseType: !7, size: 32, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !404, file: !405, line: 698, baseType: !410, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !405, line: 519, size: 320, elements: !413)
!413 = !{!414, !427, !428, !441, !442}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !412, file: !405, line: 529, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!319, !403, !418, !319}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !420, line: 69, size: 128, elements: !421)
!420 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!421 = !{!422, !423, !424, !425}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !419, file: !420, line: 70, baseType: !334, size: 16)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !419, file: !420, line: 71, baseType: !334, size: 16, offset: 16)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !419, file: !420, line: 84, baseType: !334, size: 16, offset: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !419, file: !420, line: 85, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !412, file: !405, line: 531, baseType: !415, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !412, file: !405, line: 533, baseType: !429, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!319, !403, !332, !336, !304, !342, !319, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !420, line: 135, size: 272, elements: !434)
!434 = !{!435, !436, !437}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !433, file: !420, line: 136, baseType: !343, size: 8)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !433, file: !420, line: 137, baseType: !334, size: 16)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !433, file: !420, line: 138, baseType: !438, size: 272)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 272, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 34)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !412, file: !405, line: 536, baseType: !429, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !412, file: !405, line: 541, baseType: !443, size: 64, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!446, !403}
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !333, line: 21, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !335, line: 27, baseType: !7)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !404, file: !405, line: 699, baseType: !293, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !404, file: !405, line: 702, baseType: !450, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !405, line: 557, size: 192, elements: !453)
!453 = !{!454, !458, !462}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !452, file: !405, line: 558, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !403, !7}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !452, file: !405, line: 559, baseType: !459, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!319, !403, !7}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !452, file: !405, line: 560, baseType: !455, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !404, file: !405, line: 703, baseType: !464, size: 192, offset: 320)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !465, line: 30, size: 192, elements: !466)
!465 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!466 = !{!467, !477, !493}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !464, file: !465, line: 31, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !469, line: 29, baseType: !470)
!469 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !469, line: 20, elements: !471)
!471 = !{!472}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !470, file: !469, line: 21, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !474, line: 25, baseType: !475)
!474 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 25, elements: !476)
!476 = !{}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !464, file: !465, line: 32, baseType: !478, size: 128)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !479, line: 125, size: 128, elements: !480)
!479 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!480 = !{!481, !492}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !478, file: !479, line: 126, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !479, line: 31, size: 64, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !482, file: !479, line: 32, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !479, line: 24, size: 192, align: 64, elements: !487)
!487 = !{!488, !490, !491}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !486, file: !479, line: 25, baseType: !489, size: 64)
!489 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !486, file: !479, line: 26, baseType: !485, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !486, file: !479, line: 27, baseType: !485, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !478, file: !479, line: 127, baseType: !485, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !464, file: !465, line: 33, baseType: !494, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !496, line: 640, size: 48640, elements: !497)
!496 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!497 = !{!498, !504, !507, !508, !518, !519, !520, !521, !522, !523, !524, !525, !529, !555, !566, !658, !659, !660, !671, !672, !674, !675, !2794, !2795, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2877, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2892, !2893, !2894, !2896, !2897, !2898, !2899, !2900, !2901, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2925, !2930, !2931, !2932, !2933, !2934, !2936, !2939, !2942, !2945, !2948, !2952, !3053, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3099, !3100, !3101, !3102, !3103, !3108, !3109, !3110, !3113, !3114, !3117, !3120, !3123, !3124, !3156, !3159, !3160, !3239, !3240, !3243, !3244, !3247, !3248, !3249, !3253, !3254, !3255, !3268, !3269, !3270, !3280, !3285, !3286, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !495, file: !496, line: 646, baseType: !499, size: 128)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !500, line: 56, size: 128, elements: !501)
!500 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !500, line: 57, baseType: !489, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !499, file: !500, line: 58, baseType: !446, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !495, file: !496, line: 649, baseType: !505, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !506)
!506 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !495, file: !496, line: 657, baseType: !293, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !495, file: !496, line: 658, baseType: !509, size: 32, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !510, line: 113, baseType: !511)
!510 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !510, line: 111, size: 32, elements: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !511, file: !510, line: 112, baseType: !514, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !292, line: 168, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 166, size: 32, elements: !516)
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !515, file: !292, line: 167, baseType: !319, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !496, line: 660, baseType: !7, size: 32, offset: 288)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !495, file: !496, line: 661, baseType: !7, size: 32, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !495, file: !496, line: 684, baseType: !319, size: 32, offset: 352)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !495, file: !496, line: 686, baseType: !319, size: 32, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !495, file: !496, line: 687, baseType: !319, size: 32, offset: 416)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !495, file: !496, line: 688, baseType: !319, size: 32, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !495, file: !496, line: 689, baseType: !7, size: 32, offset: 480)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !495, file: !496, line: 691, baseType: !526, size: 64, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !496, line: 691, flags: DIFlagFwdDecl)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !495, file: !496, line: 692, baseType: !530, size: 832, offset: 576)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !496, line: 451, size: 832, elements: !531)
!531 = !{!532, !537, !538, !544, !545, !549, !550, !551, !552, !553}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !530, file: !496, line: 453, baseType: !533, size: 128)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !496, line: 325, size: 128, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !533, file: !496, line: 326, baseType: !489, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !533, file: !496, line: 327, baseType: !446, size: 32, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !530, file: !496, line: 454, baseType: !486, size: 192, align: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !530, file: !496, line: 455, baseType: !539, size: 128, offset: 320)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !292, line: 178, size: 128, elements: !540)
!540 = !{!541, !543}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !539, file: !292, line: 179, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !539, file: !292, line: 179, baseType: !542, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !530, file: !496, line: 456, baseType: !7, size: 32, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !530, file: !496, line: 458, baseType: !546, size: 64, offset: 512)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !333, line: 23, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !335, line: 31, baseType: !548)
!548 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !530, file: !496, line: 459, baseType: !546, size: 64, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !530, file: !496, line: 460, baseType: !546, size: 64, offset: 640)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !530, file: !496, line: 461, baseType: !546, size: 64, offset: 704)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !530, file: !496, line: 463, baseType: !546, size: 64, offset: 768)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !530, file: !496, line: 465, baseType: !554, offset: 832)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !496, line: 415, elements: !476)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !495, file: !496, line: 693, baseType: !556, size: 384, offset: 1408)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !496, line: 489, size: 384, elements: !557)
!557 = !{!558, !559, !560, !561, !562, !563, !564}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !556, file: !496, line: 490, baseType: !539, size: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !556, file: !496, line: 491, baseType: !489, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !556, file: !496, line: 492, baseType: !489, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !556, file: !496, line: 493, baseType: !7, size: 32, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !556, file: !496, line: 494, baseType: !336, size: 16, offset: 288)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !556, file: !496, line: 495, baseType: !336, size: 16, offset: 304)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !556, file: !496, line: 497, baseType: !565, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !495, file: !496, line: 697, baseType: !567, size: 1792, offset: 1792)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !496, line: 507, size: 1792, elements: !568)
!568 = !{!569, !570, !571, !572, !573, !574, !575, !579, !580, !581, !582, !583, !584, !585, !655, !656}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !567, file: !496, line: 508, baseType: !486, size: 192, align: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !567, file: !496, line: 515, baseType: !546, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !567, file: !496, line: 516, baseType: !546, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !567, file: !496, line: 517, baseType: !546, size: 64, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !567, file: !496, line: 518, baseType: !546, size: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !567, file: !496, line: 519, baseType: !546, size: 64, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !567, file: !496, line: 526, baseType: !576, size: 64, offset: 512)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !333, line: 22, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !335, line: 30, baseType: !578)
!578 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !567, file: !496, line: 527, baseType: !546, size: 64, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !567, file: !496, line: 528, baseType: !7, size: 32, offset: 640)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !567, file: !496, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !567, file: !496, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !567, file: !496, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !567, file: !496, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !567, file: !496, line: 563, baseType: !586, size: 512, offset: 704)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !587)
!587 = !{!588, !596, !597, !602, !651, !652, !653, !654}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !586, file: !191, line: 119, baseType: !589, size: 256)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !590, line: 9, size: 256, elements: !591)
!590 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !589, file: !590, line: 10, baseType: !486, size: 192, align: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !589, file: !590, line: 11, baseType: !594, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !595, line: 29, baseType: !576)
!595 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !586, file: !191, line: 120, baseType: !594, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !586, file: !191, line: 121, baseType: !598, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!190, !601}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !586, file: !191, line: 122, baseType: !603, size: 64, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !605)
!605 = !{!606, !626, !627, !631, !641, !642, !646, !650}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !604, file: !191, line: 160, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !608, file: !191, line: 215, baseType: !468)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !608, file: !191, line: 216, baseType: !7, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !608, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !608, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !608, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !608, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !608, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !608, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !608, file: !191, line: 233, baseType: !594, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !608, file: !191, line: 234, baseType: !601, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !608, file: !191, line: 235, baseType: !594, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !608, file: !191, line: 236, baseType: !601, size: 64, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !608, file: !191, line: 237, baseType: !623, size: 4096, offset: 512)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 4096, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 8)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !604, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !604, file: !191, line: 162, baseType: !628, size: 32, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !292, line: 27, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !630, line: 96, baseType: !319)
!630 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!631 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !604, file: !191, line: 163, baseType: !632, size: 32, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !633, line: 276, baseType: !634)
!633 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !633, line: 276, size: 32, elements: !635)
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !634, file: !633, line: 276, baseType: !637, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !633, line: 70, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !633, line: 65, size: 32, elements: !639)
!639 = !{!640}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !638, file: !633, line: 66, baseType: !7, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !604, file: !191, line: 164, baseType: !601, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !604, file: !191, line: 165, baseType: !643, size: 128, offset: 256)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !590, line: 14, size: 128, elements: !644)
!644 = !{!645}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !643, file: !590, line: 15, baseType: !478, size: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !604, file: !191, line: 166, baseType: !647, size: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!594}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !604, file: !191, line: 167, baseType: !594, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !586, file: !191, line: 123, baseType: !342, size: 8, offset: 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !586, file: !191, line: 124, baseType: !342, size: 8, offset: 456)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !586, file: !191, line: 125, baseType: !342, size: 8, offset: 464)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !586, file: !191, line: 126, baseType: !342, size: 8, offset: 472)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !567, file: !496, line: 572, baseType: !586, size: 512, offset: 1216)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !567, file: !496, line: 580, baseType: !657, size: 64, offset: 1728)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !495, file: !496, line: 721, baseType: !7, size: 32, offset: 3584)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !495, file: !496, line: 722, baseType: !319, size: 32, offset: 3616)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !495, file: !496, line: 723, baseType: !661, size: 64, offset: 3648)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !664, line: 17, baseType: !665)
!664 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !664, line: 17, size: 64, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !665, file: !664, line: 17, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 64, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 1)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !495, file: !496, line: 724, baseType: !663, size: 64, offset: 3712)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !495, file: !496, line: 749, baseType: !673, offset: 3776)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !496, line: 290, elements: !476)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !495, file: !496, line: 751, baseType: !539, size: 128, offset: 3776)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !495, file: !496, line: 757, baseType: !676, size: 64, offset: 3904)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !678, line: 388, size: 7296, elements: !679)
!678 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!679 = !{!680, !2790}
!680 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !678, line: 389, baseType: !681, size: 7296)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !678, line: 389, size: 7296, elements: !682)
!682 = !{!683, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2703, !2709, !2712, !2751, !2752, !2774, !2775, !2778, !2779, !2780, !2783, !2784, !2785, !2788, !2789}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !681, file: !678, line: 390, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !678, line: 305, size: 1472, elements: !686)
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694, !702, !703, !708, !709, !712, !716, !717, !2651, !2652, !2653}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !685, file: !678, line: 308, baseType: !489, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !685, file: !678, line: 309, baseType: !489, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !685, file: !678, line: 313, baseType: !684, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !685, file: !678, line: 313, baseType: !684, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !685, file: !678, line: 315, baseType: !486, size: 192, align: 64, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !685, file: !678, line: 323, baseType: !489, size: 64, offset: 448)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !685, file: !678, line: 327, baseType: !676, size: 64, offset: 512)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !685, file: !678, line: 333, baseType: !695, size: 64, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !696, line: 284, baseType: !697)
!696 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !696, line: 284, size: 64, elements: !698)
!698 = !{!699}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !697, file: !696, line: 284, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !701, line: 19, baseType: !489)
!701 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!702 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !685, file: !678, line: 334, baseType: !489, size: 64, offset: 640)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !685, file: !678, line: 343, baseType: !704, size: 256, offset: 704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !685, file: !678, line: 340, size: 256, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !704, file: !678, line: 341, baseType: !486, size: 192, align: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !704, file: !678, line: 342, baseType: !489, size: 64, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !685, file: !678, line: 351, baseType: !539, size: 128, offset: 960)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !685, file: !678, line: 353, baseType: !710, size: 64, offset: 1088)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !678, line: 353, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !685, file: !678, line: 356, baseType: !713, size: 64, offset: 1152)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !678, line: 356, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !685, file: !678, line: 359, baseType: !489, size: 64, offset: 1216)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !685, file: !678, line: 361, baseType: !718, size: 64, offset: 1280)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !720)
!720 = !{!721, !739, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2450, !2635, !2644, !2645, !2646, !2647, !2648, !2649, !2650}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !719, file: !208, line: 920, baseType: !722, size: 128)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !719, file: !208, line: 917, size: 128, elements: !723)
!723 = !{!724, !730}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !722, file: !208, line: 918, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !726, line: 58, size: 64, elements: !727)
!726 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !725, file: !726, line: 59, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !722, file: !208, line: 919, baseType: !731, size: 128, align: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !292, line: 216, size: 128, align: 64, elements: !732)
!732 = !{!733, !735}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !731, file: !292, line: 217, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !731, file: !292, line: 218, baseType: !736, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !734}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !719, file: !208, line: 921, baseType: !740, size: 128, offset: 128)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !741, line: 8, size: 128, elements: !742)
!741 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!742 = !{!743, !747}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !740, file: !741, line: 9, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !746, line: 18, flags: DIFlagFwdDecl)
!746 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!747 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !740, file: !741, line: 10, baseType: !748, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !746, line: 89, size: 1536, elements: !750)
!750 = !{!751, !752, !757, !765, !766, !781, !2380, !2382, !2394, !2395, !2396, !2397, !2398, !2403, !2404, !2405}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !749, file: !746, line: 91, baseType: !7, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !749, file: !746, line: 92, baseType: !753, size: 32, offset: 32)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !633, line: 277, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !633, line: 277, size: 32, elements: !755)
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !754, file: !633, line: 277, baseType: !637, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !749, file: !746, line: 93, baseType: !758, size: 128, offset: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !759, line: 38, size: 128, elements: !760)
!759 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!760 = !{!761, !763}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !758, file: !759, line: 39, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !758, file: !759, line: 39, baseType: !764, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !749, file: !746, line: 94, baseType: !748, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !749, file: !746, line: 95, baseType: !767, size: 128, offset: 256)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !746, line: 47, size: 128, elements: !768)
!768 = !{!769, !778}
!769 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !746, line: 48, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !746, line: 48, size: 64, elements: !771)
!771 = !{!772, !777}
!772 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !746, line: 49, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !770, file: !746, line: 49, size: 64, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !773, file: !746, line: 50, baseType: !446, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !773, file: !746, line: 50, baseType: !446, size: 32, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !770, file: !746, line: 52, baseType: !546, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !767, file: !746, line: 54, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !749, file: !746, line: 96, baseType: !782, size: 64, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !784)
!784 = !{!785, !787, !788, !796, !803, !804, !953, !1771, !1772, !1773, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !2050, !2058, !2059, !2060, !2376, !2377, !2378, !2379}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !783, file: !208, line: 611, baseType: !786, size: 16)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !292, line: 19, baseType: !336)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !783, file: !208, line: 612, baseType: !336, size: 16, offset: 16)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !783, file: !208, line: 613, baseType: !789, size: 32, offset: 32)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !790, line: 23, baseType: !791)
!790 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !790, line: 21, size: 32, elements: !792)
!792 = !{!793}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !791, file: !790, line: 22, baseType: !794, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !292, line: 32, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !630, line: 49, baseType: !7)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !783, file: !208, line: 614, baseType: !797, size: 32, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !790, line: 28, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !790, line: 26, size: 32, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !798, file: !790, line: 27, baseType: !801, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !292, line: 33, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !630, line: 50, baseType: !7)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !783, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !783, file: !208, line: 622, baseType: !805, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !808)
!808 = !{!809, !813, !823, !827, !833, !837, !843, !847, !851, !855, !859, !860, !866, !870, !894, !923, !933, !939, !944, !948, !949}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !807, file: !208, line: 1865, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!748, !782, !748, !7}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !807, file: !208, line: 1866, baseType: !814, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!302, !748, !782, !817}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !819, line: 10, size: 128, elements: !820)
!819 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !818, file: !819, line: 11, baseType: !327, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !818, file: !819, line: 12, baseType: !293, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !807, file: !208, line: 1867, baseType: !824, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!319, !782, !319}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !807, file: !208, line: 1868, baseType: !828, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!831, !782, !319}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !807, file: !208, line: 1870, baseType: !834, size: 64, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!319, !748, !325, !319}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !807, file: !208, line: 1872, baseType: !838, size: 64, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!319, !782, !748, !786, !841}
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !292, line: 30, baseType: !842)
!842 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !807, file: !208, line: 1873, baseType: !844, size: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!319, !748, !782, !748}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !807, file: !208, line: 1874, baseType: !848, size: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!319, !782, !748}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !807, file: !208, line: 1875, baseType: !852, size: 64, offset: 512)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!319, !782, !748, !302}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !807, file: !208, line: 1876, baseType: !856, size: 64, offset: 576)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!319, !782, !748, !786}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !807, file: !208, line: 1877, baseType: !848, size: 64, offset: 640)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !807, file: !208, line: 1878, baseType: !861, size: 64, offset: 704)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!319, !782, !748, !786, !864}
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !292, line: 16, baseType: !865)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !292, line: 13, baseType: !446)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !807, file: !208, line: 1879, baseType: !867, size: 64, offset: 768)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!319, !782, !748, !782, !748, !7}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !807, file: !208, line: 1881, baseType: !871, size: 64, offset: 832)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!319, !748, !874}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !876)
!876 = !{!877, !878, !879, !880, !881, !884, !891, !892, !893}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !875, file: !208, line: 220, baseType: !7, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !875, file: !208, line: 221, baseType: !786, size: 16, offset: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !875, file: !208, line: 222, baseType: !789, size: 32, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !875, file: !208, line: 223, baseType: !797, size: 32, offset: 96)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !875, file: !208, line: 224, baseType: !882, size: 64, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !292, line: 46, baseType: !883)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !630, line: 88, baseType: !578)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !875, file: !208, line: 225, baseType: !885, size: 128, offset: 192)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !886, line: 13, size: 128, elements: !887)
!886 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!887 = !{!888, !890}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !885, file: !886, line: 14, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !886, line: 8, baseType: !577)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !885, file: !886, line: 15, baseType: !506, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !875, file: !208, line: 226, baseType: !885, size: 128, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !875, file: !208, line: 227, baseType: !885, size: 128, offset: 448)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !875, file: !208, line: 234, baseType: !718, size: 64, offset: 576)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !807, file: !208, line: 1882, baseType: !895, size: 64, offset: 896)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!319, !898, !900, !446, !7}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !902, line: 22, size: 1152, elements: !903)
!902 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!903 = !{!904, !905, !906, !907, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !901, file: !902, line: 23, baseType: !446, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !901, file: !902, line: 24, baseType: !786, size: 16, offset: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !901, file: !902, line: 25, baseType: !7, size: 32, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !901, file: !902, line: 26, baseType: !908, size: 32, offset: 96)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !292, line: 104, baseType: !446)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !901, file: !902, line: 27, baseType: !546, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !901, file: !902, line: 28, baseType: !546, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !901, file: !902, line: 37, baseType: !546, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !901, file: !902, line: 38, baseType: !864, size: 32, offset: 320)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !901, file: !902, line: 39, baseType: !864, size: 32, offset: 352)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !901, file: !902, line: 40, baseType: !789, size: 32, offset: 384)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !901, file: !902, line: 41, baseType: !797, size: 32, offset: 416)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !901, file: !902, line: 42, baseType: !882, size: 64, offset: 448)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !901, file: !902, line: 43, baseType: !885, size: 128, offset: 512)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !901, file: !902, line: 44, baseType: !885, size: 128, offset: 640)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !901, file: !902, line: 45, baseType: !885, size: 128, offset: 768)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !901, file: !902, line: 46, baseType: !885, size: 128, offset: 896)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !901, file: !902, line: 47, baseType: !546, size: 64, offset: 1024)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !901, file: !902, line: 48, baseType: !546, size: 64, offset: 1088)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !807, file: !208, line: 1883, baseType: !924, size: 64, offset: 960)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!927, !748, !325, !930}
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !292, line: 60, baseType: !928)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !630, line: 73, baseType: !929)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !630, line: 15, baseType: !506)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !292, line: 55, baseType: !931)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !630, line: 72, baseType: !932)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !630, line: 16, baseType: !489)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !807, file: !208, line: 1884, baseType: !934, size: 64, offset: 1024)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!319, !782, !937, !546, !546}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !807, file: !208, line: 1886, baseType: !940, size: 64, offset: 1088)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!319, !782, !943, !319}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !807, file: !208, line: 1887, baseType: !945, size: 64, offset: 1152)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!319, !782, !748, !718, !7, !786}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !807, file: !208, line: 1890, baseType: !856, size: 64, offset: 1216)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !807, file: !208, line: 1891, baseType: !950, size: 64, offset: 1280)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!319, !782, !831, !319}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !783, file: !208, line: 623, baseType: !954, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !956)
!956 = !{!957, !958, !959, !960, !961, !962, !1011, !1348, !1436, !1519, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1535, !1539, !1540, !1543, !1546, !1549, !1550, !1551, !1592, !1624, !1625, !1626, !1627, !1628, !1629, !1632, !1636, !1645, !1646, !1648, !1649, !1650, !1709, !1710, !1725, !1726, !1727, !1728, !1729, !1733, !1734, !1737, !1752, !1753, !1754, !1765, !1766, !1767, !1768, !1769, !1770}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !955, file: !208, line: 1417, baseType: !539, size: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !955, file: !208, line: 1418, baseType: !864, size: 32, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !955, file: !208, line: 1419, baseType: !344, size: 8, offset: 160)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !955, file: !208, line: 1420, baseType: !489, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !955, file: !208, line: 1421, baseType: !882, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !955, file: !208, line: 1422, baseType: !963, size: 64, offset: 320)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !965)
!965 = !{!966, !967, !968, !975, !979, !983, !987, !988, !989, !999, !1002, !1003, !1004, !1008, !1009, !1010}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !964, file: !208, line: 2229, baseType: !302, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !964, file: !208, line: 2230, baseType: !319, size: 32, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !964, file: !208, line: 2238, baseType: !969, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!319, !972}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !974, line: 28, flags: DIFlagFwdDecl)
!974 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!975 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !964, file: !208, line: 2239, baseType: !976, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !978)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !964, file: !208, line: 2240, baseType: !980, size: 64, offset: 256)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!748, !963, !319, !302, !293}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !964, file: !208, line: 2242, baseType: !984, size: 64, offset: 320)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !954}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !964, file: !208, line: 2243, baseType: !306, size: 64, offset: 384)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !964, file: !208, line: 2244, baseType: !963, size: 64, offset: 448)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !964, file: !208, line: 2245, baseType: !990, size: 64, offset: 512)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !292, line: 182, size: 64, elements: !991)
!991 = !{!992}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !990, file: !292, line: 183, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !292, line: 186, size: 128, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !994, file: !292, line: 187, baseType: !993, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !994, file: !292, line: 187, baseType: !998, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !964, file: !208, line: 2247, baseType: !1000, offset: 576)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1001, line: 187, elements: !476)
!1001 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !964, file: !208, line: 2248, baseType: !1000, offset: 576)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !964, file: !208, line: 2249, baseType: !1000, offset: 576)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !964, file: !208, line: 2250, baseType: !1005, offset: 576)
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, elements: !1006)
!1006 = !{!1007}
!1007 = !DISubrange(count: 3)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !964, file: !208, line: 2252, baseType: !1000, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !964, file: !208, line: 2253, baseType: !1000, offset: 576)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !964, file: !208, line: 2254, baseType: !1000, offset: 576)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !955, file: !208, line: 1423, baseType: !1012, size: 64, offset: 384)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1014)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !1015)
!1015 = !{!1016, !1020, !1024, !1025, !1029, !1035, !1039, !1040, !1041, !1045, !1049, !1050, !1051, !1052, !1058, !1063, !1064, !1070, !1071, !1072, !1073, !1332, !1347}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1014, file: !208, line: 1936, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!782, !954}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1014, file: !208, line: 1937, baseType: !1021, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !782}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1014, file: !208, line: 1938, baseType: !1021, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1014, file: !208, line: 1940, baseType: !1026, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !782, !319}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1014, file: !208, line: 1941, baseType: !1030, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!319, !782, !1033}
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1014, file: !208, line: 1942, baseType: !1036, size: 64, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!319, !782}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1014, file: !208, line: 1943, baseType: !1021, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1014, file: !208, line: 1944, baseType: !984, size: 64, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1014, file: !208, line: 1945, baseType: !1042, size: 64, offset: 512)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!319, !954, !319}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1014, file: !208, line: 1946, baseType: !1046, size: 64, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!319, !954}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1014, file: !208, line: 1947, baseType: !1046, size: 64, offset: 640)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1014, file: !208, line: 1948, baseType: !1046, size: 64, offset: 704)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1014, file: !208, line: 1949, baseType: !1046, size: 64, offset: 768)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1014, file: !208, line: 1950, baseType: !1053, size: 64, offset: 832)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!319, !748, !1056}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1014, file: !208, line: 1951, baseType: !1059, size: 64, offset: 896)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!319, !954, !1062, !325}
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1014, file: !208, line: 1952, baseType: !984, size: 64, offset: 960)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1014, file: !208, line: 1954, baseType: !1065, size: 64, offset: 1024)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!319, !1068, !748}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !696, line: 539, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1014, file: !208, line: 1955, baseType: !1065, size: 64, offset: 1088)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1014, file: !208, line: 1956, baseType: !1065, size: 64, offset: 1152)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1014, file: !208, line: 1957, baseType: !1065, size: 64, offset: 1216)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1014, file: !208, line: 1963, baseType: !1074, size: 64, offset: 1280)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!319, !954, !1077, !291}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !678, line: 68, size: 512, align: 128, elements: !1079)
!1079 = !{!1080, !1081, !1324, !1331}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1078, file: !678, line: 69, baseType: !489, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !678, line: 77, baseType: !1082, size: 320, offset: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1078, file: !678, line: 77, size: 320, elements: !1083)
!1083 = !{!1084, !1256, !1261, !1289, !1297, !1303, !1316, !1323}
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !678, line: 78, baseType: !1085, size: 320)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1082, file: !678, line: 78, size: 320, elements: !1086)
!1086 = !{!1087, !1088, !1254, !1255}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1085, file: !678, line: 84, baseType: !539, size: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1085, file: !678, line: 86, baseType: !1089, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !1091)
!1091 = !{!1092, !1093, !1107, !1108, !1109, !1110, !1124, !1125, !1126, !1127, !1247, !1248, !1251, !1252, !1253}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1090, file: !208, line: 452, baseType: !782, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1090, file: !208, line: 453, baseType: !1094, size: 128, offset: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1095, line: 292, size: 128, elements: !1096)
!1095 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1096 = !{!1097, !1105, !1106}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1094, file: !1095, line: 293, baseType: !1098)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !469, line: 83, baseType: !1099)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !469, line: 71, elements: !1100)
!1100 = !{!1101}
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1099, file: !469, line: 72, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1099, file: !469, line: 72, elements: !1103)
!1103 = !{!1104}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1102, file: !469, line: 73, baseType: !470)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1094, file: !1095, line: 295, baseType: !291, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1094, file: !1095, line: 296, baseType: !293, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1090, file: !208, line: 454, baseType: !291, size: 32, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1090, file: !208, line: 455, baseType: !514, size: 32, offset: 224)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1090, file: !208, line: 460, baseType: !478, size: 128, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1090, file: !208, line: 461, baseType: !1111, size: 256, offset: 384)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1112, line: 35, size: 256, elements: !1113)
!1112 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1113 = !{!1114, !1121, !1122, !1123}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1111, file: !1112, line: 36, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1116, line: 13, baseType: !1117)
!1116 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !292, line: 175, baseType: !1118)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 173, size: 64, elements: !1119)
!1119 = !{!1120}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1118, file: !292, line: 174, baseType: !576, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1111, file: !1112, line: 42, baseType: !1115, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1111, file: !1112, line: 46, baseType: !468, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1111, file: !1112, line: 47, baseType: !539, size: 128, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1090, file: !208, line: 462, baseType: !489, size: 64, offset: 640)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1090, file: !208, line: 463, baseType: !489, size: 64, offset: 704)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1090, file: !208, line: 464, baseType: !489, size: 64, offset: 768)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1090, file: !208, line: 465, baseType: !1128, size: 64, offset: 832)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1130)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1131)
!1131 = !{!1132, !1136, !1140, !1144, !1148, !1152, !1158, !1164, !1168, !1173, !1177, !1181, !1185, !1211, !1215, !1221, !1222, !1223, !1227, !1232, !1236, !1243}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1130, file: !208, line: 368, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!319, !1077, !1033}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1130, file: !208, line: 369, baseType: !1137, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!319, !718, !1077}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1130, file: !208, line: 372, baseType: !1141, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!319, !1089, !1033}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1130, file: !208, line: 375, baseType: !1145, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!319, !1077}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1130, file: !208, line: 381, baseType: !1149, size: 64, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!319, !718, !1089, !542, !7}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1130, file: !208, line: 383, baseType: !1153, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null, !1156}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1130, file: !208, line: 385, baseType: !1159, size: 64, offset: 384)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!319, !718, !1089, !882, !7, !7, !1162, !1163}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1130, file: !208, line: 388, baseType: !1165, size: 64, offset: 448)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!319, !718, !1089, !882, !7, !7, !1077, !293}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1130, file: !208, line: 393, baseType: !1169, size: 64, offset: 512)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!1172, !1089, !1172}
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !292, line: 125, baseType: !546)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1130, file: !208, line: 394, baseType: !1174, size: 64, offset: 576)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !1077, !7, !7}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1130, file: !208, line: 395, baseType: !1178, size: 64, offset: 640)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!319, !1077, !291}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1130, file: !208, line: 396, baseType: !1182, size: 64, offset: 704)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !1077}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1130, file: !208, line: 397, baseType: !1186, size: 64, offset: 768)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!927, !1189, !1209}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1198, !1199, !1200, !1201, !1202}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1190, file: !208, line: 321, baseType: !718, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1190, file: !208, line: 326, baseType: !882, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1190, file: !208, line: 327, baseType: !1195, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !1189, !506, !506}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1190, file: !208, line: 328, baseType: !293, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1190, file: !208, line: 329, baseType: !319, size: 32, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1190, file: !208, line: 330, baseType: !332, size: 16, offset: 288)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1190, file: !208, line: 331, baseType: !332, size: 16, offset: 304)
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !208, line: 332, baseType: !1203, size: 64, offset: 320)
!1203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !208, line: 332, size: 64, elements: !1204)
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1203, file: !208, line: 333, baseType: !7, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1203, file: !208, line: 334, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1130, file: !208, line: 402, baseType: !1212, size: 64, offset: 832)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!319, !1089, !1077, !1077, !183}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1130, file: !208, line: 404, baseType: !1216, size: 64, offset: 896)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!841, !1077, !1219}
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1220, line: 305, baseType: !7)
!1220 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1130, file: !208, line: 405, baseType: !1182, size: 64, offset: 960)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1130, file: !208, line: 406, baseType: !1145, size: 64, offset: 1024)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1130, file: !208, line: 407, baseType: !1224, size: 64, offset: 1088)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!319, !1077, !489, !489}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1130, file: !208, line: 409, baseType: !1228, size: 64, offset: 1152)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !1077, !1231, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1130, file: !208, line: 410, baseType: !1233, size: 64, offset: 1216)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!319, !1089, !1077}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1130, file: !208, line: 413, baseType: !1237, size: 64, offset: 1280)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!319, !1240, !718, !1242}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1130, file: !208, line: 415, baseType: !1244, size: 64, offset: 1344)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{null, !718}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1090, file: !208, line: 466, baseType: !489, size: 64, offset: 896)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1090, file: !208, line: 467, baseType: !1249, size: 32, offset: 960)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1250, line: 8, baseType: !446)
!1250 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1090, file: !208, line: 468, baseType: !1098, offset: 992)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1090, file: !208, line: 469, baseType: !539, size: 128, offset: 1024)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1090, file: !208, line: 470, baseType: !293, size: 64, offset: 1152)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1085, file: !678, line: 87, baseType: !489, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1085, file: !678, line: 94, baseType: !489, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !678, line: 96, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1082, file: !678, line: 96, size: 64, elements: !1258)
!1258 = !{!1259}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1257, file: !678, line: 101, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !292, line: 143, baseType: !546)
!1261 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !678, line: 103, baseType: !1262, size: 320)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1082, file: !678, line: 103, size: 320, elements: !1263)
!1263 = !{!1264, !1274, !1277, !1278}
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1262, file: !678, line: 104, baseType: !1265, size: 128)
!1265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1262, file: !678, line: 104, size: 128, elements: !1266)
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1265, file: !678, line: 105, baseType: !539, size: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, scope: !1265, file: !678, line: 106, baseType: !1269, size: 128)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1265, file: !678, line: 106, size: 128, elements: !1270)
!1270 = !{!1271, !1272, !1273}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1269, file: !678, line: 107, baseType: !1077, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1269, file: !678, line: 109, baseType: !319, size: 32, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1269, file: !678, line: 110, baseType: !319, size: 32, offset: 96)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1262, file: !678, line: 117, baseType: !1275, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !678, line: 117, flags: DIFlagFwdDecl)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1262, file: !678, line: 119, baseType: !293, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1262, file: !678, line: 120, baseType: !1279, size: 64, offset: 256)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1262, file: !678, line: 120, size: 64, elements: !1280)
!1280 = !{!1281, !1282, !1283}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1279, file: !678, line: 121, baseType: !293, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1279, file: !678, line: 122, baseType: !489, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, scope: !1279, file: !678, line: 123, baseType: !1284, size: 32)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1279, file: !678, line: 123, size: 32, elements: !1285)
!1285 = !{!1286, !1287, !1288}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1284, file: !678, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1284, file: !678, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1284, file: !678, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !678, line: 130, baseType: !1290, size: 192)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1082, file: !678, line: 130, size: 192, elements: !1291)
!1291 = !{!1292, !1293, !1294, !1295, !1296}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1290, file: !678, line: 131, baseType: !489, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1290, file: !678, line: 134, baseType: !344, size: 8, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1290, file: !678, line: 135, baseType: !344, size: 8, offset: 72)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1290, file: !678, line: 136, baseType: !514, size: 32, offset: 96)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1290, file: !678, line: 137, baseType: !7, size: 32, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !678, line: 139, baseType: !1298, size: 256)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1082, file: !678, line: 139, size: 256, elements: !1299)
!1299 = !{!1300, !1301, !1302}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1298, file: !678, line: 140, baseType: !489, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1298, file: !678, line: 141, baseType: !514, size: 32, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1298, file: !678, line: 143, baseType: !539, size: 128, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !678, line: 145, baseType: !1304, size: 256)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1082, file: !678, line: 145, size: 256, elements: !1305)
!1305 = !{!1306, !1307, !1309, !1310, !1315}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1304, file: !678, line: 146, baseType: !489, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1304, file: !678, line: 147, baseType: !1308, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !696, line: 509, baseType: !1077)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1304, file: !678, line: 148, baseType: !489, size: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !678, line: 149, baseType: !1311, size: 64, offset: 192)
!1311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1304, file: !678, line: 149, size: 64, elements: !1312)
!1312 = !{!1313, !1314}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1311, file: !678, line: 150, baseType: !676, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1311, file: !678, line: 151, baseType: !514, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1304, file: !678, line: 156, baseType: !1098, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !678, line: 159, baseType: !1317, size: 128)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1082, file: !678, line: 159, size: 128, elements: !1318)
!1318 = !{!1319, !1322}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1317, file: !678, line: 161, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !678, line: 161, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1317, file: !678, line: 162, baseType: !293, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1082, file: !678, line: 176, baseType: !731, size: 128, align: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !678, line: 179, baseType: !1325, size: 32, offset: 384)
!1325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1078, file: !678, line: 179, size: 32, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1325, file: !678, line: 184, baseType: !514, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1325, file: !678, line: 192, baseType: !7, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1325, file: !678, line: 194, baseType: !7, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1325, file: !678, line: 195, baseType: !319, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1078, file: !678, line: 199, baseType: !514, size: 32, offset: 416)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1014, file: !208, line: 1964, baseType: !1333, size: 64, offset: 1344)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!506, !954, !1336}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1338, line: 12, size: 256, elements: !1339)
!1338 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1339 = !{!1340, !1341, !1342, !1343, !1344}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1337, file: !1338, line: 13, baseType: !291, size: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1337, file: !1338, line: 16, baseType: !319, size: 32, offset: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1337, file: !1338, line: 23, baseType: !489, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1337, file: !1338, line: 30, baseType: !489, size: 64, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1337, file: !1338, line: 33, baseType: !1345, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !678, line: 27, flags: DIFlagFwdDecl)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1014, file: !208, line: 1966, baseType: !1333, size: 64, offset: 1408)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !955, file: !208, line: 1424, baseType: !1349, size: 64, offset: 448)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1351)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !1352)
!1352 = !{!1353, !1405, !1409, !1413, !1414, !1415, !1416, !1417, !1422, !1427, !1431}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1351, file: !202, line: 323, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!319, !1357}
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !1359)
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1371, !1372, !1373, !1374, !1390, !1391, !1392}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1358, file: !202, line: 295, baseType: !994, size: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1358, file: !202, line: 296, baseType: !539, size: 128, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1358, file: !202, line: 297, baseType: !539, size: 128, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1358, file: !202, line: 298, baseType: !539, size: 128, offset: 384)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1358, file: !202, line: 299, baseType: !1365, size: 192, offset: 512)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1366, line: 53, size: 192, elements: !1367)
!1366 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1367 = !{!1368, !1369, !1370}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1365, file: !1366, line: 54, baseType: !1115, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1365, file: !1366, line: 55, baseType: !1098, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1365, file: !1366, line: 59, baseType: !539, size: 128, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1358, file: !202, line: 300, baseType: !1098, offset: 704)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1358, file: !202, line: 301, baseType: !514, size: 32, offset: 704)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1358, file: !202, line: 302, baseType: !954, size: 64, offset: 768)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1358, file: !202, line: 303, baseType: !1375, size: 64, offset: 832)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !1376)
!1376 = !{!1377, !1389}
!1377 = !DIDerivedType(tag: DW_TAG_member, scope: !1375, file: !202, line: 69, baseType: !1378, size: 32)
!1378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1375, file: !202, line: 69, size: 32, elements: !1379)
!1379 = !{!1380, !1381, !1382}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1378, file: !202, line: 70, baseType: !789, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1378, file: !202, line: 71, baseType: !797, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1378, file: !202, line: 72, baseType: !1383, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1384, line: 24, baseType: !1385)
!1384 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1384, line: 22, size: 32, elements: !1386)
!1386 = !{!1387}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1385, file: !1384, line: 23, baseType: !1388, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1384, line: 20, baseType: !795)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1375, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1358, file: !202, line: 304, baseType: !882, size: 64, offset: 896)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1358, file: !202, line: 305, baseType: !489, size: 64, offset: 960)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1358, file: !202, line: 306, baseType: !1393, size: 576, offset: 1024)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !1394)
!1394 = !{!1395, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1393, file: !202, line: 206, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !578)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1393, file: !202, line: 207, baseType: !1396, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1393, file: !202, line: 208, baseType: !1396, size: 64, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1393, file: !202, line: 209, baseType: !1396, size: 64, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1393, file: !202, line: 210, baseType: !1396, size: 64, offset: 256)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1393, file: !202, line: 211, baseType: !1396, size: 64, offset: 320)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1393, file: !202, line: 212, baseType: !1396, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1393, file: !202, line: 213, baseType: !889, size: 64, offset: 448)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1393, file: !202, line: 214, baseType: !889, size: 64, offset: 512)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1351, file: !202, line: 324, baseType: !1406, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!1357, !954, !319}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1351, file: !202, line: 325, baseType: !1410, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{null, !1357}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1351, file: !202, line: 326, baseType: !1354, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1351, file: !202, line: 327, baseType: !1354, size: 64, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1351, file: !202, line: 328, baseType: !1354, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1351, file: !202, line: 329, baseType: !1042, size: 64, offset: 384)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1351, file: !202, line: 332, baseType: !1418, size: 64, offset: 448)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!1421, !782}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1351, file: !202, line: 333, baseType: !1423, size: 64, offset: 512)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!319, !782, !1426}
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1351, file: !202, line: 335, baseType: !1428, size: 64, offset: 576)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!319, !782, !1421}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1351, file: !202, line: 337, baseType: !1432, size: 64, offset: 640)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!319, !954, !1435}
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !955, file: !208, line: 1425, baseType: !1437, size: 64, offset: 512)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1439)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !1440)
!1440 = !{!1441, !1445, !1446, !1450, !1451, !1452, !1467, !1490, !1494, !1495, !1518}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1439, file: !202, line: 429, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!319, !954, !319, !319, !898}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1439, file: !202, line: 430, baseType: !1042, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1439, file: !202, line: 431, baseType: !1447, size: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!319, !954, !7}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1439, file: !202, line: 432, baseType: !1447, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1439, file: !202, line: 433, baseType: !1042, size: 64, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1439, file: !202, line: 434, baseType: !1453, size: 64, offset: 320)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!319, !954, !319, !1456}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !1458)
!1458 = !{!1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1457, file: !202, line: 416, baseType: !319, size: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1457, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1457, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1457, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1457, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1457, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1457, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1457, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1439, file: !202, line: 435, baseType: !1468, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!319, !954, !1375, !1471}
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1472, file: !202, line: 344, baseType: !319, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1472, file: !202, line: 345, baseType: !546, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1472, file: !202, line: 346, baseType: !546, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1472, file: !202, line: 347, baseType: !546, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1472, file: !202, line: 348, baseType: !546, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1472, file: !202, line: 349, baseType: !546, size: 64, offset: 320)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1472, file: !202, line: 350, baseType: !546, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1472, file: !202, line: 351, baseType: !576, size: 64, offset: 448)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1472, file: !202, line: 353, baseType: !576, size: 64, offset: 512)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1472, file: !202, line: 354, baseType: !319, size: 32, offset: 576)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1472, file: !202, line: 355, baseType: !319, size: 32, offset: 608)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1472, file: !202, line: 356, baseType: !546, size: 64, offset: 640)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1472, file: !202, line: 357, baseType: !546, size: 64, offset: 704)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1472, file: !202, line: 358, baseType: !546, size: 64, offset: 768)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1472, file: !202, line: 359, baseType: !576, size: 64, offset: 832)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1472, file: !202, line: 360, baseType: !319, size: 32, offset: 896)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1439, file: !202, line: 436, baseType: !1491, size: 64, offset: 448)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!319, !954, !1435, !1471}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1439, file: !202, line: 438, baseType: !1468, size: 64, offset: 512)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1439, file: !202, line: 439, baseType: !1496, size: 64, offset: 576)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!319, !954, !1499}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !1501)
!1501 = !{!1502, !1503}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1500, file: !202, line: 410, baseType: !7, size: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1500, file: !202, line: 411, baseType: !1504, size: 1344, offset: 64)
!1504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1505, size: 1344, elements: !1006)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !1506)
!1506 = !{!1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1517}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1505, file: !202, line: 396, baseType: !7, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1505, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1505, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1505, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1505, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1505, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1505, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1505, file: !202, line: 404, baseType: !548, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1505, file: !202, line: 405, baseType: !1516, size: 64, offset: 320)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !292, line: 126, baseType: !546)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1505, file: !202, line: 406, baseType: !1516, size: 64, offset: 384)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1439, file: !202, line: 440, baseType: !1447, size: 64, offset: 640)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !955, file: !208, line: 1426, baseType: !1520, size: 64, offset: 576)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1522)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !955, file: !208, line: 1427, baseType: !489, size: 64, offset: 640)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !955, file: !208, line: 1428, baseType: !489, size: 64, offset: 704)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !955, file: !208, line: 1429, baseType: !489, size: 64, offset: 768)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !955, file: !208, line: 1430, baseType: !748, size: 64, offset: 832)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !955, file: !208, line: 1431, baseType: !1111, size: 256, offset: 896)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !955, file: !208, line: 1432, baseType: !319, size: 32, offset: 1152)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !955, file: !208, line: 1433, baseType: !514, size: 32, offset: 1184)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !955, file: !208, line: 1437, baseType: !1531, size: 64, offset: 1216)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1534)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !955, file: !208, line: 1449, baseType: !1536, size: 64, offset: 1280)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !759, line: 34, size: 64, elements: !1537)
!1537 = !{!1538}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1536, file: !759, line: 35, baseType: !762, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !955, file: !208, line: 1450, baseType: !539, size: 128, offset: 1344)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !955, file: !208, line: 1451, baseType: !1541, size: 64, offset: 1472)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !955, file: !208, line: 1452, baseType: !1544, size: 64, offset: 1536)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !496, line: 40, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !955, file: !208, line: 1453, baseType: !1547, size: 64, offset: 1600)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !955, file: !208, line: 1454, baseType: !994, size: 128, offset: 1664)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !955, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !955, file: !208, line: 1456, baseType: !1552, size: 2432, offset: 1856)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1558, !1590}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1552, file: !202, line: 519, baseType: !7, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1552, file: !202, line: 520, baseType: !1111, size: 256, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1552, file: !202, line: 521, baseType: !1557, size: 192, offset: 320)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !782, size: 192, elements: !1006)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1552, file: !202, line: 522, baseType: !1559, size: 1728, offset: 512)
!1559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1560, size: 1728, elements: !1006)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !1561)
!1561 = !{!1562, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1560, file: !202, line: 223, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !1565)
!1565 = !{!1566, !1567, !1580, !1581}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1564, file: !202, line: 444, baseType: !319, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1564, file: !202, line: 445, baseType: !1568, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1570)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !1571)
!1571 = !{!1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1570, file: !202, line: 311, baseType: !1042, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1570, file: !202, line: 312, baseType: !1042, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1570, file: !202, line: 313, baseType: !1042, size: 64, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1570, file: !202, line: 314, baseType: !1042, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1570, file: !202, line: 315, baseType: !1354, size: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1570, file: !202, line: 316, baseType: !1354, size: 64, offset: 320)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1570, file: !202, line: 317, baseType: !1354, size: 64, offset: 384)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1570, file: !202, line: 318, baseType: !1432, size: 64, offset: 448)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1564, file: !202, line: 446, baseType: !306, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1564, file: !202, line: 447, baseType: !1563, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1560, file: !202, line: 224, baseType: !319, size: 32, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1560, file: !202, line: 226, baseType: !539, size: 128, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1560, file: !202, line: 227, baseType: !489, size: 64, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1560, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1560, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1560, file: !202, line: 230, baseType: !1396, size: 64, offset: 384)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1560, file: !202, line: 231, baseType: !1396, size: 64, offset: 448)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1560, file: !202, line: 232, baseType: !293, size: 64, offset: 512)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1552, file: !202, line: 523, baseType: !1591, size: 192, offset: 2240)
!1591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1568, size: 192, elements: !1006)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !955, file: !208, line: 1458, baseType: !1593, size: 2112, offset: 4288)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !1594)
!1594 = !{!1595, !1596, !1603}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1593, file: !208, line: 1411, baseType: !319, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1593, file: !208, line: 1412, baseType: !1597, size: 128, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1598, line: 40, baseType: !1599)
!1598 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1598, line: 36, size: 128, elements: !1600)
!1600 = !{!1601, !1602}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1599, file: !1598, line: 37, baseType: !1098)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1599, file: !1598, line: 38, baseType: !539, size: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1593, file: !208, line: 1413, baseType: !1604, size: 1920, offset: 192)
!1604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1605, size: 1920, elements: !1006)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1606, line: 12, size: 640, elements: !1607)
!1606 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1607 = !{!1608, !1616, !1617, !1622, !1623}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1605, file: !1606, line: 13, baseType: !1609, size: 320)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1610, line: 17, size: 320, elements: !1611)
!1610 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1611 = !{!1612, !1613, !1614, !1615}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1609, file: !1610, line: 18, baseType: !319, size: 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1609, file: !1610, line: 19, baseType: !319, size: 32, offset: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1609, file: !1610, line: 20, baseType: !1597, size: 128, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1609, file: !1610, line: 22, baseType: !731, size: 128, align: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1605, file: !1606, line: 14, baseType: !364, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1605, file: !1606, line: 15, baseType: !1618, size: 64, offset: 384)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1619, line: 16, size: 64, elements: !1620)
!1619 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1620 = !{!1621}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1618, file: !1619, line: 17, baseType: !494, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1605, file: !1606, line: 16, baseType: !1597, size: 128, offset: 448)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1605, file: !1606, line: 17, baseType: !514, size: 32, offset: 576)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !955, file: !208, line: 1465, baseType: !293, size: 64, offset: 6400)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !955, file: !208, line: 1468, baseType: !446, size: 32, offset: 6464)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !955, file: !208, line: 1470, baseType: !889, size: 64, offset: 6528)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !955, file: !208, line: 1471, baseType: !889, size: 64, offset: 6592)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !955, file: !208, line: 1473, baseType: !447, size: 32, offset: 6656)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !955, file: !208, line: 1474, baseType: !1630, size: 64, offset: 6720)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !955, file: !208, line: 1477, baseType: !1633, size: 256, offset: 6784)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 256, elements: !1634)
!1634 = !{!1635}
!1635 = !DISubrange(count: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !955, file: !208, line: 1478, baseType: !1637, size: 128, offset: 7040)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1638, line: 18, baseType: !1639)
!1638 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1638, line: 16, size: 128, elements: !1640)
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1639, file: !1638, line: 17, baseType: !1642, size: 128)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 128, elements: !1643)
!1643 = !{!1644}
!1644 = !DISubrange(count: 16)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !955, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !955, file: !208, line: 1481, baseType: !1647, size: 32, offset: 7200)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !292, line: 150, baseType: !7)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !955, file: !208, line: 1487, baseType: !1365, size: 192, offset: 7232)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !955, file: !208, line: 1493, baseType: !302, size: 64, offset: 7424)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !955, file: !208, line: 1495, baseType: !1651, size: 64, offset: 7488)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1653)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !746, line: 135, size: 1024, align: 512, elements: !1654)
!1654 = !{!1655, !1659, !1660, !1667, !1673, !1677, !1681, !1685, !1686, !1690, !1694, !1699, !1703}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1653, file: !746, line: 136, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!319, !748, !7}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1653, file: !746, line: 137, baseType: !1656, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1653, file: !746, line: 138, baseType: !1661, size: 64, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!319, !1664, !1666}
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !749)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1653, file: !746, line: 139, baseType: !1668, size: 64, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!319, !1664, !7, !302, !1671}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1653, file: !746, line: 141, baseType: !1674, size: 64, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!319, !1664}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1653, file: !746, line: 142, baseType: !1678, size: 64, offset: 320)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!319, !748}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1653, file: !746, line: 143, baseType: !1682, size: 64, offset: 384)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !748}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1653, file: !746, line: 144, baseType: !1682, size: 64, offset: 448)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1653, file: !746, line: 145, baseType: !1687, size: 64, offset: 512)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !748, !782}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1653, file: !746, line: 146, baseType: !1691, size: 64, offset: 576)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!325, !748, !325, !319}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1653, file: !746, line: 147, baseType: !1695, size: 64, offset: 640)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!744, !1698}
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1653, file: !746, line: 148, baseType: !1700, size: 64, offset: 704)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!319, !898, !841}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1653, file: !746, line: 149, baseType: !1704, size: 64, offset: 768)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!748, !748, !1707}
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !955, file: !208, line: 1500, baseType: !319, size: 32, offset: 7552)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !955, file: !208, line: 1502, baseType: !1711, size: 448, offset: 7616)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1338, line: 60, size: 448, elements: !1712)
!1712 = !{!1713, !1718, !1719, !1720, !1721, !1722, !1723}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1711, file: !1338, line: 61, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!489, !1717, !1336}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1711, file: !1338, line: 63, baseType: !1714, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1711, file: !1338, line: 66, baseType: !506, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1711, file: !1338, line: 67, baseType: !319, size: 32, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1711, file: !1338, line: 68, baseType: !7, size: 32, offset: 224)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1711, file: !1338, line: 71, baseType: !539, size: 128, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1711, file: !1338, line: 77, baseType: !1724, size: 64, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !955, file: !208, line: 1505, baseType: !1115, size: 64, offset: 8064)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !955, file: !208, line: 1508, baseType: !1115, size: 64, offset: 8128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !955, file: !208, line: 1511, baseType: !319, size: 32, offset: 8192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !955, file: !208, line: 1514, baseType: !1249, size: 32, offset: 8224)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !955, file: !208, line: 1517, baseType: !1730, size: 64, offset: 8256)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1732, line: 18, flags: DIFlagFwdDecl)
!1732 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !955, file: !208, line: 1518, baseType: !990, size: 64, offset: 8320)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !955, file: !208, line: 1525, baseType: !1735, size: 64, offset: 8384)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !790, line: 18, flags: DIFlagFwdDecl)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !955, file: !208, line: 1532, baseType: !1738, size: 64, offset: 8448)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1739, line: 52, size: 64, elements: !1740)
!1739 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1740 = !{!1741}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1738, file: !1739, line: 53, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1739, line: 40, size: 256, elements: !1744)
!1744 = !{!1745, !1746, !1751}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1743, file: !1739, line: 42, baseType: !1098)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1743, file: !1739, line: 44, baseType: !1747, size: 192)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1739, line: 28, size: 192, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1747, file: !1739, line: 29, baseType: !539, size: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1747, file: !1739, line: 31, baseType: !506, size: 64, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1743, file: !1739, line: 49, baseType: !506, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !955, file: !208, line: 1533, baseType: !1738, size: 64, offset: 8512)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !955, file: !208, line: 1534, baseType: !731, size: 128, align: 64, offset: 8576)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !955, file: !208, line: 1535, baseType: !1755, size: 256, offset: 8704)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1732, line: 102, size: 256, elements: !1756)
!1756 = !{!1757, !1758, !1759}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1755, file: !1732, line: 103, baseType: !1115, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1755, file: !1732, line: 104, baseType: !539, size: 128, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1755, file: !1732, line: 105, baseType: !1760, size: 64, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1732, line: 21, baseType: !1761)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1764}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !955, file: !208, line: 1537, baseType: !1365, size: 192, offset: 8960)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !955, file: !208, line: 1542, baseType: !319, size: 32, offset: 9152)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !955, file: !208, line: 1545, baseType: !1098, offset: 9184)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !955, file: !208, line: 1546, baseType: !539, size: 128, offset: 9216)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !955, file: !208, line: 1548, baseType: !1098, offset: 9344)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !955, file: !208, line: 1549, baseType: !539, size: 128, offset: 9344)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !783, file: !208, line: 624, baseType: !1089, size: 64, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !783, file: !208, line: 631, baseType: !489, size: 64, offset: 320)
!1773 = !DIDerivedType(tag: DW_TAG_member, scope: !783, file: !208, line: 639, baseType: !1774, size: 32, offset: 384)
!1774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !783, file: !208, line: 639, size: 32, elements: !1775)
!1775 = !{!1776, !1778}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1774, file: !208, line: 640, baseType: !1777, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1774, file: !208, line: 641, baseType: !7, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !783, file: !208, line: 643, baseType: !864, size: 32, offset: 416)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !783, file: !208, line: 644, baseType: !882, size: 64, offset: 448)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !783, file: !208, line: 645, baseType: !885, size: 128, offset: 512)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !783, file: !208, line: 646, baseType: !885, size: 128, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !783, file: !208, line: 647, baseType: !885, size: 128, offset: 768)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !783, file: !208, line: 648, baseType: !1098, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !783, file: !208, line: 649, baseType: !336, size: 16, offset: 896)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !783, file: !208, line: 650, baseType: !342, size: 8, offset: 912)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !783, file: !208, line: 651, baseType: !342, size: 8, offset: 920)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !783, file: !208, line: 652, baseType: !1516, size: 64, offset: 960)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !783, file: !208, line: 659, baseType: !489, size: 64, offset: 1024)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !783, file: !208, line: 660, baseType: !1111, size: 256, offset: 1088)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !783, file: !208, line: 662, baseType: !489, size: 64, offset: 1344)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !783, file: !208, line: 663, baseType: !489, size: 64, offset: 1408)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !783, file: !208, line: 665, baseType: !994, size: 128, offset: 1472)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !783, file: !208, line: 666, baseType: !539, size: 128, offset: 1600)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !783, file: !208, line: 675, baseType: !539, size: 128, offset: 1728)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !783, file: !208, line: 676, baseType: !539, size: 128, offset: 1856)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !783, file: !208, line: 677, baseType: !539, size: 128, offset: 1984)
!1798 = !DIDerivedType(tag: DW_TAG_member, scope: !783, file: !208, line: 678, baseType: !1799, size: 128, offset: 2112)
!1799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !783, file: !208, line: 678, size: 128, elements: !1800)
!1800 = !{!1801, !1802}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1799, file: !208, line: 679, baseType: !990, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1799, file: !208, line: 680, baseType: !731, size: 128, align: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !783, file: !208, line: 682, baseType: !1117, size: 64, offset: 2240)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !783, file: !208, line: 683, baseType: !1117, size: 64, offset: 2304)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !783, file: !208, line: 684, baseType: !514, size: 32, offset: 2368)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !783, file: !208, line: 685, baseType: !514, size: 32, offset: 2400)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !783, file: !208, line: 686, baseType: !514, size: 32, offset: 2432)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !783, file: !208, line: 688, baseType: !514, size: 32, offset: 2464)
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !783, file: !208, line: 690, baseType: !1810, size: 64, offset: 2496)
!1810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !783, file: !208, line: 690, size: 64, elements: !1811)
!1811 = !{!1812, !2049}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1810, file: !208, line: 691, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1815)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !1816)
!1816 = !{!1817, !1818, !1822, !1827, !1831, !1832, !1833, !1837, !1850, !1851, !1868, !1872, !1873, !1877, !1878, !1882, !1887, !1888, !1892, !1896, !2004, !2008, !2012, !2016, !2017, !2023, !2027, !2032, !2036, !2040, !2044, !2048}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1815, file: !208, line: 1823, baseType: !306, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1815, file: !208, line: 1824, baseType: !1819, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!882, !718, !882, !319}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1815, file: !208, line: 1825, baseType: !1823, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!927, !718, !325, !930, !1826}
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1815, file: !208, line: 1826, baseType: !1828, size: 64, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!927, !718, !302, !930, !1826}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1815, file: !208, line: 1827, baseType: !1186, size: 64, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1815, file: !208, line: 1828, baseType: !1186, size: 64, offset: 320)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1815, file: !208, line: 1829, baseType: !1834, size: 64, offset: 384)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!319, !1189, !841}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1815, file: !208, line: 1830, baseType: !1838, size: 64, offset: 448)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!319, !718, !1841}
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !1843)
!1843 = !{!1844, !1849}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1842, file: !208, line: 1777, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !1846)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!319, !1841, !302, !319, !882, !546, !7}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1842, file: !208, line: 1778, baseType: !882, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1815, file: !208, line: 1831, baseType: !1838, size: 64, offset: 512)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1815, file: !208, line: 1832, baseType: !1852, size: 64, offset: 576)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!1855, !718, !1857}
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1856, line: 52, baseType: !7)
!1856 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1859, line: 43, size: 128, elements: !1860)
!1859 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!1860 = !{!1861, !1867}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1858, file: !1859, line: 44, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1859, line: 37, baseType: !1863)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{null, !718, !1866, !1857}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1858, file: !1859, line: 45, baseType: !1855, size: 32, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1815, file: !208, line: 1833, baseType: !1869, size: 64, offset: 640)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!506, !718, !7, !489}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1815, file: !208, line: 1834, baseType: !1869, size: 64, offset: 704)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1815, file: !208, line: 1835, baseType: !1874, size: 64, offset: 768)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!319, !718, !684}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1815, file: !208, line: 1836, baseType: !489, size: 64, offset: 832)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1815, file: !208, line: 1837, baseType: !1879, size: 64, offset: 896)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!319, !782, !718}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1815, file: !208, line: 1838, baseType: !1883, size: 64, offset: 960)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!319, !718, !1886}
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !293)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1815, file: !208, line: 1839, baseType: !1879, size: 64, offset: 1024)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1815, file: !208, line: 1840, baseType: !1889, size: 64, offset: 1088)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!319, !718, !882, !882, !319}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1815, file: !208, line: 1841, baseType: !1893, size: 64, offset: 1152)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!319, !319, !718, !319}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1815, file: !208, line: 1842, baseType: !1897, size: 64, offset: 1216)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!319, !718, !319, !1900}
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !1902)
!1902 = !{!1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1934, !1935, !1936, !1949, !1980}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1901, file: !208, line: 1063, baseType: !1900, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1901, file: !208, line: 1064, baseType: !539, size: 128, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1901, file: !208, line: 1065, baseType: !994, size: 128, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1901, file: !208, line: 1066, baseType: !539, size: 128, offset: 320)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1901, file: !208, line: 1069, baseType: !539, size: 128, offset: 448)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1901, file: !208, line: 1072, baseType: !1886, size: 64, offset: 576)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1901, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1901, file: !208, line: 1074, baseType: !344, size: 8, offset: 672)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1901, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1901, file: !208, line: 1076, baseType: !319, size: 32, offset: 736)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1901, file: !208, line: 1077, baseType: !1597, size: 128, offset: 768)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1901, file: !208, line: 1078, baseType: !718, size: 64, offset: 896)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1901, file: !208, line: 1079, baseType: !882, size: 64, offset: 960)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1901, file: !208, line: 1080, baseType: !882, size: 64, offset: 1024)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1901, file: !208, line: 1082, baseType: !1918, size: 64, offset: 1088)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !1920)
!1920 = !{!1921, !1929, !1930, !1931, !1932, !1933}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1919, file: !208, line: 1315, baseType: !1922)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1923, line: 20, baseType: !1924)
!1923 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1923, line: 11, elements: !1925)
!1925 = !{!1926}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1924, file: !1923, line: 12, baseType: !1927)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !474, line: 33, baseType: !1928)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 31, elements: !476)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1919, file: !208, line: 1316, baseType: !319, size: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1919, file: !208, line: 1317, baseType: !319, size: 32, offset: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1919, file: !208, line: 1318, baseType: !1918, size: 64, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1919, file: !208, line: 1319, baseType: !718, size: 64, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1919, file: !208, line: 1320, baseType: !731, size: 128, align: 64, offset: 192)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1901, file: !208, line: 1084, baseType: !489, size: 64, offset: 1152)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1901, file: !208, line: 1085, baseType: !489, size: 64, offset: 1216)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1901, file: !208, line: 1087, baseType: !1937, size: 64, offset: 1280)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1939)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !1940)
!1940 = !{!1941, !1945}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1939, file: !208, line: 1012, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null, !1900, !1900}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1939, file: !208, line: 1013, baseType: !1946, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{null, !1900}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1901, file: !208, line: 1088, baseType: !1950, size: 64, offset: 1344)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1952)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !1953)
!1953 = !{!1954, !1958, !1962, !1963, !1967, !1971, !1975, !1979}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1952, file: !208, line: 1017, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!1886, !1886}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1952, file: !208, line: 1018, baseType: !1959, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{null, !1886}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1952, file: !208, line: 1019, baseType: !1946, size: 64, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1952, file: !208, line: 1020, baseType: !1964, size: 64, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!319, !1900, !319}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1952, file: !208, line: 1021, baseType: !1968, size: 64, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!841, !1900}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1952, file: !208, line: 1022, baseType: !1972, size: 64, offset: 320)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!319, !1900, !319, !542}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1952, file: !208, line: 1023, baseType: !1976, size: 64, offset: 384)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null, !1900, !1163}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1952, file: !208, line: 1024, baseType: !1968, size: 64, offset: 448)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1901, file: !208, line: 1097, baseType: !1981, size: 256, offset: 1408)
!1981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1901, file: !208, line: 1089, size: 256, elements: !1982)
!1982 = !{!1983, !1992, !1998}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1981, file: !208, line: 1090, baseType: !1984, size: 256)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1985, line: 10, size: 256, elements: !1986)
!1985 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1986 = !{!1987, !1988, !1991}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1984, file: !1985, line: 11, baseType: !446, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1984, file: !1985, line: 12, baseType: !1989, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1985, line: 5, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1984, file: !1985, line: 13, baseType: !539, size: 128, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1981, file: !208, line: 1091, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1985, line: 17, size: 64, elements: !1994)
!1994 = !{!1995}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1993, file: !1985, line: 18, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1985, line: 16, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1981, file: !208, line: 1096, baseType: !1999, size: 192)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !208, line: 1092, size: 192, elements: !2000)
!2000 = !{!2001, !2002, !2003}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1999, file: !208, line: 1093, baseType: !539, size: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1999, file: !208, line: 1094, baseType: !319, size: 32, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1999, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1815, file: !208, line: 1843, baseType: !2005, size: 64, offset: 1280)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!927, !718, !1077, !319, !930, !1826, !319}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1815, file: !208, line: 1844, baseType: !2009, size: 64, offset: 1344)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!489, !718, !489, !489, !489, !489}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1815, file: !208, line: 1845, baseType: !2013, size: 64, offset: 1408)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!319, !319}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1815, file: !208, line: 1846, baseType: !1897, size: 64, offset: 1472)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1815, file: !208, line: 1847, baseType: !2018, size: 64, offset: 1536)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!927, !2021, !718, !1826, !930, !7}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !496, line: 53, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1815, file: !208, line: 1848, baseType: !2024, size: 64, offset: 1600)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!927, !718, !1826, !2021, !930, !7}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1815, file: !208, line: 1849, baseType: !2028, size: 64, offset: 1664)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!319, !718, !506, !2031, !1163}
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1815, file: !208, line: 1850, baseType: !2033, size: 64, offset: 1728)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!506, !718, !319, !882, !882}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1815, file: !208, line: 1852, baseType: !2037, size: 64, offset: 1792)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{null, !1068, !718}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1815, file: !208, line: 1856, baseType: !2041, size: 64, offset: 1856)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!927, !718, !882, !718, !882, !930, !7}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1815, file: !208, line: 1858, baseType: !2045, size: 64, offset: 1920)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!882, !718, !882, !718, !882, !882, !7}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1815, file: !208, line: 1861, baseType: !1889, size: 64, offset: 1984)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1810, file: !208, line: 692, baseType: !1021, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !783, file: !208, line: 694, baseType: !2051, size: 64, offset: 2560)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !2053)
!2053 = !{!2054, !2055, !2056, !2057}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2052, file: !208, line: 1101, baseType: !1098)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2052, file: !208, line: 1102, baseType: !539, size: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2052, file: !208, line: 1103, baseType: !539, size: 128, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2052, file: !208, line: 1104, baseType: !539, size: 128, offset: 256)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !783, file: !208, line: 695, baseType: !1090, size: 1216, align: 64, offset: 2624)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !783, file: !208, line: 696, baseType: !539, size: 128, offset: 3840)
!2060 = !DIDerivedType(tag: DW_TAG_member, scope: !783, file: !208, line: 697, baseType: !2061, size: 64, offset: 3968)
!2061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !783, file: !208, line: 697, size: 64, elements: !2062)
!2062 = !{!2063, !2064, !2065, !2374, !2375}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2061, file: !208, line: 698, baseType: !2021, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2061, file: !208, line: 699, baseType: !1541, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2061, file: !208, line: 700, baseType: !2066, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2068, line: 14, size: 832, elements: !2069)
!2068 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2069 = !{!2070, !2369, !2370, !2371, !2372, !2373}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2067, file: !2068, line: 15, baseType: !2071, size: 512)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2072, line: 64, size: 512, elements: !2073)
!2072 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2073 = !{!2074, !2075, !2076, !2078, !2118, !2220, !2359, !2364, !2365, !2366, !2367, !2368}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2071, file: !2072, line: 65, baseType: !302, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2071, file: !2072, line: 66, baseType: !539, size: 128, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2071, file: !2072, line: 67, baseType: !2077, size: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2071, file: !2072, line: 68, baseType: !2079, size: 64, offset: 256)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2072, line: 192, size: 704, elements: !2081)
!2081 = !{!2082, !2083, !2084, !2085}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2080, file: !2072, line: 193, baseType: !539, size: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2080, file: !2072, line: 194, baseType: !1098, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2080, file: !2072, line: 195, baseType: !2071, size: 512, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2080, file: !2072, line: 196, baseType: !2086, size: 64, offset: 640)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2088)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2072, line: 156, size: 192, elements: !2089)
!2089 = !{!2090, !2095, !2100}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2088, file: !2072, line: 157, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2092)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!319, !2079, !2077}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2088, file: !2072, line: 158, baseType: !2096, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2097)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!302, !2079, !2077}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2088, file: !2072, line: 159, baseType: !2101, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2102)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!319, !2079, !2077, !2105}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2072, line: 148, size: 20736, elements: !2107)
!2107 = !{!2108, !2110, !2112, !2113, !2117}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2106, file: !2072, line: 149, baseType: !2109, size: 192)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 192, elements: !1006)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2106, file: !2072, line: 150, baseType: !2111, size: 4096, offset: 192)
!2111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 4096, elements: !375)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2106, file: !2072, line: 151, baseType: !319, size: 32, offset: 4288)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2106, file: !2072, line: 152, baseType: !2114, size: 16384, offset: 4320)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 16384, elements: !2115)
!2115 = !{!2116}
!2116 = !DISubrange(count: 2048)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2106, file: !2072, line: 153, baseType: !319, size: 32, offset: 20704)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2071, file: !2072, line: 69, baseType: !2119, size: 64, offset: 320)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2072, line: 138, size: 448, elements: !2121)
!2121 = !{!2122, !2126, !2145, !2147, !2180, !2210, !2214}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2120, file: !2072, line: 139, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{null, !2077}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2120, file: !2072, line: 140, baseType: !2127, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2129)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2130, line: 230, size: 128, elements: !2131)
!2130 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2131 = !{!2132, !2141}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2129, file: !2130, line: 231, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!927, !2077, !2136, !325}
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2130, line: 30, size: 128, elements: !2138)
!2138 = !{!2139, !2140}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2137, file: !2130, line: 31, baseType: !302, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2137, file: !2130, line: 32, baseType: !786, size: 16, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2129, file: !2130, line: 232, baseType: !2142, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!927, !2077, !2136, !302, !930}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2120, file: !2072, line: 141, baseType: !2146, size: 64, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2120, file: !2072, line: 142, baseType: !2148, size: 64, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2151)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2130, line: 84, size: 320, elements: !2152)
!2152 = !{!2153, !2154, !2158, !2177, !2178}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2151, file: !2130, line: 85, baseType: !302, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2151, file: !2130, line: 86, baseType: !2155, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!786, !2077, !2136, !319}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2151, file: !2130, line: 88, baseType: !2159, size: 64, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!786, !2077, !2162, !319}
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2130, line: 168, size: 448, elements: !2164)
!2164 = !{!2165, !2166, !2167, !2168, !2172, !2173}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2163, file: !2130, line: 169, baseType: !2137, size: 128)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2163, file: !2130, line: 170, baseType: !930, size: 64, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2163, file: !2130, line: 171, baseType: !293, size: 64, offset: 192)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2163, file: !2130, line: 172, baseType: !2169, size: 64, offset: 256)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!927, !718, !2077, !2162, !325, !882, !930}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2163, file: !2130, line: 174, baseType: !2169, size: 64, offset: 320)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2163, file: !2130, line: 176, baseType: !2174, size: 64, offset: 384)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!319, !718, !2077, !2162, !684}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2151, file: !2130, line: 90, baseType: !2146, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2151, file: !2130, line: 91, baseType: !2179, size: 64, offset: 256)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2120, file: !2072, line: 143, baseType: !2181, size: 64, offset: 256)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!2184, !2077}
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2186)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !2187)
!2187 = !{!2188, !2189, !2193, !2197, !2205, !2209}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2186, file: !225, line: 40, baseType: !224, size: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2186, file: !225, line: 41, baseType: !2190, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!841}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2186, file: !225, line: 42, baseType: !2194, size: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!293}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2186, file: !225, line: 43, baseType: !2198, size: 64, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!2201, !2203}
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2186, file: !225, line: 44, baseType: !2206, size: 64, offset: 256)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!2201}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2186, file: !225, line: 45, baseType: !327, size: 64, offset: 320)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2120, file: !2072, line: 144, baseType: !2211, size: 64, offset: 320)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!2201, !2077}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2120, file: !2072, line: 145, baseType: !2215, size: 64, offset: 384)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{null, !2077, !2218, !2219}
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2071, file: !2072, line: 70, baseType: !2221, size: 64, offset: 384)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !974, line: 123, size: 1024, elements: !2223)
!2223 = !{!2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2352, !2353, !2354, !2355, !2356}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2222, file: !974, line: 124, baseType: !514, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2222, file: !974, line: 125, baseType: !514, size: 32, offset: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2222, file: !974, line: 135, baseType: !2221, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2222, file: !974, line: 136, baseType: !302, size: 64, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2222, file: !974, line: 138, baseType: !486, size: 192, align: 64, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2222, file: !974, line: 140, baseType: !2201, size: 64, offset: 384)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2222, file: !974, line: 141, baseType: !7, size: 32, offset: 448)
!2231 = !DIDerivedType(tag: DW_TAG_member, scope: !2222, file: !974, line: 142, baseType: !2232, size: 256, offset: 512)
!2232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2222, file: !974, line: 142, size: 256, elements: !2233)
!2233 = !{!2234, !2280, !2284}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2232, file: !974, line: 143, baseType: !2235, size: 192)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !974, line: 91, size: 192, elements: !2236)
!2236 = !{!2237, !2238, !2239}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2235, file: !974, line: 92, baseType: !489, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2235, file: !974, line: 94, baseType: !482, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2235, file: !974, line: 100, baseType: !2240, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !974, line: 180, size: 704, elements: !2242)
!2242 = !{!2243, !2244, !2245, !2252, !2253, !2254, !2278, !2279}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2241, file: !974, line: 182, baseType: !2221, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2241, file: !974, line: 183, baseType: !7, size: 32, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2241, file: !974, line: 186, baseType: !2246, size: 192, offset: 128)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2247, line: 19, size: 192, elements: !2248)
!2247 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2248 = !{!2249, !2250, !2251}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2246, file: !2247, line: 20, baseType: !1094, size: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2246, file: !2247, line: 21, baseType: !7, size: 32, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2246, file: !2247, line: 22, baseType: !7, size: 32, offset: 160)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2241, file: !974, line: 187, baseType: !446, size: 32, offset: 320)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2241, file: !974, line: 188, baseType: !446, size: 32, offset: 352)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2241, file: !974, line: 189, baseType: !2255, size: 64, offset: 384)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !974, line: 168, size: 320, elements: !2257)
!2257 = !{!2258, !2262, !2266, !2270, !2274}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2256, file: !974, line: 169, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!319, !1068, !2240}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2256, file: !974, line: 171, baseType: !2263, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!319, !2221, !302, !786}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2256, file: !974, line: 173, baseType: !2267, size: 64, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!319, !2221}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2256, file: !974, line: 174, baseType: !2271, size: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!319, !2221, !2221, !302}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2256, file: !974, line: 176, baseType: !2275, size: 64, offset: 256)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!319, !1068, !2221, !2240}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2241, file: !974, line: 192, baseType: !539, size: 128, offset: 448)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2241, file: !974, line: 194, baseType: !1597, size: 128, offset: 576)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2232, file: !974, line: 144, baseType: !2281, size: 64)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !974, line: 103, size: 64, elements: !2282)
!2282 = !{!2283}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2281, file: !974, line: 104, baseType: !2221, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2232, file: !974, line: 145, baseType: !2285, size: 256)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !974, line: 107, size: 256, elements: !2286)
!2286 = !{!2287, !2347, !2350, !2351}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2285, file: !974, line: 108, baseType: !2288, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2290)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !974, line: 217, size: 768, elements: !2291)
!2291 = !{!2292, !2312, !2316, !2320, !2324, !2328, !2332, !2336, !2337, !2338, !2339, !2343}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2290, file: !974, line: 222, baseType: !2293, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!319, !2296}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !974, line: 197, size: 1088, elements: !2298)
!2298 = !{!2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2297, file: !974, line: 199, baseType: !2221, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2297, file: !974, line: 200, baseType: !718, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2297, file: !974, line: 201, baseType: !1068, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2297, file: !974, line: 202, baseType: !293, size: 64, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2297, file: !974, line: 205, baseType: !1365, size: 192, offset: 256)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2297, file: !974, line: 206, baseType: !1365, size: 192, offset: 448)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2297, file: !974, line: 207, baseType: !319, size: 32, offset: 640)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2297, file: !974, line: 208, baseType: !539, size: 128, offset: 704)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2297, file: !974, line: 209, baseType: !325, size: 64, offset: 832)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2297, file: !974, line: 211, baseType: !930, size: 64, offset: 896)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2297, file: !974, line: 212, baseType: !841, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2297, file: !974, line: 213, baseType: !841, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2297, file: !974, line: 214, baseType: !713, size: 64, offset: 1024)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2290, file: !974, line: 223, baseType: !2313, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{null, !2296}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2290, file: !974, line: 236, baseType: !2317, size: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!319, !1068, !293}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2290, file: !974, line: 238, baseType: !2321, size: 64, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!293, !1068, !1826}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2290, file: !974, line: 239, baseType: !2325, size: 64, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!293, !1068, !293, !1826}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2290, file: !974, line: 240, baseType: !2329, size: 64, offset: 320)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{null, !1068, !293}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2290, file: !974, line: 242, baseType: !2333, size: 64, offset: 384)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!927, !2296, !325, !930, !882}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2290, file: !974, line: 252, baseType: !930, size: 64, offset: 448)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2290, file: !974, line: 259, baseType: !841, size: 8, offset: 512)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2290, file: !974, line: 260, baseType: !2333, size: 64, offset: 576)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2290, file: !974, line: 263, baseType: !2340, size: 64, offset: 640)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!1855, !2296, !1857}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2290, file: !974, line: 266, baseType: !2344, size: 64, offset: 704)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!319, !2296, !684}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2285, file: !974, line: 109, baseType: !2348, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !974, line: 31, flags: DIFlagFwdDecl)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2285, file: !974, line: 110, baseType: !882, size: 64, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2285, file: !974, line: 111, baseType: !2221, size: 64, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2222, file: !974, line: 148, baseType: !293, size: 64, offset: 768)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2222, file: !974, line: 154, baseType: !546, size: 64, offset: 832)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2222, file: !974, line: 156, baseType: !336, size: 16, offset: 896)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2222, file: !974, line: 157, baseType: !786, size: 16, offset: 912)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2222, file: !974, line: 158, baseType: !2357, size: 64, offset: 960)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !974, line: 32, flags: DIFlagFwdDecl)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2071, file: !2072, line: 71, baseType: !2360, size: 32, offset: 448)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2361, line: 19, size: 32, elements: !2362)
!2361 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2362 = !{!2363}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2360, file: !2361, line: 20, baseType: !509, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2071, file: !2072, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2071, file: !2072, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2071, file: !2072, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2071, file: !2072, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2071, file: !2072, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2067, file: !2068, line: 16, baseType: !306, size: 64, offset: 512)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2067, file: !2068, line: 17, baseType: !1813, size: 64, offset: 576)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2067, file: !2068, line: 18, baseType: !539, size: 128, offset: 640)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2067, file: !2068, line: 19, baseType: !864, size: 32, offset: 768)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2067, file: !2068, line: 20, baseType: !7, size: 32, offset: 800)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2061, file: !208, line: 701, baseType: !325, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2061, file: !208, line: 702, baseType: !7, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !783, file: !208, line: 705, baseType: !447, size: 32, offset: 4032)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !783, file: !208, line: 708, baseType: !447, size: 32, offset: 4064)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !783, file: !208, line: 709, baseType: !1630, size: 64, offset: 4096)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !783, file: !208, line: 720, baseType: !293, size: 64, offset: 4160)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !749, file: !746, line: 98, baseType: !2381, size: 256, offset: 448)
!2381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 256, elements: !1634)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !749, file: !746, line: 101, baseType: !2383, size: 32, offset: 704)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2384, line: 25, size: 32, elements: !2385)
!2384 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2385 = !{!2386}
!2386 = !DIDerivedType(tag: DW_TAG_member, scope: !2383, file: !2384, line: 26, baseType: !2387, size: 32)
!2387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2383, file: !2384, line: 26, size: 32, elements: !2388)
!2388 = !{!2389}
!2389 = !DIDerivedType(tag: DW_TAG_member, scope: !2387, file: !2384, line: 30, baseType: !2390, size: 32)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2387, file: !2384, line: 30, size: 32, elements: !2391)
!2391 = !{!2392, !2393}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2390, file: !2384, line: 31, baseType: !1098)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2390, file: !2384, line: 32, baseType: !319, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !749, file: !746, line: 102, baseType: !1651, size: 64, offset: 768)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !749, file: !746, line: 103, baseType: !954, size: 64, offset: 832)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !749, file: !746, line: 104, baseType: !489, size: 64, offset: 896)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !749, file: !746, line: 105, baseType: !293, size: 64, offset: 960)
!2398 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !746, line: 107, baseType: !2399, size: 128, offset: 1024)
!2399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !746, line: 107, size: 128, elements: !2400)
!2400 = !{!2401, !2402}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2399, file: !746, line: 108, baseType: !539, size: 128)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2399, file: !746, line: 109, baseType: !1866, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !749, file: !746, line: 111, baseType: !539, size: 128, offset: 1152)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !749, file: !746, line: 112, baseType: !539, size: 128, offset: 1280)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !749, file: !746, line: 120, baseType: !2406, size: 128, offset: 1408)
!2406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !746, line: 116, size: 128, elements: !2407)
!2407 = !{!2408, !2409, !2410}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2406, file: !746, line: 117, baseType: !994, size: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2406, file: !746, line: 118, baseType: !758, size: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2406, file: !746, line: 119, baseType: !731, size: 128, align: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !719, file: !208, line: 922, baseType: !782, size: 64, offset: 256)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !719, file: !208, line: 923, baseType: !1813, size: 64, offset: 320)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !719, file: !208, line: 929, baseType: !1098, offset: 384)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !719, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !719, file: !208, line: 931, baseType: !1115, size: 64, offset: 448)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !719, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !719, file: !208, line: 933, baseType: !1647, size: 32, offset: 544)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !719, file: !208, line: 934, baseType: !1365, size: 192, offset: 576)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !719, file: !208, line: 935, baseType: !882, size: 64, offset: 768)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !719, file: !208, line: 936, baseType: !2421, size: 192, offset: 832)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !2422)
!2422 = !{!2423, !2424, !2446, !2447, !2448, !2449}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2421, file: !208, line: 886, baseType: !1922)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2421, file: !208, line: 887, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !2427)
!2427 = !{!2428, !2429, !2430, !2431, !2435, !2436, !2437, !2438}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2426, file: !217, line: 61, baseType: !509, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2426, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2426, file: !217, line: 63, baseType: !1098, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2426, file: !217, line: 65, baseType: !2432, size: 256, offset: 64)
!2432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 256, elements: !2433)
!2433 = !{!2434}
!2434 = !DISubrange(count: 4)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2426, file: !217, line: 66, baseType: !990, size: 64, offset: 320)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2426, file: !217, line: 68, baseType: !1597, size: 128, offset: 384)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2426, file: !217, line: 69, baseType: !731, size: 128, align: 64, offset: 512)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2426, file: !217, line: 70, baseType: !2439, size: 128, offset: 640)
!2439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2440, size: 128, elements: !669)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !2441)
!2441 = !{!2442, !2443}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2440, file: !217, line: 55, baseType: !319, size: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2440, file: !217, line: 56, baseType: !2444, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2421, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2421, file: !208, line: 889, baseType: !789, size: 32, offset: 96)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2421, file: !208, line: 889, baseType: !789, size: 32, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2421, file: !208, line: 890, baseType: !319, size: 32, offset: 160)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !719, file: !208, line: 937, baseType: !2451, size: 64, offset: 1024)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2453)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2454, line: 111, size: 1280, elements: !2455)
!2454 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2455 = !{!2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2475, !2476, !2477, !2478, !2479, !2480, !2590, !2591, !2592, !2593, !2619, !2620, !2630}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2453, file: !2454, line: 112, baseType: !514, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2453, file: !2454, line: 120, baseType: !789, size: 32, offset: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2453, file: !2454, line: 121, baseType: !797, size: 32, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2453, file: !2454, line: 122, baseType: !789, size: 32, offset: 96)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2453, file: !2454, line: 123, baseType: !797, size: 32, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2453, file: !2454, line: 124, baseType: !789, size: 32, offset: 160)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2453, file: !2454, line: 125, baseType: !797, size: 32, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2453, file: !2454, line: 126, baseType: !789, size: 32, offset: 224)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2453, file: !2454, line: 127, baseType: !797, size: 32, offset: 256)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2453, file: !2454, line: 128, baseType: !7, size: 32, offset: 288)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2453, file: !2454, line: 129, baseType: !2467, size: 64, offset: 320)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2468, line: 26, baseType: !2469)
!2468 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2468, line: 24, size: 64, elements: !2470)
!2470 = !{!2471}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2469, file: !2468, line: 25, baseType: !2472, size: 64)
!2472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 64, elements: !2473)
!2473 = !{!2474}
!2474 = !DISubrange(count: 2)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2453, file: !2454, line: 130, baseType: !2467, size: 64, offset: 384)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2453, file: !2454, line: 131, baseType: !2467, size: 64, offset: 448)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2453, file: !2454, line: 132, baseType: !2467, size: 64, offset: 512)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2453, file: !2454, line: 133, baseType: !2467, size: 64, offset: 576)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2453, file: !2454, line: 135, baseType: !344, size: 8, offset: 640)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2453, file: !2454, line: 137, baseType: !2481, size: 64, offset: 704)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2483, line: 189, size: 1664, elements: !2484)
!2483 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2484 = !{!2485, !2486, !2491, !2496, !2497, !2500, !2501, !2506, !2507, !2508, !2509, !2511, !2512, !2513, !2515, !2516, !2554, !2575}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2482, file: !2483, line: 190, baseType: !509, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2482, file: !2483, line: 191, baseType: !2487, size: 32, offset: 32)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2483, line: 28, baseType: !2488)
!2488 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !292, line: 98, baseType: !2489)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !333, line: 20, baseType: !2490)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !335, line: 26, baseType: !319)
!2491 = !DIDerivedType(tag: DW_TAG_member, scope: !2482, file: !2483, line: 192, baseType: !2492, size: 192, offset: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2482, file: !2483, line: 192, size: 192, elements: !2493)
!2493 = !{!2494, !2495}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2492, file: !2483, line: 193, baseType: !539, size: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2492, file: !2483, line: 194, baseType: !486, size: 192, align: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2482, file: !2483, line: 199, baseType: !1111, size: 256, offset: 256)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2482, file: !2483, line: 200, baseType: !2498, size: 64, offset: 512)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2483, line: 200, flags: DIFlagFwdDecl)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2482, file: !2483, line: 201, baseType: !293, size: 64, offset: 576)
!2501 = !DIDerivedType(tag: DW_TAG_member, scope: !2482, file: !2483, line: 202, baseType: !2502, size: 64, offset: 640)
!2502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2482, file: !2483, line: 202, size: 64, elements: !2503)
!2503 = !{!2504, !2505}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2502, file: !2483, line: 203, baseType: !889, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2502, file: !2483, line: 204, baseType: !889, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2482, file: !2483, line: 206, baseType: !889, size: 64, offset: 704)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2482, file: !2483, line: 207, baseType: !789, size: 32, offset: 768)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2482, file: !2483, line: 208, baseType: !797, size: 32, offset: 800)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2482, file: !2483, line: 209, baseType: !2510, size: 32, offset: 832)
!2510 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2483, line: 31, baseType: !908)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2482, file: !2483, line: 210, baseType: !336, size: 16, offset: 864)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2482, file: !2483, line: 211, baseType: !336, size: 16, offset: 880)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2482, file: !2483, line: 215, baseType: !2514, size: 16, offset: 896)
!2514 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2482, file: !2483, line: 222, baseType: !489, size: 64, offset: 960)
!2516 = !DIDerivedType(tag: DW_TAG_member, scope: !2482, file: !2483, line: 239, baseType: !2517, size: 320, offset: 1024)
!2517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2482, file: !2483, line: 239, size: 320, elements: !2518)
!2518 = !{!2519, !2546}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2517, file: !2483, line: 240, baseType: !2520, size: 320)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2483, line: 108, size: 320, elements: !2521)
!2521 = !{!2522, !2523, !2535, !2538, !2545}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2520, file: !2483, line: 110, baseType: !489, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, scope: !2520, file: !2483, line: 111, baseType: !2524, size: 64, offset: 64)
!2524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2520, file: !2483, line: 111, size: 64, elements: !2525)
!2525 = !{!2526, !2534}
!2526 = !DIDerivedType(tag: DW_TAG_member, scope: !2524, file: !2483, line: 112, baseType: !2527, size: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2524, file: !2483, line: 112, size: 64, elements: !2528)
!2528 = !{!2529, !2530}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2527, file: !2483, line: 114, baseType: !332, size: 16)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2527, file: !2483, line: 115, baseType: !2531, size: 48, offset: 16)
!2531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 48, elements: !2532)
!2532 = !{!2533}
!2533 = !DISubrange(count: 6)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2524, file: !2483, line: 121, baseType: !489, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2520, file: !2483, line: 123, baseType: !2536, size: 64, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2483, line: 96, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2520, file: !2483, line: 124, baseType: !2539, size: 64, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2483, line: 102, size: 192, elements: !2541)
!2541 = !{!2542, !2543, !2544}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2540, file: !2483, line: 103, baseType: !731, size: 128, align: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2540, file: !2483, line: 104, baseType: !509, size: 32, offset: 128)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2540, file: !2483, line: 105, baseType: !841, size: 8, offset: 160)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2520, file: !2483, line: 125, baseType: !302, size: 64, offset: 256)
!2546 = !DIDerivedType(tag: DW_TAG_member, scope: !2517, file: !2483, line: 241, baseType: !2547, size: 320)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2517, file: !2483, line: 241, size: 320, elements: !2548)
!2548 = !{!2549, !2550, !2551, !2552, !2553}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2547, file: !2483, line: 242, baseType: !489, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2547, file: !2483, line: 243, baseType: !489, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2547, file: !2483, line: 244, baseType: !2536, size: 64, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2547, file: !2483, line: 245, baseType: !2539, size: 64, offset: 192)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2547, file: !2483, line: 246, baseType: !325, size: 64, offset: 256)
!2554 = !DIDerivedType(tag: DW_TAG_member, scope: !2482, file: !2483, line: 254, baseType: !2555, size: 256, offset: 1344)
!2555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2482, file: !2483, line: 254, size: 256, elements: !2556)
!2556 = !{!2557, !2563}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2555, file: !2483, line: 255, baseType: !2558, size: 256)
!2558 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2483, line: 128, size: 256, elements: !2559)
!2559 = !{!2560, !2561}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2558, file: !2483, line: 129, baseType: !293, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2558, file: !2483, line: 130, baseType: !2562, size: 256)
!2562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 256, elements: !2433)
!2563 = !DIDerivedType(tag: DW_TAG_member, scope: !2555, file: !2483, line: 256, baseType: !2564, size: 256)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2555, file: !2483, line: 256, size: 256, elements: !2565)
!2565 = !{!2566, !2567}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2564, file: !2483, line: 258, baseType: !539, size: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2564, file: !2483, line: 259, baseType: !2568, size: 128, offset: 128)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2569, line: 22, size: 128, elements: !2570)
!2569 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2570 = !{!2571, !2574}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2568, file: !2569, line: 23, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2569, line: 23, flags: DIFlagFwdDecl)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2568, file: !2569, line: 24, baseType: !489, size: 64, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2482, file: !2483, line: 274, baseType: !2576, size: 64, offset: 1600)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2483, line: 170, size: 192, elements: !2578)
!2578 = !{!2579, !2588, !2589}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2577, file: !2483, line: 171, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2483, line: 165, baseType: !2581)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!319, !2481, !2584, !2586, !2481}
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2537)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2558)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2577, file: !2483, line: 172, baseType: !2481, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2577, file: !2483, line: 173, baseType: !2536, size: 64, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2453, file: !2454, line: 138, baseType: !2481, size: 64, offset: 768)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2453, file: !2454, line: 139, baseType: !2481, size: 64, offset: 832)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2453, file: !2454, line: 140, baseType: !2481, size: 64, offset: 896)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2453, file: !2454, line: 145, baseType: !2594, size: 64, offset: 960)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2596, line: 13, size: 896, elements: !2597)
!2596 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2597 = !{!2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2595, file: !2596, line: 14, baseType: !509, size: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2595, file: !2596, line: 15, baseType: !514, size: 32, offset: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2595, file: !2596, line: 16, baseType: !514, size: 32, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2595, file: !2596, line: 21, baseType: !1115, size: 64, offset: 128)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2595, file: !2596, line: 27, baseType: !489, size: 64, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2595, file: !2596, line: 28, baseType: !489, size: 64, offset: 256)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2595, file: !2596, line: 29, baseType: !1115, size: 64, offset: 320)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2595, file: !2596, line: 32, baseType: !994, size: 128, offset: 384)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2595, file: !2596, line: 33, baseType: !789, size: 32, offset: 512)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2595, file: !2596, line: 37, baseType: !1115, size: 64, offset: 576)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2595, file: !2596, line: 44, baseType: !2609, size: 256, offset: 640)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2610, line: 15, size: 256, elements: !2611)
!2610 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2611 = !{!2612, !2613, !2614, !2615, !2616, !2617, !2618}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2609, file: !2610, line: 16, baseType: !468)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2609, file: !2610, line: 18, baseType: !319, size: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2609, file: !2610, line: 19, baseType: !319, size: 32, offset: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2609, file: !2610, line: 20, baseType: !319, size: 32, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2609, file: !2610, line: 21, baseType: !319, size: 32, offset: 96)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2609, file: !2610, line: 22, baseType: !489, size: 64, offset: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2609, file: !2610, line: 23, baseType: !489, size: 64, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2453, file: !2454, line: 146, baseType: !1735, size: 64, offset: 1024)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2453, file: !2454, line: 147, baseType: !2621, size: 64, offset: 1088)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2454, line: 25, size: 64, elements: !2623)
!2623 = !{!2624, !2625, !2626}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2622, file: !2454, line: 26, baseType: !514, size: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2622, file: !2454, line: 27, baseType: !319, size: 32, offset: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2622, file: !2454, line: 28, baseType: !2627, offset: 64)
!2627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, elements: !2628)
!2628 = !{!2629}
!2629 = !DISubrange(count: 0)
!2630 = !DIDerivedType(tag: DW_TAG_member, scope: !2453, file: !2454, line: 149, baseType: !2631, size: 128, offset: 1152)
!2631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2453, file: !2454, line: 149, size: 128, elements: !2632)
!2632 = !{!2633, !2634}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2631, file: !2454, line: 150, baseType: !319, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2631, file: !2454, line: 151, baseType: !731, size: 128, align: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !719, file: !208, line: 938, baseType: !2636, size: 256, offset: 1088)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !2637)
!2637 = !{!2638, !2639, !2640, !2641, !2642, !2643}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2636, file: !208, line: 897, baseType: !489, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2636, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2636, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2636, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2636, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2636, file: !208, line: 904, baseType: !882, size: 64, offset: 192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !719, file: !208, line: 940, baseType: !546, size: 64, offset: 1344)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !719, file: !208, line: 945, baseType: !293, size: 64, offset: 1408)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !719, file: !208, line: 949, baseType: !539, size: 128, offset: 1472)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !719, file: !208, line: 950, baseType: !539, size: 128, offset: 1600)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !719, file: !208, line: 952, baseType: !1089, size: 64, offset: 1728)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !719, file: !208, line: 953, baseType: !1249, size: 32, offset: 1792)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !719, file: !208, line: 954, baseType: !1249, size: 32, offset: 1824)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !685, file: !678, line: 362, baseType: !293, size: 64, offset: 1344)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !685, file: !678, line: 365, baseType: !1115, size: 64, offset: 1408)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !685, file: !678, line: 373, baseType: !2654, offset: 1472)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !678, line: 296, elements: !476)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !681, file: !678, line: 391, baseType: !482, size: 64, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !681, file: !678, line: 392, baseType: !546, size: 64, offset: 128)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !681, file: !678, line: 394, baseType: !2009, size: 64, offset: 192)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !681, file: !678, line: 398, baseType: !489, size: 64, offset: 256)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !681, file: !678, line: 399, baseType: !489, size: 64, offset: 320)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !681, file: !678, line: 405, baseType: !489, size: 64, offset: 384)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !681, file: !678, line: 406, baseType: !489, size: 64, offset: 448)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !681, file: !678, line: 407, baseType: !2663, size: 64, offset: 512)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !696, line: 286, baseType: !2665)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !696, line: 286, size: 64, elements: !2666)
!2666 = !{!2667}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2665, file: !696, line: 286, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !701, line: 18, baseType: !489)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !681, file: !678, line: 416, baseType: !514, size: 32, offset: 576)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !681, file: !678, line: 428, baseType: !514, size: 32, offset: 608)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !681, file: !678, line: 437, baseType: !514, size: 32, offset: 640)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !681, file: !678, line: 447, baseType: !514, size: 32, offset: 672)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !681, file: !678, line: 450, baseType: !1115, size: 64, offset: 704)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !681, file: !678, line: 452, baseType: !319, size: 32, offset: 768)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !681, file: !678, line: 454, baseType: !1098, offset: 800)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !681, file: !678, line: 457, baseType: !1111, size: 256, offset: 832)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !681, file: !678, line: 459, baseType: !539, size: 128, offset: 1088)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !681, file: !678, line: 466, baseType: !489, size: 64, offset: 1216)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !681, file: !678, line: 467, baseType: !489, size: 64, offset: 1280)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !681, file: !678, line: 469, baseType: !489, size: 64, offset: 1344)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !681, file: !678, line: 470, baseType: !489, size: 64, offset: 1408)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !681, file: !678, line: 471, baseType: !1117, size: 64, offset: 1472)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !681, file: !678, line: 472, baseType: !489, size: 64, offset: 1536)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !681, file: !678, line: 473, baseType: !489, size: 64, offset: 1600)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !681, file: !678, line: 474, baseType: !489, size: 64, offset: 1664)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !681, file: !678, line: 475, baseType: !489, size: 64, offset: 1728)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !681, file: !678, line: 477, baseType: !1098, offset: 1792)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !681, file: !678, line: 478, baseType: !489, size: 64, offset: 1792)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !681, file: !678, line: 478, baseType: !489, size: 64, offset: 1856)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !681, file: !678, line: 478, baseType: !489, size: 64, offset: 1920)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !681, file: !678, line: 478, baseType: !489, size: 64, offset: 1984)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !681, file: !678, line: 479, baseType: !489, size: 64, offset: 2048)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !681, file: !678, line: 479, baseType: !489, size: 64, offset: 2112)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !681, file: !678, line: 479, baseType: !489, size: 64, offset: 2176)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !681, file: !678, line: 480, baseType: !489, size: 64, offset: 2240)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !681, file: !678, line: 480, baseType: !489, size: 64, offset: 2304)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !681, file: !678, line: 480, baseType: !489, size: 64, offset: 2368)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !681, file: !678, line: 480, baseType: !489, size: 64, offset: 2432)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !681, file: !678, line: 482, baseType: !2700, size: 2816, offset: 2496)
!2700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 2816, elements: !2701)
!2701 = !{!2702}
!2702 = !DISubrange(count: 44)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !681, file: !678, line: 488, baseType: !2704, size: 256, offset: 5312)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2705, line: 60, size: 256, elements: !2706)
!2705 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2706 = !{!2707}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2704, file: !2705, line: 61, baseType: !2708, size: 256)
!2708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, size: 256, elements: !2433)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !681, file: !678, line: 490, baseType: !2710, size: 64, offset: 5568)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !678, line: 490, flags: DIFlagFwdDecl)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !681, file: !678, line: 493, baseType: !2713, size: 896, offset: 5632)
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2714, line: 53, baseType: !2715)
!2714 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2714, line: 13, size: 896, elements: !2716)
!2716 = !{!2717, !2718, !2719, !2720, !2723, !2724, !2725, !2726, !2746, !2747, !2748}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2715, file: !2714, line: 18, baseType: !546, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2715, file: !2714, line: 28, baseType: !1117, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2715, file: !2714, line: 31, baseType: !1111, size: 256, offset: 128)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2715, file: !2714, line: 32, baseType: !2721, size: 64, offset: 384)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2714, line: 32, flags: DIFlagFwdDecl)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2715, file: !2714, line: 37, baseType: !336, size: 16, offset: 448)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2715, file: !2714, line: 40, baseType: !1365, size: 192, offset: 512)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2715, file: !2714, line: 41, baseType: !293, size: 64, offset: 704)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2715, file: !2714, line: 42, baseType: !2727, size: 64, offset: 768)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2729)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2730, line: 13, size: 896, elements: !2731)
!2730 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2731 = !{!2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2729, file: !2730, line: 14, baseType: !293, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2729, file: !2730, line: 15, baseType: !489, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2729, file: !2730, line: 17, baseType: !489, size: 64, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2729, file: !2730, line: 17, baseType: !489, size: 64, offset: 192)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2729, file: !2730, line: 19, baseType: !506, size: 64, offset: 256)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2729, file: !2730, line: 21, baseType: !506, size: 64, offset: 320)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2729, file: !2730, line: 22, baseType: !506, size: 64, offset: 384)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2729, file: !2730, line: 23, baseType: !506, size: 64, offset: 448)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2729, file: !2730, line: 24, baseType: !506, size: 64, offset: 512)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2729, file: !2730, line: 25, baseType: !506, size: 64, offset: 576)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2729, file: !2730, line: 26, baseType: !506, size: 64, offset: 640)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2729, file: !2730, line: 27, baseType: !506, size: 64, offset: 704)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2729, file: !2730, line: 28, baseType: !506, size: 64, offset: 768)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2729, file: !2730, line: 29, baseType: !506, size: 64, offset: 832)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2715, file: !2714, line: 44, baseType: !514, size: 32, offset: 832)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2715, file: !2714, line: 50, baseType: !332, size: 16, offset: 864)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2715, file: !2714, line: 51, baseType: !2749, size: 16, offset: 880)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !333, line: 18, baseType: !2750)
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !335, line: 23, baseType: !2514)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !681, file: !678, line: 495, baseType: !489, size: 64, offset: 6528)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !681, file: !678, line: 497, baseType: !2753, size: 64, offset: 6592)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !678, line: 381, size: 384, elements: !2755)
!2755 = !{!2756, !2757, !2763}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2754, file: !678, line: 382, baseType: !514, size: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2754, file: !678, line: 383, baseType: !2758, size: 128, offset: 64)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !678, line: 376, size: 128, elements: !2759)
!2759 = !{!2760, !2761}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2758, file: !678, line: 377, baseType: !494, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2758, file: !678, line: 378, baseType: !2762, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2754, file: !678, line: 384, baseType: !2764, size: 192, offset: 192)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2765, line: 26, size: 192, elements: !2766)
!2765 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2766 = !{!2767, !2768}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2764, file: !2765, line: 27, baseType: !7, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2764, file: !2765, line: 28, baseType: !2769, size: 128, offset: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2770, line: 43, size: 128, elements: !2771)
!2770 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2771 = !{!2772, !2773}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2769, file: !2770, line: 44, baseType: !468)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2769, file: !2770, line: 45, baseType: !539, size: 128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !681, file: !678, line: 500, baseType: !1098, offset: 6656)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !681, file: !678, line: 501, baseType: !2776, size: 64, offset: 6656)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !678, line: 387, flags: DIFlagFwdDecl)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !681, file: !678, line: 516, baseType: !1735, size: 64, offset: 6720)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !681, file: !678, line: 519, baseType: !718, size: 64, offset: 6784)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !681, file: !678, line: 521, baseType: !2781, size: 64, offset: 6848)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !678, line: 521, flags: DIFlagFwdDecl)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !681, file: !678, line: 545, baseType: !514, size: 32, offset: 6912)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !681, file: !678, line: 548, baseType: !841, size: 8, offset: 6944)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !681, file: !678, line: 550, baseType: !2786, offset: 6952)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2787, line: 142, elements: !476)
!2787 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !681, file: !678, line: 554, baseType: !1755, size: 256, offset: 6976)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !681, file: !678, line: 557, baseType: !446, size: 32, offset: 7232)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !677, file: !678, line: 565, baseType: !2791, offset: 7296)
!2791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, elements: !2792)
!2792 = !{!2793}
!2793 = !DISubrange(count: -1)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !495, file: !496, line: 758, baseType: !676, size: 64, offset: 3968)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !495, file: !496, line: 761, baseType: !2796, size: 320, offset: 4032)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2705, line: 34, size: 320, elements: !2797)
!2797 = !{!2798, !2799}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2796, file: !2705, line: 35, baseType: !546, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2796, file: !2705, line: 36, baseType: !2800, size: 256, offset: 64)
!2800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 256, elements: !2433)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !495, file: !496, line: 766, baseType: !319, size: 32, offset: 4352)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !495, file: !496, line: 767, baseType: !319, size: 32, offset: 4384)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !495, file: !496, line: 768, baseType: !319, size: 32, offset: 4416)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !495, file: !496, line: 770, baseType: !319, size: 32, offset: 4448)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !495, file: !496, line: 772, baseType: !489, size: 64, offset: 4480)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !495, file: !496, line: 775, baseType: !7, size: 32, offset: 4544)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !495, file: !496, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !495, file: !496, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !495, file: !496, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !495, file: !496, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !495, file: !496, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !495, file: !496, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !495, file: !496, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !495, file: !496, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !495, file: !496, line: 831, baseType: !489, size: 64, offset: 4672)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !495, file: !496, line: 833, baseType: !2817, size: 384, offset: 4736)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !2818)
!2818 = !{!2819, !2824}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2817, file: !196, line: 26, baseType: !2820, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!506, !2823}
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, scope: !2817, file: !196, line: 27, baseType: !2825, size: 320, offset: 64)
!2825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2817, file: !196, line: 27, size: 320, elements: !2826)
!2826 = !{!2827, !2837, !2862}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2825, file: !196, line: 36, baseType: !2828, size: 320)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2825, file: !196, line: 29, size: 320, elements: !2829)
!2829 = !{!2830, !2832, !2833, !2834, !2835, !2836}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2828, file: !196, line: 30, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2828, file: !196, line: 31, baseType: !446, size: 32, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2828, file: !196, line: 32, baseType: !446, size: 32, offset: 96)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2828, file: !196, line: 33, baseType: !446, size: 32, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2828, file: !196, line: 34, baseType: !546, size: 64, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2828, file: !196, line: 35, baseType: !2831, size: 64, offset: 256)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2825, file: !196, line: 46, baseType: !2838, size: 192)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2825, file: !196, line: 38, size: 192, elements: !2839)
!2839 = !{!2840, !2841, !2842, !2861}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2838, file: !196, line: 39, baseType: !628, size: 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2838, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, scope: !2838, file: !196, line: 41, baseType: !2843, size: 64, offset: 64)
!2843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2838, file: !196, line: 41, size: 64, elements: !2844)
!2844 = !{!2845, !2853}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2843, file: !196, line: 42, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2848, line: 7, size: 128, elements: !2849)
!2848 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2849 = !{!2850, !2852}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2847, file: !2848, line: 8, baseType: !2851, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !630, line: 93, baseType: !578)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2847, file: !2848, line: 9, baseType: !578, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2843, file: !196, line: 43, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2856, line: 7, size: 64, elements: !2857)
!2856 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2857 = !{!2858, !2860}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2855, file: !2856, line: 8, baseType: !2859, size: 32)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2856, line: 5, baseType: !2489)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2855, file: !2856, line: 9, baseType: !2489, size: 32, offset: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2838, file: !196, line: 45, baseType: !546, size: 64, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2825, file: !196, line: 54, baseType: !2863, size: 256)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2825, file: !196, line: 48, size: 256, elements: !2864)
!2864 = !{!2865, !2873, !2874, !2875, !2876}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2863, file: !196, line: 49, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2868, line: 36, size: 64, elements: !2869)
!2868 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!2869 = !{!2870, !2871, !2872}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2867, file: !2868, line: 37, baseType: !319, size: 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2867, file: !2868, line: 38, baseType: !2514, size: 16, offset: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2867, file: !2868, line: 39, baseType: !2514, size: 16, offset: 48)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2863, file: !196, line: 50, baseType: !319, size: 32, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2863, file: !196, line: 51, baseType: !319, size: 32, offset: 96)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2863, file: !196, line: 52, baseType: !489, size: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2863, file: !196, line: 53, baseType: !489, size: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !495, file: !496, line: 835, baseType: !2878, size: 32, offset: 5120)
!2878 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !292, line: 22, baseType: !2879)
!2879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !630, line: 28, baseType: !319)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !495, file: !496, line: 836, baseType: !2878, size: 32, offset: 5152)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !495, file: !496, line: 840, baseType: !489, size: 64, offset: 5184)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !495, file: !496, line: 849, baseType: !494, size: 64, offset: 5248)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !495, file: !496, line: 852, baseType: !494, size: 64, offset: 5312)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !495, file: !496, line: 857, baseType: !539, size: 128, offset: 5376)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !495, file: !496, line: 858, baseType: !539, size: 128, offset: 5504)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !495, file: !496, line: 859, baseType: !494, size: 64, offset: 5632)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !495, file: !496, line: 867, baseType: !539, size: 128, offset: 5696)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !495, file: !496, line: 868, baseType: !539, size: 128, offset: 5824)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !495, file: !496, line: 871, baseType: !2425, size: 64, offset: 5952)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !495, file: !496, line: 872, baseType: !2891, size: 512, offset: 6016)
!2891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !994, size: 512, elements: !2433)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !495, file: !496, line: 873, baseType: !539, size: 128, offset: 6528)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !495, file: !496, line: 874, baseType: !539, size: 128, offset: 6656)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !495, file: !496, line: 876, baseType: !2895, size: 64, offset: 6784)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !495, file: !496, line: 879, baseType: !1062, size: 64, offset: 6848)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !495, file: !496, line: 882, baseType: !1062, size: 64, offset: 6912)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !495, file: !496, line: 884, baseType: !546, size: 64, offset: 6976)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !495, file: !496, line: 885, baseType: !546, size: 64, offset: 7040)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !495, file: !496, line: 890, baseType: !546, size: 64, offset: 7104)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !495, file: !496, line: 891, baseType: !2902, size: 128, offset: 7168)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !496, line: 242, size: 128, elements: !2903)
!2903 = !{!2904, !2905, !2906}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2902, file: !496, line: 244, baseType: !546, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2902, file: !496, line: 245, baseType: !546, size: 64, offset: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2902, file: !496, line: 246, baseType: !468, offset: 128)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !495, file: !496, line: 900, baseType: !489, size: 64, offset: 7296)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !495, file: !496, line: 901, baseType: !489, size: 64, offset: 7360)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !495, file: !496, line: 904, baseType: !546, size: 64, offset: 7424)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !495, file: !496, line: 907, baseType: !546, size: 64, offset: 7488)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !495, file: !496, line: 910, baseType: !489, size: 64, offset: 7552)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !495, file: !496, line: 911, baseType: !489, size: 64, offset: 7616)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !495, file: !496, line: 914, baseType: !2914, size: 640, offset: 7680)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2915, line: 123, size: 640, elements: !2916)
!2915 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2916 = !{!2917, !2923, !2924}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2914, file: !2915, line: 124, baseType: !2918, size: 576)
!2918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2919, size: 576, elements: !1006)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2915, line: 108, size: 192, elements: !2920)
!2920 = !{!2921, !2922}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2919, file: !2915, line: 109, baseType: !546, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2919, file: !2915, line: 110, baseType: !643, size: 128, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2914, file: !2915, line: 125, baseType: !7, size: 32, offset: 576)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2914, file: !2915, line: 126, baseType: !7, size: 32, offset: 608)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !495, file: !496, line: 917, baseType: !2926, size: 192, offset: 8320)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2915, line: 134, size: 192, elements: !2927)
!2927 = !{!2928, !2929}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2926, file: !2915, line: 135, baseType: !731, size: 128, align: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2926, file: !2915, line: 136, baseType: !7, size: 32, offset: 128)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !495, file: !496, line: 923, baseType: !2451, size: 64, offset: 8512)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !495, file: !496, line: 926, baseType: !2451, size: 64, offset: 8576)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !495, file: !496, line: 929, baseType: !2451, size: 64, offset: 8640)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !495, file: !496, line: 933, baseType: !2481, size: 64, offset: 8704)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !495, file: !496, line: 943, baseType: !2935, size: 128, offset: 8768)
!2935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 128, elements: !1643)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !495, file: !496, line: 945, baseType: !2937, size: 64, offset: 8896)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !496, line: 49, flags: DIFlagFwdDecl)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !495, file: !496, line: 956, baseType: !2940, size: 64, offset: 8960)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !496, line: 45, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !495, file: !496, line: 959, baseType: !2943, size: 64, offset: 9024)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !496, line: 959, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !495, file: !496, line: 962, baseType: !2946, size: 64, offset: 9088)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !496, line: 66, flags: DIFlagFwdDecl)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !495, file: !496, line: 966, baseType: !2949, size: 64, offset: 9152)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2951, line: 35, flags: DIFlagFwdDecl)
!2951 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !495, file: !496, line: 969, baseType: !2953, size: 64, offset: 9216)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2955, line: 82, size: 7296, elements: !2956)
!2955 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2956 = !{!2957, !2958, !2959, !2960, !2961, !2962, !2963, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2992, !3001, !3002, !3004, !3005, !3006, !3009, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3039, !3040, !3047, !3048, !3049, !3050, !3051, !3052}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2954, file: !2955, line: 83, baseType: !509, size: 32)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2954, file: !2955, line: 84, baseType: !514, size: 32, offset: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2954, file: !2955, line: 85, baseType: !319, size: 32, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2954, file: !2955, line: 86, baseType: !539, size: 128, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2954, file: !2955, line: 88, baseType: !1597, size: 128, offset: 256)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2954, file: !2955, line: 91, baseType: !494, size: 64, offset: 384)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2954, file: !2955, line: 94, baseType: !2964, size: 192, offset: 448)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2965, line: 30, size: 192, elements: !2966)
!2965 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2966 = !{!2967, !2968}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2964, file: !2965, line: 31, baseType: !539, size: 128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2964, file: !2965, line: 32, baseType: !2969, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2970, line: 25, baseType: !2971)
!2970 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2970, line: 23, size: 64, elements: !2972)
!2972 = !{!2973}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2971, file: !2970, line: 24, baseType: !668, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2954, file: !2955, line: 97, baseType: !990, size: 64, offset: 640)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2954, file: !2955, line: 100, baseType: !319, size: 32, offset: 704)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2954, file: !2955, line: 106, baseType: !319, size: 32, offset: 736)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2954, file: !2955, line: 107, baseType: !494, size: 64, offset: 768)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2954, file: !2955, line: 110, baseType: !319, size: 32, offset: 832)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2954, file: !2955, line: 111, baseType: !7, size: 32, offset: 864)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2954, file: !2955, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2954, file: !2955, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2954, file: !2955, line: 128, baseType: !319, size: 32, offset: 928)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2954, file: !2955, line: 129, baseType: !539, size: 128, offset: 960)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2954, file: !2955, line: 132, baseType: !586, size: 512, offset: 1088)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2954, file: !2955, line: 133, baseType: !594, size: 64, offset: 1600)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2954, file: !2955, line: 140, baseType: !2987, size: 256, offset: 1664)
!2987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2988, size: 256, elements: !2473)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2955, line: 38, size: 128, elements: !2989)
!2989 = !{!2990, !2991}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2988, file: !2955, line: 39, baseType: !546, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2988, file: !2955, line: 40, baseType: !546, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2954, file: !2955, line: 146, baseType: !2993, size: 192, offset: 1920)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2955, line: 66, size: 192, elements: !2994)
!2994 = !{!2995}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2993, file: !2955, line: 67, baseType: !2996, size: 192)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2955, line: 47, size: 192, elements: !2997)
!2997 = !{!2998, !2999, !3000}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2996, file: !2955, line: 48, baseType: !1117, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2996, file: !2955, line: 49, baseType: !1117, size: 64, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2996, file: !2955, line: 50, baseType: !1117, size: 64, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2954, file: !2955, line: 150, baseType: !2914, size: 640, offset: 2112)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2954, file: !2955, line: 153, baseType: !3003, size: 256, offset: 2752)
!3003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2425, size: 256, elements: !2433)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2954, file: !2955, line: 159, baseType: !2425, size: 64, offset: 3008)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2954, file: !2955, line: 162, baseType: !319, size: 32, offset: 3072)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2954, file: !2955, line: 164, baseType: !3007, size: 64, offset: 3136)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2955, line: 164, flags: DIFlagFwdDecl)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2954, file: !2955, line: 175, baseType: !3010, size: 32, offset: 3200)
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !633, line: 805, baseType: !3011)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !633, line: 798, size: 32, elements: !3012)
!3012 = !{!3013, !3014}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3011, file: !633, line: 803, baseType: !753, size: 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3011, file: !633, line: 804, baseType: !1098, offset: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2954, file: !2955, line: 176, baseType: !546, size: 64, offset: 3264)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2954, file: !2955, line: 176, baseType: !546, size: 64, offset: 3328)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2954, file: !2955, line: 176, baseType: !546, size: 64, offset: 3392)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2954, file: !2955, line: 176, baseType: !546, size: 64, offset: 3456)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2954, file: !2955, line: 177, baseType: !546, size: 64, offset: 3520)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2954, file: !2955, line: 178, baseType: !546, size: 64, offset: 3584)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2954, file: !2955, line: 179, baseType: !2902, size: 128, offset: 3648)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2954, file: !2955, line: 180, baseType: !489, size: 64, offset: 3776)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2954, file: !2955, line: 180, baseType: !489, size: 64, offset: 3840)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2954, file: !2955, line: 180, baseType: !489, size: 64, offset: 3904)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2954, file: !2955, line: 180, baseType: !489, size: 64, offset: 3968)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2954, file: !2955, line: 181, baseType: !489, size: 64, offset: 4032)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2954, file: !2955, line: 181, baseType: !489, size: 64, offset: 4096)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2954, file: !2955, line: 181, baseType: !489, size: 64, offset: 4160)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2954, file: !2955, line: 181, baseType: !489, size: 64, offset: 4224)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2954, file: !2955, line: 182, baseType: !489, size: 64, offset: 4288)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2954, file: !2955, line: 182, baseType: !489, size: 64, offset: 4352)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2954, file: !2955, line: 182, baseType: !489, size: 64, offset: 4416)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2954, file: !2955, line: 182, baseType: !489, size: 64, offset: 4480)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2954, file: !2955, line: 183, baseType: !489, size: 64, offset: 4544)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2954, file: !2955, line: 183, baseType: !489, size: 64, offset: 4608)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2954, file: !2955, line: 184, baseType: !3037, offset: 4672)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3038, line: 12, elements: !476)
!3038 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2954, file: !2955, line: 192, baseType: !548, size: 64, offset: 4672)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2954, file: !2955, line: 203, baseType: !3041, size: 2048, offset: 4736)
!3041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3042, size: 2048, elements: !1643)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3043, line: 43, size: 128, elements: !3044)
!3043 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3044 = !{!3045, !3046}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3042, file: !3043, line: 44, baseType: !932, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3042, file: !3043, line: 45, baseType: !932, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2954, file: !2955, line: 220, baseType: !841, size: 8, offset: 6784)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2954, file: !2955, line: 221, baseType: !2514, size: 16, offset: 6800)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2954, file: !2955, line: 222, baseType: !2514, size: 16, offset: 6816)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2954, file: !2955, line: 224, baseType: !676, size: 64, offset: 6848)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2954, file: !2955, line: 227, baseType: !1365, size: 192, offset: 6912)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2954, file: !2955, line: 233, baseType: !1365, size: 192, offset: 7104)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !495, file: !496, line: 970, baseType: !3054, size: 64, offset: 9280)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2955, line: 20, size: 16576, elements: !3056)
!3056 = !{!3057, !3058, !3059, !3060}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3055, file: !2955, line: 21, baseType: !1098)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3055, file: !2955, line: 22, baseType: !509, size: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3055, file: !2955, line: 23, baseType: !1597, size: 128, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3055, file: !2955, line: 24, baseType: !3061, size: 16384, offset: 192)
!3061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3062, size: 16384, elements: !375)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2965, line: 49, size: 256, elements: !3063)
!3063 = !{!3064}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3062, file: !2965, line: 50, baseType: !3065, size: 256)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2965, line: 35, size: 256, elements: !3066)
!3066 = !{!3067, !3074, !3075, !3081}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3065, file: !2965, line: 37, baseType: !3068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3069, line: 19, baseType: !3070)
!3069 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3069, line: 18, baseType: !3072)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{null, !319}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3065, file: !2965, line: 38, baseType: !489, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3065, file: !2965, line: 44, baseType: !3076, size: 64, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3069, line: 22, baseType: !3077)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3069, line: 21, baseType: !3079)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{null}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3065, file: !2965, line: 46, baseType: !2969, size: 64, offset: 192)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !495, file: !496, line: 971, baseType: !2969, size: 64, offset: 9344)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !495, file: !496, line: 972, baseType: !2969, size: 64, offset: 9408)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !495, file: !496, line: 974, baseType: !2969, size: 64, offset: 9472)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !495, file: !496, line: 975, baseType: !2964, size: 192, offset: 9536)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !495, file: !496, line: 976, baseType: !489, size: 64, offset: 9728)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !495, file: !496, line: 977, baseType: !930, size: 64, offset: 9792)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !495, file: !496, line: 978, baseType: !7, size: 32, offset: 9856)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !495, file: !496, line: 980, baseType: !734, size: 64, offset: 9920)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !495, file: !496, line: 989, baseType: !3091, size: 128, offset: 9984)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3092, line: 35, size: 128, elements: !3093)
!3092 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3093 = !{!3094, !3095, !3096}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3091, file: !3092, line: 36, baseType: !319, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3091, file: !3092, line: 37, baseType: !514, size: 32, offset: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3091, file: !3092, line: 38, baseType: !3097, size: 64, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3092, line: 23, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !495, file: !496, line: 992, baseType: !546, size: 64, offset: 10112)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !495, file: !496, line: 993, baseType: !546, size: 64, offset: 10176)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !495, file: !496, line: 996, baseType: !1098, offset: 10240)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !495, file: !496, line: 999, baseType: !468, offset: 10240)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !495, file: !496, line: 1001, baseType: !3104, size: 64, offset: 10240)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !496, line: 636, size: 64, elements: !3105)
!3105 = !{!3106}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3104, file: !496, line: 637, baseType: !3107, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !495, file: !496, line: 1005, baseType: !478, size: 128, offset: 10304)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !495, file: !496, line: 1007, baseType: !494, size: 64, offset: 10432)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !495, file: !496, line: 1009, baseType: !3111, size: 64, offset: 10496)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !496, line: 1009, flags: DIFlagFwdDecl)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !495, file: !496, line: 1043, baseType: !293, size: 64, offset: 10560)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !495, file: !496, line: 1046, baseType: !3115, size: 64, offset: 10624)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !496, line: 41, flags: DIFlagFwdDecl)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !495, file: !496, line: 1050, baseType: !3118, size: 64, offset: 10688)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !496, line: 42, flags: DIFlagFwdDecl)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !495, file: !496, line: 1054, baseType: !3121, size: 64, offset: 10752)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !496, line: 55, flags: DIFlagFwdDecl)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !495, file: !496, line: 1056, baseType: !1544, size: 64, offset: 10816)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !495, file: !496, line: 1058, baseType: !3125, size: 64, offset: 10880)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3127, line: 99, size: 704, elements: !3128)
!3127 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3128 = !{!3129, !3130, !3131, !3132, !3133, !3134, !3135, !3154, !3155}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3126, file: !3127, line: 100, baseType: !1115, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3126, file: !3127, line: 101, baseType: !514, size: 32, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3126, file: !3127, line: 102, baseType: !514, size: 32, offset: 96)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3126, file: !3127, line: 105, baseType: !1098, offset: 128)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3126, file: !3127, line: 107, baseType: !336, size: 16, offset: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3126, file: !3127, line: 109, baseType: !1094, size: 128, offset: 192)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3126, file: !3127, line: 110, baseType: !3136, size: 64, offset: 320)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3127, line: 73, size: 448, elements: !3138)
!3138 = !{!3139, !3142, !3143, !3148, !3153}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3137, file: !3127, line: 74, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3127, line: 74, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3137, file: !3127, line: 75, baseType: !3125, size: 64, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, scope: !3137, file: !3127, line: 83, baseType: !3144, size: 128, offset: 128)
!3144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3137, file: !3127, line: 83, size: 128, elements: !3145)
!3145 = !{!3146, !3147}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3144, file: !3127, line: 84, baseType: !539, size: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3144, file: !3127, line: 85, baseType: !1275, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, scope: !3137, file: !3127, line: 87, baseType: !3149, size: 128, offset: 256)
!3149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3137, file: !3127, line: 87, size: 128, elements: !3150)
!3150 = !{!3151, !3152}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3149, file: !3127, line: 88, baseType: !994, size: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3149, file: !3127, line: 89, baseType: !731, size: 128, align: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3137, file: !3127, line: 92, baseType: !7, size: 32, offset: 384)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3126, file: !3127, line: 111, baseType: !990, size: 64, offset: 384)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3126, file: !3127, line: 113, baseType: !1755, size: 256, offset: 448)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !495, file: !496, line: 1061, baseType: !3157, size: 64, offset: 10944)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !496, line: 43, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !495, file: !496, line: 1064, baseType: !489, size: 64, offset: 11008)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !495, file: !496, line: 1065, baseType: !3161, size: 64, offset: 11072)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2965, line: 14, baseType: !3163)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2965, line: 12, size: 384, elements: !3164)
!3164 = !{!3165}
!3165 = !DIDerivedType(tag: DW_TAG_member, scope: !3163, file: !2965, line: 13, baseType: !3166, size: 384)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3163, file: !2965, line: 13, size: 384, elements: !3167)
!3167 = !{!3168, !3169, !3170, !3171}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3166, file: !2965, line: 13, baseType: !319, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3166, file: !2965, line: 13, baseType: !319, size: 32, offset: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3166, file: !2965, line: 13, baseType: !319, size: 32, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3166, file: !2965, line: 13, baseType: !3172, size: 256, offset: 128)
!3172 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3173, line: 32, size: 256, elements: !3174)
!3173 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3174 = !{!3175, !3180, !3193, !3199, !3208, !3228, !3233}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3172, file: !3173, line: 37, baseType: !3176, size: 64)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3172, file: !3173, line: 34, size: 64, elements: !3177)
!3177 = !{!3178, !3179}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3176, file: !3173, line: 35, baseType: !2879, size: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3176, file: !3173, line: 36, baseType: !795, size: 32, offset: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3172, file: !3173, line: 45, baseType: !3181, size: 192)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3172, file: !3173, line: 40, size: 192, elements: !3182)
!3182 = !{!3183, !3185, !3186, !3192}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3181, file: !3173, line: 41, baseType: !3184, size: 32)
!3184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !630, line: 95, baseType: !319)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3181, file: !3173, line: 42, baseType: !319, size: 32, offset: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3181, file: !3173, line: 43, baseType: !3187, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3173, line: 11, baseType: !3188)
!3188 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3173, line: 8, size: 64, elements: !3189)
!3189 = !{!3190, !3191}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3188, file: !3173, line: 9, baseType: !319, size: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3188, file: !3173, line: 10, baseType: !293, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3181, file: !3173, line: 44, baseType: !319, size: 32, offset: 128)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3172, file: !3173, line: 52, baseType: !3194, size: 128)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3172, file: !3173, line: 48, size: 128, elements: !3195)
!3195 = !{!3196, !3197, !3198}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3194, file: !3173, line: 49, baseType: !2879, size: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3194, file: !3173, line: 50, baseType: !795, size: 32, offset: 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3194, file: !3173, line: 51, baseType: !3187, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3172, file: !3173, line: 61, baseType: !3200, size: 256)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3172, file: !3173, line: 55, size: 256, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3207}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3200, file: !3173, line: 56, baseType: !2879, size: 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3200, file: !3173, line: 57, baseType: !795, size: 32, offset: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3200, file: !3173, line: 58, baseType: !319, size: 32, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3200, file: !3173, line: 59, baseType: !3206, size: 64, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !630, line: 94, baseType: !929)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3200, file: !3173, line: 60, baseType: !3206, size: 64, offset: 192)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3172, file: !3173, line: 95, baseType: !3209, size: 256)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3172, file: !3173, line: 64, size: 256, elements: !3210)
!3210 = !{!3211, !3212}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3209, file: !3173, line: 65, baseType: !293, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, scope: !3209, file: !3173, line: 77, baseType: !3213, size: 192, offset: 64)
!3213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3209, file: !3173, line: 77, size: 192, elements: !3214)
!3214 = !{!3215, !3216, !3223}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3213, file: !3173, line: 82, baseType: !2514, size: 16)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3213, file: !3173, line: 88, baseType: !3217, size: 192)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3213, file: !3173, line: 84, size: 192, elements: !3218)
!3218 = !{!3219, !3221, !3222}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3217, file: !3173, line: 85, baseType: !3220, size: 64)
!3220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 64, elements: !624)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3217, file: !3173, line: 86, baseType: !293, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3217, file: !3173, line: 87, baseType: !293, size: 64, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3213, file: !3173, line: 93, baseType: !3224, size: 96)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3213, file: !3173, line: 90, size: 96, elements: !3225)
!3225 = !{!3226, !3227}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3224, file: !3173, line: 91, baseType: !3220, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3224, file: !3173, line: 92, baseType: !447, size: 32, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3172, file: !3173, line: 101, baseType: !3229, size: 128)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3172, file: !3173, line: 98, size: 128, elements: !3230)
!3230 = !{!3231, !3232}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3229, file: !3173, line: 99, baseType: !506, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3229, file: !3173, line: 100, baseType: !319, size: 32, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3172, file: !3173, line: 108, baseType: !3234, size: 128)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3172, file: !3173, line: 104, size: 128, elements: !3235)
!3235 = !{!3236, !3237, !3238}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3234, file: !3173, line: 105, baseType: !293, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3234, file: !3173, line: 106, baseType: !319, size: 32, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3234, file: !3173, line: 107, baseType: !7, size: 32, offset: 96)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !495, file: !496, line: 1067, baseType: !3037, offset: 11136)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !495, file: !496, line: 1099, baseType: !3241, size: 64, offset: 11136)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !496, line: 56, flags: DIFlagFwdDecl)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !495, file: !496, line: 1103, baseType: !539, size: 128, offset: 11200)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !495, file: !496, line: 1104, baseType: !3245, size: 64, offset: 11328)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !496, line: 46, flags: DIFlagFwdDecl)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !495, file: !496, line: 1105, baseType: !1365, size: 192, offset: 11392)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !495, file: !496, line: 1106, baseType: !7, size: 32, offset: 11584)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !495, file: !496, line: 1109, baseType: !3250, size: 128, offset: 11648)
!3250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3251, size: 128, elements: !2473)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !496, line: 51, flags: DIFlagFwdDecl)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !495, file: !496, line: 1110, baseType: !1365, size: 192, offset: 11776)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !495, file: !496, line: 1111, baseType: !539, size: 128, offset: 11968)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !495, file: !496, line: 1173, baseType: !3256, size: 64, offset: 12096)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3258, line: 62, size: 256, align: 256, elements: !3259)
!3258 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3259 = !{!3260, !3261, !3262, !3267}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3257, file: !3258, line: 75, baseType: !447, size: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3257, file: !3258, line: 90, baseType: !447, size: 32, offset: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3257, file: !3258, line: 124, baseType: !3263, size: 64, offset: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3257, file: !3258, line: 109, size: 64, elements: !3264)
!3264 = !{!3265, !3266}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3263, file: !3258, line: 110, baseType: !547, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3263, file: !3258, line: 112, baseType: !547, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3257, file: !3258, line: 144, baseType: !447, size: 32, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !495, file: !496, line: 1174, baseType: !446, size: 32, offset: 12160)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !495, file: !496, line: 1179, baseType: !489, size: 64, offset: 12224)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !495, file: !496, line: 1182, baseType: !3271, size: 128, offset: 12288)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2705, line: 76, size: 128, elements: !3272)
!3272 = !{!3273, !3278, !3279}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3271, file: !2705, line: 85, baseType: !3274, size: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3275, line: 7, size: 64, elements: !3276)
!3275 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3276 = !{!3277}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3274, file: !3275, line: 12, baseType: !665, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3271, file: !2705, line: 88, baseType: !841, size: 8, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3271, file: !2705, line: 95, baseType: !841, size: 8, offset: 72)
!3280 = !DIDerivedType(tag: DW_TAG_member, scope: !495, file: !496, line: 1184, baseType: !3281, size: 128, offset: 12416)
!3281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !495, file: !496, line: 1184, size: 128, elements: !3282)
!3282 = !{!3283, !3284}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3281, file: !496, line: 1185, baseType: !509, size: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3281, file: !496, line: 1186, baseType: !731, size: 128, align: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !495, file: !496, line: 1190, baseType: !2021, size: 64, offset: 12544)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !495, file: !496, line: 1192, baseType: !3287, size: 128, offset: 12608)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2705, line: 64, size: 128, elements: !3288)
!3288 = !{!3289, !3290, !3291}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3287, file: !2705, line: 65, baseType: !1077, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3287, file: !2705, line: 67, baseType: !447, size: 32, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3287, file: !2705, line: 68, baseType: !447, size: 32, offset: 96)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !495, file: !496, line: 1206, baseType: !319, size: 32, offset: 12736)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !495, file: !496, line: 1207, baseType: !319, size: 32, offset: 12768)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !495, file: !496, line: 1209, baseType: !489, size: 64, offset: 12800)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !495, file: !496, line: 1219, baseType: !546, size: 64, offset: 12864)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !495, file: !496, line: 1220, baseType: !546, size: 64, offset: 12928)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !495, file: !496, line: 1317, baseType: !319, size: 32, offset: 12992)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !495, file: !496, line: 1319, baseType: !494, size: 64, offset: 13056)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !495, file: !496, line: 1322, baseType: !3300, size: 64, offset: 13120)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3302, line: 56, size: 512, elements: !3303)
!3302 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3303 = !{!3304, !3305, !3306, !3307, !3308, !3309, !3310, !3312}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3301, file: !3302, line: 57, baseType: !3300, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3301, file: !3302, line: 58, baseType: !293, size: 64, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3301, file: !3302, line: 59, baseType: !489, size: 64, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3301, file: !3302, line: 60, baseType: !489, size: 64, offset: 192)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3301, file: !3302, line: 61, baseType: !1162, size: 64, offset: 256)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3301, file: !3302, line: 62, baseType: !7, size: 32, offset: 320)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3301, file: !3302, line: 63, baseType: !3311, size: 64, offset: 384)
!3311 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !292, line: 153, baseType: !546)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3301, file: !3302, line: 64, baseType: !2201, size: 64, offset: 448)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !495, file: !496, line: 1326, baseType: !509, size: 32, offset: 13184)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !495, file: !496, line: 1342, baseType: !293, size: 64, offset: 13248)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !495, file: !496, line: 1343, baseType: !547, size: 64, offset: 13312)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !495, file: !496, line: 1344, baseType: !546, size: 64, offset: 13376)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !495, file: !496, line: 1345, baseType: !547, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !495, file: !496, line: 1346, baseType: !547, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !495, file: !496, line: 1347, baseType: !547, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !495, file: !496, line: 1348, baseType: !731, size: 128, align: 64, offset: 13504)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !495, file: !496, line: 1358, baseType: !3322, size: 34816, offset: 13824)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3323, line: 485, size: 34816, elements: !3324)
!3323 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3324 = !{!3325, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3354, !3355, !3356, !3357, !3358, !3359, !3362, !3363, !3364}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3322, file: !3323, line: 487, baseType: !3326, size: 192)
!3326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3327, size: 192, elements: !1006)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3328, line: 16, size: 64, elements: !3329)
!3328 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3329 = !{!3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3327, file: !3328, line: 17, baseType: !332, size: 16)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3327, file: !3328, line: 18, baseType: !332, size: 16, offset: 16)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3327, file: !3328, line: 19, baseType: !332, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3327, file: !3328, line: 19, baseType: !332, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3327, file: !3328, line: 19, baseType: !332, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3327, file: !3328, line: 19, baseType: !332, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3327, file: !3328, line: 19, baseType: !332, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3327, file: !3328, line: 20, baseType: !332, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3327, file: !3328, line: 20, baseType: !332, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3327, file: !3328, line: 20, baseType: !332, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3327, file: !3328, line: 20, baseType: !332, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3327, file: !3328, line: 20, baseType: !332, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3327, file: !3328, line: 20, baseType: !332, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3322, file: !3323, line: 491, baseType: !489, size: 64, offset: 192)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3322, file: !3323, line: 495, baseType: !336, size: 16, offset: 256)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3322, file: !3323, line: 496, baseType: !336, size: 16, offset: 272)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3322, file: !3323, line: 497, baseType: !336, size: 16, offset: 288)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3322, file: !3323, line: 498, baseType: !336, size: 16, offset: 304)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3322, file: !3323, line: 502, baseType: !489, size: 64, offset: 320)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3322, file: !3323, line: 503, baseType: !489, size: 64, offset: 384)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3322, file: !3323, line: 514, baseType: !3351, size: 256, offset: 448)
!3351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3352, size: 256, elements: !2433)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3323, line: 483, flags: DIFlagFwdDecl)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3322, file: !3323, line: 516, baseType: !489, size: 64, offset: 704)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3322, file: !3323, line: 518, baseType: !489, size: 64, offset: 768)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3322, file: !3323, line: 520, baseType: !489, size: 64, offset: 832)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3322, file: !3323, line: 521, baseType: !489, size: 64, offset: 896)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3322, file: !3323, line: 522, baseType: !489, size: 64, offset: 960)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3322, file: !3323, line: 528, baseType: !3360, size: 64, offset: 1024)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3323, line: 10, flags: DIFlagFwdDecl)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3322, file: !3323, line: 535, baseType: !489, size: 64, offset: 1088)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3322, file: !3323, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3322, file: !3323, line: 540, baseType: !3365, size: 33280, offset: 1536)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3366, line: 317, size: 33280, elements: !3367)
!3366 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3367 = !{!3368, !3369, !3370}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3365, file: !3366, line: 330, baseType: !7, size: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3365, file: !3366, line: 337, baseType: !489, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3365, file: !3366, line: 348, baseType: !3371, size: 32768, offset: 512)
!3371 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3366, line: 304, size: 32768, elements: !3372)
!3372 = !{!3373, !3388, !3425, !3475, !3488}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3371, file: !3366, line: 305, baseType: !3374, size: 896)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3366, line: 12, size: 896, elements: !3375)
!3375 = !{!3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3387}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3374, file: !3366, line: 13, baseType: !446, size: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3374, file: !3366, line: 14, baseType: !446, size: 32, offset: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3374, file: !3366, line: 15, baseType: !446, size: 32, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3374, file: !3366, line: 16, baseType: !446, size: 32, offset: 96)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3374, file: !3366, line: 17, baseType: !446, size: 32, offset: 128)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3374, file: !3366, line: 18, baseType: !446, size: 32, offset: 160)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3374, file: !3366, line: 19, baseType: !446, size: 32, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3374, file: !3366, line: 22, baseType: !3384, size: 640, offset: 224)
!3384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 640, elements: !3385)
!3385 = !{!3386}
!3386 = !DISubrange(count: 20)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3374, file: !3366, line: 25, baseType: !446, size: 32, offset: 864)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3371, file: !3366, line: 306, baseType: !3389, size: 4096, align: 128)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3366, line: 34, size: 4096, align: 128, elements: !3390)
!3390 = !{!3391, !3392, !3393, !3394, !3395, !3410, !3411, !3412, !3414, !3416, !3420}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3389, file: !3366, line: 35, baseType: !332, size: 16)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3389, file: !3366, line: 36, baseType: !332, size: 16, offset: 16)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3389, file: !3366, line: 37, baseType: !332, size: 16, offset: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3389, file: !3366, line: 38, baseType: !332, size: 16, offset: 48)
!3395 = !DIDerivedType(tag: DW_TAG_member, scope: !3389, file: !3366, line: 39, baseType: !3396, size: 128, offset: 64)
!3396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3389, file: !3366, line: 39, size: 128, elements: !3397)
!3397 = !{!3398, !3403}
!3398 = !DIDerivedType(tag: DW_TAG_member, scope: !3396, file: !3366, line: 40, baseType: !3399, size: 128)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3396, file: !3366, line: 40, size: 128, elements: !3400)
!3400 = !{!3401, !3402}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3399, file: !3366, line: 41, baseType: !546, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3399, file: !3366, line: 42, baseType: !546, size: 64, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, scope: !3396, file: !3366, line: 44, baseType: !3404, size: 128)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3396, file: !3366, line: 44, size: 128, elements: !3405)
!3405 = !{!3406, !3407, !3408, !3409}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3404, file: !3366, line: 45, baseType: !446, size: 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3404, file: !3366, line: 46, baseType: !446, size: 32, offset: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3404, file: !3366, line: 47, baseType: !446, size: 32, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3404, file: !3366, line: 48, baseType: !446, size: 32, offset: 96)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3389, file: !3366, line: 51, baseType: !446, size: 32, offset: 192)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3389, file: !3366, line: 52, baseType: !446, size: 32, offset: 224)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3389, file: !3366, line: 55, baseType: !3413, size: 1024, offset: 256)
!3413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 1024, elements: !1634)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3389, file: !3366, line: 58, baseType: !3415, size: 2048, offset: 1280)
!3415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 2048, elements: !375)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3389, file: !3366, line: 60, baseType: !3417, size: 384, offset: 3328)
!3417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 384, elements: !3418)
!3418 = !{!3419}
!3419 = !DISubrange(count: 12)
!3420 = !DIDerivedType(tag: DW_TAG_member, scope: !3389, file: !3366, line: 62, baseType: !3421, size: 384, offset: 3712)
!3421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3389, file: !3366, line: 62, size: 384, elements: !3422)
!3422 = !{!3423, !3424}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3421, file: !3366, line: 63, baseType: !3417, size: 384)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3421, file: !3366, line: 64, baseType: !3417, size: 384)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3371, file: !3366, line: 307, baseType: !3426, size: 1088)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3366, line: 79, size: 1088, elements: !3427)
!3427 = !{!3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3474}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3426, file: !3366, line: 80, baseType: !446, size: 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3426, file: !3366, line: 81, baseType: !446, size: 32, offset: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3426, file: !3366, line: 82, baseType: !446, size: 32, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3426, file: !3366, line: 83, baseType: !446, size: 32, offset: 96)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3426, file: !3366, line: 84, baseType: !446, size: 32, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3426, file: !3366, line: 85, baseType: !446, size: 32, offset: 160)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3426, file: !3366, line: 86, baseType: !446, size: 32, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3426, file: !3366, line: 88, baseType: !3384, size: 640, offset: 224)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3426, file: !3366, line: 89, baseType: !342, size: 8, offset: 864)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3426, file: !3366, line: 90, baseType: !342, size: 8, offset: 872)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3426, file: !3366, line: 91, baseType: !342, size: 8, offset: 880)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3426, file: !3366, line: 92, baseType: !342, size: 8, offset: 888)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3426, file: !3366, line: 93, baseType: !342, size: 8, offset: 896)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3426, file: !3366, line: 94, baseType: !342, size: 8, offset: 904)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3426, file: !3366, line: 95, baseType: !3443, size: 64, offset: 960)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3445, line: 11, size: 128, elements: !3446)
!3445 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3446 = !{!3447, !3448}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3444, file: !3445, line: 12, baseType: !506, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3444, file: !3445, line: 13, baseType: !3449, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3451, line: 56, size: 1344, elements: !3452)
!3451 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3452 = !{!3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3450, file: !3451, line: 61, baseType: !489, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3450, file: !3451, line: 62, baseType: !489, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3450, file: !3451, line: 63, baseType: !489, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3450, file: !3451, line: 64, baseType: !489, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3450, file: !3451, line: 65, baseType: !489, size: 64, offset: 256)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3450, file: !3451, line: 66, baseType: !489, size: 64, offset: 320)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3450, file: !3451, line: 68, baseType: !489, size: 64, offset: 384)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3450, file: !3451, line: 69, baseType: !489, size: 64, offset: 448)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3450, file: !3451, line: 70, baseType: !489, size: 64, offset: 512)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3450, file: !3451, line: 71, baseType: !489, size: 64, offset: 576)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3450, file: !3451, line: 72, baseType: !489, size: 64, offset: 640)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3450, file: !3451, line: 73, baseType: !489, size: 64, offset: 704)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3450, file: !3451, line: 74, baseType: !489, size: 64, offset: 768)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3450, file: !3451, line: 75, baseType: !489, size: 64, offset: 832)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3450, file: !3451, line: 76, baseType: !489, size: 64, offset: 896)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3450, file: !3451, line: 81, baseType: !489, size: 64, offset: 960)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3450, file: !3451, line: 83, baseType: !489, size: 64, offset: 1024)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3450, file: !3451, line: 84, baseType: !489, size: 64, offset: 1088)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3450, file: !3451, line: 85, baseType: !489, size: 64, offset: 1152)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3450, file: !3451, line: 86, baseType: !489, size: 64, offset: 1216)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3450, file: !3451, line: 87, baseType: !489, size: 64, offset: 1280)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3426, file: !3366, line: 96, baseType: !446, size: 32, offset: 1024)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3371, file: !3366, line: 308, baseType: !3476, size: 4608, align: 512)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3366, line: 289, size: 4608, align: 512, elements: !3477)
!3477 = !{!3478, !3479, !3486}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3476, file: !3366, line: 290, baseType: !3389, size: 4096, align: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3476, file: !3366, line: 291, baseType: !3480, size: 512, offset: 4096)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3366, line: 268, size: 512, elements: !3481)
!3481 = !{!3482, !3483, !3484}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3480, file: !3366, line: 269, baseType: !546, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3480, file: !3366, line: 270, baseType: !546, size: 64, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3480, file: !3366, line: 271, baseType: !3485, size: 384, offset: 128)
!3485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 384, elements: !2532)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3476, file: !3366, line: 292, baseType: !3487, offset: 4608)
!3487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, elements: !2628)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3371, file: !3366, line: 309, baseType: !3489, size: 32768)
!3489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 32768, elements: !3490)
!3490 = !{!3491}
!3491 = !DISubrange(count: 4096)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !404, file: !405, line: 704, baseType: !464, size: 192, offset: 512)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !404, file: !405, line: 706, baseType: !319, size: 32, offset: 704)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !404, file: !405, line: 707, baseType: !319, size: 32, offset: 736)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !404, file: !405, line: 708, baseType: !3496, size: 5568, offset: 768)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !3497)
!3497 = !{!3498, !3499, !3501, !3504, !3505, !3556, !3647, !3648, !3649, !3650, !3651, !3660, !3765, !3778, !3973, !3974, !3978, !3980, !3981, !3982, !3986, !3992, !3993, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4034, !4035, !4036, !4039, !4042, !4043, !4044, !4045}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3496, file: !237, line: 462, baseType: !2071, size: 512)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3496, file: !237, line: 463, baseType: !3500, size: 64, offset: 512)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3496, file: !237, line: 465, baseType: !3502, size: 64, offset: 576)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3496, file: !237, line: 467, baseType: !302, size: 64, offset: 640)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3496, file: !237, line: 468, baseType: !3506, size: 64, offset: 704)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3508)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3509)
!3509 = !{!3510, !3511, !3512, !3516, !3521, !3525}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3508, file: !237, line: 88, baseType: !302, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3508, file: !237, line: 89, baseType: !2148, size: 64, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3508, file: !237, line: 90, baseType: !3513, size: 64, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!319, !3500, !2105}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3508, file: !237, line: 91, baseType: !3517, size: 64, offset: 192)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!325, !3500, !3520, !2218, !2219}
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3508, file: !237, line: 93, baseType: !3522, size: 64, offset: 256)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{null, !3500}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3508, file: !237, line: 95, baseType: !3526, size: 64, offset: 320)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3528)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3529)
!3529 = !{!3530, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3528, file: !244, line: 279, baseType: !3531, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!319, !3500}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3528, file: !244, line: 280, baseType: !3522, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3528, file: !244, line: 281, baseType: !3531, size: 64, offset: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3528, file: !244, line: 282, baseType: !3531, size: 64, offset: 192)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3528, file: !244, line: 283, baseType: !3531, size: 64, offset: 256)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3528, file: !244, line: 284, baseType: !3531, size: 64, offset: 320)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3528, file: !244, line: 285, baseType: !3531, size: 64, offset: 384)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3528, file: !244, line: 286, baseType: !3531, size: 64, offset: 448)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3528, file: !244, line: 287, baseType: !3531, size: 64, offset: 512)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3528, file: !244, line: 288, baseType: !3531, size: 64, offset: 576)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3528, file: !244, line: 289, baseType: !3531, size: 64, offset: 640)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3528, file: !244, line: 290, baseType: !3531, size: 64, offset: 704)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3528, file: !244, line: 291, baseType: !3531, size: 64, offset: 768)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3528, file: !244, line: 292, baseType: !3531, size: 64, offset: 832)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3528, file: !244, line: 293, baseType: !3531, size: 64, offset: 896)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3528, file: !244, line: 294, baseType: !3531, size: 64, offset: 960)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3528, file: !244, line: 295, baseType: !3531, size: 64, offset: 1024)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3528, file: !244, line: 296, baseType: !3531, size: 64, offset: 1088)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3528, file: !244, line: 297, baseType: !3531, size: 64, offset: 1152)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3528, file: !244, line: 298, baseType: !3531, size: 64, offset: 1216)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3528, file: !244, line: 299, baseType: !3531, size: 64, offset: 1280)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3528, file: !244, line: 300, baseType: !3531, size: 64, offset: 1344)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3528, file: !244, line: 301, baseType: !3531, size: 64, offset: 1408)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3496, file: !237, line: 470, baseType: !3557, size: 64, offset: 768)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3559, line: 82, size: 1408, elements: !3560)
!3559 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3560 = !{!3561, !3562, !3563, !3564, !3565, !3566, !3567, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3642, !3645, !3646}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3558, file: !3559, line: 83, baseType: !302, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3558, file: !3559, line: 84, baseType: !302, size: 64, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3558, file: !3559, line: 85, baseType: !3500, size: 64, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3558, file: !3559, line: 86, baseType: !2148, size: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3558, file: !3559, line: 87, baseType: !2148, size: 64, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3558, file: !3559, line: 88, baseType: !2148, size: 64, offset: 320)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3558, file: !3559, line: 90, baseType: !3568, size: 64, offset: 384)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!319, !3500, !3571}
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3573)
!3573 = !{!3574, !3575, !3576, !3577, !3578, !3579, !3580, !3593, !3606, !3607, !3608, !3609, !3610, !3618, !3619, !3620, !3621, !3622, !3623}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3572, file: !231, line: 96, baseType: !302, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3572, file: !231, line: 97, baseType: !3557, size: 64, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3572, file: !231, line: 99, baseType: !306, size: 64, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3572, file: !231, line: 100, baseType: !302, size: 64, offset: 192)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3572, file: !231, line: 102, baseType: !841, size: 8, offset: 256)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3572, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3572, file: !231, line: 105, baseType: !3581, size: 64, offset: 320)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3583)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3584, line: 262, size: 1600, elements: !3585)
!3584 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3585 = !{!3586, !3587, !3588, !3592}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3583, file: !3584, line: 263, baseType: !1633, size: 256)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3583, file: !3584, line: 264, baseType: !1633, size: 256, offset: 256)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3583, file: !3584, line: 265, baseType: !3589, size: 1024, offset: 512)
!3589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 1024, elements: !3590)
!3590 = !{!3591}
!3591 = !DISubrange(count: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3583, file: !3584, line: 266, baseType: !2201, size: 64, offset: 1536)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3572, file: !231, line: 106, baseType: !3594, size: 64, offset: 384)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3596)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3584, line: 210, size: 256, elements: !3597)
!3597 = !{!3598, !3602, !3604, !3605}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3596, file: !3584, line: 211, baseType: !3599, size: 72)
!3599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 72, elements: !3600)
!3600 = !{!3601}
!3601 = !DISubrange(count: 9)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3596, file: !3584, line: 212, baseType: !3603, size: 64, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3584, line: 14, baseType: !489)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3596, file: !3584, line: 213, baseType: !447, size: 32, offset: 192)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3596, file: !3584, line: 214, baseType: !447, size: 32, offset: 224)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3572, file: !231, line: 108, baseType: !3531, size: 64, offset: 448)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3572, file: !231, line: 109, baseType: !3522, size: 64, offset: 512)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3572, file: !231, line: 110, baseType: !3531, size: 64, offset: 576)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3572, file: !231, line: 111, baseType: !3522, size: 64, offset: 640)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3572, file: !231, line: 112, baseType: !3611, size: 64, offset: 704)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!319, !3500, !3614}
!3614 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3615)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3616)
!3616 = !{!3617}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3615, file: !244, line: 51, baseType: !319, size: 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3572, file: !231, line: 113, baseType: !3531, size: 64, offset: 768)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3572, file: !231, line: 114, baseType: !2148, size: 64, offset: 832)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3572, file: !231, line: 115, baseType: !2148, size: 64, offset: 896)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3572, file: !231, line: 117, baseType: !3526, size: 64, offset: 960)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3572, file: !231, line: 118, baseType: !3522, size: 64, offset: 1024)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3572, file: !231, line: 120, baseType: !3624, size: 64, offset: 1088)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3558, file: !3559, line: 91, baseType: !3513, size: 64, offset: 448)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3558, file: !3559, line: 92, baseType: !3531, size: 64, offset: 512)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3558, file: !3559, line: 93, baseType: !3522, size: 64, offset: 576)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3558, file: !3559, line: 94, baseType: !3531, size: 64, offset: 640)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3558, file: !3559, line: 95, baseType: !3522, size: 64, offset: 704)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3558, file: !3559, line: 97, baseType: !3531, size: 64, offset: 768)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3558, file: !3559, line: 98, baseType: !3531, size: 64, offset: 832)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3558, file: !3559, line: 100, baseType: !3611, size: 64, offset: 896)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3558, file: !3559, line: 101, baseType: !3531, size: 64, offset: 960)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3558, file: !3559, line: 103, baseType: !3531, size: 64, offset: 1024)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3558, file: !3559, line: 105, baseType: !3531, size: 64, offset: 1088)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3558, file: !3559, line: 107, baseType: !3526, size: 64, offset: 1152)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3558, file: !3559, line: 109, baseType: !3639, size: 64, offset: 1216)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3641)
!3641 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3559, line: 109, flags: DIFlagFwdDecl)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3558, file: !3559, line: 111, baseType: !3643, size: 64, offset: 1280)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3559, line: 111, flags: DIFlagFwdDecl)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3558, file: !3559, line: 112, baseType: !1000, offset: 1344)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3558, file: !3559, line: 114, baseType: !841, size: 8, offset: 1344)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3496, file: !237, line: 471, baseType: !3571, size: 64, offset: 832)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3496, file: !237, line: 473, baseType: !293, size: 64, offset: 896)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3496, file: !237, line: 475, baseType: !293, size: 64, offset: 960)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3496, file: !237, line: 480, baseType: !1365, size: 192, offset: 1024)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3496, file: !237, line: 484, baseType: !3652, size: 576, offset: 1216)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3653)
!3653 = !{!3654, !3655, !3656, !3657, !3658, !3659}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3652, file: !237, line: 362, baseType: !539, size: 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3652, file: !237, line: 363, baseType: !539, size: 128, offset: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3652, file: !237, line: 364, baseType: !539, size: 128, offset: 256)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3652, file: !237, line: 365, baseType: !539, size: 128, offset: 384)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3652, file: !237, line: 366, baseType: !841, size: 8, offset: 512)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3652, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3496, file: !237, line: 485, baseType: !3661, size: 2304, offset: 1792)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3662)
!3662 = !{!3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3758, !3762}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3661, file: !244, line: 566, baseType: !3614, size: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3661, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3661, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3661, file: !244, line: 569, baseType: !841, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3661, file: !244, line: 570, baseType: !841, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3661, file: !244, line: 571, baseType: !841, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3661, file: !244, line: 572, baseType: !841, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3661, file: !244, line: 573, baseType: !841, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3661, file: !244, line: 574, baseType: !841, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3661, file: !244, line: 575, baseType: !841, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3661, file: !244, line: 576, baseType: !841, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3661, file: !244, line: 577, baseType: !446, size: 32, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3661, file: !244, line: 578, baseType: !1098, offset: 96)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3661, file: !244, line: 580, baseType: !539, size: 128, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3661, file: !244, line: 581, baseType: !2764, size: 192, offset: 256)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3661, file: !244, line: 582, baseType: !3679, size: 64, offset: 448)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3681, line: 43, size: 1472, elements: !3682)
!3681 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3682 = !{!3683, !3684, !3685, !3686, !3687, !3690, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3680, file: !3681, line: 44, baseType: !302, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3680, file: !3681, line: 45, baseType: !319, size: 32, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3680, file: !3681, line: 46, baseType: !539, size: 128, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3680, file: !3681, line: 47, baseType: !1098, offset: 256)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3680, file: !3681, line: 48, baseType: !3688, size: 64, offset: 256)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3680, file: !3681, line: 49, baseType: !3691, size: 320, offset: 320)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3692, line: 11, size: 320, elements: !3693)
!3692 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3693 = !{!3694, !3695, !3696, !3701}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3691, file: !3692, line: 16, baseType: !994, size: 128)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3691, file: !3692, line: 17, baseType: !489, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3691, file: !3692, line: 18, baseType: !3697, size: 64, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{null, !3700}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3691, file: !3692, line: 19, baseType: !446, size: 32, offset: 256)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3680, file: !3681, line: 50, baseType: !489, size: 64, offset: 640)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3680, file: !3681, line: 51, baseType: !594, size: 64, offset: 704)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3680, file: !3681, line: 52, baseType: !594, size: 64, offset: 768)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3680, file: !3681, line: 53, baseType: !594, size: 64, offset: 832)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3680, file: !3681, line: 54, baseType: !594, size: 64, offset: 896)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3680, file: !3681, line: 55, baseType: !594, size: 64, offset: 960)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3680, file: !3681, line: 56, baseType: !489, size: 64, offset: 1024)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3680, file: !3681, line: 57, baseType: !489, size: 64, offset: 1088)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3680, file: !3681, line: 58, baseType: !489, size: 64, offset: 1152)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3680, file: !3681, line: 59, baseType: !489, size: 64, offset: 1216)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3680, file: !3681, line: 60, baseType: !489, size: 64, offset: 1280)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3680, file: !3681, line: 61, baseType: !3500, size: 64, offset: 1344)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3680, file: !3681, line: 62, baseType: !841, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3680, file: !3681, line: 63, baseType: !841, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3661, file: !244, line: 583, baseType: !841, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3661, file: !244, line: 584, baseType: !841, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3661, file: !244, line: 585, baseType: !841, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3661, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3661, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3661, file: !244, line: 592, baseType: !586, size: 512, offset: 576)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3661, file: !244, line: 593, baseType: !546, size: 64, offset: 1088)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3661, file: !244, line: 594, baseType: !1755, size: 256, offset: 1152)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3661, file: !244, line: 595, baseType: !1597, size: 128, offset: 1408)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3661, file: !244, line: 596, baseType: !3688, size: 64, offset: 1536)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3661, file: !244, line: 597, baseType: !514, size: 32, offset: 1600)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3661, file: !244, line: 598, baseType: !514, size: 32, offset: 1632)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3661, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3661, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3661, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3661, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3661, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3661, file: !244, line: 604, baseType: !841, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3661, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3661, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3661, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3661, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3661, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3661, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3661, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3661, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3661, file: !244, line: 613, baseType: !319, size: 32, offset: 1792)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3661, file: !244, line: 614, baseType: !319, size: 32, offset: 1824)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3661, file: !244, line: 615, baseType: !546, size: 64, offset: 1856)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3661, file: !244, line: 616, baseType: !546, size: 64, offset: 1920)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3661, file: !244, line: 617, baseType: !546, size: 64, offset: 1984)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3661, file: !244, line: 618, baseType: !546, size: 64, offset: 2048)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3661, file: !244, line: 620, baseType: !3749, size: 64, offset: 2112)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3751)
!3751 = !{!3752, !3753, !3754, !3755}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3750, file: !244, line: 537, baseType: !1098)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3750, file: !244, line: 538, baseType: !7, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3750, file: !244, line: 540, baseType: !539, size: 128, offset: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3750, file: !244, line: 543, baseType: !3756, size: 64, offset: 192)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3661, file: !244, line: 621, baseType: !3759, size: 64, offset: 2176)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{null, !3500, !2489}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3661, file: !244, line: 622, baseType: !3763, size: 64, offset: 2240)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3496, file: !237, line: 486, baseType: !3766, size: 64, offset: 4096)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3768)
!3768 = !{!3769, !3770, !3771, !3775, !3776, !3777}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3767, file: !244, line: 643, baseType: !3528, size: 1472)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3767, file: !244, line: 644, baseType: !3531, size: 64, offset: 1472)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3767, file: !244, line: 645, baseType: !3772, size: 64, offset: 1536)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{null, !3500, !841}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3767, file: !244, line: 646, baseType: !3531, size: 64, offset: 1600)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3767, file: !244, line: 647, baseType: !3522, size: 64, offset: 1664)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3767, file: !244, line: 648, baseType: !3522, size: 64, offset: 1728)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3496, file: !237, line: 493, baseType: !3779, size: 64, offset: 4160)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3781)
!3781 = !{!3782, !3783, !3784, !3957, !3958, !3959, !3960, !3961, !3962, !3965, !3966, !3967, !3968, !3969, !3970, !3971}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3780, file: !258, line: 163, baseType: !539, size: 128)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3780, file: !258, line: 164, baseType: !302, size: 64, offset: 128)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3780, file: !258, line: 165, baseType: !3785, size: 64, offset: 192)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3787)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3788)
!3788 = !{!3789, !3907, !3918, !3923, !3927, !3934, !3938, !3942, !3949, !3953}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3787, file: !258, line: 106, baseType: !3790, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!319, !3779, !3793, !257}
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3795, line: 51, size: 1344, elements: !3796)
!3795 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3796 = !{!3797, !3798, !3800, !3801, !3891, !3900, !3901, !3902, !3903, !3904, !3905, !3906}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3794, file: !3795, line: 52, baseType: !302, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3794, file: !3795, line: 53, baseType: !3799, size: 32, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3795, line: 28, baseType: !446)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3794, file: !3795, line: 54, baseType: !302, size: 64, offset: 128)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3794, file: !3795, line: 55, baseType: !3802, size: 192, offset: 192)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3803, line: 17, size: 192, elements: !3804)
!3803 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3804 = !{!3805, !3807, !3890}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3802, file: !3803, line: 18, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3802, file: !3803, line: 19, baseType: !3808, size: 64, offset: 64)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3810)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3803, line: 110, size: 1152, elements: !3811)
!3811 = !{!3812, !3816, !3820, !3826, !3832, !3836, !3840, !3845, !3849, !3850, !3854, !3858, !3862, !3873, !3874, !3875, !3876, !3886}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3810, file: !3803, line: 111, baseType: !3813, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!3806, !3806}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3810, file: !3803, line: 112, baseType: !3817, size: 64, offset: 64)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{null, !3806}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3810, file: !3803, line: 113, baseType: !3821, size: 64, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!841, !3824}
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3802)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3810, file: !3803, line: 114, baseType: !3827, size: 64, offset: 192)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!2201, !3824, !3830}
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3496)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3810, file: !3803, line: 116, baseType: !3833, size: 64, offset: 256)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!841, !3824, !302}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3810, file: !3803, line: 118, baseType: !3837, size: 64, offset: 320)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!319, !3824, !302, !7, !293, !930}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3810, file: !3803, line: 123, baseType: !3841, size: 64, offset: 384)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!319, !3824, !302, !3844, !930}
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3810, file: !3803, line: 126, baseType: !3846, size: 64, offset: 448)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!302, !3824}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3810, file: !3803, line: 127, baseType: !3846, size: 64, offset: 512)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3810, file: !3803, line: 128, baseType: !3851, size: 64, offset: 576)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!3806, !3824}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3810, file: !3803, line: 130, baseType: !3855, size: 64, offset: 640)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!3806, !3824, !3806}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3810, file: !3803, line: 133, baseType: !3859, size: 64, offset: 704)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!3806, !3824, !302}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3810, file: !3803, line: 135, baseType: !3863, size: 64, offset: 768)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!319, !3824, !302, !302, !7, !7, !3866}
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3803, line: 43, size: 640, elements: !3868)
!3868 = !{!3869, !3870, !3871}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3867, file: !3803, line: 44, baseType: !3806, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3867, file: !3803, line: 45, baseType: !7, size: 32, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3867, file: !3803, line: 46, baseType: !3872, size: 512, offset: 128)
!3872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 512, elements: !624)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3810, file: !3803, line: 140, baseType: !3855, size: 64, offset: 832)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3810, file: !3803, line: 143, baseType: !3851, size: 64, offset: 896)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3810, file: !3803, line: 145, baseType: !3813, size: 64, offset: 960)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3810, file: !3803, line: 146, baseType: !3877, size: 64, offset: 1024)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!319, !3824, !3880}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3803, line: 29, size: 128, elements: !3882)
!3882 = !{!3883, !3884, !3885}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3881, file: !3803, line: 30, baseType: !7, size: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3881, file: !3803, line: 31, baseType: !7, size: 32, offset: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3881, file: !3803, line: 32, baseType: !3824, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3810, file: !3803, line: 148, baseType: !3887, size: 64, offset: 1088)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!319, !3824, !3500}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3802, file: !3803, line: 20, baseType: !3500, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3794, file: !3795, line: 57, baseType: !3892, size: 64, offset: 384)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3795, line: 31, size: 704, elements: !3894)
!3894 = !{!3895, !3896, !3897, !3898, !3899}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3893, file: !3795, line: 32, baseType: !325, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3893, file: !3795, line: 33, baseType: !319, size: 32, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3893, file: !3795, line: 34, baseType: !293, size: 64, offset: 128)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3893, file: !3795, line: 35, baseType: !3892, size: 64, offset: 192)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3893, file: !3795, line: 43, baseType: !2163, size: 448, offset: 256)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3794, file: !3795, line: 58, baseType: !3892, size: 64, offset: 448)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3794, file: !3795, line: 59, baseType: !3793, size: 64, offset: 512)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3794, file: !3795, line: 60, baseType: !3793, size: 64, offset: 576)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3794, file: !3795, line: 61, baseType: !3793, size: 64, offset: 640)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3794, file: !3795, line: 63, baseType: !2071, size: 512, offset: 704)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3794, file: !3795, line: 65, baseType: !489, size: 64, offset: 1216)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3794, file: !3795, line: 66, baseType: !293, size: 64, offset: 1280)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3787, file: !258, line: 108, baseType: !3908, size: 64, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!319, !3779, !3911, !257}
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !3913)
!3913 = !{!3914, !3915, !3916}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3912, file: !258, line: 64, baseType: !3806, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3912, file: !258, line: 65, baseType: !319, size: 32, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3912, file: !258, line: 66, baseType: !3917, size: 512, offset: 96)
!3917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 512, elements: !1643)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3787, file: !258, line: 110, baseType: !3919, size: 64, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!319, !3779, !7, !3922}
!3922 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !292, line: 164, baseType: !489)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3787, file: !258, line: 111, baseType: !3924, size: 64, offset: 192)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{null, !3779, !7}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3787, file: !258, line: 112, baseType: !3928, size: 64, offset: 256)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!319, !3779, !3793, !3931, !7, !3933, !364}
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3787, file: !258, line: 117, baseType: !3935, size: 64, offset: 320)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!319, !3779, !7, !7, !293}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3787, file: !258, line: 119, baseType: !3939, size: 64, offset: 384)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{null, !3779, !7, !7}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3787, file: !258, line: 121, baseType: !3943, size: 64, offset: 448)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!319, !3779, !3946, !841}
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3948, line: 11, flags: DIFlagFwdDecl)
!3948 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3787, file: !258, line: 122, baseType: !3950, size: 64, offset: 512)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{null, !3779, !3946}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3787, file: !258, line: 123, baseType: !3954, size: 64, offset: 576)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!319, !3779, !3911, !3933, !364}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3780, file: !258, line: 166, baseType: !293, size: 64, offset: 256)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3780, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3780, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3780, file: !258, line: 171, baseType: !3806, size: 64, offset: 384)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3780, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3780, file: !258, line: 173, baseType: !3963, size: 64, offset: 512)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3780, file: !258, line: 175, baseType: !3779, size: 64, offset: 576)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3780, file: !258, line: 182, baseType: !3922, size: 64, offset: 640)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3780, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3780, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3780, file: !258, line: 185, baseType: !1094, size: 128, offset: 768)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3780, file: !258, line: 186, baseType: !1365, size: 192, offset: 896)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3780, file: !258, line: 187, baseType: !3972, offset: 1088)
!3972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2792)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3496, file: !237, line: 499, baseType: !539, size: 128, offset: 4224)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3496, file: !237, line: 502, baseType: !3975, size: 64, offset: 4352)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3977)
!3977 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3496, file: !237, line: 504, baseType: !3979, size: 64, offset: 4416)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3496, file: !237, line: 505, baseType: !546, size: 64, offset: 4480)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3496, file: !237, line: 510, baseType: !546, size: 64, offset: 4544)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3496, file: !237, line: 511, baseType: !3983, size: 64, offset: 4608)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3985)
!3985 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3496, file: !237, line: 513, baseType: !3987, size: 64, offset: 4672)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !3989)
!3989 = !{!3990, !3991}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3988, file: !237, line: 293, baseType: !7, size: 32)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3988, file: !237, line: 294, baseType: !489, size: 64, offset: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3496, file: !237, line: 515, baseType: !539, size: 128, offset: 4736)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3496, file: !237, line: 526, baseType: !3994, offset: 4864)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3995, line: 5, elements: !476)
!3995 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3496, file: !237, line: 528, baseType: !3793, size: 64, offset: 4864)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3496, file: !237, line: 529, baseType: !3806, size: 64, offset: 4928)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3496, file: !237, line: 534, baseType: !864, size: 32, offset: 4992)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3496, file: !237, line: 535, baseType: !446, size: 32, offset: 5024)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3496, file: !237, line: 537, baseType: !1098, offset: 5056)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3496, file: !237, line: 538, baseType: !539, size: 128, offset: 5056)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3496, file: !237, line: 540, baseType: !4003, size: 64, offset: 5184)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4005, line: 54, size: 960, elements: !4006)
!4005 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4006 = !{!4007, !4008, !4009, !4010, !4011, !4012, !4013, !4017, !4021, !4022, !4023, !4024, !4028, !4032, !4033}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4004, file: !4005, line: 55, baseType: !302, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4004, file: !4005, line: 56, baseType: !306, size: 64, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4004, file: !4005, line: 58, baseType: !2148, size: 64, offset: 128)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4004, file: !4005, line: 59, baseType: !2148, size: 64, offset: 192)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4004, file: !4005, line: 60, baseType: !2077, size: 64, offset: 256)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4004, file: !4005, line: 62, baseType: !3513, size: 64, offset: 320)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4004, file: !4005, line: 63, baseType: !4014, size: 64, offset: 384)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!325, !3500, !3520}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4004, file: !4005, line: 65, baseType: !4018, size: 64, offset: 448)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{null, !4003}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4004, file: !4005, line: 66, baseType: !3522, size: 64, offset: 512)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4004, file: !4005, line: 68, baseType: !3531, size: 64, offset: 576)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4004, file: !4005, line: 70, baseType: !2184, size: 64, offset: 640)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4004, file: !4005, line: 71, baseType: !4025, size: 64, offset: 704)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!2201, !3500}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4004, file: !4005, line: 73, baseType: !4029, size: 64, offset: 768)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{null, !3500, !2218, !2219}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4004, file: !4005, line: 75, baseType: !3526, size: 64, offset: 832)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4004, file: !4005, line: 77, baseType: !3643, size: 64, offset: 896)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3496, file: !237, line: 541, baseType: !2148, size: 64, offset: 5248)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3496, file: !237, line: 543, baseType: !3522, size: 64, offset: 5312)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3496, file: !237, line: 544, baseType: !4037, size: 64, offset: 5376)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3496, file: !237, line: 545, baseType: !4040, size: 64, offset: 5440)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3496, file: !237, line: 547, baseType: !841, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3496, file: !237, line: 548, baseType: !841, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3496, file: !237, line: 549, baseType: !841, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3496, file: !237, line: 550, baseType: !841, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !404, file: !405, line: 709, baseType: !489, size: 64, offset: 6336)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !404, file: !405, line: 713, baseType: !319, size: 32, offset: 6400)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !404, file: !405, line: 714, baseType: !4049, size: 384, offset: 6432)
!4049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 384, elements: !4050)
!4050 = !{!4051}
!4051 = !DISubrange(count: 48)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !404, file: !405, line: 715, baseType: !2764, size: 192, offset: 6848)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !404, file: !405, line: 717, baseType: !1365, size: 192, offset: 7040)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !404, file: !405, line: 718, baseType: !539, size: 128, offset: 7232)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !404, file: !405, line: 720, baseType: !4056, size: 64, offset: 7360)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !405, line: 618, size: 832, elements: !4058)
!4058 = !{!4059, !4063, !4064, !4068, !4069, !4070, !4071, !4075, !4076, !4079, !4080, !4083, !4086}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4057, file: !405, line: 619, baseType: !4060, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!319, !403}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4057, file: !405, line: 621, baseType: !4060, size: 64, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4057, file: !405, line: 622, baseType: !4065, size: 64, offset: 128)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{null, !403, !319}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4057, file: !405, line: 623, baseType: !4060, size: 64, offset: 192)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4057, file: !405, line: 624, baseType: !4065, size: 64, offset: 256)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4057, file: !405, line: 625, baseType: !4060, size: 64, offset: 320)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4057, file: !405, line: 627, baseType: !4072, size: 64, offset: 384)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{null, !403}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4057, file: !405, line: 628, baseType: !4072, size: 64, offset: 448)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4057, file: !405, line: 631, baseType: !4077, size: 64, offset: 512)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !405, line: 631, flags: DIFlagFwdDecl)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4057, file: !405, line: 632, baseType: !4077, size: 64, offset: 576)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4057, file: !405, line: 633, baseType: !4081, size: 64, offset: 640)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !405, line: 633, flags: DIFlagFwdDecl)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4057, file: !405, line: 634, baseType: !4084, size: 64, offset: 704)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !405, line: 634, flags: DIFlagFwdDecl)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4057, file: !405, line: 635, baseType: !4084, size: 64, offset: 768)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !404, file: !405, line: 721, baseType: !4088, size: 64, offset: 7424)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4090)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !405, line: 664, size: 192, elements: !4091)
!4091 = !{!4092, !4093, !4094, !4095, !4096, !4097}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4090, file: !405, line: 665, baseType: !546, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4090, file: !405, line: 666, baseType: !319, size: 32, offset: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4090, file: !405, line: 667, baseType: !332, size: 16, offset: 96)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4090, file: !405, line: 668, baseType: !332, size: 16, offset: 112)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4090, file: !405, line: 669, baseType: !332, size: 16, offset: 128)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4090, file: !405, line: 670, baseType: !332, size: 16, offset: 144)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !404, file: !405, line: 723, baseType: !3779, size: 64, offset: 7488)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !400, file: !3, line: 27, baseType: !4100, size: 64, offset: 64)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4102)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sp887x_config", file: !4103, line: 12, size: 128, elements: !4104)
!4103 = !DIFile(filename: "drivers/media/dvb-frontends/sp887x.h", directory: "/home/lizy2001/genbc/linux")
!4104 = !{!4105, !4106}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4102, file: !4103, line: 15, baseType: !342, size: 8)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "request_firmware", scope: !4102, file: !4103, line: 18, baseType: !4107, size: 64, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!319, !4110, !4430, !325}
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !4112)
!4112 = !{!4113, !4114, !4384, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4428, !4429}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4111, file: !51, line: 687, baseType: !2360, size: 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4111, file: !51, line: 688, baseType: !4115, size: 6016, offset: 64)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !4116)
!4116 = !{!4117, !4129, !4131, !4135, !4136, !4137, !4141, !4142, !4148, !4153, !4157, !4158, !4168, !4245, !4249, !4253, !4258, !4259, !4260, !4261, !4271, !4282, !4286, !4290, !4294, !4298, !4302, !4306, !4307, !4308, !4312, !4366}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4115, file: !51, line: 436, baseType: !4118, size: 1280)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !4119)
!4119 = !{!4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4118, file: !51, line: 339, baseType: !3589, size: 1024)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4118, file: !51, line: 340, baseType: !446, size: 32, offset: 1024)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4118, file: !51, line: 341, baseType: !446, size: 32, offset: 1056)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !4118, file: !51, line: 342, baseType: !446, size: 32, offset: 1088)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !4118, file: !51, line: 343, baseType: !446, size: 32, offset: 1120)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !4118, file: !51, line: 344, baseType: !446, size: 32, offset: 1152)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !4118, file: !51, line: 345, baseType: !446, size: 32, offset: 1184)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !4118, file: !51, line: 346, baseType: !446, size: 32, offset: 1216)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !4118, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !4115, file: !51, line: 438, baseType: !4130, size: 64, offset: 1280)
!4130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 64, elements: !624)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4115, file: !51, line: 440, baseType: !4132, size: 64, offset: 1344)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{null, !4110}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4115, file: !51, line: 441, baseType: !4132, size: 64, offset: 1408)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !4115, file: !51, line: 442, baseType: !4132, size: 64, offset: 1472)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4115, file: !51, line: 444, baseType: !4138, size: 64, offset: 1536)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!319, !4110}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4115, file: !51, line: 445, baseType: !4138, size: 64, offset: 1600)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4115, file: !51, line: 447, baseType: !4143, size: 64, offset: 1664)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!319, !4110, !4146, !319}
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !4115, file: !51, line: 450, baseType: !4149, size: 64, offset: 1728)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!319, !4110, !841, !7, !364, !4152}
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !4115, file: !51, line: 457, baseType: !4154, size: 64, offset: 1792)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!50, !4110}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !4115, file: !51, line: 460, baseType: !4138, size: 64, offset: 1856)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !4115, file: !51, line: 461, baseType: !4159, size: 64, offset: 1920)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!319, !4110, !4162}
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !4164)
!4164 = !{!4165, !4166, !4167}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4163, file: !51, line: 70, baseType: !319, size: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4163, file: !51, line: 71, baseType: !319, size: 32, offset: 32)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4163, file: !51, line: 72, baseType: !319, size: 32, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !4115, file: !51, line: 463, baseType: !4169, size: 64, offset: 1984)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!319, !4110, !4172}
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !4174)
!4174 = !{!4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4238, !4239, !4240, !4241, !4242, !4243, !4244}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4173, file: !51, line: 587, baseType: !446, size: 32)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4173, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4173, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4173, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4173, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4173, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4173, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4173, file: !51, line: 595, baseType: !446, size: 32, offset: 224)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4173, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4173, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4173, file: !51, line: 598, baseType: !446, size: 32, offset: 320)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4173, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4173, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4173, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4173, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4173, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4173, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4173, file: !51, line: 610, baseType: !342, size: 8, offset: 544)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4173, file: !51, line: 611, baseType: !342, size: 8, offset: 552)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4173, file: !51, line: 612, baseType: !342, size: 8, offset: 560)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4173, file: !51, line: 613, baseType: !446, size: 32, offset: 576)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4173, file: !51, line: 614, baseType: !446, size: 32, offset: 608)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4173, file: !51, line: 615, baseType: !342, size: 8, offset: 640)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4173, file: !51, line: 621, baseType: !4199, size: 384, offset: 672)
!4199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4200, size: 384, elements: !1006)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4173, file: !51, line: 616, size: 128, elements: !4201)
!4201 = !{!4202, !4203, !4204, !4205}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4200, file: !51, line: 617, baseType: !342, size: 8)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4200, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4200, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4200, file: !51, line: 620, baseType: !342, size: 8, offset: 96)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4173, file: !51, line: 624, baseType: !446, size: 32, offset: 1056)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4173, file: !51, line: 627, baseType: !446, size: 32, offset: 1088)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4173, file: !51, line: 630, baseType: !342, size: 8, offset: 1120)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4173, file: !51, line: 631, baseType: !342, size: 8, offset: 1128)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4173, file: !51, line: 632, baseType: !342, size: 8, offset: 1136)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4173, file: !51, line: 633, baseType: !342, size: 8, offset: 1144)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4173, file: !51, line: 634, baseType: !342, size: 8, offset: 1152)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4173, file: !51, line: 635, baseType: !342, size: 8, offset: 1160)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4173, file: !51, line: 637, baseType: !342, size: 8, offset: 1168)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4173, file: !51, line: 638, baseType: !342, size: 8, offset: 1176)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4173, file: !51, line: 639, baseType: !342, size: 8, offset: 1184)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4173, file: !51, line: 640, baseType: !342, size: 8, offset: 1192)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4173, file: !51, line: 641, baseType: !342, size: 8, offset: 1200)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4173, file: !51, line: 642, baseType: !342, size: 8, offset: 1208)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4173, file: !51, line: 643, baseType: !342, size: 8, offset: 1216)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4173, file: !51, line: 644, baseType: !342, size: 8, offset: 1224)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4173, file: !51, line: 645, baseType: !342, size: 8, offset: 1232)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4173, file: !51, line: 647, baseType: !446, size: 32, offset: 1248)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4173, file: !51, line: 650, baseType: !4225, size: 296, offset: 1280)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !4226)
!4226 = !{!4227, !4228}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4225, file: !6, line: 826, baseType: !343, size: 8)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4225, file: !6, line: 827, baseType: !4229, size: 288, offset: 8)
!4229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4230, size: 288, elements: !2433)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !4231)
!4231 = !{!4232, !4233}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4230, file: !6, line: 804, baseType: !343, size: 8)
!4233 = !DIDerivedType(tag: DW_TAG_member, scope: !4230, file: !6, line: 805, baseType: !4234, size: 64, offset: 8)
!4234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4230, file: !6, line: 805, size: 64, elements: !4235)
!4235 = !{!4236, !4237}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4234, file: !6, line: 806, baseType: !547, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4234, file: !6, line: 807, baseType: !577, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4173, file: !51, line: 651, baseType: !4225, size: 296, offset: 1576)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4173, file: !51, line: 652, baseType: !4225, size: 296, offset: 1872)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4173, file: !51, line: 653, baseType: !4225, size: 296, offset: 2168)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4173, file: !51, line: 654, baseType: !4225, size: 296, offset: 2464)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4173, file: !51, line: 655, baseType: !4225, size: 296, offset: 2760)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4173, file: !51, line: 656, baseType: !4225, size: 296, offset: 3056)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4173, file: !51, line: 657, baseType: !4225, size: 296, offset: 3352)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !4115, file: !51, line: 466, baseType: !4246, size: 64, offset: 2048)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!319, !4110, !4152}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !4115, file: !51, line: 467, baseType: !4250, size: 64, offset: 2112)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!319, !4110, !2831}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !4115, file: !51, line: 468, baseType: !4254, size: 64, offset: 2176)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!319, !4110, !4257}
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !4115, file: !51, line: 469, baseType: !4254, size: 64, offset: 2240)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !4115, file: !51, line: 470, baseType: !4250, size: 64, offset: 2304)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !4115, file: !51, line: 472, baseType: !4138, size: 64, offset: 2368)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !4115, file: !51, line: 473, baseType: !4262, size: 64, offset: 2432)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!319, !4110, !4265}
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !4267)
!4267 = !{!4268, !4270}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4266, file: !6, line: 174, baseType: !4269, size: 48)
!4269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 48, elements: !2532)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4266, file: !6, line: 175, baseType: !343, size: 8, offset: 48)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !4115, file: !51, line: 474, baseType: !4272, size: 64, offset: 2496)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!319, !4110, !4275}
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !4277)
!4277 = !{!4278, !4280, !4281}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4276, file: !6, line: 196, baseType: !4279, size: 32)
!4279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 32, elements: !2433)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4276, file: !6, line: 197, baseType: !343, size: 8, offset: 32)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4276, file: !6, line: 198, baseType: !319, size: 32, offset: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !4115, file: !51, line: 475, baseType: !4283, size: 64, offset: 2560)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!319, !4110, !171}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !4115, file: !51, line: 477, baseType: !4287, size: 64, offset: 2624)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!319, !4110, !78}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !4115, file: !51, line: 478, baseType: !4291, size: 64, offset: 2688)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!319, !4110, !73}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !4115, file: !51, line: 480, baseType: !4295, size: 64, offset: 2752)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!319, !4110, !506}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !4115, file: !51, line: 481, baseType: !4299, size: 64, offset: 2816)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!319, !4110, !489}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4115, file: !51, line: 482, baseType: !4303, size: 64, offset: 2880)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!319, !4110, !319}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !4115, file: !51, line: 483, baseType: !4303, size: 64, offset: 2944)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !4115, file: !51, line: 484, baseType: !4138, size: 64, offset: 3008)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !4115, file: !51, line: 490, baseType: !4309, size: 64, offset: 3072)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!175, !4110}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !4115, file: !51, line: 492, baseType: !4313, size: 2304, offset: 3136)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !4314)
!4314 = !{!4315, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4342, !4346, !4347, !4348, !4349, !4350, !4351, !4356, !4361, !4365}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4313, file: !51, line: 228, baseType: !4316, size: 1216)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !4317)
!4317 = !{!4318, !4319, !4320, !4321, !4322, !4323, !4324}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4316, file: !51, line: 89, baseType: !3589, size: 1024)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4316, file: !51, line: 91, baseType: !446, size: 32, offset: 1024)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4316, file: !51, line: 92, baseType: !446, size: 32, offset: 1056)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4316, file: !51, line: 93, baseType: !446, size: 32, offset: 1088)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4316, file: !51, line: 95, baseType: !446, size: 32, offset: 1120)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4316, file: !51, line: 96, baseType: !446, size: 32, offset: 1152)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4316, file: !51, line: 97, baseType: !446, size: 32, offset: 1184)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4313, file: !51, line: 230, baseType: !4132, size: 64, offset: 1216)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4313, file: !51, line: 231, baseType: !4138, size: 64, offset: 1280)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4313, file: !51, line: 232, baseType: !4138, size: 64, offset: 1344)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4313, file: !51, line: 233, baseType: !4138, size: 64, offset: 1408)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4313, file: !51, line: 234, baseType: !4138, size: 64, offset: 1472)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4313, file: !51, line: 237, baseType: !4138, size: 64, offset: 1536)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4313, file: !51, line: 238, baseType: !4332, size: 64, offset: 1600)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!319, !4110, !4335}
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !4337)
!4337 = !{!4338, !4339, !4340, !4341}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4336, file: !51, line: 115, baseType: !7, size: 32)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4336, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4336, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4336, file: !51, line: 118, baseType: !546, size: 64, offset: 128)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4313, file: !51, line: 240, baseType: !4343, size: 64, offset: 1664)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!319, !4110, !293}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4313, file: !51, line: 242, baseType: !4250, size: 64, offset: 1728)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4313, file: !51, line: 243, baseType: !4250, size: 64, offset: 1792)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4313, file: !51, line: 244, baseType: !4250, size: 64, offset: 1856)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4313, file: !51, line: 248, baseType: !4250, size: 64, offset: 1920)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4313, file: !51, line: 249, baseType: !4254, size: 64, offset: 1984)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4313, file: !51, line: 250, baseType: !4352, size: 64, offset: 2048)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!319, !4110, !4355}
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4313, file: !51, line: 258, baseType: !4357, size: 64, offset: 2112)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!319, !4110, !4360, !319}
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4313, file: !51, line: 267, baseType: !4362, size: 64, offset: 2176)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!319, !4110, !446}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4313, file: !51, line: 268, baseType: !4362, size: 64, offset: 2240)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !4115, file: !51, line: 493, baseType: !4367, size: 576, offset: 5440)
!4367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !4368)
!4368 = !{!4369, !4373, !4377, !4378, !4379, !4380, !4381, !4382, !4383}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4367, file: !51, line: 304, baseType: !4370, size: 64)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !4371)
!4371 = !{!4372}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4370, file: !51, line: 277, baseType: !325, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4367, file: !51, line: 306, baseType: !4374, size: 64, offset: 64)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{null, !4110, !4335}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4367, file: !51, line: 308, baseType: !4254, size: 64, offset: 128)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4367, file: !51, line: 309, baseType: !4352, size: 64, offset: 192)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4367, file: !51, line: 310, baseType: !4132, size: 64, offset: 256)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4367, file: !51, line: 311, baseType: !4132, size: 64, offset: 320)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4367, file: !51, line: 312, baseType: !4132, size: 64, offset: 384)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4367, file: !51, line: 313, baseType: !4303, size: 64, offset: 448)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4367, file: !51, line: 316, baseType: !4343, size: 64, offset: 512)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !4111, file: !51, line: 689, baseType: !4385, size: 64, offset: 6080)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !4387)
!4387 = !{!4388, !4389, !4390, !4391, !4392, !4394, !4395, !4396, !4397, !4398, !4417}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4386, file: !272, line: 102, baseType: !319, size: 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4386, file: !272, line: 103, baseType: !539, size: 128, offset: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4386, file: !272, line: 104, baseType: !539, size: 128, offset: 192)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4386, file: !272, line: 105, baseType: !302, size: 64, offset: 320)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !4386, file: !272, line: 106, baseType: !4393, size: 48, offset: 384)
!4393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 48, elements: !2532)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4386, file: !272, line: 107, baseType: !293, size: 64, offset: 448)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4386, file: !272, line: 109, baseType: !3500, size: 64, offset: 512)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4386, file: !272, line: 111, baseType: !306, size: 64, offset: 576)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !4386, file: !272, line: 113, baseType: !319, size: 32, offset: 640)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !4386, file: !272, line: 114, baseType: !4399, size: 64, offset: 704)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4401)
!4401 = !{!4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4416}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4400, file: !272, line: 158, baseType: !539, size: 128)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4400, file: !272, line: 159, baseType: !1813, size: 64, offset: 128)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4400, file: !272, line: 160, baseType: !4385, size: 64, offset: 192)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4400, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4400, file: !272, line: 162, baseType: !319, size: 32, offset: 288)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4400, file: !272, line: 163, baseType: !446, size: 32, offset: 320)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4400, file: !272, line: 167, baseType: !319, size: 32, offset: 352)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4400, file: !272, line: 168, baseType: !319, size: 32, offset: 384)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4400, file: !272, line: 169, baseType: !319, size: 32, offset: 416)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4400, file: !272, line: 171, baseType: !1597, size: 128, offset: 448)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4400, file: !272, line: 173, baseType: !4413, size: 64, offset: 576)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{!319, !718, !7, !293}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4400, file: !272, line: 187, baseType: !293, size: 64, offset: 640)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !4386, file: !272, line: 115, baseType: !1365, size: 192, offset: 768)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !4111, file: !51, line: 690, baseType: !293, size: 64, offset: 6144)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !4111, file: !51, line: 691, baseType: !293, size: 64, offset: 6208)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !4111, file: !51, line: 692, baseType: !293, size: 64, offset: 6272)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !4111, file: !51, line: 693, baseType: !293, size: 64, offset: 6336)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !4111, file: !51, line: 694, baseType: !293, size: 64, offset: 6400)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !4111, file: !51, line: 695, baseType: !4173, size: 3648, offset: 6464)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4111, file: !51, line: 698, baseType: !4425, size: 64, offset: 10112)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!319, !293, !319, !319, !319}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4111, file: !51, line: 699, baseType: !319, size: 32, offset: 10176)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4111, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4433)
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !4434, line: 12, size: 192, elements: !4435)
!4434 = !DIFile(filename: "./include/linux/firmware.h", directory: "/home/lizy2001/genbc/linux")
!4435 = !{!4436, !4437, !4438}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4433, file: !4434, line: 13, baseType: !930, size: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4433, file: !4434, line: 14, baseType: !4146, size: 64, offset: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4433, file: !4434, line: 17, baseType: !293, size: 64, offset: 128)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !400, file: !3, line: 28, baseType: !4111, size: 10240, offset: 128)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "initialised", scope: !400, file: !3, line: 31, baseType: !342, size: 1, offset: 10368, flags: DIFlagBitField, extraData: i64 10368)
!4441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3932, size: 96, elements: !1006)
!4442 = !DIGlobalVariableExpression(var: !4443, expr: !DIExpression())
!4443 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 623, type: !4444, isLocal: true, isDefinition: true)
!4444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 104, elements: !4445)
!4445 = !{!4446}
!4446 = !DISubrange(count: 13)
!4447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4115)
!4448 = !{i32 7, !"Dwarf Version", i32 4}
!4449 = !{i32 2, !"Debug Info Version", i32 3}
!4450 = !{i32 1, !"wchar_size", i32 2}
!4451 = !{i32 1, !"Code Model", i32 2}
!4452 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4453 = distinct !DISubprogram(name: "sp887x_attach", scope: !3, file: !3, line: 567, type: !4454, scopeLine: 569, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !476)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!4110, !4100, !403}
!4456 = !DILocalVariable(name: "config", arg: 1, scope: !4453, file: !3, line: 567, type: !4100)
!4457 = !DILocation(line: 567, column: 64, scope: !4453)
!4458 = !DILocalVariable(name: "i2c", arg: 2, scope: !4453, file: !3, line: 568, type: !403)
!4459 = !DILocation(line: 568, column: 28, scope: !4453)
!4460 = !DILocalVariable(name: "state", scope: !4453, file: !3, line: 570, type: !399)
!4461 = !DILocation(line: 570, column: 23, scope: !4453)
!4462 = !DILocation(line: 573, column: 10, scope: !4453)
!4463 = !DILocation(line: 573, column: 8, scope: !4453)
!4464 = !DILocation(line: 574, column: 6, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 574, column: 6)
!4466 = !DILocation(line: 574, column: 12, scope: !4465)
!4467 = !DILocation(line: 574, column: 6, scope: !4453)
!4468 = !DILocation(line: 574, column: 21, scope: !4465)
!4469 = !DILocation(line: 577, column: 18, scope: !4453)
!4470 = !DILocation(line: 577, column: 2, scope: !4453)
!4471 = !DILocation(line: 577, column: 9, scope: !4453)
!4472 = !DILocation(line: 577, column: 16, scope: !4453)
!4473 = !DILocation(line: 578, column: 15, scope: !4453)
!4474 = !DILocation(line: 578, column: 2, scope: !4453)
!4475 = !DILocation(line: 578, column: 9, scope: !4453)
!4476 = !DILocation(line: 578, column: 13, scope: !4453)
!4477 = !DILocation(line: 579, column: 2, scope: !4453)
!4478 = !DILocation(line: 579, column: 9, scope: !4453)
!4479 = !DILocation(line: 579, column: 21, scope: !4453)
!4480 = !DILocation(line: 582, column: 21, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 582, column: 6)
!4482 = !DILocation(line: 582, column: 6, scope: !4481)
!4483 = !DILocation(line: 582, column: 36, scope: !4481)
!4484 = !DILocation(line: 582, column: 6, scope: !4453)
!4485 = !DILocation(line: 582, column: 41, scope: !4481)
!4486 = !DILocation(line: 585, column: 10, scope: !4453)
!4487 = !DILocation(line: 585, column: 17, scope: !4453)
!4488 = !DILocation(line: 585, column: 26, scope: !4453)
!4489 = !DILocation(line: 585, column: 2, scope: !4453)
!4490 = !DILocation(line: 586, column: 37, scope: !4453)
!4491 = !DILocation(line: 586, column: 2, scope: !4453)
!4492 = !DILocation(line: 586, column: 9, scope: !4453)
!4493 = !DILocation(line: 586, column: 18, scope: !4453)
!4494 = !DILocation(line: 586, column: 35, scope: !4453)
!4495 = !DILocation(line: 587, column: 10, scope: !4453)
!4496 = !DILocation(line: 587, column: 17, scope: !4453)
!4497 = !DILocation(line: 587, column: 2, scope: !4453)
!4498 = !DILabel(scope: !4453, name: "error", file: !3, line: 589)
!4499 = !DILocation(line: 589, column: 1, scope: !4453)
!4500 = !DILocation(line: 590, column: 8, scope: !4453)
!4501 = !DILocation(line: 590, column: 2, scope: !4453)
!4502 = !DILocation(line: 591, column: 2, scope: !4453)
!4503 = !DILocation(line: 592, column: 1, scope: !4453)
!4504 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 662, type: !4505, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!293, !930, !291}
!4507 = !DILocalVariable(name: "s", arg: 1, scope: !4508, file: !284, line: 445, type: !1275)
!4508 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !284, file: !284, line: 445, type: !4509, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!293, !1275, !291, !930}
!4511 = !DILocation(line: 445, column: 72, scope: !4508, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 552, column: 10, scope: !4513, inlinedAt: !4516)
!4513 = distinct !DILexicalBlock(scope: !4514, file: !284, line: 540, column: 34)
!4514 = distinct !DILexicalBlock(scope: !4515, file: !284, line: 540, column: 6)
!4515 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 538, type: !4505, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!4516 = distinct !DILocation(line: 664, column: 9, scope: !4504)
!4517 = !DILocalVariable(name: "flags", arg: 2, scope: !4508, file: !284, line: 446, type: !291)
!4518 = !DILocation(line: 446, column: 9, scope: !4508, inlinedAt: !4512)
!4519 = !DILocalVariable(name: "size", arg: 3, scope: !4508, file: !284, line: 446, type: !930)
!4520 = !DILocation(line: 446, column: 23, scope: !4508, inlinedAt: !4512)
!4521 = !DILocalVariable(name: "ret", scope: !4508, file: !284, line: 448, type: !293)
!4522 = !DILocation(line: 448, column: 8, scope: !4508, inlinedAt: !4512)
!4523 = !DILocalVariable(name: "flags", arg: 1, scope: !4524, file: !284, line: 318, type: !291)
!4524 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 318, type: !4525, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!283, !291}
!4527 = !DILocation(line: 318, column: 67, scope: !4524, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 553, column: 20, scope: !4513, inlinedAt: !4516)
!4529 = !DILocalVariable(name: "size", arg: 1, scope: !4530, file: !284, line: 346, type: !930)
!4530 = distinct !DISubprogram(name: "kmalloc_index", scope: !284, file: !284, line: 346, type: !4531, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!7, !930}
!4533 = !DILocation(line: 346, column: 58, scope: !4530, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 547, column: 11, scope: !4513, inlinedAt: !4516)
!4535 = !DILocalVariable(name: "size", arg: 1, scope: !4536, file: !284, line: 472, type: !930)
!4536 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !284, file: !284, line: 472, type: !4537, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!293, !930, !291, !7}
!4539 = !DILocation(line: 472, column: 28, scope: !4536, inlinedAt: !4540)
!4540 = distinct !DILocation(line: 481, column: 9, scope: !4541, inlinedAt: !4542)
!4541 = distinct !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 478, type: !4505, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!4542 = distinct !DILocation(line: 545, column: 11, scope: !4543, inlinedAt: !4516)
!4543 = distinct !DILexicalBlock(scope: !4513, file: !284, line: 544, column: 7)
!4544 = !DILocalVariable(name: "flags", arg: 2, scope: !4536, file: !284, line: 472, type: !291)
!4545 = !DILocation(line: 472, column: 40, scope: !4536, inlinedAt: !4540)
!4546 = !DILocalVariable(name: "order", arg: 3, scope: !4536, file: !284, line: 472, type: !7)
!4547 = !DILocation(line: 472, column: 60, scope: !4536, inlinedAt: !4540)
!4548 = !DILocalVariable(name: "size", arg: 1, scope: !4541, file: !284, line: 478, type: !930)
!4549 = !DILocation(line: 478, column: 51, scope: !4541, inlinedAt: !4542)
!4550 = !DILocalVariable(name: "flags", arg: 2, scope: !4541, file: !284, line: 478, type: !291)
!4551 = !DILocation(line: 478, column: 63, scope: !4541, inlinedAt: !4542)
!4552 = !DILocalVariable(name: "order", scope: !4541, file: !284, line: 480, type: !7)
!4553 = !DILocation(line: 480, column: 15, scope: !4541, inlinedAt: !4542)
!4554 = !DILocalVariable(name: "size", arg: 1, scope: !4515, file: !284, line: 538, type: !930)
!4555 = !DILocation(line: 538, column: 45, scope: !4515, inlinedAt: !4516)
!4556 = !DILocalVariable(name: "flags", arg: 2, scope: !4515, file: !284, line: 538, type: !291)
!4557 = !DILocation(line: 538, column: 57, scope: !4515, inlinedAt: !4516)
!4558 = !DILocalVariable(name: "index", scope: !4513, file: !284, line: 542, type: !7)
!4559 = !DILocation(line: 542, column: 16, scope: !4513, inlinedAt: !4516)
!4560 = !DILocalVariable(name: "size", arg: 1, scope: !4504, file: !284, line: 662, type: !930)
!4561 = !DILocation(line: 662, column: 36, scope: !4504)
!4562 = !DILocalVariable(name: "flags", arg: 2, scope: !4504, file: !284, line: 662, type: !291)
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
!4587 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 348, column: 6)
!4588 = !DILocation(line: 348, column: 6, scope: !4530, inlinedAt: !4534)
!4589 = !DILocation(line: 349, column: 3, scope: !4587, inlinedAt: !4534)
!4590 = !DILocation(line: 351, column: 6, scope: !4591, inlinedAt: !4534)
!4591 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 351, column: 6)
!4592 = !DILocation(line: 351, column: 11, scope: !4591, inlinedAt: !4534)
!4593 = !DILocation(line: 351, column: 6, scope: !4530, inlinedAt: !4534)
!4594 = !DILocation(line: 352, column: 3, scope: !4591, inlinedAt: !4534)
!4595 = !DILocation(line: 354, column: 32, scope: !4596, inlinedAt: !4534)
!4596 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 354, column: 6)
!4597 = !DILocation(line: 354, column: 37, scope: !4596, inlinedAt: !4534)
!4598 = !DILocation(line: 354, column: 42, scope: !4596, inlinedAt: !4534)
!4599 = !DILocation(line: 354, column: 45, scope: !4596, inlinedAt: !4534)
!4600 = !DILocation(line: 354, column: 50, scope: !4596, inlinedAt: !4534)
!4601 = !DILocation(line: 354, column: 6, scope: !4530, inlinedAt: !4534)
!4602 = !DILocation(line: 355, column: 3, scope: !4596, inlinedAt: !4534)
!4603 = !DILocation(line: 356, column: 32, scope: !4604, inlinedAt: !4534)
!4604 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 356, column: 6)
!4605 = !DILocation(line: 356, column: 37, scope: !4604, inlinedAt: !4534)
!4606 = !DILocation(line: 356, column: 43, scope: !4604, inlinedAt: !4534)
!4607 = !DILocation(line: 356, column: 46, scope: !4604, inlinedAt: !4534)
!4608 = !DILocation(line: 356, column: 51, scope: !4604, inlinedAt: !4534)
!4609 = !DILocation(line: 356, column: 6, scope: !4530, inlinedAt: !4534)
!4610 = !DILocation(line: 357, column: 3, scope: !4604, inlinedAt: !4534)
!4611 = !DILocation(line: 358, column: 6, scope: !4612, inlinedAt: !4534)
!4612 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 358, column: 6)
!4613 = !DILocation(line: 358, column: 11, scope: !4612, inlinedAt: !4534)
!4614 = !DILocation(line: 358, column: 6, scope: !4530, inlinedAt: !4534)
!4615 = !DILocation(line: 358, column: 26, scope: !4612, inlinedAt: !4534)
!4616 = !DILocation(line: 359, column: 6, scope: !4617, inlinedAt: !4534)
!4617 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 359, column: 6)
!4618 = !DILocation(line: 359, column: 11, scope: !4617, inlinedAt: !4534)
!4619 = !DILocation(line: 359, column: 6, scope: !4530, inlinedAt: !4534)
!4620 = !DILocation(line: 359, column: 26, scope: !4617, inlinedAt: !4534)
!4621 = !DILocation(line: 360, column: 6, scope: !4622, inlinedAt: !4534)
!4622 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 360, column: 6)
!4623 = !DILocation(line: 360, column: 11, scope: !4622, inlinedAt: !4534)
!4624 = !DILocation(line: 360, column: 6, scope: !4530, inlinedAt: !4534)
!4625 = !DILocation(line: 360, column: 26, scope: !4622, inlinedAt: !4534)
!4626 = !DILocation(line: 361, column: 6, scope: !4627, inlinedAt: !4534)
!4627 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 361, column: 6)
!4628 = !DILocation(line: 361, column: 11, scope: !4627, inlinedAt: !4534)
!4629 = !DILocation(line: 361, column: 6, scope: !4530, inlinedAt: !4534)
!4630 = !DILocation(line: 361, column: 26, scope: !4627, inlinedAt: !4534)
!4631 = !DILocation(line: 362, column: 6, scope: !4632, inlinedAt: !4534)
!4632 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 362, column: 6)
!4633 = !DILocation(line: 362, column: 11, scope: !4632, inlinedAt: !4534)
!4634 = !DILocation(line: 362, column: 6, scope: !4530, inlinedAt: !4534)
!4635 = !DILocation(line: 362, column: 26, scope: !4632, inlinedAt: !4534)
!4636 = !DILocation(line: 363, column: 6, scope: !4637, inlinedAt: !4534)
!4637 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 363, column: 6)
!4638 = !DILocation(line: 363, column: 11, scope: !4637, inlinedAt: !4534)
!4639 = !DILocation(line: 363, column: 6, scope: !4530, inlinedAt: !4534)
!4640 = !DILocation(line: 363, column: 26, scope: !4637, inlinedAt: !4534)
!4641 = !DILocation(line: 364, column: 6, scope: !4642, inlinedAt: !4534)
!4642 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 364, column: 6)
!4643 = !DILocation(line: 364, column: 11, scope: !4642, inlinedAt: !4534)
!4644 = !DILocation(line: 364, column: 6, scope: !4530, inlinedAt: !4534)
!4645 = !DILocation(line: 364, column: 26, scope: !4642, inlinedAt: !4534)
!4646 = !DILocation(line: 365, column: 6, scope: !4647, inlinedAt: !4534)
!4647 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 365, column: 6)
!4648 = !DILocation(line: 365, column: 11, scope: !4647, inlinedAt: !4534)
!4649 = !DILocation(line: 365, column: 6, scope: !4530, inlinedAt: !4534)
!4650 = !DILocation(line: 365, column: 26, scope: !4647, inlinedAt: !4534)
!4651 = !DILocation(line: 366, column: 6, scope: !4652, inlinedAt: !4534)
!4652 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 366, column: 6)
!4653 = !DILocation(line: 366, column: 11, scope: !4652, inlinedAt: !4534)
!4654 = !DILocation(line: 366, column: 6, scope: !4530, inlinedAt: !4534)
!4655 = !DILocation(line: 366, column: 26, scope: !4652, inlinedAt: !4534)
!4656 = !DILocation(line: 367, column: 6, scope: !4657, inlinedAt: !4534)
!4657 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 367, column: 6)
!4658 = !DILocation(line: 367, column: 11, scope: !4657, inlinedAt: !4534)
!4659 = !DILocation(line: 367, column: 6, scope: !4530, inlinedAt: !4534)
!4660 = !DILocation(line: 367, column: 26, scope: !4657, inlinedAt: !4534)
!4661 = !DILocation(line: 368, column: 6, scope: !4662, inlinedAt: !4534)
!4662 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 368, column: 6)
!4663 = !DILocation(line: 368, column: 11, scope: !4662, inlinedAt: !4534)
!4664 = !DILocation(line: 368, column: 6, scope: !4530, inlinedAt: !4534)
!4665 = !DILocation(line: 368, column: 26, scope: !4662, inlinedAt: !4534)
!4666 = !DILocation(line: 369, column: 6, scope: !4667, inlinedAt: !4534)
!4667 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 369, column: 6)
!4668 = !DILocation(line: 369, column: 11, scope: !4667, inlinedAt: !4534)
!4669 = !DILocation(line: 369, column: 6, scope: !4530, inlinedAt: !4534)
!4670 = !DILocation(line: 369, column: 26, scope: !4667, inlinedAt: !4534)
!4671 = !DILocation(line: 370, column: 6, scope: !4672, inlinedAt: !4534)
!4672 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 370, column: 6)
!4673 = !DILocation(line: 370, column: 11, scope: !4672, inlinedAt: !4534)
!4674 = !DILocation(line: 370, column: 6, scope: !4530, inlinedAt: !4534)
!4675 = !DILocation(line: 370, column: 26, scope: !4672, inlinedAt: !4534)
!4676 = !DILocation(line: 371, column: 6, scope: !4677, inlinedAt: !4534)
!4677 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 371, column: 6)
!4678 = !DILocation(line: 371, column: 11, scope: !4677, inlinedAt: !4534)
!4679 = !DILocation(line: 371, column: 6, scope: !4530, inlinedAt: !4534)
!4680 = !DILocation(line: 371, column: 26, scope: !4677, inlinedAt: !4534)
!4681 = !DILocation(line: 372, column: 6, scope: !4682, inlinedAt: !4534)
!4682 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 372, column: 6)
!4683 = !DILocation(line: 372, column: 11, scope: !4682, inlinedAt: !4534)
!4684 = !DILocation(line: 372, column: 6, scope: !4530, inlinedAt: !4534)
!4685 = !DILocation(line: 372, column: 26, scope: !4682, inlinedAt: !4534)
!4686 = !DILocation(line: 373, column: 6, scope: !4687, inlinedAt: !4534)
!4687 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 373, column: 6)
!4688 = !DILocation(line: 373, column: 11, scope: !4687, inlinedAt: !4534)
!4689 = !DILocation(line: 373, column: 6, scope: !4530, inlinedAt: !4534)
!4690 = !DILocation(line: 373, column: 26, scope: !4687, inlinedAt: !4534)
!4691 = !DILocation(line: 374, column: 6, scope: !4692, inlinedAt: !4534)
!4692 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 374, column: 6)
!4693 = !DILocation(line: 374, column: 11, scope: !4692, inlinedAt: !4534)
!4694 = !DILocation(line: 374, column: 6, scope: !4530, inlinedAt: !4534)
!4695 = !DILocation(line: 374, column: 26, scope: !4692, inlinedAt: !4534)
!4696 = !DILocation(line: 375, column: 6, scope: !4697, inlinedAt: !4534)
!4697 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 375, column: 6)
!4698 = !DILocation(line: 375, column: 11, scope: !4697, inlinedAt: !4534)
!4699 = !DILocation(line: 375, column: 6, scope: !4530, inlinedAt: !4534)
!4700 = !DILocation(line: 375, column: 27, scope: !4697, inlinedAt: !4534)
!4701 = !DILocation(line: 376, column: 6, scope: !4702, inlinedAt: !4534)
!4702 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 376, column: 6)
!4703 = !DILocation(line: 376, column: 11, scope: !4702, inlinedAt: !4534)
!4704 = !DILocation(line: 376, column: 6, scope: !4530, inlinedAt: !4534)
!4705 = !DILocation(line: 376, column: 32, scope: !4702, inlinedAt: !4534)
!4706 = !DILocation(line: 377, column: 6, scope: !4707, inlinedAt: !4534)
!4707 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 377, column: 6)
!4708 = !DILocation(line: 377, column: 11, scope: !4707, inlinedAt: !4534)
!4709 = !DILocation(line: 377, column: 6, scope: !4530, inlinedAt: !4534)
!4710 = !DILocation(line: 377, column: 32, scope: !4707, inlinedAt: !4534)
!4711 = !DILocation(line: 378, column: 6, scope: !4712, inlinedAt: !4534)
!4712 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 378, column: 6)
!4713 = !DILocation(line: 378, column: 11, scope: !4712, inlinedAt: !4534)
!4714 = !DILocation(line: 378, column: 6, scope: !4530, inlinedAt: !4534)
!4715 = !DILocation(line: 378, column: 32, scope: !4712, inlinedAt: !4534)
!4716 = !DILocation(line: 379, column: 6, scope: !4717, inlinedAt: !4534)
!4717 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 379, column: 6)
!4718 = !DILocation(line: 379, column: 11, scope: !4717, inlinedAt: !4534)
!4719 = !DILocation(line: 379, column: 6, scope: !4530, inlinedAt: !4534)
!4720 = !DILocation(line: 379, column: 33, scope: !4717, inlinedAt: !4534)
!4721 = !DILocation(line: 380, column: 6, scope: !4722, inlinedAt: !4534)
!4722 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 380, column: 6)
!4723 = !DILocation(line: 380, column: 11, scope: !4722, inlinedAt: !4534)
!4724 = !DILocation(line: 380, column: 6, scope: !4530, inlinedAt: !4534)
!4725 = !DILocation(line: 380, column: 33, scope: !4722, inlinedAt: !4534)
!4726 = !DILocation(line: 381, column: 6, scope: !4727, inlinedAt: !4534)
!4727 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 381, column: 6)
!4728 = !DILocation(line: 381, column: 11, scope: !4727, inlinedAt: !4534)
!4729 = !DILocation(line: 381, column: 6, scope: !4530, inlinedAt: !4534)
!4730 = !DILocation(line: 381, column: 33, scope: !4727, inlinedAt: !4534)
!4731 = !DILocation(line: 382, column: 2, scope: !4732, inlinedAt: !4534)
!4732 = distinct !DILexicalBlock(scope: !4733, file: !284, line: 382, column: 2)
!4733 = distinct !DILexicalBlock(scope: !4530, file: !284, line: 382, column: 2)
!4734 = !{i32 -2143552817, i32 -2143552788, i32 -2143552742, i32 -2143552684, i32 -2143552630, i32 -2143552576, i32 -2143552521, i32 -2143552490}
!4735 = !DILocation(line: 382, column: 2, scope: !4736, inlinedAt: !4534)
!4736 = distinct !DILexicalBlock(scope: !4737, file: !284, line: 382, column: 2)
!4737 = distinct !DILexicalBlock(scope: !4733, file: !284, line: 382, column: 2)
!4738 = !{i32 -2143552047, i32 -2143552040, i32 -2143551986, i32 -2143551955, i32 -2143551925}
!4739 = !DILocation(line: 382, column: 2, scope: !4737, inlinedAt: !4534)
!4740 = !DILocation(line: 386, column: 1, scope: !4530, inlinedAt: !4534)
!4741 = !DILocation(line: 547, column: 9, scope: !4513, inlinedAt: !4516)
!4742 = !DILocation(line: 549, column: 8, scope: !4743, inlinedAt: !4516)
!4743 = distinct !DILexicalBlock(scope: !4513, file: !284, line: 549, column: 7)
!4744 = !DILocation(line: 549, column: 7, scope: !4513, inlinedAt: !4516)
!4745 = !DILocation(line: 550, column: 4, scope: !4743, inlinedAt: !4516)
!4746 = !DILocation(line: 553, column: 33, scope: !4513, inlinedAt: !4516)
!4747 = !DILocation(line: 325, column: 6, scope: !4748, inlinedAt: !4528)
!4748 = distinct !DILexicalBlock(scope: !4524, file: !284, line: 325, column: 6)
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
!4776 = distinct !DISubprogram(name: "sp887x_readreg", scope: !3, file: !3, line: 76, type: !4777, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!319, !399, !332}
!4779 = !DILocalVariable(name: "state", arg: 1, scope: !4776, file: !3, line: 76, type: !399)
!4780 = !DILocation(line: 76, column: 49, scope: !4776)
!4781 = !DILocalVariable(name: "reg", arg: 2, scope: !4776, file: !3, line: 76, type: !332)
!4782 = !DILocation(line: 76, column: 60, scope: !4776)
!4783 = !DILocalVariable(name: "b0", scope: !4776, file: !3, line: 78, type: !4784)
!4784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 16, elements: !2473)
!4785 = !DILocation(line: 78, column: 5, scope: !4776)
!4786 = !DILocation(line: 78, column: 13, scope: !4776)
!4787 = !DILocation(line: 78, column: 15, scope: !4776)
!4788 = !DILocation(line: 78, column: 19, scope: !4776)
!4789 = !DILocation(line: 78, column: 26, scope: !4776)
!4790 = !DILocation(line: 78, column: 30, scope: !4776)
!4791 = !DILocalVariable(name: "b1", scope: !4776, file: !3, line: 79, type: !4784)
!4792 = !DILocation(line: 79, column: 5, scope: !4776)
!4793 = !DILocalVariable(name: "ret", scope: !4776, file: !3, line: 80, type: !319)
!4794 = !DILocation(line: 80, column: 6, scope: !4776)
!4795 = !DILocalVariable(name: "msg", scope: !4776, file: !3, line: 81, type: !4796)
!4796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 256, elements: !2473)
!4797 = !DILocation(line: 81, column: 17, scope: !4776)
!4798 = !DILocation(line: 81, column: 25, scope: !4776)
!4799 = !DILocation(line: 81, column: 26, scope: !4776)
!4800 = !DILocation(line: 81, column: 36, scope: !4776)
!4801 = !DILocation(line: 81, column: 43, scope: !4776)
!4802 = !DILocation(line: 81, column: 51, scope: !4776)
!4803 = !DILocation(line: 81, column: 85, scope: !4776)
!4804 = !DILocation(line: 82, column: 5, scope: !4776)
!4805 = !DILocation(line: 82, column: 15, scope: !4776)
!4806 = !DILocation(line: 82, column: 22, scope: !4776)
!4807 = !DILocation(line: 82, column: 30, scope: !4776)
!4808 = !DILocation(line: 82, column: 71, scope: !4776)
!4809 = !DILocation(line: 84, column: 26, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 84, column: 6)
!4811 = !DILocation(line: 84, column: 33, scope: !4810)
!4812 = !DILocation(line: 84, column: 38, scope: !4810)
!4813 = !DILocation(line: 84, column: 13, scope: !4810)
!4814 = !DILocation(line: 84, column: 11, scope: !4810)
!4815 = !DILocation(line: 84, column: 47, scope: !4810)
!4816 = !DILocation(line: 84, column: 6, scope: !4776)
!4817 = !DILocation(line: 85, column: 55, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 84, column: 53)
!4819 = !DILocation(line: 85, column: 3, scope: !4818)
!4820 = !DILocation(line: 86, column: 3, scope: !4818)
!4821 = !DILocation(line: 89, column: 12, scope: !4776)
!4822 = !DILocation(line: 89, column: 18, scope: !4776)
!4823 = !DILocation(line: 89, column: 26, scope: !4776)
!4824 = !DILocation(line: 89, column: 24, scope: !4776)
!4825 = !DILocation(line: 89, column: 33, scope: !4776)
!4826 = !DILocation(line: 89, column: 2, scope: !4776)
!4827 = !DILocation(line: 90, column: 1, scope: !4776)
!4828 = distinct !DISubprogram(name: "get_order", scope: !4829, file: !4829, line: 29, type: !4830, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!4829 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!319, !489}
!4832 = !DILocalVariable(name: "x", arg: 1, scope: !4833, file: !4834, line: 366, type: !547)
!4833 = distinct !DISubprogram(name: "fls64", scope: !4834, file: !4834, line: 366, type: !4835, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!4834 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4835 = !DISubroutineType(types: !4836)
!4836 = !{!319, !547}
!4837 = !DILocation(line: 366, column: 40, scope: !4833, inlinedAt: !4838)
!4838 = distinct !DILocation(line: 46, column: 9, scope: !4828)
!4839 = !DILocalVariable(name: "bitpos", scope: !4833, file: !4834, line: 368, type: !319)
!4840 = !DILocation(line: 368, column: 6, scope: !4833, inlinedAt: !4838)
!4841 = !DILocalVariable(name: "size", arg: 1, scope: !4828, file: !4829, line: 29, type: !489)
!4842 = !DILocation(line: 29, column: 63, scope: !4828)
!4843 = !DILocation(line: 31, column: 27, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4828, file: !4829, line: 31, column: 6)
!4845 = !DILocation(line: 31, column: 6, scope: !4844)
!4846 = !DILocation(line: 31, column: 6, scope: !4828)
!4847 = !DILocation(line: 32, column: 8, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4849, file: !4829, line: 32, column: 7)
!4849 = distinct !DILexicalBlock(scope: !4844, file: !4829, line: 31, column: 34)
!4850 = !DILocation(line: 32, column: 7, scope: !4849)
!4851 = !DILocation(line: 33, column: 4, scope: !4848)
!4852 = !DILocation(line: 35, column: 7, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4849, file: !4829, line: 35, column: 7)
!4854 = !DILocation(line: 35, column: 12, scope: !4853)
!4855 = !DILocation(line: 35, column: 7, scope: !4849)
!4856 = !DILocation(line: 36, column: 4, scope: !4853)
!4857 = !DILocation(line: 38, column: 10, scope: !4849)
!4858 = !DILocation(line: 38, column: 28, scope: !4849)
!4859 = !DILocation(line: 38, column: 41, scope: !4849)
!4860 = !DILocation(line: 38, column: 3, scope: !4849)
!4861 = !DILocation(line: 41, column: 6, scope: !4828)
!4862 = !DILocation(line: 42, column: 7, scope: !4828)
!4863 = !DILocation(line: 46, column: 15, scope: !4828)
!4864 = !DILocation(line: 374, column: 2, scope: !4833, inlinedAt: !4838)
!4865 = !DILocation(line: 376, column: 14, scope: !4833, inlinedAt: !4838)
!4866 = !{i32 322305}
!4867 = !DILocation(line: 377, column: 9, scope: !4833, inlinedAt: !4838)
!4868 = !DILocation(line: 377, column: 16, scope: !4833, inlinedAt: !4838)
!4869 = !DILocation(line: 46, column: 2, scope: !4828)
!4870 = !DILocation(line: 48, column: 1, scope: !4828)
!4871 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4872, file: !4872, line: 30, type: !4873, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!4872 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!319, !546}
!4875 = !DILocation(line: 366, column: 40, scope: !4833, inlinedAt: !4876)
!4876 = distinct !DILocation(line: 32, column: 9, scope: !4871)
!4877 = !DILocation(line: 368, column: 6, scope: !4833, inlinedAt: !4876)
!4878 = !DILocalVariable(name: "n", arg: 1, scope: !4871, file: !4872, line: 30, type: !546)
!4879 = !DILocation(line: 30, column: 21, scope: !4871)
!4880 = !DILocation(line: 32, column: 15, scope: !4871)
!4881 = !DILocation(line: 374, column: 2, scope: !4833, inlinedAt: !4876)
!4882 = !DILocation(line: 376, column: 14, scope: !4833, inlinedAt: !4876)
!4883 = !DILocation(line: 377, column: 9, scope: !4833, inlinedAt: !4876)
!4884 = !DILocation(line: 377, column: 16, scope: !4833, inlinedAt: !4876)
!4885 = !DILocation(line: 32, column: 18, scope: !4871)
!4886 = !DILocation(line: 32, column: 2, scope: !4871)
!4887 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4888, file: !4888, line: 137, type: !4889, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!4888 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4889 = !DISubroutineType(types: !4890)
!4890 = !{!293, !1275, !2201, !930, !291}
!4891 = !DILocalVariable(name: "s", arg: 1, scope: !4887, file: !4888, line: 137, type: !1275)
!4892 = !DILocation(line: 137, column: 54, scope: !4887)
!4893 = !DILocalVariable(name: "object", arg: 2, scope: !4887, file: !4888, line: 137, type: !2201)
!4894 = !DILocation(line: 137, column: 69, scope: !4887)
!4895 = !DILocalVariable(name: "size", arg: 3, scope: !4887, file: !4888, line: 138, type: !930)
!4896 = !DILocation(line: 138, column: 12, scope: !4887)
!4897 = !DILocalVariable(name: "flags", arg: 4, scope: !4887, file: !4888, line: 138, type: !291)
!4898 = !DILocation(line: 138, column: 24, scope: !4887)
!4899 = !DILocation(line: 140, column: 17, scope: !4887)
!4900 = !DILocation(line: 140, column: 2, scope: !4887)
!4901 = distinct !DISubprogram(name: "sp887x_release", scope: !3, file: !3, line: 559, type: !4133, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!4902 = !DILocalVariable(name: "fe", arg: 1, scope: !4901, file: !3, line: 559, type: !4110)
!4903 = !DILocation(line: 559, column: 49, scope: !4901)
!4904 = !DILocalVariable(name: "state", scope: !4901, file: !3, line: 561, type: !399)
!4905 = !DILocation(line: 561, column: 23, scope: !4901)
!4906 = !DILocation(line: 561, column: 31, scope: !4901)
!4907 = !DILocation(line: 561, column: 35, scope: !4901)
!4908 = !DILocation(line: 562, column: 8, scope: !4901)
!4909 = !DILocation(line: 562, column: 2, scope: !4901)
!4910 = !DILocation(line: 563, column: 1, scope: !4901)
!4911 = distinct !DISubprogram(name: "sp887x_init", scope: !3, file: !3, line: 520, type: !4139, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!4912 = !DILocalVariable(name: "fe", arg: 1, scope: !4911, file: !3, line: 520, type: !4110)
!4913 = !DILocation(line: 520, column: 45, scope: !4911)
!4914 = !DILocalVariable(name: "state", scope: !4911, file: !3, line: 522, type: !399)
!4915 = !DILocation(line: 522, column: 23, scope: !4911)
!4916 = !DILocation(line: 522, column: 31, scope: !4911)
!4917 = !DILocation(line: 522, column: 35, scope: !4911)
!4918 = !DILocalVariable(name: "fw", scope: !4911, file: !3, line: 523, type: !4431)
!4919 = !DILocation(line: 523, column: 25, scope: !4911)
!4920 = !DILocalVariable(name: "ret", scope: !4911, file: !3, line: 524, type: !319)
!4921 = !DILocation(line: 524, column: 6, scope: !4911)
!4922 = !DILocation(line: 526, column: 7, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 526, column: 6)
!4924 = !DILocation(line: 526, column: 14, scope: !4923)
!4925 = !DILocation(line: 526, column: 6, scope: !4911)
!4926 = !DILocation(line: 528, column: 3, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 526, column: 27)
!4928 = !DILocation(line: 529, column: 9, scope: !4927)
!4929 = !DILocation(line: 529, column: 16, scope: !4927)
!4930 = !DILocation(line: 529, column: 24, scope: !4927)
!4931 = !DILocation(line: 529, column: 41, scope: !4927)
!4932 = !DILocation(line: 529, column: 7, scope: !4927)
!4933 = !DILocation(line: 530, column: 7, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4927, file: !3, line: 530, column: 7)
!4935 = !DILocation(line: 530, column: 7, scope: !4927)
!4936 = !DILocation(line: 531, column: 4, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4934, file: !3, line: 530, column: 12)
!4938 = !DILocation(line: 532, column: 11, scope: !4937)
!4939 = !DILocation(line: 532, column: 4, scope: !4937)
!4940 = !DILocation(line: 535, column: 30, scope: !4927)
!4941 = !DILocation(line: 535, column: 34, scope: !4927)
!4942 = !DILocation(line: 535, column: 9, scope: !4927)
!4943 = !DILocation(line: 535, column: 7, scope: !4927)
!4944 = !DILocation(line: 536, column: 20, scope: !4927)
!4945 = !DILocation(line: 536, column: 3, scope: !4927)
!4946 = !DILocation(line: 537, column: 7, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4927, file: !3, line: 537, column: 7)
!4948 = !DILocation(line: 537, column: 7, scope: !4927)
!4949 = !DILocation(line: 538, column: 4, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4947, file: !3, line: 537, column: 12)
!4951 = !DILocation(line: 539, column: 11, scope: !4950)
!4952 = !DILocation(line: 539, column: 4, scope: !4950)
!4953 = !DILocation(line: 541, column: 3, scope: !4927)
!4954 = !DILocation(line: 542, column: 3, scope: !4927)
!4955 = !DILocation(line: 542, column: 10, scope: !4927)
!4956 = !DILocation(line: 542, column: 22, scope: !4927)
!4957 = !DILocation(line: 543, column: 2, scope: !4927)
!4958 = !DILocation(line: 546, column: 18, scope: !4911)
!4959 = !DILocation(line: 546, column: 2, scope: !4911)
!4960 = !DILocation(line: 548, column: 2, scope: !4911)
!4961 = !DILocation(line: 549, column: 1, scope: !4911)
!4962 = distinct !DISubprogram(name: "sp887x_sleep", scope: !3, file: !3, line: 510, type: !4139, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!4963 = !DILocalVariable(name: "fe", arg: 1, scope: !4962, file: !3, line: 510, type: !4110)
!4964 = !DILocation(line: 510, column: 46, scope: !4962)
!4965 = !DILocalVariable(name: "state", scope: !4962, file: !3, line: 512, type: !399)
!4966 = !DILocation(line: 512, column: 23, scope: !4962)
!4967 = !DILocation(line: 512, column: 31, scope: !4962)
!4968 = !DILocation(line: 512, column: 35, scope: !4962)
!4969 = !DILocation(line: 515, column: 18, scope: !4962)
!4970 = !DILocation(line: 515, column: 2, scope: !4962)
!4971 = !DILocation(line: 517, column: 2, scope: !4962)
!4972 = distinct !DISubprogram(name: "sp887x_setup_frontend_parameters", scope: !3, file: !3, line: 349, type: !4139, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!4973 = !DILocalVariable(name: "fe", arg: 1, scope: !4972, file: !3, line: 349, type: !4110)
!4974 = !DILocation(line: 349, column: 66, scope: !4972)
!4975 = !DILocalVariable(name: "p", scope: !4972, file: !3, line: 351, type: !4172)
!4976 = !DILocation(line: 351, column: 34, scope: !4972)
!4977 = !DILocation(line: 351, column: 39, scope: !4972)
!4978 = !DILocation(line: 351, column: 43, scope: !4972)
!4979 = !DILocalVariable(name: "state", scope: !4972, file: !3, line: 352, type: !399)
!4980 = !DILocation(line: 352, column: 23, scope: !4972)
!4981 = !DILocation(line: 352, column: 31, scope: !4972)
!4982 = !DILocation(line: 352, column: 35, scope: !4972)
!4983 = !DILocalVariable(name: "actual_freq", scope: !4972, file: !3, line: 353, type: !7)
!4984 = !DILocation(line: 353, column: 11, scope: !4972)
!4985 = !DILocalVariable(name: "err", scope: !4972, file: !3, line: 354, type: !319)
!4986 = !DILocation(line: 354, column: 6, scope: !4972)
!4987 = !DILocalVariable(name: "val", scope: !4972, file: !3, line: 355, type: !332)
!4988 = !DILocation(line: 355, column: 6, scope: !4972)
!4989 = !DILocalVariable(name: "reg0xc05", scope: !4972, file: !3, line: 355, type: !332)
!4990 = !DILocation(line: 355, column: 11, scope: !4972)
!4991 = !DILocation(line: 357, column: 6, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 357, column: 6)
!4993 = !DILocation(line: 357, column: 9, scope: !4992)
!4994 = !DILocation(line: 357, column: 22, scope: !4992)
!4995 = !DILocation(line: 357, column: 33, scope: !4992)
!4996 = !DILocation(line: 358, column: 6, scope: !4992)
!4997 = !DILocation(line: 358, column: 9, scope: !4992)
!4998 = !DILocation(line: 358, column: 22, scope: !4992)
!4999 = !DILocation(line: 358, column: 33, scope: !4992)
!5000 = !DILocation(line: 359, column: 6, scope: !4992)
!5001 = !DILocation(line: 359, column: 9, scope: !4992)
!5002 = !DILocation(line: 359, column: 22, scope: !4992)
!5003 = !DILocation(line: 357, column: 6, scope: !4972)
!5004 = !DILocation(line: 360, column: 3, scope: !4992)
!5005 = !DILocation(line: 362, column: 32, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 362, column: 6)
!5007 = !DILocation(line: 362, column: 13, scope: !5006)
!5008 = !DILocation(line: 362, column: 11, scope: !5006)
!5009 = !DILocation(line: 362, column: 6, scope: !4972)
!5010 = !DILocation(line: 363, column: 10, scope: !5006)
!5011 = !DILocation(line: 363, column: 3, scope: !5006)
!5012 = !DILocation(line: 365, column: 30, scope: !4972)
!5013 = !DILocation(line: 365, column: 2, scope: !4972)
!5014 = !DILocation(line: 368, column: 6, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 368, column: 6)
!5016 = !DILocation(line: 368, column: 10, scope: !5015)
!5017 = !DILocation(line: 368, column: 14, scope: !5015)
!5018 = !DILocation(line: 368, column: 24, scope: !5015)
!5019 = !DILocation(line: 368, column: 6, scope: !4972)
!5020 = !DILocation(line: 369, column: 3, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 368, column: 36)
!5022 = !DILocation(line: 369, column: 7, scope: !5021)
!5023 = !DILocation(line: 369, column: 11, scope: !5021)
!5024 = !DILocation(line: 369, column: 21, scope: !5021)
!5025 = !DILocation(line: 369, column: 32, scope: !5021)
!5026 = !DILocation(line: 370, column: 7, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 370, column: 7)
!5028 = !DILocation(line: 370, column: 11, scope: !5027)
!5029 = !DILocation(line: 370, column: 15, scope: !5027)
!5030 = !DILocation(line: 370, column: 7, scope: !5021)
!5031 = !DILocation(line: 370, column: 30, scope: !5027)
!5032 = !DILocation(line: 370, column: 34, scope: !5027)
!5033 = !DILocation(line: 370, column: 38, scope: !5027)
!5034 = !DILocation(line: 370, column: 52, scope: !5027)
!5035 = !DILocation(line: 371, column: 2, scope: !5021)
!5036 = !DILocation(line: 372, column: 6, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 372, column: 6)
!5038 = !DILocation(line: 372, column: 10, scope: !5037)
!5039 = !DILocation(line: 372, column: 14, scope: !5037)
!5040 = !DILocation(line: 372, column: 24, scope: !5037)
!5041 = !DILocation(line: 372, column: 6, scope: !4972)
!5042 = !DILocation(line: 373, column: 3, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 372, column: 39)
!5044 = !DILocation(line: 373, column: 7, scope: !5043)
!5045 = !DILocation(line: 373, column: 11, scope: !5043)
!5046 = !DILocation(line: 373, column: 21, scope: !5043)
!5047 = !DILocation(line: 373, column: 35, scope: !5043)
!5048 = !DILocation(line: 374, column: 7, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5043, file: !3, line: 374, column: 7)
!5050 = !DILocation(line: 374, column: 11, scope: !5049)
!5051 = !DILocation(line: 374, column: 15, scope: !5049)
!5052 = !DILocation(line: 374, column: 7, scope: !5043)
!5053 = !DILocation(line: 374, column: 30, scope: !5049)
!5054 = !DILocation(line: 374, column: 34, scope: !5049)
!5055 = !DILocation(line: 374, column: 38, scope: !5049)
!5056 = !DILocation(line: 374, column: 52, scope: !5049)
!5057 = !DILocation(line: 375, column: 2, scope: !5043)
!5058 = !DILocation(line: 376, column: 17, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 375, column: 9)
!5060 = !DILocation(line: 376, column: 20, scope: !5059)
!5061 = !DILocation(line: 376, column: 15, scope: !5059)
!5062 = !DILocation(line: 380, column: 17, scope: !4972)
!5063 = !DILocation(line: 380, column: 2, scope: !4972)
!5064 = !DILocation(line: 382, column: 25, scope: !4972)
!5065 = !DILocation(line: 382, column: 32, scope: !4972)
!5066 = !DILocation(line: 382, column: 35, scope: !4972)
!5067 = !DILocation(line: 382, column: 2, scope: !4972)
!5068 = !DILocation(line: 385, column: 6, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 385, column: 6)
!5070 = !DILocation(line: 385, column: 9, scope: !5069)
!5071 = !DILocation(line: 385, column: 22, scope: !5069)
!5072 = !DILocation(line: 385, column: 6, scope: !4972)
!5073 = !DILocation(line: 386, column: 7, scope: !5069)
!5074 = !DILocation(line: 386, column: 3, scope: !5069)
!5075 = !DILocation(line: 387, column: 11, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 387, column: 11)
!5077 = !DILocation(line: 387, column: 14, scope: !5076)
!5078 = !DILocation(line: 387, column: 27, scope: !5076)
!5079 = !DILocation(line: 387, column: 11, scope: !5069)
!5080 = !DILocation(line: 388, column: 7, scope: !5076)
!5081 = !DILocation(line: 388, column: 3, scope: !5076)
!5082 = !DILocation(line: 390, column: 7, scope: !5076)
!5083 = !DILocation(line: 392, column: 18, scope: !4972)
!5084 = !DILocation(line: 392, column: 32, scope: !4972)
!5085 = !DILocation(line: 392, column: 2, scope: !4972)
!5086 = !DILocation(line: 395, column: 6, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 395, column: 6)
!5088 = !DILocation(line: 395, column: 9, scope: !5087)
!5089 = !DILocation(line: 395, column: 27, scope: !5087)
!5090 = !DILocation(line: 395, column: 6, scope: !4972)
!5091 = !DILocation(line: 396, column: 19, scope: !5087)
!5092 = !DILocation(line: 396, column: 3, scope: !5087)
!5093 = !DILocation(line: 398, column: 19, scope: !5087)
!5094 = !DILocation(line: 398, column: 3, scope: !5087)
!5095 = !DILocation(line: 400, column: 18, scope: !4972)
!5096 = !DILocation(line: 400, column: 32, scope: !4972)
!5097 = !DILocation(line: 400, column: 2, scope: !4972)
!5098 = !DILocation(line: 402, column: 6, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 402, column: 6)
!5100 = !DILocation(line: 402, column: 9, scope: !5099)
!5101 = !DILocation(line: 402, column: 22, scope: !5099)
!5102 = !DILocation(line: 402, column: 6, scope: !4972)
!5103 = !DILocation(line: 403, column: 7, scope: !5099)
!5104 = !DILocation(line: 403, column: 3, scope: !5099)
!5105 = !DILocation(line: 404, column: 11, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 404, column: 11)
!5107 = !DILocation(line: 404, column: 14, scope: !5106)
!5108 = !DILocation(line: 404, column: 27, scope: !5106)
!5109 = !DILocation(line: 404, column: 11, scope: !5099)
!5110 = !DILocation(line: 405, column: 7, scope: !5106)
!5111 = !DILocation(line: 405, column: 3, scope: !5106)
!5112 = !DILocation(line: 407, column: 7, scope: !5106)
!5113 = !DILocation(line: 412, column: 18, scope: !4972)
!5114 = !DILocation(line: 412, column: 40, scope: !4972)
!5115 = !DILocation(line: 412, column: 38, scope: !4972)
!5116 = !DILocation(line: 412, column: 32, scope: !4972)
!5117 = !DILocation(line: 412, column: 2, scope: !4972)
!5118 = !DILocation(line: 413, column: 18, scope: !4972)
!5119 = !DILocation(line: 413, column: 2, scope: !4972)
!5120 = !DILocation(line: 415, column: 31, scope: !4972)
!5121 = !DILocation(line: 415, column: 2, scope: !4972)
!5122 = !DILocation(line: 416, column: 2, scope: !4972)
!5123 = !DILocation(line: 417, column: 1, scope: !4972)
!5124 = distinct !DISubprogram(name: "sp887x_get_tune_settings", scope: !3, file: !3, line: 551, type: !4160, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!5125 = !DILocalVariable(name: "fe", arg: 1, scope: !5124, file: !3, line: 551, type: !4110)
!5126 = !DILocation(line: 551, column: 58, scope: !5124)
!5127 = !DILocalVariable(name: "fesettings", arg: 2, scope: !5124, file: !3, line: 551, type: !4162)
!5128 = !DILocation(line: 551, column: 97, scope: !5124)
!5129 = !DILocation(line: 553, column: 2, scope: !5124)
!5130 = !DILocation(line: 553, column: 14, scope: !5124)
!5131 = !DILocation(line: 553, column: 27, scope: !5124)
!5132 = !DILocation(line: 554, column: 2, scope: !5124)
!5133 = !DILocation(line: 554, column: 14, scope: !5124)
!5134 = !DILocation(line: 554, column: 24, scope: !5124)
!5135 = !DILocation(line: 555, column: 2, scope: !5124)
!5136 = !DILocation(line: 555, column: 14, scope: !5124)
!5137 = !DILocation(line: 555, column: 24, scope: !5124)
!5138 = !DILocation(line: 556, column: 2, scope: !5124)
!5139 = distinct !DISubprogram(name: "sp887x_read_status", scope: !3, file: !3, line: 419, type: !4247, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!5140 = !DILocalVariable(name: "fe", arg: 1, scope: !5139, file: !3, line: 419, type: !4110)
!5141 = !DILocation(line: 419, column: 52, scope: !5139)
!5142 = !DILocalVariable(name: "status", arg: 2, scope: !5139, file: !3, line: 419, type: !4152)
!5143 = !DILocation(line: 419, column: 72, scope: !5139)
!5144 = !DILocalVariable(name: "state", scope: !5139, file: !3, line: 421, type: !399)
!5145 = !DILocation(line: 421, column: 23, scope: !5139)
!5146 = !DILocation(line: 421, column: 31, scope: !5139)
!5147 = !DILocation(line: 421, column: 35, scope: !5139)
!5148 = !DILocalVariable(name: "snr12", scope: !5139, file: !3, line: 422, type: !332)
!5149 = !DILocation(line: 422, column: 6, scope: !5139)
!5150 = !DILocation(line: 422, column: 29, scope: !5139)
!5151 = !DILocation(line: 422, column: 14, scope: !5139)
!5152 = !DILocalVariable(name: "sync0x200", scope: !5139, file: !3, line: 423, type: !332)
!5153 = !DILocation(line: 423, column: 6, scope: !5139)
!5154 = !DILocation(line: 423, column: 33, scope: !5139)
!5155 = !DILocation(line: 423, column: 18, scope: !5139)
!5156 = !DILocalVariable(name: "sync0xf17", scope: !5139, file: !3, line: 424, type: !332)
!5157 = !DILocation(line: 424, column: 6, scope: !5139)
!5158 = !DILocation(line: 424, column: 33, scope: !5139)
!5159 = !DILocation(line: 424, column: 18, scope: !5139)
!5160 = !DILocation(line: 426, column: 3, scope: !5139)
!5161 = !DILocation(line: 426, column: 10, scope: !5139)
!5162 = !DILocation(line: 428, column: 6, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5139, file: !3, line: 428, column: 6)
!5164 = !DILocation(line: 428, column: 12, scope: !5163)
!5165 = !DILocation(line: 428, column: 6, scope: !5139)
!5166 = !DILocation(line: 429, column: 4, scope: !5163)
!5167 = !DILocation(line: 429, column: 11, scope: !5163)
!5168 = !DILocation(line: 429, column: 3, scope: !5163)
!5169 = !DILocation(line: 437, column: 7, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5139, file: !3, line: 437, column: 6)
!5171 = !DILocation(line: 437, column: 17, scope: !5170)
!5172 = !DILocation(line: 437, column: 26, scope: !5170)
!5173 = !DILocation(line: 437, column: 6, scope: !5139)
!5174 = !DILocation(line: 438, column: 4, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 437, column: 36)
!5176 = !DILocation(line: 438, column: 11, scope: !5175)
!5177 = !DILocation(line: 439, column: 4, scope: !5175)
!5178 = !DILocation(line: 439, column: 11, scope: !5175)
!5179 = !DILocation(line: 440, column: 2, scope: !5175)
!5180 = !DILocation(line: 442, column: 6, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5139, file: !3, line: 442, column: 6)
!5182 = !DILocation(line: 442, column: 16, scope: !5181)
!5183 = !DILocation(line: 442, column: 6, scope: !5139)
!5184 = !DILocalVariable(name: "steps", scope: !5185, file: !3, line: 443, type: !319)
!5185 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 442, column: 25)
!5186 = !DILocation(line: 443, column: 7, scope: !5185)
!5187 = !DILocation(line: 443, column: 16, scope: !5185)
!5188 = !DILocation(line: 443, column: 26, scope: !5185)
!5189 = !DILocation(line: 443, column: 32, scope: !5185)
!5190 = !DILocation(line: 444, column: 7, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 444, column: 7)
!5192 = !DILocation(line: 444, column: 13, scope: !5191)
!5193 = !DILocation(line: 444, column: 7, scope: !5185)
!5194 = !DILocation(line: 445, column: 13, scope: !5191)
!5195 = !DILocation(line: 445, column: 12, scope: !5191)
!5196 = !DILocation(line: 445, column: 10, scope: !5191)
!5197 = !DILocation(line: 445, column: 4, scope: !5191)
!5198 = !DILocation(line: 446, column: 3, scope: !5185)
!5199 = !DILocation(line: 446, column: 3, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 446, column: 3)
!5201 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 446, column: 3)
!5202 = !DILocation(line: 446, column: 3, scope: !5201)
!5203 = !DILocation(line: 448, column: 2, scope: !5185)
!5204 = !DILocation(line: 450, column: 2, scope: !5139)
!5205 = distinct !DISubprogram(name: "sp887x_read_ber", scope: !3, file: !3, line: 453, type: !4251, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!5206 = !DILocalVariable(name: "fe", arg: 1, scope: !5205, file: !3, line: 453, type: !4110)
!5207 = !DILocation(line: 453, column: 49, scope: !5205)
!5208 = !DILocalVariable(name: "ber", arg: 2, scope: !5205, file: !3, line: 453, type: !2831)
!5209 = !DILocation(line: 453, column: 58, scope: !5205)
!5210 = !DILocalVariable(name: "state", scope: !5205, file: !3, line: 455, type: !399)
!5211 = !DILocation(line: 455, column: 23, scope: !5205)
!5212 = !DILocation(line: 455, column: 31, scope: !5205)
!5213 = !DILocation(line: 455, column: 35, scope: !5205)
!5214 = !DILocation(line: 457, column: 25, scope: !5205)
!5215 = !DILocation(line: 457, column: 10, scope: !5205)
!5216 = !DILocation(line: 457, column: 39, scope: !5205)
!5217 = !DILocation(line: 458, column: 25, scope: !5205)
!5218 = !DILocation(line: 458, column: 10, scope: !5205)
!5219 = !DILocation(line: 458, column: 39, scope: !5205)
!5220 = !DILocation(line: 457, column: 47, scope: !5205)
!5221 = !DILocation(line: 457, column: 3, scope: !5205)
!5222 = !DILocation(line: 457, column: 7, scope: !5205)
!5223 = !DILocation(line: 459, column: 18, scope: !5205)
!5224 = !DILocation(line: 459, column: 2, scope: !5205)
!5225 = !DILocation(line: 460, column: 18, scope: !5205)
!5226 = !DILocation(line: 460, column: 2, scope: !5205)
!5227 = !DILocation(line: 461, column: 7, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 461, column: 6)
!5229 = !DILocation(line: 461, column: 6, scope: !5228)
!5230 = !DILocation(line: 461, column: 11, scope: !5228)
!5231 = !DILocation(line: 461, column: 6, scope: !5205)
!5232 = !DILocation(line: 462, column: 4, scope: !5228)
!5233 = !DILocation(line: 462, column: 8, scope: !5228)
!5234 = !DILocation(line: 462, column: 3, scope: !5228)
!5235 = !DILocation(line: 464, column: 2, scope: !5205)
!5236 = distinct !DISubprogram(name: "sp887x_read_signal_strength", scope: !3, file: !3, line: 467, type: !4255, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!5237 = !DILocalVariable(name: "fe", arg: 1, scope: !5236, file: !3, line: 467, type: !4110)
!5238 = !DILocation(line: 467, column: 61, scope: !5236)
!5239 = !DILocalVariable(name: "strength", arg: 2, scope: !5236, file: !3, line: 467, type: !4257)
!5240 = !DILocation(line: 467, column: 70, scope: !5236)
!5241 = !DILocalVariable(name: "state", scope: !5236, file: !3, line: 469, type: !399)
!5242 = !DILocation(line: 469, column: 23, scope: !5236)
!5243 = !DILocation(line: 469, column: 31, scope: !5236)
!5244 = !DILocation(line: 469, column: 35, scope: !5236)
!5245 = !DILocalVariable(name: "snr12", scope: !5236, file: !3, line: 471, type: !332)
!5246 = !DILocation(line: 471, column: 6, scope: !5236)
!5247 = !DILocation(line: 471, column: 29, scope: !5236)
!5248 = !DILocation(line: 471, column: 14, scope: !5236)
!5249 = !DILocalVariable(name: "signal", scope: !5236, file: !3, line: 472, type: !446)
!5250 = !DILocation(line: 472, column: 6, scope: !5236)
!5251 = !DILocation(line: 472, column: 20, scope: !5236)
!5252 = !DILocation(line: 472, column: 26, scope: !5236)
!5253 = !DILocation(line: 472, column: 17, scope: !5236)
!5254 = !DILocation(line: 473, column: 15, scope: !5236)
!5255 = !DILocation(line: 473, column: 22, scope: !5236)
!5256 = !DILocation(line: 473, column: 14, scope: !5236)
!5257 = !DILocation(line: 473, column: 34, scope: !5236)
!5258 = !DILocation(line: 473, column: 3, scope: !5236)
!5259 = !DILocation(line: 473, column: 12, scope: !5236)
!5260 = !DILocation(line: 475, column: 2, scope: !5236)
!5261 = distinct !DISubprogram(name: "sp887x_read_snr", scope: !3, file: !3, line: 478, type: !4255, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!5262 = !DILocalVariable(name: "fe", arg: 1, scope: !5261, file: !3, line: 478, type: !4110)
!5263 = !DILocation(line: 478, column: 49, scope: !5261)
!5264 = !DILocalVariable(name: "snr", arg: 2, scope: !5261, file: !3, line: 478, type: !4257)
!5265 = !DILocation(line: 478, column: 58, scope: !5261)
!5266 = !DILocalVariable(name: "state", scope: !5261, file: !3, line: 480, type: !399)
!5267 = !DILocation(line: 480, column: 23, scope: !5261)
!5268 = !DILocation(line: 480, column: 31, scope: !5261)
!5269 = !DILocation(line: 480, column: 35, scope: !5261)
!5270 = !DILocalVariable(name: "snr12", scope: !5261, file: !3, line: 482, type: !332)
!5271 = !DILocation(line: 482, column: 6, scope: !5261)
!5272 = !DILocation(line: 482, column: 29, scope: !5261)
!5273 = !DILocation(line: 482, column: 14, scope: !5261)
!5274 = !DILocation(line: 483, column: 10, scope: !5261)
!5275 = !DILocation(line: 483, column: 16, scope: !5261)
!5276 = !DILocation(line: 483, column: 25, scope: !5261)
!5277 = !DILocation(line: 483, column: 31, scope: !5261)
!5278 = !DILocation(line: 483, column: 22, scope: !5261)
!5279 = !DILocation(line: 483, column: 9, scope: !5261)
!5280 = !DILocation(line: 483, column: 3, scope: !5261)
!5281 = !DILocation(line: 483, column: 7, scope: !5261)
!5282 = !DILocation(line: 485, column: 2, scope: !5261)
!5283 = distinct !DISubprogram(name: "sp887x_read_ucblocks", scope: !3, file: !3, line: 488, type: !4251, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!5284 = !DILocalVariable(name: "fe", arg: 1, scope: !5283, file: !3, line: 488, type: !4110)
!5285 = !DILocation(line: 488, column: 54, scope: !5283)
!5286 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !5283, file: !3, line: 488, type: !2831)
!5287 = !DILocation(line: 488, column: 63, scope: !5283)
!5288 = !DILocalVariable(name: "state", scope: !5283, file: !3, line: 490, type: !399)
!5289 = !DILocation(line: 490, column: 23, scope: !5283)
!5290 = !DILocation(line: 490, column: 31, scope: !5283)
!5291 = !DILocation(line: 490, column: 35, scope: !5283)
!5292 = !DILocation(line: 492, column: 29, scope: !5283)
!5293 = !DILocation(line: 492, column: 14, scope: !5283)
!5294 = !DILocation(line: 492, column: 3, scope: !5283)
!5295 = !DILocation(line: 492, column: 12, scope: !5283)
!5296 = !DILocation(line: 493, column: 7, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 493, column: 6)
!5298 = !DILocation(line: 493, column: 6, scope: !5297)
!5299 = !DILocation(line: 493, column: 16, scope: !5297)
!5300 = !DILocation(line: 493, column: 6, scope: !5283)
!5301 = !DILocation(line: 494, column: 4, scope: !5297)
!5302 = !DILocation(line: 494, column: 13, scope: !5297)
!5303 = !DILocation(line: 494, column: 3, scope: !5297)
!5304 = !DILocation(line: 496, column: 2, scope: !5283)
!5305 = distinct !DISubprogram(name: "sp887x_i2c_gate_ctrl", scope: !3, file: !3, line: 499, type: !4304, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!5306 = !DILocalVariable(name: "fe", arg: 1, scope: !5305, file: !3, line: 499, type: !4110)
!5307 = !DILocation(line: 499, column: 54, scope: !5305)
!5308 = !DILocalVariable(name: "enable", arg: 2, scope: !5305, file: !3, line: 499, type: !319)
!5309 = !DILocation(line: 499, column: 62, scope: !5305)
!5310 = !DILocalVariable(name: "state", scope: !5305, file: !3, line: 501, type: !399)
!5311 = !DILocation(line: 501, column: 23, scope: !5305)
!5312 = !DILocation(line: 501, column: 31, scope: !5305)
!5313 = !DILocation(line: 501, column: 35, scope: !5305)
!5314 = !DILocation(line: 503, column: 6, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 503, column: 6)
!5316 = !DILocation(line: 503, column: 6, scope: !5305)
!5317 = !DILocation(line: 504, column: 26, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 503, column: 14)
!5319 = !DILocation(line: 504, column: 10, scope: !5318)
!5320 = !DILocation(line: 504, column: 3, scope: !5318)
!5321 = !DILocation(line: 506, column: 26, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 505, column: 9)
!5323 = !DILocation(line: 506, column: 10, scope: !5322)
!5324 = !DILocation(line: 506, column: 3, scope: !5322)
!5325 = !DILocation(line: 508, column: 1, scope: !5305)
!5326 = distinct !DISubprogram(name: "sp887x_initial_setup", scope: !3, file: !3, line: 137, type: !5327, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!5327 = !DISubroutineType(types: !5328)
!5328 = !{!319, !4110, !4431}
!5329 = !DILocalVariable(name: "fe", arg: 1, scope: !5326, file: !3, line: 137, type: !4110)
!5330 = !DILocation(line: 137, column: 55, scope: !5326)
!5331 = !DILocalVariable(name: "fw", arg: 2, scope: !5326, file: !3, line: 137, type: !4431)
!5332 = !DILocation(line: 137, column: 82, scope: !5326)
!5333 = !DILocalVariable(name: "state", scope: !5326, file: !3, line: 139, type: !399)
!5334 = !DILocation(line: 139, column: 23, scope: !5326)
!5335 = !DILocation(line: 139, column: 31, scope: !5326)
!5336 = !DILocation(line: 139, column: 35, scope: !5326)
!5337 = !DILocalVariable(name: "buf", scope: !5326, file: !3, line: 140, type: !5338)
!5338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 256, elements: !1634)
!5339 = !DILocation(line: 140, column: 5, scope: !5326)
!5340 = !DILocalVariable(name: "i", scope: !5326, file: !3, line: 141, type: !319)
!5341 = !DILocation(line: 141, column: 6, scope: !5326)
!5342 = !DILocalVariable(name: "fw_size", scope: !5326, file: !3, line: 142, type: !319)
!5343 = !DILocation(line: 142, column: 6, scope: !5326)
!5344 = !DILocation(line: 142, column: 16, scope: !5326)
!5345 = !DILocation(line: 142, column: 20, scope: !5326)
!5346 = !DILocalVariable(name: "mem", scope: !5326, file: !3, line: 143, type: !779)
!5347 = !DILocation(line: 143, column: 23, scope: !5326)
!5348 = !DILocation(line: 143, column: 29, scope: !5326)
!5349 = !DILocation(line: 143, column: 33, scope: !5326)
!5350 = !DILocation(line: 145, column: 2, scope: !5326)
!5351 = !DILocation(line: 145, column: 2, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 145, column: 2)
!5353 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 145, column: 2)
!5354 = !DILocation(line: 145, column: 2, scope: !5353)
!5355 = !DILocation(line: 148, column: 6, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 148, column: 6)
!5357 = !DILocation(line: 148, column: 14, scope: !5356)
!5358 = !DILocation(line: 148, column: 6, scope: !5326)
!5359 = !DILocation(line: 149, column: 3, scope: !5356)
!5360 = !DILocation(line: 151, column: 8, scope: !5326)
!5361 = !DILocation(line: 151, column: 12, scope: !5326)
!5362 = !DILocation(line: 151, column: 17, scope: !5326)
!5363 = !DILocation(line: 151, column: 6, scope: !5326)
!5364 = !DILocation(line: 154, column: 18, scope: !5326)
!5365 = !DILocation(line: 154, column: 2, scope: !5326)
!5366 = !DILocation(line: 156, column: 31, scope: !5326)
!5367 = !DILocation(line: 156, column: 2, scope: !5326)
!5368 = !DILocation(line: 158, column: 2, scope: !5326)
!5369 = !DILocation(line: 162, column: 18, scope: !5326)
!5370 = !DILocation(line: 162, column: 2, scope: !5326)
!5371 = !DILocation(line: 165, column: 18, scope: !5326)
!5372 = !DILocation(line: 165, column: 2, scope: !5326)
!5373 = !DILocation(line: 167, column: 9, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 167, column: 2)
!5375 = !DILocation(line: 167, column: 7, scope: !5374)
!5376 = !DILocation(line: 167, column: 14, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 167, column: 2)
!5378 = !DILocation(line: 167, column: 16, scope: !5377)
!5379 = !DILocation(line: 167, column: 2, scope: !5374)
!5380 = !DILocalVariable(name: "c", scope: !5381, file: !3, line: 168, type: !319)
!5381 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 167, column: 43)
!5382 = !DILocation(line: 168, column: 7, scope: !5381)
!5383 = !DILocalVariable(name: "err", scope: !5381, file: !3, line: 169, type: !319)
!5384 = !DILocation(line: 169, column: 7, scope: !5381)
!5385 = !DILocation(line: 171, column: 7, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 171, column: 7)
!5387 = !DILocation(line: 171, column: 21, scope: !5386)
!5388 = !DILocation(line: 171, column: 19, scope: !5386)
!5389 = !DILocation(line: 171, column: 9, scope: !5386)
!5390 = !DILocation(line: 171, column: 7, scope: !5381)
!5391 = !DILocation(line: 172, column: 18, scope: !5386)
!5392 = !DILocation(line: 172, column: 16, scope: !5386)
!5393 = !DILocation(line: 172, column: 6, scope: !5386)
!5394 = !DILocation(line: 172, column: 4, scope: !5386)
!5395 = !DILocation(line: 177, column: 3, scope: !5381)
!5396 = !DILocation(line: 177, column: 10, scope: !5381)
!5397 = !DILocation(line: 178, column: 3, scope: !5381)
!5398 = !DILocation(line: 178, column: 10, scope: !5381)
!5399 = !DILocation(line: 180, column: 11, scope: !5381)
!5400 = !DILocation(line: 180, column: 19, scope: !5381)
!5401 = !DILocation(line: 180, column: 25, scope: !5381)
!5402 = !DILocation(line: 180, column: 23, scope: !5381)
!5403 = !DILocation(line: 180, column: 28, scope: !5381)
!5404 = !DILocation(line: 180, column: 3, scope: !5381)
!5405 = !DILocation(line: 182, column: 30, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 182, column: 7)
!5407 = !DILocation(line: 182, column: 37, scope: !5406)
!5408 = !DILocation(line: 182, column: 42, scope: !5406)
!5409 = !DILocation(line: 182, column: 43, scope: !5406)
!5410 = !DILocation(line: 182, column: 14, scope: !5406)
!5411 = !DILocation(line: 182, column: 12, scope: !5406)
!5412 = !DILocation(line: 182, column: 48, scope: !5406)
!5413 = !DILocation(line: 182, column: 7, scope: !5381)
!5414 = !DILocation(line: 183, column: 4, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 182, column: 53)
!5416 = !DILocation(line: 184, column: 53, scope: !5415)
!5417 = !DILocation(line: 184, column: 4, scope: !5415)
!5418 = !DILocation(line: 185, column: 11, scope: !5415)
!5419 = !DILocation(line: 185, column: 4, scope: !5415)
!5420 = !DILocation(line: 187, column: 2, scope: !5381)
!5421 = !DILocation(line: 167, column: 29, scope: !5377)
!5422 = !DILocation(line: 167, column: 2, scope: !5377)
!5423 = distinct !{!5423, !5379, !5424}
!5424 = !DILocation(line: 187, column: 2, scope: !5374)
!5425 = !DILocation(line: 190, column: 18, scope: !5326)
!5426 = !DILocation(line: 190, column: 2, scope: !5326)
!5427 = !DILocation(line: 193, column: 18, scope: !5326)
!5428 = !DILocation(line: 193, column: 2, scope: !5326)
!5429 = !DILocation(line: 196, column: 18, scope: !5326)
!5430 = !DILocation(line: 196, column: 2, scope: !5326)
!5431 = !DILocation(line: 197, column: 18, scope: !5326)
!5432 = !DILocation(line: 197, column: 2, scope: !5326)
!5433 = !DILocation(line: 198, column: 18, scope: !5326)
!5434 = !DILocation(line: 198, column: 2, scope: !5326)
!5435 = !DILocation(line: 199, column: 18, scope: !5326)
!5436 = !DILocation(line: 199, column: 2, scope: !5326)
!5437 = !DILocation(line: 202, column: 18, scope: !5326)
!5438 = !DILocation(line: 202, column: 2, scope: !5326)
!5439 = !DILocation(line: 204, column: 19, scope: !5326)
!5440 = !DILocation(line: 204, column: 2, scope: !5326)
!5441 = !DILocation(line: 207, column: 18, scope: !5326)
!5442 = !DILocation(line: 207, column: 2, scope: !5326)
!5443 = !DILocation(line: 208, column: 18, scope: !5326)
!5444 = !DILocation(line: 208, column: 2, scope: !5326)
!5445 = !DILocation(line: 209, column: 2, scope: !5326)
!5446 = !DILocation(line: 210, column: 1, scope: !5326)
!5447 = distinct !DISubprogram(name: "sp887x_writereg", scope: !3, file: !3, line: 54, type: !5448, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!5448 = !DISubroutineType(types: !5449)
!5449 = !{!319, !399, !332, !332}
!5450 = !DILocalVariable(name: "state", arg: 1, scope: !5447, file: !3, line: 54, type: !399)
!5451 = !DILocation(line: 54, column: 50, scope: !5447)
!5452 = !DILocalVariable(name: "reg", arg: 2, scope: !5447, file: !3, line: 54, type: !332)
!5453 = !DILocation(line: 54, column: 61, scope: !5447)
!5454 = !DILocalVariable(name: "data", arg: 3, scope: !5447, file: !3, line: 54, type: !332)
!5455 = !DILocation(line: 54, column: 70, scope: !5447)
!5456 = !DILocalVariable(name: "b0", scope: !5447, file: !3, line: 56, type: !5457)
!5457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 32, elements: !2433)
!5458 = !DILocation(line: 56, column: 5, scope: !5447)
!5459 = !DILocation(line: 56, column: 13, scope: !5447)
!5460 = !DILocation(line: 56, column: 15, scope: !5447)
!5461 = !DILocation(line: 56, column: 19, scope: !5447)
!5462 = !DILocation(line: 56, column: 26, scope: !5447)
!5463 = !DILocation(line: 56, column: 30, scope: !5447)
!5464 = !DILocation(line: 56, column: 38, scope: !5447)
!5465 = !DILocation(line: 56, column: 43, scope: !5447)
!5466 = !DILocation(line: 56, column: 49, scope: !5447)
!5467 = !DILocation(line: 56, column: 54, scope: !5447)
!5468 = !DILocalVariable(name: "msg", scope: !5447, file: !3, line: 57, type: !419)
!5469 = !DILocation(line: 57, column: 17, scope: !5447)
!5470 = !DILocation(line: 57, column: 23, scope: !5447)
!5471 = !DILocation(line: 57, column: 33, scope: !5447)
!5472 = !DILocation(line: 57, column: 40, scope: !5447)
!5473 = !DILocation(line: 57, column: 48, scope: !5447)
!5474 = !DILocation(line: 57, column: 82, scope: !5447)
!5475 = !DILocalVariable(name: "ret", scope: !5447, file: !3, line: 58, type: !319)
!5476 = !DILocation(line: 58, column: 6, scope: !5447)
!5477 = !DILocation(line: 60, column: 26, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 60, column: 6)
!5479 = !DILocation(line: 60, column: 33, scope: !5478)
!5480 = !DILocation(line: 60, column: 13, scope: !5478)
!5481 = !DILocation(line: 60, column: 11, scope: !5478)
!5482 = !DILocation(line: 60, column: 48, scope: !5478)
!5483 = !DILocation(line: 60, column: 6, scope: !5447)
!5484 = !DILocation(line: 64, column: 9, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 64, column: 7)
!5486 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 60, column: 54)
!5487 = !DILocation(line: 64, column: 13, scope: !5485)
!5488 = !DILocation(line: 64, column: 22, scope: !5485)
!5489 = !DILocation(line: 64, column: 25, scope: !5485)
!5490 = !DILocation(line: 64, column: 30, scope: !5485)
!5491 = !DILocation(line: 64, column: 39, scope: !5485)
!5492 = !DILocation(line: 65, column: 5, scope: !5485)
!5493 = !DILocation(line: 65, column: 9, scope: !5485)
!5494 = !DILocation(line: 65, column: 23, scope: !5485)
!5495 = !DILocation(line: 65, column: 26, scope: !5485)
!5496 = !DILocation(line: 65, column: 30, scope: !5485)
!5497 = !DILocation(line: 64, column: 7, scope: !5486)
!5498 = !DILocation(line: 68, column: 21, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5485, file: !3, line: 66, column: 3)
!5500 = !DILocation(line: 68, column: 25, scope: !5499)
!5501 = !DILocation(line: 68, column: 35, scope: !5499)
!5502 = !DILocation(line: 68, column: 40, scope: !5499)
!5503 = !DILocation(line: 68, column: 50, scope: !5499)
!5504 = !DILocation(line: 67, column: 4, scope: !5499)
!5505 = !DILocation(line: 69, column: 11, scope: !5499)
!5506 = !DILocation(line: 69, column: 4, scope: !5499)
!5507 = !DILocation(line: 71, column: 2, scope: !5486)
!5508 = !DILocation(line: 73, column: 2, scope: !5447)
!5509 = !DILocation(line: 74, column: 1, scope: !5447)
!5510 = distinct !DISubprogram(name: "sp887x_microcontroller_stop", scope: !3, file: !3, line: 92, type: !5511, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{null, !399}
!5513 = !DILocalVariable(name: "state", arg: 1, scope: !5510, file: !3, line: 92, type: !399)
!5514 = !DILocation(line: 92, column: 63, scope: !5510)
!5515 = !DILocation(line: 94, column: 2, scope: !5510)
!5516 = !DILocation(line: 94, column: 2, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 94, column: 2)
!5518 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 94, column: 2)
!5519 = !DILocation(line: 94, column: 2, scope: !5518)
!5520 = !DILocation(line: 95, column: 18, scope: !5510)
!5521 = !DILocation(line: 95, column: 2, scope: !5510)
!5522 = !DILocation(line: 96, column: 18, scope: !5510)
!5523 = !DILocation(line: 96, column: 2, scope: !5510)
!5524 = !DILocation(line: 99, column: 18, scope: !5510)
!5525 = !DILocation(line: 99, column: 2, scope: !5510)
!5526 = !DILocation(line: 100, column: 1, scope: !5510)
!5527 = distinct !DISubprogram(name: "i2c_writebytes", scope: !3, file: !3, line: 40, type: !5528, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!5528 = !DISubroutineType(types: !5529)
!5529 = !{!319, !399, !4360, !342}
!5530 = !DILocalVariable(name: "state", arg: 1, scope: !5527, file: !3, line: 40, type: !399)
!5531 = !DILocation(line: 40, column: 49, scope: !5527)
!5532 = !DILocalVariable(name: "buf", arg: 2, scope: !5527, file: !3, line: 40, type: !4360)
!5533 = !DILocation(line: 40, column: 60, scope: !5527)
!5534 = !DILocalVariable(name: "len", arg: 3, scope: !5527, file: !3, line: 40, type: !342)
!5535 = !DILocation(line: 40, column: 68, scope: !5527)
!5536 = !DILocalVariable(name: "msg", scope: !5527, file: !3, line: 42, type: !419)
!5537 = !DILocation(line: 42, column: 17, scope: !5527)
!5538 = !DILocation(line: 42, column: 23, scope: !5527)
!5539 = !DILocation(line: 42, column: 33, scope: !5527)
!5540 = !DILocation(line: 42, column: 40, scope: !5527)
!5541 = !DILocation(line: 42, column: 48, scope: !5527)
!5542 = !DILocation(line: 42, column: 94, scope: !5527)
!5543 = !DILocation(line: 42, column: 82, scope: !5527)
!5544 = !DILocalVariable(name: "err", scope: !5527, file: !3, line: 43, type: !319)
!5545 = !DILocation(line: 43, column: 6, scope: !5527)
!5546 = !DILocation(line: 45, column: 27, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 45, column: 6)
!5548 = !DILocation(line: 45, column: 34, scope: !5547)
!5549 = !DILocation(line: 45, column: 13, scope: !5547)
!5550 = !DILocation(line: 45, column: 11, scope: !5547)
!5551 = !DILocation(line: 45, column: 49, scope: !5547)
!5552 = !DILocation(line: 45, column: 6, scope: !5527)
!5553 = !DILocation(line: 47, column: 14, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5547, file: !3, line: 45, column: 55)
!5555 = !DILocation(line: 47, column: 21, scope: !5554)
!5556 = !DILocation(line: 47, column: 29, scope: !5554)
!5557 = !DILocation(line: 47, column: 44, scope: !5554)
!5558 = !DILocation(line: 46, column: 3, scope: !5554)
!5559 = !DILocation(line: 48, column: 3, scope: !5554)
!5560 = !DILocation(line: 51, column: 2, scope: !5527)
!5561 = !DILocation(line: 52, column: 1, scope: !5527)
!5562 = distinct !DISubprogram(name: "sp887x_setup_agc", scope: !3, file: !3, line: 112, type: !5511, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!5563 = !DILocalVariable(name: "state", arg: 1, scope: !5562, file: !3, line: 112, type: !399)
!5564 = !DILocation(line: 112, column: 52, scope: !5562)
!5565 = !DILocation(line: 115, column: 2, scope: !5562)
!5566 = !DILocation(line: 115, column: 2, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5568, file: !3, line: 115, column: 2)
!5568 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 115, column: 2)
!5569 = !DILocation(line: 115, column: 2, scope: !5568)
!5570 = !DILocation(line: 116, column: 18, scope: !5562)
!5571 = !DILocation(line: 116, column: 2, scope: !5562)
!5572 = !DILocation(line: 117, column: 18, scope: !5562)
!5573 = !DILocation(line: 117, column: 2, scope: !5562)
!5574 = !DILocation(line: 118, column: 18, scope: !5562)
!5575 = !DILocation(line: 118, column: 2, scope: !5562)
!5576 = !DILocation(line: 119, column: 18, scope: !5562)
!5577 = !DILocation(line: 119, column: 2, scope: !5562)
!5578 = !DILocation(line: 120, column: 18, scope: !5562)
!5579 = !DILocation(line: 120, column: 2, scope: !5562)
!5580 = !DILocation(line: 121, column: 18, scope: !5562)
!5581 = !DILocation(line: 121, column: 2, scope: !5562)
!5582 = !DILocation(line: 122, column: 18, scope: !5562)
!5583 = !DILocation(line: 122, column: 2, scope: !5562)
!5584 = !DILocation(line: 123, column: 18, scope: !5562)
!5585 = !DILocation(line: 123, column: 2, scope: !5562)
!5586 = !DILocation(line: 124, column: 18, scope: !5562)
!5587 = !DILocation(line: 124, column: 2, scope: !5562)
!5588 = !DILocation(line: 125, column: 18, scope: !5562)
!5589 = !DILocation(line: 125, column: 2, scope: !5562)
!5590 = !DILocation(line: 126, column: 18, scope: !5562)
!5591 = !DILocation(line: 126, column: 2, scope: !5562)
!5592 = !DILocation(line: 127, column: 18, scope: !5562)
!5593 = !DILocation(line: 127, column: 2, scope: !5562)
!5594 = !DILocation(line: 128, column: 18, scope: !5562)
!5595 = !DILocation(line: 128, column: 2, scope: !5562)
!5596 = !DILocation(line: 129, column: 18, scope: !5562)
!5597 = !DILocation(line: 129, column: 2, scope: !5562)
!5598 = !DILocation(line: 130, column: 1, scope: !5562)
!5599 = distinct !DISubprogram(name: "configure_reg0xc05", scope: !3, file: !3, line: 212, type: !5600, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!5600 = !DISubroutineType(types: !5601)
!5601 = !{!319, !4172, !4257}
!5602 = !DILocalVariable(name: "p", arg: 1, scope: !5599, file: !3, line: 212, type: !4172)
!5603 = !DILocation(line: 212, column: 63, scope: !5599)
!5604 = !DILocalVariable(name: "reg0xc05", arg: 2, scope: !5599, file: !3, line: 212, type: !4257)
!5605 = !DILocation(line: 212, column: 71, scope: !5599)
!5606 = !DILocalVariable(name: "known_parameters", scope: !5599, file: !3, line: 214, type: !319)
!5607 = !DILocation(line: 214, column: 6, scope: !5599)
!5608 = !DILocation(line: 216, column: 3, scope: !5599)
!5609 = !DILocation(line: 216, column: 12, scope: !5599)
!5610 = !DILocation(line: 218, column: 10, scope: !5599)
!5611 = !DILocation(line: 218, column: 13, scope: !5599)
!5612 = !DILocation(line: 218, column: 2, scope: !5599)
!5613 = !DILocation(line: 220, column: 3, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5599, file: !3, line: 218, column: 25)
!5615 = !DILocation(line: 222, column: 4, scope: !5614)
!5616 = !DILocation(line: 222, column: 13, scope: !5614)
!5617 = !DILocation(line: 223, column: 3, scope: !5614)
!5618 = !DILocation(line: 225, column: 4, scope: !5614)
!5619 = !DILocation(line: 225, column: 13, scope: !5614)
!5620 = !DILocation(line: 226, column: 3, scope: !5614)
!5621 = !DILocation(line: 228, column: 20, scope: !5614)
!5622 = !DILocation(line: 229, column: 3, scope: !5614)
!5623 = !DILocation(line: 231, column: 3, scope: !5614)
!5624 = !DILocation(line: 234, column: 10, scope: !5599)
!5625 = !DILocation(line: 234, column: 13, scope: !5599)
!5626 = !DILocation(line: 234, column: 2, scope: !5599)
!5627 = !DILocation(line: 236, column: 3, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5599, file: !3, line: 234, column: 24)
!5629 = !DILocation(line: 238, column: 4, scope: !5628)
!5630 = !DILocation(line: 238, column: 13, scope: !5628)
!5631 = !DILocation(line: 239, column: 3, scope: !5628)
!5632 = !DILocation(line: 241, column: 4, scope: !5628)
!5633 = !DILocation(line: 241, column: 13, scope: !5628)
!5634 = !DILocation(line: 242, column: 3, scope: !5628)
!5635 = !DILocation(line: 244, column: 4, scope: !5628)
!5636 = !DILocation(line: 244, column: 13, scope: !5628)
!5637 = !DILocation(line: 245, column: 3, scope: !5628)
!5638 = !DILocation(line: 247, column: 20, scope: !5628)
!5639 = !DILocation(line: 248, column: 3, scope: !5628)
!5640 = !DILocation(line: 250, column: 3, scope: !5628)
!5641 = !DILocation(line: 253, column: 10, scope: !5599)
!5642 = !DILocation(line: 253, column: 13, scope: !5599)
!5643 = !DILocation(line: 253, column: 2, scope: !5599)
!5644 = !DILocation(line: 255, column: 3, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5599, file: !3, line: 253, column: 27)
!5646 = !DILocation(line: 257, column: 4, scope: !5645)
!5647 = !DILocation(line: 257, column: 13, scope: !5645)
!5648 = !DILocation(line: 258, column: 3, scope: !5645)
!5649 = !DILocation(line: 260, column: 4, scope: !5645)
!5650 = !DILocation(line: 260, column: 13, scope: !5645)
!5651 = !DILocation(line: 261, column: 3, scope: !5645)
!5652 = !DILocation(line: 263, column: 4, scope: !5645)
!5653 = !DILocation(line: 263, column: 13, scope: !5645)
!5654 = !DILocation(line: 264, column: 3, scope: !5645)
!5655 = !DILocation(line: 266, column: 4, scope: !5645)
!5656 = !DILocation(line: 266, column: 13, scope: !5645)
!5657 = !DILocation(line: 267, column: 3, scope: !5645)
!5658 = !DILocation(line: 269, column: 20, scope: !5645)
!5659 = !DILocation(line: 270, column: 3, scope: !5645)
!5660 = !DILocation(line: 272, column: 3, scope: !5645)
!5661 = !DILocation(line: 275, column: 6, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5599, file: !3, line: 275, column: 6)
!5663 = !DILocation(line: 275, column: 6, scope: !5599)
!5664 = !DILocation(line: 276, column: 4, scope: !5662)
!5665 = !DILocation(line: 276, column: 13, scope: !5662)
!5666 = !DILocation(line: 276, column: 3, scope: !5662)
!5667 = !DILocation(line: 278, column: 4, scope: !5662)
!5668 = !DILocation(line: 278, column: 13, scope: !5662)
!5669 = !DILocation(line: 280, column: 2, scope: !5599)
!5670 = !DILocation(line: 281, column: 1, scope: !5599)
!5671 = !DILocalVariable(name: "state", arg: 1, scope: !396, file: !3, line: 305, type: !399)
!5672 = !DILocation(line: 305, column: 58, scope: !396)
!5673 = !DILocalVariable(name: "p", arg: 2, scope: !396, file: !3, line: 306, type: !4172)
!5674 = !DILocation(line: 306, column: 41, scope: !396)
!5675 = !DILocalVariable(name: "actual_freq", arg: 3, scope: !396, file: !3, line: 307, type: !319)
!5676 = !DILocation(line: 307, column: 13, scope: !396)
!5677 = !DILocalVariable(name: "bw_index", scope: !396, file: !3, line: 310, type: !319)
!5678 = !DILocation(line: 310, column: 6, scope: !396)
!5679 = !DILocalVariable(name: "freq_offset", scope: !396, file: !3, line: 311, type: !319)
!5680 = !DILocation(line: 311, column: 6, scope: !396)
!5681 = !DILocation(line: 311, column: 20, scope: !396)
!5682 = !DILocation(line: 311, column: 34, scope: !396)
!5683 = !DILocation(line: 311, column: 37, scope: !396)
!5684 = !DILocation(line: 311, column: 32, scope: !396)
!5685 = !DILocalVariable(name: "sysclock", scope: !396, file: !3, line: 312, type: !319)
!5686 = !DILocation(line: 312, column: 6, scope: !396)
!5687 = !DILocalVariable(name: "ifreq", scope: !396, file: !3, line: 313, type: !319)
!5688 = !DILocation(line: 313, column: 6, scope: !396)
!5689 = !DILocalVariable(name: "freq", scope: !396, file: !3, line: 314, type: !319)
!5690 = !DILocation(line: 314, column: 6, scope: !396)
!5691 = !DILocalVariable(name: "frequency_shift", scope: !396, file: !3, line: 315, type: !319)
!5692 = !DILocation(line: 315, column: 6, scope: !396)
!5693 = !DILocation(line: 317, column: 10, scope: !396)
!5694 = !DILocation(line: 317, column: 13, scope: !396)
!5695 = !DILocation(line: 317, column: 2, scope: !396)
!5696 = !DILocation(line: 317, column: 27, scope: !396)
!5697 = !DILocation(line: 320, column: 12, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !396, file: !3, line: 317, column: 27)
!5699 = !DILocation(line: 321, column: 3, scope: !5698)
!5700 = !DILocation(line: 323, column: 12, scope: !5698)
!5701 = !DILocation(line: 324, column: 3, scope: !5698)
!5702 = !DILocation(line: 326, column: 12, scope: !5698)
!5703 = !DILocation(line: 327, column: 3, scope: !5698)
!5704 = !DILocation(line: 330, column: 6, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !396, file: !3, line: 330, column: 6)
!5706 = !DILocation(line: 330, column: 9, scope: !5705)
!5707 = !DILocation(line: 330, column: 19, scope: !5705)
!5708 = !DILocation(line: 330, column: 6, scope: !396)
!5709 = !DILocation(line: 331, column: 10, scope: !5705)
!5710 = !DILocation(line: 331, column: 18, scope: !5705)
!5711 = !DILocation(line: 331, column: 16, scope: !5705)
!5712 = !DILocation(line: 331, column: 8, scope: !5705)
!5713 = !DILocation(line: 331, column: 3, scope: !5705)
!5714 = !DILocation(line: 333, column: 10, scope: !5705)
!5715 = !DILocation(line: 333, column: 18, scope: !5705)
!5716 = !DILocation(line: 333, column: 16, scope: !5705)
!5717 = !DILocation(line: 333, column: 8, scope: !5705)
!5718 = !DILocation(line: 335, column: 9, scope: !396)
!5719 = !DILocation(line: 335, column: 14, scope: !396)
!5720 = !DILocation(line: 335, column: 21, scope: !396)
!5721 = !DILocation(line: 335, column: 2, scope: !396)
!5722 = !DILocation(line: 337, column: 6, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !396, file: !3, line: 337, column: 6)
!5724 = !DILocation(line: 337, column: 9, scope: !5723)
!5725 = !DILocation(line: 337, column: 19, scope: !5723)
!5726 = !DILocation(line: 337, column: 6, scope: !396)
!5727 = !DILocation(line: 338, column: 22, scope: !5723)
!5728 = !DILocation(line: 338, column: 21, scope: !5723)
!5729 = !DILocation(line: 338, column: 19, scope: !5723)
!5730 = !DILocation(line: 338, column: 3, scope: !5723)
!5731 = !DILocation(line: 341, column: 18, scope: !396)
!5732 = !DILocation(line: 341, column: 49, scope: !396)
!5733 = !DILocation(line: 341, column: 32, scope: !396)
!5734 = !DILocation(line: 341, column: 59, scope: !396)
!5735 = !DILocation(line: 341, column: 2, scope: !396)
!5736 = !DILocation(line: 342, column: 18, scope: !396)
!5737 = !DILocation(line: 342, column: 49, scope: !396)
!5738 = !DILocation(line: 342, column: 32, scope: !396)
!5739 = !DILocation(line: 342, column: 59, scope: !396)
!5740 = !DILocation(line: 342, column: 2, scope: !396)
!5741 = !DILocation(line: 345, column: 18, scope: !396)
!5742 = !DILocation(line: 345, column: 32, scope: !396)
!5743 = !DILocation(line: 345, column: 48, scope: !396)
!5744 = !DILocation(line: 345, column: 2, scope: !396)
!5745 = !DILocation(line: 346, column: 18, scope: !396)
!5746 = !DILocation(line: 346, column: 32, scope: !396)
!5747 = !DILocation(line: 346, column: 48, scope: !396)
!5748 = !DILocation(line: 346, column: 2, scope: !396)
!5749 = !DILocation(line: 347, column: 1, scope: !396)
!5750 = distinct !DISubprogram(name: "sp887x_microcontroller_start", scope: !3, file: !3, line: 102, type: !5511, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!5751 = !DILocalVariable(name: "state", arg: 1, scope: !5750, file: !3, line: 102, type: !399)
!5752 = !DILocation(line: 102, column: 64, scope: !5750)
!5753 = !DILocation(line: 104, column: 2, scope: !5750)
!5754 = !DILocation(line: 104, column: 2, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5756, file: !3, line: 104, column: 2)
!5756 = distinct !DILexicalBlock(scope: !5750, file: !3, line: 104, column: 2)
!5757 = !DILocation(line: 104, column: 2, scope: !5756)
!5758 = !DILocation(line: 105, column: 18, scope: !5750)
!5759 = !DILocation(line: 105, column: 2, scope: !5750)
!5760 = !DILocation(line: 106, column: 18, scope: !5750)
!5761 = !DILocation(line: 106, column: 2, scope: !5750)
!5762 = !DILocation(line: 109, column: 18, scope: !5750)
!5763 = !DILocation(line: 109, column: 2, scope: !5750)
!5764 = !DILocation(line: 110, column: 1, scope: !5750)
!5765 = distinct !DISubprogram(name: "divide", scope: !3, file: !3, line: 287, type: !5766, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !476)
!5766 = !DISubroutineType(types: !5767)
!5767 = !{null, !319, !319, !1062, !1062}
!5768 = !DILocalVariable(name: "n", arg: 1, scope: !5765, file: !3, line: 287, type: !319)
!5769 = !DILocation(line: 287, column: 25, scope: !5765)
!5770 = !DILocalVariable(name: "d", arg: 2, scope: !5765, file: !3, line: 287, type: !319)
!5771 = !DILocation(line: 287, column: 32, scope: !5765)
!5772 = !DILocalVariable(name: "quotient_i", arg: 3, scope: !5765, file: !3, line: 287, type: !1062)
!5773 = !DILocation(line: 287, column: 40, scope: !5765)
!5774 = !DILocalVariable(name: "quotient_f", arg: 4, scope: !5765, file: !3, line: 287, type: !1062)
!5775 = !DILocation(line: 287, column: 57, scope: !5765)
!5776 = !DILocalVariable(name: "q", scope: !5765, file: !3, line: 289, type: !7)
!5777 = !DILocation(line: 289, column: 15, scope: !5765)
!5778 = !DILocalVariable(name: "r", scope: !5765, file: !3, line: 289, type: !7)
!5779 = !DILocation(line: 289, column: 18, scope: !5765)
!5780 = !DILocation(line: 291, column: 7, scope: !5765)
!5781 = !DILocation(line: 291, column: 11, scope: !5765)
!5782 = !DILocation(line: 291, column: 9, scope: !5765)
!5783 = !DILocation(line: 291, column: 14, scope: !5765)
!5784 = !DILocation(line: 291, column: 4, scope: !5765)
!5785 = !DILocation(line: 292, column: 7, scope: !5765)
!5786 = !DILocation(line: 292, column: 11, scope: !5765)
!5787 = !DILocation(line: 292, column: 9, scope: !5765)
!5788 = !DILocation(line: 292, column: 4, scope: !5765)
!5789 = !DILocation(line: 294, column: 6, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5765, file: !3, line: 294, column: 6)
!5791 = !DILocation(line: 294, column: 6, scope: !5765)
!5792 = !DILocation(line: 295, column: 17, scope: !5790)
!5793 = !DILocation(line: 295, column: 4, scope: !5790)
!5794 = !DILocation(line: 295, column: 15, scope: !5790)
!5795 = !DILocation(line: 295, column: 3, scope: !5790)
!5796 = !DILocation(line: 297, column: 6, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5765, file: !3, line: 297, column: 6)
!5798 = !DILocation(line: 297, column: 6, scope: !5765)
!5799 = !DILocation(line: 298, column: 8, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5797, file: !3, line: 297, column: 18)
!5801 = !DILocation(line: 298, column: 12, scope: !5800)
!5802 = !DILocation(line: 298, column: 10, scope: !5800)
!5803 = !DILocation(line: 298, column: 15, scope: !5800)
!5804 = !DILocation(line: 298, column: 5, scope: !5800)
!5805 = !DILocation(line: 299, column: 8, scope: !5800)
!5806 = !DILocation(line: 299, column: 10, scope: !5800)
!5807 = !DILocation(line: 299, column: 19, scope: !5800)
!5808 = !DILocation(line: 299, column: 23, scope: !5800)
!5809 = !DILocation(line: 299, column: 21, scope: !5800)
!5810 = !DILocation(line: 299, column: 16, scope: !5800)
!5811 = !DILocation(line: 299, column: 5, scope: !5800)
!5812 = !DILocation(line: 300, column: 8, scope: !5800)
!5813 = !DILocation(line: 300, column: 12, scope: !5800)
!5814 = !DILocation(line: 300, column: 10, scope: !5800)
!5815 = !DILocation(line: 300, column: 15, scope: !5800)
!5816 = !DILocation(line: 300, column: 5, scope: !5800)
!5817 = !DILocation(line: 301, column: 18, scope: !5800)
!5818 = !DILocation(line: 301, column: 20, scope: !5800)
!5819 = !DILocation(line: 301, column: 29, scope: !5800)
!5820 = !DILocation(line: 301, column: 33, scope: !5800)
!5821 = !DILocation(line: 301, column: 31, scope: !5800)
!5822 = !DILocation(line: 301, column: 26, scope: !5800)
!5823 = !DILocation(line: 301, column: 4, scope: !5800)
!5824 = !DILocation(line: 301, column: 15, scope: !5800)
!5825 = !DILocation(line: 302, column: 2, scope: !5800)
!5826 = !DILocation(line: 303, column: 1, scope: !5765)
