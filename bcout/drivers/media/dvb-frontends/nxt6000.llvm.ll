; ModuleID = '../bcout/drivers/media/dvb-frontends/nxt6000.llvm.bc'
source_filename = "drivers/media/dvb-frontends/nxt6000.c"
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
%struct.nxt6000_config = type { i8, i8 }
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
%struct.nxt6000_state = type { %struct.i2c_adapter*, %struct.nxt6000_config*, %struct.dvb_frontend }

@nxt6000_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"NxtWave NXT6000 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 863250000, i32 62500, i32 0, i32 0, i32 9360000, i32 4000, i32 1780734 }, [8 x i8] c"\03\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @nxt6000_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @nxt6000_init, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @nxt6000_set_frontend, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @nxt6000_fe_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* null, i32 (%struct.dvb_frontend*, i32*)* @nxt6000_read_status, i32 (%struct.dvb_frontend*, i32*)* @nxt6000_read_ber, i32 (%struct.dvb_frontend*, i16*)* @nxt6000_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @nxt6000_read_snr, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* @nxt6000_i2c_gate_ctrl, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !0
@__param_str_debug = internal constant [14 x i8] c"nxt6000.debug\00", align 1, !dbg !400
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !398
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !296
@__UNIQUE_ID_debugtype220 = internal constant [27 x i8] c"nxt6000.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !368
@__UNIQUE_ID_debug221 = internal constant [65 x i8] c"nxt6000.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1, !dbg !373
@__UNIQUE_ID_description222 = internal constant [61 x i8] c"nxt6000.description=NxtWave NXT6000 DVB-T demodulator driver\00", section ".modinfo", align 1, !dbg !378
@__UNIQUE_ID_author223 = internal constant [32 x i8] c"nxt6000.author=Florian Schirmer\00", section ".modinfo", align 1, !dbg !383
@__UNIQUE_ID_file224 = internal constant [49 x i8] c"nxt6000.file=drivers/media/dvb-frontends/nxt6000\00", section ".modinfo", align 1, !dbg !388
@__UNIQUE_ID_license225 = internal constant [20 x i8] c"nxt6000.license=GPL\00", section ".modinfo", align 1, !dbg !393
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"\017nxt6000: %s: nxt6000: nxt6000_read error (reg: 0x%02X, ret: %d)\0A\00", align 1
@__func__.nxt6000_readreg = private unnamed_addr constant [16 x i8] c"nxt6000_readreg\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"\017nxt6000: %s: nxt6000: nxt6000_write error (reg: 0x%02X, data: 0x%02X, ret: %d)\0A\00", align 1
@__func__.nxt6000_writereg = private unnamed_addr constant [17 x i8] c"nxt6000_writereg\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\016nxt6000: NXT6000 status:\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"\01c DATA DESCR LOCK: %d,\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"\01c DATA SYNC LOCK: %d,\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"\01c VITERBI LOCK: %d,\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"\01c VITERBI CODERATE: 1/2,\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"\01c VITERBI CODERATE: 2/3,\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"\01c VITERBI CODERATE: 3/4,\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"\01c VITERBI CODERATE: 5/6,\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"\01c VITERBI CODERATE: 7/8,\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"\01c VITERBI CODERATE: Reserved,\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"\01c CHCTrack: %d,\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"\01c TPSLock: %d,\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"\01c SYRLock: %d,\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"\01c AGCLock: %d,\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"\01c CoreState: IDLE,\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"\01c CoreState: WAIT_AGC,\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"\01c CoreState: WAIT_SYR,\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"\01c CoreState: WAIT_PPM,\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"\01c CoreState: WAIT_TRL,\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"\01c CoreState: WAIT_TPS,\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"\01c CoreState: MONITOR_TPS,\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"\01c CoreState: Reserved,\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"\01c SYRMode: %s,\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"8K\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"2K\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"\01c SYRGuard: 1/32,\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"\01c SYRGuard: 1/16,\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"\01c SYRGuard: 1/8,\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"\01c SYRGuard: 1/4,\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"\01c TPSLP: 1/2,\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"\01c TPSLP: 2/3,\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"\01c TPSLP: 3/4,\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"\01c TPSLP: 5/6,\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"\01c TPSLP: 7/8,\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"\01c TPSLP: Reserved,\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"\01c TPSHP: 1/2,\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"\01c TPSHP: 2/3,\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"\01c TPSHP: 3/4,\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"\01c TPSHP: 5/6,\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"\01c TPSHP: 7/8,\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"\01c TPSHP: Reserved,\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"\01c TPSMode: %s,\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"\01c TPSGuard: 1/32,\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"\01c TPSGuard: 1/16,\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"\01c TPSGuard: 1/8,\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"\01c TPSGuard: 1/4,\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"\01c RF AGC LOCK: %d,\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_author223, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_file224, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license225, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @nxt6000_attach(%struct.nxt6000_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4302 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.nxt6000_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.nxt6000_state*, align 8
  store %struct.nxt6000_config* %config, %struct.nxt6000_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt6000_config** %config.addr, metadata !4434, metadata !DIExpression()), !dbg !4435
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4436, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.declare(metadata %struct.nxt6000_state** %state, metadata !4438, metadata !DIExpression()), !dbg !4445
  store %struct.nxt6000_state* null, %struct.nxt6000_state** %state, align 8, !dbg !4445
  %call = call i8* @kzalloc(i64 1296, i32 3264) #8, !dbg !4446
  %0 = bitcast i8* %call to %struct.nxt6000_state*, !dbg !4446
  store %struct.nxt6000_state* %0, %struct.nxt6000_state** %state, align 8, !dbg !4447
  %1 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !4448
  %cmp = icmp eq %struct.nxt6000_state* %1, null, !dbg !4450
  br i1 %cmp, label %if.then, label %if.end, !dbg !4451

if.then:                                          ; preds = %entry
  br label %error, !dbg !4452

if.end:                                           ; preds = %entry
  %2 = load %struct.nxt6000_config*, %struct.nxt6000_config** %config.addr, align 8, !dbg !4453
  %3 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !4454
  %config1 = getelementptr inbounds %struct.nxt6000_state, %struct.nxt6000_state* %3, i32 0, i32 1, !dbg !4455
  store %struct.nxt6000_config* %2, %struct.nxt6000_config** %config1, align 8, !dbg !4456
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4457
  %5 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !4458
  %i2c2 = getelementptr inbounds %struct.nxt6000_state, %struct.nxt6000_state* %5, i32 0, i32 0, !dbg !4459
  store %struct.i2c_adapter* %4, %struct.i2c_adapter** %i2c2, align 8, !dbg !4460
  %6 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !4461
  %call3 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %6, i8 zeroext 115) #8, !dbg !4463
  %conv = zext i8 %call3 to i32, !dbg !4463
  %cmp4 = icmp ne i32 %conv, 11, !dbg !4464
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !4465

if.then6:                                         ; preds = %if.end
  br label %error, !dbg !4466

if.end7:                                          ; preds = %if.end
  %7 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !4467
  %frontend = getelementptr inbounds %struct.nxt6000_state, %struct.nxt6000_state* %7, i32 0, i32 2, !dbg !4468
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4469
  %8 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4470
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @nxt6000_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4470
  %9 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !4471
  %10 = bitcast %struct.nxt6000_state* %9 to i8*, !dbg !4471
  %11 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !4472
  %frontend8 = getelementptr inbounds %struct.nxt6000_state, %struct.nxt6000_state* %11, i32 0, i32 2, !dbg !4473
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend8, i32 0, i32 3, !dbg !4474
  store i8* %10, i8** %demodulator_priv, align 8, !dbg !4475
  %12 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !4476
  %frontend9 = getelementptr inbounds %struct.nxt6000_state, %struct.nxt6000_state* %12, i32 0, i32 2, !dbg !4477
  store %struct.dvb_frontend* %frontend9, %struct.dvb_frontend** %retval, align 8, !dbg !4478
  br label %return, !dbg !4478

error:                                            ; preds = %if.then6, %if.then
  call void @llvm.dbg.label(metadata !4479), !dbg !4480
  %13 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !4481
  %14 = bitcast %struct.nxt6000_state* %13 to i8*, !dbg !4481
  call void @kfree(i8* %14) #8, !dbg !4482
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4483
  br label %return, !dbg !4483

return:                                           ; preds = %error, %if.end7
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4484
  ret %struct.dvb_frontend* %15, !dbg !4484
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4485 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4488, metadata !DIExpression()), !dbg !4492
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4498, metadata !DIExpression()), !dbg !4499
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4500, metadata !DIExpression()), !dbg !4501
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4502, metadata !DIExpression()), !dbg !4503
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4504, metadata !DIExpression()), !dbg !4508
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4510, metadata !DIExpression()), !dbg !4514
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4516, metadata !DIExpression()), !dbg !4520
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4525, metadata !DIExpression()), !dbg !4526
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4527, metadata !DIExpression()), !dbg !4528
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4529, metadata !DIExpression()), !dbg !4530
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4531, metadata !DIExpression()), !dbg !4532
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4533, metadata !DIExpression()), !dbg !4534
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4535, metadata !DIExpression()), !dbg !4536
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4537, metadata !DIExpression()), !dbg !4538
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4539, metadata !DIExpression()), !dbg !4540
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4541, metadata !DIExpression()), !dbg !4542
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4543, metadata !DIExpression()), !dbg !4544
  %0 = load i64, i64* %size.addr, align 8, !dbg !4545
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4546
  %or = or i32 %1, 256, !dbg !4547
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4548
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4549
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4550

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4551
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4552
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4553

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4554
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4555
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4556
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4557
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4534
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4558
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4559
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4560
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4561
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4562
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4563
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4564
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4564
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4564
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4564
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4564
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4565
  br label %kmalloc.exit, !dbg !4565

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4566
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4567
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4567
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4569

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4570
  br label %kmalloc_index.exit.i, !dbg !4570

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4571
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4573
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4574

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4575
  br label %kmalloc_index.exit.i, !dbg !4575

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4576
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4578
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4579

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4580
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4581
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4582

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4583
  br label %kmalloc_index.exit.i, !dbg !4583

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4584
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4586
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4587

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4588
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4589
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4590

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4591
  br label %kmalloc_index.exit.i, !dbg !4591

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4592
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4594
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4595

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4596
  br label %kmalloc_index.exit.i, !dbg !4596

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4597
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4599
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4600

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4601
  br label %kmalloc_index.exit.i, !dbg !4601

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4602
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4604
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4605

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4606
  br label %kmalloc_index.exit.i, !dbg !4606

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4607
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4609
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4610

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4611
  br label %kmalloc_index.exit.i, !dbg !4611

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4612
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4614
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4615

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4616
  br label %kmalloc_index.exit.i, !dbg !4616

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4617
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4619
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4620

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4621
  br label %kmalloc_index.exit.i, !dbg !4621

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4622
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4624
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4625

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4626
  br label %kmalloc_index.exit.i, !dbg !4626

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4627
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4629
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4630

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4631
  br label %kmalloc_index.exit.i, !dbg !4631

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4632
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4634
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4635

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4636
  br label %kmalloc_index.exit.i, !dbg !4636

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4637
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4639
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4640

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4641
  br label %kmalloc_index.exit.i, !dbg !4641

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4642
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4644
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4645

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4646
  br label %kmalloc_index.exit.i, !dbg !4646

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4647
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4649
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4650

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4651
  br label %kmalloc_index.exit.i, !dbg !4651

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4652
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4654
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4655

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4656
  br label %kmalloc_index.exit.i, !dbg !4656

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4657
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4659
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4660

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4661
  br label %kmalloc_index.exit.i, !dbg !4661

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4662
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4664
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4665

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4666
  br label %kmalloc_index.exit.i, !dbg !4666

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4667
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4669
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4670

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4671
  br label %kmalloc_index.exit.i, !dbg !4671

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4672
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4674
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4675

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4676
  br label %kmalloc_index.exit.i, !dbg !4676

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4677
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4679
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4680

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4681
  br label %kmalloc_index.exit.i, !dbg !4681

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4682
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4684
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4685

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4686
  br label %kmalloc_index.exit.i, !dbg !4686

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4687
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4689
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4690

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4691
  br label %kmalloc_index.exit.i, !dbg !4691

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4692
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4694
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4695

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4696
  br label %kmalloc_index.exit.i, !dbg !4696

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4697
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4699
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4700

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4701
  br label %kmalloc_index.exit.i, !dbg !4701

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4702
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4704
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4705

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4706
  br label %kmalloc_index.exit.i, !dbg !4706

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4707
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4709
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4710

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4711
  br label %kmalloc_index.exit.i, !dbg !4711

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4712, !srcloc !4715
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #9, !dbg !4716, !srcloc !4719
  unreachable, !dbg !4720

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4721
  store i32 %45, i32* %index.i, align 4, !dbg !4722
  %46 = load i32, i32* %index.i, align 4, !dbg !4723
  %tobool.i = icmp ne i32 %46, 0, !dbg !4723
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4725

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4726
  br label %kmalloc.exit, !dbg !4726

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4727
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4728
  %and.i.i = and i32 %48, 17, !dbg !4728
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4728
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4728
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4728
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4728
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4730

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4731
  br label %kmalloc_type.exit.i, !dbg !4731

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4732
  %and2.i.i = and i32 %49, 1, !dbg !4733
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4732
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4732
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4732
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4734
  br label %kmalloc_type.exit.i, !dbg !4734

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4735
  %idxprom.i = zext i32 %51 to i64, !dbg !4736
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4736
  %52 = load i32, i32* %index.i, align 4, !dbg !4737
  %idxprom6.i = zext i32 %52 to i64, !dbg !4736
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4736
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4736
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4738
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4739
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4740
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4741
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4742
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4742
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4742
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4742
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4742
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4503
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4743
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4744
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4745
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4746
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4747
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4748
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4749
  store i8* %62, i8** %retval.i, align 8, !dbg !4750
  br label %kmalloc.exit, !dbg !4750

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4751
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4752
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4753
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4753
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4753
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4753
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4753
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4754
  br label %kmalloc.exit, !dbg !4754

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4755
  ret i8* %65, !dbg !4756
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %state, i8 zeroext %reg) #0 !dbg !4757 {
entry:
  %state.addr = alloca %struct.nxt6000_state*, align 8
  %reg.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 16
  store %struct.nxt6000_state* %state, %struct.nxt6000_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt6000_state** %state.addr, metadata !4760, metadata !DIExpression()), !dbg !4761
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4762, metadata !DIExpression()), !dbg !4763
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4764, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.declare(metadata [1 x i8]* %b0, metadata !4766, metadata !DIExpression()), !dbg !4768
  %arrayinit.begin = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4769
  %0 = load i8, i8* %reg.addr, align 1, !dbg !4770
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !4769
  call void @llvm.dbg.declare(metadata [1 x i8]* %b1, metadata !4771, metadata !DIExpression()), !dbg !4772
  %1 = bitcast [1 x i8]* %b1 to i8*, !dbg !4772
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 1, i1 false), !dbg !4772
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msgs, metadata !4773, metadata !DIExpression()), !dbg !4775
  %arrayinit.begin1 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msgs, i64 0, i64 0, !dbg !4776
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 0, !dbg !4777
  %2 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !4778
  %config = getelementptr inbounds %struct.nxt6000_state, %struct.nxt6000_state* %2, i32 0, i32 1, !dbg !4779
  %3 = load %struct.nxt6000_config*, %struct.nxt6000_config** %config, align 8, !dbg !4779
  %demod_address = getelementptr inbounds %struct.nxt6000_config, %struct.nxt6000_config* %3, i32 0, i32 0, !dbg !4780
  %4 = load i8, i8* %demod_address, align 1, !dbg !4780
  %conv = zext i8 %4 to i16, !dbg !4778
  store i16 %conv, i16* %addr, align 16, !dbg !4777
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 1, !dbg !4777
  store i16 0, i16* %flags, align 2, !dbg !4777
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 2, !dbg !4777
  store i16 1, i16* %len, align 4, !dbg !4777
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 3, !dbg !4777
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4781
  store i8* %arraydecay, i8** %buf, align 8, !dbg !4777
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i64 1, !dbg !4776
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4782
  %5 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !4783
  %config3 = getelementptr inbounds %struct.nxt6000_state, %struct.nxt6000_state* %5, i32 0, i32 1, !dbg !4784
  %6 = load %struct.nxt6000_config*, %struct.nxt6000_config** %config3, align 8, !dbg !4784
  %demod_address4 = getelementptr inbounds %struct.nxt6000_config, %struct.nxt6000_config* %6, i32 0, i32 0, !dbg !4785
  %7 = load i8, i8* %demod_address4, align 1, !dbg !4785
  %conv5 = zext i8 %7 to i16, !dbg !4783
  store i16 %conv5, i16* %addr2, align 16, !dbg !4782
  %flags6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4782
  store i16 1, i16* %flags6, align 2, !dbg !4782
  %len7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4782
  store i16 1, i16* %len7, align 4, !dbg !4782
  %buf8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4782
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4786
  store i8* %arraydecay9, i8** %buf8, align 8, !dbg !4782
  %8 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !4787
  %i2c = getelementptr inbounds %struct.nxt6000_state, %struct.nxt6000_state* %8, i32 0, i32 0, !dbg !4788
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4788
  %arraydecay10 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msgs, i64 0, i64 0, !dbg !4789
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %9, %struct.i2c_msg* %arraydecay10, i32 2) #8, !dbg !4790
  store i32 %call, i32* %ret, align 4, !dbg !4791
  %10 = load i32, i32* %ret, align 4, !dbg !4792
  %cmp = icmp ne i32 %10, 2, !dbg !4794
  br i1 %cmp, label %if.then, label %if.end15, !dbg !4795

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4796

do.body:                                          ; preds = %if.then
  %11 = load i32, i32* @debug, align 4, !dbg !4797
  %tobool = icmp ne i32 %11, 0, !dbg !4797
  br i1 %tobool, label %if.then12, label %if.end, !dbg !4800

if.then12:                                        ; preds = %do.body
  %12 = load i8, i8* %reg.addr, align 1, !dbg !4797
  %conv13 = zext i8 %12 to i32, !dbg !4797
  %13 = load i32, i32* %ret, align 4, !dbg !4797
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.nxt6000_readreg, i64 0, i64 0), i32 %conv13, i32 %13) #12, !dbg !4797
  br label %if.end, !dbg !4797

if.end:                                           ; preds = %if.then12, %do.body
  br label %do.end, !dbg !4800

do.end:                                           ; preds = %if.end
  br label %if.end15, !dbg !4800

if.end15:                                         ; preds = %do.end, %entry
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4801
  %14 = load i8, i8* %arrayidx, align 1, !dbg !4801
  ret i8 %14, !dbg !4802
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
define internal i32 @get_order(i64 %size) #6 !dbg !4803 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4807, metadata !DIExpression()), !dbg !4812
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4814, metadata !DIExpression()), !dbg !4815
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4816, metadata !DIExpression()), !dbg !4817
  %0 = load i64, i64* %size.addr, align 8, !dbg !4818
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4820
  br i1 %1, label %if.then, label %if.end447, !dbg !4821

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4822
  %tobool = icmp ne i64 %2, 0, !dbg !4822
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4825

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4826
  br label %return, !dbg !4826

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4827
  %cmp = icmp ult i64 %3, 4096, !dbg !4829
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4830

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4831
  br label %return, !dbg !4831

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub = sub i64 %4, 1, !dbg !4832
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4832
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4832

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub4 = sub i64 %6, 1, !dbg !4832
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4832
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4832

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub6 = sub i64 %8, 1, !dbg !4832
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4832
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4832

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4832

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub9 = sub i64 %9, 1, !dbg !4832
  %and = and i64 %sub9, -9223372036854775808, !dbg !4832
  %tobool10 = icmp ne i64 %and, 0, !dbg !4832
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4832

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4832

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub13 = sub i64 %10, 1, !dbg !4832
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4832
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4832
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4832

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4832

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub18 = sub i64 %11, 1, !dbg !4832
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4832
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4832
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4832

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4832

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub23 = sub i64 %12, 1, !dbg !4832
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4832
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4832
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4832

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4832

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub28 = sub i64 %13, 1, !dbg !4832
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4832
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4832
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4832

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4832

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub33 = sub i64 %14, 1, !dbg !4832
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4832
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4832
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4832

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4832

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub38 = sub i64 %15, 1, !dbg !4832
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4832
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4832
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4832

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4832

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub43 = sub i64 %16, 1, !dbg !4832
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4832
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4832
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4832

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4832

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub48 = sub i64 %17, 1, !dbg !4832
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4832
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4832
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4832

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4832

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub53 = sub i64 %18, 1, !dbg !4832
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4832
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4832
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4832

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4832

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub58 = sub i64 %19, 1, !dbg !4832
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4832
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4832
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4832

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4832

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub63 = sub i64 %20, 1, !dbg !4832
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4832
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4832
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4832

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4832

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub68 = sub i64 %21, 1, !dbg !4832
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4832
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4832
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4832

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4832

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub73 = sub i64 %22, 1, !dbg !4832
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4832
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4832
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4832

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4832

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub78 = sub i64 %23, 1, !dbg !4832
  %and79 = and i64 %sub78, 562949953421312, !dbg !4832
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4832
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4832

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4832

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub83 = sub i64 %24, 1, !dbg !4832
  %and84 = and i64 %sub83, 281474976710656, !dbg !4832
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4832
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4832

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4832

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub88 = sub i64 %25, 1, !dbg !4832
  %and89 = and i64 %sub88, 140737488355328, !dbg !4832
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4832
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4832

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4832

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub93 = sub i64 %26, 1, !dbg !4832
  %and94 = and i64 %sub93, 70368744177664, !dbg !4832
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4832
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4832

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4832

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub98 = sub i64 %27, 1, !dbg !4832
  %and99 = and i64 %sub98, 35184372088832, !dbg !4832
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4832
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4832

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4832

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub103 = sub i64 %28, 1, !dbg !4832
  %and104 = and i64 %sub103, 17592186044416, !dbg !4832
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4832
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4832

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4832

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub108 = sub i64 %29, 1, !dbg !4832
  %and109 = and i64 %sub108, 8796093022208, !dbg !4832
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4832
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4832

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4832

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub113 = sub i64 %30, 1, !dbg !4832
  %and114 = and i64 %sub113, 4398046511104, !dbg !4832
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4832
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4832

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4832

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub118 = sub i64 %31, 1, !dbg !4832
  %and119 = and i64 %sub118, 2199023255552, !dbg !4832
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4832
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4832

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4832

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub123 = sub i64 %32, 1, !dbg !4832
  %and124 = and i64 %sub123, 1099511627776, !dbg !4832
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4832
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4832

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4832

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub128 = sub i64 %33, 1, !dbg !4832
  %and129 = and i64 %sub128, 549755813888, !dbg !4832
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4832
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4832

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4832

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub133 = sub i64 %34, 1, !dbg !4832
  %and134 = and i64 %sub133, 274877906944, !dbg !4832
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4832
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4832

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4832

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub138 = sub i64 %35, 1, !dbg !4832
  %and139 = and i64 %sub138, 137438953472, !dbg !4832
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4832
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4832

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4832

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub143 = sub i64 %36, 1, !dbg !4832
  %and144 = and i64 %sub143, 68719476736, !dbg !4832
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4832
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4832

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4832

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub148 = sub i64 %37, 1, !dbg !4832
  %and149 = and i64 %sub148, 34359738368, !dbg !4832
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4832
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4832

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4832

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub153 = sub i64 %38, 1, !dbg !4832
  %and154 = and i64 %sub153, 17179869184, !dbg !4832
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4832
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4832

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4832

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub158 = sub i64 %39, 1, !dbg !4832
  %and159 = and i64 %sub158, 8589934592, !dbg !4832
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4832
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4832

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4832

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub163 = sub i64 %40, 1, !dbg !4832
  %and164 = and i64 %sub163, 4294967296, !dbg !4832
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4832
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4832

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4832

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub168 = sub i64 %41, 1, !dbg !4832
  %and169 = and i64 %sub168, 2147483648, !dbg !4832
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4832
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4832

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4832

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub173 = sub i64 %42, 1, !dbg !4832
  %and174 = and i64 %sub173, 1073741824, !dbg !4832
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4832
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4832

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4832

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub178 = sub i64 %43, 1, !dbg !4832
  %and179 = and i64 %sub178, 536870912, !dbg !4832
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4832
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4832

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4832

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub183 = sub i64 %44, 1, !dbg !4832
  %and184 = and i64 %sub183, 268435456, !dbg !4832
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4832
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4832

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4832

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub188 = sub i64 %45, 1, !dbg !4832
  %and189 = and i64 %sub188, 134217728, !dbg !4832
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4832
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4832

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4832

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub193 = sub i64 %46, 1, !dbg !4832
  %and194 = and i64 %sub193, 67108864, !dbg !4832
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4832
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4832

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4832

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub198 = sub i64 %47, 1, !dbg !4832
  %and199 = and i64 %sub198, 33554432, !dbg !4832
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4832
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4832

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4832

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub203 = sub i64 %48, 1, !dbg !4832
  %and204 = and i64 %sub203, 16777216, !dbg !4832
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4832
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4832

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4832

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub208 = sub i64 %49, 1, !dbg !4832
  %and209 = and i64 %sub208, 8388608, !dbg !4832
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4832
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4832

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4832

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub213 = sub i64 %50, 1, !dbg !4832
  %and214 = and i64 %sub213, 4194304, !dbg !4832
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4832
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4832

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4832

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub218 = sub i64 %51, 1, !dbg !4832
  %and219 = and i64 %sub218, 2097152, !dbg !4832
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4832
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4832

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4832

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub223 = sub i64 %52, 1, !dbg !4832
  %and224 = and i64 %sub223, 1048576, !dbg !4832
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4832
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4832

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4832

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub228 = sub i64 %53, 1, !dbg !4832
  %and229 = and i64 %sub228, 524288, !dbg !4832
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4832
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4832

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4832

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub233 = sub i64 %54, 1, !dbg !4832
  %and234 = and i64 %sub233, 262144, !dbg !4832
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4832
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4832

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4832

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub238 = sub i64 %55, 1, !dbg !4832
  %and239 = and i64 %sub238, 131072, !dbg !4832
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4832
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4832

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4832

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub243 = sub i64 %56, 1, !dbg !4832
  %and244 = and i64 %sub243, 65536, !dbg !4832
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4832
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4832

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4832

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub248 = sub i64 %57, 1, !dbg !4832
  %and249 = and i64 %sub248, 32768, !dbg !4832
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4832
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4832

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4832

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub253 = sub i64 %58, 1, !dbg !4832
  %and254 = and i64 %sub253, 16384, !dbg !4832
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4832
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4832

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4832

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub258 = sub i64 %59, 1, !dbg !4832
  %and259 = and i64 %sub258, 8192, !dbg !4832
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4832
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4832

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4832

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub263 = sub i64 %60, 1, !dbg !4832
  %and264 = and i64 %sub263, 4096, !dbg !4832
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4832
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4832

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4832

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub268 = sub i64 %61, 1, !dbg !4832
  %and269 = and i64 %sub268, 2048, !dbg !4832
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4832
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4832

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4832

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub273 = sub i64 %62, 1, !dbg !4832
  %and274 = and i64 %sub273, 1024, !dbg !4832
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4832
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4832

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4832

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub278 = sub i64 %63, 1, !dbg !4832
  %and279 = and i64 %sub278, 512, !dbg !4832
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4832
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4832

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4832

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub283 = sub i64 %64, 1, !dbg !4832
  %and284 = and i64 %sub283, 256, !dbg !4832
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4832
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4832

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4832

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub288 = sub i64 %65, 1, !dbg !4832
  %and289 = and i64 %sub288, 128, !dbg !4832
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4832
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4832

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4832

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub293 = sub i64 %66, 1, !dbg !4832
  %and294 = and i64 %sub293, 64, !dbg !4832
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4832
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4832

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4832

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub298 = sub i64 %67, 1, !dbg !4832
  %and299 = and i64 %sub298, 32, !dbg !4832
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4832
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4832

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4832

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub303 = sub i64 %68, 1, !dbg !4832
  %and304 = and i64 %sub303, 16, !dbg !4832
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4832
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4832

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4832

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub308 = sub i64 %69, 1, !dbg !4832
  %and309 = and i64 %sub308, 8, !dbg !4832
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4832
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4832

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4832

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub313 = sub i64 %70, 1, !dbg !4832
  %and314 = and i64 %sub313, 4, !dbg !4832
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4832
  %71 = zext i1 %tobool315 to i64, !dbg !4832
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4832
  br label %cond.end, !dbg !4832

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4832
  br label %cond.end317, !dbg !4832

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4832
  br label %cond.end319, !dbg !4832

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4832
  br label %cond.end321, !dbg !4832

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4832
  br label %cond.end323, !dbg !4832

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4832
  br label %cond.end325, !dbg !4832

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4832
  br label %cond.end327, !dbg !4832

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4832
  br label %cond.end329, !dbg !4832

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4832
  br label %cond.end331, !dbg !4832

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4832
  br label %cond.end333, !dbg !4832

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4832
  br label %cond.end335, !dbg !4832

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4832
  br label %cond.end337, !dbg !4832

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4832
  br label %cond.end339, !dbg !4832

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4832
  br label %cond.end341, !dbg !4832

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4832
  br label %cond.end343, !dbg !4832

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4832
  br label %cond.end345, !dbg !4832

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4832
  br label %cond.end347, !dbg !4832

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4832
  br label %cond.end349, !dbg !4832

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4832
  br label %cond.end351, !dbg !4832

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4832
  br label %cond.end353, !dbg !4832

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4832
  br label %cond.end355, !dbg !4832

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4832
  br label %cond.end357, !dbg !4832

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4832
  br label %cond.end359, !dbg !4832

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4832
  br label %cond.end361, !dbg !4832

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4832
  br label %cond.end363, !dbg !4832

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4832
  br label %cond.end365, !dbg !4832

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4832
  br label %cond.end367, !dbg !4832

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4832
  br label %cond.end369, !dbg !4832

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4832
  br label %cond.end371, !dbg !4832

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4832
  br label %cond.end373, !dbg !4832

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4832
  br label %cond.end375, !dbg !4832

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4832
  br label %cond.end377, !dbg !4832

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4832
  br label %cond.end379, !dbg !4832

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4832
  br label %cond.end381, !dbg !4832

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4832
  br label %cond.end383, !dbg !4832

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4832
  br label %cond.end385, !dbg !4832

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4832
  br label %cond.end387, !dbg !4832

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4832
  br label %cond.end389, !dbg !4832

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4832
  br label %cond.end391, !dbg !4832

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4832
  br label %cond.end393, !dbg !4832

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4832
  br label %cond.end395, !dbg !4832

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4832
  br label %cond.end397, !dbg !4832

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4832
  br label %cond.end399, !dbg !4832

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4832
  br label %cond.end401, !dbg !4832

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4832
  br label %cond.end403, !dbg !4832

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4832
  br label %cond.end405, !dbg !4832

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4832
  br label %cond.end407, !dbg !4832

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4832
  br label %cond.end409, !dbg !4832

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4832
  br label %cond.end411, !dbg !4832

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4832
  br label %cond.end413, !dbg !4832

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4832
  br label %cond.end415, !dbg !4832

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4832
  br label %cond.end417, !dbg !4832

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4832
  br label %cond.end419, !dbg !4832

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4832
  br label %cond.end421, !dbg !4832

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4832
  br label %cond.end423, !dbg !4832

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4832
  br label %cond.end425, !dbg !4832

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4832
  br label %cond.end427, !dbg !4832

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4832
  br label %cond.end429, !dbg !4832

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4832
  br label %cond.end431, !dbg !4832

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4832
  br label %cond.end433, !dbg !4832

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4832
  br label %cond.end435, !dbg !4832

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4832
  br label %cond.end437, !dbg !4832

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4832
  br label %cond.end440, !dbg !4832

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4832

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4832
  br label %cond.end444, !dbg !4832

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4832
  %sub443 = sub i64 %72, 1, !dbg !4832
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4832
  br label %cond.end444, !dbg !4832

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4832
  %sub446 = sub i32 %cond445, 12, !dbg !4833
  %add = add i32 %sub446, 1, !dbg !4834
  store i32 %add, i32* %retval, align 4, !dbg !4835
  br label %return, !dbg !4835

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4836
  %dec = add i64 %73, -1, !dbg !4836
  store i64 %dec, i64* %size.addr, align 8, !dbg !4836
  %74 = load i64, i64* %size.addr, align 8, !dbg !4837
  %shr = lshr i64 %74, 12, !dbg !4837
  store i64 %shr, i64* %size.addr, align 8, !dbg !4837
  %75 = load i64, i64* %size.addr, align 8, !dbg !4838
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4815
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4839
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4840
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4839, !srcloc !4841
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4839
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4842
  %add.i = add i32 %79, 1, !dbg !4843
  store i32 %add.i, i32* %retval, align 4, !dbg !4844
  br label %return, !dbg !4844

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4845
  ret i32 %80, !dbg !4845
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4846 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4807, metadata !DIExpression()), !dbg !4850
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4814, metadata !DIExpression()), !dbg !4852
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4853, metadata !DIExpression()), !dbg !4854
  %0 = load i64, i64* %n.addr, align 8, !dbg !4855
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4852
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4856
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4857
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4856, !srcloc !4841
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4856
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4858
  %add.i = add i32 %4, 1, !dbg !4859
  %sub = sub i32 %add.i, 1, !dbg !4860
  ret i32 %sub, !dbg !4861
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4862 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4868, metadata !DIExpression()), !dbg !4869
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4870, metadata !DIExpression()), !dbg !4871
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4872, metadata !DIExpression()), !dbg !4873
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4874
  ret i8* %0, !dbg !4875
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nxt6000_release(%struct.dvb_frontend* %fe) #0 !dbg !4876 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.nxt6000_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4877, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.declare(metadata %struct.nxt6000_state** %state, metadata !4879, metadata !DIExpression()), !dbg !4880
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4881
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4882
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4882
  %2 = bitcast i8* %1 to %struct.nxt6000_state*, !dbg !4881
  store %struct.nxt6000_state* %2, %struct.nxt6000_state** %state, align 8, !dbg !4880
  %3 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !4883
  %4 = bitcast %struct.nxt6000_state* %3 to i8*, !dbg !4883
  call void @kfree(i8* %4) #8, !dbg !4884
  ret void, !dbg !4885
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt6000_init(%struct.dvb_frontend* %fe) #0 !dbg !4886 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.nxt6000_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4887, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.declare(metadata %struct.nxt6000_state** %state, metadata !4889, metadata !DIExpression()), !dbg !4890
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4891
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4892
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4892
  %2 = bitcast i8* %1 to %struct.nxt6000_state*, !dbg !4891
  store %struct.nxt6000_state* %2, %struct.nxt6000_state** %state, align 8, !dbg !4890
  %3 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !4893
  call void @nxt6000_reset(%struct.nxt6000_state* %3) #8, !dbg !4894
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4895
  call void @nxt6000_setup(%struct.dvb_frontend* %4) #8, !dbg !4896
  ret i32 0, !dbg !4897
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt6000_set_frontend(%struct.dvb_frontend* %fe) #0 !dbg !4898 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.nxt6000_state*, align 8
  %result = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4899, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !4901, metadata !DIExpression()), !dbg !4902
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4903
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !4904
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !4902
  call void @llvm.dbg.declare(metadata %struct.nxt6000_state** %state, metadata !4905, metadata !DIExpression()), !dbg !4906
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4907
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 3, !dbg !4908
  %2 = load i8*, i8** %demodulator_priv, align 8, !dbg !4908
  %3 = bitcast i8* %2 to %struct.nxt6000_state*, !dbg !4907
  store %struct.nxt6000_state* %3, %struct.nxt6000_state** %state, align 8, !dbg !4906
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4909, metadata !DIExpression()), !dbg !4910
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4911
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 1, !dbg !4913
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !4914
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !4915
  %5 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !4915
  %tobool = icmp ne i32 (%struct.dvb_frontend*)* %5, null, !dbg !4911
  br i1 %tobool, label %if.then, label %if.end10, !dbg !4916

if.then:                                          ; preds = %entry
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4917
  %ops1 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1, !dbg !4919
  %tuner_ops2 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops1, i32 0, i32 30, !dbg !4920
  %set_params3 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops2, i32 0, i32 6, !dbg !4921
  %7 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params3, align 8, !dbg !4921
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4922
  %call = call i32 %7(%struct.dvb_frontend* %8) #8, !dbg !4917
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4923
  %ops4 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1, !dbg !4925
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops4, i32 0, i32 26, !dbg !4926
  %10 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !4926
  %tobool5 = icmp ne i32 (%struct.dvb_frontend*, i32)* %10, null, !dbg !4923
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !4927

if.then6:                                         ; preds = %if.then
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4928
  %ops7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1, !dbg !4929
  %i2c_gate_ctrl8 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops7, i32 0, i32 26, !dbg !4930
  %12 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl8, align 8, !dbg !4930
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4931
  %call9 = call i32 %12(%struct.dvb_frontend* %13, i32 0) #8, !dbg !4928
  br label %if.end, !dbg !4928

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end10, !dbg !4932

if.end10:                                         ; preds = %if.end, %entry
  %14 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !4933
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !4934
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 7, !dbg !4935
  %16 = load i32, i32* %bandwidth_hz, align 4, !dbg !4935
  %call11 = call i32 @nxt6000_set_bandwidth(%struct.nxt6000_state* %14, i32 %16) #8, !dbg !4936
  store i32 %call11, i32* %result, align 4, !dbg !4937
  %17 = load i32, i32* %result, align 4, !dbg !4938
  %cmp = icmp slt i32 %17, 0, !dbg !4940
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !4941

if.then12:                                        ; preds = %if.end10
  %18 = load i32, i32* %result, align 4, !dbg !4942
  store i32 %18, i32* %retval, align 4, !dbg !4943
  br label %return, !dbg !4943

if.end13:                                         ; preds = %if.end10
  %19 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !4944
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !4945
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 8, !dbg !4946
  %21 = load i32, i32* %guard_interval, align 4, !dbg !4946
  %call14 = call i32 @nxt6000_set_guard_interval(%struct.nxt6000_state* %19, i32 %21) #8, !dbg !4947
  store i32 %call14, i32* %result, align 4, !dbg !4948
  %22 = load i32, i32* %result, align 4, !dbg !4949
  %cmp15 = icmp slt i32 %22, 0, !dbg !4951
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4952

if.then16:                                        ; preds = %if.end13
  %23 = load i32, i32* %result, align 4, !dbg !4953
  store i32 %23, i32* %retval, align 4, !dbg !4954
  br label %return, !dbg !4954

if.end17:                                         ; preds = %if.end13
  %24 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !4955
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !4956
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 6, !dbg !4957
  %26 = load i32, i32* %transmission_mode, align 4, !dbg !4957
  %call18 = call i32 @nxt6000_set_transmission_mode(%struct.nxt6000_state* %24, i32 %26) #8, !dbg !4958
  store i32 %call18, i32* %result, align 4, !dbg !4959
  %27 = load i32, i32* %result, align 4, !dbg !4960
  %cmp19 = icmp slt i32 %27, 0, !dbg !4962
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !4963

if.then20:                                        ; preds = %if.end17
  %28 = load i32, i32* %result, align 4, !dbg !4964
  store i32 %28, i32* %retval, align 4, !dbg !4965
  br label %return, !dbg !4965

if.end21:                                         ; preds = %if.end17
  %29 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !4966
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !4967
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 4, !dbg !4968
  %31 = load i32, i32* %inversion, align 4, !dbg !4968
  %call22 = call i32 @nxt6000_set_inversion(%struct.nxt6000_state* %29, i32 %31) #8, !dbg !4969
  store i32 %call22, i32* %result, align 4, !dbg !4970
  %32 = load i32, i32* %result, align 4, !dbg !4971
  %cmp23 = icmp slt i32 %32, 0, !dbg !4973
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !4974

if.then24:                                        ; preds = %if.end21
  %33 = load i32, i32* %result, align 4, !dbg !4975
  store i32 %33, i32* %retval, align 4, !dbg !4976
  br label %return, !dbg !4976

if.end25:                                         ; preds = %if.end21
  call void @msleep(i32 500) #8, !dbg !4977
  store i32 0, i32* %retval, align 4, !dbg !4978
  br label %return, !dbg !4978

return:                                           ; preds = %if.end25, %if.then24, %if.then20, %if.then16, %if.then12
  %34 = load i32, i32* %retval, align 4, !dbg !4979
  ret i32 %34, !dbg !4979
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt6000_fe_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %tune) #0 !dbg !4980 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %tune.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4981, metadata !DIExpression()), !dbg !4982
  store %struct.dvb_frontend_tune_settings* %tune, %struct.dvb_frontend_tune_settings** %tune.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %tune.addr, metadata !4983, metadata !DIExpression()), !dbg !4984
  %0 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %tune.addr, align 8, !dbg !4985
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %0, i32 0, i32 0, !dbg !4986
  store i32 500, i32* %min_delay_ms, align 4, !dbg !4987
  ret i32 0, !dbg !4988
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt6000_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !4989 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %core_status = alloca i8, align 1
  %state = alloca %struct.nxt6000_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4990, metadata !DIExpression()), !dbg !4991
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !4992, metadata !DIExpression()), !dbg !4993
  call void @llvm.dbg.declare(metadata i8* %core_status, metadata !4994, metadata !DIExpression()), !dbg !4995
  call void @llvm.dbg.declare(metadata %struct.nxt6000_state** %state, metadata !4996, metadata !DIExpression()), !dbg !4997
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4998
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4999
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4999
  %2 = bitcast i8* %1 to %struct.nxt6000_state*, !dbg !4998
  store %struct.nxt6000_state* %2, %struct.nxt6000_state** %state, align 8, !dbg !4997
  %3 = load i32*, i32** %status.addr, align 8, !dbg !5000
  store i32 0, i32* %3, align 4, !dbg !5001
  %4 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5002
  %call = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %4, i8 zeroext 65) #8, !dbg !5003
  store i8 %call, i8* %core_status, align 1, !dbg !5004
  %5 = load i8, i8* %core_status, align 1, !dbg !5005
  %conv = zext i8 %5 to i32, !dbg !5005
  %and = and i32 %conv, 16, !dbg !5007
  %tobool = icmp ne i32 %and, 0, !dbg !5007
  br i1 %tobool, label %if.then, label %if.end, !dbg !5008

if.then:                                          ; preds = %entry
  %6 = load i32*, i32** %status.addr, align 8, !dbg !5009
  %7 = load i32, i32* %6, align 4, !dbg !5010
  %or = or i32 %7, 1, !dbg !5010
  store i32 %or, i32* %6, align 4, !dbg !5010
  br label %if.end, !dbg !5011

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5012
  %call1 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %8, i8 zeroext 82) #8, !dbg !5014
  %conv2 = zext i8 %call1 to i32, !dbg !5014
  %and3 = and i32 %conv2, 16, !dbg !5015
  %tobool4 = icmp ne i32 %and3, 0, !dbg !5015
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !5016

if.then5:                                         ; preds = %if.end
  %9 = load i32*, i32** %status.addr, align 8, !dbg !5017
  %10 = load i32, i32* %9, align 4, !dbg !5018
  %or6 = or i32 %10, 2, !dbg !5018
  store i32 %or6, i32* %9, align 4, !dbg !5018
  br label %if.end7, !dbg !5019

if.end7:                                          ; preds = %if.then5, %if.end
  %11 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5020
  %call8 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %11, i8 zeroext 50) #8, !dbg !5022
  %conv9 = zext i8 %call8 to i32, !dbg !5022
  %and10 = and i32 %conv9, 128, !dbg !5023
  %tobool11 = icmp ne i32 %and10, 0, !dbg !5023
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !5024

if.then12:                                        ; preds = %if.end7
  %12 = load i32*, i32** %status.addr, align 8, !dbg !5025
  %13 = load i32, i32* %12, align 4, !dbg !5026
  %or13 = or i32 %13, 4, !dbg !5026
  store i32 %or13, i32* %12, align 4, !dbg !5026
  br label %if.end14, !dbg !5027

if.end14:                                         ; preds = %if.then12, %if.end7
  %14 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5028
  %call15 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %14, i8 zeroext 33) #8, !dbg !5030
  %conv16 = zext i8 %call15 to i32, !dbg !5030
  %and17 = and i32 %conv16, 3, !dbg !5031
  %tobool18 = icmp ne i32 %and17, 0, !dbg !5031
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !5032

if.then19:                                        ; preds = %if.end14
  %15 = load i32*, i32** %status.addr, align 8, !dbg !5033
  %16 = load i32, i32* %15, align 4, !dbg !5034
  %or20 = or i32 %16, 8, !dbg !5034
  store i32 %or20, i32* %15, align 4, !dbg !5034
  br label %if.end21, !dbg !5035

if.end21:                                         ; preds = %if.then19, %if.end14
  %17 = load i8, i8* %core_status, align 1, !dbg !5036
  %conv22 = zext i8 %17 to i32, !dbg !5036
  %and23 = and i32 %conv22, 64, !dbg !5038
  %tobool24 = icmp ne i32 %and23, 0, !dbg !5038
  br i1 %tobool24, label %land.lhs.true, label %if.end28, !dbg !5039

land.lhs.true:                                    ; preds = %if.end21
  %18 = load i32*, i32** %status.addr, align 8, !dbg !5040
  %19 = load i32, i32* %18, align 4, !dbg !5041
  %cmp = icmp eq i32 %19, 15, !dbg !5042
  br i1 %cmp, label %if.then26, label %if.end28, !dbg !5043

if.then26:                                        ; preds = %land.lhs.true
  %20 = load i32*, i32** %status.addr, align 8, !dbg !5044
  %21 = load i32, i32* %20, align 4, !dbg !5045
  %or27 = or i32 %21, 16, !dbg !5045
  store i32 %or27, i32* %20, align 4, !dbg !5045
  br label %if.end28, !dbg !5046

if.end28:                                         ; preds = %if.then26, %land.lhs.true, %if.end21
  %22 = load i32, i32* @debug, align 4, !dbg !5047
  %tobool29 = icmp ne i32 %22, 0, !dbg !5047
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !5049

if.then30:                                        ; preds = %if.end28
  %23 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5050
  call void @nxt6000_dump_status(%struct.nxt6000_state* %23) #8, !dbg !5051
  br label %if.end31, !dbg !5051

if.end31:                                         ; preds = %if.then30, %if.end28
  ret i32 0, !dbg !5052
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt6000_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5053 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %state = alloca %struct.nxt6000_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5054, metadata !DIExpression()), !dbg !5055
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5056, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.declare(metadata %struct.nxt6000_state** %state, metadata !5058, metadata !DIExpression()), !dbg !5059
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5060
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5061
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5061
  %2 = bitcast i8* %1 to %struct.nxt6000_state*, !dbg !5060
  store %struct.nxt6000_state* %2, %struct.nxt6000_state** %state, align 8, !dbg !5059
  %3 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5062
  %call = call i32 @nxt6000_writereg(%struct.nxt6000_state* %3, i8 zeroext 52, i8 zeroext 24) #8, !dbg !5063
  %4 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5064
  %call1 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %4, i8 zeroext 59) #8, !dbg !5065
  %conv = zext i8 %call1 to i32, !dbg !5065
  %shl = shl i32 %conv, 8, !dbg !5066
  %5 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5067
  %call2 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %5, i8 zeroext 60) #8, !dbg !5068
  %conv3 = zext i8 %call2 to i32, !dbg !5068
  %or = or i32 %shl, %conv3, !dbg !5069
  %6 = load i32*, i32** %ber.addr, align 8, !dbg !5070
  store i32 %or, i32* %6, align 4, !dbg !5071
  %7 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5072
  %call4 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %7, i8 zeroext 52, i8 zeroext 24) #8, !dbg !5073
  ret i32 0, !dbg !5074
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt6000_read_signal_strength(%struct.dvb_frontend* %fe, i16* %signal_strength) #0 !dbg !5075 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %signal_strength.addr = alloca i16*, align 8
  %state = alloca %struct.nxt6000_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5076, metadata !DIExpression()), !dbg !5077
  store i16* %signal_strength, i16** %signal_strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %signal_strength.addr, metadata !5078, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.declare(metadata %struct.nxt6000_state** %state, metadata !5080, metadata !DIExpression()), !dbg !5081
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5082
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5083
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5083
  %2 = bitcast i8* %1 to %struct.nxt6000_state*, !dbg !5082
  store %struct.nxt6000_state* %2, %struct.nxt6000_state** %state, align 8, !dbg !5081
  %3 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5084
  %call = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %3, i8 zeroext 73) #8, !dbg !5085
  %conv = zext i8 %call to i32, !dbg !5085
  %4 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5086
  %call1 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %4, i8 zeroext 74) #8, !dbg !5087
  %conv2 = zext i8 %call1 to i32, !dbg !5087
  %and = and i32 %conv2, 3, !dbg !5088
  %shl = shl i32 %and, 8, !dbg !5089
  %add = add i32 %conv, %shl, !dbg !5090
  %sub = sub i32 511, %add, !dbg !5091
  %conv3 = trunc i32 %sub to i16, !dbg !5092
  %5 = load i16*, i16** %signal_strength.addr, align 8, !dbg !5093
  store i16 %conv3, i16* %5, align 2, !dbg !5094
  ret i32 0, !dbg !5095
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt6000_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5096 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %state = alloca %struct.nxt6000_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5097, metadata !DIExpression()), !dbg !5098
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5099, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.declare(metadata %struct.nxt6000_state** %state, metadata !5101, metadata !DIExpression()), !dbg !5102
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5103
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5104
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5104
  %2 = bitcast i8* %1 to %struct.nxt6000_state*, !dbg !5103
  store %struct.nxt6000_state* %2, %struct.nxt6000_state** %state, align 8, !dbg !5102
  %3 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5105
  %call = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %3, i8 zeroext 100) #8, !dbg !5106
  %conv = zext i8 %call to i32, !dbg !5106
  %div = sdiv i32 %conv, 8, !dbg !5107
  %conv1 = trunc i32 %div to i16, !dbg !5106
  %4 = load i16*, i16** %snr.addr, align 8, !dbg !5108
  store i16 %conv1, i16* %4, align 2, !dbg !5109
  ret i32 0, !dbg !5110
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt6000_i2c_gate_ctrl(%struct.dvb_frontend* %fe, i32 %enable) #0 !dbg !5111 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %enable.addr = alloca i32, align 4
  %state = alloca %struct.nxt6000_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5112, metadata !DIExpression()), !dbg !5113
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !5114, metadata !DIExpression()), !dbg !5115
  call void @llvm.dbg.declare(metadata %struct.nxt6000_state** %state, metadata !5116, metadata !DIExpression()), !dbg !5117
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5118
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5119
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5119
  %2 = bitcast i8* %1 to %struct.nxt6000_state*, !dbg !5118
  store %struct.nxt6000_state* %2, %struct.nxt6000_state** %state, align 8, !dbg !5117
  %3 = load i32, i32* %enable.addr, align 4, !dbg !5120
  %tobool = icmp ne i32 %3, 0, !dbg !5120
  br i1 %tobool, label %if.then, label %if.else, !dbg !5122

if.then:                                          ; preds = %entry
  %4 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5123
  %call = call i32 @nxt6000_writereg(%struct.nxt6000_state* %4, i8 zeroext -127, i8 zeroext 1) #8, !dbg !5125
  store i32 %call, i32* %retval, align 4, !dbg !5126
  br label %return, !dbg !5126

if.else:                                          ; preds = %entry
  %5 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5127
  %call1 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %5, i8 zeroext -127, i8 zeroext 0) #8, !dbg !5129
  store i32 %call1, i32* %retval, align 4, !dbg !5130
  br label %return, !dbg !5130

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !5131
  ret i32 %6, !dbg !5131
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nxt6000_reset(%struct.nxt6000_state* %state) #0 !dbg !5132 {
entry:
  %state.addr = alloca %struct.nxt6000_state*, align 8
  %val = alloca i8, align 1
  store %struct.nxt6000_state* %state, %struct.nxt6000_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt6000_state** %state.addr, metadata !5135, metadata !DIExpression()), !dbg !5136
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5137, metadata !DIExpression()), !dbg !5138
  %0 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5139
  %call = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %0, i8 zeroext 64) #8, !dbg !5140
  store i8 %call, i8* %val, align 1, !dbg !5141
  %1 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5142
  %2 = load i8, i8* %val, align 1, !dbg !5143
  %conv = zext i8 %2 to i32, !dbg !5143
  %and = and i32 %conv, -33, !dbg !5144
  %conv1 = trunc i32 %and to i8, !dbg !5143
  %call2 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %1, i8 zeroext 64, i8 zeroext %conv1) #8, !dbg !5145
  %3 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5146
  %4 = load i8, i8* %val, align 1, !dbg !5147
  %conv3 = zext i8 %4 to i32, !dbg !5147
  %or = or i32 %conv3, 32, !dbg !5148
  %conv4 = trunc i32 %or to i8, !dbg !5147
  %call5 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %3, i8 zeroext 64, i8 zeroext %conv4) #8, !dbg !5149
  ret void, !dbg !5150
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nxt6000_setup(%struct.dvb_frontend* %fe) #0 !dbg !5151 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.nxt6000_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  call void @llvm.dbg.declare(metadata %struct.nxt6000_state** %state, metadata !5154, metadata !DIExpression()), !dbg !5155
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5156
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5157
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5157
  %2 = bitcast i8* %1 to %struct.nxt6000_state*, !dbg !5156
  store %struct.nxt6000_state* %2, %struct.nxt6000_state** %state, align 8, !dbg !5155
  %3 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5158
  %call = call i32 @nxt6000_writereg(%struct.nxt6000_state* %3, i8 zeroext 36, i8 zeroext 3) #8, !dbg !5159
  %4 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5160
  %call1 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %4, i8 zeroext 37, i8 zeroext 3) #8, !dbg !5161
  %5 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5162
  %call2 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %5, i8 zeroext 56, i8 zeroext 0) #8, !dbg !5163
  %6 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5164
  %call3 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %6, i8 zeroext 57, i8 zeroext 2) #8, !dbg !5165
  %7 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5166
  %call4 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %7, i8 zeroext 58, i8 zeroext 0) #8, !dbg !5167
  %8 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5168
  %call5 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %8, i8 zeroext 51, i8 zeroext -104) #8, !dbg !5169
  %9 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5170
  %call6 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %9, i8 zeroext 48, i8 zeroext -126) #8, !dbg !5171
  %10 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5172
  %call7 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %10, i8 zeroext 48, i8 zeroext -126) #8, !dbg !5173
  %11 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5174
  %12 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5175
  %call8 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %12, i8 zeroext 64) #8, !dbg !5176
  %conv = zext i8 %call8 to i32, !dbg !5176
  %and = and i32 %conv, 15, !dbg !5177
  %or = or i32 32, %and, !dbg !5178
  %conv9 = trunc i32 %or to i8, !dbg !5179
  %call10 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %11, i8 zeroext 64, i8 zeroext %conv9) #8, !dbg !5180
  %13 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5181
  %call11 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %13, i8 zeroext 68, i8 zeroext 6) #8, !dbg !5182
  %14 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5183
  %call12 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %14, i8 zeroext 69, i8 zeroext 24) #8, !dbg !5184
  %15 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5185
  %call13 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %15, i8 zeroext 76, i8 zeroext 6) #8, !dbg !5186
  %16 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5187
  %call14 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %16, i8 zeroext 77, i8 zeroext 49) #8, !dbg !5188
  %17 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5189
  %call15 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %17, i8 zeroext 78, i8 zeroext -108) #8, !dbg !5190
  %18 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5191
  %call16 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %18, i8 zeroext 79, i8 zeroext -69) #8, !dbg !5192
  %19 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5193
  %call17 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %19, i8 zeroext 81, i8 zeroext 4) #8, !dbg !5194
  %20 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5195
  %call18 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %20, i8 zeroext 89, i8 zeroext 48) #8, !dbg !5196
  %21 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5197
  %call19 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %21, i8 zeroext 91, i8 zeroext 73) #8, !dbg !5198
  %22 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5199
  %call20 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %22, i8 zeroext 92, i8 zeroext 114) #8, !dbg !5200
  %23 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5201
  %call21 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %23, i8 zeroext -128, i8 zeroext 32) #8, !dbg !5202
  %24 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5203
  %call22 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %24, i8 zeroext -126, i8 zeroext -78) #8, !dbg !5204
  %25 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5205
  %call23 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %25, i8 zeroext -104, i8 zeroext 16) #8, !dbg !5206
  %26 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5207
  %config = getelementptr inbounds %struct.nxt6000_state, %struct.nxt6000_state* %26, i32 0, i32 1, !dbg !5209
  %27 = load %struct.nxt6000_config*, %struct.nxt6000_config** %config, align 8, !dbg !5209
  %clock_inversion = getelementptr inbounds %struct.nxt6000_config, %struct.nxt6000_config* %27, i32 0, i32 1, !dbg !5210
  %bf.load = load i8, i8* %clock_inversion, align 1, !dbg !5210
  %bf.clear = and i8 %bf.load, 1, !dbg !5210
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !5207
  br i1 %tobool, label %if.then, label %if.else, !dbg !5211

if.then:                                          ; preds = %entry
  %28 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5212
  %call24 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %28, i8 zeroext -103, i8 zeroext 1) #8, !dbg !5213
  br label %if.end, !dbg !5213

if.else:                                          ; preds = %entry
  %29 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5214
  %call25 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %29, i8 zeroext -103, i8 zeroext 0) #8, !dbg !5215
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %30 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state, align 8, !dbg !5216
  %call26 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %30, i8 zeroext -102, i8 zeroext 0) #8, !dbg !5217
  ret void, !dbg !5218
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt6000_writereg(%struct.nxt6000_state* %state, i8 zeroext %reg, i8 zeroext %data) #0 !dbg !5219 {
entry:
  %state.addr = alloca %struct.nxt6000_state*, align 8
  %reg.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  %ret = alloca i32, align 4
  store %struct.nxt6000_state* %state, %struct.nxt6000_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt6000_state** %state.addr, metadata !5222, metadata !DIExpression()), !dbg !5223
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5224, metadata !DIExpression()), !dbg !5225
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !5226, metadata !DIExpression()), !dbg !5227
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !5228, metadata !DIExpression()), !dbg !5230
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5231
  %0 = load i8, i8* %reg.addr, align 1, !dbg !5232
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !5231
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !5231
  %1 = load i8, i8* %data.addr, align 1, !dbg !5233
  store i8 %1, i8* %arrayinit.element, align 1, !dbg !5231
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5234, metadata !DIExpression()), !dbg !5235
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5236
  %2 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5237
  %config = getelementptr inbounds %struct.nxt6000_state, %struct.nxt6000_state* %2, i32 0, i32 1, !dbg !5238
  %3 = load %struct.nxt6000_config*, %struct.nxt6000_config** %config, align 8, !dbg !5238
  %demod_address = getelementptr inbounds %struct.nxt6000_config, %struct.nxt6000_config* %3, i32 0, i32 0, !dbg !5239
  %4 = load i8, i8* %demod_address, align 1, !dbg !5239
  %conv = zext i8 %4 to i16, !dbg !5237
  store i16 %conv, i16* %addr, align 8, !dbg !5236
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5236
  store i16 0, i16* %flags, align 2, !dbg !5236
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5236
  store i16 2, i16* %len, align 4, !dbg !5236
  %buf1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5236
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5240
  store i8* %arraydecay, i8** %buf1, align 8, !dbg !5236
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5241, metadata !DIExpression()), !dbg !5242
  %5 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5243
  %i2c = getelementptr inbounds %struct.nxt6000_state, %struct.nxt6000_state* %5, i32 0, i32 0, !dbg !5245
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5245
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %6, %struct.i2c_msg* %msg, i32 1) #8, !dbg !5246
  store i32 %call, i32* %ret, align 4, !dbg !5247
  %cmp = icmp ne i32 %call, 1, !dbg !5248
  br i1 %cmp, label %if.then, label %if.end7, !dbg !5249

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5250

do.body:                                          ; preds = %if.then
  %7 = load i32, i32* @debug, align 4, !dbg !5251
  %tobool = icmp ne i32 %7, 0, !dbg !5251
  br i1 %tobool, label %if.then3, label %if.end, !dbg !5254

if.then3:                                         ; preds = %do.body
  %8 = load i8, i8* %reg.addr, align 1, !dbg !5251
  %conv4 = zext i8 %8 to i32, !dbg !5251
  %9 = load i8, i8* %data.addr, align 1, !dbg !5251
  %conv5 = zext i8 %9 to i32, !dbg !5251
  %10 = load i32, i32* %ret, align 4, !dbg !5251
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.nxt6000_writereg, i64 0, i64 0), i32 %conv4, i32 %conv5, i32 %10) #12, !dbg !5251
  br label %if.end, !dbg !5251

if.end:                                           ; preds = %if.then3, %do.body
  br label %do.end, !dbg !5254

do.end:                                           ; preds = %if.end
  br label %if.end7, !dbg !5254

if.end7:                                          ; preds = %do.end, %entry
  %11 = load i32, i32* %ret, align 4, !dbg !5255
  %cmp8 = icmp ne i32 %11, 1, !dbg !5256
  %12 = zext i1 %cmp8 to i64, !dbg !5257
  %cond = select i1 %cmp8, i32 -5, i32 0, !dbg !5257
  ret i32 %cond, !dbg !5258
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt6000_set_bandwidth(%struct.nxt6000_state* %state, i32 %bandwidth) #0 !dbg !5259 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.nxt6000_state*, align 8
  %bandwidth.addr = alloca i32, align 4
  %nominal_rate = alloca i16, align 2
  %result = alloca i32, align 4
  store %struct.nxt6000_state* %state, %struct.nxt6000_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt6000_state** %state.addr, metadata !5262, metadata !DIExpression()), !dbg !5263
  store i32 %bandwidth, i32* %bandwidth.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bandwidth.addr, metadata !5264, metadata !DIExpression()), !dbg !5265
  call void @llvm.dbg.declare(metadata i16* %nominal_rate, metadata !5266, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5268, metadata !DIExpression()), !dbg !5269
  %0 = load i32, i32* %bandwidth.addr, align 4, !dbg !5270
  switch i32 %0, label %sw.default [
    i32 6000000, label %sw.bb
    i32 7000000, label %sw.bb1
    i32 8000000, label %sw.bb2
  ], !dbg !5271

sw.bb:                                            ; preds = %entry
  store i16 21943, i16* %nominal_rate, align 2, !dbg !5272
  br label %sw.epilog, !dbg !5274

sw.bb1:                                           ; preds = %entry
  store i16 25600, i16* %nominal_rate, align 2, !dbg !5275
  br label %sw.epilog, !dbg !5276

sw.bb2:                                           ; preds = %entry
  store i16 29257, i16* %nominal_rate, align 2, !dbg !5277
  br label %sw.epilog, !dbg !5278

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5279
  br label %return, !dbg !5279

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %1 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5280
  %2 = load i16, i16* %nominal_rate, align 2, !dbg !5282
  %conv = zext i16 %2 to i32, !dbg !5282
  %and = and i32 %conv, 255, !dbg !5283
  %conv3 = trunc i32 %and to i8, !dbg !5282
  %call = call i32 @nxt6000_writereg(%struct.nxt6000_state* %1, i8 zeroext 91, i8 zeroext %conv3) #8, !dbg !5284
  store i32 %call, i32* %result, align 4, !dbg !5285
  %cmp = icmp slt i32 %call, 0, !dbg !5286
  br i1 %cmp, label %if.then, label %if.end, !dbg !5287

if.then:                                          ; preds = %sw.epilog
  %3 = load i32, i32* %result, align 4, !dbg !5288
  store i32 %3, i32* %retval, align 4, !dbg !5289
  br label %return, !dbg !5289

if.end:                                           ; preds = %sw.epilog
  %4 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5290
  %5 = load i16, i16* %nominal_rate, align 2, !dbg !5291
  %conv5 = zext i16 %5 to i32, !dbg !5291
  %shr = ashr i32 %conv5, 8, !dbg !5292
  %and6 = and i32 %shr, 255, !dbg !5293
  %conv7 = trunc i32 %and6 to i8, !dbg !5294
  %call8 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %4, i8 zeroext 92, i8 zeroext %conv7) #8, !dbg !5295
  store i32 %call8, i32* %retval, align 4, !dbg !5296
  br label %return, !dbg !5296

return:                                           ; preds = %if.end, %if.then, %sw.default
  %6 = load i32, i32* %retval, align 4, !dbg !5297
  ret i32 %6, !dbg !5297
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt6000_set_guard_interval(%struct.nxt6000_state* %state, i32 %guard_interval) #0 !dbg !5298 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.nxt6000_state*, align 8
  %guard_interval.addr = alloca i32, align 4
  store %struct.nxt6000_state* %state, %struct.nxt6000_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt6000_state** %state.addr, metadata !5301, metadata !DIExpression()), !dbg !5302
  store i32 %guard_interval, i32* %guard_interval.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %guard_interval.addr, metadata !5303, metadata !DIExpression()), !dbg !5304
  %0 = load i32, i32* %guard_interval.addr, align 4, !dbg !5305
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 4, label %sw.bb10
    i32 2, label %sw.bb10
    i32 3, label %sw.bb17
  ], !dbg !5306

sw.bb:                                            ; preds = %entry
  %1 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5307
  %2 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5309
  %call = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %2, i8 zeroext 68) #8, !dbg !5310
  %conv = zext i8 %call to i32, !dbg !5310
  %and = and i32 %conv, -4, !dbg !5311
  %or = or i32 0, %and, !dbg !5312
  %conv1 = trunc i32 %or to i8, !dbg !5313
  %call2 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %1, i8 zeroext 68, i8 zeroext %conv1) #8, !dbg !5314
  store i32 %call2, i32* %retval, align 4, !dbg !5315
  br label %return, !dbg !5315

sw.bb3:                                           ; preds = %entry
  %3 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5316
  %4 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5317
  %call4 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %4, i8 zeroext 68) #8, !dbg !5318
  %conv5 = zext i8 %call4 to i32, !dbg !5318
  %and6 = and i32 %conv5, -4, !dbg !5319
  %or7 = or i32 1, %and6, !dbg !5320
  %conv8 = trunc i32 %or7 to i8, !dbg !5321
  %call9 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %3, i8 zeroext 68, i8 zeroext %conv8) #8, !dbg !5322
  store i32 %call9, i32* %retval, align 4, !dbg !5323
  br label %return, !dbg !5323

sw.bb10:                                          ; preds = %entry, %entry
  %5 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5324
  %6 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5325
  %call11 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %6, i8 zeroext 68) #8, !dbg !5326
  %conv12 = zext i8 %call11 to i32, !dbg !5326
  %and13 = and i32 %conv12, -4, !dbg !5327
  %or14 = or i32 2, %and13, !dbg !5328
  %conv15 = trunc i32 %or14 to i8, !dbg !5329
  %call16 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %5, i8 zeroext 68, i8 zeroext %conv15) #8, !dbg !5330
  store i32 %call16, i32* %retval, align 4, !dbg !5331
  br label %return, !dbg !5331

sw.bb17:                                          ; preds = %entry
  %7 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5332
  %8 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5333
  %call18 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %8, i8 zeroext 68) #8, !dbg !5334
  %conv19 = zext i8 %call18 to i32, !dbg !5334
  %and20 = and i32 %conv19, -4, !dbg !5335
  %or21 = or i32 3, %and20, !dbg !5336
  %conv22 = trunc i32 %or21 to i8, !dbg !5337
  %call23 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %7, i8 zeroext 68, i8 zeroext %conv22) #8, !dbg !5338
  store i32 %call23, i32* %retval, align 4, !dbg !5339
  br label %return, !dbg !5339

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5340
  br label %return, !dbg !5340

return:                                           ; preds = %sw.default, %sw.bb17, %sw.bb10, %sw.bb3, %sw.bb
  %9 = load i32, i32* %retval, align 4, !dbg !5341
  ret i32 %9, !dbg !5341
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt6000_set_transmission_mode(%struct.nxt6000_state* %state, i32 %transmission_mode) #0 !dbg !5342 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.nxt6000_state*, align 8
  %transmission_mode.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.nxt6000_state* %state, %struct.nxt6000_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt6000_state** %state.addr, metadata !5345, metadata !DIExpression()), !dbg !5346
  store i32 %transmission_mode, i32* %transmission_mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %transmission_mode.addr, metadata !5347, metadata !DIExpression()), !dbg !5348
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5349, metadata !DIExpression()), !dbg !5350
  %0 = load i32, i32* %transmission_mode.addr, align 4, !dbg !5351
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb10
  ], !dbg !5352

sw.bb:                                            ; preds = %entry
  %1 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5353
  %2 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5356
  %call = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %2, i8 zeroext -126) #8, !dbg !5357
  %conv = zext i8 %call to i32, !dbg !5357
  %and = and i32 %conv, -4, !dbg !5358
  %or = or i32 0, %and, !dbg !5359
  %conv1 = trunc i32 %or to i8, !dbg !5360
  %call2 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %1, i8 zeroext -126, i8 zeroext %conv1) #8, !dbg !5361
  store i32 %call2, i32* %result, align 4, !dbg !5362
  %cmp = icmp slt i32 %call2, 0, !dbg !5363
  br i1 %cmp, label %if.then, label %if.end, !dbg !5364

if.then:                                          ; preds = %sw.bb
  %3 = load i32, i32* %result, align 4, !dbg !5365
  store i32 %3, i32* %retval, align 4, !dbg !5366
  br label %return, !dbg !5366

if.end:                                           ; preds = %sw.bb
  %4 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5367
  %5 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5368
  %call4 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %5, i8 zeroext 68) #8, !dbg !5369
  %conv5 = zext i8 %call4 to i32, !dbg !5369
  %and6 = and i32 %conv5, -5, !dbg !5370
  %or7 = or i32 0, %and6, !dbg !5371
  %conv8 = trunc i32 %or7 to i8, !dbg !5372
  %call9 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %4, i8 zeroext 68, i8 zeroext %conv8) #8, !dbg !5373
  store i32 %call9, i32* %retval, align 4, !dbg !5374
  br label %return, !dbg !5374

sw.bb10:                                          ; preds = %entry, %entry
  %6 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5375
  %7 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5377
  %call11 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %7, i8 zeroext -126) #8, !dbg !5378
  %conv12 = zext i8 %call11 to i32, !dbg !5378
  %and13 = and i32 %conv12, -4, !dbg !5379
  %or14 = or i32 2, %and13, !dbg !5380
  %conv15 = trunc i32 %or14 to i8, !dbg !5381
  %call16 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %6, i8 zeroext -126, i8 zeroext %conv15) #8, !dbg !5382
  store i32 %call16, i32* %result, align 4, !dbg !5383
  %cmp17 = icmp slt i32 %call16, 0, !dbg !5384
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !5385

if.then19:                                        ; preds = %sw.bb10
  %8 = load i32, i32* %result, align 4, !dbg !5386
  store i32 %8, i32* %retval, align 4, !dbg !5387
  br label %return, !dbg !5387

if.end20:                                         ; preds = %sw.bb10
  %9 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5388
  %10 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5389
  %call21 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %10, i8 zeroext 68) #8, !dbg !5390
  %conv22 = zext i8 %call21 to i32, !dbg !5390
  %and23 = and i32 %conv22, -5, !dbg !5391
  %or24 = or i32 4, %and23, !dbg !5392
  %conv25 = trunc i32 %or24 to i8, !dbg !5393
  %call26 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %9, i8 zeroext 68, i8 zeroext %conv25) #8, !dbg !5394
  store i32 %call26, i32* %retval, align 4, !dbg !5395
  br label %return, !dbg !5395

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5396
  br label %return, !dbg !5396

return:                                           ; preds = %sw.default, %if.end20, %if.then19, %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5397
  ret i32 %11, !dbg !5397
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt6000_set_inversion(%struct.nxt6000_state* %state, i32 %inversion) #0 !dbg !5398 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.nxt6000_state*, align 8
  %inversion.addr = alloca i32, align 4
  store %struct.nxt6000_state* %state, %struct.nxt6000_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt6000_state** %state.addr, metadata !5401, metadata !DIExpression()), !dbg !5402
  store i32 %inversion, i32* %inversion.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %inversion.addr, metadata !5403, metadata !DIExpression()), !dbg !5404
  %0 = load i32, i32* %inversion.addr, align 4, !dbg !5405
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !5406

sw.bb:                                            ; preds = %entry
  %1 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5407
  %call = call i32 @nxt6000_writereg(%struct.nxt6000_state* %1, i8 zeroext 75, i8 zeroext 0) #8, !dbg !5409
  store i32 %call, i32* %retval, align 4, !dbg !5410
  br label %return, !dbg !5410

sw.bb1:                                           ; preds = %entry
  %2 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5411
  %call2 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %2, i8 zeroext 75, i8 zeroext 1) #8, !dbg !5412
  store i32 %call2, i32* %retval, align 4, !dbg !5413
  br label %return, !dbg !5413

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5414
  br label %return, !dbg !5414

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %3 = load i32, i32* %retval, align 4, !dbg !5415
  ret i32 %3, !dbg !5415
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nxt6000_dump_status(%struct.nxt6000_state* %state) #0 !dbg !5416 {
entry:
  %state.addr = alloca %struct.nxt6000_state*, align 8
  %val = alloca i8, align 1
  store %struct.nxt6000_state* %state, %struct.nxt6000_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt6000_state** %state.addr, metadata !5417, metadata !DIExpression()), !dbg !5418
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5419, metadata !DIExpression()), !dbg !5420
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0)) #12, !dbg !5421
  %0 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5422
  %call1 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %0, i8 zeroext 33) #8, !dbg !5423
  store i8 %call1, i8* %val, align 1, !dbg !5424
  %1 = load i8, i8* %val, align 1, !dbg !5425
  %conv = zext i8 %1 to i32, !dbg !5425
  %and = and i32 %conv, 1, !dbg !5425
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %and) #12, !dbg !5425
  %2 = load i8, i8* %val, align 1, !dbg !5426
  %conv3 = zext i8 %2 to i32, !dbg !5426
  %shr = ashr i32 %conv3, 1, !dbg !5426
  %and4 = and i32 %shr, 1, !dbg !5426
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %and4) #12, !dbg !5426
  %3 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5427
  %call6 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %3, i8 zeroext 50) #8, !dbg !5428
  store i8 %call6, i8* %val, align 1, !dbg !5429
  %4 = load i8, i8* %val, align 1, !dbg !5430
  %conv7 = zext i8 %4 to i32, !dbg !5430
  %shr8 = ashr i32 %conv7, 7, !dbg !5430
  %and9 = and i32 %shr8, 1, !dbg !5430
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %and9) #12, !dbg !5430
  %5 = load i8, i8* %val, align 1, !dbg !5431
  %conv11 = zext i8 %5 to i32, !dbg !5431
  %shr12 = ashr i32 %conv11, 4, !dbg !5432
  %and13 = and i32 %shr12, 7, !dbg !5433
  switch i32 %and13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 2, label %sw.bb17
    i32 3, label %sw.bb19
    i32 4, label %sw.bb21
  ], !dbg !5434

sw.bb:                                            ; preds = %entry
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !5435
  br label %sw.epilog, !dbg !5437

sw.bb15:                                          ; preds = %entry
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !5438
  br label %sw.epilog, !dbg !5439

sw.bb17:                                          ; preds = %entry
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !5440
  br label %sw.epilog, !dbg !5441

sw.bb19:                                          ; preds = %entry
  %call20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !5442
  br label %sw.epilog, !dbg !5443

sw.bb21:                                          ; preds = %entry
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !5444
  br label %sw.epilog, !dbg !5445

sw.default:                                       ; preds = %entry
  %call23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !5446
  br label %sw.epilog, !dbg !5447

sw.epilog:                                        ; preds = %sw.default, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb
  %6 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5448
  %call24 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %6, i8 zeroext 65) #8, !dbg !5449
  store i8 %call24, i8* %val, align 1, !dbg !5450
  %7 = load i8, i8* %val, align 1, !dbg !5451
  %conv25 = zext i8 %7 to i32, !dbg !5451
  %shr26 = ashr i32 %conv25, 7, !dbg !5451
  %and27 = and i32 %shr26, 1, !dbg !5451
  %call28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %and27) #12, !dbg !5451
  %8 = load i8, i8* %val, align 1, !dbg !5452
  %conv29 = zext i8 %8 to i32, !dbg !5452
  %shr30 = ashr i32 %conv29, 6, !dbg !5452
  %and31 = and i32 %shr30, 1, !dbg !5452
  %call32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %and31) #12, !dbg !5452
  %9 = load i8, i8* %val, align 1, !dbg !5453
  %conv33 = zext i8 %9 to i32, !dbg !5453
  %shr34 = ashr i32 %conv33, 5, !dbg !5453
  %and35 = and i32 %shr34, 1, !dbg !5453
  %call36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %and35) #12, !dbg !5453
  %10 = load i8, i8* %val, align 1, !dbg !5454
  %conv37 = zext i8 %10 to i32, !dbg !5454
  %shr38 = ashr i32 %conv37, 4, !dbg !5454
  %and39 = and i32 %shr38, 1, !dbg !5454
  %call40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %and39) #12, !dbg !5454
  %11 = load i8, i8* %val, align 1, !dbg !5455
  %conv41 = zext i8 %11 to i32, !dbg !5455
  %and42 = and i32 %conv41, 15, !dbg !5456
  switch i32 %and42, label %sw.default57 [
    i32 0, label %sw.bb43
    i32 2, label %sw.bb45
    i32 3, label %sw.bb47
    i32 4, label %sw.bb49
    i32 1, label %sw.bb51
    i32 5, label %sw.bb53
    i32 6, label %sw.bb55
  ], !dbg !5457

sw.bb43:                                          ; preds = %sw.epilog
  %call44 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0)) #12, !dbg !5458
  br label %sw.epilog59, !dbg !5460

sw.bb45:                                          ; preds = %sw.epilog
  %call46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0)) #12, !dbg !5461
  br label %sw.epilog59, !dbg !5462

sw.bb47:                                          ; preds = %sw.epilog
  %call48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0)) #12, !dbg !5463
  br label %sw.epilog59, !dbg !5464

sw.bb49:                                          ; preds = %sw.epilog
  %call50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0)) #12, !dbg !5465
  br label %sw.epilog59, !dbg !5466

sw.bb51:                                          ; preds = %sw.epilog
  %call52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0)) #12, !dbg !5467
  br label %sw.epilog59, !dbg !5468

sw.bb53:                                          ; preds = %sw.epilog
  %call54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0)) #12, !dbg !5469
  br label %sw.epilog59, !dbg !5470

sw.bb55:                                          ; preds = %sw.epilog
  %call56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0)) #12, !dbg !5471
  br label %sw.epilog59, !dbg !5472

sw.default57:                                     ; preds = %sw.epilog
  %call58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0)) #12, !dbg !5473
  br label %sw.epilog59, !dbg !5474

sw.epilog59:                                      ; preds = %sw.default57, %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43
  %12 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5475
  %call60 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %12, i8 zeroext 82) #8, !dbg !5476
  store i8 %call60, i8* %val, align 1, !dbg !5477
  %13 = load i8, i8* %val, align 1, !dbg !5478
  %conv61 = zext i8 %13 to i32, !dbg !5478
  %shr62 = ashr i32 %conv61, 4, !dbg !5478
  %and63 = and i32 %shr62, 1, !dbg !5478
  %call64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %and63) #12, !dbg !5478
  %14 = load i8, i8* %val, align 1, !dbg !5479
  %conv65 = zext i8 %14 to i32, !dbg !5479
  %shr66 = ashr i32 %conv65, 2, !dbg !5479
  %and67 = and i32 %shr66, 1, !dbg !5479
  %tobool = icmp ne i32 %and67, 0, !dbg !5479
  %15 = zext i1 %tobool to i64, !dbg !5479
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), !dbg !5479
  %call68 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* %cond) #12, !dbg !5479
  %16 = load i8, i8* %val, align 1, !dbg !5480
  %conv69 = zext i8 %16 to i32, !dbg !5480
  %shr70 = ashr i32 %conv69, 4, !dbg !5481
  %and71 = and i32 %shr70, 3, !dbg !5482
  switch i32 %and71, label %sw.epilog80 [
    i32 0, label %sw.bb72
    i32 1, label %sw.bb74
    i32 2, label %sw.bb76
    i32 3, label %sw.bb78
  ], !dbg !5483

sw.bb72:                                          ; preds = %sw.epilog59
  %call73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0)) #12, !dbg !5484
  br label %sw.epilog80, !dbg !5486

sw.bb74:                                          ; preds = %sw.epilog59
  %call75 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #12, !dbg !5487
  br label %sw.epilog80, !dbg !5488

sw.bb76:                                          ; preds = %sw.epilog59
  %call77 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0)) #12, !dbg !5489
  br label %sw.epilog80, !dbg !5490

sw.bb78:                                          ; preds = %sw.epilog59
  %call79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0)) #12, !dbg !5491
  br label %sw.epilog80, !dbg !5492

sw.epilog80:                                      ; preds = %sw.epilog59, %sw.bb78, %sw.bb76, %sw.bb74, %sw.bb72
  %17 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5493
  %call81 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %17, i8 zeroext 105) #8, !dbg !5494
  store i8 %call81, i8* %val, align 1, !dbg !5495
  %18 = load i8, i8* %val, align 1, !dbg !5496
  %conv82 = zext i8 %18 to i32, !dbg !5496
  %shr83 = ashr i32 %conv82, 4, !dbg !5497
  %and84 = and i32 %shr83, 7, !dbg !5498
  switch i32 %and84, label %sw.default95 [
    i32 0, label %sw.bb85
    i32 1, label %sw.bb87
    i32 2, label %sw.bb89
    i32 3, label %sw.bb91
    i32 4, label %sw.bb93
  ], !dbg !5499

sw.bb85:                                          ; preds = %sw.epilog80
  %call86 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0)) #12, !dbg !5500
  br label %sw.epilog97, !dbg !5502

sw.bb87:                                          ; preds = %sw.epilog80
  %call88 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0)) #12, !dbg !5503
  br label %sw.epilog97, !dbg !5504

sw.bb89:                                          ; preds = %sw.epilog80
  %call90 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0)) #12, !dbg !5505
  br label %sw.epilog97, !dbg !5506

sw.bb91:                                          ; preds = %sw.epilog80
  %call92 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0)) #12, !dbg !5507
  br label %sw.epilog97, !dbg !5508

sw.bb93:                                          ; preds = %sw.epilog80
  %call94 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0)) #12, !dbg !5509
  br label %sw.epilog97, !dbg !5510

sw.default95:                                     ; preds = %sw.epilog80
  %call96 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0)) #12, !dbg !5511
  br label %sw.epilog97, !dbg !5512

sw.epilog97:                                      ; preds = %sw.default95, %sw.bb93, %sw.bb91, %sw.bb89, %sw.bb87, %sw.bb85
  %19 = load i8, i8* %val, align 1, !dbg !5513
  %conv98 = zext i8 %19 to i32, !dbg !5513
  %and99 = and i32 %conv98, 7, !dbg !5514
  switch i32 %and99, label %sw.default110 [
    i32 0, label %sw.bb100
    i32 1, label %sw.bb102
    i32 2, label %sw.bb104
    i32 3, label %sw.bb106
    i32 4, label %sw.bb108
  ], !dbg !5515

sw.bb100:                                         ; preds = %sw.epilog97
  %call101 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0)) #12, !dbg !5516
  br label %sw.epilog112, !dbg !5518

sw.bb102:                                         ; preds = %sw.epilog97
  %call103 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0)) #12, !dbg !5519
  br label %sw.epilog112, !dbg !5520

sw.bb104:                                         ; preds = %sw.epilog97
  %call105 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0)) #12, !dbg !5521
  br label %sw.epilog112, !dbg !5522

sw.bb106:                                         ; preds = %sw.epilog97
  %call107 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0)) #12, !dbg !5523
  br label %sw.epilog112, !dbg !5524

sw.bb108:                                         ; preds = %sw.epilog97
  %call109 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0)) #12, !dbg !5525
  br label %sw.epilog112, !dbg !5526

sw.default110:                                    ; preds = %sw.epilog97
  %call111 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0)) #12, !dbg !5527
  br label %sw.epilog112, !dbg !5528

sw.epilog112:                                     ; preds = %sw.default110, %sw.bb108, %sw.bb106, %sw.bb104, %sw.bb102, %sw.bb100
  %20 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5529
  %call113 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %20, i8 zeroext 106) #8, !dbg !5530
  store i8 %call113, i8* %val, align 1, !dbg !5531
  %21 = load i8, i8* %val, align 1, !dbg !5532
  %conv114 = zext i8 %21 to i32, !dbg !5532
  %and115 = and i32 %conv114, 1, !dbg !5532
  %tobool116 = icmp ne i32 %and115, 0, !dbg !5532
  %22 = zext i1 %tobool116 to i64, !dbg !5532
  %cond117 = select i1 %tobool116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), !dbg !5532
  %call118 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i8* %cond117) #12, !dbg !5532
  %23 = load i8, i8* %val, align 1, !dbg !5533
  %conv119 = zext i8 %23 to i32, !dbg !5533
  %shr120 = ashr i32 %conv119, 4, !dbg !5534
  %and121 = and i32 %shr120, 3, !dbg !5535
  switch i32 %and121, label %sw.epilog130 [
    i32 0, label %sw.bb122
    i32 1, label %sw.bb124
    i32 2, label %sw.bb126
    i32 3, label %sw.bb128
  ], !dbg !5536

sw.bb122:                                         ; preds = %sw.epilog112
  %call123 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i64 0, i64 0)) #12, !dbg !5537
  br label %sw.epilog130, !dbg !5539

sw.bb124:                                         ; preds = %sw.epilog112
  %call125 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i64 0, i64 0)) #12, !dbg !5540
  br label %sw.epilog130, !dbg !5541

sw.bb126:                                         ; preds = %sw.epilog112
  %call127 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i64 0, i64 0)) #12, !dbg !5542
  br label %sw.epilog130, !dbg !5543

sw.bb128:                                         ; preds = %sw.epilog112
  %call129 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0)) #12, !dbg !5544
  br label %sw.epilog130, !dbg !5545

sw.epilog130:                                     ; preds = %sw.epilog112, %sw.bb128, %sw.bb126, %sw.bb124, %sw.bb122
  %24 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5546
  %call131 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %24, i8 zeroext -111) #8, !dbg !5547
  %25 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5548
  %call132 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %25, i8 zeroext -110) #8, !dbg !5549
  store i8 %call132, i8* %val, align 1, !dbg !5550
  %26 = load %struct.nxt6000_state*, %struct.nxt6000_state** %state.addr, align 8, !dbg !5551
  %call133 = call zeroext i8 @nxt6000_readreg(%struct.nxt6000_state* %26, i8 zeroext -110) #8, !dbg !5552
  store i8 %call133, i8* %val, align 1, !dbg !5553
  %27 = load i8, i8* %val, align 1, !dbg !5554
  %conv134 = zext i8 %27 to i32, !dbg !5554
  %shr135 = ashr i32 %conv134, 4, !dbg !5554
  %and136 = and i32 %shr135, 1, !dbg !5554
  %call137 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i64 0, i64 0), i32 %and136) #12, !dbg !5554
  %call138 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0)) #12, !dbg !5555
  ret void, !dbg !5556
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
!llvm.module.flags = !{!4297, !4298, !4299, !4300}
!llvm.ident = !{!4301}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nxt6000_ops", scope: !2, file: !3, line: 583, type: !405, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !290, globals: !295, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/nxt6000.c", directory: "/home/lizy2001/genbc/linux")
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
!290 = !{!291, !293, !294}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !292, line: 148, baseType: !7)
!292 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!294 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!295 = !{!296, !368, !373, !378, !383, !388, !393, !398, !0, !400}
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 617, type: !298, isLocal: true, isDefinition: true, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !300, line: 69, size: 320, elements: !301)
!300 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!301 = !{!302, !306, !310, !331, !338, !342, !346}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !299, file: !300, line: 70, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !299, file: !300, line: 71, baseType: !307, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !309, line: 76, flags: DIFlagFwdDecl)
!309 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!310 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !299, file: !300, line: 72, baseType: !311, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !300, line: 47, size: 256, elements: !314)
!314 = !{!315, !316, !322, !327}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !313, file: !300, line: 49, baseType: !7, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !313, file: !300, line: 51, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!320, !303, !321}
!320 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !313, file: !300, line: 53, baseType: !323, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!320, !326, !321}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !313, file: !300, line: 55, baseType: !328, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !293}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !299, file: !300, line: 73, baseType: !332, size: 16, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !334, line: 19, baseType: !335)
!334 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !336, line: 24, baseType: !337)
!336 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!337 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !299, file: !300, line: 74, baseType: !339, size: 8, offset: 208)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !334, line: 16, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !336, line: 20, baseType: !341)
!341 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !300, line: 75, baseType: !343, size: 8, offset: 216)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !334, line: 17, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !336, line: 21, baseType: !345)
!345 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!346 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !300, line: 76, baseType: !347, size: 64, offset: 256)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !299, file: !300, line: 76, size: 64, elements: !348)
!348 = !{!349, !350, !357}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !347, file: !300, line: 77, baseType: !293, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !347, file: !300, line: 78, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !300, line: 86, size: 128, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !353, file: !300, line: 87, baseType: !7, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !353, file: !300, line: 88, baseType: !326, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !347, file: !300, line: 79, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !300, line: 92, size: 256, elements: !361)
!361 = !{!362, !363, !364, !366, !367}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !360, file: !300, line: 94, baseType: !7, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !360, file: !300, line: 95, baseType: !7, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !360, file: !300, line: 96, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !360, file: !300, line: 97, baseType: !311, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !360, file: !300, line: 98, baseType: !293, size: 64, offset: 192)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 617, type: !370, isLocal: true, isDefinition: true, align: 8)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 216, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 27)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 618, type: !375, isLocal: true, isDefinition: true, align: 8)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 520, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 65)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 620, type: !380, isLocal: true, isDefinition: true, align: 8)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 488, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 61)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author223", scope: !2, file: !3, line: 621, type: !385, isLocal: true, isDefinition: true, align: 8)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 256, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 32)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file224", scope: !2, file: !3, line: 622, type: !390, isLocal: true, isDefinition: true, align: 8)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 392, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 49)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license225", scope: !2, file: !3, line: 622, type: !395, isLocal: true, isDefinition: true, align: 8)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 160, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 20)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 31, type: !320, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 617, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 112, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 14)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !407)
!407 = !{!408, !425, !429, !4120, !4121, !4122, !4126, !4127, !4133, !4138, !4142, !4143, !4153, !4158, !4162, !4166, !4171, !4172, !4173, !4174, !4184, !4195, !4199, !4203, !4207, !4211, !4215, !4219, !4220, !4221, !4225, !4279}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !406, file: !51, line: 436, baseType: !409, size: 1280)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !410)
!410 = !{!411, !415, !418, !419, !420, !421, !422, !423, !424}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !409, file: !51, line: 339, baseType: !412, size: 1024)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 1024, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !409, file: !51, line: 340, baseType: !416, size: 32, offset: 1024)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !334, line: 21, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !336, line: 27, baseType: !7)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !409, file: !51, line: 341, baseType: !416, size: 32, offset: 1056)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !409, file: !51, line: 342, baseType: !416, size: 32, offset: 1088)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !409, file: !51, line: 343, baseType: !416, size: 32, offset: 1120)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !409, file: !51, line: 344, baseType: !416, size: 32, offset: 1152)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !409, file: !51, line: 345, baseType: !416, size: 32, offset: 1184)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !409, file: !51, line: 346, baseType: !416, size: 32, offset: 1216)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !409, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !406, file: !51, line: 438, baseType: !426, size: 64, offset: 1280)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 64, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 8)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !406, file: !51, line: 440, baseType: !430, size: 64, offset: 1344)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !435)
!435 = !{!436, !450, !451, !4036, !4037, !4038, !4039, !4040, !4041, !4114, !4118, !4119}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !434, file: !51, line: 687, baseType: !437, size: 32)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !438, line: 19, size: 32, elements: !439)
!438 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !437, file: !438, line: 20, baseType: !441, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !442, line: 113, baseType: !443)
!442 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !442, line: 111, size: 32, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !443, file: !442, line: 112, baseType: !446, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !292, line: 168, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 166, size: 32, elements: !448)
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !447, file: !292, line: 167, baseType: !320, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !434, file: !51, line: 688, baseType: !406, size: 6016, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !434, file: !51, line: 689, baseType: !452, size: 64, offset: 6080)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !454)
!454 = !{!455, !456, !462, !463, !464, !468, !469, !4014, !4015, !4016, !4035}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !453, file: !272, line: 102, baseType: !320, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !453, file: !272, line: 103, baseType: !457, size: 128, offset: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !292, line: 178, size: 128, elements: !458)
!458 = !{!459, !461}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !292, line: 179, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !457, file: !292, line: 179, baseType: !460, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !453, file: !272, line: 104, baseType: !457, size: 128, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !453, file: !272, line: 105, baseType: !303, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !453, file: !272, line: 106, baseType: !465, size: 48, offset: 384)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 48, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 6)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !453, file: !272, line: 107, baseType: !293, size: 64, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !453, file: !272, line: 109, baseType: !470, size: 64, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !472)
!472 = !{!473, !3471, !3472, !3475, !3476, !3527, !3615, !3616, !3617, !3618, !3619, !3628, !3733, !3746, !3941, !3942, !3946, !3948, !3949, !3950, !3954, !3960, !3961, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !4002, !4003, !4004, !4007, !4010, !4011, !4012, !4013}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !471, file: !237, line: 462, baseType: !474, size: 512)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !475, line: 64, size: 512, elements: !476)
!475 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!476 = !{!477, !478, !479, !481, !540, !3326, !3465, !3466, !3467, !3468, !3469, !3470}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !474, file: !475, line: 65, baseType: !303, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !474, file: !475, line: 66, baseType: !457, size: 128, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !474, file: !475, line: 67, baseType: !480, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !474, file: !475, line: 68, baseType: !482, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !475, line: 192, size: 704, elements: !484)
!484 = !{!485, !486, !502, !503}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !483, file: !475, line: 193, baseType: !457, size: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !483, file: !475, line: 194, baseType: !487, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !488, line: 83, baseType: !489)
!488 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !488, line: 71, elements: !490)
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !488, line: 72, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !488, line: 72, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !492, file: !488, line: 73, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !488, line: 20, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !495, file: !488, line: 21, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !499, line: 25, baseType: !500)
!499 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !499, line: 25, elements: !501)
!501 = !{}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !483, file: !475, line: 195, baseType: !474, size: 512, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !483, file: !475, line: 196, baseType: !504, size: 64, offset: 640)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !475, line: 156, size: 192, elements: !507)
!507 = !{!508, !513, !518}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !506, file: !475, line: 157, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!320, !482, !480}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !506, file: !475, line: 158, baseType: !514, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!303, !482, !480}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !506, file: !475, line: 159, baseType: !519, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!320, !482, !480, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !475, line: 148, size: 20736, elements: !525)
!525 = !{!526, !530, !534, !535, !539}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !524, file: !475, line: 149, baseType: !527, size: 192)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 192, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 3)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !524, file: !475, line: 150, baseType: !531, size: 4096, offset: 192)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 4096, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !524, file: !475, line: 151, baseType: !320, size: 32, offset: 4288)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !524, file: !475, line: 152, baseType: !536, size: 16384, offset: 4320)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 16384, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 2048)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !524, file: !475, line: 153, baseType: !320, size: 32, offset: 20704)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !474, file: !475, line: 69, baseType: !541, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !475, line: 138, size: 448, elements: !543)
!543 = !{!544, !548, !577, !579, !3288, !3316, !3320}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !542, file: !475, line: 139, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !480}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !542, file: !475, line: 140, baseType: !549, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !552, line: 230, size: 128, elements: !553)
!552 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!553 = !{!554, !569}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !551, file: !552, line: 231, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!558, !480, !563, !326}
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !292, line: 60, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !560, line: 73, baseType: !561)
!560 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !560, line: 15, baseType: !562)
!562 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !552, line: 30, size: 128, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !564, file: !552, line: 31, baseType: !303, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !564, file: !552, line: 32, baseType: !568, size: 16, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !292, line: 19, baseType: !337)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !551, file: !552, line: 232, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!558, !480, !563, !303, !573}
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !292, line: 55, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !560, line: 72, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !560, line: 16, baseType: !576)
!576 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !542, file: !475, line: 141, baseType: !578, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !542, file: !475, line: 142, baseType: !580, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !552, line: 84, size: 320, elements: !584)
!584 = !{!585, !586, !590, !3285, !3286}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !583, file: !552, line: 85, baseType: !303, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !583, file: !552, line: 86, baseType: !587, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!568, !480, !563, !320}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !583, file: !552, line: 88, baseType: !591, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!568, !480, !594, !320}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !552, line: 168, size: 448, elements: !596)
!596 = !{!597, !598, !599, !600, !3280, !3281}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !595, file: !552, line: 169, baseType: !564, size: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !595, file: !552, line: 170, baseType: !573, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !595, file: !552, line: 171, baseType: !293, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !595, file: !552, line: 172, baseType: !601, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!558, !604, !480, !594, !326, !775, !573}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !606)
!606 = !{!607, !625, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3263, !3264, !3273, !3274, !3275, !3276, !3277, !3278, !3279}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !605, file: !208, line: 920, baseType: !608, size: 128)
!608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !605, file: !208, line: 917, size: 128, elements: !609)
!609 = !{!610, !616}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !608, file: !208, line: 918, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !612, line: 58, size: 64, elements: !613)
!612 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!613 = !{!614}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !611, file: !612, line: 59, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !608, file: !208, line: 919, baseType: !617, size: 128, align: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !292, line: 216, size: 128, align: 64, elements: !618)
!618 = !{!619, !621}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !617, file: !292, line: 217, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !617, file: !292, line: 218, baseType: !622, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !620}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !605, file: !208, line: 921, baseType: !626, size: 128, offset: 128)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !627, line: 8, size: 128, elements: !628)
!627 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!628 = !{!629, !633}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !626, file: !627, line: 9, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !632, line: 18, flags: DIFlagFwdDecl)
!632 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!633 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !626, file: !627, line: 10, baseType: !634, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !632, line: 89, size: 1536, elements: !636)
!636 = !{!637, !638, !648, !656, !657, !675, !3214, !3216, !3228, !3229, !3230, !3231, !3232, !3237, !3238, !3239}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !635, file: !632, line: 91, baseType: !7, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !635, file: !632, line: 92, baseType: !639, size: 32, offset: 32)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !640, line: 277, baseType: !641)
!640 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !640, line: 277, size: 32, elements: !642)
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !641, file: !640, line: 277, baseType: !644, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !640, line: 70, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !640, line: 65, size: 32, elements: !646)
!646 = !{!647}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !645, file: !640, line: 66, baseType: !7, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !635, file: !632, line: 93, baseType: !649, size: 128, offset: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !650, line: 38, size: 128, elements: !651)
!650 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!651 = !{!652, !654}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !649, file: !650, line: 39, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !649, file: !650, line: 39, baseType: !655, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !635, file: !632, line: 94, baseType: !634, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !635, file: !632, line: 95, baseType: !658, size: 128, offset: 256)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !632, line: 47, size: 128, elements: !659)
!659 = !{!660, !672}
!660 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !632, line: 48, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !632, line: 48, size: 64, elements: !662)
!662 = !{!663, !668}
!663 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !632, line: 49, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !661, file: !632, line: 49, size: 64, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !664, file: !632, line: 50, baseType: !416, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !664, file: !632, line: 50, baseType: !416, size: 32, offset: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !661, file: !632, line: 52, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !334, line: 23, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !336, line: 31, baseType: !671)
!671 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !658, file: !632, line: 54, baseType: !673, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !635, file: !632, line: 96, baseType: !676, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !678)
!678 = !{!679, !680, !681, !689, !696, !697, !842, !2908, !2909, !2910, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !3182, !3190, !3191, !3192, !3210, !3211, !3212, !3213}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !677, file: !208, line: 611, baseType: !568, size: 16)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !677, file: !208, line: 612, baseType: !337, size: 16, offset: 16)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !677, file: !208, line: 613, baseType: !682, size: 32, offset: 32)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !683, line: 23, baseType: !684)
!683 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !683, line: 21, size: 32, elements: !685)
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !684, file: !683, line: 22, baseType: !687, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !292, line: 32, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !560, line: 49, baseType: !7)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !677, file: !208, line: 614, baseType: !690, size: 32, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !683, line: 28, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !683, line: 26, size: 32, elements: !692)
!692 = !{!693}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !691, file: !683, line: 27, baseType: !694, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !292, line: 33, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !560, line: 50, baseType: !7)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !677, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !677, file: !208, line: 622, baseType: !698, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !700)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !701)
!701 = !{!702, !706, !716, !720, !726, !730, !736, !740, !744, !748, !752, !753, !759, !763, !789, !818, !822, !828, !833, !837, !838}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !700, file: !208, line: 1865, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!634, !676, !634, !7}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !700, file: !208, line: 1866, baseType: !707, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!303, !634, !676, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !712, line: 10, size: 128, elements: !713)
!712 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !711, file: !712, line: 11, baseType: !328, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !711, file: !712, line: 12, baseType: !293, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !700, file: !208, line: 1867, baseType: !717, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!320, !676, !320}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !700, file: !208, line: 1868, baseType: !721, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!724, !676, !320}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !700, file: !208, line: 1870, baseType: !727, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!320, !634, !326, !320}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !700, file: !208, line: 1872, baseType: !731, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!320, !676, !634, !568, !734}
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !292, line: 30, baseType: !735)
!735 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !700, file: !208, line: 1873, baseType: !737, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!320, !634, !676, !634}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !700, file: !208, line: 1874, baseType: !741, size: 64, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!320, !676, !634}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !700, file: !208, line: 1875, baseType: !745, size: 64, offset: 512)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!320, !676, !634, !303}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !700, file: !208, line: 1876, baseType: !749, size: 64, offset: 576)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!320, !676, !634, !568}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !700, file: !208, line: 1877, baseType: !741, size: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !700, file: !208, line: 1878, baseType: !754, size: 64, offset: 704)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!320, !676, !634, !568, !757}
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !292, line: 16, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !292, line: 13, baseType: !416)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !700, file: !208, line: 1879, baseType: !760, size: 64, offset: 768)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!320, !676, !634, !676, !634, !7}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !700, file: !208, line: 1881, baseType: !764, size: 64, offset: 832)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!320, !634, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !769)
!769 = !{!770, !771, !772, !773, !774, !778, !786, !787, !788}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !768, file: !208, line: 220, baseType: !7, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !768, file: !208, line: 221, baseType: !568, size: 16, offset: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !768, file: !208, line: 222, baseType: !682, size: 32, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !768, file: !208, line: 223, baseType: !690, size: 32, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !768, file: !208, line: 224, baseType: !775, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !292, line: 46, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !560, line: 88, baseType: !777)
!777 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !768, file: !208, line: 225, baseType: !779, size: 128, offset: 192)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !780, line: 13, size: 128, elements: !781)
!780 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!781 = !{!782, !785}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !779, file: !780, line: 14, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !780, line: 8, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !336, line: 30, baseType: !777)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !779, file: !780, line: 15, baseType: !562, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !768, file: !208, line: 226, baseType: !779, size: 128, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !768, file: !208, line: 227, baseType: !779, size: 128, offset: 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !768, file: !208, line: 234, baseType: !604, size: 64, offset: 576)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !700, file: !208, line: 1882, baseType: !790, size: 64, offset: 896)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!320, !793, !795, !416, !7}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !797, line: 22, size: 1152, elements: !798)
!797 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!798 = !{!799, !800, !801, !802, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !796, file: !797, line: 23, baseType: !416, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !796, file: !797, line: 24, baseType: !568, size: 16, offset: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !796, file: !797, line: 25, baseType: !7, size: 32, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !796, file: !797, line: 26, baseType: !803, size: 32, offset: 96)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !292, line: 104, baseType: !416)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !796, file: !797, line: 27, baseType: !669, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !796, file: !797, line: 28, baseType: !669, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !796, file: !797, line: 37, baseType: !669, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !796, file: !797, line: 38, baseType: !757, size: 32, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !796, file: !797, line: 39, baseType: !757, size: 32, offset: 352)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !796, file: !797, line: 40, baseType: !682, size: 32, offset: 384)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !796, file: !797, line: 41, baseType: !690, size: 32, offset: 416)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !796, file: !797, line: 42, baseType: !775, size: 64, offset: 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !796, file: !797, line: 43, baseType: !779, size: 128, offset: 512)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !796, file: !797, line: 44, baseType: !779, size: 128, offset: 640)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !796, file: !797, line: 45, baseType: !779, size: 128, offset: 768)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !796, file: !797, line: 46, baseType: !779, size: 128, offset: 896)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !796, file: !797, line: 47, baseType: !669, size: 64, offset: 1024)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !796, file: !797, line: 48, baseType: !669, size: 64, offset: 1088)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !700, file: !208, line: 1883, baseType: !819, size: 64, offset: 960)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!558, !634, !326, !573}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !700, file: !208, line: 1884, baseType: !823, size: 64, offset: 1024)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!320, !676, !826, !669, !669}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !700, file: !208, line: 1886, baseType: !829, size: 64, offset: 1088)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!320, !676, !832, !320}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !700, file: !208, line: 1887, baseType: !834, size: 64, offset: 1152)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!320, !676, !634, !604, !7, !568}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !700, file: !208, line: 1890, baseType: !749, size: 64, offset: 1216)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !700, file: !208, line: 1891, baseType: !839, size: 64, offset: 1280)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!320, !676, !724, !320}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !677, file: !208, line: 623, baseType: !843, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !845)
!845 = !{!846, !847, !848, !849, !850, !851, !898, !2516, !2598, !2681, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2697, !2701, !2702, !2705, !2706, !2709, !2710, !2711, !2752, !2778, !2779, !2780, !2781, !2782, !2783, !2786, !2788, !2795, !2796, !2798, !2799, !2800, !2859, !2860, !2875, !2876, !2877, !2878, !2879, !2882, !2883, !2884, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !844, file: !208, line: 1417, baseType: !457, size: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !844, file: !208, line: 1418, baseType: !757, size: 32, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !844, file: !208, line: 1419, baseType: !345, size: 8, offset: 160)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !844, file: !208, line: 1420, baseType: !576, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !844, file: !208, line: 1421, baseType: !775, size: 64, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !844, file: !208, line: 1422, baseType: !852, size: 64, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !854)
!854 = !{!855, !856, !857, !864, !868, !872, !876, !877, !878, !888, !891, !892, !893, !895, !896, !897}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !853, file: !208, line: 2229, baseType: !303, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !853, file: !208, line: 2230, baseType: !320, size: 32, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !853, file: !208, line: 2238, baseType: !858, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!320, !861}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !863, line: 28, flags: DIFlagFwdDecl)
!863 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!864 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !853, file: !208, line: 2239, baseType: !865, size: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !867)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !853, file: !208, line: 2240, baseType: !869, size: 64, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!634, !852, !320, !303, !293}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !853, file: !208, line: 2242, baseType: !873, size: 64, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !843}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !853, file: !208, line: 2243, baseType: !307, size: 64, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !853, file: !208, line: 2244, baseType: !852, size: 64, offset: 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !853, file: !208, line: 2245, baseType: !879, size: 64, offset: 512)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !292, line: 182, size: 64, elements: !880)
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !879, file: !292, line: 183, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !292, line: 186, size: 128, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !883, file: !292, line: 187, baseType: !882, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !883, file: !292, line: 187, baseType: !887, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !853, file: !208, line: 2247, baseType: !889, offset: 576)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !890, line: 187, elements: !501)
!890 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!891 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !853, file: !208, line: 2248, baseType: !889, offset: 576)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !853, file: !208, line: 2249, baseType: !889, offset: 576)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !853, file: !208, line: 2250, baseType: !894, offset: 576)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !889, elements: !528)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !853, file: !208, line: 2252, baseType: !889, offset: 576)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !853, file: !208, line: 2253, baseType: !889, offset: 576)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !853, file: !208, line: 2254, baseType: !889, offset: 576)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !844, file: !208, line: 1423, baseType: !899, size: 64, offset: 384)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !902)
!902 = !{!903, !907, !911, !912, !916, !922, !926, !927, !928, !932, !936, !937, !938, !939, !945, !950, !951, !958, !959, !960, !961, !2500, !2515}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !901, file: !208, line: 1936, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!676, !843}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !901, file: !208, line: 1937, baseType: !908, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !676}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !901, file: !208, line: 1938, baseType: !908, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !901, file: !208, line: 1940, baseType: !913, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{null, !676, !320}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !901, file: !208, line: 1941, baseType: !917, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!320, !676, !920}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !901, file: !208, line: 1942, baseType: !923, size: 64, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!320, !676}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !901, file: !208, line: 1943, baseType: !908, size: 64, offset: 384)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !901, file: !208, line: 1944, baseType: !873, size: 64, offset: 448)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !901, file: !208, line: 1945, baseType: !929, size: 64, offset: 512)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!320, !843, !320}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !901, file: !208, line: 1946, baseType: !933, size: 64, offset: 576)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!320, !843}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !901, file: !208, line: 1947, baseType: !933, size: 64, offset: 640)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !901, file: !208, line: 1948, baseType: !933, size: 64, offset: 704)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !901, file: !208, line: 1949, baseType: !933, size: 64, offset: 768)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !901, file: !208, line: 1950, baseType: !940, size: 64, offset: 832)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!320, !634, !943}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !901, file: !208, line: 1951, baseType: !946, size: 64, offset: 896)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!320, !843, !949, !326}
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !901, file: !208, line: 1952, baseType: !873, size: 64, offset: 960)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !901, file: !208, line: 1954, baseType: !952, size: 64, offset: 1024)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!320, !955, !634}
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !957, line: 539, flags: DIFlagFwdDecl)
!957 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!958 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !901, file: !208, line: 1955, baseType: !952, size: 64, offset: 1088)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !901, file: !208, line: 1956, baseType: !952, size: 64, offset: 1152)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !901, file: !208, line: 1957, baseType: !952, size: 64, offset: 1216)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !901, file: !208, line: 1963, baseType: !962, size: 64, offset: 1280)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!320, !843, !965, !291}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !967, line: 68, size: 512, align: 128, elements: !968)
!967 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!968 = !{!969, !970, !2492, !2499}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !966, file: !967, line: 69, baseType: !576, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !967, line: 77, baseType: !971, size: 320, offset: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !967, line: 77, size: 320, elements: !972)
!972 = !{!973, !1154, !1159, !1187, !1195, !1201, !2484, !2491}
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !967, line: 78, baseType: !974, size: 320)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !967, line: 78, size: 320, elements: !975)
!975 = !{!976, !977, !1152, !1153}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !974, file: !967, line: 84, baseType: !457, size: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !974, file: !967, line: 86, baseType: !978, size: 64, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !980)
!980 = !{!981, !982, !989, !990, !991, !1006, !1022, !1023, !1024, !1025, !1145, !1146, !1149, !1150, !1151}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !979, file: !208, line: 452, baseType: !676, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !979, file: !208, line: 453, baseType: !983, size: 128, offset: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !984, line: 292, size: 128, elements: !985)
!984 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!985 = !{!986, !987, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !983, file: !984, line: 293, baseType: !487)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !983, file: !984, line: 295, baseType: !291, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !983, file: !984, line: 296, baseType: !293, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !979, file: !208, line: 454, baseType: !291, size: 32, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !979, file: !208, line: 455, baseType: !446, size: 32, offset: 224)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !979, file: !208, line: 460, baseType: !992, size: 128, offset: 256)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !993, line: 125, size: 128, elements: !994)
!993 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!994 = !{!995, !1005}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !992, file: !993, line: 126, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !993, line: 31, size: 64, elements: !997)
!997 = !{!998}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !996, file: !993, line: 32, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !993, line: 24, size: 192, align: 64, elements: !1001)
!1001 = !{!1002, !1003, !1004}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1000, file: !993, line: 25, baseType: !576, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1000, file: !993, line: 26, baseType: !999, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1000, file: !993, line: 27, baseType: !999, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !992, file: !993, line: 127, baseType: !999, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !979, file: !208, line: 461, baseType: !1007, size: 256, offset: 384)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1008, line: 35, size: 256, elements: !1009)
!1008 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1009 = !{!1010, !1018, !1019, !1021}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1007, file: !1008, line: 36, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1012, line: 13, baseType: !1013)
!1012 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !292, line: 175, baseType: !1014)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 173, size: 64, elements: !1015)
!1015 = !{!1016}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1014, file: !292, line: 174, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !334, line: 22, baseType: !784)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1007, file: !1008, line: 42, baseType: !1011, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1007, file: !1008, line: 46, baseType: !1020, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !488, line: 29, baseType: !495)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1007, file: !1008, line: 47, baseType: !457, size: 128, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !979, file: !208, line: 462, baseType: !576, size: 64, offset: 640)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !979, file: !208, line: 463, baseType: !576, size: 64, offset: 704)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !979, file: !208, line: 464, baseType: !576, size: 64, offset: 768)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !979, file: !208, line: 465, baseType: !1026, size: 64, offset: 832)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1029)
!1029 = !{!1030, !1034, !1038, !1042, !1046, !1050, !1056, !1062, !1066, !1071, !1075, !1079, !1083, !1109, !1113, !1119, !1120, !1121, !1125, !1130, !1134, !1141}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1028, file: !208, line: 368, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!320, !965, !920}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1028, file: !208, line: 369, baseType: !1035, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!320, !604, !965}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1028, file: !208, line: 372, baseType: !1039, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!320, !978, !920}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1028, file: !208, line: 375, baseType: !1043, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!320, !965}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1028, file: !208, line: 381, baseType: !1047, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!320, !604, !978, !460, !7}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1028, file: !208, line: 383, baseType: !1051, size: 64, offset: 320)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{null, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1028, file: !208, line: 385, baseType: !1057, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!320, !604, !978, !775, !7, !7, !1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1028, file: !208, line: 388, baseType: !1063, size: 64, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!320, !604, !978, !775, !7, !7, !965, !293}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1028, file: !208, line: 393, baseType: !1067, size: 64, offset: 512)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!1070, !978, !1070}
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !292, line: 125, baseType: !669)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1028, file: !208, line: 394, baseType: !1072, size: 64, offset: 576)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !965, !7, !7}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1028, file: !208, line: 395, baseType: !1076, size: 64, offset: 640)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!320, !965, !291}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1028, file: !208, line: 396, baseType: !1080, size: 64, offset: 704)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{null, !965}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1028, file: !208, line: 397, baseType: !1084, size: 64, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!558, !1087, !1107}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1089)
!1089 = !{!1090, !1091, !1092, !1096, !1097, !1098, !1099, !1100}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1088, file: !208, line: 321, baseType: !604, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1088, file: !208, line: 326, baseType: !775, size: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1088, file: !208, line: 327, baseType: !1093, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !1087, !562, !562}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1088, file: !208, line: 328, baseType: !293, size: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1088, file: !208, line: 329, baseType: !320, size: 32, offset: 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1088, file: !208, line: 330, baseType: !333, size: 16, offset: 288)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1088, file: !208, line: 331, baseType: !333, size: 16, offset: 304)
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !208, line: 332, baseType: !1101, size: 64, offset: 320)
!1101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1088, file: !208, line: 332, size: 64, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1101, file: !208, line: 333, baseType: !7, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1101, file: !208, line: 334, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1028, file: !208, line: 402, baseType: !1110, size: 64, offset: 832)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!320, !978, !965, !965, !183}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1028, file: !208, line: 404, baseType: !1114, size: 64, offset: 896)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!734, !965, !1117}
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1118, line: 305, baseType: !7)
!1118 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1028, file: !208, line: 405, baseType: !1080, size: 64, offset: 960)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1028, file: !208, line: 406, baseType: !1043, size: 64, offset: 1024)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1028, file: !208, line: 407, baseType: !1122, size: 64, offset: 1088)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!320, !965, !576, !576}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1028, file: !208, line: 409, baseType: !1126, size: 64, offset: 1152)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !965, !1129, !1129}
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1028, file: !208, line: 410, baseType: !1131, size: 64, offset: 1216)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!320, !978, !965}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1028, file: !208, line: 413, baseType: !1135, size: 64, offset: 1280)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!320, !1138, !604, !1140}
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1028, file: !208, line: 415, baseType: !1142, size: 64, offset: 1344)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{null, !604}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !979, file: !208, line: 466, baseType: !576, size: 64, offset: 896)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !979, file: !208, line: 467, baseType: !1147, size: 32, offset: 960)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1148, line: 8, baseType: !416)
!1148 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !979, file: !208, line: 468, baseType: !487, offset: 992)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !979, file: !208, line: 469, baseType: !457, size: 128, offset: 1024)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !979, file: !208, line: 470, baseType: !293, size: 64, offset: 1152)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !974, file: !967, line: 87, baseType: !576, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !974, file: !967, line: 94, baseType: !576, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !967, line: 96, baseType: !1155, size: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !967, line: 96, size: 64, elements: !1156)
!1156 = !{!1157}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1155, file: !967, line: 101, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !292, line: 143, baseType: !669)
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !967, line: 103, baseType: !1160, size: 320)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !967, line: 103, size: 320, elements: !1161)
!1161 = !{!1162, !1172, !1175, !1176}
!1162 = !DIDerivedType(tag: DW_TAG_member, scope: !1160, file: !967, line: 104, baseType: !1163, size: 128)
!1163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1160, file: !967, line: 104, size: 128, elements: !1164)
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1163, file: !967, line: 105, baseType: !457, size: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, scope: !1163, file: !967, line: 106, baseType: !1167, size: 128)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1163, file: !967, line: 106, size: 128, elements: !1168)
!1168 = !{!1169, !1170, !1171}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1167, file: !967, line: 107, baseType: !965, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1167, file: !967, line: 109, baseType: !320, size: 32, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1167, file: !967, line: 110, baseType: !320, size: 32, offset: 96)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1160, file: !967, line: 117, baseType: !1173, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !967, line: 117, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1160, file: !967, line: 119, baseType: !293, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1160, file: !967, line: 120, baseType: !1177, size: 64, offset: 256)
!1177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1160, file: !967, line: 120, size: 64, elements: !1178)
!1178 = !{!1179, !1180, !1181}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1177, file: !967, line: 121, baseType: !293, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1177, file: !967, line: 122, baseType: !576, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !967, line: 123, baseType: !1182, size: 32)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1177, file: !967, line: 123, size: 32, elements: !1183)
!1183 = !{!1184, !1185, !1186}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1182, file: !967, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1182, file: !967, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1182, file: !967, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !967, line: 130, baseType: !1188, size: 192)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !967, line: 130, size: 192, elements: !1189)
!1189 = !{!1190, !1191, !1192, !1193, !1194}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1188, file: !967, line: 131, baseType: !576, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1188, file: !967, line: 134, baseType: !345, size: 8, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1188, file: !967, line: 135, baseType: !345, size: 8, offset: 72)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1188, file: !967, line: 136, baseType: !446, size: 32, offset: 96)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1188, file: !967, line: 137, baseType: !7, size: 32, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !967, line: 139, baseType: !1196, size: 256)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !967, line: 139, size: 256, elements: !1197)
!1197 = !{!1198, !1199, !1200}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1196, file: !967, line: 140, baseType: !576, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1196, file: !967, line: 141, baseType: !446, size: 32, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1196, file: !967, line: 143, baseType: !457, size: 128, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !967, line: 145, baseType: !1202, size: 256)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !967, line: 145, size: 256, elements: !1203)
!1203 = !{!1204, !1205, !1207, !1208, !2483}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1202, file: !967, line: 146, baseType: !576, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1202, file: !967, line: 147, baseType: !1206, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !957, line: 509, baseType: !965)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1202, file: !967, line: 148, baseType: !576, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !967, line: 149, baseType: !1209, size: 64, offset: 192)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1202, file: !967, line: 149, size: 64, elements: !1210)
!1210 = !{!1211, !2482}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1209, file: !967, line: 150, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !967, line: 388, size: 7296, elements: !1214)
!1214 = !{!1215, !2478}
!1215 = !DIDerivedType(tag: DW_TAG_member, scope: !1213, file: !967, line: 389, baseType: !1216, size: 7296)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1213, file: !967, line: 389, size: 7296, elements: !1217)
!1217 = !{!1218, !1256, !1257, !1258, !1262, !1263, !1264, !1265, !1266, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1307, !1315, !1318, !1363, !1364, !2462, !2463, !2466, !2467, !2468, !2471, !2472, !2473, !2476, !2477}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1216, file: !967, line: 390, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !967, line: 305, size: 1472, elements: !1221)
!1221 = !{!1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1236, !1237, !1242, !1243, !1246, !1250, !1251, !1252, !1253, !1254}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1220, file: !967, line: 308, baseType: !576, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1220, file: !967, line: 309, baseType: !576, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1220, file: !967, line: 313, baseType: !1219, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1220, file: !967, line: 313, baseType: !1219, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1220, file: !967, line: 315, baseType: !1000, size: 192, align: 64, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1220, file: !967, line: 323, baseType: !576, size: 64, offset: 448)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1220, file: !967, line: 327, baseType: !1212, size: 64, offset: 512)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1220, file: !967, line: 333, baseType: !1230, size: 64, offset: 576)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !957, line: 284, baseType: !1231)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !957, line: 284, size: 64, elements: !1232)
!1232 = !{!1233}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1231, file: !957, line: 284, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1235, line: 19, baseType: !576)
!1235 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1220, file: !967, line: 334, baseType: !576, size: 64, offset: 640)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1220, file: !967, line: 343, baseType: !1238, size: 256, offset: 704)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !967, line: 340, size: 256, elements: !1239)
!1239 = !{!1240, !1241}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1238, file: !967, line: 341, baseType: !1000, size: 192, align: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1238, file: !967, line: 342, baseType: !576, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1220, file: !967, line: 351, baseType: !457, size: 128, offset: 960)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1220, file: !967, line: 353, baseType: !1244, size: 64, offset: 1088)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !967, line: 353, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1220, file: !967, line: 356, baseType: !1247, size: 64, offset: 1152)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1249)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !967, line: 356, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1220, file: !967, line: 359, baseType: !576, size: 64, offset: 1216)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1220, file: !967, line: 361, baseType: !604, size: 64, offset: 1280)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1220, file: !967, line: 362, baseType: !293, size: 64, offset: 1344)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1220, file: !967, line: 365, baseType: !1011, size: 64, offset: 1408)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1220, file: !967, line: 373, baseType: !1255, offset: 1472)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !967, line: 296, elements: !501)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1216, file: !967, line: 391, baseType: !996, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1216, file: !967, line: 392, baseType: !669, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1216, file: !967, line: 394, baseType: !1259, size: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!576, !604, !576, !576, !576, !576}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1216, file: !967, line: 398, baseType: !576, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1216, file: !967, line: 399, baseType: !576, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1216, file: !967, line: 405, baseType: !576, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1216, file: !967, line: 406, baseType: !576, size: 64, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1216, file: !967, line: 407, baseType: !1267, size: 64, offset: 512)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !957, line: 286, baseType: !1269)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !957, line: 286, size: 64, elements: !1270)
!1270 = !{!1271}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1269, file: !957, line: 286, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1235, line: 18, baseType: !576)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1216, file: !967, line: 416, baseType: !446, size: 32, offset: 576)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1216, file: !967, line: 428, baseType: !446, size: 32, offset: 608)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1216, file: !967, line: 437, baseType: !446, size: 32, offset: 640)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1216, file: !967, line: 447, baseType: !446, size: 32, offset: 672)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1216, file: !967, line: 450, baseType: !1011, size: 64, offset: 704)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1216, file: !967, line: 452, baseType: !320, size: 32, offset: 768)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1216, file: !967, line: 454, baseType: !487, offset: 800)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1216, file: !967, line: 457, baseType: !1007, size: 256, offset: 832)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1216, file: !967, line: 459, baseType: !457, size: 128, offset: 1088)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1216, file: !967, line: 466, baseType: !576, size: 64, offset: 1216)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1216, file: !967, line: 467, baseType: !576, size: 64, offset: 1280)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1216, file: !967, line: 469, baseType: !576, size: 64, offset: 1344)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1216, file: !967, line: 470, baseType: !576, size: 64, offset: 1408)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1216, file: !967, line: 471, baseType: !1013, size: 64, offset: 1472)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1216, file: !967, line: 472, baseType: !576, size: 64, offset: 1536)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1216, file: !967, line: 473, baseType: !576, size: 64, offset: 1600)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1216, file: !967, line: 474, baseType: !576, size: 64, offset: 1664)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1216, file: !967, line: 475, baseType: !576, size: 64, offset: 1728)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1216, file: !967, line: 477, baseType: !487, offset: 1792)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1216, file: !967, line: 478, baseType: !576, size: 64, offset: 1792)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1216, file: !967, line: 478, baseType: !576, size: 64, offset: 1856)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1216, file: !967, line: 478, baseType: !576, size: 64, offset: 1920)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1216, file: !967, line: 478, baseType: !576, size: 64, offset: 1984)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1216, file: !967, line: 479, baseType: !576, size: 64, offset: 2048)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1216, file: !967, line: 479, baseType: !576, size: 64, offset: 2112)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1216, file: !967, line: 479, baseType: !576, size: 64, offset: 2176)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1216, file: !967, line: 480, baseType: !576, size: 64, offset: 2240)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1216, file: !967, line: 480, baseType: !576, size: 64, offset: 2304)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1216, file: !967, line: 480, baseType: !576, size: 64, offset: 2368)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1216, file: !967, line: 480, baseType: !576, size: 64, offset: 2432)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1216, file: !967, line: 482, baseType: !1304, size: 2816, offset: 2496)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 2816, elements: !1305)
!1305 = !{!1306}
!1306 = !DISubrange(count: 44)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1216, file: !967, line: 488, baseType: !1308, size: 256, offset: 5312)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1309, line: 60, size: 256, elements: !1310)
!1309 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1308, file: !1309, line: 61, baseType: !1312, size: 256)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1011, size: 256, elements: !1313)
!1313 = !{!1314}
!1314 = !DISubrange(count: 4)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1216, file: !967, line: 490, baseType: !1316, size: 64, offset: 5568)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !967, line: 490, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1216, file: !967, line: 493, baseType: !1319, size: 896, offset: 5632)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1320, line: 53, baseType: !1321)
!1320 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1320, line: 13, size: 896, elements: !1322)
!1322 = !{!1323, !1324, !1325, !1326, !1329, !1330, !1337, !1338, !1358, !1359, !1360}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1321, file: !1320, line: 18, baseType: !669, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1321, file: !1320, line: 28, baseType: !1013, size: 64, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1321, file: !1320, line: 31, baseType: !1007, size: 256, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1321, file: !1320, line: 32, baseType: !1327, size: 64, offset: 384)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1320, line: 32, flags: DIFlagFwdDecl)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1321, file: !1320, line: 37, baseType: !337, size: 16, offset: 448)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1321, file: !1320, line: 40, baseType: !1331, size: 192, offset: 512)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1332, line: 53, size: 192, elements: !1333)
!1332 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1333 = !{!1334, !1335, !1336}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1331, file: !1332, line: 54, baseType: !1011, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1331, file: !1332, line: 55, baseType: !487, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1331, file: !1332, line: 59, baseType: !457, size: 128, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1321, file: !1320, line: 41, baseType: !293, size: 64, offset: 704)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1321, file: !1320, line: 42, baseType: !1339, size: 64, offset: 768)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1341)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1342, line: 13, size: 896, elements: !1343)
!1342 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1341, file: !1342, line: 14, baseType: !293, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1341, file: !1342, line: 15, baseType: !576, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1341, file: !1342, line: 17, baseType: !576, size: 64, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1341, file: !1342, line: 17, baseType: !576, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1341, file: !1342, line: 19, baseType: !562, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1341, file: !1342, line: 21, baseType: !562, size: 64, offset: 320)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1341, file: !1342, line: 22, baseType: !562, size: 64, offset: 384)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1341, file: !1342, line: 23, baseType: !562, size: 64, offset: 448)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1341, file: !1342, line: 24, baseType: !562, size: 64, offset: 512)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1341, file: !1342, line: 25, baseType: !562, size: 64, offset: 576)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1341, file: !1342, line: 26, baseType: !562, size: 64, offset: 640)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1341, file: !1342, line: 27, baseType: !562, size: 64, offset: 704)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1341, file: !1342, line: 28, baseType: !562, size: 64, offset: 768)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1341, file: !1342, line: 29, baseType: !562, size: 64, offset: 832)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1321, file: !1320, line: 44, baseType: !446, size: 32, offset: 832)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1321, file: !1320, line: 50, baseType: !333, size: 16, offset: 864)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1321, file: !1320, line: 51, baseType: !1361, size: 16, offset: 880)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !334, line: 18, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !336, line: 23, baseType: !294)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1216, file: !967, line: 495, baseType: !576, size: 64, offset: 6528)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1216, file: !967, line: 497, baseType: !1365, size: 64, offset: 6592)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !967, line: 381, size: 384, elements: !1367)
!1367 = !{!1368, !1369, !2461}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1366, file: !967, line: 382, baseType: !446, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1366, file: !967, line: 383, baseType: !1370, size: 128, offset: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !967, line: 376, size: 128, elements: !1371)
!1371 = !{!1372, !2459}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1370, file: !967, line: 377, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1375, line: 640, size: 48640, elements: !1376)
!1375 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1376 = !{!1377, !1383, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1398, !1416, !1427, !1508, !1509, !1510, !1521, !1522, !1524, !1525, !1526, !1527, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1611, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1649, !1651, !1652, !1653, !1665, !1666, !1667, !1668, !1669, !1670, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1694, !1699, !1881, !1882, !1883, !1884, !1888, !1891, !1894, !1897, !1900, !1904, !2005, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2051, !2052, !2053, !2054, !2055, !2060, !2061, !2062, !2065, !2066, !2069, !2072, !2075, !2078, !2121, !2124, !2125, !2204, !2205, !2208, !2209, !2212, !2213, !2214, !2218, !2219, !2220, !2233, !2234, !2235, !2245, !2250, !2253, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1374, file: !1375, line: 646, baseType: !1378, size: 128)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1379, line: 56, size: 128, elements: !1380)
!1379 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1378, file: !1379, line: 57, baseType: !576, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1378, file: !1379, line: 58, baseType: !416, size: 32, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1374, file: !1375, line: 649, baseType: !1384, size: 64, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !562)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1374, file: !1375, line: 657, baseType: !293, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1374, file: !1375, line: 658, baseType: !441, size: 32, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1374, file: !1375, line: 660, baseType: !7, size: 32, offset: 288)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1374, file: !1375, line: 661, baseType: !7, size: 32, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1374, file: !1375, line: 684, baseType: !320, size: 32, offset: 352)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1374, file: !1375, line: 686, baseType: !320, size: 32, offset: 384)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1374, file: !1375, line: 687, baseType: !320, size: 32, offset: 416)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1374, file: !1375, line: 688, baseType: !320, size: 32, offset: 448)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1374, file: !1375, line: 689, baseType: !7, size: 32, offset: 480)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1374, file: !1375, line: 691, baseType: !1395, size: 64, offset: 512)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1397)
!1397 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1375, line: 691, flags: DIFlagFwdDecl)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1374, file: !1375, line: 692, baseType: !1399, size: 832, offset: 576)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1375, line: 451, size: 832, elements: !1400)
!1400 = !{!1401, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1399, file: !1375, line: 453, baseType: !1402, size: 128)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1375, line: 325, size: 128, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1402, file: !1375, line: 326, baseType: !576, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1402, file: !1375, line: 327, baseType: !416, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1399, file: !1375, line: 454, baseType: !1000, size: 192, align: 64, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1399, file: !1375, line: 455, baseType: !457, size: 128, offset: 320)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1399, file: !1375, line: 456, baseType: !7, size: 32, offset: 448)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1399, file: !1375, line: 458, baseType: !669, size: 64, offset: 512)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1399, file: !1375, line: 459, baseType: !669, size: 64, offset: 576)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1399, file: !1375, line: 460, baseType: !669, size: 64, offset: 640)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1399, file: !1375, line: 461, baseType: !669, size: 64, offset: 704)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1399, file: !1375, line: 463, baseType: !669, size: 64, offset: 768)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1399, file: !1375, line: 465, baseType: !1415, offset: 832)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1375, line: 415, elements: !501)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1374, file: !1375, line: 693, baseType: !1417, size: 384, offset: 1408)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1375, line: 489, size: 384, elements: !1418)
!1418 = !{!1419, !1420, !1421, !1422, !1423, !1424, !1425}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1417, file: !1375, line: 490, baseType: !457, size: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1417, file: !1375, line: 491, baseType: !576, size: 64, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1417, file: !1375, line: 492, baseType: !576, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1417, file: !1375, line: 493, baseType: !7, size: 32, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1417, file: !1375, line: 494, baseType: !337, size: 16, offset: 288)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1417, file: !1375, line: 495, baseType: !337, size: 16, offset: 304)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1417, file: !1375, line: 497, baseType: !1426, size: 64, offset: 320)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1374, file: !1375, line: 697, baseType: !1428, size: 1792, offset: 1792)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1375, line: 507, size: 1792, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1505, !1506}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1428, file: !1375, line: 508, baseType: !1000, size: 192, align: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1428, file: !1375, line: 515, baseType: !669, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1428, file: !1375, line: 516, baseType: !669, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1428, file: !1375, line: 517, baseType: !669, size: 64, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1428, file: !1375, line: 518, baseType: !669, size: 64, offset: 384)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1428, file: !1375, line: 519, baseType: !669, size: 64, offset: 448)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1428, file: !1375, line: 526, baseType: !1017, size: 64, offset: 512)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1428, file: !1375, line: 527, baseType: !669, size: 64, offset: 576)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1428, file: !1375, line: 528, baseType: !7, size: 32, offset: 640)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1428, file: !1375, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1428, file: !1375, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1428, file: !1375, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1428, file: !1375, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1428, file: !1375, line: 563, baseType: !1444, size: 512, offset: 704)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !1445)
!1445 = !{!1446, !1454, !1455, !1460, !1501, !1502, !1503, !1504}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1444, file: !191, line: 119, baseType: !1447, size: 256)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1448, line: 9, size: 256, elements: !1449)
!1448 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1447, file: !1448, line: 10, baseType: !1000, size: 192, align: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1447, file: !1448, line: 11, baseType: !1452, size: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1453, line: 29, baseType: !1017)
!1453 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1444, file: !191, line: 120, baseType: !1452, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1444, file: !191, line: 121, baseType: !1456, size: 64, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!190, !1459}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1444, file: !191, line: 122, baseType: !1461, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !1463)
!1463 = !{!1464, !1482, !1483, !1486, !1491, !1492, !1496, !1500}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1462, file: !191, line: 160, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !1467)
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1466, file: !191, line: 215, baseType: !1020)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1466, file: !191, line: 216, baseType: !7, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1466, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1466, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1466, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1466, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1466, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1466, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1466, file: !191, line: 233, baseType: !1452, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1466, file: !191, line: 234, baseType: !1459, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1466, file: !191, line: 235, baseType: !1452, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1466, file: !191, line: 236, baseType: !1459, size: 64, offset: 320)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1466, file: !191, line: 237, baseType: !1481, size: 4096, offset: 512)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1462, size: 4096, elements: !427)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1462, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1462, file: !191, line: 162, baseType: !1484, size: 32, offset: 96)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !292, line: 27, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !560, line: 96, baseType: !320)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1462, file: !191, line: 163, baseType: !1487, size: 32, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !640, line: 276, baseType: !1488)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !640, line: 276, size: 32, elements: !1489)
!1489 = !{!1490}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1488, file: !640, line: 276, baseType: !644, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1462, file: !191, line: 164, baseType: !1459, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1462, file: !191, line: 165, baseType: !1493, size: 128, offset: 256)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1448, line: 14, size: 128, elements: !1494)
!1494 = !{!1495}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1493, file: !1448, line: 15, baseType: !992, size: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1462, file: !191, line: 166, baseType: !1497, size: 64, offset: 384)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!1452}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1462, file: !191, line: 167, baseType: !1452, size: 64, offset: 448)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1444, file: !191, line: 123, baseType: !343, size: 8, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1444, file: !191, line: 124, baseType: !343, size: 8, offset: 456)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1444, file: !191, line: 125, baseType: !343, size: 8, offset: 464)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1444, file: !191, line: 126, baseType: !343, size: 8, offset: 472)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1428, file: !1375, line: 572, baseType: !1444, size: 512, offset: 1216)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1428, file: !1375, line: 580, baseType: !1507, size: 64, offset: 1728)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1374, file: !1375, line: 721, baseType: !7, size: 32, offset: 3584)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1374, file: !1375, line: 722, baseType: !320, size: 32, offset: 3616)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1374, file: !1375, line: 723, baseType: !1511, size: 64, offset: 3648)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1513)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1514, line: 17, baseType: !1515)
!1514 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1514, line: 17, size: 64, elements: !1516)
!1516 = !{!1517}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1515, file: !1514, line: 17, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 64, elements: !1519)
!1519 = !{!1520}
!1520 = !DISubrange(count: 1)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1374, file: !1375, line: 724, baseType: !1513, size: 64, offset: 3712)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1374, file: !1375, line: 749, baseType: !1523, offset: 3776)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1375, line: 290, elements: !501)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1374, file: !1375, line: 751, baseType: !457, size: 128, offset: 3776)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1374, file: !1375, line: 757, baseType: !1212, size: 64, offset: 3904)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1374, file: !1375, line: 758, baseType: !1212, size: 64, offset: 3968)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1374, file: !1375, line: 761, baseType: !1528, size: 320, offset: 4032)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1309, line: 34, size: 320, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1528, file: !1309, line: 35, baseType: !669, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1528, file: !1309, line: 36, baseType: !1532, size: 256, offset: 64)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1219, size: 256, elements: !1313)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1374, file: !1375, line: 766, baseType: !320, size: 32, offset: 4352)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1374, file: !1375, line: 767, baseType: !320, size: 32, offset: 4384)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1374, file: !1375, line: 768, baseType: !320, size: 32, offset: 4416)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1374, file: !1375, line: 770, baseType: !320, size: 32, offset: 4448)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1374, file: !1375, line: 772, baseType: !576, size: 64, offset: 4480)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1374, file: !1375, line: 775, baseType: !7, size: 32, offset: 4544)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1374, file: !1375, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1374, file: !1375, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1374, file: !1375, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1374, file: !1375, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1374, file: !1375, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1374, file: !1375, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1374, file: !1375, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1374, file: !1375, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1374, file: !1375, line: 831, baseType: !576, size: 64, offset: 4672)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1374, file: !1375, line: 833, baseType: !1549, size: 384, offset: 4736)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !1550)
!1550 = !{!1551, !1556}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1549, file: !196, line: 26, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!562, !1555}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !196, line: 27, baseType: !1557, size: 320, offset: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1549, file: !196, line: 27, size: 320, elements: !1558)
!1558 = !{!1559, !1569, !1596}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1557, file: !196, line: 36, baseType: !1560, size: 320)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1557, file: !196, line: 29, size: 320, elements: !1561)
!1561 = !{!1562, !1564, !1565, !1566, !1567, !1568}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1560, file: !196, line: 30, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1560, file: !196, line: 31, baseType: !416, size: 32, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1560, file: !196, line: 32, baseType: !416, size: 32, offset: 96)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1560, file: !196, line: 33, baseType: !416, size: 32, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1560, file: !196, line: 34, baseType: !669, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1560, file: !196, line: 35, baseType: !1563, size: 64, offset: 256)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1557, file: !196, line: 46, baseType: !1570, size: 192)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1557, file: !196, line: 38, size: 192, elements: !1571)
!1571 = !{!1572, !1573, !1574, !1595}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1570, file: !196, line: 39, baseType: !1484, size: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1570, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !196, line: 41, baseType: !1575, size: 64, offset: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1570, file: !196, line: 41, size: 64, elements: !1576)
!1576 = !{!1577, !1585}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1575, file: !196, line: 42, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1580, line: 7, size: 128, elements: !1581)
!1580 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1581 = !{!1582, !1584}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1579, file: !1580, line: 8, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !560, line: 93, baseType: !777)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1579, file: !1580, line: 9, baseType: !777, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1575, file: !196, line: 43, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1588, line: 7, size: 64, elements: !1589)
!1588 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1589 = !{!1590, !1594}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1587, file: !1588, line: 8, baseType: !1591, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1588, line: 5, baseType: !1592)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !334, line: 20, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !336, line: 26, baseType: !320)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1587, file: !1588, line: 9, baseType: !1592, size: 32, offset: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1570, file: !196, line: 45, baseType: !669, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1557, file: !196, line: 54, baseType: !1597, size: 256)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1557, file: !196, line: 48, size: 256, elements: !1598)
!1598 = !{!1599, !1607, !1608, !1609, !1610}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1597, file: !196, line: 49, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1602, line: 36, size: 64, elements: !1603)
!1602 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1603 = !{!1604, !1605, !1606}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1601, file: !1602, line: 37, baseType: !320, size: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1601, file: !1602, line: 38, baseType: !294, size: 16, offset: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1601, file: !1602, line: 39, baseType: !294, size: 16, offset: 48)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1597, file: !196, line: 50, baseType: !320, size: 32, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1597, file: !196, line: 51, baseType: !320, size: 32, offset: 96)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1597, file: !196, line: 52, baseType: !576, size: 64, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1597, file: !196, line: 53, baseType: !576, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1374, file: !1375, line: 835, baseType: !1612, size: 32, offset: 5120)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !292, line: 22, baseType: !1613)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !560, line: 28, baseType: !320)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1374, file: !1375, line: 836, baseType: !1612, size: 32, offset: 5152)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1374, file: !1375, line: 840, baseType: !576, size: 64, offset: 5184)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1374, file: !1375, line: 849, baseType: !1373, size: 64, offset: 5248)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1374, file: !1375, line: 852, baseType: !1373, size: 64, offset: 5312)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1374, file: !1375, line: 857, baseType: !457, size: 128, offset: 5376)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1374, file: !1375, line: 858, baseType: !457, size: 128, offset: 5504)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1374, file: !1375, line: 859, baseType: !1373, size: 64, offset: 5632)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1374, file: !1375, line: 867, baseType: !457, size: 128, offset: 5696)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1374, file: !1375, line: 868, baseType: !457, size: 128, offset: 5824)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1374, file: !1375, line: 871, baseType: !1624, size: 64, offset: 5952)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !1626)
!1626 = !{!1627, !1628, !1629, !1630, !1632, !1633, !1640, !1641}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1625, file: !217, line: 61, baseType: !441, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1625, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1625, file: !217, line: 63, baseType: !487, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1625, file: !217, line: 65, baseType: !1631, size: 256, offset: 64)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !879, size: 256, elements: !1313)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1625, file: !217, line: 66, baseType: !879, size: 64, offset: 320)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1625, file: !217, line: 68, baseType: !1634, size: 128, offset: 384)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1635, line: 40, baseType: !1636)
!1635 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1635, line: 36, size: 128, elements: !1637)
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1636, file: !1635, line: 37, baseType: !487)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1636, file: !1635, line: 38, baseType: !457, size: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1625, file: !217, line: 69, baseType: !617, size: 128, align: 64, offset: 512)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1625, file: !217, line: 70, baseType: !1642, size: 128, offset: 640)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1643, size: 128, elements: !1519)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !1644)
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1643, file: !217, line: 55, baseType: !320, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1643, file: !217, line: 56, baseType: !1647, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1374, file: !1375, line: 872, baseType: !1650, size: 512, offset: 6016)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 512, elements: !1313)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1374, file: !1375, line: 873, baseType: !457, size: 128, offset: 6528)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1374, file: !1375, line: 874, baseType: !457, size: 128, offset: 6656)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1374, file: !1375, line: 876, baseType: !1654, size: 64, offset: 6784)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1656, line: 26, size: 192, elements: !1657)
!1656 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1657 = !{!1658, !1659}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1655, file: !1656, line: 27, baseType: !7, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1655, file: !1656, line: 28, baseType: !1660, size: 128, offset: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1661, line: 43, size: 128, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1660, file: !1661, line: 44, baseType: !1020)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1660, file: !1661, line: 45, baseType: !457, size: 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1374, file: !1375, line: 879, baseType: !949, size: 64, offset: 6848)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1374, file: !1375, line: 882, baseType: !949, size: 64, offset: 6912)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1374, file: !1375, line: 884, baseType: !669, size: 64, offset: 6976)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1374, file: !1375, line: 885, baseType: !669, size: 64, offset: 7040)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1374, file: !1375, line: 890, baseType: !669, size: 64, offset: 7104)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1374, file: !1375, line: 891, baseType: !1671, size: 128, offset: 7168)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1375, line: 242, size: 128, elements: !1672)
!1672 = !{!1673, !1674, !1675}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1671, file: !1375, line: 244, baseType: !669, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1671, file: !1375, line: 245, baseType: !669, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1671, file: !1375, line: 246, baseType: !1020, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1374, file: !1375, line: 900, baseType: !576, size: 64, offset: 7296)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1374, file: !1375, line: 901, baseType: !576, size: 64, offset: 7360)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1374, file: !1375, line: 904, baseType: !669, size: 64, offset: 7424)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1374, file: !1375, line: 907, baseType: !669, size: 64, offset: 7488)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1374, file: !1375, line: 910, baseType: !576, size: 64, offset: 7552)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1374, file: !1375, line: 911, baseType: !576, size: 64, offset: 7616)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1374, file: !1375, line: 914, baseType: !1683, size: 640, offset: 7680)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1684, line: 123, size: 640, elements: !1685)
!1684 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1685 = !{!1686, !1692, !1693}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1683, file: !1684, line: 124, baseType: !1687, size: 576)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1688, size: 576, elements: !528)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1684, line: 108, size: 192, elements: !1689)
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1688, file: !1684, line: 109, baseType: !669, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1688, file: !1684, line: 110, baseType: !1493, size: 128, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1683, file: !1684, line: 125, baseType: !7, size: 32, offset: 576)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1683, file: !1684, line: 126, baseType: !7, size: 32, offset: 608)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1374, file: !1375, line: 917, baseType: !1695, size: 192, offset: 8320)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1684, line: 134, size: 192, elements: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1695, file: !1684, line: 135, baseType: !617, size: 128, align: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1695, file: !1684, line: 136, baseType: !7, size: 32, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1374, file: !1375, line: 923, baseType: !1700, size: 64, offset: 8512)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1703, line: 111, size: 1280, elements: !1704)
!1703 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1724, !1725, !1726, !1727, !1728, !1729, !1834, !1835, !1836, !1837, !1863, !1866, !1876}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1702, file: !1703, line: 112, baseType: !446, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1702, file: !1703, line: 120, baseType: !682, size: 32, offset: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1702, file: !1703, line: 121, baseType: !690, size: 32, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1702, file: !1703, line: 122, baseType: !682, size: 32, offset: 96)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1702, file: !1703, line: 123, baseType: !690, size: 32, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1702, file: !1703, line: 124, baseType: !682, size: 32, offset: 160)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1702, file: !1703, line: 125, baseType: !690, size: 32, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1702, file: !1703, line: 126, baseType: !682, size: 32, offset: 224)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1702, file: !1703, line: 127, baseType: !690, size: 32, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1702, file: !1703, line: 128, baseType: !7, size: 32, offset: 288)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1702, file: !1703, line: 129, baseType: !1716, size: 64, offset: 320)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1717, line: 26, baseType: !1718)
!1717 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1717, line: 24, size: 64, elements: !1719)
!1719 = !{!1720}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1718, file: !1717, line: 25, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 64, elements: !1722)
!1722 = !{!1723}
!1723 = !DISubrange(count: 2)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1702, file: !1703, line: 130, baseType: !1716, size: 64, offset: 384)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1702, file: !1703, line: 131, baseType: !1716, size: 64, offset: 448)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1702, file: !1703, line: 132, baseType: !1716, size: 64, offset: 512)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1702, file: !1703, line: 133, baseType: !1716, size: 64, offset: 576)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1702, file: !1703, line: 135, baseType: !345, size: 8, offset: 640)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1702, file: !1703, line: 137, baseType: !1730, size: 64, offset: 704)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1732, line: 189, size: 1664, elements: !1733)
!1732 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !{!1734, !1735, !1738, !1743, !1744, !1747, !1748, !1753, !1754, !1755, !1756, !1758, !1759, !1760, !1761, !1762, !1798, !1819}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1731, file: !1732, line: 190, baseType: !441, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1731, file: !1732, line: 191, baseType: !1736, size: 32, offset: 32)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1732, line: 28, baseType: !1737)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !292, line: 98, baseType: !1592)
!1738 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !1732, line: 192, baseType: !1739, size: 192, offset: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !1732, line: 192, size: 192, elements: !1740)
!1740 = !{!1741, !1742}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1739, file: !1732, line: 193, baseType: !457, size: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1739, file: !1732, line: 194, baseType: !1000, size: 192, align: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1731, file: !1732, line: 199, baseType: !1007, size: 256, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1731, file: !1732, line: 200, baseType: !1745, size: 64, offset: 512)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1732, line: 200, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1731, file: !1732, line: 201, baseType: !293, size: 64, offset: 576)
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !1732, line: 202, baseType: !1749, size: 64, offset: 640)
!1749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !1732, line: 202, size: 64, elements: !1750)
!1750 = !{!1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1749, file: !1732, line: 203, baseType: !783, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1749, file: !1732, line: 204, baseType: !783, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1731, file: !1732, line: 206, baseType: !783, size: 64, offset: 704)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1731, file: !1732, line: 207, baseType: !682, size: 32, offset: 768)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1731, file: !1732, line: 208, baseType: !690, size: 32, offset: 800)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1731, file: !1732, line: 209, baseType: !1757, size: 32, offset: 832)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1732, line: 31, baseType: !803)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1731, file: !1732, line: 210, baseType: !337, size: 16, offset: 864)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1731, file: !1732, line: 211, baseType: !337, size: 16, offset: 880)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1731, file: !1732, line: 215, baseType: !294, size: 16, offset: 896)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1731, file: !1732, line: 222, baseType: !576, size: 64, offset: 960)
!1762 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !1732, line: 239, baseType: !1763, size: 320, offset: 1024)
!1763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !1732, line: 239, size: 320, elements: !1764)
!1764 = !{!1765, !1790}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1763, file: !1732, line: 240, baseType: !1766, size: 320)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1732, line: 108, size: 320, elements: !1767)
!1767 = !{!1768, !1769, !1779, !1782, !1789}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1766, file: !1732, line: 110, baseType: !576, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1766, file: !1732, line: 111, baseType: !1770, size: 64, offset: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1766, file: !1732, line: 111, size: 64, elements: !1771)
!1771 = !{!1772, !1778}
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !1732, line: 112, baseType: !1773, size: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1770, file: !1732, line: 112, size: 64, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1773, file: !1732, line: 114, baseType: !333, size: 16)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1773, file: !1732, line: 115, baseType: !1777, size: 48, offset: 16)
!1777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 48, elements: !466)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1770, file: !1732, line: 121, baseType: !576, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1766, file: !1732, line: 123, baseType: !1780, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1732, line: 96, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1766, file: !1732, line: 124, baseType: !1783, size: 64, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1732, line: 102, size: 192, elements: !1785)
!1785 = !{!1786, !1787, !1788}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1784, file: !1732, line: 103, baseType: !617, size: 128, align: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1784, file: !1732, line: 104, baseType: !441, size: 32, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1784, file: !1732, line: 105, baseType: !734, size: 8, offset: 160)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1766, file: !1732, line: 125, baseType: !303, size: 64, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_member, scope: !1763, file: !1732, line: 241, baseType: !1791, size: 320)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1763, file: !1732, line: 241, size: 320, elements: !1792)
!1792 = !{!1793, !1794, !1795, !1796, !1797}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1791, file: !1732, line: 242, baseType: !576, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1791, file: !1732, line: 243, baseType: !576, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1791, file: !1732, line: 244, baseType: !1780, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1791, file: !1732, line: 245, baseType: !1783, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1791, file: !1732, line: 246, baseType: !326, size: 64, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !1732, line: 254, baseType: !1799, size: 256, offset: 1344)
!1799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !1732, line: 254, size: 256, elements: !1800)
!1800 = !{!1801, !1807}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1799, file: !1732, line: 255, baseType: !1802, size: 256)
!1802 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1732, line: 128, size: 256, elements: !1803)
!1803 = !{!1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1802, file: !1732, line: 129, baseType: !293, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1802, file: !1732, line: 130, baseType: !1806, size: 256)
!1806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 256, elements: !1313)
!1807 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !1732, line: 256, baseType: !1808, size: 256)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1799, file: !1732, line: 256, size: 256, elements: !1809)
!1809 = !{!1810, !1811}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1808, file: !1732, line: 258, baseType: !457, size: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1808, file: !1732, line: 259, baseType: !1812, size: 128, offset: 128)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1813, line: 22, size: 128, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1814 = !{!1815, !1818}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1812, file: !1813, line: 23, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1813, line: 23, flags: DIFlagFwdDecl)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1812, file: !1813, line: 24, baseType: !576, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1731, file: !1732, line: 274, baseType: !1820, size: 64, offset: 1600)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1732, line: 170, size: 192, elements: !1822)
!1822 = !{!1823, !1832, !1833}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1821, file: !1732, line: 171, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1732, line: 165, baseType: !1825)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!320, !1730, !1828, !1830, !1730}
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1781)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1802)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1821, file: !1732, line: 172, baseType: !1730, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1821, file: !1732, line: 173, baseType: !1780, size: 64, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1702, file: !1703, line: 138, baseType: !1730, size: 64, offset: 768)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1702, file: !1703, line: 139, baseType: !1730, size: 64, offset: 832)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1702, file: !1703, line: 140, baseType: !1730, size: 64, offset: 896)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1702, file: !1703, line: 145, baseType: !1838, size: 64, offset: 960)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1840, line: 13, size: 896, elements: !1841)
!1840 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1841 = !{!1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1839, file: !1840, line: 14, baseType: !441, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1839, file: !1840, line: 15, baseType: !446, size: 32, offset: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1839, file: !1840, line: 16, baseType: !446, size: 32, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1839, file: !1840, line: 21, baseType: !1011, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1839, file: !1840, line: 27, baseType: !576, size: 64, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1839, file: !1840, line: 28, baseType: !576, size: 64, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1839, file: !1840, line: 29, baseType: !1011, size: 64, offset: 320)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1839, file: !1840, line: 32, baseType: !883, size: 128, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1839, file: !1840, line: 33, baseType: !682, size: 32, offset: 512)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1839, file: !1840, line: 37, baseType: !1011, size: 64, offset: 576)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1839, file: !1840, line: 44, baseType: !1853, size: 256, offset: 640)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1854, line: 15, size: 256, elements: !1855)
!1854 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1855 = !{!1856, !1857, !1858, !1859, !1860, !1861, !1862}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1853, file: !1854, line: 16, baseType: !1020)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1853, file: !1854, line: 18, baseType: !320, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1853, file: !1854, line: 19, baseType: !320, size: 32, offset: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1853, file: !1854, line: 20, baseType: !320, size: 32, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1853, file: !1854, line: 21, baseType: !320, size: 32, offset: 96)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1853, file: !1854, line: 22, baseType: !576, size: 64, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1853, file: !1854, line: 23, baseType: !576, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1702, file: !1703, line: 146, baseType: !1864, size: 64, offset: 1024)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !683, line: 18, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1702, file: !1703, line: 147, baseType: !1867, size: 64, offset: 1088)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1703, line: 25, size: 64, elements: !1869)
!1869 = !{!1870, !1871, !1872}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1868, file: !1703, line: 26, baseType: !446, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1868, file: !1703, line: 27, baseType: !320, size: 32, offset: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1868, file: !1703, line: 28, baseType: !1873, offset: 64)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, elements: !1874)
!1874 = !{!1875}
!1875 = !DISubrange(count: 0)
!1876 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !1703, line: 149, baseType: !1877, size: 128, offset: 1152)
!1877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1702, file: !1703, line: 149, size: 128, elements: !1878)
!1878 = !{!1879, !1880}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1877, file: !1703, line: 150, baseType: !320, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1877, file: !1703, line: 151, baseType: !617, size: 128, align: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1374, file: !1375, line: 926, baseType: !1700, size: 64, offset: 8576)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1374, file: !1375, line: 929, baseType: !1700, size: 64, offset: 8640)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1374, file: !1375, line: 933, baseType: !1730, size: 64, offset: 8704)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1374, file: !1375, line: 943, baseType: !1885, size: 128, offset: 8768)
!1885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 128, elements: !1886)
!1886 = !{!1887}
!1887 = !DISubrange(count: 16)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1374, file: !1375, line: 945, baseType: !1889, size: 64, offset: 8896)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1375, line: 49, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1374, file: !1375, line: 956, baseType: !1892, size: 64, offset: 8960)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1375, line: 45, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1374, file: !1375, line: 959, baseType: !1895, size: 64, offset: 9024)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1375, line: 959, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1374, file: !1375, line: 962, baseType: !1898, size: 64, offset: 9088)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1375, line: 66, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1374, file: !1375, line: 966, baseType: !1901, size: 64, offset: 9152)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1903, line: 35, flags: DIFlagFwdDecl)
!1903 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1374, file: !1375, line: 969, baseType: !1905, size: 64, offset: 9216)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1907, line: 82, size: 7296, elements: !1908)
!1907 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1914, !1915, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1944, !1953, !1954, !1956, !1957, !1958, !1961, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1991, !1992, !1999, !2000, !2001, !2002, !2003, !2004}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1906, file: !1907, line: 83, baseType: !441, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1906, file: !1907, line: 84, baseType: !446, size: 32, offset: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1906, file: !1907, line: 85, baseType: !320, size: 32, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1906, file: !1907, line: 86, baseType: !457, size: 128, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1906, file: !1907, line: 88, baseType: !1634, size: 128, offset: 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1906, file: !1907, line: 91, baseType: !1373, size: 64, offset: 384)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1906, file: !1907, line: 94, baseType: !1916, size: 192, offset: 448)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1917, line: 30, size: 192, elements: !1918)
!1917 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1918 = !{!1919, !1920}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1916, file: !1917, line: 31, baseType: !457, size: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1916, file: !1917, line: 32, baseType: !1921, size: 64, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1922, line: 25, baseType: !1923)
!1922 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1922, line: 23, size: 64, elements: !1924)
!1924 = !{!1925}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1923, file: !1922, line: 24, baseType: !1518, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1906, file: !1907, line: 97, baseType: !879, size: 64, offset: 640)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1906, file: !1907, line: 100, baseType: !320, size: 32, offset: 704)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1906, file: !1907, line: 106, baseType: !320, size: 32, offset: 736)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1906, file: !1907, line: 107, baseType: !1373, size: 64, offset: 768)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1906, file: !1907, line: 110, baseType: !320, size: 32, offset: 832)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1906, file: !1907, line: 111, baseType: !7, size: 32, offset: 864)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1906, file: !1907, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1906, file: !1907, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1906, file: !1907, line: 128, baseType: !320, size: 32, offset: 928)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1906, file: !1907, line: 129, baseType: !457, size: 128, offset: 960)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1906, file: !1907, line: 132, baseType: !1444, size: 512, offset: 1088)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1906, file: !1907, line: 133, baseType: !1452, size: 64, offset: 1600)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1906, file: !1907, line: 140, baseType: !1939, size: 256, offset: 1664)
!1939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1940, size: 256, elements: !1722)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1907, line: 38, size: 128, elements: !1941)
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1940, file: !1907, line: 39, baseType: !669, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1940, file: !1907, line: 40, baseType: !669, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1906, file: !1907, line: 146, baseType: !1945, size: 192, offset: 1920)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1907, line: 66, size: 192, elements: !1946)
!1946 = !{!1947}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1945, file: !1907, line: 67, baseType: !1948, size: 192)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1907, line: 47, size: 192, elements: !1949)
!1949 = !{!1950, !1951, !1952}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1948, file: !1907, line: 48, baseType: !1013, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1948, file: !1907, line: 49, baseType: !1013, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1948, file: !1907, line: 50, baseType: !1013, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1906, file: !1907, line: 150, baseType: !1683, size: 640, offset: 2112)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1906, file: !1907, line: 153, baseType: !1955, size: 256, offset: 2752)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1624, size: 256, elements: !1313)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1906, file: !1907, line: 159, baseType: !1624, size: 64, offset: 3008)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1906, file: !1907, line: 162, baseType: !320, size: 32, offset: 3072)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1906, file: !1907, line: 164, baseType: !1959, size: 64, offset: 3136)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1907, line: 164, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1906, file: !1907, line: 175, baseType: !1962, size: 32, offset: 3200)
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !640, line: 805, baseType: !1963)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !640, line: 798, size: 32, elements: !1964)
!1964 = !{!1965, !1966}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1963, file: !640, line: 803, baseType: !639, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1963, file: !640, line: 804, baseType: !487, offset: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1906, file: !1907, line: 176, baseType: !669, size: 64, offset: 3264)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1906, file: !1907, line: 176, baseType: !669, size: 64, offset: 3328)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1906, file: !1907, line: 176, baseType: !669, size: 64, offset: 3392)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1906, file: !1907, line: 176, baseType: !669, size: 64, offset: 3456)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1906, file: !1907, line: 177, baseType: !669, size: 64, offset: 3520)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1906, file: !1907, line: 178, baseType: !669, size: 64, offset: 3584)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1906, file: !1907, line: 179, baseType: !1671, size: 128, offset: 3648)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1906, file: !1907, line: 180, baseType: !576, size: 64, offset: 3776)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1906, file: !1907, line: 180, baseType: !576, size: 64, offset: 3840)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1906, file: !1907, line: 180, baseType: !576, size: 64, offset: 3904)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1906, file: !1907, line: 180, baseType: !576, size: 64, offset: 3968)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1906, file: !1907, line: 181, baseType: !576, size: 64, offset: 4032)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1906, file: !1907, line: 181, baseType: !576, size: 64, offset: 4096)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1906, file: !1907, line: 181, baseType: !576, size: 64, offset: 4160)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1906, file: !1907, line: 181, baseType: !576, size: 64, offset: 4224)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1906, file: !1907, line: 182, baseType: !576, size: 64, offset: 4288)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1906, file: !1907, line: 182, baseType: !576, size: 64, offset: 4352)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1906, file: !1907, line: 182, baseType: !576, size: 64, offset: 4416)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1906, file: !1907, line: 182, baseType: !576, size: 64, offset: 4480)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1906, file: !1907, line: 183, baseType: !576, size: 64, offset: 4544)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1906, file: !1907, line: 183, baseType: !576, size: 64, offset: 4608)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1906, file: !1907, line: 184, baseType: !1989, offset: 4672)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1990, line: 12, elements: !501)
!1990 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1906, file: !1907, line: 192, baseType: !671, size: 64, offset: 4672)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1906, file: !1907, line: 203, baseType: !1993, size: 2048, offset: 4736)
!1993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1994, size: 2048, elements: !1886)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1995, line: 43, size: 128, elements: !1996)
!1995 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1994, file: !1995, line: 44, baseType: !575, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1994, file: !1995, line: 45, baseType: !575, size: 64, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1906, file: !1907, line: 220, baseType: !734, size: 8, offset: 6784)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1906, file: !1907, line: 221, baseType: !294, size: 16, offset: 6800)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1906, file: !1907, line: 222, baseType: !294, size: 16, offset: 6816)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1906, file: !1907, line: 224, baseType: !1212, size: 64, offset: 6848)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1906, file: !1907, line: 227, baseType: !1331, size: 192, offset: 6912)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1906, file: !1907, line: 233, baseType: !1331, size: 192, offset: 7104)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1374, file: !1375, line: 970, baseType: !2006, size: 64, offset: 9280)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1907, line: 20, size: 16576, elements: !2008)
!2008 = !{!2009, !2010, !2011, !2012}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2007, file: !1907, line: 21, baseType: !487)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2007, file: !1907, line: 22, baseType: !441, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2007, file: !1907, line: 23, baseType: !1634, size: 128, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2007, file: !1907, line: 24, baseType: !2013, size: 16384, offset: 192)
!2013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2014, size: 16384, elements: !532)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1917, line: 49, size: 256, elements: !2015)
!2015 = !{!2016}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2014, file: !1917, line: 50, baseType: !2017, size: 256)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1917, line: 35, size: 256, elements: !2018)
!2018 = !{!2019, !2026, !2027, !2033}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2017, file: !1917, line: 37, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2021, line: 19, baseType: !2022)
!2021 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2021, line: 18, baseType: !2024)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !320}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2017, file: !1917, line: 38, baseType: !576, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2017, file: !1917, line: 44, baseType: !2028, size: 64, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2021, line: 22, baseType: !2029)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2021, line: 21, baseType: !2031)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{null}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2017, file: !1917, line: 46, baseType: !1921, size: 64, offset: 192)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1374, file: !1375, line: 971, baseType: !1921, size: 64, offset: 9344)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1374, file: !1375, line: 972, baseType: !1921, size: 64, offset: 9408)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1374, file: !1375, line: 974, baseType: !1921, size: 64, offset: 9472)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1374, file: !1375, line: 975, baseType: !1916, size: 192, offset: 9536)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1374, file: !1375, line: 976, baseType: !576, size: 64, offset: 9728)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1374, file: !1375, line: 977, baseType: !573, size: 64, offset: 9792)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1374, file: !1375, line: 978, baseType: !7, size: 32, offset: 9856)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1374, file: !1375, line: 980, baseType: !620, size: 64, offset: 9920)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1374, file: !1375, line: 989, baseType: !2043, size: 128, offset: 9984)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2044, line: 35, size: 128, elements: !2045)
!2044 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2045 = !{!2046, !2047, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2043, file: !2044, line: 36, baseType: !320, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2043, file: !2044, line: 37, baseType: !446, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2043, file: !2044, line: 38, baseType: !2049, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2044, line: 23, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1374, file: !1375, line: 992, baseType: !669, size: 64, offset: 10112)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1374, file: !1375, line: 993, baseType: !669, size: 64, offset: 10176)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1374, file: !1375, line: 996, baseType: !487, offset: 10240)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1374, file: !1375, line: 999, baseType: !1020, offset: 10240)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1374, file: !1375, line: 1001, baseType: !2056, size: 64, offset: 10240)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1375, line: 636, size: 64, elements: !2057)
!2057 = !{!2058}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2056, file: !1375, line: 637, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1374, file: !1375, line: 1005, baseType: !992, size: 128, offset: 10304)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1374, file: !1375, line: 1007, baseType: !1373, size: 64, offset: 10432)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1374, file: !1375, line: 1009, baseType: !2063, size: 64, offset: 10496)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1375, line: 1009, flags: DIFlagFwdDecl)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1374, file: !1375, line: 1043, baseType: !293, size: 64, offset: 10560)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1374, file: !1375, line: 1046, baseType: !2067, size: 64, offset: 10624)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1375, line: 41, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1374, file: !1375, line: 1050, baseType: !2070, size: 64, offset: 10688)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1375, line: 42, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1374, file: !1375, line: 1054, baseType: !2073, size: 64, offset: 10752)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1375, line: 55, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1374, file: !1375, line: 1056, baseType: !2076, size: 64, offset: 10816)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1375, line: 40, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1374, file: !1375, line: 1058, baseType: !2079, size: 64, offset: 10880)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2081, line: 99, size: 704, elements: !2082)
!2081 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2082 = !{!2083, !2084, !2085, !2086, !2087, !2088, !2089, !2108, !2109}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2080, file: !2081, line: 100, baseType: !1011, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2080, file: !2081, line: 101, baseType: !446, size: 32, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2080, file: !2081, line: 102, baseType: !446, size: 32, offset: 96)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2080, file: !2081, line: 105, baseType: !487, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2080, file: !2081, line: 107, baseType: !337, size: 16, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2080, file: !2081, line: 109, baseType: !983, size: 128, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2080, file: !2081, line: 110, baseType: !2090, size: 64, offset: 320)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2081, line: 73, size: 448, elements: !2092)
!2092 = !{!2093, !2096, !2097, !2102, !2107}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2091, file: !2081, line: 74, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2081, line: 74, flags: DIFlagFwdDecl)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2091, file: !2081, line: 75, baseType: !2079, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, scope: !2091, file: !2081, line: 83, baseType: !2098, size: 128, offset: 128)
!2098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2091, file: !2081, line: 83, size: 128, elements: !2099)
!2099 = !{!2100, !2101}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2098, file: !2081, line: 84, baseType: !457, size: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2098, file: !2081, line: 85, baseType: !1173, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, scope: !2091, file: !2081, line: 87, baseType: !2103, size: 128, offset: 256)
!2103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2091, file: !2081, line: 87, size: 128, elements: !2104)
!2104 = !{!2105, !2106}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2103, file: !2081, line: 88, baseType: !883, size: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2103, file: !2081, line: 89, baseType: !617, size: 128, align: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2091, file: !2081, line: 92, baseType: !7, size: 32, offset: 384)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2080, file: !2081, line: 111, baseType: !879, size: 64, offset: 384)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2080, file: !2081, line: 113, baseType: !2110, size: 256, offset: 448)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2111, line: 102, size: 256, elements: !2112)
!2111 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2112 = !{!2113, !2114, !2115}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2110, file: !2111, line: 103, baseType: !1011, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2110, file: !2111, line: 104, baseType: !457, size: 128, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2110, file: !2111, line: 105, baseType: !2116, size: 64, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2111, line: 21, baseType: !2117)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !2120}
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1374, file: !1375, line: 1061, baseType: !2122, size: 64, offset: 10944)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1375, line: 43, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1374, file: !1375, line: 1064, baseType: !576, size: 64, offset: 11008)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1374, file: !1375, line: 1065, baseType: !2126, size: 64, offset: 11072)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1917, line: 14, baseType: !2128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1917, line: 12, size: 384, elements: !2129)
!2129 = !{!2130}
!2130 = !DIDerivedType(tag: DW_TAG_member, scope: !2128, file: !1917, line: 13, baseType: !2131, size: 384)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2128, file: !1917, line: 13, size: 384, elements: !2132)
!2132 = !{!2133, !2134, !2135, !2136}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2131, file: !1917, line: 13, baseType: !320, size: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2131, file: !1917, line: 13, baseType: !320, size: 32, offset: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2131, file: !1917, line: 13, baseType: !320, size: 32, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2131, file: !1917, line: 13, baseType: !2137, size: 256, offset: 128)
!2137 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2138, line: 32, size: 256, elements: !2139)
!2138 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2139 = !{!2140, !2145, !2158, !2164, !2173, !2193, !2198}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2137, file: !2138, line: 37, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 34, size: 64, elements: !2142)
!2142 = !{!2143, !2144}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2141, file: !2138, line: 35, baseType: !1613, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2141, file: !2138, line: 36, baseType: !688, size: 32, offset: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2137, file: !2138, line: 45, baseType: !2146, size: 192)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 40, size: 192, elements: !2147)
!2147 = !{!2148, !2150, !2151, !2157}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2146, file: !2138, line: 41, baseType: !2149, size: 32)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !560, line: 95, baseType: !320)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2146, file: !2138, line: 42, baseType: !320, size: 32, offset: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2146, file: !2138, line: 43, baseType: !2152, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2138, line: 11, baseType: !2153)
!2153 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2138, line: 8, size: 64, elements: !2154)
!2154 = !{!2155, !2156}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2153, file: !2138, line: 9, baseType: !320, size: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2153, file: !2138, line: 10, baseType: !293, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2146, file: !2138, line: 44, baseType: !320, size: 32, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2137, file: !2138, line: 52, baseType: !2159, size: 128)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 48, size: 128, elements: !2160)
!2160 = !{!2161, !2162, !2163}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2159, file: !2138, line: 49, baseType: !1613, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2159, file: !2138, line: 50, baseType: !688, size: 32, offset: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2159, file: !2138, line: 51, baseType: !2152, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2137, file: !2138, line: 61, baseType: !2165, size: 256)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 55, size: 256, elements: !2166)
!2166 = !{!2167, !2168, !2169, !2170, !2172}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2165, file: !2138, line: 56, baseType: !1613, size: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2165, file: !2138, line: 57, baseType: !688, size: 32, offset: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2165, file: !2138, line: 58, baseType: !320, size: 32, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2165, file: !2138, line: 59, baseType: !2171, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !560, line: 94, baseType: !561)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2165, file: !2138, line: 60, baseType: !2171, size: 64, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2137, file: !2138, line: 95, baseType: !2174, size: 256)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 64, size: 256, elements: !2175)
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2174, file: !2138, line: 65, baseType: !293, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, scope: !2174, file: !2138, line: 77, baseType: !2178, size: 192, offset: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2174, file: !2138, line: 77, size: 192, elements: !2179)
!2179 = !{!2180, !2181, !2188}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2178, file: !2138, line: 82, baseType: !294, size: 16)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2178, file: !2138, line: 88, baseType: !2182, size: 192)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !2138, line: 84, size: 192, elements: !2183)
!2183 = !{!2184, !2186, !2187}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2182, file: !2138, line: 85, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 64, elements: !427)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2182, file: !2138, line: 86, baseType: !293, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2182, file: !2138, line: 87, baseType: !293, size: 64, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2178, file: !2138, line: 93, baseType: !2189, size: 96)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !2138, line: 90, size: 96, elements: !2190)
!2190 = !{!2191, !2192}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2189, file: !2138, line: 91, baseType: !2185, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2189, file: !2138, line: 92, baseType: !417, size: 32, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2137, file: !2138, line: 101, baseType: !2194, size: 128)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 98, size: 128, elements: !2195)
!2195 = !{!2196, !2197}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2194, file: !2138, line: 99, baseType: !562, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2194, file: !2138, line: 100, baseType: !320, size: 32, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2137, file: !2138, line: 108, baseType: !2199, size: 128)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 104, size: 128, elements: !2200)
!2200 = !{!2201, !2202, !2203}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2199, file: !2138, line: 105, baseType: !293, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2199, file: !2138, line: 106, baseType: !320, size: 32, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2199, file: !2138, line: 107, baseType: !7, size: 32, offset: 96)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1374, file: !1375, line: 1067, baseType: !1989, offset: 11136)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1374, file: !1375, line: 1099, baseType: !2206, size: 64, offset: 11136)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1375, line: 56, flags: DIFlagFwdDecl)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1374, file: !1375, line: 1103, baseType: !457, size: 128, offset: 11200)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1374, file: !1375, line: 1104, baseType: !2210, size: 64, offset: 11328)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1375, line: 46, flags: DIFlagFwdDecl)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1374, file: !1375, line: 1105, baseType: !1331, size: 192, offset: 11392)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1374, file: !1375, line: 1106, baseType: !7, size: 32, offset: 11584)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1374, file: !1375, line: 1109, baseType: !2215, size: 128, offset: 11648)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2216, size: 128, elements: !1722)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1375, line: 51, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1374, file: !1375, line: 1110, baseType: !1331, size: 192, offset: 11776)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1374, file: !1375, line: 1111, baseType: !457, size: 128, offset: 11968)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1374, file: !1375, line: 1173, baseType: !2221, size: 64, offset: 12096)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2223, line: 62, size: 256, align: 256, elements: !2224)
!2223 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2224 = !{!2225, !2226, !2227, !2232}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2222, file: !2223, line: 75, baseType: !417, size: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2222, file: !2223, line: 90, baseType: !417, size: 32, offset: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2222, file: !2223, line: 124, baseType: !2228, size: 64, offset: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2222, file: !2223, line: 109, size: 64, elements: !2229)
!2229 = !{!2230, !2231}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2228, file: !2223, line: 110, baseType: !670, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2228, file: !2223, line: 112, baseType: !670, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2222, file: !2223, line: 144, baseType: !417, size: 32, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1374, file: !1375, line: 1174, baseType: !416, size: 32, offset: 12160)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1374, file: !1375, line: 1179, baseType: !576, size: 64, offset: 12224)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1374, file: !1375, line: 1182, baseType: !2236, size: 128, offset: 12288)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1309, line: 76, size: 128, elements: !2237)
!2237 = !{!2238, !2243, !2244}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2236, file: !1309, line: 85, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2240, line: 7, size: 64, elements: !2241)
!2240 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2241 = !{!2242}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2239, file: !2240, line: 12, baseType: !1515, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2236, file: !1309, line: 88, baseType: !734, size: 8, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2236, file: !1309, line: 95, baseType: !734, size: 8, offset: 72)
!2245 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !1375, line: 1184, baseType: !2246, size: 128, offset: 12416)
!2246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1374, file: !1375, line: 1184, size: 128, elements: !2247)
!2247 = !{!2248, !2249}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2246, file: !1375, line: 1185, baseType: !441, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2246, file: !1375, line: 1186, baseType: !617, size: 128, align: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1374, file: !1375, line: 1190, baseType: !2251, size: 64, offset: 12544)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1375, line: 53, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1374, file: !1375, line: 1192, baseType: !2254, size: 128, offset: 12608)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1309, line: 64, size: 128, elements: !2255)
!2255 = !{!2256, !2257, !2258}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2254, file: !1309, line: 65, baseType: !965, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2254, file: !1309, line: 67, baseType: !417, size: 32, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2254, file: !1309, line: 68, baseType: !417, size: 32, offset: 96)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1374, file: !1375, line: 1206, baseType: !320, size: 32, offset: 12736)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1374, file: !1375, line: 1207, baseType: !320, size: 32, offset: 12768)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1374, file: !1375, line: 1209, baseType: !576, size: 64, offset: 12800)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1374, file: !1375, line: 1219, baseType: !669, size: 64, offset: 12864)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1374, file: !1375, line: 1220, baseType: !669, size: 64, offset: 12928)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1374, file: !1375, line: 1317, baseType: !320, size: 32, offset: 12992)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1374, file: !1375, line: 1319, baseType: !1373, size: 64, offset: 13056)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1374, file: !1375, line: 1322, baseType: !2267, size: 64, offset: 13120)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2269, line: 56, size: 512, elements: !2270)
!2269 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2270 = !{!2271, !2272, !2273, !2274, !2275, !2276, !2277, !2279}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2268, file: !2269, line: 57, baseType: !2267, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2268, file: !2269, line: 58, baseType: !293, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2268, file: !2269, line: 59, baseType: !576, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2268, file: !2269, line: 60, baseType: !576, size: 64, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2268, file: !2269, line: 61, baseType: !1060, size: 64, offset: 256)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2268, file: !2269, line: 62, baseType: !7, size: 32, offset: 320)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2268, file: !2269, line: 63, baseType: !2278, size: 64, offset: 384)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !292, line: 153, baseType: !669)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2268, file: !2269, line: 64, baseType: !2280, size: 64, offset: 448)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1374, file: !1375, line: 1326, baseType: !441, size: 32, offset: 13184)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1374, file: !1375, line: 1342, baseType: !293, size: 64, offset: 13248)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1374, file: !1375, line: 1343, baseType: !670, size: 64, offset: 13312)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1374, file: !1375, line: 1344, baseType: !669, size: 64, offset: 13376)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1374, file: !1375, line: 1345, baseType: !670, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1374, file: !1375, line: 1346, baseType: !670, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1374, file: !1375, line: 1347, baseType: !670, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1374, file: !1375, line: 1348, baseType: !617, size: 128, align: 64, offset: 13504)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1374, file: !1375, line: 1358, baseType: !2291, size: 34816, offset: 13824)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2292, line: 485, size: 34816, elements: !2293)
!2292 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2293 = !{!2294, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2323, !2324, !2325, !2326, !2327, !2328, !2331, !2332, !2333}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2291, file: !2292, line: 487, baseType: !2295, size: 192)
!2295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2296, size: 192, elements: !528)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2297, line: 16, size: 64, elements: !2298)
!2297 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2298 = !{!2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2296, file: !2297, line: 17, baseType: !333, size: 16)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2296, file: !2297, line: 18, baseType: !333, size: 16, offset: 16)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2296, file: !2297, line: 19, baseType: !333, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2296, file: !2297, line: 19, baseType: !333, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2296, file: !2297, line: 19, baseType: !333, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2296, file: !2297, line: 19, baseType: !333, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2296, file: !2297, line: 19, baseType: !333, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2296, file: !2297, line: 20, baseType: !333, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2296, file: !2297, line: 20, baseType: !333, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2296, file: !2297, line: 20, baseType: !333, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2296, file: !2297, line: 20, baseType: !333, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2296, file: !2297, line: 20, baseType: !333, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2296, file: !2297, line: 20, baseType: !333, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2291, file: !2292, line: 491, baseType: !576, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2291, file: !2292, line: 495, baseType: !337, size: 16, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2291, file: !2292, line: 496, baseType: !337, size: 16, offset: 272)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2291, file: !2292, line: 497, baseType: !337, size: 16, offset: 288)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2291, file: !2292, line: 498, baseType: !337, size: 16, offset: 304)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2291, file: !2292, line: 502, baseType: !576, size: 64, offset: 320)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2291, file: !2292, line: 503, baseType: !576, size: 64, offset: 384)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2291, file: !2292, line: 514, baseType: !2320, size: 256, offset: 448)
!2320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2321, size: 256, elements: !1313)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2292, line: 483, flags: DIFlagFwdDecl)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2291, file: !2292, line: 516, baseType: !576, size: 64, offset: 704)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2291, file: !2292, line: 518, baseType: !576, size: 64, offset: 768)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2291, file: !2292, line: 520, baseType: !576, size: 64, offset: 832)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2291, file: !2292, line: 521, baseType: !576, size: 64, offset: 896)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2291, file: !2292, line: 522, baseType: !576, size: 64, offset: 960)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2291, file: !2292, line: 528, baseType: !2329, size: 64, offset: 1024)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2292, line: 10, flags: DIFlagFwdDecl)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2291, file: !2292, line: 535, baseType: !576, size: 64, offset: 1088)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2291, file: !2292, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2291, file: !2292, line: 540, baseType: !2334, size: 33280, offset: 1536)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2335, line: 317, size: 33280, elements: !2336)
!2335 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2336 = !{!2337, !2338, !2339}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2334, file: !2335, line: 330, baseType: !7, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2334, file: !2335, line: 337, baseType: !576, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2334, file: !2335, line: 348, baseType: !2340, size: 32768, offset: 512)
!2340 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2335, line: 304, size: 32768, elements: !2341)
!2341 = !{!2342, !2355, !2392, !2442, !2455}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2340, file: !2335, line: 305, baseType: !2343, size: 896)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2335, line: 12, size: 896, elements: !2344)
!2344 = !{!2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2354}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2343, file: !2335, line: 13, baseType: !416, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2343, file: !2335, line: 14, baseType: !416, size: 32, offset: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2343, file: !2335, line: 15, baseType: !416, size: 32, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2343, file: !2335, line: 16, baseType: !416, size: 32, offset: 96)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2343, file: !2335, line: 17, baseType: !416, size: 32, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2343, file: !2335, line: 18, baseType: !416, size: 32, offset: 160)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2343, file: !2335, line: 19, baseType: !416, size: 32, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2343, file: !2335, line: 22, baseType: !2353, size: 640, offset: 224)
!2353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 640, elements: !396)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2343, file: !2335, line: 25, baseType: !416, size: 32, offset: 864)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2340, file: !2335, line: 306, baseType: !2356, size: 4096, align: 128)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2335, line: 34, size: 4096, align: 128, elements: !2357)
!2357 = !{!2358, !2359, !2360, !2361, !2362, !2377, !2378, !2379, !2381, !2383, !2387}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2356, file: !2335, line: 35, baseType: !333, size: 16)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2356, file: !2335, line: 36, baseType: !333, size: 16, offset: 16)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2356, file: !2335, line: 37, baseType: !333, size: 16, offset: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2356, file: !2335, line: 38, baseType: !333, size: 16, offset: 48)
!2362 = !DIDerivedType(tag: DW_TAG_member, scope: !2356, file: !2335, line: 39, baseType: !2363, size: 128, offset: 64)
!2363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2356, file: !2335, line: 39, size: 128, elements: !2364)
!2364 = !{!2365, !2370}
!2365 = !DIDerivedType(tag: DW_TAG_member, scope: !2363, file: !2335, line: 40, baseType: !2366, size: 128)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2363, file: !2335, line: 40, size: 128, elements: !2367)
!2367 = !{!2368, !2369}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2366, file: !2335, line: 41, baseType: !669, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2366, file: !2335, line: 42, baseType: !669, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, scope: !2363, file: !2335, line: 44, baseType: !2371, size: 128)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2363, file: !2335, line: 44, size: 128, elements: !2372)
!2372 = !{!2373, !2374, !2375, !2376}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2371, file: !2335, line: 45, baseType: !416, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2371, file: !2335, line: 46, baseType: !416, size: 32, offset: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2371, file: !2335, line: 47, baseType: !416, size: 32, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2371, file: !2335, line: 48, baseType: !416, size: 32, offset: 96)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2356, file: !2335, line: 51, baseType: !416, size: 32, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2356, file: !2335, line: 52, baseType: !416, size: 32, offset: 224)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2356, file: !2335, line: 55, baseType: !2380, size: 1024, offset: 256)
!2380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 1024, elements: !386)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2356, file: !2335, line: 58, baseType: !2382, size: 2048, offset: 1280)
!2382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 2048, elements: !532)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2356, file: !2335, line: 60, baseType: !2384, size: 384, offset: 3328)
!2384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 384, elements: !2385)
!2385 = !{!2386}
!2386 = !DISubrange(count: 12)
!2387 = !DIDerivedType(tag: DW_TAG_member, scope: !2356, file: !2335, line: 62, baseType: !2388, size: 384, offset: 3712)
!2388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2356, file: !2335, line: 62, size: 384, elements: !2389)
!2389 = !{!2390, !2391}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2388, file: !2335, line: 63, baseType: !2384, size: 384)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2388, file: !2335, line: 64, baseType: !2384, size: 384)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2340, file: !2335, line: 307, baseType: !2393, size: 1088)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2335, line: 79, size: 1088, elements: !2394)
!2394 = !{!2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2441}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2393, file: !2335, line: 80, baseType: !416, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2393, file: !2335, line: 81, baseType: !416, size: 32, offset: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2393, file: !2335, line: 82, baseType: !416, size: 32, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2393, file: !2335, line: 83, baseType: !416, size: 32, offset: 96)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2393, file: !2335, line: 84, baseType: !416, size: 32, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2393, file: !2335, line: 85, baseType: !416, size: 32, offset: 160)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2393, file: !2335, line: 86, baseType: !416, size: 32, offset: 192)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2393, file: !2335, line: 88, baseType: !2353, size: 640, offset: 224)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2393, file: !2335, line: 89, baseType: !343, size: 8, offset: 864)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2393, file: !2335, line: 90, baseType: !343, size: 8, offset: 872)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2393, file: !2335, line: 91, baseType: !343, size: 8, offset: 880)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2393, file: !2335, line: 92, baseType: !343, size: 8, offset: 888)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2393, file: !2335, line: 93, baseType: !343, size: 8, offset: 896)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2393, file: !2335, line: 94, baseType: !343, size: 8, offset: 904)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2393, file: !2335, line: 95, baseType: !2410, size: 64, offset: 960)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2412, line: 11, size: 128, elements: !2413)
!2412 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2413 = !{!2414, !2415}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2411, file: !2412, line: 12, baseType: !562, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2411, file: !2412, line: 13, baseType: !2416, size: 64, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2418, line: 56, size: 1344, elements: !2419)
!2418 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2419 = !{!2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2417, file: !2418, line: 61, baseType: !576, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2417, file: !2418, line: 62, baseType: !576, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2417, file: !2418, line: 63, baseType: !576, size: 64, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2417, file: !2418, line: 64, baseType: !576, size: 64, offset: 192)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2417, file: !2418, line: 65, baseType: !576, size: 64, offset: 256)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2417, file: !2418, line: 66, baseType: !576, size: 64, offset: 320)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2417, file: !2418, line: 68, baseType: !576, size: 64, offset: 384)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2417, file: !2418, line: 69, baseType: !576, size: 64, offset: 448)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2417, file: !2418, line: 70, baseType: !576, size: 64, offset: 512)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2417, file: !2418, line: 71, baseType: !576, size: 64, offset: 576)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2417, file: !2418, line: 72, baseType: !576, size: 64, offset: 640)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2417, file: !2418, line: 73, baseType: !576, size: 64, offset: 704)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2417, file: !2418, line: 74, baseType: !576, size: 64, offset: 768)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2417, file: !2418, line: 75, baseType: !576, size: 64, offset: 832)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2417, file: !2418, line: 76, baseType: !576, size: 64, offset: 896)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2417, file: !2418, line: 81, baseType: !576, size: 64, offset: 960)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2417, file: !2418, line: 83, baseType: !576, size: 64, offset: 1024)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2417, file: !2418, line: 84, baseType: !576, size: 64, offset: 1088)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2417, file: !2418, line: 85, baseType: !576, size: 64, offset: 1152)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2417, file: !2418, line: 86, baseType: !576, size: 64, offset: 1216)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2417, file: !2418, line: 87, baseType: !576, size: 64, offset: 1280)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2393, file: !2335, line: 96, baseType: !416, size: 32, offset: 1024)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2340, file: !2335, line: 308, baseType: !2443, size: 4608, align: 512)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2335, line: 289, size: 4608, align: 512, elements: !2444)
!2444 = !{!2445, !2446, !2453}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2443, file: !2335, line: 290, baseType: !2356, size: 4096, align: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2443, file: !2335, line: 291, baseType: !2447, size: 512, offset: 4096)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2335, line: 268, size: 512, elements: !2448)
!2448 = !{!2449, !2450, !2451}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2447, file: !2335, line: 269, baseType: !669, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2447, file: !2335, line: 270, baseType: !669, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2447, file: !2335, line: 271, baseType: !2452, size: 384, offset: 128)
!2452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 384, elements: !466)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2443, file: !2335, line: 292, baseType: !2454, offset: 4608)
!2454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, elements: !1874)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2340, file: !2335, line: 309, baseType: !2456, size: 32768)
!2456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 32768, elements: !2457)
!2457 = !{!2458}
!2458 = !DISubrange(count: 4096)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1370, file: !967, line: 378, baseType: !2460, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1366, file: !967, line: 384, baseType: !1655, size: 192, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1216, file: !967, line: 500, baseType: !487, offset: 6656)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1216, file: !967, line: 501, baseType: !2464, size: 64, offset: 6656)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !967, line: 387, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1216, file: !967, line: 516, baseType: !1864, size: 64, offset: 6720)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1216, file: !967, line: 519, baseType: !604, size: 64, offset: 6784)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1216, file: !967, line: 521, baseType: !2469, size: 64, offset: 6848)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !967, line: 521, flags: DIFlagFwdDecl)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1216, file: !967, line: 545, baseType: !446, size: 32, offset: 6912)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1216, file: !967, line: 548, baseType: !734, size: 8, offset: 6944)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1216, file: !967, line: 550, baseType: !2474, offset: 6952)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2475, line: 142, elements: !501)
!2475 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1216, file: !967, line: 554, baseType: !2110, size: 256, offset: 6976)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1216, file: !967, line: 557, baseType: !416, size: 32, offset: 7232)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1213, file: !967, line: 565, baseType: !2479, offset: 7296)
!2479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, elements: !2480)
!2480 = !{!2481}
!2481 = !DISubrange(count: -1)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1209, file: !967, line: 151, baseType: !446, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1202, file: !967, line: 156, baseType: !487, offset: 256)
!2484 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !967, line: 159, baseType: !2485, size: 128)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !967, line: 159, size: 128, elements: !2486)
!2486 = !{!2487, !2490}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2485, file: !967, line: 161, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !967, line: 161, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2485, file: !967, line: 162, baseType: !293, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !971, file: !967, line: 176, baseType: !617, size: 128, align: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !967, line: 179, baseType: !2493, size: 32, offset: 384)
!2493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !967, line: 179, size: 32, elements: !2494)
!2494 = !{!2495, !2496, !2497, !2498}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2493, file: !967, line: 184, baseType: !446, size: 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2493, file: !967, line: 192, baseType: !7, size: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2493, file: !967, line: 194, baseType: !7, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2493, file: !967, line: 195, baseType: !320, size: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !966, file: !967, line: 199, baseType: !446, size: 32, offset: 416)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !901, file: !208, line: 1964, baseType: !2501, size: 64, offset: 1344)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!562, !843, !2504}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2506, line: 12, size: 256, elements: !2507)
!2506 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2507 = !{!2508, !2509, !2510, !2511, !2512}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2505, file: !2506, line: 13, baseType: !291, size: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2505, file: !2506, line: 16, baseType: !320, size: 32, offset: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2505, file: !2506, line: 23, baseType: !576, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2505, file: !2506, line: 30, baseType: !576, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2505, file: !2506, line: 33, baseType: !2513, size: 64, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !967, line: 27, flags: DIFlagFwdDecl)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !901, file: !208, line: 1966, baseType: !2501, size: 64, offset: 1408)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !844, file: !208, line: 1424, baseType: !2517, size: 64, offset: 448)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2519)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !2520)
!2520 = !{!2521, !2567, !2571, !2575, !2576, !2577, !2578, !2579, !2584, !2589, !2593}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2519, file: !202, line: 323, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!320, !2525}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !2527)
!2527 = !{!2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2552, !2553, !2554}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2526, file: !202, line: 295, baseType: !883, size: 128)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2526, file: !202, line: 296, baseType: !457, size: 128, offset: 128)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2526, file: !202, line: 297, baseType: !457, size: 128, offset: 256)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2526, file: !202, line: 298, baseType: !457, size: 128, offset: 384)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2526, file: !202, line: 299, baseType: !1331, size: 192, offset: 512)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2526, file: !202, line: 300, baseType: !487, offset: 704)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2526, file: !202, line: 301, baseType: !446, size: 32, offset: 704)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2526, file: !202, line: 302, baseType: !843, size: 64, offset: 768)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2526, file: !202, line: 303, baseType: !2537, size: 64, offset: 832)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !2538)
!2538 = !{!2539, !2551}
!2539 = !DIDerivedType(tag: DW_TAG_member, scope: !2537, file: !202, line: 69, baseType: !2540, size: 32)
!2540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2537, file: !202, line: 69, size: 32, elements: !2541)
!2541 = !{!2542, !2543, !2544}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2540, file: !202, line: 70, baseType: !682, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2540, file: !202, line: 71, baseType: !690, size: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2540, file: !202, line: 72, baseType: !2545, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2546, line: 24, baseType: !2547)
!2546 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2546, line: 22, size: 32, elements: !2548)
!2548 = !{!2549}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2547, file: !2546, line: 23, baseType: !2550, size: 32)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2546, line: 20, baseType: !688)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2537, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2526, file: !202, line: 304, baseType: !775, size: 64, offset: 896)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2526, file: !202, line: 305, baseType: !576, size: 64, offset: 960)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2526, file: !202, line: 306, baseType: !2555, size: 576, offset: 1024)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !2556)
!2556 = !{!2557, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2555, file: !202, line: 206, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !777)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2555, file: !202, line: 207, baseType: !2558, size: 64, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2555, file: !202, line: 208, baseType: !2558, size: 64, offset: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2555, file: !202, line: 209, baseType: !2558, size: 64, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2555, file: !202, line: 210, baseType: !2558, size: 64, offset: 256)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2555, file: !202, line: 211, baseType: !2558, size: 64, offset: 320)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2555, file: !202, line: 212, baseType: !2558, size: 64, offset: 384)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2555, file: !202, line: 213, baseType: !783, size: 64, offset: 448)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2555, file: !202, line: 214, baseType: !783, size: 64, offset: 512)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2519, file: !202, line: 324, baseType: !2568, size: 64, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!2525, !843, !320}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2519, file: !202, line: 325, baseType: !2572, size: 64, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{null, !2525}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2519, file: !202, line: 326, baseType: !2522, size: 64, offset: 192)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2519, file: !202, line: 327, baseType: !2522, size: 64, offset: 256)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2519, file: !202, line: 328, baseType: !2522, size: 64, offset: 320)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2519, file: !202, line: 329, baseType: !929, size: 64, offset: 384)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2519, file: !202, line: 332, baseType: !2580, size: 64, offset: 448)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!2583, !676}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2519, file: !202, line: 333, baseType: !2585, size: 64, offset: 512)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!320, !676, !2588}
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2519, file: !202, line: 335, baseType: !2590, size: 64, offset: 576)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!320, !676, !2583}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2519, file: !202, line: 337, baseType: !2594, size: 64, offset: 640)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!320, !843, !2597}
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !844, file: !208, line: 1425, baseType: !2599, size: 64, offset: 512)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2601)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !2602)
!2602 = !{!2603, !2607, !2608, !2612, !2613, !2614, !2629, !2652, !2656, !2657, !2680}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2601, file: !202, line: 429, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!320, !843, !320, !320, !793}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2601, file: !202, line: 430, baseType: !929, size: 64, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2601, file: !202, line: 431, baseType: !2609, size: 64, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!320, !843, !7}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2601, file: !202, line: 432, baseType: !2609, size: 64, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2601, file: !202, line: 433, baseType: !929, size: 64, offset: 256)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2601, file: !202, line: 434, baseType: !2615, size: 64, offset: 320)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!320, !843, !320, !2618}
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !2620)
!2620 = !{!2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2619, file: !202, line: 416, baseType: !320, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2619, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2619, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2619, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2619, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2619, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2619, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2619, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2601, file: !202, line: 435, baseType: !2630, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!320, !843, !2537, !2633}
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !2635)
!2635 = !{!2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2634, file: !202, line: 344, baseType: !320, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2634, file: !202, line: 345, baseType: !669, size: 64, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2634, file: !202, line: 346, baseType: !669, size: 64, offset: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2634, file: !202, line: 347, baseType: !669, size: 64, offset: 192)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2634, file: !202, line: 348, baseType: !669, size: 64, offset: 256)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2634, file: !202, line: 349, baseType: !669, size: 64, offset: 320)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2634, file: !202, line: 350, baseType: !669, size: 64, offset: 384)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2634, file: !202, line: 351, baseType: !1017, size: 64, offset: 448)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2634, file: !202, line: 353, baseType: !1017, size: 64, offset: 512)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2634, file: !202, line: 354, baseType: !320, size: 32, offset: 576)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2634, file: !202, line: 355, baseType: !320, size: 32, offset: 608)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2634, file: !202, line: 356, baseType: !669, size: 64, offset: 640)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2634, file: !202, line: 357, baseType: !669, size: 64, offset: 704)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2634, file: !202, line: 358, baseType: !669, size: 64, offset: 768)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2634, file: !202, line: 359, baseType: !1017, size: 64, offset: 832)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2634, file: !202, line: 360, baseType: !320, size: 32, offset: 896)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2601, file: !202, line: 436, baseType: !2653, size: 64, offset: 448)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!320, !843, !2597, !2633}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2601, file: !202, line: 438, baseType: !2630, size: 64, offset: 512)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2601, file: !202, line: 439, baseType: !2658, size: 64, offset: 576)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!320, !843, !2661}
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !2663)
!2663 = !{!2664, !2665}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2662, file: !202, line: 410, baseType: !7, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2662, file: !202, line: 411, baseType: !2666, size: 1344, offset: 64)
!2666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2667, size: 1344, elements: !528)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !2668)
!2668 = !{!2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2679}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2667, file: !202, line: 396, baseType: !7, size: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2667, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2667, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2667, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2667, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2667, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2667, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2667, file: !202, line: 404, baseType: !671, size: 64, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2667, file: !202, line: 405, baseType: !2678, size: 64, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !292, line: 126, baseType: !669)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2667, file: !202, line: 406, baseType: !2678, size: 64, offset: 384)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2601, file: !202, line: 440, baseType: !2609, size: 64, offset: 640)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !844, file: !208, line: 1426, baseType: !2682, size: 64, offset: 576)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2684)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !844, file: !208, line: 1427, baseType: !576, size: 64, offset: 640)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !844, file: !208, line: 1428, baseType: !576, size: 64, offset: 704)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !844, file: !208, line: 1429, baseType: !576, size: 64, offset: 768)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !844, file: !208, line: 1430, baseType: !634, size: 64, offset: 832)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !844, file: !208, line: 1431, baseType: !1007, size: 256, offset: 896)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !844, file: !208, line: 1432, baseType: !320, size: 32, offset: 1152)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !844, file: !208, line: 1433, baseType: !446, size: 32, offset: 1184)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !844, file: !208, line: 1437, baseType: !2693, size: 64, offset: 1216)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2696)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !844, file: !208, line: 1449, baseType: !2698, size: 64, offset: 1280)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !650, line: 34, size: 64, elements: !2699)
!2699 = !{!2700}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2698, file: !650, line: 35, baseType: !653, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !844, file: !208, line: 1450, baseType: !457, size: 128, offset: 1344)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !844, file: !208, line: 1451, baseType: !2703, size: 64, offset: 1472)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !844, file: !208, line: 1452, baseType: !2076, size: 64, offset: 1536)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !844, file: !208, line: 1453, baseType: !2707, size: 64, offset: 1600)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !844, file: !208, line: 1454, baseType: !883, size: 128, offset: 1664)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !844, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !844, file: !208, line: 1456, baseType: !2712, size: 2432, offset: 1856)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !2713)
!2713 = !{!2714, !2715, !2716, !2718, !2750}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2712, file: !202, line: 519, baseType: !7, size: 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2712, file: !202, line: 520, baseType: !1007, size: 256, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2712, file: !202, line: 521, baseType: !2717, size: 192, offset: 320)
!2717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 192, elements: !528)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2712, file: !202, line: 522, baseType: !2719, size: 1728, offset: 512)
!2719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2720, size: 1728, elements: !528)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !2721)
!2721 = !{!2722, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2720, file: !202, line: 223, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !2725)
!2725 = !{!2726, !2727, !2740, !2741}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2724, file: !202, line: 444, baseType: !320, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2724, file: !202, line: 445, baseType: !2728, size: 64, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2730)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !2731)
!2731 = !{!2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2730, file: !202, line: 311, baseType: !929, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2730, file: !202, line: 312, baseType: !929, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2730, file: !202, line: 313, baseType: !929, size: 64, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2730, file: !202, line: 314, baseType: !929, size: 64, offset: 192)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2730, file: !202, line: 315, baseType: !2522, size: 64, offset: 256)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2730, file: !202, line: 316, baseType: !2522, size: 64, offset: 320)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2730, file: !202, line: 317, baseType: !2522, size: 64, offset: 384)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2730, file: !202, line: 318, baseType: !2594, size: 64, offset: 448)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2724, file: !202, line: 446, baseType: !307, size: 64, offset: 128)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2724, file: !202, line: 447, baseType: !2723, size: 64, offset: 192)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2720, file: !202, line: 224, baseType: !320, size: 32, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2720, file: !202, line: 226, baseType: !457, size: 128, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2720, file: !202, line: 227, baseType: !576, size: 64, offset: 256)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2720, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2720, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2720, file: !202, line: 230, baseType: !2558, size: 64, offset: 384)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2720, file: !202, line: 231, baseType: !2558, size: 64, offset: 448)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2720, file: !202, line: 232, baseType: !293, size: 64, offset: 512)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2712, file: !202, line: 523, baseType: !2751, size: 192, offset: 2240)
!2751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2728, size: 192, elements: !528)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !844, file: !208, line: 1458, baseType: !2753, size: 2112, offset: 4288)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !2754)
!2754 = !{!2755, !2756, !2757}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2753, file: !208, line: 1411, baseType: !320, size: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2753, file: !208, line: 1412, baseType: !1634, size: 128, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2753, file: !208, line: 1413, baseType: !2758, size: 1920, offset: 192)
!2758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2759, size: 1920, elements: !528)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2760, line: 12, size: 640, elements: !2761)
!2760 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2761 = !{!2762, !2770, !2771, !2776, !2777}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2759, file: !2760, line: 13, baseType: !2763, size: 320)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2764, line: 17, size: 320, elements: !2765)
!2764 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2765 = !{!2766, !2767, !2768, !2769}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2763, file: !2764, line: 18, baseType: !320, size: 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2763, file: !2764, line: 19, baseType: !320, size: 32, offset: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2763, file: !2764, line: 20, baseType: !1634, size: 128, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2763, file: !2764, line: 22, baseType: !617, size: 128, align: 64, offset: 192)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2759, file: !2760, line: 14, baseType: !365, size: 64, offset: 320)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2759, file: !2760, line: 15, baseType: !2772, size: 64, offset: 384)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2773, line: 16, size: 64, elements: !2774)
!2773 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2774 = !{!2775}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2772, file: !2773, line: 17, baseType: !1373, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2759, file: !2760, line: 16, baseType: !1634, size: 128, offset: 448)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2759, file: !2760, line: 17, baseType: !446, size: 32, offset: 576)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !844, file: !208, line: 1465, baseType: !293, size: 64, offset: 6400)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !844, file: !208, line: 1468, baseType: !416, size: 32, offset: 6464)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !844, file: !208, line: 1470, baseType: !783, size: 64, offset: 6528)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !844, file: !208, line: 1471, baseType: !783, size: 64, offset: 6592)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !844, file: !208, line: 1473, baseType: !417, size: 32, offset: 6656)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !844, file: !208, line: 1474, baseType: !2784, size: 64, offset: 6720)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !844, file: !208, line: 1477, baseType: !2787, size: 256, offset: 6784)
!2787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 256, elements: !386)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !844, file: !208, line: 1478, baseType: !2789, size: 128, offset: 7040)
!2789 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2790, line: 18, baseType: !2791)
!2790 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2790, line: 16, size: 128, elements: !2792)
!2792 = !{!2793}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2791, file: !2790, line: 17, baseType: !2794, size: 128)
!2794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 128, elements: !1886)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !844, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !844, file: !208, line: 1481, baseType: !2797, size: 32, offset: 7200)
!2797 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !292, line: 150, baseType: !7)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !844, file: !208, line: 1487, baseType: !1331, size: 192, offset: 7232)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !844, file: !208, line: 1493, baseType: !303, size: 64, offset: 7424)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !844, file: !208, line: 1495, baseType: !2801, size: 64, offset: 7488)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2803)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !632, line: 135, size: 1024, align: 512, elements: !2804)
!2804 = !{!2805, !2809, !2810, !2817, !2823, !2827, !2831, !2835, !2836, !2840, !2844, !2849, !2853}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2803, file: !632, line: 136, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!320, !634, !7}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2803, file: !632, line: 137, baseType: !2806, size: 64, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2803, file: !632, line: 138, baseType: !2811, size: 64, offset: 128)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!320, !2814, !2816}
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2803, file: !632, line: 139, baseType: !2818, size: 64, offset: 192)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!320, !2814, !7, !303, !2821}
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2803, file: !632, line: 141, baseType: !2824, size: 64, offset: 256)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!320, !2814}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2803, file: !632, line: 142, baseType: !2828, size: 64, offset: 320)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!320, !634}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2803, file: !632, line: 143, baseType: !2832, size: 64, offset: 384)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{null, !634}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2803, file: !632, line: 144, baseType: !2832, size: 64, offset: 448)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2803, file: !632, line: 145, baseType: !2837, size: 64, offset: 512)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{null, !634, !676}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2803, file: !632, line: 146, baseType: !2841, size: 64, offset: 576)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!326, !634, !326, !320}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2803, file: !632, line: 147, baseType: !2845, size: 64, offset: 640)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!630, !2848}
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2803, file: !632, line: 148, baseType: !2850, size: 64, offset: 704)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!320, !793, !734}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2803, file: !632, line: 149, baseType: !2854, size: 64, offset: 768)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!634, !634, !2857}
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !844, file: !208, line: 1500, baseType: !320, size: 32, offset: 7552)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !844, file: !208, line: 1502, baseType: !2861, size: 448, offset: 7616)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2506, line: 60, size: 448, elements: !2862)
!2862 = !{!2863, !2868, !2869, !2870, !2871, !2872, !2873}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2861, file: !2506, line: 61, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!576, !2867, !2504}
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2861, file: !2506, line: 63, baseType: !2864, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2861, file: !2506, line: 66, baseType: !562, size: 64, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2861, file: !2506, line: 67, baseType: !320, size: 32, offset: 192)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2861, file: !2506, line: 68, baseType: !7, size: 32, offset: 224)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2861, file: !2506, line: 71, baseType: !457, size: 128, offset: 256)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2861, file: !2506, line: 77, baseType: !2874, size: 64, offset: 384)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !844, file: !208, line: 1505, baseType: !1011, size: 64, offset: 8064)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !844, file: !208, line: 1508, baseType: !1011, size: 64, offset: 8128)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !844, file: !208, line: 1511, baseType: !320, size: 32, offset: 8192)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !844, file: !208, line: 1514, baseType: !1147, size: 32, offset: 8224)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !844, file: !208, line: 1517, baseType: !2880, size: 64, offset: 8256)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2111, line: 18, flags: DIFlagFwdDecl)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !844, file: !208, line: 1518, baseType: !879, size: 64, offset: 8320)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !844, file: !208, line: 1525, baseType: !1864, size: 64, offset: 8384)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !844, file: !208, line: 1532, baseType: !2885, size: 64, offset: 8448)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2886, line: 52, size: 64, elements: !2887)
!2886 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2887 = !{!2888}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2885, file: !2886, line: 53, baseType: !2889, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2886, line: 40, size: 256, elements: !2891)
!2891 = !{!2892, !2893, !2898}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2890, file: !2886, line: 42, baseType: !487)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2890, file: !2886, line: 44, baseType: !2894, size: 192)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2886, line: 28, size: 192, elements: !2895)
!2895 = !{!2896, !2897}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2894, file: !2886, line: 29, baseType: !457, size: 128)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2894, file: !2886, line: 31, baseType: !562, size: 64, offset: 128)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2890, file: !2886, line: 49, baseType: !562, size: 64, offset: 192)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !844, file: !208, line: 1533, baseType: !2885, size: 64, offset: 8512)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !844, file: !208, line: 1534, baseType: !617, size: 128, align: 64, offset: 8576)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !844, file: !208, line: 1535, baseType: !2110, size: 256, offset: 8704)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !844, file: !208, line: 1537, baseType: !1331, size: 192, offset: 8960)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !844, file: !208, line: 1542, baseType: !320, size: 32, offset: 9152)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !844, file: !208, line: 1545, baseType: !487, offset: 9184)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !844, file: !208, line: 1546, baseType: !457, size: 128, offset: 9216)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !844, file: !208, line: 1548, baseType: !487, offset: 9344)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !844, file: !208, line: 1549, baseType: !457, size: 128, offset: 9344)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !677, file: !208, line: 624, baseType: !978, size: 64, offset: 256)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !677, file: !208, line: 631, baseType: !576, size: 64, offset: 320)
!2910 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !208, line: 639, baseType: !2911, size: 32, offset: 384)
!2911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !208, line: 639, size: 32, elements: !2912)
!2912 = !{!2913, !2915}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2911, file: !208, line: 640, baseType: !2914, size: 32)
!2914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2911, file: !208, line: 641, baseType: !7, size: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !677, file: !208, line: 643, baseType: !757, size: 32, offset: 416)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !677, file: !208, line: 644, baseType: !775, size: 64, offset: 448)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !677, file: !208, line: 645, baseType: !779, size: 128, offset: 512)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !677, file: !208, line: 646, baseType: !779, size: 128, offset: 640)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !677, file: !208, line: 647, baseType: !779, size: 128, offset: 768)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !677, file: !208, line: 648, baseType: !487, offset: 896)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !677, file: !208, line: 649, baseType: !337, size: 16, offset: 896)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !677, file: !208, line: 650, baseType: !343, size: 8, offset: 912)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !677, file: !208, line: 651, baseType: !343, size: 8, offset: 920)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !677, file: !208, line: 652, baseType: !2678, size: 64, offset: 960)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !677, file: !208, line: 659, baseType: !576, size: 64, offset: 1024)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !677, file: !208, line: 660, baseType: !1007, size: 256, offset: 1088)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !677, file: !208, line: 662, baseType: !576, size: 64, offset: 1344)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !677, file: !208, line: 663, baseType: !576, size: 64, offset: 1408)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !677, file: !208, line: 665, baseType: !883, size: 128, offset: 1472)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !677, file: !208, line: 666, baseType: !457, size: 128, offset: 1600)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !677, file: !208, line: 675, baseType: !457, size: 128, offset: 1728)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !677, file: !208, line: 676, baseType: !457, size: 128, offset: 1856)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !677, file: !208, line: 677, baseType: !457, size: 128, offset: 1984)
!2935 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !208, line: 678, baseType: !2936, size: 128, offset: 2112)
!2936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !208, line: 678, size: 128, elements: !2937)
!2937 = !{!2938, !2939}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2936, file: !208, line: 679, baseType: !879, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2936, file: !208, line: 680, baseType: !617, size: 128, align: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !677, file: !208, line: 682, baseType: !1013, size: 64, offset: 2240)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !677, file: !208, line: 683, baseType: !1013, size: 64, offset: 2304)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !677, file: !208, line: 684, baseType: !446, size: 32, offset: 2368)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !677, file: !208, line: 685, baseType: !446, size: 32, offset: 2400)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !677, file: !208, line: 686, baseType: !446, size: 32, offset: 2432)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !677, file: !208, line: 688, baseType: !446, size: 32, offset: 2464)
!2946 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !208, line: 690, baseType: !2947, size: 64, offset: 2496)
!2947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !208, line: 690, size: 64, elements: !2948)
!2948 = !{!2949, !3181}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2947, file: !208, line: 691, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2952)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !2953)
!2953 = !{!2954, !2955, !2959, !2964, !2968, !2969, !2970, !2974, !2987, !2988, !3005, !3009, !3010, !3014, !3015, !3019, !3024, !3025, !3029, !3033, !3141, !3145, !3146, !3150, !3151, !3155, !3159, !3164, !3168, !3172, !3176, !3180}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2952, file: !208, line: 1823, baseType: !307, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2952, file: !208, line: 1824, baseType: !2956, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!775, !604, !775, !320}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2952, file: !208, line: 1825, baseType: !2960, size: 64, offset: 128)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!558, !604, !326, !573, !2963}
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2952, file: !208, line: 1826, baseType: !2965, size: 64, offset: 192)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!558, !604, !303, !573, !2963}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2952, file: !208, line: 1827, baseType: !1084, size: 64, offset: 256)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2952, file: !208, line: 1828, baseType: !1084, size: 64, offset: 320)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2952, file: !208, line: 1829, baseType: !2971, size: 64, offset: 384)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!320, !1087, !734}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2952, file: !208, line: 1830, baseType: !2975, size: 64, offset: 448)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!320, !604, !2978}
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !2980)
!2980 = !{!2981, !2986}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2979, file: !208, line: 1777, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !2983)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!320, !2978, !303, !320, !775, !669, !7}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2979, file: !208, line: 1778, baseType: !775, size: 64, offset: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2952, file: !208, line: 1831, baseType: !2975, size: 64, offset: 512)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2952, file: !208, line: 1832, baseType: !2989, size: 64, offset: 576)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!2992, !604, !2994}
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2993, line: 52, baseType: !7)
!2993 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2996, line: 43, size: 128, elements: !2997)
!2996 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!2997 = !{!2998, !3004}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2995, file: !2996, line: 44, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2996, line: 37, baseType: !3000)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{null, !604, !3003, !2994}
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2995, file: !2996, line: 45, baseType: !2992, size: 32, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2952, file: !208, line: 1833, baseType: !3006, size: 64, offset: 640)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!562, !604, !7, !576}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2952, file: !208, line: 1834, baseType: !3006, size: 64, offset: 704)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2952, file: !208, line: 1835, baseType: !3011, size: 64, offset: 768)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!320, !604, !1219}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2952, file: !208, line: 1836, baseType: !576, size: 64, offset: 832)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2952, file: !208, line: 1837, baseType: !3016, size: 64, offset: 896)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!320, !676, !604}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2952, file: !208, line: 1838, baseType: !3020, size: 64, offset: 960)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!320, !604, !3023}
!3023 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !293)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2952, file: !208, line: 1839, baseType: !3016, size: 64, offset: 1024)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2952, file: !208, line: 1840, baseType: !3026, size: 64, offset: 1088)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!320, !604, !775, !775, !320}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2952, file: !208, line: 1841, baseType: !3030, size: 64, offset: 1152)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!320, !320, !604, !320}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2952, file: !208, line: 1842, baseType: !3034, size: 64, offset: 1216)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!320, !604, !320, !3037}
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !3039)
!3039 = !{!3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3071, !3072, !3073, !3086, !3117}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3038, file: !208, line: 1063, baseType: !3037, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3038, file: !208, line: 1064, baseType: !457, size: 128, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3038, file: !208, line: 1065, baseType: !883, size: 128, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3038, file: !208, line: 1066, baseType: !457, size: 128, offset: 320)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3038, file: !208, line: 1069, baseType: !457, size: 128, offset: 448)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3038, file: !208, line: 1072, baseType: !3023, size: 64, offset: 576)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3038, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3038, file: !208, line: 1074, baseType: !345, size: 8, offset: 672)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3038, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3038, file: !208, line: 1076, baseType: !320, size: 32, offset: 736)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3038, file: !208, line: 1077, baseType: !1634, size: 128, offset: 768)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3038, file: !208, line: 1078, baseType: !604, size: 64, offset: 896)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3038, file: !208, line: 1079, baseType: !775, size: 64, offset: 960)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3038, file: !208, line: 1080, baseType: !775, size: 64, offset: 1024)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3038, file: !208, line: 1082, baseType: !3055, size: 64, offset: 1088)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !3057)
!3057 = !{!3058, !3066, !3067, !3068, !3069, !3070}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3056, file: !208, line: 1315, baseType: !3059)
!3059 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3060, line: 20, baseType: !3061)
!3060 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3060, line: 11, elements: !3062)
!3062 = !{!3063}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3061, file: !3060, line: 12, baseType: !3064)
!3064 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !499, line: 33, baseType: !3065)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !499, line: 31, elements: !501)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3056, file: !208, line: 1316, baseType: !320, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3056, file: !208, line: 1317, baseType: !320, size: 32, offset: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3056, file: !208, line: 1318, baseType: !3055, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3056, file: !208, line: 1319, baseType: !604, size: 64, offset: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3056, file: !208, line: 1320, baseType: !617, size: 128, align: 64, offset: 192)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3038, file: !208, line: 1084, baseType: !576, size: 64, offset: 1152)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3038, file: !208, line: 1085, baseType: !576, size: 64, offset: 1216)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3038, file: !208, line: 1087, baseType: !3074, size: 64, offset: 1280)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3076)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !3077)
!3077 = !{!3078, !3082}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3076, file: !208, line: 1012, baseType: !3079, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{null, !3037, !3037}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3076, file: !208, line: 1013, baseType: !3083, size: 64, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{null, !3037}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3038, file: !208, line: 1088, baseType: !3087, size: 64, offset: 1344)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3089)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !3090)
!3090 = !{!3091, !3095, !3099, !3100, !3104, !3108, !3112, !3116}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3089, file: !208, line: 1017, baseType: !3092, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!3023, !3023}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3089, file: !208, line: 1018, baseType: !3096, size: 64, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{null, !3023}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3089, file: !208, line: 1019, baseType: !3083, size: 64, offset: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3089, file: !208, line: 1020, baseType: !3101, size: 64, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!320, !3037, !320}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3089, file: !208, line: 1021, baseType: !3105, size: 64, offset: 256)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!734, !3037}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3089, file: !208, line: 1022, baseType: !3109, size: 64, offset: 320)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!320, !3037, !320, !460}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3089, file: !208, line: 1023, baseType: !3113, size: 64, offset: 384)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{null, !3037, !1061}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3089, file: !208, line: 1024, baseType: !3105, size: 64, offset: 448)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3038, file: !208, line: 1097, baseType: !3118, size: 256, offset: 1408)
!3118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3038, file: !208, line: 1089, size: 256, elements: !3119)
!3119 = !{!3120, !3129, !3135}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3118, file: !208, line: 1090, baseType: !3121, size: 256)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3122, line: 10, size: 256, elements: !3123)
!3122 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3123 = !{!3124, !3125, !3128}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3121, file: !3122, line: 11, baseType: !416, size: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3121, file: !3122, line: 12, baseType: !3126, size: 64, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3122, line: 5, flags: DIFlagFwdDecl)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3121, file: !3122, line: 13, baseType: !457, size: 128, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3118, file: !208, line: 1091, baseType: !3130, size: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3122, line: 17, size: 64, elements: !3131)
!3131 = !{!3132}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3130, file: !3122, line: 18, baseType: !3133, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3122, line: 16, flags: DIFlagFwdDecl)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3118, file: !208, line: 1096, baseType: !3136, size: 192)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3118, file: !208, line: 1092, size: 192, elements: !3137)
!3137 = !{!3138, !3139, !3140}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3136, file: !208, line: 1093, baseType: !457, size: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3136, file: !208, line: 1094, baseType: !320, size: 32, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3136, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2952, file: !208, line: 1843, baseType: !3142, size: 64, offset: 1280)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!558, !604, !965, !320, !573, !2963, !320}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2952, file: !208, line: 1844, baseType: !1259, size: 64, offset: 1344)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2952, file: !208, line: 1845, baseType: !3147, size: 64, offset: 1408)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!320, !320}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2952, file: !208, line: 1846, baseType: !3034, size: 64, offset: 1472)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2952, file: !208, line: 1847, baseType: !3152, size: 64, offset: 1536)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!558, !2251, !604, !2963, !573, !7}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2952, file: !208, line: 1848, baseType: !3156, size: 64, offset: 1600)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!558, !604, !2963, !2251, !573, !7}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2952, file: !208, line: 1849, baseType: !3160, size: 64, offset: 1664)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!320, !604, !562, !3163, !1061}
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2952, file: !208, line: 1850, baseType: !3165, size: 64, offset: 1728)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!562, !604, !320, !775, !775}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2952, file: !208, line: 1852, baseType: !3169, size: 64, offset: 1792)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{null, !955, !604}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2952, file: !208, line: 1856, baseType: !3173, size: 64, offset: 1856)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!558, !604, !775, !604, !775, !573, !7}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2952, file: !208, line: 1858, baseType: !3177, size: 64, offset: 1920)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!775, !604, !775, !604, !775, !775, !7}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2952, file: !208, line: 1861, baseType: !3026, size: 64, offset: 1984)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2947, file: !208, line: 692, baseType: !908, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !677, file: !208, line: 694, baseType: !3183, size: 64, offset: 2560)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !3185)
!3185 = !{!3186, !3187, !3188, !3189}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3184, file: !208, line: 1101, baseType: !487)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3184, file: !208, line: 1102, baseType: !457, size: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3184, file: !208, line: 1103, baseType: !457, size: 128, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3184, file: !208, line: 1104, baseType: !457, size: 128, offset: 256)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !677, file: !208, line: 695, baseType: !979, size: 1216, align: 64, offset: 2624)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !677, file: !208, line: 696, baseType: !457, size: 128, offset: 3840)
!3192 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !208, line: 697, baseType: !3193, size: 64, offset: 3968)
!3193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !208, line: 697, size: 64, elements: !3194)
!3194 = !{!3195, !3196, !3197, !3208, !3209}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3193, file: !208, line: 698, baseType: !2251, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3193, file: !208, line: 699, baseType: !2703, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3193, file: !208, line: 700, baseType: !3198, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3200, line: 14, size: 832, elements: !3201)
!3200 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3199, file: !3200, line: 15, baseType: !474, size: 512)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3199, file: !3200, line: 16, baseType: !307, size: 64, offset: 512)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3199, file: !3200, line: 17, baseType: !2950, size: 64, offset: 576)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3199, file: !3200, line: 18, baseType: !457, size: 128, offset: 640)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3199, file: !3200, line: 19, baseType: !757, size: 32, offset: 768)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3199, file: !3200, line: 20, baseType: !7, size: 32, offset: 800)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3193, file: !208, line: 701, baseType: !326, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3193, file: !208, line: 702, baseType: !7, size: 32)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !677, file: !208, line: 705, baseType: !417, size: 32, offset: 4032)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !677, file: !208, line: 708, baseType: !417, size: 32, offset: 4064)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !677, file: !208, line: 709, baseType: !2784, size: 64, offset: 4096)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !677, file: !208, line: 720, baseType: !293, size: 64, offset: 4160)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !635, file: !632, line: 98, baseType: !3215, size: 256, offset: 448)
!3215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 256, elements: !386)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !635, file: !632, line: 101, baseType: !3217, size: 32, offset: 704)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3218, line: 25, size: 32, elements: !3219)
!3218 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3219 = !{!3220}
!3220 = !DIDerivedType(tag: DW_TAG_member, scope: !3217, file: !3218, line: 26, baseType: !3221, size: 32)
!3221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3217, file: !3218, line: 26, size: 32, elements: !3222)
!3222 = !{!3223}
!3223 = !DIDerivedType(tag: DW_TAG_member, scope: !3221, file: !3218, line: 30, baseType: !3224, size: 32)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3221, file: !3218, line: 30, size: 32, elements: !3225)
!3225 = !{!3226, !3227}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3224, file: !3218, line: 31, baseType: !487)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3224, file: !3218, line: 32, baseType: !320, size: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !635, file: !632, line: 102, baseType: !2801, size: 64, offset: 768)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !635, file: !632, line: 103, baseType: !843, size: 64, offset: 832)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !635, file: !632, line: 104, baseType: !576, size: 64, offset: 896)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !635, file: !632, line: 105, baseType: !293, size: 64, offset: 960)
!3232 = !DIDerivedType(tag: DW_TAG_member, scope: !635, file: !632, line: 107, baseType: !3233, size: 128, offset: 1024)
!3233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !635, file: !632, line: 107, size: 128, elements: !3234)
!3234 = !{!3235, !3236}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3233, file: !632, line: 108, baseType: !457, size: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3233, file: !632, line: 109, baseType: !3003, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !635, file: !632, line: 111, baseType: !457, size: 128, offset: 1152)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !635, file: !632, line: 112, baseType: !457, size: 128, offset: 1280)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !635, file: !632, line: 120, baseType: !3240, size: 128, offset: 1408)
!3240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !635, file: !632, line: 116, size: 128, elements: !3241)
!3241 = !{!3242, !3243, !3244}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3240, file: !632, line: 117, baseType: !883, size: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3240, file: !632, line: 118, baseType: !649, size: 128)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3240, file: !632, line: 119, baseType: !617, size: 128, align: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !605, file: !208, line: 922, baseType: !676, size: 64, offset: 256)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !605, file: !208, line: 923, baseType: !2950, size: 64, offset: 320)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !605, file: !208, line: 929, baseType: !487, offset: 384)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !605, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !605, file: !208, line: 931, baseType: !1011, size: 64, offset: 448)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !605, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !605, file: !208, line: 933, baseType: !2797, size: 32, offset: 544)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !605, file: !208, line: 934, baseType: !1331, size: 192, offset: 576)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !605, file: !208, line: 935, baseType: !775, size: 64, offset: 768)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !605, file: !208, line: 936, baseType: !3255, size: 192, offset: 832)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !3256)
!3256 = !{!3257, !3258, !3259, !3260, !3261, !3262}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3255, file: !208, line: 886, baseType: !3059)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3255, file: !208, line: 887, baseType: !1624, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3255, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3255, file: !208, line: 889, baseType: !682, size: 32, offset: 96)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3255, file: !208, line: 889, baseType: !682, size: 32, offset: 128)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3255, file: !208, line: 890, baseType: !320, size: 32, offset: 160)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !605, file: !208, line: 937, baseType: !1700, size: 64, offset: 1024)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !605, file: !208, line: 938, baseType: !3265, size: 256, offset: 1088)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !3266)
!3266 = !{!3267, !3268, !3269, !3270, !3271, !3272}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3265, file: !208, line: 897, baseType: !576, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3265, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3265, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3265, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3265, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3265, file: !208, line: 904, baseType: !775, size: 64, offset: 192)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !605, file: !208, line: 940, baseType: !669, size: 64, offset: 1344)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !605, file: !208, line: 945, baseType: !293, size: 64, offset: 1408)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !605, file: !208, line: 949, baseType: !457, size: 128, offset: 1472)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !605, file: !208, line: 950, baseType: !457, size: 128, offset: 1600)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !605, file: !208, line: 952, baseType: !978, size: 64, offset: 1728)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !605, file: !208, line: 953, baseType: !1147, size: 32, offset: 1792)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !605, file: !208, line: 954, baseType: !1147, size: 32, offset: 1824)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !595, file: !552, line: 174, baseType: !601, size: 64, offset: 320)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !595, file: !552, line: 176, baseType: !3282, size: 64, offset: 384)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!320, !604, !480, !594, !1219}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !583, file: !552, line: 90, baseType: !578, size: 64, offset: 192)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !583, file: !552, line: 91, baseType: !3287, size: 64, offset: 256)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !542, file: !475, line: 143, baseType: !3289, size: 64, offset: 256)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!3292, !480}
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3294)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !3295)
!3295 = !{!3296, !3297, !3301, !3305, !3311, !3315}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3294, file: !225, line: 40, baseType: !224, size: 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3294, file: !225, line: 41, baseType: !3298, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!734}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3294, file: !225, line: 42, baseType: !3302, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!293}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3294, file: !225, line: 43, baseType: !3306, size: 64, offset: 192)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!2280, !3309}
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3294, file: !225, line: 44, baseType: !3312, size: 64, offset: 256)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!2280}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3294, file: !225, line: 45, baseType: !328, size: 64, offset: 320)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !542, file: !475, line: 144, baseType: !3317, size: 64, offset: 320)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!2280, !480}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !542, file: !475, line: 145, baseType: !3321, size: 64, offset: 384)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{null, !480, !3324, !3325}
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !474, file: !475, line: 70, baseType: !3327, size: 64, offset: 384)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !863, line: 123, size: 1024, elements: !3329)
!3329 = !{!3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3458, !3459, !3460, !3461, !3462}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3328, file: !863, line: 124, baseType: !446, size: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3328, file: !863, line: 125, baseType: !446, size: 32, offset: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3328, file: !863, line: 135, baseType: !3327, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3328, file: !863, line: 136, baseType: !303, size: 64, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3328, file: !863, line: 138, baseType: !1000, size: 192, align: 64, offset: 192)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3328, file: !863, line: 140, baseType: !2280, size: 64, offset: 384)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3328, file: !863, line: 141, baseType: !7, size: 32, offset: 448)
!3337 = !DIDerivedType(tag: DW_TAG_member, scope: !3328, file: !863, line: 142, baseType: !3338, size: 256, offset: 512)
!3338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3328, file: !863, line: 142, size: 256, elements: !3339)
!3339 = !{!3340, !3386, !3390}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3338, file: !863, line: 143, baseType: !3341, size: 192)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !863, line: 91, size: 192, elements: !3342)
!3342 = !{!3343, !3344, !3345}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3341, file: !863, line: 92, baseType: !576, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3341, file: !863, line: 94, baseType: !996, size: 64, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3341, file: !863, line: 100, baseType: !3346, size: 64, offset: 128)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !863, line: 180, size: 704, elements: !3348)
!3348 = !{!3349, !3350, !3351, !3358, !3359, !3360, !3384, !3385}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3347, file: !863, line: 182, baseType: !3327, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3347, file: !863, line: 183, baseType: !7, size: 32, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3347, file: !863, line: 186, baseType: !3352, size: 192, offset: 128)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3353, line: 19, size: 192, elements: !3354)
!3353 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3354 = !{!3355, !3356, !3357}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3352, file: !3353, line: 20, baseType: !983, size: 128)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3352, file: !3353, line: 21, baseType: !7, size: 32, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3352, file: !3353, line: 22, baseType: !7, size: 32, offset: 160)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3347, file: !863, line: 187, baseType: !416, size: 32, offset: 320)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3347, file: !863, line: 188, baseType: !416, size: 32, offset: 352)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3347, file: !863, line: 189, baseType: !3361, size: 64, offset: 384)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !863, line: 168, size: 320, elements: !3363)
!3363 = !{!3364, !3368, !3372, !3376, !3380}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3362, file: !863, line: 169, baseType: !3365, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!320, !955, !3346}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3362, file: !863, line: 171, baseType: !3369, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!320, !3327, !303, !568}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3362, file: !863, line: 173, baseType: !3373, size: 64, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!320, !3327}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3362, file: !863, line: 174, baseType: !3377, size: 64, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!320, !3327, !3327, !303}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3362, file: !863, line: 176, baseType: !3381, size: 64, offset: 256)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!320, !955, !3327, !3346}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3347, file: !863, line: 192, baseType: !457, size: 128, offset: 448)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3347, file: !863, line: 194, baseType: !1634, size: 128, offset: 576)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3338, file: !863, line: 144, baseType: !3387, size: 64)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !863, line: 103, size: 64, elements: !3388)
!3388 = !{!3389}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3387, file: !863, line: 104, baseType: !3327, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3338, file: !863, line: 145, baseType: !3391, size: 256)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !863, line: 107, size: 256, elements: !3392)
!3392 = !{!3393, !3453, !3456, !3457}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3391, file: !863, line: 108, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3396)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !863, line: 217, size: 768, elements: !3397)
!3397 = !{!3398, !3418, !3422, !3426, !3430, !3434, !3438, !3442, !3443, !3444, !3445, !3449}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3396, file: !863, line: 222, baseType: !3399, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!320, !3402}
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !863, line: 197, size: 1088, elements: !3404)
!3404 = !{!3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3403, file: !863, line: 199, baseType: !3327, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3403, file: !863, line: 200, baseType: !604, size: 64, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3403, file: !863, line: 201, baseType: !955, size: 64, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3403, file: !863, line: 202, baseType: !293, size: 64, offset: 192)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3403, file: !863, line: 205, baseType: !1331, size: 192, offset: 256)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3403, file: !863, line: 206, baseType: !1331, size: 192, offset: 448)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3403, file: !863, line: 207, baseType: !320, size: 32, offset: 640)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3403, file: !863, line: 208, baseType: !457, size: 128, offset: 704)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3403, file: !863, line: 209, baseType: !326, size: 64, offset: 832)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3403, file: !863, line: 211, baseType: !573, size: 64, offset: 896)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3403, file: !863, line: 212, baseType: !734, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3403, file: !863, line: 213, baseType: !734, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3403, file: !863, line: 214, baseType: !1247, size: 64, offset: 1024)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3396, file: !863, line: 223, baseType: !3419, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{null, !3402}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3396, file: !863, line: 236, baseType: !3423, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!320, !955, !293}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3396, file: !863, line: 238, baseType: !3427, size: 64, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!293, !955, !2963}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3396, file: !863, line: 239, baseType: !3431, size: 64, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!293, !955, !293, !2963}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3396, file: !863, line: 240, baseType: !3435, size: 64, offset: 320)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{null, !955, !293}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3396, file: !863, line: 242, baseType: !3439, size: 64, offset: 384)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!558, !3402, !326, !573, !775}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3396, file: !863, line: 252, baseType: !573, size: 64, offset: 448)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3396, file: !863, line: 259, baseType: !734, size: 8, offset: 512)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3396, file: !863, line: 260, baseType: !3439, size: 64, offset: 576)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3396, file: !863, line: 263, baseType: !3446, size: 64, offset: 640)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!2992, !3402, !2994}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3396, file: !863, line: 266, baseType: !3450, size: 64, offset: 704)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!320, !3402, !1219}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3391, file: !863, line: 109, baseType: !3454, size: 64, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !863, line: 31, flags: DIFlagFwdDecl)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3391, file: !863, line: 110, baseType: !775, size: 64, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3391, file: !863, line: 111, baseType: !3327, size: 64, offset: 192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3328, file: !863, line: 148, baseType: !293, size: 64, offset: 768)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3328, file: !863, line: 154, baseType: !669, size: 64, offset: 832)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3328, file: !863, line: 156, baseType: !337, size: 16, offset: 896)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3328, file: !863, line: 157, baseType: !568, size: 16, offset: 912)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3328, file: !863, line: 158, baseType: !3463, size: 64, offset: 960)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !863, line: 32, flags: DIFlagFwdDecl)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !474, file: !475, line: 71, baseType: !437, size: 32, offset: 448)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !474, file: !475, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !474, file: !475, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !474, file: !475, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !474, file: !475, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !474, file: !475, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !471, file: !237, line: 463, baseType: !470, size: 64, offset: 512)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !471, file: !237, line: 465, baseType: !3473, size: 64, offset: 576)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !471, file: !237, line: 467, baseType: !303, size: 64, offset: 640)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !471, file: !237, line: 468, baseType: !3477, size: 64, offset: 704)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3479)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3480)
!3480 = !{!3481, !3482, !3483, !3487, !3492, !3496}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3479, file: !237, line: 88, baseType: !303, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3479, file: !237, line: 89, baseType: !580, size: 64, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3479, file: !237, line: 90, baseType: !3484, size: 64, offset: 128)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!320, !470, !523}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3479, file: !237, line: 91, baseType: !3488, size: 64, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!326, !470, !3491, !3324, !3325}
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3479, file: !237, line: 93, baseType: !3493, size: 64, offset: 256)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{null, !470}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3479, file: !237, line: 95, baseType: !3497, size: 64, offset: 320)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3499)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3500)
!3500 = !{!3501, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3499, file: !244, line: 279, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!320, !470}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3499, file: !244, line: 280, baseType: !3493, size: 64, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3499, file: !244, line: 281, baseType: !3502, size: 64, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3499, file: !244, line: 282, baseType: !3502, size: 64, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3499, file: !244, line: 283, baseType: !3502, size: 64, offset: 256)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3499, file: !244, line: 284, baseType: !3502, size: 64, offset: 320)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3499, file: !244, line: 285, baseType: !3502, size: 64, offset: 384)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3499, file: !244, line: 286, baseType: !3502, size: 64, offset: 448)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3499, file: !244, line: 287, baseType: !3502, size: 64, offset: 512)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3499, file: !244, line: 288, baseType: !3502, size: 64, offset: 576)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3499, file: !244, line: 289, baseType: !3502, size: 64, offset: 640)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3499, file: !244, line: 290, baseType: !3502, size: 64, offset: 704)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3499, file: !244, line: 291, baseType: !3502, size: 64, offset: 768)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3499, file: !244, line: 292, baseType: !3502, size: 64, offset: 832)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3499, file: !244, line: 293, baseType: !3502, size: 64, offset: 896)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3499, file: !244, line: 294, baseType: !3502, size: 64, offset: 960)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3499, file: !244, line: 295, baseType: !3502, size: 64, offset: 1024)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3499, file: !244, line: 296, baseType: !3502, size: 64, offset: 1088)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3499, file: !244, line: 297, baseType: !3502, size: 64, offset: 1152)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3499, file: !244, line: 298, baseType: !3502, size: 64, offset: 1216)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3499, file: !244, line: 299, baseType: !3502, size: 64, offset: 1280)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3499, file: !244, line: 300, baseType: !3502, size: 64, offset: 1344)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3499, file: !244, line: 301, baseType: !3502, size: 64, offset: 1408)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !471, file: !237, line: 470, baseType: !3528, size: 64, offset: 768)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3530, line: 82, size: 1408, elements: !3531)
!3530 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3531 = !{!3532, !3533, !3534, !3535, !3536, !3537, !3538, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3610, !3613, !3614}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3529, file: !3530, line: 83, baseType: !303, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3529, file: !3530, line: 84, baseType: !303, size: 64, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3529, file: !3530, line: 85, baseType: !470, size: 64, offset: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3529, file: !3530, line: 86, baseType: !580, size: 64, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3529, file: !3530, line: 87, baseType: !580, size: 64, offset: 256)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3529, file: !3530, line: 88, baseType: !580, size: 64, offset: 320)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3529, file: !3530, line: 90, baseType: !3539, size: 64, offset: 384)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!320, !470, !3542}
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3544)
!3544 = !{!3545, !3546, !3547, !3548, !3549, !3550, !3551, !3561, !3574, !3575, !3576, !3577, !3578, !3586, !3587, !3588, !3589, !3590, !3591}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3543, file: !231, line: 96, baseType: !303, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3543, file: !231, line: 97, baseType: !3528, size: 64, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3543, file: !231, line: 99, baseType: !307, size: 64, offset: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3543, file: !231, line: 100, baseType: !303, size: 64, offset: 192)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3543, file: !231, line: 102, baseType: !734, size: 8, offset: 256)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3543, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3543, file: !231, line: 105, baseType: !3552, size: 64, offset: 320)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3554)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3555, line: 262, size: 1600, elements: !3556)
!3555 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3556 = !{!3557, !3558, !3559, !3560}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3554, file: !3555, line: 263, baseType: !2787, size: 256)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3554, file: !3555, line: 264, baseType: !2787, size: 256, offset: 256)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3554, file: !3555, line: 265, baseType: !412, size: 1024, offset: 512)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3554, file: !3555, line: 266, baseType: !2280, size: 64, offset: 1536)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3543, file: !231, line: 106, baseType: !3562, size: 64, offset: 384)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3564)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3555, line: 210, size: 256, elements: !3565)
!3565 = !{!3566, !3570, !3572, !3573}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3564, file: !3555, line: 211, baseType: !3567, size: 72)
!3567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 72, elements: !3568)
!3568 = !{!3569}
!3569 = !DISubrange(count: 9)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3564, file: !3555, line: 212, baseType: !3571, size: 64, offset: 128)
!3571 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3555, line: 14, baseType: !576)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3564, file: !3555, line: 213, baseType: !417, size: 32, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3564, file: !3555, line: 214, baseType: !417, size: 32, offset: 224)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3543, file: !231, line: 108, baseType: !3502, size: 64, offset: 448)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3543, file: !231, line: 109, baseType: !3493, size: 64, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3543, file: !231, line: 110, baseType: !3502, size: 64, offset: 576)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3543, file: !231, line: 111, baseType: !3493, size: 64, offset: 640)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3543, file: !231, line: 112, baseType: !3579, size: 64, offset: 704)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!320, !470, !3582}
!3582 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3583)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3584)
!3584 = !{!3585}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3583, file: !244, line: 51, baseType: !320, size: 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3543, file: !231, line: 113, baseType: !3502, size: 64, offset: 768)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3543, file: !231, line: 114, baseType: !580, size: 64, offset: 832)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3543, file: !231, line: 115, baseType: !580, size: 64, offset: 896)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3543, file: !231, line: 117, baseType: !3497, size: 64, offset: 960)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3543, file: !231, line: 118, baseType: !3493, size: 64, offset: 1024)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3543, file: !231, line: 120, baseType: !3592, size: 64, offset: 1088)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3529, file: !3530, line: 91, baseType: !3484, size: 64, offset: 448)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3529, file: !3530, line: 92, baseType: !3502, size: 64, offset: 512)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3529, file: !3530, line: 93, baseType: !3493, size: 64, offset: 576)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3529, file: !3530, line: 94, baseType: !3502, size: 64, offset: 640)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3529, file: !3530, line: 95, baseType: !3493, size: 64, offset: 704)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3529, file: !3530, line: 97, baseType: !3502, size: 64, offset: 768)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3529, file: !3530, line: 98, baseType: !3502, size: 64, offset: 832)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3529, file: !3530, line: 100, baseType: !3579, size: 64, offset: 896)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3529, file: !3530, line: 101, baseType: !3502, size: 64, offset: 960)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3529, file: !3530, line: 103, baseType: !3502, size: 64, offset: 1024)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3529, file: !3530, line: 105, baseType: !3502, size: 64, offset: 1088)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3529, file: !3530, line: 107, baseType: !3497, size: 64, offset: 1152)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3529, file: !3530, line: 109, baseType: !3607, size: 64, offset: 1216)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3609)
!3609 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3530, line: 109, flags: DIFlagFwdDecl)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3529, file: !3530, line: 111, baseType: !3611, size: 64, offset: 1280)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3530, line: 111, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3529, file: !3530, line: 112, baseType: !889, offset: 1344)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3529, file: !3530, line: 114, baseType: !734, size: 8, offset: 1344)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !471, file: !237, line: 471, baseType: !3542, size: 64, offset: 832)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !471, file: !237, line: 473, baseType: !293, size: 64, offset: 896)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !471, file: !237, line: 475, baseType: !293, size: 64, offset: 960)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !471, file: !237, line: 480, baseType: !1331, size: 192, offset: 1024)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !471, file: !237, line: 484, baseType: !3620, size: 576, offset: 1216)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3621)
!3621 = !{!3622, !3623, !3624, !3625, !3626, !3627}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3620, file: !237, line: 362, baseType: !457, size: 128)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3620, file: !237, line: 363, baseType: !457, size: 128, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3620, file: !237, line: 364, baseType: !457, size: 128, offset: 256)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3620, file: !237, line: 365, baseType: !457, size: 128, offset: 384)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3620, file: !237, line: 366, baseType: !734, size: 8, offset: 512)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3620, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !471, file: !237, line: 485, baseType: !3629, size: 2304, offset: 1792)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3630)
!3630 = !{!3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3726, !3730}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3629, file: !244, line: 566, baseType: !3582, size: 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3629, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3629, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3629, file: !244, line: 569, baseType: !734, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3629, file: !244, line: 570, baseType: !734, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3629, file: !244, line: 571, baseType: !734, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3629, file: !244, line: 572, baseType: !734, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3629, file: !244, line: 573, baseType: !734, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3629, file: !244, line: 574, baseType: !734, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3629, file: !244, line: 575, baseType: !734, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3629, file: !244, line: 576, baseType: !734, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3629, file: !244, line: 577, baseType: !416, size: 32, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3629, file: !244, line: 578, baseType: !487, offset: 96)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3629, file: !244, line: 580, baseType: !457, size: 128, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3629, file: !244, line: 581, baseType: !1655, size: 192, offset: 256)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3629, file: !244, line: 582, baseType: !3647, size: 64, offset: 448)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3649, line: 43, size: 1472, elements: !3650)
!3649 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3650 = !{!3651, !3652, !3653, !3654, !3655, !3658, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3648, file: !3649, line: 44, baseType: !303, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3648, file: !3649, line: 45, baseType: !320, size: 32, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3648, file: !3649, line: 46, baseType: !457, size: 128, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3648, file: !3649, line: 47, baseType: !487, offset: 256)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3648, file: !3649, line: 48, baseType: !3656, size: 64, offset: 256)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3648, file: !3649, line: 49, baseType: !3659, size: 320, offset: 320)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3660, line: 11, size: 320, elements: !3661)
!3660 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3661 = !{!3662, !3663, !3664, !3669}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3659, file: !3660, line: 16, baseType: !883, size: 128)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3659, file: !3660, line: 17, baseType: !576, size: 64, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3659, file: !3660, line: 18, baseType: !3665, size: 64, offset: 192)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{null, !3668}
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3659, file: !3660, line: 19, baseType: !416, size: 32, offset: 256)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3648, file: !3649, line: 50, baseType: !576, size: 64, offset: 640)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3648, file: !3649, line: 51, baseType: !1452, size: 64, offset: 704)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3648, file: !3649, line: 52, baseType: !1452, size: 64, offset: 768)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3648, file: !3649, line: 53, baseType: !1452, size: 64, offset: 832)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3648, file: !3649, line: 54, baseType: !1452, size: 64, offset: 896)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3648, file: !3649, line: 55, baseType: !1452, size: 64, offset: 960)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3648, file: !3649, line: 56, baseType: !576, size: 64, offset: 1024)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3648, file: !3649, line: 57, baseType: !576, size: 64, offset: 1088)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3648, file: !3649, line: 58, baseType: !576, size: 64, offset: 1152)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3648, file: !3649, line: 59, baseType: !576, size: 64, offset: 1216)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3648, file: !3649, line: 60, baseType: !576, size: 64, offset: 1280)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3648, file: !3649, line: 61, baseType: !470, size: 64, offset: 1344)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3648, file: !3649, line: 62, baseType: !734, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3648, file: !3649, line: 63, baseType: !734, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3629, file: !244, line: 583, baseType: !734, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3629, file: !244, line: 584, baseType: !734, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3629, file: !244, line: 585, baseType: !734, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3629, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3629, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3629, file: !244, line: 592, baseType: !1444, size: 512, offset: 576)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3629, file: !244, line: 593, baseType: !669, size: 64, offset: 1088)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3629, file: !244, line: 594, baseType: !2110, size: 256, offset: 1152)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3629, file: !244, line: 595, baseType: !1634, size: 128, offset: 1408)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3629, file: !244, line: 596, baseType: !3656, size: 64, offset: 1536)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3629, file: !244, line: 597, baseType: !446, size: 32, offset: 1600)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3629, file: !244, line: 598, baseType: !446, size: 32, offset: 1632)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3629, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3629, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3629, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3629, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3629, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3629, file: !244, line: 604, baseType: !734, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3629, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3629, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3629, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3629, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3629, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3629, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3629, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3629, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3629, file: !244, line: 613, baseType: !320, size: 32, offset: 1792)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3629, file: !244, line: 614, baseType: !320, size: 32, offset: 1824)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3629, file: !244, line: 615, baseType: !669, size: 64, offset: 1856)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3629, file: !244, line: 616, baseType: !669, size: 64, offset: 1920)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3629, file: !244, line: 617, baseType: !669, size: 64, offset: 1984)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3629, file: !244, line: 618, baseType: !669, size: 64, offset: 2048)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3629, file: !244, line: 620, baseType: !3717, size: 64, offset: 2112)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3719)
!3719 = !{!3720, !3721, !3722, !3723}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3718, file: !244, line: 537, baseType: !487)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3718, file: !244, line: 538, baseType: !7, size: 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3718, file: !244, line: 540, baseType: !457, size: 128, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3718, file: !244, line: 543, baseType: !3724, size: 64, offset: 192)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3629, file: !244, line: 621, baseType: !3727, size: 64, offset: 2176)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{null, !470, !1592}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3629, file: !244, line: 622, baseType: !3731, size: 64, offset: 2240)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !471, file: !237, line: 486, baseType: !3734, size: 64, offset: 4096)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3736)
!3736 = !{!3737, !3738, !3739, !3743, !3744, !3745}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3735, file: !244, line: 643, baseType: !3499, size: 1472)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3735, file: !244, line: 644, baseType: !3502, size: 64, offset: 1472)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3735, file: !244, line: 645, baseType: !3740, size: 64, offset: 1536)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{null, !470, !734}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3735, file: !244, line: 646, baseType: !3502, size: 64, offset: 1600)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3735, file: !244, line: 647, baseType: !3493, size: 64, offset: 1664)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3735, file: !244, line: 648, baseType: !3493, size: 64, offset: 1728)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !471, file: !237, line: 493, baseType: !3747, size: 64, offset: 4160)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3749)
!3749 = !{!3750, !3751, !3752, !3925, !3926, !3927, !3928, !3929, !3930, !3933, !3934, !3935, !3936, !3937, !3938, !3939}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3748, file: !258, line: 163, baseType: !457, size: 128)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3748, file: !258, line: 164, baseType: !303, size: 64, offset: 128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3748, file: !258, line: 165, baseType: !3753, size: 64, offset: 192)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3755)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3756)
!3756 = !{!3757, !3875, !3886, !3891, !3895, !3902, !3906, !3910, !3917, !3921}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3755, file: !258, line: 106, baseType: !3758, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!320, !3747, !3761, !257}
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3763, line: 51, size: 1344, elements: !3764)
!3763 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3764 = !{!3765, !3766, !3768, !3769, !3859, !3868, !3869, !3870, !3871, !3872, !3873, !3874}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3762, file: !3763, line: 52, baseType: !303, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3762, file: !3763, line: 53, baseType: !3767, size: 32, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3763, line: 28, baseType: !416)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3762, file: !3763, line: 54, baseType: !303, size: 64, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3762, file: !3763, line: 55, baseType: !3770, size: 192, offset: 192)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3771, line: 17, size: 192, elements: !3772)
!3771 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3772 = !{!3773, !3775, !3858}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3770, file: !3771, line: 18, baseType: !3774, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3770, file: !3771, line: 19, baseType: !3776, size: 64, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3778)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3771, line: 110, size: 1152, elements: !3779)
!3779 = !{!3780, !3784, !3788, !3794, !3800, !3804, !3808, !3813, !3817, !3818, !3822, !3826, !3830, !3841, !3842, !3843, !3844, !3854}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3778, file: !3771, line: 111, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!3774, !3774}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3778, file: !3771, line: 112, baseType: !3785, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{null, !3774}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3778, file: !3771, line: 113, baseType: !3789, size: 64, offset: 128)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!734, !3792}
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3770)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3778, file: !3771, line: 114, baseType: !3795, size: 64, offset: 192)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!2280, !3792, !3798}
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3778, file: !3771, line: 116, baseType: !3801, size: 64, offset: 256)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!734, !3792, !303}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3778, file: !3771, line: 118, baseType: !3805, size: 64, offset: 320)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!320, !3792, !303, !7, !293, !573}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3778, file: !3771, line: 123, baseType: !3809, size: 64, offset: 384)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!320, !3792, !303, !3812, !573}
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3778, file: !3771, line: 126, baseType: !3814, size: 64, offset: 448)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!303, !3792}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3778, file: !3771, line: 127, baseType: !3814, size: 64, offset: 512)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3778, file: !3771, line: 128, baseType: !3819, size: 64, offset: 576)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!3774, !3792}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3778, file: !3771, line: 130, baseType: !3823, size: 64, offset: 640)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!3774, !3792, !3774}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3778, file: !3771, line: 133, baseType: !3827, size: 64, offset: 704)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!3774, !3792, !303}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3778, file: !3771, line: 135, baseType: !3831, size: 64, offset: 768)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!320, !3792, !303, !303, !7, !7, !3834}
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3771, line: 43, size: 640, elements: !3836)
!3836 = !{!3837, !3838, !3839}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3835, file: !3771, line: 44, baseType: !3774, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3835, file: !3771, line: 45, baseType: !7, size: 32, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3835, file: !3771, line: 46, baseType: !3840, size: 512, offset: 128)
!3840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 512, elements: !427)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3778, file: !3771, line: 140, baseType: !3823, size: 64, offset: 832)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3778, file: !3771, line: 143, baseType: !3819, size: 64, offset: 896)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3778, file: !3771, line: 145, baseType: !3781, size: 64, offset: 960)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3778, file: !3771, line: 146, baseType: !3845, size: 64, offset: 1024)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!320, !3792, !3848}
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3771, line: 29, size: 128, elements: !3850)
!3850 = !{!3851, !3852, !3853}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3849, file: !3771, line: 30, baseType: !7, size: 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3849, file: !3771, line: 31, baseType: !7, size: 32, offset: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3849, file: !3771, line: 32, baseType: !3792, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3778, file: !3771, line: 148, baseType: !3855, size: 64, offset: 1088)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!320, !3792, !470}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3770, file: !3771, line: 20, baseType: !470, size: 64, offset: 128)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3762, file: !3763, line: 57, baseType: !3860, size: 64, offset: 384)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3763, line: 31, size: 704, elements: !3862)
!3862 = !{!3863, !3864, !3865, !3866, !3867}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3861, file: !3763, line: 32, baseType: !326, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3861, file: !3763, line: 33, baseType: !320, size: 32, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3861, file: !3763, line: 34, baseType: !293, size: 64, offset: 128)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3861, file: !3763, line: 35, baseType: !3860, size: 64, offset: 192)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3861, file: !3763, line: 43, baseType: !595, size: 448, offset: 256)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3762, file: !3763, line: 58, baseType: !3860, size: 64, offset: 448)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3762, file: !3763, line: 59, baseType: !3761, size: 64, offset: 512)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3762, file: !3763, line: 60, baseType: !3761, size: 64, offset: 576)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3762, file: !3763, line: 61, baseType: !3761, size: 64, offset: 640)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3762, file: !3763, line: 63, baseType: !474, size: 512, offset: 704)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3762, file: !3763, line: 65, baseType: !576, size: 64, offset: 1216)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3762, file: !3763, line: 66, baseType: !293, size: 64, offset: 1280)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3755, file: !258, line: 108, baseType: !3876, size: 64, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!320, !3747, !3879, !257}
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !3881)
!3881 = !{!3882, !3883, !3884}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3880, file: !258, line: 64, baseType: !3774, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3880, file: !258, line: 65, baseType: !320, size: 32, offset: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3880, file: !258, line: 66, baseType: !3885, size: 512, offset: 96)
!3885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 512, elements: !1886)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3755, file: !258, line: 110, baseType: !3887, size: 64, offset: 128)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!320, !3747, !7, !3890}
!3890 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !292, line: 164, baseType: !576)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3755, file: !258, line: 111, baseType: !3892, size: 64, offset: 192)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{null, !3747, !7}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3755, file: !258, line: 112, baseType: !3896, size: 64, offset: 256)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!320, !3747, !3761, !3899, !7, !3901, !365}
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3755, file: !258, line: 117, baseType: !3903, size: 64, offset: 320)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!320, !3747, !7, !7, !293}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3755, file: !258, line: 119, baseType: !3907, size: 64, offset: 384)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{null, !3747, !7, !7}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3755, file: !258, line: 121, baseType: !3911, size: 64, offset: 448)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!320, !3747, !3914, !734}
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3916, line: 11, flags: DIFlagFwdDecl)
!3916 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3755, file: !258, line: 122, baseType: !3918, size: 64, offset: 512)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{null, !3747, !3914}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3755, file: !258, line: 123, baseType: !3922, size: 64, offset: 576)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!320, !3747, !3879, !3901, !365}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3748, file: !258, line: 166, baseType: !293, size: 64, offset: 256)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3748, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3748, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3748, file: !258, line: 171, baseType: !3774, size: 64, offset: 384)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3748, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3748, file: !258, line: 173, baseType: !3931, size: 64, offset: 512)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3748, file: !258, line: 175, baseType: !3747, size: 64, offset: 576)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3748, file: !258, line: 182, baseType: !3890, size: 64, offset: 640)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3748, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3748, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3748, file: !258, line: 185, baseType: !983, size: 128, offset: 768)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3748, file: !258, line: 186, baseType: !1331, size: 192, offset: 896)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3748, file: !258, line: 187, baseType: !3940, offset: 1088)
!3940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2480)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !471, file: !237, line: 499, baseType: !457, size: 128, offset: 4224)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !471, file: !237, line: 502, baseType: !3943, size: 64, offset: 4352)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3945)
!3945 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !471, file: !237, line: 504, baseType: !3947, size: 64, offset: 4416)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !471, file: !237, line: 505, baseType: !669, size: 64, offset: 4480)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !471, file: !237, line: 510, baseType: !669, size: 64, offset: 4544)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !471, file: !237, line: 511, baseType: !3951, size: 64, offset: 4608)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3953)
!3953 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !471, file: !237, line: 513, baseType: !3955, size: 64, offset: 4672)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !3957)
!3957 = !{!3958, !3959}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3956, file: !237, line: 293, baseType: !7, size: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3956, file: !237, line: 294, baseType: !576, size: 64, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !471, file: !237, line: 515, baseType: !457, size: 128, offset: 4736)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !471, file: !237, line: 526, baseType: !3962, offset: 4864)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3963, line: 5, elements: !501)
!3963 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !471, file: !237, line: 528, baseType: !3761, size: 64, offset: 4864)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !471, file: !237, line: 529, baseType: !3774, size: 64, offset: 4928)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !471, file: !237, line: 534, baseType: !757, size: 32, offset: 4992)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !471, file: !237, line: 535, baseType: !416, size: 32, offset: 5024)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !471, file: !237, line: 537, baseType: !487, offset: 5056)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !471, file: !237, line: 538, baseType: !457, size: 128, offset: 5056)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !471, file: !237, line: 540, baseType: !3971, size: 64, offset: 5184)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3973, line: 54, size: 960, elements: !3974)
!3973 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3974 = !{!3975, !3976, !3977, !3978, !3979, !3980, !3981, !3985, !3989, !3990, !3991, !3992, !3996, !4000, !4001}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3972, file: !3973, line: 55, baseType: !303, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3972, file: !3973, line: 56, baseType: !307, size: 64, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3972, file: !3973, line: 58, baseType: !580, size: 64, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3972, file: !3973, line: 59, baseType: !580, size: 64, offset: 192)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3972, file: !3973, line: 60, baseType: !480, size: 64, offset: 256)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3972, file: !3973, line: 62, baseType: !3484, size: 64, offset: 320)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3972, file: !3973, line: 63, baseType: !3982, size: 64, offset: 384)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!326, !470, !3491}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3972, file: !3973, line: 65, baseType: !3986, size: 64, offset: 448)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{null, !3971}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3972, file: !3973, line: 66, baseType: !3493, size: 64, offset: 512)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3972, file: !3973, line: 68, baseType: !3502, size: 64, offset: 576)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3972, file: !3973, line: 70, baseType: !3292, size: 64, offset: 640)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3972, file: !3973, line: 71, baseType: !3993, size: 64, offset: 704)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!2280, !470}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3972, file: !3973, line: 73, baseType: !3997, size: 64, offset: 768)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{null, !470, !3324, !3325}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3972, file: !3973, line: 75, baseType: !3497, size: 64, offset: 832)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3972, file: !3973, line: 77, baseType: !3611, size: 64, offset: 896)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !471, file: !237, line: 541, baseType: !580, size: 64, offset: 5248)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !471, file: !237, line: 543, baseType: !3493, size: 64, offset: 5312)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !471, file: !237, line: 544, baseType: !4005, size: 64, offset: 5376)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !471, file: !237, line: 545, baseType: !4008, size: 64, offset: 5440)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !471, file: !237, line: 547, baseType: !734, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !471, file: !237, line: 548, baseType: !734, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !471, file: !237, line: 549, baseType: !734, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !471, file: !237, line: 550, baseType: !734, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !453, file: !272, line: 111, baseType: !307, size: 64, offset: 576)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !453, file: !272, line: 113, baseType: !320, size: 32, offset: 640)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !453, file: !272, line: 114, baseType: !4017, size: 64, offset: 704)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4019)
!4019 = !{!4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4034}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4018, file: !272, line: 158, baseType: !457, size: 128)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4018, file: !272, line: 159, baseType: !2950, size: 64, offset: 128)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4018, file: !272, line: 160, baseType: !452, size: 64, offset: 192)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4018, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4018, file: !272, line: 162, baseType: !320, size: 32, offset: 288)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4018, file: !272, line: 163, baseType: !416, size: 32, offset: 320)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4018, file: !272, line: 167, baseType: !320, size: 32, offset: 352)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4018, file: !272, line: 168, baseType: !320, size: 32, offset: 384)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4018, file: !272, line: 169, baseType: !320, size: 32, offset: 416)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4018, file: !272, line: 171, baseType: !1634, size: 128, offset: 448)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4018, file: !272, line: 173, baseType: !4031, size: 64, offset: 576)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!320, !604, !7, !293}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4018, file: !272, line: 187, baseType: !293, size: 64, offset: 640)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !453, file: !272, line: 115, baseType: !1331, size: 192, offset: 768)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !434, file: !51, line: 690, baseType: !293, size: 64, offset: 6144)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !434, file: !51, line: 691, baseType: !293, size: 64, offset: 6208)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !434, file: !51, line: 692, baseType: !293, size: 64, offset: 6272)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !434, file: !51, line: 693, baseType: !293, size: 64, offset: 6336)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !434, file: !51, line: 694, baseType: !293, size: 64, offset: 6400)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !434, file: !51, line: 695, baseType: !4042, size: 3648, offset: 6464)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !4043)
!4043 = !{!4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4107, !4108, !4109, !4110, !4111, !4112, !4113}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4042, file: !51, line: 587, baseType: !416, size: 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4042, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4042, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4042, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4042, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4042, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4042, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4042, file: !51, line: 595, baseType: !416, size: 32, offset: 224)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4042, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4042, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4042, file: !51, line: 598, baseType: !416, size: 32, offset: 320)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4042, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4042, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4042, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4042, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4042, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4042, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4042, file: !51, line: 610, baseType: !343, size: 8, offset: 544)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4042, file: !51, line: 611, baseType: !343, size: 8, offset: 552)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4042, file: !51, line: 612, baseType: !343, size: 8, offset: 560)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4042, file: !51, line: 613, baseType: !416, size: 32, offset: 576)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4042, file: !51, line: 614, baseType: !416, size: 32, offset: 608)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4042, file: !51, line: 615, baseType: !343, size: 8, offset: 640)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4042, file: !51, line: 621, baseType: !4068, size: 384, offset: 672)
!4068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4069, size: 384, elements: !528)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4042, file: !51, line: 616, size: 128, elements: !4070)
!4070 = !{!4071, !4072, !4073, !4074}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4069, file: !51, line: 617, baseType: !343, size: 8)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4069, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4069, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4069, file: !51, line: 620, baseType: !343, size: 8, offset: 96)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4042, file: !51, line: 624, baseType: !416, size: 32, offset: 1056)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4042, file: !51, line: 627, baseType: !416, size: 32, offset: 1088)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4042, file: !51, line: 630, baseType: !343, size: 8, offset: 1120)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4042, file: !51, line: 631, baseType: !343, size: 8, offset: 1128)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4042, file: !51, line: 632, baseType: !343, size: 8, offset: 1136)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4042, file: !51, line: 633, baseType: !343, size: 8, offset: 1144)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4042, file: !51, line: 634, baseType: !343, size: 8, offset: 1152)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4042, file: !51, line: 635, baseType: !343, size: 8, offset: 1160)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4042, file: !51, line: 637, baseType: !343, size: 8, offset: 1168)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4042, file: !51, line: 638, baseType: !343, size: 8, offset: 1176)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4042, file: !51, line: 639, baseType: !343, size: 8, offset: 1184)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4042, file: !51, line: 640, baseType: !343, size: 8, offset: 1192)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4042, file: !51, line: 641, baseType: !343, size: 8, offset: 1200)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4042, file: !51, line: 642, baseType: !343, size: 8, offset: 1208)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4042, file: !51, line: 643, baseType: !343, size: 8, offset: 1216)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4042, file: !51, line: 644, baseType: !343, size: 8, offset: 1224)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4042, file: !51, line: 645, baseType: !343, size: 8, offset: 1232)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4042, file: !51, line: 647, baseType: !416, size: 32, offset: 1248)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4042, file: !51, line: 650, baseType: !4094, size: 296, offset: 1280)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !4095)
!4095 = !{!4096, !4097}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4094, file: !6, line: 826, baseType: !344, size: 8)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4094, file: !6, line: 827, baseType: !4098, size: 288, offset: 8)
!4098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4099, size: 288, elements: !1313)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !4100)
!4100 = !{!4101, !4102}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4099, file: !6, line: 804, baseType: !344, size: 8)
!4102 = !DIDerivedType(tag: DW_TAG_member, scope: !4099, file: !6, line: 805, baseType: !4103, size: 64, offset: 8)
!4103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4099, file: !6, line: 805, size: 64, elements: !4104)
!4104 = !{!4105, !4106}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4103, file: !6, line: 806, baseType: !670, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4103, file: !6, line: 807, baseType: !784, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4042, file: !51, line: 651, baseType: !4094, size: 296, offset: 1576)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4042, file: !51, line: 652, baseType: !4094, size: 296, offset: 1872)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4042, file: !51, line: 653, baseType: !4094, size: 296, offset: 2168)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4042, file: !51, line: 654, baseType: !4094, size: 296, offset: 2464)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4042, file: !51, line: 655, baseType: !4094, size: 296, offset: 2760)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4042, file: !51, line: 656, baseType: !4094, size: 296, offset: 3056)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4042, file: !51, line: 657, baseType: !4094, size: 296, offset: 3352)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !434, file: !51, line: 698, baseType: !4115, size: 64, offset: 10112)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!320, !293, !320, !320, !320}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !434, file: !51, line: 699, baseType: !320, size: 32, offset: 10176)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !434, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !406, file: !51, line: 441, baseType: !430, size: 64, offset: 1408)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !406, file: !51, line: 442, baseType: !430, size: 64, offset: 1472)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !406, file: !51, line: 444, baseType: !4123, size: 64, offset: 1536)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!320, !433}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !406, file: !51, line: 445, baseType: !4123, size: 64, offset: 1600)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !406, file: !51, line: 447, baseType: !4128, size: 64, offset: 1664)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!320, !433, !4131, !320}
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !406, file: !51, line: 450, baseType: !4134, size: 64, offset: 1728)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!320, !433, !734, !7, !365, !4137}
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !406, file: !51, line: 457, baseType: !4139, size: 64, offset: 1792)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!50, !433}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !406, file: !51, line: 460, baseType: !4123, size: 64, offset: 1856)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !406, file: !51, line: 461, baseType: !4144, size: 64, offset: 1920)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!320, !433, !4147}
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !4149)
!4149 = !{!4150, !4151, !4152}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4148, file: !51, line: 70, baseType: !320, size: 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4148, file: !51, line: 71, baseType: !320, size: 32, offset: 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4148, file: !51, line: 72, baseType: !320, size: 32, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !406, file: !51, line: 463, baseType: !4154, size: 64, offset: 1984)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!320, !433, !4157}
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !406, file: !51, line: 466, baseType: !4159, size: 64, offset: 2048)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!320, !433, !4137}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !406, file: !51, line: 467, baseType: !4163, size: 64, offset: 2112)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!320, !433, !1563}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !406, file: !51, line: 468, baseType: !4167, size: 64, offset: 2176)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!320, !433, !4170}
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !406, file: !51, line: 469, baseType: !4167, size: 64, offset: 2240)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !406, file: !51, line: 470, baseType: !4163, size: 64, offset: 2304)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !406, file: !51, line: 472, baseType: !4123, size: 64, offset: 2368)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !406, file: !51, line: 473, baseType: !4175, size: 64, offset: 2432)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!320, !433, !4178}
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !4180)
!4180 = !{!4181, !4183}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4179, file: !6, line: 174, baseType: !4182, size: 48)
!4182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 48, elements: !466)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4179, file: !6, line: 175, baseType: !344, size: 8, offset: 48)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !406, file: !51, line: 474, baseType: !4185, size: 64, offset: 2496)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!320, !433, !4188}
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !4190)
!4190 = !{!4191, !4193, !4194}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4189, file: !6, line: 196, baseType: !4192, size: 32)
!4192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 32, elements: !1313)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4189, file: !6, line: 197, baseType: !344, size: 8, offset: 32)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4189, file: !6, line: 198, baseType: !320, size: 32, offset: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !406, file: !51, line: 475, baseType: !4196, size: 64, offset: 2560)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!320, !433, !171}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !406, file: !51, line: 477, baseType: !4200, size: 64, offset: 2624)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!320, !433, !78}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !406, file: !51, line: 478, baseType: !4204, size: 64, offset: 2688)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!320, !433, !73}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !406, file: !51, line: 480, baseType: !4208, size: 64, offset: 2752)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!320, !433, !562}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !406, file: !51, line: 481, baseType: !4212, size: 64, offset: 2816)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!320, !433, !576}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !406, file: !51, line: 482, baseType: !4216, size: 64, offset: 2880)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!320, !433, !320}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !406, file: !51, line: 483, baseType: !4216, size: 64, offset: 2944)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !406, file: !51, line: 484, baseType: !4123, size: 64, offset: 3008)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !406, file: !51, line: 490, baseType: !4222, size: 64, offset: 3072)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!175, !433}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !406, file: !51, line: 492, baseType: !4226, size: 2304, offset: 3136)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !4227)
!4227 = !{!4228, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4255, !4259, !4260, !4261, !4262, !4263, !4264, !4269, !4274, !4278}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4226, file: !51, line: 228, baseType: !4229, size: 1216)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !4230)
!4230 = !{!4231, !4232, !4233, !4234, !4235, !4236, !4237}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4229, file: !51, line: 89, baseType: !412, size: 1024)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4229, file: !51, line: 91, baseType: !416, size: 32, offset: 1024)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4229, file: !51, line: 92, baseType: !416, size: 32, offset: 1056)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4229, file: !51, line: 93, baseType: !416, size: 32, offset: 1088)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4229, file: !51, line: 95, baseType: !416, size: 32, offset: 1120)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4229, file: !51, line: 96, baseType: !416, size: 32, offset: 1152)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4229, file: !51, line: 97, baseType: !416, size: 32, offset: 1184)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4226, file: !51, line: 230, baseType: !430, size: 64, offset: 1216)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4226, file: !51, line: 231, baseType: !4123, size: 64, offset: 1280)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4226, file: !51, line: 232, baseType: !4123, size: 64, offset: 1344)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4226, file: !51, line: 233, baseType: !4123, size: 64, offset: 1408)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4226, file: !51, line: 234, baseType: !4123, size: 64, offset: 1472)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4226, file: !51, line: 237, baseType: !4123, size: 64, offset: 1536)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4226, file: !51, line: 238, baseType: !4245, size: 64, offset: 1600)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!320, !433, !4248}
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !4250)
!4250 = !{!4251, !4252, !4253, !4254}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4249, file: !51, line: 115, baseType: !7, size: 32)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4249, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4249, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4249, file: !51, line: 118, baseType: !669, size: 64, offset: 128)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4226, file: !51, line: 240, baseType: !4256, size: 64, offset: 1664)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!320, !433, !293}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4226, file: !51, line: 242, baseType: !4163, size: 64, offset: 1728)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4226, file: !51, line: 243, baseType: !4163, size: 64, offset: 1792)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4226, file: !51, line: 244, baseType: !4163, size: 64, offset: 1856)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4226, file: !51, line: 248, baseType: !4163, size: 64, offset: 1920)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4226, file: !51, line: 249, baseType: !4167, size: 64, offset: 1984)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4226, file: !51, line: 250, baseType: !4265, size: 64, offset: 2048)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!320, !433, !4268}
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4226, file: !51, line: 258, baseType: !4270, size: 64, offset: 2112)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!320, !433, !4273, !320}
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4226, file: !51, line: 267, baseType: !4275, size: 64, offset: 2176)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!320, !433, !416}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4226, file: !51, line: 268, baseType: !4275, size: 64, offset: 2240)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !406, file: !51, line: 493, baseType: !4280, size: 576, offset: 5440)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !4281)
!4281 = !{!4282, !4286, !4290, !4291, !4292, !4293, !4294, !4295, !4296}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4280, file: !51, line: 304, baseType: !4283, size: 64)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !4284)
!4284 = !{!4285}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4283, file: !51, line: 277, baseType: !326, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4280, file: !51, line: 306, baseType: !4287, size: 64, offset: 64)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{null, !433, !4248}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4280, file: !51, line: 308, baseType: !4167, size: 64, offset: 128)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4280, file: !51, line: 309, baseType: !4265, size: 64, offset: 192)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4280, file: !51, line: 310, baseType: !430, size: 64, offset: 256)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4280, file: !51, line: 311, baseType: !430, size: 64, offset: 320)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4280, file: !51, line: 312, baseType: !430, size: 64, offset: 384)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4280, file: !51, line: 313, baseType: !4216, size: 64, offset: 448)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4280, file: !51, line: 316, baseType: !4256, size: 64, offset: 512)
!4297 = !{i32 7, !"Dwarf Version", i32 4}
!4298 = !{i32 2, !"Debug Info Version", i32 3}
!4299 = !{i32 1, !"wchar_size", i32 2}
!4300 = !{i32 1, !"Code Model", i32 2}
!4301 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4302 = distinct !DISubprogram(name: "nxt6000_attach", scope: !3, file: !3, line: 557, type: !4303, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!433, !4305, !4312}
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4307)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nxt6000_config", file: !4308, line: 15, size: 16, elements: !4309)
!4308 = !DIFile(filename: "drivers/media/dvb-frontends/nxt6000.h", directory: "/home/lizy2001/genbc/linux")
!4309 = !{!4310, !4311}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4307, file: !4308, line: 18, baseType: !343, size: 8)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "clock_inversion", scope: !4307, file: !4308, line: 21, baseType: !343, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4314, line: 695, size: 7552, elements: !4315)
!4314 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4315 = !{!4316, !4317, !4318, !4355, !4356, !4370, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4387, !4388, !4389, !4390, !4422, !4433}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4313, file: !4314, line: 696, baseType: !307, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4313, file: !4314, line: 697, baseType: !7, size: 32, offset: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4313, file: !4314, line: 698, baseType: !4319, size: 64, offset: 128)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4321)
!4321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4314, line: 519, size: 320, elements: !4322)
!4322 = !{!4323, !4336, !4337, !4350, !4351}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4321, file: !4314, line: 529, baseType: !4324, size: 64)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!320, !4312, !4327, !320}
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4329, line: 69, size: 128, elements: !4330)
!4329 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4330 = !{!4331, !4332, !4333, !4334}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4328, file: !4329, line: 70, baseType: !335, size: 16)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4328, file: !4329, line: 71, baseType: !335, size: 16, offset: 16)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4328, file: !4329, line: 84, baseType: !335, size: 16, offset: 32)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4328, file: !4329, line: 85, baseType: !4335, size: 64, offset: 64)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4321, file: !4314, line: 531, baseType: !4324, size: 64, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4321, file: !4314, line: 533, baseType: !4338, size: 64, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!320, !4312, !333, !337, !305, !343, !320, !4341}
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4329, line: 135, size: 272, elements: !4343)
!4343 = !{!4344, !4345, !4346}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4342, file: !4329, line: 136, baseType: !344, size: 8)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4342, file: !4329, line: 137, baseType: !335, size: 16)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4342, file: !4329, line: 138, baseType: !4347, size: 272)
!4347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 272, elements: !4348)
!4348 = !{!4349}
!4349 = !DISubrange(count: 34)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4321, file: !4314, line: 536, baseType: !4338, size: 64, offset: 192)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4321, file: !4314, line: 541, baseType: !4352, size: 64, offset: 256)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!416, !4312}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4313, file: !4314, line: 699, baseType: !293, size: 64, offset: 192)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4313, file: !4314, line: 702, baseType: !4357, size: 64, offset: 256)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4359)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4314, line: 557, size: 192, elements: !4360)
!4360 = !{!4361, !4365, !4369}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4359, file: !4314, line: 558, baseType: !4362, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{null, !4312, !7}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4359, file: !4314, line: 559, baseType: !4366, size: 64, offset: 64)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!320, !4312, !7}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4359, file: !4314, line: 560, baseType: !4362, size: 64, offset: 128)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4313, file: !4314, line: 703, baseType: !4371, size: 192, offset: 320)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4372, line: 30, size: 192, elements: !4373)
!4372 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4373 = !{!4374, !4375, !4376}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4371, file: !4372, line: 31, baseType: !1020)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4371, file: !4372, line: 32, baseType: !992, size: 128)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4371, file: !4372, line: 33, baseType: !1373, size: 64, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4313, file: !4314, line: 704, baseType: !4371, size: 192, offset: 512)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4313, file: !4314, line: 706, baseType: !320, size: 32, offset: 704)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4313, file: !4314, line: 707, baseType: !320, size: 32, offset: 736)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4313, file: !4314, line: 708, baseType: !471, size: 5568, offset: 768)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4313, file: !4314, line: 709, baseType: !576, size: 64, offset: 6336)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4313, file: !4314, line: 713, baseType: !320, size: 32, offset: 6400)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4313, file: !4314, line: 714, baseType: !4384, size: 384, offset: 6432)
!4384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 384, elements: !4385)
!4385 = !{!4386}
!4386 = !DISubrange(count: 48)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4313, file: !4314, line: 715, baseType: !1655, size: 192, offset: 6848)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4313, file: !4314, line: 717, baseType: !1331, size: 192, offset: 7040)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4313, file: !4314, line: 718, baseType: !457, size: 128, offset: 7232)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4313, file: !4314, line: 720, baseType: !4391, size: 64, offset: 7360)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4314, line: 618, size: 832, elements: !4393)
!4393 = !{!4394, !4398, !4399, !4403, !4404, !4405, !4406, !4410, !4411, !4414, !4415, !4418, !4421}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4392, file: !4314, line: 619, baseType: !4395, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!320, !4312}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4392, file: !4314, line: 621, baseType: !4395, size: 64, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4392, file: !4314, line: 622, baseType: !4400, size: 64, offset: 128)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{null, !4312, !320}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4392, file: !4314, line: 623, baseType: !4395, size: 64, offset: 192)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4392, file: !4314, line: 624, baseType: !4400, size: 64, offset: 256)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4392, file: !4314, line: 625, baseType: !4395, size: 64, offset: 320)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4392, file: !4314, line: 627, baseType: !4407, size: 64, offset: 384)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{null, !4312}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4392, file: !4314, line: 628, baseType: !4407, size: 64, offset: 448)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4392, file: !4314, line: 631, baseType: !4412, size: 64, offset: 512)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4314, line: 631, flags: DIFlagFwdDecl)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4392, file: !4314, line: 632, baseType: !4412, size: 64, offset: 576)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4392, file: !4314, line: 633, baseType: !4416, size: 64, offset: 640)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4314, line: 633, flags: DIFlagFwdDecl)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4392, file: !4314, line: 634, baseType: !4419, size: 64, offset: 704)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4314, line: 634, flags: DIFlagFwdDecl)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4392, file: !4314, line: 635, baseType: !4419, size: 64, offset: 768)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4313, file: !4314, line: 721, baseType: !4423, size: 64, offset: 7424)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4425)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4314, line: 664, size: 192, elements: !4426)
!4426 = !{!4427, !4428, !4429, !4430, !4431, !4432}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4425, file: !4314, line: 665, baseType: !669, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4425, file: !4314, line: 666, baseType: !320, size: 32, offset: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4425, file: !4314, line: 667, baseType: !333, size: 16, offset: 96)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4425, file: !4314, line: 668, baseType: !333, size: 16, offset: 112)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4425, file: !4314, line: 669, baseType: !333, size: 16, offset: 128)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4425, file: !4314, line: 670, baseType: !333, size: 16, offset: 144)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4313, file: !4314, line: 723, baseType: !3747, size: 64, offset: 7488)
!4434 = !DILocalVariable(name: "config", arg: 1, scope: !4302, file: !3, line: 557, type: !4305)
!4435 = !DILocation(line: 557, column: 66, scope: !4302)
!4436 = !DILocalVariable(name: "i2c", arg: 2, scope: !4302, file: !3, line: 558, type: !4312)
!4437 = !DILocation(line: 558, column: 29, scope: !4302)
!4438 = !DILocalVariable(name: "state", scope: !4302, file: !3, line: 560, type: !4439)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nxt6000_state", file: !3, line: 24, size: 10368, elements: !4441)
!4441 = !{!4442, !4443, !4444}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4440, file: !3, line: 25, baseType: !4312, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4440, file: !3, line: 27, baseType: !4305, size: 64, offset: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4440, file: !3, line: 28, baseType: !434, size: 10240, offset: 128)
!4445 = !DILocation(line: 560, column: 24, scope: !4302)
!4446 = !DILocation(line: 563, column: 10, scope: !4302)
!4447 = !DILocation(line: 563, column: 8, scope: !4302)
!4448 = !DILocation(line: 564, column: 6, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 564, column: 6)
!4450 = !DILocation(line: 564, column: 12, scope: !4449)
!4451 = !DILocation(line: 564, column: 6, scope: !4302)
!4452 = !DILocation(line: 564, column: 21, scope: !4449)
!4453 = !DILocation(line: 567, column: 18, scope: !4302)
!4454 = !DILocation(line: 567, column: 2, scope: !4302)
!4455 = !DILocation(line: 567, column: 9, scope: !4302)
!4456 = !DILocation(line: 567, column: 16, scope: !4302)
!4457 = !DILocation(line: 568, column: 15, scope: !4302)
!4458 = !DILocation(line: 568, column: 2, scope: !4302)
!4459 = !DILocation(line: 568, column: 9, scope: !4302)
!4460 = !DILocation(line: 568, column: 13, scope: !4302)
!4461 = !DILocation(line: 571, column: 22, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 571, column: 6)
!4463 = !DILocation(line: 571, column: 6, scope: !4462)
!4464 = !DILocation(line: 571, column: 43, scope: !4462)
!4465 = !DILocation(line: 571, column: 6, scope: !4302)
!4466 = !DILocation(line: 571, column: 65, scope: !4462)
!4467 = !DILocation(line: 574, column: 10, scope: !4302)
!4468 = !DILocation(line: 574, column: 17, scope: !4302)
!4469 = !DILocation(line: 574, column: 26, scope: !4302)
!4470 = !DILocation(line: 574, column: 2, scope: !4302)
!4471 = !DILocation(line: 575, column: 37, scope: !4302)
!4472 = !DILocation(line: 575, column: 2, scope: !4302)
!4473 = !DILocation(line: 575, column: 9, scope: !4302)
!4474 = !DILocation(line: 575, column: 18, scope: !4302)
!4475 = !DILocation(line: 575, column: 35, scope: !4302)
!4476 = !DILocation(line: 576, column: 10, scope: !4302)
!4477 = !DILocation(line: 576, column: 17, scope: !4302)
!4478 = !DILocation(line: 576, column: 2, scope: !4302)
!4479 = !DILabel(scope: !4302, name: "error", file: !3, line: 578)
!4480 = !DILocation(line: 578, column: 1, scope: !4302)
!4481 = !DILocation(line: 579, column: 8, scope: !4302)
!4482 = !DILocation(line: 579, column: 2, scope: !4302)
!4483 = !DILocation(line: 580, column: 2, scope: !4302)
!4484 = !DILocation(line: 581, column: 1, scope: !4302)
!4485 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 662, type: !4486, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!293, !573, !291}
!4488 = !DILocalVariable(name: "s", arg: 1, scope: !4489, file: !284, line: 445, type: !1173)
!4489 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !284, file: !284, line: 445, type: !4490, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!293, !1173, !291, !573}
!4492 = !DILocation(line: 445, column: 72, scope: !4489, inlinedAt: !4493)
!4493 = distinct !DILocation(line: 552, column: 10, scope: !4494, inlinedAt: !4497)
!4494 = distinct !DILexicalBlock(scope: !4495, file: !284, line: 540, column: 34)
!4495 = distinct !DILexicalBlock(scope: !4496, file: !284, line: 540, column: 6)
!4496 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 538, type: !4486, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4497 = distinct !DILocation(line: 664, column: 9, scope: !4485)
!4498 = !DILocalVariable(name: "flags", arg: 2, scope: !4489, file: !284, line: 446, type: !291)
!4499 = !DILocation(line: 446, column: 9, scope: !4489, inlinedAt: !4493)
!4500 = !DILocalVariable(name: "size", arg: 3, scope: !4489, file: !284, line: 446, type: !573)
!4501 = !DILocation(line: 446, column: 23, scope: !4489, inlinedAt: !4493)
!4502 = !DILocalVariable(name: "ret", scope: !4489, file: !284, line: 448, type: !293)
!4503 = !DILocation(line: 448, column: 8, scope: !4489, inlinedAt: !4493)
!4504 = !DILocalVariable(name: "flags", arg: 1, scope: !4505, file: !284, line: 318, type: !291)
!4505 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 318, type: !4506, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!283, !291}
!4508 = !DILocation(line: 318, column: 67, scope: !4505, inlinedAt: !4509)
!4509 = distinct !DILocation(line: 553, column: 20, scope: !4494, inlinedAt: !4497)
!4510 = !DILocalVariable(name: "size", arg: 1, scope: !4511, file: !284, line: 346, type: !573)
!4511 = distinct !DISubprogram(name: "kmalloc_index", scope: !284, file: !284, line: 346, type: !4512, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!7, !573}
!4514 = !DILocation(line: 346, column: 58, scope: !4511, inlinedAt: !4515)
!4515 = distinct !DILocation(line: 547, column: 11, scope: !4494, inlinedAt: !4497)
!4516 = !DILocalVariable(name: "size", arg: 1, scope: !4517, file: !284, line: 472, type: !573)
!4517 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !284, file: !284, line: 472, type: !4518, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!293, !573, !291, !7}
!4520 = !DILocation(line: 472, column: 28, scope: !4517, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 481, column: 9, scope: !4522, inlinedAt: !4523)
!4522 = distinct !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 478, type: !4486, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4523 = distinct !DILocation(line: 545, column: 11, scope: !4524, inlinedAt: !4497)
!4524 = distinct !DILexicalBlock(scope: !4494, file: !284, line: 544, column: 7)
!4525 = !DILocalVariable(name: "flags", arg: 2, scope: !4517, file: !284, line: 472, type: !291)
!4526 = !DILocation(line: 472, column: 40, scope: !4517, inlinedAt: !4521)
!4527 = !DILocalVariable(name: "order", arg: 3, scope: !4517, file: !284, line: 472, type: !7)
!4528 = !DILocation(line: 472, column: 60, scope: !4517, inlinedAt: !4521)
!4529 = !DILocalVariable(name: "size", arg: 1, scope: !4522, file: !284, line: 478, type: !573)
!4530 = !DILocation(line: 478, column: 51, scope: !4522, inlinedAt: !4523)
!4531 = !DILocalVariable(name: "flags", arg: 2, scope: !4522, file: !284, line: 478, type: !291)
!4532 = !DILocation(line: 478, column: 63, scope: !4522, inlinedAt: !4523)
!4533 = !DILocalVariable(name: "order", scope: !4522, file: !284, line: 480, type: !7)
!4534 = !DILocation(line: 480, column: 15, scope: !4522, inlinedAt: !4523)
!4535 = !DILocalVariable(name: "size", arg: 1, scope: !4496, file: !284, line: 538, type: !573)
!4536 = !DILocation(line: 538, column: 45, scope: !4496, inlinedAt: !4497)
!4537 = !DILocalVariable(name: "flags", arg: 2, scope: !4496, file: !284, line: 538, type: !291)
!4538 = !DILocation(line: 538, column: 57, scope: !4496, inlinedAt: !4497)
!4539 = !DILocalVariable(name: "index", scope: !4494, file: !284, line: 542, type: !7)
!4540 = !DILocation(line: 542, column: 16, scope: !4494, inlinedAt: !4497)
!4541 = !DILocalVariable(name: "size", arg: 1, scope: !4485, file: !284, line: 662, type: !573)
!4542 = !DILocation(line: 662, column: 36, scope: !4485)
!4543 = !DILocalVariable(name: "flags", arg: 2, scope: !4485, file: !284, line: 662, type: !291)
!4544 = !DILocation(line: 662, column: 48, scope: !4485)
!4545 = !DILocation(line: 664, column: 17, scope: !4485)
!4546 = !DILocation(line: 664, column: 23, scope: !4485)
!4547 = !DILocation(line: 664, column: 29, scope: !4485)
!4548 = !DILocation(line: 540, column: 27, scope: !4495, inlinedAt: !4497)
!4549 = !DILocation(line: 540, column: 6, scope: !4495, inlinedAt: !4497)
!4550 = !DILocation(line: 540, column: 6, scope: !4496, inlinedAt: !4497)
!4551 = !DILocation(line: 544, column: 7, scope: !4524, inlinedAt: !4497)
!4552 = !DILocation(line: 544, column: 12, scope: !4524, inlinedAt: !4497)
!4553 = !DILocation(line: 544, column: 7, scope: !4494, inlinedAt: !4497)
!4554 = !DILocation(line: 545, column: 25, scope: !4524, inlinedAt: !4497)
!4555 = !DILocation(line: 545, column: 31, scope: !4524, inlinedAt: !4497)
!4556 = !DILocation(line: 480, column: 33, scope: !4522, inlinedAt: !4523)
!4557 = !DILocation(line: 480, column: 23, scope: !4522, inlinedAt: !4523)
!4558 = !DILocation(line: 481, column: 29, scope: !4522, inlinedAt: !4523)
!4559 = !DILocation(line: 481, column: 35, scope: !4522, inlinedAt: !4523)
!4560 = !DILocation(line: 481, column: 42, scope: !4522, inlinedAt: !4523)
!4561 = !DILocation(line: 474, column: 23, scope: !4517, inlinedAt: !4521)
!4562 = !DILocation(line: 474, column: 29, scope: !4517, inlinedAt: !4521)
!4563 = !DILocation(line: 474, column: 36, scope: !4517, inlinedAt: !4521)
!4564 = !DILocation(line: 474, column: 9, scope: !4517, inlinedAt: !4521)
!4565 = !DILocation(line: 545, column: 4, scope: !4524, inlinedAt: !4497)
!4566 = !DILocation(line: 547, column: 25, scope: !4494, inlinedAt: !4497)
!4567 = !DILocation(line: 348, column: 7, scope: !4568, inlinedAt: !4515)
!4568 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 348, column: 6)
!4569 = !DILocation(line: 348, column: 6, scope: !4511, inlinedAt: !4515)
!4570 = !DILocation(line: 349, column: 3, scope: !4568, inlinedAt: !4515)
!4571 = !DILocation(line: 351, column: 6, scope: !4572, inlinedAt: !4515)
!4572 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 351, column: 6)
!4573 = !DILocation(line: 351, column: 11, scope: !4572, inlinedAt: !4515)
!4574 = !DILocation(line: 351, column: 6, scope: !4511, inlinedAt: !4515)
!4575 = !DILocation(line: 352, column: 3, scope: !4572, inlinedAt: !4515)
!4576 = !DILocation(line: 354, column: 32, scope: !4577, inlinedAt: !4515)
!4577 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 354, column: 6)
!4578 = !DILocation(line: 354, column: 37, scope: !4577, inlinedAt: !4515)
!4579 = !DILocation(line: 354, column: 42, scope: !4577, inlinedAt: !4515)
!4580 = !DILocation(line: 354, column: 45, scope: !4577, inlinedAt: !4515)
!4581 = !DILocation(line: 354, column: 50, scope: !4577, inlinedAt: !4515)
!4582 = !DILocation(line: 354, column: 6, scope: !4511, inlinedAt: !4515)
!4583 = !DILocation(line: 355, column: 3, scope: !4577, inlinedAt: !4515)
!4584 = !DILocation(line: 356, column: 32, scope: !4585, inlinedAt: !4515)
!4585 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 356, column: 6)
!4586 = !DILocation(line: 356, column: 37, scope: !4585, inlinedAt: !4515)
!4587 = !DILocation(line: 356, column: 43, scope: !4585, inlinedAt: !4515)
!4588 = !DILocation(line: 356, column: 46, scope: !4585, inlinedAt: !4515)
!4589 = !DILocation(line: 356, column: 51, scope: !4585, inlinedAt: !4515)
!4590 = !DILocation(line: 356, column: 6, scope: !4511, inlinedAt: !4515)
!4591 = !DILocation(line: 357, column: 3, scope: !4585, inlinedAt: !4515)
!4592 = !DILocation(line: 358, column: 6, scope: !4593, inlinedAt: !4515)
!4593 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 358, column: 6)
!4594 = !DILocation(line: 358, column: 11, scope: !4593, inlinedAt: !4515)
!4595 = !DILocation(line: 358, column: 6, scope: !4511, inlinedAt: !4515)
!4596 = !DILocation(line: 358, column: 26, scope: !4593, inlinedAt: !4515)
!4597 = !DILocation(line: 359, column: 6, scope: !4598, inlinedAt: !4515)
!4598 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 359, column: 6)
!4599 = !DILocation(line: 359, column: 11, scope: !4598, inlinedAt: !4515)
!4600 = !DILocation(line: 359, column: 6, scope: !4511, inlinedAt: !4515)
!4601 = !DILocation(line: 359, column: 26, scope: !4598, inlinedAt: !4515)
!4602 = !DILocation(line: 360, column: 6, scope: !4603, inlinedAt: !4515)
!4603 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 360, column: 6)
!4604 = !DILocation(line: 360, column: 11, scope: !4603, inlinedAt: !4515)
!4605 = !DILocation(line: 360, column: 6, scope: !4511, inlinedAt: !4515)
!4606 = !DILocation(line: 360, column: 26, scope: !4603, inlinedAt: !4515)
!4607 = !DILocation(line: 361, column: 6, scope: !4608, inlinedAt: !4515)
!4608 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 361, column: 6)
!4609 = !DILocation(line: 361, column: 11, scope: !4608, inlinedAt: !4515)
!4610 = !DILocation(line: 361, column: 6, scope: !4511, inlinedAt: !4515)
!4611 = !DILocation(line: 361, column: 26, scope: !4608, inlinedAt: !4515)
!4612 = !DILocation(line: 362, column: 6, scope: !4613, inlinedAt: !4515)
!4613 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 362, column: 6)
!4614 = !DILocation(line: 362, column: 11, scope: !4613, inlinedAt: !4515)
!4615 = !DILocation(line: 362, column: 6, scope: !4511, inlinedAt: !4515)
!4616 = !DILocation(line: 362, column: 26, scope: !4613, inlinedAt: !4515)
!4617 = !DILocation(line: 363, column: 6, scope: !4618, inlinedAt: !4515)
!4618 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 363, column: 6)
!4619 = !DILocation(line: 363, column: 11, scope: !4618, inlinedAt: !4515)
!4620 = !DILocation(line: 363, column: 6, scope: !4511, inlinedAt: !4515)
!4621 = !DILocation(line: 363, column: 26, scope: !4618, inlinedAt: !4515)
!4622 = !DILocation(line: 364, column: 6, scope: !4623, inlinedAt: !4515)
!4623 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 364, column: 6)
!4624 = !DILocation(line: 364, column: 11, scope: !4623, inlinedAt: !4515)
!4625 = !DILocation(line: 364, column: 6, scope: !4511, inlinedAt: !4515)
!4626 = !DILocation(line: 364, column: 26, scope: !4623, inlinedAt: !4515)
!4627 = !DILocation(line: 365, column: 6, scope: !4628, inlinedAt: !4515)
!4628 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 365, column: 6)
!4629 = !DILocation(line: 365, column: 11, scope: !4628, inlinedAt: !4515)
!4630 = !DILocation(line: 365, column: 6, scope: !4511, inlinedAt: !4515)
!4631 = !DILocation(line: 365, column: 26, scope: !4628, inlinedAt: !4515)
!4632 = !DILocation(line: 366, column: 6, scope: !4633, inlinedAt: !4515)
!4633 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 366, column: 6)
!4634 = !DILocation(line: 366, column: 11, scope: !4633, inlinedAt: !4515)
!4635 = !DILocation(line: 366, column: 6, scope: !4511, inlinedAt: !4515)
!4636 = !DILocation(line: 366, column: 26, scope: !4633, inlinedAt: !4515)
!4637 = !DILocation(line: 367, column: 6, scope: !4638, inlinedAt: !4515)
!4638 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 367, column: 6)
!4639 = !DILocation(line: 367, column: 11, scope: !4638, inlinedAt: !4515)
!4640 = !DILocation(line: 367, column: 6, scope: !4511, inlinedAt: !4515)
!4641 = !DILocation(line: 367, column: 26, scope: !4638, inlinedAt: !4515)
!4642 = !DILocation(line: 368, column: 6, scope: !4643, inlinedAt: !4515)
!4643 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 368, column: 6)
!4644 = !DILocation(line: 368, column: 11, scope: !4643, inlinedAt: !4515)
!4645 = !DILocation(line: 368, column: 6, scope: !4511, inlinedAt: !4515)
!4646 = !DILocation(line: 368, column: 26, scope: !4643, inlinedAt: !4515)
!4647 = !DILocation(line: 369, column: 6, scope: !4648, inlinedAt: !4515)
!4648 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 369, column: 6)
!4649 = !DILocation(line: 369, column: 11, scope: !4648, inlinedAt: !4515)
!4650 = !DILocation(line: 369, column: 6, scope: !4511, inlinedAt: !4515)
!4651 = !DILocation(line: 369, column: 26, scope: !4648, inlinedAt: !4515)
!4652 = !DILocation(line: 370, column: 6, scope: !4653, inlinedAt: !4515)
!4653 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 370, column: 6)
!4654 = !DILocation(line: 370, column: 11, scope: !4653, inlinedAt: !4515)
!4655 = !DILocation(line: 370, column: 6, scope: !4511, inlinedAt: !4515)
!4656 = !DILocation(line: 370, column: 26, scope: !4653, inlinedAt: !4515)
!4657 = !DILocation(line: 371, column: 6, scope: !4658, inlinedAt: !4515)
!4658 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 371, column: 6)
!4659 = !DILocation(line: 371, column: 11, scope: !4658, inlinedAt: !4515)
!4660 = !DILocation(line: 371, column: 6, scope: !4511, inlinedAt: !4515)
!4661 = !DILocation(line: 371, column: 26, scope: !4658, inlinedAt: !4515)
!4662 = !DILocation(line: 372, column: 6, scope: !4663, inlinedAt: !4515)
!4663 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 372, column: 6)
!4664 = !DILocation(line: 372, column: 11, scope: !4663, inlinedAt: !4515)
!4665 = !DILocation(line: 372, column: 6, scope: !4511, inlinedAt: !4515)
!4666 = !DILocation(line: 372, column: 26, scope: !4663, inlinedAt: !4515)
!4667 = !DILocation(line: 373, column: 6, scope: !4668, inlinedAt: !4515)
!4668 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 373, column: 6)
!4669 = !DILocation(line: 373, column: 11, scope: !4668, inlinedAt: !4515)
!4670 = !DILocation(line: 373, column: 6, scope: !4511, inlinedAt: !4515)
!4671 = !DILocation(line: 373, column: 26, scope: !4668, inlinedAt: !4515)
!4672 = !DILocation(line: 374, column: 6, scope: !4673, inlinedAt: !4515)
!4673 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 374, column: 6)
!4674 = !DILocation(line: 374, column: 11, scope: !4673, inlinedAt: !4515)
!4675 = !DILocation(line: 374, column: 6, scope: !4511, inlinedAt: !4515)
!4676 = !DILocation(line: 374, column: 26, scope: !4673, inlinedAt: !4515)
!4677 = !DILocation(line: 375, column: 6, scope: !4678, inlinedAt: !4515)
!4678 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 375, column: 6)
!4679 = !DILocation(line: 375, column: 11, scope: !4678, inlinedAt: !4515)
!4680 = !DILocation(line: 375, column: 6, scope: !4511, inlinedAt: !4515)
!4681 = !DILocation(line: 375, column: 27, scope: !4678, inlinedAt: !4515)
!4682 = !DILocation(line: 376, column: 6, scope: !4683, inlinedAt: !4515)
!4683 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 376, column: 6)
!4684 = !DILocation(line: 376, column: 11, scope: !4683, inlinedAt: !4515)
!4685 = !DILocation(line: 376, column: 6, scope: !4511, inlinedAt: !4515)
!4686 = !DILocation(line: 376, column: 32, scope: !4683, inlinedAt: !4515)
!4687 = !DILocation(line: 377, column: 6, scope: !4688, inlinedAt: !4515)
!4688 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 377, column: 6)
!4689 = !DILocation(line: 377, column: 11, scope: !4688, inlinedAt: !4515)
!4690 = !DILocation(line: 377, column: 6, scope: !4511, inlinedAt: !4515)
!4691 = !DILocation(line: 377, column: 32, scope: !4688, inlinedAt: !4515)
!4692 = !DILocation(line: 378, column: 6, scope: !4693, inlinedAt: !4515)
!4693 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 378, column: 6)
!4694 = !DILocation(line: 378, column: 11, scope: !4693, inlinedAt: !4515)
!4695 = !DILocation(line: 378, column: 6, scope: !4511, inlinedAt: !4515)
!4696 = !DILocation(line: 378, column: 32, scope: !4693, inlinedAt: !4515)
!4697 = !DILocation(line: 379, column: 6, scope: !4698, inlinedAt: !4515)
!4698 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 379, column: 6)
!4699 = !DILocation(line: 379, column: 11, scope: !4698, inlinedAt: !4515)
!4700 = !DILocation(line: 379, column: 6, scope: !4511, inlinedAt: !4515)
!4701 = !DILocation(line: 379, column: 33, scope: !4698, inlinedAt: !4515)
!4702 = !DILocation(line: 380, column: 6, scope: !4703, inlinedAt: !4515)
!4703 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 380, column: 6)
!4704 = !DILocation(line: 380, column: 11, scope: !4703, inlinedAt: !4515)
!4705 = !DILocation(line: 380, column: 6, scope: !4511, inlinedAt: !4515)
!4706 = !DILocation(line: 380, column: 33, scope: !4703, inlinedAt: !4515)
!4707 = !DILocation(line: 381, column: 6, scope: !4708, inlinedAt: !4515)
!4708 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 381, column: 6)
!4709 = !DILocation(line: 381, column: 11, scope: !4708, inlinedAt: !4515)
!4710 = !DILocation(line: 381, column: 6, scope: !4511, inlinedAt: !4515)
!4711 = !DILocation(line: 381, column: 33, scope: !4708, inlinedAt: !4515)
!4712 = !DILocation(line: 382, column: 2, scope: !4713, inlinedAt: !4515)
!4713 = distinct !DILexicalBlock(scope: !4714, file: !284, line: 382, column: 2)
!4714 = distinct !DILexicalBlock(scope: !4511, file: !284, line: 382, column: 2)
!4715 = !{i32 -2144232748, i32 -2144232719, i32 -2144232673, i32 -2144232615, i32 -2144232561, i32 -2144232507, i32 -2144232452, i32 -2144232421}
!4716 = !DILocation(line: 382, column: 2, scope: !4717, inlinedAt: !4515)
!4717 = distinct !DILexicalBlock(scope: !4718, file: !284, line: 382, column: 2)
!4718 = distinct !DILexicalBlock(scope: !4714, file: !284, line: 382, column: 2)
!4719 = !{i32 -2144231978, i32 -2144231971, i32 -2144231917, i32 -2144231886, i32 -2144231856}
!4720 = !DILocation(line: 382, column: 2, scope: !4718, inlinedAt: !4515)
!4721 = !DILocation(line: 386, column: 1, scope: !4511, inlinedAt: !4515)
!4722 = !DILocation(line: 547, column: 9, scope: !4494, inlinedAt: !4497)
!4723 = !DILocation(line: 549, column: 8, scope: !4724, inlinedAt: !4497)
!4724 = distinct !DILexicalBlock(scope: !4494, file: !284, line: 549, column: 7)
!4725 = !DILocation(line: 549, column: 7, scope: !4494, inlinedAt: !4497)
!4726 = !DILocation(line: 550, column: 4, scope: !4724, inlinedAt: !4497)
!4727 = !DILocation(line: 553, column: 33, scope: !4494, inlinedAt: !4497)
!4728 = !DILocation(line: 325, column: 6, scope: !4729, inlinedAt: !4509)
!4729 = distinct !DILexicalBlock(scope: !4505, file: !284, line: 325, column: 6)
!4730 = !DILocation(line: 325, column: 6, scope: !4505, inlinedAt: !4509)
!4731 = !DILocation(line: 326, column: 3, scope: !4729, inlinedAt: !4509)
!4732 = !DILocation(line: 332, column: 9, scope: !4505, inlinedAt: !4509)
!4733 = !DILocation(line: 332, column: 15, scope: !4505, inlinedAt: !4509)
!4734 = !DILocation(line: 332, column: 2, scope: !4505, inlinedAt: !4509)
!4735 = !DILocation(line: 336, column: 1, scope: !4505, inlinedAt: !4509)
!4736 = !DILocation(line: 553, column: 5, scope: !4494, inlinedAt: !4497)
!4737 = !DILocation(line: 553, column: 41, scope: !4494, inlinedAt: !4497)
!4738 = !DILocation(line: 554, column: 5, scope: !4494, inlinedAt: !4497)
!4739 = !DILocation(line: 554, column: 12, scope: !4494, inlinedAt: !4497)
!4740 = !DILocation(line: 448, column: 31, scope: !4489, inlinedAt: !4493)
!4741 = !DILocation(line: 448, column: 34, scope: !4489, inlinedAt: !4493)
!4742 = !DILocation(line: 448, column: 14, scope: !4489, inlinedAt: !4493)
!4743 = !DILocation(line: 450, column: 22, scope: !4489, inlinedAt: !4493)
!4744 = !DILocation(line: 450, column: 25, scope: !4489, inlinedAt: !4493)
!4745 = !DILocation(line: 450, column: 30, scope: !4489, inlinedAt: !4493)
!4746 = !DILocation(line: 450, column: 36, scope: !4489, inlinedAt: !4493)
!4747 = !DILocation(line: 450, column: 8, scope: !4489, inlinedAt: !4493)
!4748 = !DILocation(line: 450, column: 6, scope: !4489, inlinedAt: !4493)
!4749 = !DILocation(line: 451, column: 9, scope: !4489, inlinedAt: !4493)
!4750 = !DILocation(line: 552, column: 3, scope: !4494, inlinedAt: !4497)
!4751 = !DILocation(line: 557, column: 19, scope: !4496, inlinedAt: !4497)
!4752 = !DILocation(line: 557, column: 25, scope: !4496, inlinedAt: !4497)
!4753 = !DILocation(line: 557, column: 9, scope: !4496, inlinedAt: !4497)
!4754 = !DILocation(line: 557, column: 2, scope: !4496, inlinedAt: !4497)
!4755 = !DILocation(line: 558, column: 1, scope: !4496, inlinedAt: !4497)
!4756 = !DILocation(line: 664, column: 2, scope: !4485)
!4757 = distinct !DISubprogram(name: "nxt6000_readreg", scope: !3, file: !3, line: 50, type: !4758, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!343, !4439, !343}
!4760 = !DILocalVariable(name: "state", arg: 1, scope: !4757, file: !3, line: 50, type: !4439)
!4761 = !DILocation(line: 50, column: 49, scope: !4757)
!4762 = !DILocalVariable(name: "reg", arg: 2, scope: !4757, file: !3, line: 50, type: !343)
!4763 = !DILocation(line: 50, column: 59, scope: !4757)
!4764 = !DILocalVariable(name: "ret", scope: !4757, file: !3, line: 52, type: !320)
!4765 = !DILocation(line: 52, column: 6, scope: !4757)
!4766 = !DILocalVariable(name: "b0", scope: !4757, file: !3, line: 53, type: !4767)
!4767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 8, elements: !1519)
!4768 = !DILocation(line: 53, column: 5, scope: !4757)
!4769 = !DILocation(line: 53, column: 12, scope: !4757)
!4770 = !DILocation(line: 53, column: 14, scope: !4757)
!4771 = !DILocalVariable(name: "b1", scope: !4757, file: !3, line: 54, type: !4767)
!4772 = !DILocation(line: 54, column: 5, scope: !4757)
!4773 = !DILocalVariable(name: "msgs", scope: !4757, file: !3, line: 55, type: !4774)
!4774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4328, size: 256, elements: !1722)
!4775 = !DILocation(line: 55, column: 17, scope: !4757)
!4776 = !DILocation(line: 55, column: 26, scope: !4757)
!4777 = !DILocation(line: 56, column: 3, scope: !4757)
!4778 = !DILocation(line: 56, column: 12, scope: !4757)
!4779 = !DILocation(line: 56, column: 19, scope: !4757)
!4780 = !DILocation(line: 56, column: 27, scope: !4757)
!4781 = !DILocation(line: 56, column: 59, scope: !4757)
!4782 = !DILocation(line: 57, column: 3, scope: !4757)
!4783 = !DILocation(line: 57, column: 12, scope: !4757)
!4784 = !DILocation(line: 57, column: 19, scope: !4757)
!4785 = !DILocation(line: 57, column: 27, scope: !4757)
!4786 = !DILocation(line: 57, column: 66, scope: !4757)
!4787 = !DILocation(line: 60, column: 21, scope: !4757)
!4788 = !DILocation(line: 60, column: 28, scope: !4757)
!4789 = !DILocation(line: 60, column: 33, scope: !4757)
!4790 = !DILocation(line: 60, column: 8, scope: !4757)
!4791 = !DILocation(line: 60, column: 6, scope: !4757)
!4792 = !DILocation(line: 62, column: 6, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 62, column: 6)
!4794 = !DILocation(line: 62, column: 10, scope: !4793)
!4795 = !DILocation(line: 62, column: 6, scope: !4757)
!4796 = !DILocation(line: 63, column: 3, scope: !4793)
!4797 = !DILocation(line: 63, column: 3, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4799, file: !3, line: 63, column: 3)
!4799 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 63, column: 3)
!4800 = !DILocation(line: 63, column: 3, scope: !4799)
!4801 = !DILocation(line: 65, column: 9, scope: !4757)
!4802 = !DILocation(line: 65, column: 2, scope: !4757)
!4803 = distinct !DISubprogram(name: "get_order", scope: !4804, file: !4804, line: 29, type: !4805, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4804 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4805 = !DISubroutineType(types: !4806)
!4806 = !{!320, !576}
!4807 = !DILocalVariable(name: "x", arg: 1, scope: !4808, file: !4809, line: 366, type: !670)
!4808 = distinct !DISubprogram(name: "fls64", scope: !4809, file: !4809, line: 366, type: !4810, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4809 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!320, !670}
!4812 = !DILocation(line: 366, column: 40, scope: !4808, inlinedAt: !4813)
!4813 = distinct !DILocation(line: 46, column: 9, scope: !4803)
!4814 = !DILocalVariable(name: "bitpos", scope: !4808, file: !4809, line: 368, type: !320)
!4815 = !DILocation(line: 368, column: 6, scope: !4808, inlinedAt: !4813)
!4816 = !DILocalVariable(name: "size", arg: 1, scope: !4803, file: !4804, line: 29, type: !576)
!4817 = !DILocation(line: 29, column: 63, scope: !4803)
!4818 = !DILocation(line: 31, column: 27, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4803, file: !4804, line: 31, column: 6)
!4820 = !DILocation(line: 31, column: 6, scope: !4819)
!4821 = !DILocation(line: 31, column: 6, scope: !4803)
!4822 = !DILocation(line: 32, column: 8, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4824, file: !4804, line: 32, column: 7)
!4824 = distinct !DILexicalBlock(scope: !4819, file: !4804, line: 31, column: 34)
!4825 = !DILocation(line: 32, column: 7, scope: !4824)
!4826 = !DILocation(line: 33, column: 4, scope: !4823)
!4827 = !DILocation(line: 35, column: 7, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4824, file: !4804, line: 35, column: 7)
!4829 = !DILocation(line: 35, column: 12, scope: !4828)
!4830 = !DILocation(line: 35, column: 7, scope: !4824)
!4831 = !DILocation(line: 36, column: 4, scope: !4828)
!4832 = !DILocation(line: 38, column: 10, scope: !4824)
!4833 = !DILocation(line: 38, column: 28, scope: !4824)
!4834 = !DILocation(line: 38, column: 41, scope: !4824)
!4835 = !DILocation(line: 38, column: 3, scope: !4824)
!4836 = !DILocation(line: 41, column: 6, scope: !4803)
!4837 = !DILocation(line: 42, column: 7, scope: !4803)
!4838 = !DILocation(line: 46, column: 15, scope: !4803)
!4839 = !DILocation(line: 374, column: 2, scope: !4808, inlinedAt: !4813)
!4840 = !DILocation(line: 376, column: 14, scope: !4808, inlinedAt: !4813)
!4841 = !{i32 264463}
!4842 = !DILocation(line: 377, column: 9, scope: !4808, inlinedAt: !4813)
!4843 = !DILocation(line: 377, column: 16, scope: !4808, inlinedAt: !4813)
!4844 = !DILocation(line: 46, column: 2, scope: !4803)
!4845 = !DILocation(line: 48, column: 1, scope: !4803)
!4846 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4847, file: !4847, line: 30, type: !4848, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4847 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4848 = !DISubroutineType(types: !4849)
!4849 = !{!320, !669}
!4850 = !DILocation(line: 366, column: 40, scope: !4808, inlinedAt: !4851)
!4851 = distinct !DILocation(line: 32, column: 9, scope: !4846)
!4852 = !DILocation(line: 368, column: 6, scope: !4808, inlinedAt: !4851)
!4853 = !DILocalVariable(name: "n", arg: 1, scope: !4846, file: !4847, line: 30, type: !669)
!4854 = !DILocation(line: 30, column: 21, scope: !4846)
!4855 = !DILocation(line: 32, column: 15, scope: !4846)
!4856 = !DILocation(line: 374, column: 2, scope: !4808, inlinedAt: !4851)
!4857 = !DILocation(line: 376, column: 14, scope: !4808, inlinedAt: !4851)
!4858 = !DILocation(line: 377, column: 9, scope: !4808, inlinedAt: !4851)
!4859 = !DILocation(line: 377, column: 16, scope: !4808, inlinedAt: !4851)
!4860 = !DILocation(line: 32, column: 18, scope: !4846)
!4861 = !DILocation(line: 32, column: 2, scope: !4846)
!4862 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4863, file: !4863, line: 137, type: !4864, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4863 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!293, !1173, !2280, !573, !291}
!4866 = !DILocalVariable(name: "s", arg: 1, scope: !4862, file: !4863, line: 137, type: !1173)
!4867 = !DILocation(line: 137, column: 54, scope: !4862)
!4868 = !DILocalVariable(name: "object", arg: 2, scope: !4862, file: !4863, line: 137, type: !2280)
!4869 = !DILocation(line: 137, column: 69, scope: !4862)
!4870 = !DILocalVariable(name: "size", arg: 3, scope: !4862, file: !4863, line: 138, type: !573)
!4871 = !DILocation(line: 138, column: 12, scope: !4862)
!4872 = !DILocalVariable(name: "flags", arg: 4, scope: !4862, file: !4863, line: 138, type: !291)
!4873 = !DILocation(line: 138, column: 24, scope: !4862)
!4874 = !DILocation(line: 140, column: 17, scope: !4862)
!4875 = !DILocation(line: 140, column: 2, scope: !4862)
!4876 = distinct !DISubprogram(name: "nxt6000_release", scope: !3, file: !3, line: 498, type: !431, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4877 = !DILocalVariable(name: "fe", arg: 1, scope: !4876, file: !3, line: 498, type: !433)
!4878 = !DILocation(line: 498, column: 50, scope: !4876)
!4879 = !DILocalVariable(name: "state", scope: !4876, file: !3, line: 500, type: !4439)
!4880 = !DILocation(line: 500, column: 24, scope: !4876)
!4881 = !DILocation(line: 500, column: 32, scope: !4876)
!4882 = !DILocation(line: 500, column: 36, scope: !4876)
!4883 = !DILocation(line: 501, column: 8, scope: !4876)
!4884 = !DILocation(line: 501, column: 2, scope: !4876)
!4885 = !DILocation(line: 502, column: 1, scope: !4876)
!4886 = distinct !DISubprogram(name: "nxt6000_init", scope: !3, file: !3, line: 457, type: !4124, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4887 = !DILocalVariable(name: "fe", arg: 1, scope: !4886, file: !3, line: 457, type: !433)
!4888 = !DILocation(line: 457, column: 46, scope: !4886)
!4889 = !DILocalVariable(name: "state", scope: !4886, file: !3, line: 459, type: !4439)
!4890 = !DILocation(line: 459, column: 24, scope: !4886)
!4891 = !DILocation(line: 459, column: 32, scope: !4886)
!4892 = !DILocation(line: 459, column: 36, scope: !4886)
!4893 = !DILocation(line: 461, column: 16, scope: !4886)
!4894 = !DILocation(line: 461, column: 2, scope: !4886)
!4895 = !DILocation(line: 462, column: 16, scope: !4886)
!4896 = !DILocation(line: 462, column: 2, scope: !4886)
!4897 = !DILocation(line: 464, column: 2, scope: !4886)
!4898 = distinct !DISubprogram(name: "nxt6000_set_frontend", scope: !3, file: !3, line: 467, type: !4124, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4899 = !DILocalVariable(name: "fe", arg: 1, scope: !4898, file: !3, line: 467, type: !433)
!4900 = !DILocation(line: 467, column: 54, scope: !4898)
!4901 = !DILocalVariable(name: "p", scope: !4898, file: !3, line: 469, type: !4157)
!4902 = !DILocation(line: 469, column: 34, scope: !4898)
!4903 = !DILocation(line: 469, column: 39, scope: !4898)
!4904 = !DILocation(line: 469, column: 43, scope: !4898)
!4905 = !DILocalVariable(name: "state", scope: !4898, file: !3, line: 470, type: !4439)
!4906 = !DILocation(line: 470, column: 24, scope: !4898)
!4907 = !DILocation(line: 470, column: 32, scope: !4898)
!4908 = !DILocation(line: 470, column: 36, scope: !4898)
!4909 = !DILocalVariable(name: "result", scope: !4898, file: !3, line: 471, type: !320)
!4910 = !DILocation(line: 471, column: 6, scope: !4898)
!4911 = !DILocation(line: 473, column: 6, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 473, column: 6)
!4913 = !DILocation(line: 473, column: 10, scope: !4912)
!4914 = !DILocation(line: 473, column: 14, scope: !4912)
!4915 = !DILocation(line: 473, column: 24, scope: !4912)
!4916 = !DILocation(line: 473, column: 6, scope: !4898)
!4917 = !DILocation(line: 474, column: 3, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4912, file: !3, line: 473, column: 36)
!4919 = !DILocation(line: 474, column: 7, scope: !4918)
!4920 = !DILocation(line: 474, column: 11, scope: !4918)
!4921 = !DILocation(line: 474, column: 21, scope: !4918)
!4922 = !DILocation(line: 474, column: 32, scope: !4918)
!4923 = !DILocation(line: 475, column: 7, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4918, file: !3, line: 475, column: 7)
!4925 = !DILocation(line: 475, column: 11, scope: !4924)
!4926 = !DILocation(line: 475, column: 15, scope: !4924)
!4927 = !DILocation(line: 475, column: 7, scope: !4918)
!4928 = !DILocation(line: 475, column: 30, scope: !4924)
!4929 = !DILocation(line: 475, column: 34, scope: !4924)
!4930 = !DILocation(line: 475, column: 38, scope: !4924)
!4931 = !DILocation(line: 475, column: 52, scope: !4924)
!4932 = !DILocation(line: 476, column: 2, scope: !4918)
!4933 = !DILocation(line: 478, column: 33, scope: !4898)
!4934 = !DILocation(line: 478, column: 40, scope: !4898)
!4935 = !DILocation(line: 478, column: 43, scope: !4898)
!4936 = !DILocation(line: 478, column: 11, scope: !4898)
!4937 = !DILocation(line: 478, column: 9, scope: !4898)
!4938 = !DILocation(line: 479, column: 6, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 479, column: 6)
!4940 = !DILocation(line: 479, column: 13, scope: !4939)
!4941 = !DILocation(line: 479, column: 6, scope: !4898)
!4942 = !DILocation(line: 480, column: 10, scope: !4939)
!4943 = !DILocation(line: 480, column: 3, scope: !4939)
!4944 = !DILocation(line: 482, column: 38, scope: !4898)
!4945 = !DILocation(line: 482, column: 45, scope: !4898)
!4946 = !DILocation(line: 482, column: 48, scope: !4898)
!4947 = !DILocation(line: 482, column: 11, scope: !4898)
!4948 = !DILocation(line: 482, column: 9, scope: !4898)
!4949 = !DILocation(line: 483, column: 6, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 483, column: 6)
!4951 = !DILocation(line: 483, column: 13, scope: !4950)
!4952 = !DILocation(line: 483, column: 6, scope: !4898)
!4953 = !DILocation(line: 484, column: 10, scope: !4950)
!4954 = !DILocation(line: 484, column: 3, scope: !4950)
!4955 = !DILocation(line: 486, column: 41, scope: !4898)
!4956 = !DILocation(line: 486, column: 48, scope: !4898)
!4957 = !DILocation(line: 486, column: 51, scope: !4898)
!4958 = !DILocation(line: 486, column: 11, scope: !4898)
!4959 = !DILocation(line: 486, column: 9, scope: !4898)
!4960 = !DILocation(line: 487, column: 6, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 487, column: 6)
!4962 = !DILocation(line: 487, column: 13, scope: !4961)
!4963 = !DILocation(line: 487, column: 6, scope: !4898)
!4964 = !DILocation(line: 488, column: 10, scope: !4961)
!4965 = !DILocation(line: 488, column: 3, scope: !4961)
!4966 = !DILocation(line: 490, column: 33, scope: !4898)
!4967 = !DILocation(line: 490, column: 40, scope: !4898)
!4968 = !DILocation(line: 490, column: 43, scope: !4898)
!4969 = !DILocation(line: 490, column: 11, scope: !4898)
!4970 = !DILocation(line: 490, column: 9, scope: !4898)
!4971 = !DILocation(line: 491, column: 6, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 491, column: 6)
!4973 = !DILocation(line: 491, column: 13, scope: !4972)
!4974 = !DILocation(line: 491, column: 6, scope: !4898)
!4975 = !DILocation(line: 492, column: 10, scope: !4972)
!4976 = !DILocation(line: 492, column: 3, scope: !4972)
!4977 = !DILocation(line: 494, column: 2, scope: !4898)
!4978 = !DILocation(line: 495, column: 2, scope: !4898)
!4979 = !DILocation(line: 496, column: 1, scope: !4898)
!4980 = distinct !DISubprogram(name: "nxt6000_fe_get_tune_settings", scope: !3, file: !3, line: 538, type: !4145, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4981 = !DILocalVariable(name: "fe", arg: 1, scope: !4980, file: !3, line: 538, type: !433)
!4982 = !DILocation(line: 538, column: 62, scope: !4980)
!4983 = !DILocalVariable(name: "tune", arg: 2, scope: !4980, file: !3, line: 538, type: !4147)
!4984 = !DILocation(line: 538, column: 101, scope: !4980)
!4985 = !DILocation(line: 540, column: 2, scope: !4980)
!4986 = !DILocation(line: 540, column: 8, scope: !4980)
!4987 = !DILocation(line: 540, column: 21, scope: !4980)
!4988 = !DILocation(line: 541, column: 2, scope: !4980)
!4989 = distinct !DISubprogram(name: "nxt6000_read_status", scope: !3, file: !3, line: 427, type: !4160, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4990 = !DILocalVariable(name: "fe", arg: 1, scope: !4989, file: !3, line: 427, type: !433)
!4991 = !DILocation(line: 427, column: 53, scope: !4989)
!4992 = !DILocalVariable(name: "status", arg: 2, scope: !4989, file: !3, line: 427, type: !4137)
!4993 = !DILocation(line: 427, column: 73, scope: !4989)
!4994 = !DILocalVariable(name: "core_status", scope: !4989, file: !3, line: 429, type: !343)
!4995 = !DILocation(line: 429, column: 5, scope: !4989)
!4996 = !DILocalVariable(name: "state", scope: !4989, file: !3, line: 430, type: !4439)
!4997 = !DILocation(line: 430, column: 24, scope: !4989)
!4998 = !DILocation(line: 430, column: 32, scope: !4989)
!4999 = !DILocation(line: 430, column: 36, scope: !4989)
!5000 = !DILocation(line: 432, column: 3, scope: !4989)
!5001 = !DILocation(line: 432, column: 10, scope: !4989)
!5002 = !DILocation(line: 434, column: 32, scope: !4989)
!5003 = !DILocation(line: 434, column: 16, scope: !4989)
!5004 = !DILocation(line: 434, column: 14, scope: !4989)
!5005 = !DILocation(line: 436, column: 6, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 436, column: 6)
!5007 = !DILocation(line: 436, column: 18, scope: !5006)
!5008 = !DILocation(line: 436, column: 6, scope: !4989)
!5009 = !DILocation(line: 437, column: 4, scope: !5006)
!5010 = !DILocation(line: 437, column: 11, scope: !5006)
!5011 = !DILocation(line: 437, column: 3, scope: !5006)
!5012 = !DILocation(line: 439, column: 22, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 439, column: 6)
!5014 = !DILocation(line: 439, column: 6, scope: !5013)
!5015 = !DILocation(line: 439, column: 44, scope: !5013)
!5016 = !DILocation(line: 439, column: 6, scope: !4989)
!5017 = !DILocation(line: 440, column: 4, scope: !5013)
!5018 = !DILocation(line: 440, column: 11, scope: !5013)
!5019 = !DILocation(line: 440, column: 3, scope: !5013)
!5020 = !DILocation(line: 442, column: 22, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 442, column: 6)
!5022 = !DILocation(line: 442, column: 6, scope: !5021)
!5023 = !DILocation(line: 442, column: 46, scope: !5021)
!5024 = !DILocation(line: 442, column: 6, scope: !4989)
!5025 = !DILocation(line: 443, column: 4, scope: !5021)
!5026 = !DILocation(line: 443, column: 11, scope: !5021)
!5027 = !DILocation(line: 443, column: 3, scope: !5021)
!5028 = !DILocation(line: 445, column: 22, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 445, column: 6)
!5030 = !DILocation(line: 445, column: 6, scope: !5029)
!5031 = !DILocation(line: 445, column: 42, scope: !5029)
!5032 = !DILocation(line: 445, column: 6, scope: !4989)
!5033 = !DILocation(line: 446, column: 4, scope: !5029)
!5034 = !DILocation(line: 446, column: 11, scope: !5029)
!5035 = !DILocation(line: 446, column: 3, scope: !5029)
!5036 = !DILocation(line: 448, column: 7, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 448, column: 6)
!5038 = !DILocation(line: 448, column: 19, scope: !5037)
!5039 = !DILocation(line: 448, column: 32, scope: !5037)
!5040 = !DILocation(line: 448, column: 37, scope: !5037)
!5041 = !DILocation(line: 448, column: 36, scope: !5037)
!5042 = !DILocation(line: 448, column: 44, scope: !5037)
!5043 = !DILocation(line: 448, column: 6, scope: !4989)
!5044 = !DILocation(line: 449, column: 4, scope: !5037)
!5045 = !DILocation(line: 449, column: 11, scope: !5037)
!5046 = !DILocation(line: 449, column: 3, scope: !5037)
!5047 = !DILocation(line: 451, column: 6, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 451, column: 6)
!5049 = !DILocation(line: 451, column: 6, scope: !4989)
!5050 = !DILocation(line: 452, column: 23, scope: !5048)
!5051 = !DILocation(line: 452, column: 3, scope: !5048)
!5052 = !DILocation(line: 454, column: 2, scope: !4989)
!5053 = distinct !DISubprogram(name: "nxt6000_read_ber", scope: !3, file: !3, line: 513, type: !4164, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5054 = !DILocalVariable(name: "fe", arg: 1, scope: !5053, file: !3, line: 513, type: !433)
!5055 = !DILocation(line: 513, column: 50, scope: !5053)
!5056 = !DILocalVariable(name: "ber", arg: 2, scope: !5053, file: !3, line: 513, type: !1563)
!5057 = !DILocation(line: 513, column: 59, scope: !5053)
!5058 = !DILocalVariable(name: "state", scope: !5053, file: !3, line: 515, type: !4439)
!5059 = !DILocation(line: 515, column: 24, scope: !5053)
!5060 = !DILocation(line: 515, column: 32, scope: !5053)
!5061 = !DILocation(line: 515, column: 36, scope: !5053)
!5062 = !DILocation(line: 517, column: 20, scope: !5053)
!5063 = !DILocation(line: 517, column: 2, scope: !5053)
!5064 = !DILocation(line: 519, column: 27, scope: !5053)
!5065 = !DILocation(line: 519, column: 10, scope: !5053)
!5066 = !DILocation(line: 519, column: 46, scope: !5053)
!5067 = !DILocation(line: 520, column: 20, scope: !5053)
!5068 = !DILocation(line: 520, column: 3, scope: !5053)
!5069 = !DILocation(line: 519, column: 53, scope: !5053)
!5070 = !DILocation(line: 519, column: 3, scope: !5053)
!5071 = !DILocation(line: 519, column: 7, scope: !5053)
!5072 = !DILocation(line: 522, column: 20, scope: !5053)
!5073 = !DILocation(line: 522, column: 2, scope: !5053)
!5074 = !DILocation(line: 524, column: 2, scope: !5053)
!5075 = distinct !DISubprogram(name: "nxt6000_read_signal_strength", scope: !3, file: !3, line: 527, type: !4168, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5076 = !DILocalVariable(name: "fe", arg: 1, scope: !5075, file: !3, line: 527, type: !433)
!5077 = !DILocation(line: 527, column: 62, scope: !5075)
!5078 = !DILocalVariable(name: "signal_strength", arg: 2, scope: !5075, file: !3, line: 527, type: !4170)
!5079 = !DILocation(line: 527, column: 71, scope: !5075)
!5080 = !DILocalVariable(name: "state", scope: !5075, file: !3, line: 529, type: !4439)
!5081 = !DILocation(line: 529, column: 24, scope: !5075)
!5082 = !DILocation(line: 529, column: 32, scope: !5075)
!5083 = !DILocation(line: 529, column: 36, scope: !5075)
!5084 = !DILocation(line: 532, column: 20, scope: !5075)
!5085 = !DILocation(line: 532, column: 4, scope: !5075)
!5086 = !DILocation(line: 533, column: 21, scope: !5075)
!5087 = !DILocation(line: 533, column: 5, scope: !5075)
!5088 = !DILocation(line: 533, column: 40, scope: !5075)
!5089 = !DILocation(line: 533, column: 48, scope: !5075)
!5090 = !DILocation(line: 532, column: 39, scope: !5075)
!5091 = !DILocation(line: 531, column: 34, scope: !5075)
!5092 = !DILocation(line: 531, column: 21, scope: !5075)
!5093 = !DILocation(line: 531, column: 3, scope: !5075)
!5094 = !DILocation(line: 531, column: 19, scope: !5075)
!5095 = !DILocation(line: 535, column: 2, scope: !5075)
!5096 = distinct !DISubprogram(name: "nxt6000_read_snr", scope: !3, file: !3, line: 504, type: !4168, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5097 = !DILocalVariable(name: "fe", arg: 1, scope: !5096, file: !3, line: 504, type: !433)
!5098 = !DILocation(line: 504, column: 50, scope: !5096)
!5099 = !DILocalVariable(name: "snr", arg: 2, scope: !5096, file: !3, line: 504, type: !4170)
!5100 = !DILocation(line: 504, column: 59, scope: !5096)
!5101 = !DILocalVariable(name: "state", scope: !5096, file: !3, line: 506, type: !4439)
!5102 = !DILocation(line: 506, column: 24, scope: !5096)
!5103 = !DILocation(line: 506, column: 32, scope: !5096)
!5104 = !DILocation(line: 506, column: 36, scope: !5096)
!5105 = !DILocation(line: 508, column: 26, scope: !5096)
!5106 = !DILocation(line: 508, column: 9, scope: !5096)
!5107 = !DILocation(line: 508, column: 47, scope: !5096)
!5108 = !DILocation(line: 508, column: 3, scope: !5096)
!5109 = !DILocation(line: 508, column: 7, scope: !5096)
!5110 = !DILocation(line: 510, column: 2, scope: !5096)
!5111 = distinct !DISubprogram(name: "nxt6000_i2c_gate_ctrl", scope: !3, file: !3, line: 544, type: !4217, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5112 = !DILocalVariable(name: "fe", arg: 1, scope: !5111, file: !3, line: 544, type: !433)
!5113 = !DILocation(line: 544, column: 55, scope: !5111)
!5114 = !DILocalVariable(name: "enable", arg: 2, scope: !5111, file: !3, line: 544, type: !320)
!5115 = !DILocation(line: 544, column: 63, scope: !5111)
!5116 = !DILocalVariable(name: "state", scope: !5111, file: !3, line: 546, type: !4439)
!5117 = !DILocation(line: 546, column: 24, scope: !5111)
!5118 = !DILocation(line: 546, column: 32, scope: !5111)
!5119 = !DILocation(line: 546, column: 36, scope: !5111)
!5120 = !DILocation(line: 548, column: 6, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 548, column: 6)
!5122 = !DILocation(line: 548, column: 6, scope: !5111)
!5123 = !DILocation(line: 549, column: 27, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 548, column: 14)
!5125 = !DILocation(line: 549, column: 10, scope: !5124)
!5126 = !DILocation(line: 549, column: 3, scope: !5124)
!5127 = !DILocation(line: 551, column: 27, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 550, column: 9)
!5129 = !DILocation(line: 551, column: 10, scope: !5128)
!5130 = !DILocation(line: 551, column: 3, scope: !5128)
!5131 = !DILocation(line: 553, column: 1, scope: !5111)
!5132 = distinct !DISubprogram(name: "nxt6000_reset", scope: !3, file: !3, line: 68, type: !5133, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{null, !4439}
!5135 = !DILocalVariable(name: "state", arg: 1, scope: !5132, file: !3, line: 68, type: !4439)
!5136 = !DILocation(line: 68, column: 49, scope: !5132)
!5137 = !DILocalVariable(name: "val", scope: !5132, file: !3, line: 70, type: !343)
!5138 = !DILocation(line: 70, column: 5, scope: !5132)
!5139 = !DILocation(line: 72, column: 24, scope: !5132)
!5140 = !DILocation(line: 72, column: 8, scope: !5132)
!5141 = !DILocation(line: 72, column: 6, scope: !5132)
!5142 = !DILocation(line: 74, column: 19, scope: !5132)
!5143 = !DILocation(line: 74, column: 40, scope: !5132)
!5144 = !DILocation(line: 74, column: 44, scope: !5132)
!5145 = !DILocation(line: 74, column: 2, scope: !5132)
!5146 = !DILocation(line: 75, column: 19, scope: !5132)
!5147 = !DILocation(line: 75, column: 40, scope: !5132)
!5148 = !DILocation(line: 75, column: 44, scope: !5132)
!5149 = !DILocation(line: 75, column: 2, scope: !5132)
!5150 = !DILocation(line: 76, column: 1, scope: !5132)
!5151 = distinct !DISubprogram(name: "nxt6000_setup", scope: !3, file: !3, line: 173, type: !431, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5152 = !DILocalVariable(name: "fe", arg: 1, scope: !5151, file: !3, line: 173, type: !433)
!5153 = !DILocation(line: 173, column: 48, scope: !5151)
!5154 = !DILocalVariable(name: "state", scope: !5151, file: !3, line: 175, type: !4439)
!5155 = !DILocation(line: 175, column: 24, scope: !5151)
!5156 = !DILocation(line: 175, column: 32, scope: !5151)
!5157 = !DILocation(line: 175, column: 36, scope: !5151)
!5158 = !DILocation(line: 177, column: 19, scope: !5151)
!5159 = !DILocation(line: 177, column: 2, scope: !5151)
!5160 = !DILocation(line: 178, column: 19, scope: !5151)
!5161 = !DILocation(line: 178, column: 2, scope: !5151)
!5162 = !DILocation(line: 179, column: 19, scope: !5151)
!5163 = !DILocation(line: 179, column: 2, scope: !5151)
!5164 = !DILocation(line: 180, column: 19, scope: !5151)
!5165 = !DILocation(line: 180, column: 2, scope: !5151)
!5166 = !DILocation(line: 181, column: 19, scope: !5151)
!5167 = !DILocation(line: 181, column: 2, scope: !5151)
!5168 = !DILocation(line: 182, column: 19, scope: !5151)
!5169 = !DILocation(line: 182, column: 2, scope: !5151)
!5170 = !DILocation(line: 183, column: 19, scope: !5151)
!5171 = !DILocation(line: 183, column: 2, scope: !5151)
!5172 = !DILocation(line: 184, column: 19, scope: !5151)
!5173 = !DILocation(line: 184, column: 2, scope: !5151)
!5174 = !DILocation(line: 185, column: 19, scope: !5151)
!5175 = !DILocation(line: 185, column: 71, scope: !5151)
!5176 = !DILocation(line: 185, column: 55, scope: !5151)
!5177 = !DILocation(line: 185, column: 92, scope: !5151)
!5178 = !DILocation(line: 185, column: 52, scope: !5151)
!5179 = !DILocation(line: 185, column: 40, scope: !5151)
!5180 = !DILocation(line: 185, column: 2, scope: !5151)
!5181 = !DILocation(line: 186, column: 19, scope: !5151)
!5182 = !DILocation(line: 186, column: 2, scope: !5151)
!5183 = !DILocation(line: 187, column: 19, scope: !5151)
!5184 = !DILocation(line: 187, column: 2, scope: !5151)
!5185 = !DILocation(line: 188, column: 19, scope: !5151)
!5186 = !DILocation(line: 188, column: 2, scope: !5151)
!5187 = !DILocation(line: 189, column: 19, scope: !5151)
!5188 = !DILocation(line: 189, column: 2, scope: !5151)
!5189 = !DILocation(line: 190, column: 19, scope: !5151)
!5190 = !DILocation(line: 190, column: 2, scope: !5151)
!5191 = !DILocation(line: 191, column: 19, scope: !5151)
!5192 = !DILocation(line: 191, column: 2, scope: !5151)
!5193 = !DILocation(line: 192, column: 19, scope: !5151)
!5194 = !DILocation(line: 192, column: 2, scope: !5151)
!5195 = !DILocation(line: 193, column: 19, scope: !5151)
!5196 = !DILocation(line: 193, column: 2, scope: !5151)
!5197 = !DILocation(line: 194, column: 19, scope: !5151)
!5198 = !DILocation(line: 194, column: 2, scope: !5151)
!5199 = !DILocation(line: 195, column: 19, scope: !5151)
!5200 = !DILocation(line: 195, column: 2, scope: !5151)
!5201 = !DILocation(line: 196, column: 19, scope: !5151)
!5202 = !DILocation(line: 196, column: 2, scope: !5151)
!5203 = !DILocation(line: 197, column: 19, scope: !5151)
!5204 = !DILocation(line: 197, column: 2, scope: !5151)
!5205 = !DILocation(line: 198, column: 19, scope: !5151)
!5206 = !DILocation(line: 198, column: 2, scope: !5151)
!5207 = !DILocation(line: 200, column: 6, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 200, column: 6)
!5209 = !DILocation(line: 200, column: 13, scope: !5208)
!5210 = !DILocation(line: 200, column: 21, scope: !5208)
!5211 = !DILocation(line: 200, column: 6, scope: !5151)
!5212 = !DILocation(line: 201, column: 20, scope: !5208)
!5213 = !DILocation(line: 201, column: 3, scope: !5208)
!5214 = !DILocation(line: 203, column: 20, scope: !5208)
!5215 = !DILocation(line: 203, column: 3, scope: !5208)
!5216 = !DILocation(line: 205, column: 19, scope: !5151)
!5217 = !DILocation(line: 205, column: 2, scope: !5151)
!5218 = !DILocation(line: 206, column: 1, scope: !5151)
!5219 = distinct !DISubprogram(name: "nxt6000_writereg", scope: !3, file: !3, line: 38, type: !5220, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5220 = !DISubroutineType(types: !5221)
!5221 = !{!320, !4439, !343, !343}
!5222 = !DILocalVariable(name: "state", arg: 1, scope: !5219, file: !3, line: 38, type: !4439)
!5223 = !DILocation(line: 38, column: 51, scope: !5219)
!5224 = !DILocalVariable(name: "reg", arg: 2, scope: !5219, file: !3, line: 38, type: !343)
!5225 = !DILocation(line: 38, column: 61, scope: !5219)
!5226 = !DILocalVariable(name: "data", arg: 3, scope: !5219, file: !3, line: 38, type: !343)
!5227 = !DILocation(line: 38, column: 69, scope: !5219)
!5228 = !DILocalVariable(name: "buf", scope: !5219, file: !3, line: 40, type: !5229)
!5229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 16, elements: !1722)
!5230 = !DILocation(line: 40, column: 5, scope: !5219)
!5231 = !DILocation(line: 40, column: 13, scope: !5219)
!5232 = !DILocation(line: 40, column: 15, scope: !5219)
!5233 = !DILocation(line: 40, column: 20, scope: !5219)
!5234 = !DILocalVariable(name: "msg", scope: !5219, file: !3, line: 41, type: !4328)
!5235 = !DILocation(line: 41, column: 17, scope: !5219)
!5236 = !DILocation(line: 41, column: 23, scope: !5219)
!5237 = !DILocation(line: 41, column: 32, scope: !5219)
!5238 = !DILocation(line: 41, column: 39, scope: !5219)
!5239 = !DILocation(line: 41, column: 47, scope: !5219)
!5240 = !DILocation(line: 41, column: 79, scope: !5219)
!5241 = !DILocalVariable(name: "ret", scope: !5219, file: !3, line: 42, type: !320)
!5242 = !DILocation(line: 42, column: 6, scope: !5219)
!5243 = !DILocation(line: 44, column: 26, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 44, column: 6)
!5245 = !DILocation(line: 44, column: 33, scope: !5244)
!5246 = !DILocation(line: 44, column: 13, scope: !5244)
!5247 = !DILocation(line: 44, column: 11, scope: !5244)
!5248 = !DILocation(line: 44, column: 48, scope: !5244)
!5249 = !DILocation(line: 44, column: 6, scope: !5219)
!5250 = !DILocation(line: 45, column: 3, scope: !5244)
!5251 = !DILocation(line: 45, column: 3, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 45, column: 3)
!5253 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 45, column: 3)
!5254 = !DILocation(line: 45, column: 3, scope: !5253)
!5255 = !DILocation(line: 47, column: 10, scope: !5219)
!5256 = !DILocation(line: 47, column: 14, scope: !5219)
!5257 = !DILocation(line: 47, column: 9, scope: !5219)
!5258 = !DILocation(line: 47, column: 2, scope: !5219)
!5259 = distinct !DISubprogram(name: "nxt6000_set_bandwidth", scope: !3, file: !3, line: 78, type: !5260, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!320, !4439, !416}
!5262 = !DILocalVariable(name: "state", arg: 1, scope: !5259, file: !3, line: 78, type: !4439)
!5263 = !DILocation(line: 78, column: 56, scope: !5259)
!5264 = !DILocalVariable(name: "bandwidth", arg: 2, scope: !5259, file: !3, line: 78, type: !416)
!5265 = !DILocation(line: 78, column: 67, scope: !5259)
!5266 = !DILocalVariable(name: "nominal_rate", scope: !5259, file: !3, line: 80, type: !333)
!5267 = !DILocation(line: 80, column: 6, scope: !5259)
!5268 = !DILocalVariable(name: "result", scope: !5259, file: !3, line: 81, type: !320)
!5269 = !DILocation(line: 81, column: 6, scope: !5259)
!5270 = !DILocation(line: 83, column: 10, scope: !5259)
!5271 = !DILocation(line: 83, column: 2, scope: !5259)
!5272 = !DILocation(line: 85, column: 16, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5259, file: !3, line: 83, column: 21)
!5274 = !DILocation(line: 86, column: 3, scope: !5273)
!5275 = !DILocation(line: 89, column: 16, scope: !5273)
!5276 = !DILocation(line: 90, column: 3, scope: !5273)
!5277 = !DILocation(line: 93, column: 16, scope: !5273)
!5278 = !DILocation(line: 94, column: 3, scope: !5273)
!5279 = !DILocation(line: 97, column: 3, scope: !5273)
!5280 = !DILocation(line: 100, column: 33, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5259, file: !3, line: 100, column: 6)
!5282 = !DILocation(line: 100, column: 64, scope: !5281)
!5283 = !DILocation(line: 100, column: 77, scope: !5281)
!5284 = !DILocation(line: 100, column: 16, scope: !5281)
!5285 = !DILocation(line: 100, column: 14, scope: !5281)
!5286 = !DILocation(line: 100, column: 86, scope: !5281)
!5287 = !DILocation(line: 100, column: 6, scope: !5259)
!5288 = !DILocation(line: 101, column: 10, scope: !5281)
!5289 = !DILocation(line: 101, column: 3, scope: !5281)
!5290 = !DILocation(line: 103, column: 26, scope: !5259)
!5291 = !DILocation(line: 103, column: 58, scope: !5259)
!5292 = !DILocation(line: 103, column: 71, scope: !5259)
!5293 = !DILocation(line: 103, column: 77, scope: !5259)
!5294 = !DILocation(line: 103, column: 57, scope: !5259)
!5295 = !DILocation(line: 103, column: 9, scope: !5259)
!5296 = !DILocation(line: 103, column: 2, scope: !5259)
!5297 = !DILocation(line: 104, column: 1, scope: !5259)
!5298 = distinct !DISubprogram(name: "nxt6000_set_guard_interval", scope: !3, file: !3, line: 106, type: !5299, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!320, !4439, !113}
!5301 = !DILocalVariable(name: "state", arg: 1, scope: !5298, file: !3, line: 106, type: !4439)
!5302 = !DILocation(line: 106, column: 61, scope: !5298)
!5303 = !DILocalVariable(name: "guard_interval", arg: 2, scope: !5298, file: !3, line: 107, type: !113)
!5304 = !DILocation(line: 107, column: 34, scope: !5298)
!5305 = !DILocation(line: 109, column: 10, scope: !5298)
!5306 = !DILocation(line: 109, column: 2, scope: !5298)
!5307 = !DILocation(line: 112, column: 27, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 109, column: 26)
!5309 = !DILocation(line: 112, column: 78, scope: !5308)
!5310 = !DILocation(line: 112, column: 62, scope: !5308)
!5311 = !DILocation(line: 112, column: 105, scope: !5308)
!5312 = !DILocation(line: 112, column: 59, scope: !5308)
!5313 = !DILocation(line: 112, column: 54, scope: !5308)
!5314 = !DILocation(line: 112, column: 10, scope: !5308)
!5315 = !DILocation(line: 112, column: 3, scope: !5308)
!5316 = !DILocation(line: 115, column: 27, scope: !5308)
!5317 = !DILocation(line: 115, column: 78, scope: !5308)
!5318 = !DILocation(line: 115, column: 62, scope: !5308)
!5319 = !DILocation(line: 115, column: 105, scope: !5308)
!5320 = !DILocation(line: 115, column: 59, scope: !5308)
!5321 = !DILocation(line: 115, column: 54, scope: !5308)
!5322 = !DILocation(line: 115, column: 10, scope: !5308)
!5323 = !DILocation(line: 115, column: 3, scope: !5308)
!5324 = !DILocation(line: 119, column: 27, scope: !5308)
!5325 = !DILocation(line: 119, column: 78, scope: !5308)
!5326 = !DILocation(line: 119, column: 62, scope: !5308)
!5327 = !DILocation(line: 119, column: 105, scope: !5308)
!5328 = !DILocation(line: 119, column: 59, scope: !5308)
!5329 = !DILocation(line: 119, column: 54, scope: !5308)
!5330 = !DILocation(line: 119, column: 10, scope: !5308)
!5331 = !DILocation(line: 119, column: 3, scope: !5308)
!5332 = !DILocation(line: 122, column: 27, scope: !5308)
!5333 = !DILocation(line: 122, column: 78, scope: !5308)
!5334 = !DILocation(line: 122, column: 62, scope: !5308)
!5335 = !DILocation(line: 122, column: 105, scope: !5308)
!5336 = !DILocation(line: 122, column: 59, scope: !5308)
!5337 = !DILocation(line: 122, column: 54, scope: !5308)
!5338 = !DILocation(line: 122, column: 10, scope: !5308)
!5339 = !DILocation(line: 122, column: 3, scope: !5308)
!5340 = !DILocation(line: 125, column: 3, scope: !5308)
!5341 = !DILocation(line: 127, column: 1, scope: !5298)
!5342 = distinct !DISubprogram(name: "nxt6000_set_transmission_mode", scope: !3, file: !3, line: 147, type: !5343, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5343 = !DISubroutineType(types: !5344)
!5344 = !{!320, !4439, !102}
!5345 = !DILocalVariable(name: "state", arg: 1, scope: !5342, file: !3, line: 147, type: !4439)
!5346 = !DILocation(line: 147, column: 53, scope: !5342)
!5347 = !DILocalVariable(name: "transmission_mode", arg: 2, scope: !5342, file: !3, line: 148, type: !102)
!5348 = !DILocation(line: 148, column: 32, scope: !5342)
!5349 = !DILocalVariable(name: "result", scope: !5342, file: !3, line: 150, type: !320)
!5350 = !DILocation(line: 150, column: 6, scope: !5342)
!5351 = !DILocation(line: 152, column: 10, scope: !5342)
!5352 = !DILocation(line: 152, column: 2, scope: !5342)
!5353 = !DILocation(line: 155, column: 34, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5355, file: !3, line: 155, column: 7)
!5355 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 152, column: 29)
!5356 = !DILocation(line: 155, column: 78, scope: !5354)
!5357 = !DILocation(line: 155, column: 62, scope: !5354)
!5358 = !DILocation(line: 155, column: 98, scope: !5354)
!5359 = !DILocation(line: 155, column: 59, scope: !5354)
!5360 = !DILocation(line: 155, column: 54, scope: !5354)
!5361 = !DILocation(line: 155, column: 17, scope: !5354)
!5362 = !DILocation(line: 155, column: 15, scope: !5354)
!5363 = !DILocation(line: 155, column: 109, scope: !5354)
!5364 = !DILocation(line: 155, column: 7, scope: !5355)
!5365 = !DILocation(line: 156, column: 11, scope: !5354)
!5366 = !DILocation(line: 156, column: 4, scope: !5354)
!5367 = !DILocation(line: 158, column: 27, scope: !5355)
!5368 = !DILocation(line: 158, column: 85, scope: !5355)
!5369 = !DILocation(line: 158, column: 69, scope: !5355)
!5370 = !DILocation(line: 158, column: 112, scope: !5355)
!5371 = !DILocation(line: 158, column: 66, scope: !5355)
!5372 = !DILocation(line: 158, column: 54, scope: !5355)
!5373 = !DILocation(line: 158, column: 10, scope: !5355)
!5374 = !DILocation(line: 158, column: 3, scope: !5355)
!5375 = !DILocation(line: 162, column: 34, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5355, file: !3, line: 162, column: 7)
!5377 = !DILocation(line: 162, column: 78, scope: !5376)
!5378 = !DILocation(line: 162, column: 62, scope: !5376)
!5379 = !DILocation(line: 162, column: 98, scope: !5376)
!5380 = !DILocation(line: 162, column: 59, scope: !5376)
!5381 = !DILocation(line: 162, column: 54, scope: !5376)
!5382 = !DILocation(line: 162, column: 17, scope: !5376)
!5383 = !DILocation(line: 162, column: 15, scope: !5376)
!5384 = !DILocation(line: 162, column: 109, scope: !5376)
!5385 = !DILocation(line: 162, column: 7, scope: !5355)
!5386 = !DILocation(line: 163, column: 11, scope: !5376)
!5387 = !DILocation(line: 163, column: 4, scope: !5376)
!5388 = !DILocation(line: 165, column: 27, scope: !5355)
!5389 = !DILocation(line: 165, column: 85, scope: !5355)
!5390 = !DILocation(line: 165, column: 69, scope: !5355)
!5391 = !DILocation(line: 165, column: 112, scope: !5355)
!5392 = !DILocation(line: 165, column: 66, scope: !5355)
!5393 = !DILocation(line: 165, column: 54, scope: !5355)
!5394 = !DILocation(line: 165, column: 10, scope: !5355)
!5395 = !DILocation(line: 165, column: 3, scope: !5355)
!5396 = !DILocation(line: 168, column: 3, scope: !5355)
!5397 = !DILocation(line: 171, column: 1, scope: !5342)
!5398 = distinct !DISubprogram(name: "nxt6000_set_inversion", scope: !3, file: !3, line: 129, type: !5399, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5399 = !DISubroutineType(types: !5400)
!5400 = !{!320, !4439, !82}
!5401 = !DILocalVariable(name: "state", arg: 1, scope: !5398, file: !3, line: 129, type: !4439)
!5402 = !DILocation(line: 129, column: 56, scope: !5398)
!5403 = !DILocalVariable(name: "inversion", arg: 2, scope: !5398, file: !3, line: 130, type: !82)
!5404 = !DILocation(line: 130, column: 33, scope: !5398)
!5405 = !DILocation(line: 132, column: 10, scope: !5398)
!5406 = !DILocation(line: 132, column: 2, scope: !5398)
!5407 = !DILocation(line: 135, column: 27, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 132, column: 21)
!5409 = !DILocation(line: 135, column: 10, scope: !5408)
!5410 = !DILocation(line: 135, column: 3, scope: !5408)
!5411 = !DILocation(line: 138, column: 27, scope: !5408)
!5412 = !DILocation(line: 138, column: 10, scope: !5408)
!5413 = !DILocation(line: 138, column: 3, scope: !5408)
!5414 = !DILocation(line: 141, column: 3, scope: !5408)
!5415 = !DILocation(line: 144, column: 1, scope: !5398)
!5416 = distinct !DISubprogram(name: "nxt6000_dump_status", scope: !3, file: !3, line: 208, type: !5133, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5417 = !DILocalVariable(name: "state", arg: 1, scope: !5416, file: !3, line: 208, type: !4439)
!5418 = !DILocation(line: 208, column: 55, scope: !5416)
!5419 = !DILocalVariable(name: "val", scope: !5416, file: !3, line: 210, type: !343)
!5420 = !DILocation(line: 210, column: 5, scope: !5416)
!5421 = !DILocation(line: 234, column: 2, scope: !5416)
!5422 = !DILocation(line: 236, column: 24, scope: !5416)
!5423 = !DILocation(line: 236, column: 8, scope: !5416)
!5424 = !DILocation(line: 236, column: 6, scope: !5416)
!5425 = !DILocation(line: 238, column: 2, scope: !5416)
!5426 = !DILocation(line: 239, column: 2, scope: !5416)
!5427 = !DILocation(line: 241, column: 24, scope: !5416)
!5428 = !DILocation(line: 241, column: 8, scope: !5416)
!5429 = !DILocation(line: 241, column: 6, scope: !5416)
!5430 = !DILocation(line: 243, column: 2, scope: !5416)
!5431 = !DILocation(line: 245, column: 11, scope: !5416)
!5432 = !DILocation(line: 245, column: 15, scope: !5416)
!5433 = !DILocation(line: 245, column: 21, scope: !5416)
!5434 = !DILocation(line: 245, column: 2, scope: !5416)
!5435 = !DILocation(line: 248, column: 3, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 245, column: 29)
!5437 = !DILocation(line: 249, column: 3, scope: !5436)
!5438 = !DILocation(line: 252, column: 3, scope: !5436)
!5439 = !DILocation(line: 253, column: 3, scope: !5436)
!5440 = !DILocation(line: 256, column: 3, scope: !5436)
!5441 = !DILocation(line: 257, column: 3, scope: !5436)
!5442 = !DILocation(line: 260, column: 3, scope: !5436)
!5443 = !DILocation(line: 261, column: 3, scope: !5436)
!5444 = !DILocation(line: 264, column: 3, scope: !5436)
!5445 = !DILocation(line: 265, column: 3, scope: !5436)
!5446 = !DILocation(line: 268, column: 3, scope: !5436)
!5447 = !DILocation(line: 270, column: 2, scope: !5436)
!5448 = !DILocation(line: 272, column: 24, scope: !5416)
!5449 = !DILocation(line: 272, column: 8, scope: !5416)
!5450 = !DILocation(line: 272, column: 6, scope: !5416)
!5451 = !DILocation(line: 274, column: 2, scope: !5416)
!5452 = !DILocation(line: 275, column: 2, scope: !5416)
!5453 = !DILocation(line: 276, column: 2, scope: !5416)
!5454 = !DILocation(line: 277, column: 2, scope: !5416)
!5455 = !DILocation(line: 279, column: 10, scope: !5416)
!5456 = !DILocation(line: 279, column: 14, scope: !5416)
!5457 = !DILocation(line: 279, column: 2, scope: !5416)
!5458 = !DILocation(line: 282, column: 3, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 279, column: 22)
!5460 = !DILocation(line: 283, column: 3, scope: !5459)
!5461 = !DILocation(line: 286, column: 3, scope: !5459)
!5462 = !DILocation(line: 287, column: 3, scope: !5459)
!5463 = !DILocation(line: 290, column: 3, scope: !5459)
!5464 = !DILocation(line: 291, column: 3, scope: !5459)
!5465 = !DILocation(line: 294, column: 3, scope: !5459)
!5466 = !DILocation(line: 295, column: 3, scope: !5459)
!5467 = !DILocation(line: 298, column: 3, scope: !5459)
!5468 = !DILocation(line: 299, column: 3, scope: !5459)
!5469 = !DILocation(line: 302, column: 3, scope: !5459)
!5470 = !DILocation(line: 303, column: 3, scope: !5459)
!5471 = !DILocation(line: 306, column: 3, scope: !5459)
!5472 = !DILocation(line: 307, column: 3, scope: !5459)
!5473 = !DILocation(line: 310, column: 3, scope: !5459)
!5474 = !DILocation(line: 312, column: 2, scope: !5459)
!5475 = !DILocation(line: 314, column: 24, scope: !5416)
!5476 = !DILocation(line: 314, column: 8, scope: !5416)
!5477 = !DILocation(line: 314, column: 6, scope: !5416)
!5478 = !DILocation(line: 316, column: 2, scope: !5416)
!5479 = !DILocation(line: 317, column: 2, scope: !5416)
!5480 = !DILocation(line: 319, column: 11, scope: !5416)
!5481 = !DILocation(line: 319, column: 15, scope: !5416)
!5482 = !DILocation(line: 319, column: 21, scope: !5416)
!5483 = !DILocation(line: 319, column: 2, scope: !5416)
!5484 = !DILocation(line: 322, column: 3, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 319, column: 29)
!5486 = !DILocation(line: 323, column: 3, scope: !5485)
!5487 = !DILocation(line: 326, column: 3, scope: !5485)
!5488 = !DILocation(line: 327, column: 3, scope: !5485)
!5489 = !DILocation(line: 330, column: 3, scope: !5485)
!5490 = !DILocation(line: 331, column: 3, scope: !5485)
!5491 = !DILocation(line: 334, column: 3, scope: !5485)
!5492 = !DILocation(line: 335, column: 3, scope: !5485)
!5493 = !DILocation(line: 338, column: 24, scope: !5416)
!5494 = !DILocation(line: 338, column: 8, scope: !5416)
!5495 = !DILocation(line: 338, column: 6, scope: !5416)
!5496 = !DILocation(line: 340, column: 11, scope: !5416)
!5497 = !DILocation(line: 340, column: 15, scope: !5416)
!5498 = !DILocation(line: 340, column: 21, scope: !5416)
!5499 = !DILocation(line: 340, column: 2, scope: !5416)
!5500 = !DILocation(line: 343, column: 3, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 340, column: 29)
!5502 = !DILocation(line: 344, column: 3, scope: !5501)
!5503 = !DILocation(line: 347, column: 3, scope: !5501)
!5504 = !DILocation(line: 348, column: 3, scope: !5501)
!5505 = !DILocation(line: 351, column: 3, scope: !5501)
!5506 = !DILocation(line: 352, column: 3, scope: !5501)
!5507 = !DILocation(line: 355, column: 3, scope: !5501)
!5508 = !DILocation(line: 356, column: 3, scope: !5501)
!5509 = !DILocation(line: 359, column: 3, scope: !5501)
!5510 = !DILocation(line: 360, column: 3, scope: !5501)
!5511 = !DILocation(line: 363, column: 3, scope: !5501)
!5512 = !DILocation(line: 365, column: 2, scope: !5501)
!5513 = !DILocation(line: 367, column: 10, scope: !5416)
!5514 = !DILocation(line: 367, column: 14, scope: !5416)
!5515 = !DILocation(line: 367, column: 2, scope: !5416)
!5516 = !DILocation(line: 370, column: 3, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 367, column: 22)
!5518 = !DILocation(line: 371, column: 3, scope: !5517)
!5519 = !DILocation(line: 374, column: 3, scope: !5517)
!5520 = !DILocation(line: 375, column: 3, scope: !5517)
!5521 = !DILocation(line: 378, column: 3, scope: !5517)
!5522 = !DILocation(line: 379, column: 3, scope: !5517)
!5523 = !DILocation(line: 382, column: 3, scope: !5517)
!5524 = !DILocation(line: 383, column: 3, scope: !5517)
!5525 = !DILocation(line: 386, column: 3, scope: !5517)
!5526 = !DILocation(line: 387, column: 3, scope: !5517)
!5527 = !DILocation(line: 390, column: 3, scope: !5517)
!5528 = !DILocation(line: 392, column: 2, scope: !5517)
!5529 = !DILocation(line: 394, column: 24, scope: !5416)
!5530 = !DILocation(line: 394, column: 8, scope: !5416)
!5531 = !DILocation(line: 394, column: 6, scope: !5416)
!5532 = !DILocation(line: 396, column: 2, scope: !5416)
!5533 = !DILocation(line: 398, column: 11, scope: !5416)
!5534 = !DILocation(line: 398, column: 15, scope: !5416)
!5535 = !DILocation(line: 398, column: 21, scope: !5416)
!5536 = !DILocation(line: 398, column: 2, scope: !5416)
!5537 = !DILocation(line: 401, column: 3, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 398, column: 29)
!5539 = !DILocation(line: 402, column: 3, scope: !5538)
!5540 = !DILocation(line: 405, column: 3, scope: !5538)
!5541 = !DILocation(line: 406, column: 3, scope: !5538)
!5542 = !DILocation(line: 409, column: 3, scope: !5538)
!5543 = !DILocation(line: 410, column: 3, scope: !5538)
!5544 = !DILocation(line: 413, column: 3, scope: !5538)
!5545 = !DILocation(line: 414, column: 3, scope: !5538)
!5546 = !DILocation(line: 419, column: 18, scope: !5416)
!5547 = !DILocation(line: 419, column: 2, scope: !5416)
!5548 = !DILocation(line: 420, column: 24, scope: !5416)
!5549 = !DILocation(line: 420, column: 8, scope: !5416)
!5550 = !DILocation(line: 420, column: 6, scope: !5416)
!5551 = !DILocation(line: 421, column: 24, scope: !5416)
!5552 = !DILocation(line: 421, column: 8, scope: !5416)
!5553 = !DILocation(line: 421, column: 6, scope: !5416)
!5554 = !DILocation(line: 423, column: 2, scope: !5416)
!5555 = !DILocation(line: 424, column: 2, scope: !5416)
!5556 = !DILocation(line: 425, column: 1, scope: !5416)
