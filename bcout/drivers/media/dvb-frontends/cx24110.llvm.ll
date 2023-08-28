; ModuleID = '../bcout/drivers/media/dvb-frontends/cx24110.llvm.bc'
source_filename = "drivers/media/dvb-frontends/cx24110.c"
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
%struct.anon.67 = type { i8, i8 }
%struct.cx24110_config = type { i8 }
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
%struct.cx24110_state = type { %struct.i2c_adapter*, %struct.cx24110_config*, %struct.dvb_frontend, i32, i32, i32 }

@cx24110_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Conexant CX24110 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1011000, i32 29500000, i32 1000000, i32 45000000, i32 0, i32 1073743535 }, [8 x i8] c"\05\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @cx24110_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @cx24110_initfe, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, i8*, i32)* @_cx24110_pll_write, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @cx24110_set_frontend, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* null, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @cx24110_get_frontend, i32 (%struct.dvb_frontend*, i32*)* @cx24110_read_status, i32 (%struct.dvb_frontend*, i32*)* @cx24110_read_ber, i32 (%struct.dvb_frontend*, i16*)* @cx24110_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @cx24110_read_snr, i32 (%struct.dvb_frontend*, i32*)* @cx24110_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @cx24110_send_diseqc_msg, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* @cx24110_diseqc_send_burst, i32 (%struct.dvb_frontend*, i32)* @cx24110_set_tone, i32 (%struct.dvb_frontend*, i32)* @cx24110_set_voltage, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !0
@__param_str_debug = internal constant [14 x i8] c"cx24110.debug\00", align 1, !dbg !4456
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !398
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !297
@__UNIQUE_ID_debugtype220 = internal constant [27 x i8] c"cx24110.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !368
@__UNIQUE_ID_debug221 = internal constant [65 x i8] c"cx24110.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1, !dbg !373
@__UNIQUE_ID_description222 = internal constant [62 x i8] c"cx24110.description=Conexant CX24110 DVB-S Demodulator driver\00", section ".modinfo", align 1, !dbg !378
@__UNIQUE_ID_author223 = internal constant [30 x i8] c"cx24110.author=Peter Hettkamp\00", section ".modinfo", align 1, !dbg !383
@__UNIQUE_ID_file224 = internal constant [49 x i8] c"cx24110.file=drivers/media/dvb-frontends/cx24110\00", section ".modinfo", align 1, !dbg !388
@__UNIQUE_ID_license225 = internal constant [20 x i8] c"cx24110.license=GPL\00", section ".modinfo", align 1, !dbg !393
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\017cx24110: %s: init chip\0A\00", align 1
@__func__.cx24110_initfe = private unnamed_addr constant [15 x i8] c"cx24110_initfe\00", align 1
@cx24110_regdata = internal global [38 x %struct.anon.67] [%struct.anon.67 { i8 9, i8 1 }, %struct.anon.67 { i8 9, i8 0 }, %struct.anon.67 { i8 1, i8 -24 }, %struct.anon.67 { i8 2, i8 23 }, %struct.anon.67 { i8 3, i8 41 }, %struct.anon.67 { i8 5, i8 3 }, %struct.anon.67 { i8 6, i8 -91 }, %struct.anon.67 { i8 7, i8 1 }, %struct.anon.67 { i8 10, i8 0 }, %struct.anon.67 { i8 11, i8 1 }, %struct.anon.67 { i8 12, i8 17 }, %struct.anon.67 { i8 13, i8 111 }, %struct.anon.67 { i8 16, i8 64 }, %struct.anon.67 { i8 21, i8 -1 }, %struct.anon.67 { i8 22, i8 0 }, %struct.anon.67 { i8 23, i8 4 }, %struct.anon.67 { i8 24, i8 -82 }, %struct.anon.67 { i8 33, i8 16 }, %struct.anon.67 { i8 35, i8 24 }, %struct.anon.67 { i8 36, i8 36 }, %struct.anon.67 { i8 53, i8 64 }, %struct.anon.67 { i8 54, i8 -1 }, %struct.anon.67 { i8 55, i8 0 }, %struct.anon.67 { i8 56, i8 7 }, %struct.anon.67 { i8 65, i8 0 }, %struct.anon.67 { i8 66, i8 0 }, %struct.anon.67 { i8 67, i8 0 }, %struct.anon.67 { i8 86, i8 77 }, %struct.anon.67 { i8 87, i8 0 }, %struct.anon.67 { i8 97, i8 -107 }, %struct.anon.67 { i8 98, i8 5 }, %struct.anon.67 { i8 99, i8 0 }, %struct.anon.67 { i8 100, i8 32 }, %struct.anon.67 { i8 109, i8 48 }, %struct.anon.67 { i8 112, i8 21 }, %struct.anon.67 { i8 115, i8 0 }, %struct.anon.67 { i8 116, i8 0 }, %struct.anon.67 { i8 117, i8 0 }], align 16, !dbg !400
@.str.2 = private unnamed_addr constant [74 x i8] c"\017cx24110: %s: writereg error (err == %i, reg == 0x%02x, data == 0x%02x)\0A\00", align 1
@__func__.cx24110_writereg = private unnamed_addr constant [17 x i8] c"cx24110_writereg\00", align 1
@cx24110_set_fec.rate = internal constant [9 x i32] [i32 -1, i32 1, i32 2, i32 3, i32 5, i32 7, i32 -1, i32 0, i32 0], align 16, !dbg !409
@cx24110_set_fec.g1 = internal constant [9 x i32] [i32 -1, i32 1, i32 2, i32 5, i32 21, i32 69, i32 -1, i32 0, i32 0], align 16, !dbg !4446
@cx24110_set_fec.g2 = internal constant [9 x i32] [i32 -1, i32 1, i32 3, i32 6, i32 26, i32 122, i32 -1, i32 0, i32 0], align 16, !dbg !4448
@cx24110_set_symbolrate.bands = internal constant [3 x i32] [i32 5000000, i32 15000000, i32 45499500], align 4, !dbg !4450
@.str.3 = private unnamed_addr constant [43 x i8] c"\017cx24110: cx24110 debug: entering %s(%d)\0A\00", align 1
@__func__.cx24110_set_symbolrate = private unnamed_addr constant [23 x i8] c"cx24110_set_symbolrate\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\017cx24110: cx24110 debug: fclk %d Hz\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"\017cx24110: srate= %d (range %d, up to %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"\017cx24110: fclk = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"\017cx24110: ratio= %08x\0A\00", align 1
@jiffies = external dso_local global i64, align 8
@llvm.used = appending global [7 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__UNIQUE_ID_author223, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_file224, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license225, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @cx24110_attach(%struct.cx24110_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4467 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.cx24110_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.cx24110_state*, align 8
  %ret = alloca i32, align 4
  store %struct.cx24110_config* %config, %struct.cx24110_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24110_config** %config.addr, metadata !4470, metadata !DIExpression()), !dbg !4471
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4472, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state, metadata !4474, metadata !DIExpression()), !dbg !4475
  store %struct.cx24110_state* null, %struct.cx24110_state** %state, align 8, !dbg !4475
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4476, metadata !DIExpression()), !dbg !4477
  %call = call i8* @kzalloc(i64 1312, i32 3264) #8, !dbg !4478
  %0 = bitcast i8* %call to %struct.cx24110_state*, !dbg !4478
  store %struct.cx24110_state* %0, %struct.cx24110_state** %state, align 8, !dbg !4479
  %1 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4480
  %cmp = icmp eq %struct.cx24110_state* %1, null, !dbg !4482
  br i1 %cmp, label %if.then, label %if.end, !dbg !4483

if.then:                                          ; preds = %entry
  br label %error, !dbg !4484

if.end:                                           ; preds = %entry
  %2 = load %struct.cx24110_config*, %struct.cx24110_config** %config.addr, align 8, !dbg !4485
  %3 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4486
  %config1 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %3, i32 0, i32 1, !dbg !4487
  store %struct.cx24110_config* %2, %struct.cx24110_config** %config1, align 8, !dbg !4488
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4489
  %5 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4490
  %i2c2 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %5, i32 0, i32 0, !dbg !4491
  store %struct.i2c_adapter* %4, %struct.i2c_adapter** %i2c2, align 8, !dbg !4492
  %6 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4493
  %lastber = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %6, i32 0, i32 3, !dbg !4494
  store i32 0, i32* %lastber, align 8, !dbg !4495
  %7 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4496
  %lastbler = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %7, i32 0, i32 4, !dbg !4497
  store i32 0, i32* %lastbler, align 4, !dbg !4498
  %8 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4499
  %lastesn0 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %8, i32 0, i32 5, !dbg !4500
  store i32 0, i32* %lastesn0, align 8, !dbg !4501
  %9 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4502
  %call3 = call i32 @cx24110_readreg(%struct.cx24110_state* %9, i8 zeroext 0) #8, !dbg !4503
  store i32 %call3, i32* %ret, align 4, !dbg !4504
  %10 = load i32, i32* %ret, align 4, !dbg !4505
  %cmp4 = icmp ne i32 %10, 90, !dbg !4507
  br i1 %cmp4, label %land.lhs.true, label %if.end7, !dbg !4508

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %ret, align 4, !dbg !4509
  %cmp5 = icmp ne i32 %11, 105, !dbg !4510
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !4511

if.then6:                                         ; preds = %land.lhs.true
  br label %error, !dbg !4512

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %12 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4513
  %frontend = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %12, i32 0, i32 2, !dbg !4514
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4515
  %13 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4516
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @cx24110_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4516
  %14 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4517
  %15 = bitcast %struct.cx24110_state* %14 to i8*, !dbg !4517
  %16 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4518
  %frontend8 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %16, i32 0, i32 2, !dbg !4519
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend8, i32 0, i32 3, !dbg !4520
  store i8* %15, i8** %demodulator_priv, align 8, !dbg !4521
  %17 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4522
  %frontend9 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %17, i32 0, i32 2, !dbg !4523
  store %struct.dvb_frontend* %frontend9, %struct.dvb_frontend** %retval, align 8, !dbg !4524
  br label %return, !dbg !4524

error:                                            ; preds = %if.then6, %if.then
  call void @llvm.dbg.label(metadata !4525), !dbg !4526
  %18 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4527
  %19 = bitcast %struct.cx24110_state* %18 to i8*, !dbg !4527
  call void @kfree(i8* %19) #8, !dbg !4528
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4529
  br label %return, !dbg !4529

return:                                           ; preds = %error, %if.end7
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4530
  ret %struct.dvb_frontend* %20, !dbg !4530
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4531 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4534, metadata !DIExpression()), !dbg !4538
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4544, metadata !DIExpression()), !dbg !4545
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4546, metadata !DIExpression()), !dbg !4547
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4548, metadata !DIExpression()), !dbg !4549
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4550, metadata !DIExpression()), !dbg !4554
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4556, metadata !DIExpression()), !dbg !4560
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4562, metadata !DIExpression()), !dbg !4566
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4571, metadata !DIExpression()), !dbg !4572
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4573, metadata !DIExpression()), !dbg !4574
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4575, metadata !DIExpression()), !dbg !4576
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4577, metadata !DIExpression()), !dbg !4578
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4579, metadata !DIExpression()), !dbg !4580
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4581, metadata !DIExpression()), !dbg !4582
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4583, metadata !DIExpression()), !dbg !4584
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4585, metadata !DIExpression()), !dbg !4586
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4587, metadata !DIExpression()), !dbg !4588
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4589, metadata !DIExpression()), !dbg !4590
  %0 = load i64, i64* %size.addr, align 8, !dbg !4591
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4592
  %or = or i32 %1, 256, !dbg !4593
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4594
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4595
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4596

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4597
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4598
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4599

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4600
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4601
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4602
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4603
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4580
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4604
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4605
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4606
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4607
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4608
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4609
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4610
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4610
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4610
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4610
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4610
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4611
  br label %kmalloc.exit, !dbg !4611

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4612
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4613
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4613
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4615

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4616
  br label %kmalloc_index.exit.i, !dbg !4616

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4617
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4619
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4620

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4621
  br label %kmalloc_index.exit.i, !dbg !4621

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4622
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4624
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4625

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4626
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4627
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4628

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4629
  br label %kmalloc_index.exit.i, !dbg !4629

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4630
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4632
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4633

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4634
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4635
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4636

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4637
  br label %kmalloc_index.exit.i, !dbg !4637

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4638
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4640
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4641

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4642
  br label %kmalloc_index.exit.i, !dbg !4642

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4643
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4645
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4646

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4647
  br label %kmalloc_index.exit.i, !dbg !4647

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4648
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4650
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4651

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4652
  br label %kmalloc_index.exit.i, !dbg !4652

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4653
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4655
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4656

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4657
  br label %kmalloc_index.exit.i, !dbg !4657

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4658
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4660
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4661

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4662
  br label %kmalloc_index.exit.i, !dbg !4662

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4663
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4665
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4666

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4667
  br label %kmalloc_index.exit.i, !dbg !4667

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4668
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4670
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4671

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4672
  br label %kmalloc_index.exit.i, !dbg !4672

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4673
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4675
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4676

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4677
  br label %kmalloc_index.exit.i, !dbg !4677

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4678
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4680
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4681

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4682
  br label %kmalloc_index.exit.i, !dbg !4682

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4683
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4685
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4686

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4687
  br label %kmalloc_index.exit.i, !dbg !4687

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4688
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4690
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4691

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4692
  br label %kmalloc_index.exit.i, !dbg !4692

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4693
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4695
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4696

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4697
  br label %kmalloc_index.exit.i, !dbg !4697

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4698
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4700
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4701

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4702
  br label %kmalloc_index.exit.i, !dbg !4702

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4703
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4705
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4706

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4707
  br label %kmalloc_index.exit.i, !dbg !4707

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4708
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4710
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4711

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4712
  br label %kmalloc_index.exit.i, !dbg !4712

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4713
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4715
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4716

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4717
  br label %kmalloc_index.exit.i, !dbg !4717

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4718
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4720
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4721

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4722
  br label %kmalloc_index.exit.i, !dbg !4722

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4723
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4725
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4726

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4727
  br label %kmalloc_index.exit.i, !dbg !4727

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4728
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4730
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4731

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4732
  br label %kmalloc_index.exit.i, !dbg !4732

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4733
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4735
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4736

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4737
  br label %kmalloc_index.exit.i, !dbg !4737

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4738
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4740
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4741

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4742
  br label %kmalloc_index.exit.i, !dbg !4742

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4743
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4745
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4746

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4747
  br label %kmalloc_index.exit.i, !dbg !4747

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4748
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4750
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4751

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4752
  br label %kmalloc_index.exit.i, !dbg !4752

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4753
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4755
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4756

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4757
  br label %kmalloc_index.exit.i, !dbg !4757

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4758, !srcloc !4761
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #9, !dbg !4762, !srcloc !4765
  unreachable, !dbg !4766

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4767
  store i32 %45, i32* %index.i, align 4, !dbg !4768
  %46 = load i32, i32* %index.i, align 4, !dbg !4769
  %tobool.i = icmp ne i32 %46, 0, !dbg !4769
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4771

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4772
  br label %kmalloc.exit, !dbg !4772

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4773
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4774
  %and.i.i = and i32 %48, 17, !dbg !4774
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4774
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4774
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4774
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4774
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4776

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4777
  br label %kmalloc_type.exit.i, !dbg !4777

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4778
  %and2.i.i = and i32 %49, 1, !dbg !4779
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4778
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4778
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4778
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4780
  br label %kmalloc_type.exit.i, !dbg !4780

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4781
  %idxprom.i = zext i32 %51 to i64, !dbg !4782
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4782
  %52 = load i32, i32* %index.i, align 4, !dbg !4783
  %idxprom6.i = zext i32 %52 to i64, !dbg !4782
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4782
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4782
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4784
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4785
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4786
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4787
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4788
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4788
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4788
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4788
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4788
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4549
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4789
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4790
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4791
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4792
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4793
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4794
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4795
  store i8* %62, i8** %retval.i, align 8, !dbg !4796
  br label %kmalloc.exit, !dbg !4796

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4797
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4798
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4799
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4799
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4799
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4799
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4799
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4800
  br label %kmalloc.exit, !dbg !4800

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4801
  ret i8* %65, !dbg !4802
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24110_readreg(%struct.cx24110_state* %state, i8 zeroext %reg) #0 !dbg !4803 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.cx24110_state*, align 8
  %reg.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.cx24110_state* %state, %struct.cx24110_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state.addr, metadata !4806, metadata !DIExpression()), !dbg !4807
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4808, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4810, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.declare(metadata [1 x i8]* %b0, metadata !4812, metadata !DIExpression()), !dbg !4814
  %arrayinit.begin = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4815
  %0 = load i8, i8* %reg.addr, align 1, !dbg !4816
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !4815
  call void @llvm.dbg.declare(metadata [1 x i8]* %b1, metadata !4817, metadata !DIExpression()), !dbg !4818
  %1 = bitcast [1 x i8]* %b1 to i8*, !dbg !4818
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 1, i1 false), !dbg !4818
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !4819, metadata !DIExpression()), !dbg !4821
  %arrayinit.begin1 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4822
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 0, !dbg !4823
  %2 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !4824
  %config = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %2, i32 0, i32 1, !dbg !4825
  %3 = load %struct.cx24110_config*, %struct.cx24110_config** %config, align 8, !dbg !4825
  %demod_address = getelementptr inbounds %struct.cx24110_config, %struct.cx24110_config* %3, i32 0, i32 0, !dbg !4826
  %4 = load i8, i8* %demod_address, align 1, !dbg !4826
  %conv = zext i8 %4 to i16, !dbg !4824
  store i16 %conv, i16* %addr, align 16, !dbg !4823
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 1, !dbg !4823
  store i16 0, i16* %flags, align 2, !dbg !4823
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 2, !dbg !4823
  store i16 1, i16* %len, align 4, !dbg !4823
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 3, !dbg !4823
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4827
  store i8* %arraydecay, i8** %buf, align 8, !dbg !4823
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i64 1, !dbg !4822
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4828
  %5 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !4829
  %config3 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %5, i32 0, i32 1, !dbg !4830
  %6 = load %struct.cx24110_config*, %struct.cx24110_config** %config3, align 8, !dbg !4830
  %demod_address4 = getelementptr inbounds %struct.cx24110_config, %struct.cx24110_config* %6, i32 0, i32 0, !dbg !4831
  %7 = load i8, i8* %demod_address4, align 1, !dbg !4831
  %conv5 = zext i8 %7 to i16, !dbg !4829
  store i16 %conv5, i16* %addr2, align 16, !dbg !4828
  %flags6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4828
  store i16 1, i16* %flags6, align 2, !dbg !4828
  %len7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4828
  store i16 1, i16* %len7, align 4, !dbg !4828
  %buf8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4828
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4832
  store i8* %arraydecay9, i8** %buf8, align 8, !dbg !4828
  %8 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !4833
  %i2c = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %8, i32 0, i32 0, !dbg !4834
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4834
  %arraydecay10 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4835
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %9, %struct.i2c_msg* %arraydecay10, i32 2) #8, !dbg !4836
  store i32 %call, i32* %ret, align 4, !dbg !4837
  %10 = load i32, i32* %ret, align 4, !dbg !4838
  %cmp = icmp ne i32 %10, 2, !dbg !4840
  br i1 %cmp, label %if.then, label %if.end, !dbg !4841

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %ret, align 4, !dbg !4842
  store i32 %11, i32* %retval, align 4, !dbg !4843
  br label %return, !dbg !4843

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4844
  %12 = load i8, i8* %arrayidx, align 1, !dbg !4844
  %conv12 = zext i8 %12 to i32, !dbg !4844
  store i32 %conv12, i32* %retval, align 4, !dbg !4845
  br label %return, !dbg !4845

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !4846
  ret i32 %13, !dbg !4846
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
define internal i32 @get_order(i64 %size) #6 !dbg !4847 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4851, metadata !DIExpression()), !dbg !4856
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4858, metadata !DIExpression()), !dbg !4859
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4860, metadata !DIExpression()), !dbg !4861
  %0 = load i64, i64* %size.addr, align 8, !dbg !4862
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4864
  br i1 %1, label %if.then, label %if.end447, !dbg !4865

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4866
  %tobool = icmp ne i64 %2, 0, !dbg !4866
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4869

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4870
  br label %return, !dbg !4870

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4871
  %cmp = icmp ult i64 %3, 4096, !dbg !4873
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4874

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4875
  br label %return, !dbg !4875

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub = sub i64 %4, 1, !dbg !4876
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4876
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4876

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub4 = sub i64 %6, 1, !dbg !4876
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4876
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4876

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub6 = sub i64 %8, 1, !dbg !4876
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4876
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4876

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4876

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub9 = sub i64 %9, 1, !dbg !4876
  %and = and i64 %sub9, -9223372036854775808, !dbg !4876
  %tobool10 = icmp ne i64 %and, 0, !dbg !4876
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4876

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4876

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub13 = sub i64 %10, 1, !dbg !4876
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4876
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4876
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4876

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4876

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub18 = sub i64 %11, 1, !dbg !4876
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4876
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4876
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4876

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4876

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub23 = sub i64 %12, 1, !dbg !4876
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4876
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4876
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4876

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4876

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub28 = sub i64 %13, 1, !dbg !4876
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4876
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4876
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4876

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4876

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub33 = sub i64 %14, 1, !dbg !4876
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4876
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4876
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4876

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4876

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub38 = sub i64 %15, 1, !dbg !4876
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4876
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4876
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4876

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4876

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub43 = sub i64 %16, 1, !dbg !4876
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4876
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4876
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4876

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4876

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub48 = sub i64 %17, 1, !dbg !4876
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4876
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4876
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4876

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4876

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub53 = sub i64 %18, 1, !dbg !4876
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4876
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4876
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4876

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4876

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub58 = sub i64 %19, 1, !dbg !4876
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4876
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4876
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4876

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4876

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub63 = sub i64 %20, 1, !dbg !4876
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4876
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4876
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4876

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4876

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub68 = sub i64 %21, 1, !dbg !4876
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4876
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4876
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4876

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4876

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub73 = sub i64 %22, 1, !dbg !4876
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4876
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4876
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4876

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4876

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub78 = sub i64 %23, 1, !dbg !4876
  %and79 = and i64 %sub78, 562949953421312, !dbg !4876
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4876
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4876

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4876

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub83 = sub i64 %24, 1, !dbg !4876
  %and84 = and i64 %sub83, 281474976710656, !dbg !4876
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4876
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4876

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4876

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub88 = sub i64 %25, 1, !dbg !4876
  %and89 = and i64 %sub88, 140737488355328, !dbg !4876
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4876
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4876

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4876

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub93 = sub i64 %26, 1, !dbg !4876
  %and94 = and i64 %sub93, 70368744177664, !dbg !4876
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4876
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4876

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4876

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub98 = sub i64 %27, 1, !dbg !4876
  %and99 = and i64 %sub98, 35184372088832, !dbg !4876
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4876
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4876

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4876

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub103 = sub i64 %28, 1, !dbg !4876
  %and104 = and i64 %sub103, 17592186044416, !dbg !4876
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4876
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4876

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4876

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub108 = sub i64 %29, 1, !dbg !4876
  %and109 = and i64 %sub108, 8796093022208, !dbg !4876
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4876
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4876

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4876

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub113 = sub i64 %30, 1, !dbg !4876
  %and114 = and i64 %sub113, 4398046511104, !dbg !4876
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4876
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4876

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4876

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub118 = sub i64 %31, 1, !dbg !4876
  %and119 = and i64 %sub118, 2199023255552, !dbg !4876
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4876
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4876

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4876

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub123 = sub i64 %32, 1, !dbg !4876
  %and124 = and i64 %sub123, 1099511627776, !dbg !4876
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4876
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4876

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4876

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub128 = sub i64 %33, 1, !dbg !4876
  %and129 = and i64 %sub128, 549755813888, !dbg !4876
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4876
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4876

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4876

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub133 = sub i64 %34, 1, !dbg !4876
  %and134 = and i64 %sub133, 274877906944, !dbg !4876
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4876
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4876

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4876

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub138 = sub i64 %35, 1, !dbg !4876
  %and139 = and i64 %sub138, 137438953472, !dbg !4876
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4876
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4876

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4876

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub143 = sub i64 %36, 1, !dbg !4876
  %and144 = and i64 %sub143, 68719476736, !dbg !4876
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4876
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4876

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4876

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub148 = sub i64 %37, 1, !dbg !4876
  %and149 = and i64 %sub148, 34359738368, !dbg !4876
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4876
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4876

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4876

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub153 = sub i64 %38, 1, !dbg !4876
  %and154 = and i64 %sub153, 17179869184, !dbg !4876
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4876
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4876

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4876

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub158 = sub i64 %39, 1, !dbg !4876
  %and159 = and i64 %sub158, 8589934592, !dbg !4876
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4876
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4876

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4876

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub163 = sub i64 %40, 1, !dbg !4876
  %and164 = and i64 %sub163, 4294967296, !dbg !4876
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4876
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4876

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4876

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub168 = sub i64 %41, 1, !dbg !4876
  %and169 = and i64 %sub168, 2147483648, !dbg !4876
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4876
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4876

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4876

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub173 = sub i64 %42, 1, !dbg !4876
  %and174 = and i64 %sub173, 1073741824, !dbg !4876
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4876
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4876

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4876

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub178 = sub i64 %43, 1, !dbg !4876
  %and179 = and i64 %sub178, 536870912, !dbg !4876
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4876
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4876

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4876

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub183 = sub i64 %44, 1, !dbg !4876
  %and184 = and i64 %sub183, 268435456, !dbg !4876
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4876
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4876

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4876

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub188 = sub i64 %45, 1, !dbg !4876
  %and189 = and i64 %sub188, 134217728, !dbg !4876
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4876
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4876

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4876

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub193 = sub i64 %46, 1, !dbg !4876
  %and194 = and i64 %sub193, 67108864, !dbg !4876
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4876
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4876

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4876

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub198 = sub i64 %47, 1, !dbg !4876
  %and199 = and i64 %sub198, 33554432, !dbg !4876
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4876
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4876

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4876

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub203 = sub i64 %48, 1, !dbg !4876
  %and204 = and i64 %sub203, 16777216, !dbg !4876
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4876
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4876

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4876

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub208 = sub i64 %49, 1, !dbg !4876
  %and209 = and i64 %sub208, 8388608, !dbg !4876
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4876
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4876

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4876

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub213 = sub i64 %50, 1, !dbg !4876
  %and214 = and i64 %sub213, 4194304, !dbg !4876
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4876
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4876

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4876

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub218 = sub i64 %51, 1, !dbg !4876
  %and219 = and i64 %sub218, 2097152, !dbg !4876
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4876
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4876

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4876

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub223 = sub i64 %52, 1, !dbg !4876
  %and224 = and i64 %sub223, 1048576, !dbg !4876
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4876
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4876

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4876

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub228 = sub i64 %53, 1, !dbg !4876
  %and229 = and i64 %sub228, 524288, !dbg !4876
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4876
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4876

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4876

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub233 = sub i64 %54, 1, !dbg !4876
  %and234 = and i64 %sub233, 262144, !dbg !4876
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4876
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4876

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4876

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub238 = sub i64 %55, 1, !dbg !4876
  %and239 = and i64 %sub238, 131072, !dbg !4876
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4876
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4876

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4876

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub243 = sub i64 %56, 1, !dbg !4876
  %and244 = and i64 %sub243, 65536, !dbg !4876
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4876
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4876

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4876

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub248 = sub i64 %57, 1, !dbg !4876
  %and249 = and i64 %sub248, 32768, !dbg !4876
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4876
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4876

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4876

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub253 = sub i64 %58, 1, !dbg !4876
  %and254 = and i64 %sub253, 16384, !dbg !4876
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4876
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4876

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4876

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub258 = sub i64 %59, 1, !dbg !4876
  %and259 = and i64 %sub258, 8192, !dbg !4876
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4876
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4876

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4876

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub263 = sub i64 %60, 1, !dbg !4876
  %and264 = and i64 %sub263, 4096, !dbg !4876
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4876
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4876

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4876

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub268 = sub i64 %61, 1, !dbg !4876
  %and269 = and i64 %sub268, 2048, !dbg !4876
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4876
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4876

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4876

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub273 = sub i64 %62, 1, !dbg !4876
  %and274 = and i64 %sub273, 1024, !dbg !4876
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4876
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4876

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4876

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub278 = sub i64 %63, 1, !dbg !4876
  %and279 = and i64 %sub278, 512, !dbg !4876
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4876
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4876

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4876

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub283 = sub i64 %64, 1, !dbg !4876
  %and284 = and i64 %sub283, 256, !dbg !4876
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4876
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4876

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4876

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub288 = sub i64 %65, 1, !dbg !4876
  %and289 = and i64 %sub288, 128, !dbg !4876
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4876
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4876

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4876

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub293 = sub i64 %66, 1, !dbg !4876
  %and294 = and i64 %sub293, 64, !dbg !4876
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4876
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4876

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4876

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub298 = sub i64 %67, 1, !dbg !4876
  %and299 = and i64 %sub298, 32, !dbg !4876
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4876
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4876

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4876

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub303 = sub i64 %68, 1, !dbg !4876
  %and304 = and i64 %sub303, 16, !dbg !4876
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4876
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4876

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4876

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub308 = sub i64 %69, 1, !dbg !4876
  %and309 = and i64 %sub308, 8, !dbg !4876
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4876
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4876

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4876

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub313 = sub i64 %70, 1, !dbg !4876
  %and314 = and i64 %sub313, 4, !dbg !4876
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4876
  %71 = zext i1 %tobool315 to i64, !dbg !4876
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4876
  br label %cond.end, !dbg !4876

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4876
  br label %cond.end317, !dbg !4876

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4876
  br label %cond.end319, !dbg !4876

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4876
  br label %cond.end321, !dbg !4876

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4876
  br label %cond.end323, !dbg !4876

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4876
  br label %cond.end325, !dbg !4876

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4876
  br label %cond.end327, !dbg !4876

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4876
  br label %cond.end329, !dbg !4876

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4876
  br label %cond.end331, !dbg !4876

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4876
  br label %cond.end333, !dbg !4876

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4876
  br label %cond.end335, !dbg !4876

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4876
  br label %cond.end337, !dbg !4876

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4876
  br label %cond.end339, !dbg !4876

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4876
  br label %cond.end341, !dbg !4876

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4876
  br label %cond.end343, !dbg !4876

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4876
  br label %cond.end345, !dbg !4876

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4876
  br label %cond.end347, !dbg !4876

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4876
  br label %cond.end349, !dbg !4876

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4876
  br label %cond.end351, !dbg !4876

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4876
  br label %cond.end353, !dbg !4876

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4876
  br label %cond.end355, !dbg !4876

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4876
  br label %cond.end357, !dbg !4876

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4876
  br label %cond.end359, !dbg !4876

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4876
  br label %cond.end361, !dbg !4876

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4876
  br label %cond.end363, !dbg !4876

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4876
  br label %cond.end365, !dbg !4876

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4876
  br label %cond.end367, !dbg !4876

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4876
  br label %cond.end369, !dbg !4876

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4876
  br label %cond.end371, !dbg !4876

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4876
  br label %cond.end373, !dbg !4876

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4876
  br label %cond.end375, !dbg !4876

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4876
  br label %cond.end377, !dbg !4876

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4876
  br label %cond.end379, !dbg !4876

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4876
  br label %cond.end381, !dbg !4876

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4876
  br label %cond.end383, !dbg !4876

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4876
  br label %cond.end385, !dbg !4876

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4876
  br label %cond.end387, !dbg !4876

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4876
  br label %cond.end389, !dbg !4876

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4876
  br label %cond.end391, !dbg !4876

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4876
  br label %cond.end393, !dbg !4876

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4876
  br label %cond.end395, !dbg !4876

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4876
  br label %cond.end397, !dbg !4876

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4876
  br label %cond.end399, !dbg !4876

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4876
  br label %cond.end401, !dbg !4876

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4876
  br label %cond.end403, !dbg !4876

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4876
  br label %cond.end405, !dbg !4876

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4876
  br label %cond.end407, !dbg !4876

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4876
  br label %cond.end409, !dbg !4876

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4876
  br label %cond.end411, !dbg !4876

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4876
  br label %cond.end413, !dbg !4876

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4876
  br label %cond.end415, !dbg !4876

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4876
  br label %cond.end417, !dbg !4876

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4876
  br label %cond.end419, !dbg !4876

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4876
  br label %cond.end421, !dbg !4876

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4876
  br label %cond.end423, !dbg !4876

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4876
  br label %cond.end425, !dbg !4876

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4876
  br label %cond.end427, !dbg !4876

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4876
  br label %cond.end429, !dbg !4876

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4876
  br label %cond.end431, !dbg !4876

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4876
  br label %cond.end433, !dbg !4876

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4876
  br label %cond.end435, !dbg !4876

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4876
  br label %cond.end437, !dbg !4876

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4876
  br label %cond.end440, !dbg !4876

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4876

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4876
  br label %cond.end444, !dbg !4876

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4876
  %sub443 = sub i64 %72, 1, !dbg !4876
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4876
  br label %cond.end444, !dbg !4876

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4876
  %sub446 = sub i32 %cond445, 12, !dbg !4877
  %add = add i32 %sub446, 1, !dbg !4878
  store i32 %add, i32* %retval, align 4, !dbg !4879
  br label %return, !dbg !4879

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4880
  %dec = add i64 %73, -1, !dbg !4880
  store i64 %dec, i64* %size.addr, align 8, !dbg !4880
  %74 = load i64, i64* %size.addr, align 8, !dbg !4881
  %shr = lshr i64 %74, 12, !dbg !4881
  store i64 %shr, i64* %size.addr, align 8, !dbg !4881
  %75 = load i64, i64* %size.addr, align 8, !dbg !4882
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4859
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4883
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4884
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !4883, !srcloc !4885
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4883
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4886
  %add.i = add i32 %79, 1, !dbg !4887
  store i32 %add.i, i32* %retval, align 4, !dbg !4888
  br label %return, !dbg !4888

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4889
  ret i32 %80, !dbg !4889
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4890 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4851, metadata !DIExpression()), !dbg !4894
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4858, metadata !DIExpression()), !dbg !4896
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4897, metadata !DIExpression()), !dbg !4898
  %0 = load i64, i64* %n.addr, align 8, !dbg !4899
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4896
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4900
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4901
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !4900, !srcloc !4885
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4900
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4902
  %add.i = add i32 %4, 1, !dbg !4903
  %sub = sub i32 %add.i, 1, !dbg !4904
  ret i32 %sub, !dbg !4905
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4906 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4910, metadata !DIExpression()), !dbg !4911
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4912, metadata !DIExpression()), !dbg !4913
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4914, metadata !DIExpression()), !dbg !4915
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4916, metadata !DIExpression()), !dbg !4917
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4918
  ret i8* %0, !dbg !4919
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cx24110_release(%struct.dvb_frontend* %fe) #0 !dbg !4920 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.cx24110_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4921, metadata !DIExpression()), !dbg !4922
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state, metadata !4923, metadata !DIExpression()), !dbg !4924
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4925
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4926
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4926
  %2 = bitcast i8* %1 to %struct.cx24110_state*, !dbg !4925
  store %struct.cx24110_state* %2, %struct.cx24110_state** %state, align 8, !dbg !4924
  %3 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4927
  %4 = bitcast %struct.cx24110_state* %3 to i8*, !dbg !4927
  call void @kfree(i8* %4) #8, !dbg !4928
  ret void, !dbg !4929
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24110_initfe(%struct.dvb_frontend* %fe) #0 !dbg !4930 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.cx24110_state*, align 8
  %i = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4931, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state, metadata !4933, metadata !DIExpression()), !dbg !4934
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4935
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4936
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4936
  %2 = bitcast i8* %1 to %struct.cx24110_state*, !dbg !4935
  store %struct.cx24110_state* %2, %struct.cx24110_state** %state, align 8, !dbg !4934
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4937, metadata !DIExpression()), !dbg !4938
  br label %do.body, !dbg !4939

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !4940
  %tobool = icmp ne i32 %3, 0, !dbg !4940
  br i1 %tobool, label %if.then, label %if.end, !dbg !4943

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.cx24110_initfe, i64 0, i64 0)) #13, !dbg !4940
  br label %if.end, !dbg !4940

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4943

do.end:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !4944
  br label %for.cond, !dbg !4946

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load i32, i32* %i, align 4, !dbg !4947
  %conv = sext i32 %4 to i64, !dbg !4947
  %cmp = icmp ult i64 %conv, 38, !dbg !4949
  br i1 %cmp, label %for.body, label %for.end, !dbg !4950

for.body:                                         ; preds = %for.cond
  %5 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4951
  %6 = load i32, i32* %i, align 4, !dbg !4953
  %idxprom = sext i32 %6 to i64, !dbg !4954
  %arrayidx = getelementptr [38 x %struct.anon.67], [38 x %struct.anon.67]* @cx24110_regdata, i64 0, i64 %idxprom, !dbg !4954
  %reg = getelementptr inbounds %struct.anon.67, %struct.anon.67* %arrayidx, i32 0, i32 0, !dbg !4955
  %7 = load i8, i8* %reg, align 2, !dbg !4955
  %conv2 = zext i8 %7 to i32, !dbg !4954
  %8 = load i32, i32* %i, align 4, !dbg !4956
  %idxprom3 = sext i32 %8 to i64, !dbg !4957
  %arrayidx4 = getelementptr [38 x %struct.anon.67], [38 x %struct.anon.67]* @cx24110_regdata, i64 0, i64 %idxprom3, !dbg !4957
  %data = getelementptr inbounds %struct.anon.67, %struct.anon.67* %arrayidx4, i32 0, i32 1, !dbg !4958
  %9 = load i8, i8* %data, align 1, !dbg !4958
  %conv5 = zext i8 %9 to i32, !dbg !4957
  %call6 = call i32 @cx24110_writereg(%struct.cx24110_state* %5, i32 %conv2, i32 %conv5) #8, !dbg !4959
  br label %for.inc, !dbg !4960

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !4961
  %inc = add i32 %10, 1, !dbg !4961
  store i32 %inc, i32* %i, align 4, !dbg !4961
  br label %for.cond, !dbg !4962, !llvm.loop !4963

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !4965
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_cx24110_pll_write(%struct.dvb_frontend* %fe, i8* %buf, i32 %len) #0 !dbg !4966 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %state = alloca %struct.cx24110_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4967, metadata !DIExpression()), !dbg !4968
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4969, metadata !DIExpression()), !dbg !4970
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !4971, metadata !DIExpression()), !dbg !4972
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state, metadata !4973, metadata !DIExpression()), !dbg !4974
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4975
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4976
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4976
  %2 = bitcast i8* %1 to %struct.cx24110_state*, !dbg !4975
  store %struct.cx24110_state* %2, %struct.cx24110_state** %state, align 8, !dbg !4974
  %3 = load i32, i32* %len.addr, align 4, !dbg !4977
  %cmp = icmp ne i32 %3, 3, !dbg !4979
  br i1 %cmp, label %if.then, label %if.end, !dbg !4980

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4981
  br label %return, !dbg !4981

if.end:                                           ; preds = %entry
  %4 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4982
  %call = call i32 @cx24110_writereg(%struct.cx24110_state* %4, i32 109, i32 48) #8, !dbg !4983
  %5 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4984
  %call1 = call i32 @cx24110_writereg(%struct.cx24110_state* %5, i32 112, i32 21) #8, !dbg !4985
  br label %while.cond, !dbg !4986

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4987
  %call2 = call i32 @cx24110_readreg(%struct.cx24110_state* %6, i8 zeroext 109) #8, !dbg !4988
  %and = and i32 %call2, 128, !dbg !4989
  %tobool = icmp ne i32 %and, 0, !dbg !4986
  br i1 %tobool, label %while.body, label %while.end, !dbg !4986

while.body:                                       ; preds = %while.cond
  %7 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4990
  %call3 = call i32 @cx24110_writereg(%struct.cx24110_state* %7, i32 114, i32 0) #8, !dbg !4991
  br label %while.cond, !dbg !4986, !llvm.loop !4992

while.end:                                        ; preds = %while.cond
  %8 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4994
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !4995
  %arrayidx = getelementptr i8, i8* %9, i64 0, !dbg !4995
  %10 = load i8, i8* %arrayidx, align 1, !dbg !4995
  %conv = zext i8 %10 to i32, !dbg !4995
  %call4 = call i32 @cx24110_writereg(%struct.cx24110_state* %8, i32 114, i32 %conv) #8, !dbg !4996
  br label %while.cond5, !dbg !4997

while.cond5:                                      ; preds = %while.body10, %while.end
  %11 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !4998
  %call6 = call i32 @cx24110_readreg(%struct.cx24110_state* %11, i8 zeroext 109) #8, !dbg !4999
  %and7 = and i32 %call6, 192, !dbg !5000
  %cmp8 = icmp eq i32 %and7, 128, !dbg !5001
  br i1 %cmp8, label %while.body10, label %while.end11, !dbg !4997

while.body10:                                     ; preds = %while.cond5
  br label %while.cond5, !dbg !4997, !llvm.loop !5002

while.end11:                                      ; preds = %while.cond5
  %12 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5004
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !5005
  %arrayidx12 = getelementptr i8, i8* %13, i64 1, !dbg !5005
  %14 = load i8, i8* %arrayidx12, align 1, !dbg !5005
  %conv13 = zext i8 %14 to i32, !dbg !5005
  %call14 = call i32 @cx24110_writereg(%struct.cx24110_state* %12, i32 114, i32 %conv13) #8, !dbg !5006
  br label %while.cond15, !dbg !5007

while.cond15:                                     ; preds = %while.body20, %while.end11
  %15 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5008
  %call16 = call i32 @cx24110_readreg(%struct.cx24110_state* %15, i8 zeroext 109) #8, !dbg !5009
  %and17 = and i32 %call16, 192, !dbg !5010
  %cmp18 = icmp eq i32 %and17, 128, !dbg !5011
  br i1 %cmp18, label %while.body20, label %while.end21, !dbg !5007

while.body20:                                     ; preds = %while.cond15
  br label %while.cond15, !dbg !5007, !llvm.loop !5012

while.end21:                                      ; preds = %while.cond15
  %16 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5014
  %17 = load i8*, i8** %buf.addr, align 8, !dbg !5015
  %arrayidx22 = getelementptr i8, i8* %17, i64 2, !dbg !5015
  %18 = load i8, i8* %arrayidx22, align 1, !dbg !5015
  %conv23 = zext i8 %18 to i32, !dbg !5015
  %call24 = call i32 @cx24110_writereg(%struct.cx24110_state* %16, i32 114, i32 %conv23) #8, !dbg !5016
  br label %while.cond25, !dbg !5017

while.cond25:                                     ; preds = %while.body30, %while.end21
  %19 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5018
  %call26 = call i32 @cx24110_readreg(%struct.cx24110_state* %19, i8 zeroext 109) #8, !dbg !5019
  %and27 = and i32 %call26, 192, !dbg !5020
  %cmp28 = icmp eq i32 %and27, 128, !dbg !5021
  br i1 %cmp28, label %while.body30, label %while.end31, !dbg !5017

while.body30:                                     ; preds = %while.cond25
  br label %while.cond25, !dbg !5017, !llvm.loop !5022

while.end31:                                      ; preds = %while.cond25
  %20 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5024
  %call32 = call i32 @cx24110_writereg(%struct.cx24110_state* %20, i32 109, i32 50) #8, !dbg !5025
  %21 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5026
  %call33 = call i32 @cx24110_writereg(%struct.cx24110_state* %21, i32 109, i32 48) #8, !dbg !5027
  store i32 0, i32* %retval, align 4, !dbg !5028
  br label %return, !dbg !5028

return:                                           ; preds = %while.end31, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !5029
  ret i32 %22, !dbg !5029
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24110_set_frontend(%struct.dvb_frontend* %fe) #0 !dbg !5030 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.cx24110_state*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5031, metadata !DIExpression()), !dbg !5032
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state, metadata !5033, metadata !DIExpression()), !dbg !5034
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5035
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5036
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5036
  %2 = bitcast i8* %1 to %struct.cx24110_state*, !dbg !5035
  store %struct.cx24110_state* %2, %struct.cx24110_state** %state, align 8, !dbg !5034
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !5037, metadata !DIExpression()), !dbg !5038
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5039
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 8, !dbg !5040
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !5038
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5041
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 1, !dbg !5043
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5044
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5045
  %5 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5045
  %tobool = icmp ne i32 (%struct.dvb_frontend*)* %5, null, !dbg !5041
  br i1 %tobool, label %if.then, label %if.end10, !dbg !5046

if.then:                                          ; preds = %entry
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5047
  %ops1 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1, !dbg !5049
  %tuner_ops2 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops1, i32 0, i32 30, !dbg !5050
  %set_params3 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops2, i32 0, i32 6, !dbg !5051
  %7 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params3, align 8, !dbg !5051
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5052
  %call = call i32 %7(%struct.dvb_frontend* %8) #8, !dbg !5047
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5053
  %ops4 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1, !dbg !5055
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops4, i32 0, i32 26, !dbg !5056
  %10 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5056
  %tobool5 = icmp ne i32 (%struct.dvb_frontend*, i32)* %10, null, !dbg !5053
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !5057

if.then6:                                         ; preds = %if.then
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5058
  %ops7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1, !dbg !5059
  %i2c_gate_ctrl8 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops7, i32 0, i32 26, !dbg !5060
  %12 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl8, align 8, !dbg !5060
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5061
  %call9 = call i32 %12(%struct.dvb_frontend* %13, i32 0) #8, !dbg !5058
  br label %if.end, !dbg !5058

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end10, !dbg !5062

if.end10:                                         ; preds = %if.end, %entry
  %14 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5063
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5064
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 4, !dbg !5065
  %16 = load i32, i32* %inversion, align 4, !dbg !5065
  %call11 = call i32 @cx24110_set_inversion(%struct.cx24110_state* %14, i32 %16) #8, !dbg !5066
  %17 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5067
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5068
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 5, !dbg !5069
  %19 = load i32, i32* %fec_inner, align 4, !dbg !5069
  %call12 = call i32 @cx24110_set_fec(%struct.cx24110_state* %17, i32 %19) #8, !dbg !5070
  %20 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5071
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5072
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 10, !dbg !5073
  %22 = load i32, i32* %symbol_rate, align 4, !dbg !5073
  %call13 = call i32 @cx24110_set_symbolrate(%struct.cx24110_state* %20, i32 %22) #8, !dbg !5074
  %23 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5075
  %call14 = call i32 @cx24110_writereg(%struct.cx24110_state* %23, i32 4, i32 5) #8, !dbg !5076
  ret i32 0, !dbg !5077
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24110_get_frontend(%struct.dvb_frontend* %fe, %struct.dtv_frontend_properties* %p) #0 !dbg !5078 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p.addr = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.cx24110_state*, align 8
  %afc = alloca i32, align 4
  %sclk = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5079, metadata !DIExpression()), !dbg !5080
  store %struct.dtv_frontend_properties* %p, %struct.dtv_frontend_properties** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p.addr, metadata !5081, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state, metadata !5083, metadata !DIExpression()), !dbg !5084
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5085
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5086
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5086
  %2 = bitcast i8* %1 to %struct.cx24110_state*, !dbg !5085
  store %struct.cx24110_state* %2, %struct.cx24110_state** %state, align 8, !dbg !5084
  call void @llvm.dbg.declare(metadata i32* %afc, metadata !5087, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.declare(metadata i32* %sclk, metadata !5089, metadata !DIExpression()), !dbg !5090
  %3 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5091
  %call = call i32 @cx24110_readreg(%struct.cx24110_state* %3, i8 zeroext 7) #8, !dbg !5092
  %and = and i32 %call, 3, !dbg !5093
  store i32 %and, i32* %sclk, align 4, !dbg !5094
  %4 = load i32, i32* %sclk, align 4, !dbg !5095
  %cmp = icmp eq i32 %4, 0, !dbg !5097
  br i1 %cmp, label %if.then, label %if.else, !dbg !5098

if.then:                                          ; preds = %entry
  store i32 45499500, i32* %sclk, align 4, !dbg !5099
  br label %if.end8, !dbg !5100

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %sclk, align 4, !dbg !5101
  %cmp1 = icmp eq i32 %5, 1, !dbg !5103
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !5104

if.then2:                                         ; preds = %if.else
  store i32 60666000, i32* %sclk, align 4, !dbg !5105
  br label %if.end7, !dbg !5106

if.else3:                                         ; preds = %if.else
  %6 = load i32, i32* %sclk, align 4, !dbg !5107
  %cmp4 = icmp eq i32 %6, 2, !dbg !5109
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !5110

if.then5:                                         ; preds = %if.else3
  store i32 80888000, i32* %sclk, align 4, !dbg !5111
  br label %if.end, !dbg !5112

if.else6:                                         ; preds = %if.else3
  store i32 90999000, i32* %sclk, align 4, !dbg !5113
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then2
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then
  %7 = load i32, i32* %sclk, align 4, !dbg !5114
  %shr = lshr i32 %7, 8, !dbg !5114
  store i32 %shr, i32* %sclk, align 4, !dbg !5114
  %8 = load i32, i32* %sclk, align 4, !dbg !5115
  %9 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5116
  %call9 = call i32 @cx24110_readreg(%struct.cx24110_state* %9, i8 zeroext 68) #8, !dbg !5117
  %and10 = and i32 %call9, 31, !dbg !5118
  %mul = mul i32 %8, %and10, !dbg !5119
  %10 = load i32, i32* %sclk, align 4, !dbg !5120
  %11 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5121
  %call11 = call i32 @cx24110_readreg(%struct.cx24110_state* %11, i8 zeroext 69) #8, !dbg !5122
  %mul12 = mul i32 %10, %call11, !dbg !5123
  %shr13 = lshr i32 %mul12, 8, !dbg !5124
  %add = add i32 %mul, %shr13, !dbg !5125
  %12 = load i32, i32* %sclk, align 4, !dbg !5126
  %13 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5127
  %call14 = call i32 @cx24110_readreg(%struct.cx24110_state* %13, i8 zeroext 70) #8, !dbg !5128
  %mul15 = mul i32 %12, %call14, !dbg !5129
  %shr16 = lshr i32 %mul15, 16, !dbg !5130
  %add17 = add i32 %add, %shr16, !dbg !5131
  store i32 %add17, i32* %afc, align 4, !dbg !5132
  %14 = load i32, i32* %afc, align 4, !dbg !5133
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5134
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 0, !dbg !5135
  %16 = load i32, i32* %frequency, align 4, !dbg !5136
  %add18 = add i32 %16, %14, !dbg !5136
  store i32 %add18, i32* %frequency, align 4, !dbg !5136
  %17 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5137
  %call19 = call i32 @cx24110_readreg(%struct.cx24110_state* %17, i8 zeroext 34) #8, !dbg !5138
  %and20 = and i32 %call19, 16, !dbg !5139
  %tobool = icmp ne i32 %and20, 0, !dbg !5140
  %18 = zext i1 %tobool to i64, !dbg !5140
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !5140
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5141
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 4, !dbg !5142
  store i32 %cond, i32* %inversion, align 4, !dbg !5143
  %20 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5144
  %call21 = call i32 @cx24110_get_fec(%struct.cx24110_state* %20) #8, !dbg !5145
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5146
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 5, !dbg !5147
  store i32 %call21, i32* %fec_inner, align 4, !dbg !5148
  ret i32 0, !dbg !5149
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24110_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !5150 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.cx24110_state*, align 8
  %sync = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5151, metadata !DIExpression()), !dbg !5152
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5153, metadata !DIExpression()), !dbg !5154
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state, metadata !5155, metadata !DIExpression()), !dbg !5156
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5157
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5158
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5158
  %2 = bitcast i8* %1 to %struct.cx24110_state*, !dbg !5157
  store %struct.cx24110_state* %2, %struct.cx24110_state** %state, align 8, !dbg !5156
  call void @llvm.dbg.declare(metadata i32* %sync, metadata !5159, metadata !DIExpression()), !dbg !5160
  %3 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5161
  %call = call i32 @cx24110_readreg(%struct.cx24110_state* %3, i8 zeroext 85) #8, !dbg !5162
  store i32 %call, i32* %sync, align 4, !dbg !5160
  %4 = load i32*, i32** %status.addr, align 8, !dbg !5163
  store i32 0, i32* %4, align 4, !dbg !5164
  %5 = load i32, i32* %sync, align 4, !dbg !5165
  %and = and i32 %5, 16, !dbg !5167
  %tobool = icmp ne i32 %and, 0, !dbg !5167
  br i1 %tobool, label %if.then, label %if.end, !dbg !5168

if.then:                                          ; preds = %entry
  %6 = load i32*, i32** %status.addr, align 8, !dbg !5169
  %7 = load i32, i32* %6, align 4, !dbg !5170
  %or = or i32 %7, 1, !dbg !5170
  store i32 %or, i32* %6, align 4, !dbg !5170
  br label %if.end, !dbg !5171

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %sync, align 4, !dbg !5172
  %and1 = and i32 %8, 8, !dbg !5174
  %tobool2 = icmp ne i32 %and1, 0, !dbg !5174
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !5175

if.then3:                                         ; preds = %if.end
  %9 = load i32*, i32** %status.addr, align 8, !dbg !5176
  %10 = load i32, i32* %9, align 4, !dbg !5177
  %or4 = or i32 %10, 2, !dbg !5177
  store i32 %or4, i32* %9, align 4, !dbg !5177
  br label %if.end5, !dbg !5178

if.end5:                                          ; preds = %if.then3, %if.end
  %11 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5179
  %call6 = call i32 @cx24110_readreg(%struct.cx24110_state* %11, i8 zeroext 8) #8, !dbg !5180
  store i32 %call6, i32* %sync, align 4, !dbg !5181
  %12 = load i32, i32* %sync, align 4, !dbg !5182
  %and7 = and i32 %12, 64, !dbg !5184
  %tobool8 = icmp ne i32 %and7, 0, !dbg !5184
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !5185

if.then9:                                         ; preds = %if.end5
  %13 = load i32*, i32** %status.addr, align 8, !dbg !5186
  %14 = load i32, i32* %13, align 4, !dbg !5187
  %or10 = or i32 %14, 4, !dbg !5187
  store i32 %or10, i32* %13, align 4, !dbg !5187
  br label %if.end11, !dbg !5188

if.end11:                                         ; preds = %if.then9, %if.end5
  %15 = load i32, i32* %sync, align 4, !dbg !5189
  %and12 = and i32 %15, 32, !dbg !5191
  %tobool13 = icmp ne i32 %and12, 0, !dbg !5191
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !5192

if.then14:                                        ; preds = %if.end11
  %16 = load i32*, i32** %status.addr, align 8, !dbg !5193
  %17 = load i32, i32* %16, align 4, !dbg !5194
  %or15 = or i32 %17, 8, !dbg !5194
  store i32 %or15, i32* %16, align 4, !dbg !5194
  br label %if.end16, !dbg !5195

if.end16:                                         ; preds = %if.then14, %if.end11
  %18 = load i32, i32* %sync, align 4, !dbg !5196
  %and17 = and i32 %18, 96, !dbg !5198
  %cmp = icmp eq i32 %and17, 96, !dbg !5199
  br i1 %cmp, label %if.then18, label %if.end20, !dbg !5200

if.then18:                                        ; preds = %if.end16
  %19 = load i32*, i32** %status.addr, align 8, !dbg !5201
  %20 = load i32, i32* %19, align 4, !dbg !5202
  %or19 = or i32 %20, 16, !dbg !5202
  store i32 %or19, i32* %19, align 4, !dbg !5202
  br label %if.end20, !dbg !5203

if.end20:                                         ; preds = %if.then18, %if.end16
  ret i32 0, !dbg !5204
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24110_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5205 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %state = alloca %struct.cx24110_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5206, metadata !DIExpression()), !dbg !5207
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state, metadata !5210, metadata !DIExpression()), !dbg !5211
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5212
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5213
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5213
  %2 = bitcast i8* %1 to %struct.cx24110_state*, !dbg !5212
  store %struct.cx24110_state* %2, %struct.cx24110_state** %state, align 8, !dbg !5211
  %3 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5214
  %call = call i32 @cx24110_readreg(%struct.cx24110_state* %3, i8 zeroext 36) #8, !dbg !5216
  %and = and i32 %call, 16, !dbg !5217
  %tobool = icmp ne i32 %and, 0, !dbg !5217
  br i1 %tobool, label %if.then, label %if.end, !dbg !5218

if.then:                                          ; preds = %entry
  %4 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5219
  %call1 = call i32 @cx24110_writereg(%struct.cx24110_state* %4, i32 36, i32 4) #8, !dbg !5221
  %5 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5222
  %call2 = call i32 @cx24110_readreg(%struct.cx24110_state* %5, i8 zeroext 37) #8, !dbg !5223
  %6 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5224
  %call3 = call i32 @cx24110_readreg(%struct.cx24110_state* %6, i8 zeroext 38) #8, !dbg !5225
  %shl = shl i32 %call3, 8, !dbg !5226
  %or = or i32 %call2, %shl, !dbg !5227
  %7 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5228
  %lastber = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %7, i32 0, i32 3, !dbg !5229
  store i32 %or, i32* %lastber, align 8, !dbg !5230
  %8 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5231
  %call4 = call i32 @cx24110_writereg(%struct.cx24110_state* %8, i32 36, i32 4) #8, !dbg !5232
  %9 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5233
  %call5 = call i32 @cx24110_writereg(%struct.cx24110_state* %9, i32 36, i32 20) #8, !dbg !5234
  br label %if.end, !dbg !5235

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5236
  %lastber6 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %10, i32 0, i32 3, !dbg !5237
  %11 = load i32, i32* %lastber6, align 8, !dbg !5237
  %12 = load i32*, i32** %ber.addr, align 8, !dbg !5238
  store i32 %11, i32* %12, align 4, !dbg !5239
  ret i32 0, !dbg !5240
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24110_read_signal_strength(%struct.dvb_frontend* %fe, i16* %signal_strength) #0 !dbg !5241 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %signal_strength.addr = alloca i16*, align 8
  %state = alloca %struct.cx24110_state*, align 8
  %signal = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5242, metadata !DIExpression()), !dbg !5243
  store i16* %signal_strength, i16** %signal_strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %signal_strength.addr, metadata !5244, metadata !DIExpression()), !dbg !5245
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state, metadata !5246, metadata !DIExpression()), !dbg !5247
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5248
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5249
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5249
  %2 = bitcast i8* %1 to %struct.cx24110_state*, !dbg !5248
  store %struct.cx24110_state* %2, %struct.cx24110_state** %state, align 8, !dbg !5247
  call void @llvm.dbg.declare(metadata i8* %signal, metadata !5250, metadata !DIExpression()), !dbg !5251
  %3 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5252
  %call = call i32 @cx24110_readreg(%struct.cx24110_state* %3, i8 zeroext 39) #8, !dbg !5253
  %add = add i32 %call, 128, !dbg !5254
  %conv = trunc i32 %add to i8, !dbg !5253
  store i8 %conv, i8* %signal, align 1, !dbg !5251
  %4 = load i8, i8* %signal, align 1, !dbg !5255
  %conv1 = zext i8 %4 to i32, !dbg !5255
  %shl = shl i32 %conv1, 8, !dbg !5256
  %5 = load i8, i8* %signal, align 1, !dbg !5257
  %conv2 = zext i8 %5 to i32, !dbg !5257
  %or = or i32 %shl, %conv2, !dbg !5258
  %conv3 = trunc i32 %or to i16, !dbg !5259
  %6 = load i16*, i16** %signal_strength.addr, align 8, !dbg !5260
  store i16 %conv3, i16* %6, align 2, !dbg !5261
  ret i32 0, !dbg !5262
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24110_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5263 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %state = alloca %struct.cx24110_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5264, metadata !DIExpression()), !dbg !5265
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5266, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state, metadata !5268, metadata !DIExpression()), !dbg !5269
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5270
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5271
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5271
  %2 = bitcast i8* %1 to %struct.cx24110_state*, !dbg !5270
  store %struct.cx24110_state* %2, %struct.cx24110_state** %state, align 8, !dbg !5269
  %3 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5272
  %call = call i32 @cx24110_readreg(%struct.cx24110_state* %3, i8 zeroext 106) #8, !dbg !5274
  %and = and i32 %call, 128, !dbg !5275
  %tobool = icmp ne i32 %and, 0, !dbg !5275
  br i1 %tobool, label %if.then, label %if.end, !dbg !5276

if.then:                                          ; preds = %entry
  %4 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5277
  %call1 = call i32 @cx24110_readreg(%struct.cx24110_state* %4, i8 zeroext 105) #8, !dbg !5279
  %5 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5280
  %call2 = call i32 @cx24110_readreg(%struct.cx24110_state* %5, i8 zeroext 104) #8, !dbg !5281
  %shl = shl i32 %call2, 8, !dbg !5282
  %or = or i32 %call1, %shl, !dbg !5283
  %6 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5284
  %lastesn0 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %6, i32 0, i32 5, !dbg !5285
  store i32 %or, i32* %lastesn0, align 8, !dbg !5286
  %7 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5287
  %call3 = call i32 @cx24110_writereg(%struct.cx24110_state* %7, i32 106, i32 132) #8, !dbg !5288
  br label %if.end, !dbg !5289

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5290
  %lastesn04 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %8, i32 0, i32 5, !dbg !5291
  %9 = load i32, i32* %lastesn04, align 8, !dbg !5291
  %conv = trunc i32 %9 to i16, !dbg !5290
  %10 = load i16*, i16** %snr.addr, align 8, !dbg !5292
  store i16 %conv, i16* %10, align 2, !dbg !5293
  ret i32 0, !dbg !5294
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24110_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !5295 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  %state = alloca %struct.cx24110_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5296, metadata !DIExpression()), !dbg !5297
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !5298, metadata !DIExpression()), !dbg !5299
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state, metadata !5300, metadata !DIExpression()), !dbg !5301
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5302
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5303
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5303
  %2 = bitcast i8* %1 to %struct.cx24110_state*, !dbg !5302
  store %struct.cx24110_state* %2, %struct.cx24110_state** %state, align 8, !dbg !5301
  %3 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5304
  %call = call i32 @cx24110_readreg(%struct.cx24110_state* %3, i8 zeroext 16) #8, !dbg !5306
  %and = and i32 %call, 64, !dbg !5307
  %tobool = icmp ne i32 %and, 0, !dbg !5307
  br i1 %tobool, label %if.then, label %if.end, !dbg !5308

if.then:                                          ; preds = %entry
  %4 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5309
  %call1 = call i32 @cx24110_writereg(%struct.cx24110_state* %4, i32 16, i32 96) #8, !dbg !5311
  %5 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5312
  %call2 = call i32 @cx24110_readreg(%struct.cx24110_state* %5, i8 zeroext 18) #8, !dbg !5313
  %6 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5314
  %call3 = call i32 @cx24110_readreg(%struct.cx24110_state* %6, i8 zeroext 19) #8, !dbg !5315
  %shl = shl i32 %call3, 8, !dbg !5316
  %or = or i32 %call2, %shl, !dbg !5317
  %7 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5318
  %call4 = call i32 @cx24110_readreg(%struct.cx24110_state* %7, i8 zeroext 20) #8, !dbg !5319
  %shl5 = shl i32 %call4, 16, !dbg !5320
  %or6 = or i32 %or, %shl5, !dbg !5321
  %8 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5322
  %call7 = call i32 @cx24110_writereg(%struct.cx24110_state* %8, i32 16, i32 112) #8, !dbg !5323
  %9 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5324
  %call8 = call i32 @cx24110_readreg(%struct.cx24110_state* %9, i8 zeroext 18) #8, !dbg !5325
  %10 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5326
  %call9 = call i32 @cx24110_readreg(%struct.cx24110_state* %10, i8 zeroext 19) #8, !dbg !5327
  %shl10 = shl i32 %call9, 8, !dbg !5328
  %or11 = or i32 %call8, %shl10, !dbg !5329
  %11 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5330
  %call12 = call i32 @cx24110_readreg(%struct.cx24110_state* %11, i8 zeroext 20) #8, !dbg !5331
  %shl13 = shl i32 %call12, 16, !dbg !5332
  %or14 = or i32 %or11, %shl13, !dbg !5333
  %12 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5334
  %lastbler = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %12, i32 0, i32 4, !dbg !5335
  store i32 %or14, i32* %lastbler, align 4, !dbg !5336
  %13 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5337
  %call15 = call i32 @cx24110_writereg(%struct.cx24110_state* %13, i32 16, i32 32) #8, !dbg !5338
  br label %if.end, !dbg !5339

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5340
  %lastbler16 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %14, i32 0, i32 4, !dbg !5341
  %15 = load i32, i32* %lastbler16, align 4, !dbg !5341
  %16 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5342
  store i32 %15, i32* %16, align 4, !dbg !5343
  ret i32 0, !dbg !5344
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24110_send_diseqc_msg(%struct.dvb_frontend* %fe, %struct.dvb_diseqc_master_cmd* %cmd) #0 !dbg !5345 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !5346, metadata !DIExpression()), !dbg !5351
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %cmd.addr = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %i = alloca i32, align 4
  %rv = alloca i32, align 4
  %state = alloca %struct.cx24110_state*, align 8
  %timeout = alloca i64, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5353, metadata !DIExpression()), !dbg !5354
  store %struct.dvb_diseqc_master_cmd* %cmd, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_diseqc_master_cmd** %cmd.addr, metadata !5355, metadata !DIExpression()), !dbg !5356
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5357, metadata !DIExpression()), !dbg !5358
  call void @llvm.dbg.declare(metadata i32* %rv, metadata !5359, metadata !DIExpression()), !dbg !5360
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state, metadata !5361, metadata !DIExpression()), !dbg !5362
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5363
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5364
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5364
  %2 = bitcast i8* %1 to %struct.cx24110_state*, !dbg !5363
  store %struct.cx24110_state* %2, %struct.cx24110_state** %state, align 8, !dbg !5362
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !5365, metadata !DIExpression()), !dbg !5366
  %3 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8, !dbg !5367
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %3, i32 0, i32 1, !dbg !5369
  %4 = load i8, i8* %msg_len, align 1, !dbg !5369
  %conv = zext i8 %4 to i32, !dbg !5367
  %cmp = icmp slt i32 %conv, 3, !dbg !5370
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5371

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8, !dbg !5372
  %msg_len2 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %5, i32 0, i32 1, !dbg !5373
  %6 = load i8, i8* %msg_len2, align 1, !dbg !5373
  %conv3 = zext i8 %6 to i32, !dbg !5372
  %cmp4 = icmp sgt i32 %conv3, 6, !dbg !5374
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5375

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5376
  br label %return, !dbg !5376

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !dbg !5377
  br label %for.cond, !dbg !5379

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4, !dbg !5380
  %8 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8, !dbg !5382
  %msg_len6 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %8, i32 0, i32 1, !dbg !5383
  %9 = load i8, i8* %msg_len6, align 1, !dbg !5383
  %conv7 = zext i8 %9 to i32, !dbg !5382
  %cmp8 = icmp slt i32 %7, %conv7, !dbg !5384
  br i1 %cmp8, label %for.body, label %for.end, !dbg !5385

for.body:                                         ; preds = %for.cond
  %10 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5386
  %11 = load i32, i32* %i, align 4, !dbg !5387
  %add = add i32 121, %11, !dbg !5388
  %12 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8, !dbg !5389
  %msg = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %12, i32 0, i32 0, !dbg !5390
  %13 = load i32, i32* %i, align 4, !dbg !5391
  %idxprom = sext i32 %13 to i64, !dbg !5389
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %msg, i64 0, i64 %idxprom, !dbg !5389
  %14 = load i8, i8* %arrayidx, align 1, !dbg !5389
  %conv10 = zext i8 %14 to i32, !dbg !5389
  %call = call i32 @cx24110_writereg(%struct.cx24110_state* %10, i32 %add, i32 %conv10) #8, !dbg !5392
  br label %for.inc, !dbg !5392

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !5393
  %inc = add i32 %15, 1, !dbg !5393
  store i32 %inc, i32* %i, align 4, !dbg !5393
  br label %for.cond, !dbg !5394, !llvm.loop !5395

for.end:                                          ; preds = %for.cond
  %16 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5397
  %call11 = call i32 @cx24110_readreg(%struct.cx24110_state* %16, i8 zeroext 119) #8, !dbg !5398
  store i32 %call11, i32* %rv, align 4, !dbg !5399
  %17 = load i32, i32* %rv, align 4, !dbg !5400
  %and = and i32 %17, 4, !dbg !5402
  %tobool = icmp ne i32 %and, 0, !dbg !5402
  br i1 %tobool, label %if.then12, label %if.end15, !dbg !5403

if.then12:                                        ; preds = %for.end
  %18 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5404
  %19 = load i32, i32* %rv, align 4, !dbg !5406
  %and13 = and i32 %19, -5, !dbg !5407
  %call14 = call i32 @cx24110_writereg(%struct.cx24110_state* %18, i32 119, i32 %and13) #8, !dbg !5408
  call void @msleep(i32 30) #8, !dbg !5409
  br label %if.end15, !dbg !5410

if.end15:                                         ; preds = %if.then12, %for.end
  %20 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5411
  %call16 = call i32 @cx24110_readreg(%struct.cx24110_state* %20, i8 zeroext 118) #8, !dbg !5412
  store i32 %call16, i32* %rv, align 4, !dbg !5413
  %21 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5414
  %22 = load i32, i32* %rv, align 4, !dbg !5415
  %and17 = and i32 %22, 144, !dbg !5416
  %or = or i32 %and17, 64, !dbg !5417
  %23 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8, !dbg !5418
  %msg_len18 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %23, i32 0, i32 1, !dbg !5419
  %24 = load i8, i8* %msg_len18, align 1, !dbg !5419
  %conv19 = zext i8 %24 to i32, !dbg !5418
  %sub = sub i32 %conv19, 3, !dbg !5420
  %and20 = and i32 %sub, 3, !dbg !5421
  %or21 = or i32 %or, %and20, !dbg !5422
  %call22 = call i32 @cx24110_writereg(%struct.cx24110_state* %21, i32 118, i32 %or21) #8, !dbg !5423
  %25 = load volatile i64, i64* @jiffies, align 8, !dbg !5424
  store i32 100, i32* %m.addr.i, align 4
  %26 = load i32, i32* %m.addr.i, align 4, !dbg !5425
  %27 = call i1 @llvm.is.constant.i32(i32 %26) #9, !dbg !5427
  br i1 %27, label %if.then.i, label %if.else.i, !dbg !5428

if.then.i:                                        ; preds = %if.end15
  %28 = load i32, i32* %m.addr.i, align 4, !dbg !5429
  %cmp.i = icmp slt i32 %28, 0, !dbg !5432
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5433

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5434
  br label %msecs_to_jiffies.exit, !dbg !5434

if.end.i:                                         ; preds = %if.then.i
  %29 = load i32, i32* %m.addr.i, align 4, !dbg !5435
  %call.i = call i64 @_msecs_to_jiffies(i32 %29) #11, !dbg !5436
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5437
  br label %msecs_to_jiffies.exit, !dbg !5437

if.else.i:                                        ; preds = %if.end15
  %30 = load i32, i32* %m.addr.i, align 4, !dbg !5438
  %call2.i = call i64 @__msecs_to_jiffies(i32 %30) #11, !dbg !5440
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5441
  br label %msecs_to_jiffies.exit, !dbg !5441

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %31 = load i64, i64* %retval.i, align 8, !dbg !5442
  %add24 = add i64 %25, %31, !dbg !5443
  store i64 %add24, i64* %timeout, align 8, !dbg !5444
  br label %while.cond, !dbg !5445

while.cond:                                       ; preds = %while.body, %msecs_to_jiffies.exit
  %32 = load i64, i64* %timeout, align 8, !dbg !5446
  %33 = load volatile i64, i64* @jiffies, align 8, !dbg !5446
  %sub25 = sub i64 %32, %33, !dbg !5446
  %cmp26 = icmp slt i64 %sub25, 0, !dbg !5446
  br i1 %cmp26, label %land.end, label %land.rhs, !dbg !5447

land.rhs:                                         ; preds = %while.cond
  %34 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5448
  %call28 = call i32 @cx24110_readreg(%struct.cx24110_state* %34, i8 zeroext 118) #8, !dbg !5449
  %and29 = and i32 %call28, 64, !dbg !5450
  %tobool30 = icmp ne i32 %and29, 0, !dbg !5451
  %lnot = xor i1 %tobool30, true, !dbg !5451
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %35 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !5452
  br i1 %35, label %while.body, label %while.end, !dbg !5445

while.body:                                       ; preds = %land.end
  br label %while.cond, !dbg !5445, !llvm.loop !5453

while.end:                                        ; preds = %land.end
  store i32 0, i32* %retval, align 4, !dbg !5455
  br label %return, !dbg !5455

return:                                           ; preds = %while.end, %if.then
  %36 = load i32, i32* %retval, align 4, !dbg !5456
  ret i32 %36, !dbg !5456
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24110_diseqc_send_burst(%struct.dvb_frontend* %fe, i32 %burst) #0 !dbg !5457 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !5346, metadata !DIExpression()), !dbg !5458
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %burst.addr = alloca i32, align 4
  %rv = alloca i32, align 4
  %bit = alloca i32, align 4
  %state = alloca %struct.cx24110_state*, align 8
  %timeout = alloca i64, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5460, metadata !DIExpression()), !dbg !5461
  store i32 %burst, i32* %burst.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %burst.addr, metadata !5462, metadata !DIExpression()), !dbg !5463
  call void @llvm.dbg.declare(metadata i32* %rv, metadata !5464, metadata !DIExpression()), !dbg !5465
  call void @llvm.dbg.declare(metadata i32* %bit, metadata !5466, metadata !DIExpression()), !dbg !5467
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state, metadata !5468, metadata !DIExpression()), !dbg !5469
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5470
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5471
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5471
  %2 = bitcast i8* %1 to %struct.cx24110_state*, !dbg !5470
  store %struct.cx24110_state* %2, %struct.cx24110_state** %state, align 8, !dbg !5469
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !5472, metadata !DIExpression()), !dbg !5473
  %3 = load i32, i32* %burst.addr, align 4, !dbg !5474
  %cmp = icmp eq i32 %3, 0, !dbg !5476
  br i1 %cmp, label %if.then, label %if.else, !dbg !5477

if.then:                                          ; preds = %entry
  store i32 0, i32* %bit, align 4, !dbg !5478
  br label %if.end4, !dbg !5479

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %burst.addr, align 4, !dbg !5480
  %cmp1 = icmp eq i32 %4, 1, !dbg !5482
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !5483

if.then2:                                         ; preds = %if.else
  store i32 8, i32* %bit, align 4, !dbg !5484
  br label %if.end, !dbg !5485

if.else3:                                         ; preds = %if.else
  store i32 -22, i32* %retval, align 4, !dbg !5486
  br label %return, !dbg !5486

if.end:                                           ; preds = %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %5 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5487
  %call = call i32 @cx24110_readreg(%struct.cx24110_state* %5, i8 zeroext 119) #8, !dbg !5488
  store i32 %call, i32* %rv, align 4, !dbg !5489
  %6 = load i32, i32* %rv, align 4, !dbg !5490
  %and = and i32 %6, 4, !dbg !5492
  %tobool = icmp ne i32 %and, 0, !dbg !5492
  br i1 %tobool, label %if.end7, label %if.then5, !dbg !5493

if.then5:                                         ; preds = %if.end4
  %7 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5494
  %8 = load i32, i32* %rv, align 4, !dbg !5495
  %or = or i32 %8, 4, !dbg !5496
  %call6 = call i32 @cx24110_writereg(%struct.cx24110_state* %7, i32 119, i32 %or) #8, !dbg !5497
  br label %if.end7, !dbg !5497

if.end7:                                          ; preds = %if.then5, %if.end4
  %9 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5498
  %call8 = call i32 @cx24110_readreg(%struct.cx24110_state* %9, i8 zeroext 118) #8, !dbg !5499
  store i32 %call8, i32* %rv, align 4, !dbg !5500
  %10 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5501
  %11 = load i32, i32* %rv, align 4, !dbg !5502
  %and9 = and i32 %11, 144, !dbg !5503
  %or10 = or i32 %and9, 64, !dbg !5504
  %12 = load i32, i32* %bit, align 4, !dbg !5505
  %or11 = or i32 %or10, %12, !dbg !5506
  %call12 = call i32 @cx24110_writereg(%struct.cx24110_state* %10, i32 118, i32 %or11) #8, !dbg !5507
  %13 = load volatile i64, i64* @jiffies, align 8, !dbg !5508
  store i32 100, i32* %m.addr.i, align 4
  %14 = load i32, i32* %m.addr.i, align 4, !dbg !5509
  %15 = call i1 @llvm.is.constant.i32(i32 %14) #9, !dbg !5510
  br i1 %15, label %if.then.i, label %if.else.i, !dbg !5511

if.then.i:                                        ; preds = %if.end7
  %16 = load i32, i32* %m.addr.i, align 4, !dbg !5512
  %cmp.i = icmp slt i32 %16, 0, !dbg !5513
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5514

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5515
  br label %msecs_to_jiffies.exit, !dbg !5515

if.end.i:                                         ; preds = %if.then.i
  %17 = load i32, i32* %m.addr.i, align 4, !dbg !5516
  %call.i = call i64 @_msecs_to_jiffies(i32 %17) #11, !dbg !5517
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5518
  br label %msecs_to_jiffies.exit, !dbg !5518

if.else.i:                                        ; preds = %if.end7
  %18 = load i32, i32* %m.addr.i, align 4, !dbg !5519
  %call2.i = call i64 @__msecs_to_jiffies(i32 %18) #11, !dbg !5520
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5521
  br label %msecs_to_jiffies.exit, !dbg !5521

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %19 = load i64, i64* %retval.i, align 8, !dbg !5522
  %add = add i64 %13, %19, !dbg !5523
  store i64 %add, i64* %timeout, align 8, !dbg !5524
  br label %while.cond, !dbg !5525

while.cond:                                       ; preds = %while.body, %msecs_to_jiffies.exit
  %20 = load i64, i64* %timeout, align 8, !dbg !5526
  %21 = load volatile i64, i64* @jiffies, align 8, !dbg !5526
  %sub = sub i64 %20, %21, !dbg !5526
  %cmp14 = icmp slt i64 %sub, 0, !dbg !5526
  br i1 %cmp14, label %land.end, label %land.rhs, !dbg !5527

land.rhs:                                         ; preds = %while.cond
  %22 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5528
  %call15 = call i32 @cx24110_readreg(%struct.cx24110_state* %22, i8 zeroext 118) #8, !dbg !5529
  %and16 = and i32 %call15, 64, !dbg !5530
  %tobool17 = icmp ne i32 %and16, 0, !dbg !5531
  %lnot = xor i1 %tobool17, true, !dbg !5531
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !5532
  br i1 %23, label %while.body, label %while.end, !dbg !5525

while.body:                                       ; preds = %land.end
  br label %while.cond, !dbg !5525, !llvm.loop !5533

while.end:                                        ; preds = %land.end
  store i32 0, i32* %retval, align 4, !dbg !5535
  br label %return, !dbg !5535

return:                                           ; preds = %while.end, %if.else3
  %24 = load i32, i32* %retval, align 4, !dbg !5536
  ret i32 %24, !dbg !5536
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24110_set_tone(%struct.dvb_frontend* %fe, i32 %tone) #0 !dbg !5537 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %tone.addr = alloca i32, align 4
  %state = alloca %struct.cx24110_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5538, metadata !DIExpression()), !dbg !5539
  store i32 %tone, i32* %tone.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tone.addr, metadata !5540, metadata !DIExpression()), !dbg !5541
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state, metadata !5542, metadata !DIExpression()), !dbg !5543
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5544
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5545
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5545
  %2 = bitcast i8* %1 to %struct.cx24110_state*, !dbg !5544
  store %struct.cx24110_state* %2, %struct.cx24110_state** %state, align 8, !dbg !5543
  %3 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5546
  %4 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5547
  %call = call i32 @cx24110_readreg(%struct.cx24110_state* %4, i8 zeroext 118) #8, !dbg !5548
  %and = and i32 %call, -17, !dbg !5549
  %5 = load i32, i32* %tone.addr, align 4, !dbg !5550
  %cmp = icmp eq i32 %5, 0, !dbg !5551
  %6 = zext i1 %cmp to i64, !dbg !5552
  %cond = select i1 %cmp, i32 16, i32 0, !dbg !5552
  %or = or i32 %and, %cond, !dbg !5553
  %call1 = call i32 @cx24110_writereg(%struct.cx24110_state* %3, i32 118, i32 %or) #8, !dbg !5554
  ret i32 %call1, !dbg !5555
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24110_set_voltage(%struct.dvb_frontend* %fe, i32 %voltage) #0 !dbg !5556 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %voltage.addr = alloca i32, align 4
  %state = alloca %struct.cx24110_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5557, metadata !DIExpression()), !dbg !5558
  store i32 %voltage, i32* %voltage.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %voltage.addr, metadata !5559, metadata !DIExpression()), !dbg !5560
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state, metadata !5561, metadata !DIExpression()), !dbg !5562
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5563
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5564
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5564
  %2 = bitcast i8* %1 to %struct.cx24110_state*, !dbg !5563
  store %struct.cx24110_state* %2, %struct.cx24110_state** %state, align 8, !dbg !5562
  %3 = load i32, i32* %voltage.addr, align 4, !dbg !5565
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ], !dbg !5566

sw.bb:                                            ; preds = %entry
  %4 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5567
  %5 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5569
  %call = call i32 @cx24110_readreg(%struct.cx24110_state* %5, i8 zeroext 118) #8, !dbg !5570
  %and = and i32 %call, 59, !dbg !5571
  %or = or i32 %and, 192, !dbg !5572
  %call1 = call i32 @cx24110_writereg(%struct.cx24110_state* %4, i32 118, i32 %or) #8, !dbg !5573
  store i32 %call1, i32* %retval, align 4, !dbg !5574
  br label %return, !dbg !5574

sw.bb2:                                           ; preds = %entry
  %6 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5575
  %7 = load %struct.cx24110_state*, %struct.cx24110_state** %state, align 8, !dbg !5576
  %call3 = call i32 @cx24110_readreg(%struct.cx24110_state* %7, i8 zeroext 118) #8, !dbg !5577
  %and4 = and i32 %call3, 59, !dbg !5578
  %or5 = or i32 %and4, 64, !dbg !5579
  %call6 = call i32 @cx24110_writereg(%struct.cx24110_state* %6, i32 118, i32 %or5) #8, !dbg !5580
  store i32 %call6, i32* %retval, align 4, !dbg !5581
  br label %return, !dbg !5581

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5582
  br label %return, !dbg !5582

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb
  %8 = load i32, i32* %retval, align 4, !dbg !5583
  ret i32 %8, !dbg !5583
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24110_writereg(%struct.cx24110_state* %state, i32 %reg, i32 %data) #0 !dbg !5584 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.cx24110_state*, align 8
  %reg.addr = alloca i32, align 4
  %data.addr = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  %err = alloca i32, align 4
  store %struct.cx24110_state* %state, %struct.cx24110_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state.addr, metadata !5587, metadata !DIExpression()), !dbg !5588
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5589, metadata !DIExpression()), !dbg !5590
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !5591, metadata !DIExpression()), !dbg !5592
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !5593, metadata !DIExpression()), !dbg !5595
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5596
  %0 = load i32, i32* %reg.addr, align 4, !dbg !5597
  %conv = trunc i32 %0 to i8, !dbg !5597
  store i8 %conv, i8* %arrayinit.begin, align 1, !dbg !5596
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !5596
  %1 = load i32, i32* %data.addr, align 4, !dbg !5598
  %conv1 = trunc i32 %1 to i8, !dbg !5598
  store i8 %conv1, i8* %arrayinit.element, align 1, !dbg !5596
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5599, metadata !DIExpression()), !dbg !5600
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5601
  %2 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5602
  %config = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %2, i32 0, i32 1, !dbg !5603
  %3 = load %struct.cx24110_config*, %struct.cx24110_config** %config, align 8, !dbg !5603
  %demod_address = getelementptr inbounds %struct.cx24110_config, %struct.cx24110_config* %3, i32 0, i32 0, !dbg !5604
  %4 = load i8, i8* %demod_address, align 1, !dbg !5604
  %conv2 = zext i8 %4 to i16, !dbg !5602
  store i16 %conv2, i16* %addr, align 8, !dbg !5601
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5601
  store i16 0, i16* %flags, align 2, !dbg !5601
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5601
  store i16 2, i16* %len, align 4, !dbg !5601
  %buf3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5601
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5605
  store i8* %arraydecay, i8** %buf3, align 8, !dbg !5601
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5606, metadata !DIExpression()), !dbg !5607
  %5 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5608
  %i2c = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %5, i32 0, i32 0, !dbg !5610
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5610
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %6, %struct.i2c_msg* %msg, i32 1) #8, !dbg !5611
  store i32 %call, i32* %err, align 4, !dbg !5612
  %cmp = icmp ne i32 %call, 1, !dbg !5613
  br i1 %cmp, label %if.then, label %if.end7, !dbg !5614

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5615

do.body:                                          ; preds = %if.then
  %7 = load i32, i32* @debug, align 4, !dbg !5617
  %tobool = icmp ne i32 %7, 0, !dbg !5617
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5620

if.then5:                                         ; preds = %do.body
  %8 = load i32, i32* %err, align 4, !dbg !5617
  %9 = load i32, i32* %reg.addr, align 4, !dbg !5617
  %10 = load i32, i32* %data.addr, align 4, !dbg !5617
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cx24110_writereg, i64 0, i64 0), i32 %8, i32 %9, i32 %10) #13, !dbg !5617
  br label %if.end, !dbg !5617

if.end:                                           ; preds = %if.then5, %do.body
  br label %do.end, !dbg !5620

do.end:                                           ; preds = %if.end
  store i32 -121, i32* %retval, align 4, !dbg !5621
  br label %return, !dbg !5621

if.end7:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5622
  br label %return, !dbg !5622

return:                                           ; preds = %if.end7, %do.end
  %11 = load i32, i32* %retval, align 4, !dbg !5623
  ret i32 %11, !dbg !5623
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24110_set_inversion(%struct.cx24110_state* %state, i32 %inversion) #0 !dbg !5624 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.cx24110_state*, align 8
  %inversion.addr = alloca i32, align 4
  store %struct.cx24110_state* %state, %struct.cx24110_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state.addr, metadata !5627, metadata !DIExpression()), !dbg !5628
  store i32 %inversion, i32* %inversion.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %inversion.addr, metadata !5629, metadata !DIExpression()), !dbg !5630
  %0 = load i32, i32* %inversion.addr, align 4, !dbg !5631
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb17
  ], !dbg !5632

sw.bb:                                            ; preds = %entry
  %1 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5633
  %2 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5635
  %call = call i32 @cx24110_readreg(%struct.cx24110_state* %2, i8 zeroext 55) #8, !dbg !5636
  %or = or i32 %call, 1, !dbg !5637
  %call1 = call i32 @cx24110_writereg(%struct.cx24110_state* %1, i32 55, i32 %or) #8, !dbg !5638
  %3 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5639
  %4 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5640
  %call2 = call i32 @cx24110_readreg(%struct.cx24110_state* %4, i8 zeroext 5) #8, !dbg !5641
  %and = and i32 %call2, 247, !dbg !5642
  %call3 = call i32 @cx24110_writereg(%struct.cx24110_state* %3, i32 5, i32 %and) #8, !dbg !5643
  %5 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5644
  %6 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5645
  %call4 = call i32 @cx24110_readreg(%struct.cx24110_state* %6, i8 zeroext 34) #8, !dbg !5646
  %and5 = and i32 %call4, 239, !dbg !5647
  %call6 = call i32 @cx24110_writereg(%struct.cx24110_state* %5, i32 34, i32 %and5) #8, !dbg !5648
  br label %sw.epilog, !dbg !5649

sw.bb7:                                           ; preds = %entry
  %7 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5650
  %8 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5651
  %call8 = call i32 @cx24110_readreg(%struct.cx24110_state* %8, i8 zeroext 55) #8, !dbg !5652
  %or9 = or i32 %call8, 1, !dbg !5653
  %call10 = call i32 @cx24110_writereg(%struct.cx24110_state* %7, i32 55, i32 %or9) #8, !dbg !5654
  %9 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5655
  %10 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5656
  %call11 = call i32 @cx24110_readreg(%struct.cx24110_state* %10, i8 zeroext 5) #8, !dbg !5657
  %or12 = or i32 %call11, 8, !dbg !5658
  %call13 = call i32 @cx24110_writereg(%struct.cx24110_state* %9, i32 5, i32 %or12) #8, !dbg !5659
  %11 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5660
  %12 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5661
  %call14 = call i32 @cx24110_readreg(%struct.cx24110_state* %12, i8 zeroext 34) #8, !dbg !5662
  %or15 = or i32 %call14, 16, !dbg !5663
  %call16 = call i32 @cx24110_writereg(%struct.cx24110_state* %11, i32 34, i32 %or15) #8, !dbg !5664
  br label %sw.epilog, !dbg !5665

sw.bb17:                                          ; preds = %entry
  %13 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5666
  %14 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5667
  %call18 = call i32 @cx24110_readreg(%struct.cx24110_state* %14, i8 zeroext 55) #8, !dbg !5668
  %and19 = and i32 %call18, 254, !dbg !5669
  %call20 = call i32 @cx24110_writereg(%struct.cx24110_state* %13, i32 55, i32 %and19) #8, !dbg !5670
  br label %sw.epilog, !dbg !5671

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5672
  br label %return, !dbg !5672

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb7, %sw.bb
  store i32 0, i32* %retval, align 4, !dbg !5673
  br label %return, !dbg !5673

return:                                           ; preds = %sw.epilog, %sw.default
  %15 = load i32, i32* %retval, align 4, !dbg !5674
  ret i32 %15, !dbg !5674
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24110_set_fec(%struct.cx24110_state* %state, i32 %fec) #0 !dbg !411 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.cx24110_state*, align 8
  %fec.addr = alloca i32, align 4
  store %struct.cx24110_state* %state, %struct.cx24110_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state.addr, metadata !5675, metadata !DIExpression()), !dbg !5676
  store i32 %fec, i32* %fec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fec.addr, metadata !5677, metadata !DIExpression()), !dbg !5678
  %0 = load i32, i32* %fec.addr, align 4, !dbg !5679
  %cmp = icmp ugt i32 %0, 9, !dbg !5681
  br i1 %cmp, label %if.then, label %if.end, !dbg !5682

if.then:                                          ; preds = %entry
  store i32 9, i32* %fec.addr, align 4, !dbg !5683
  br label %if.end, !dbg !5684

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %fec.addr, align 4, !dbg !5685
  %cmp1 = icmp eq i32 %1, 9, !dbg !5687
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !5688

if.then2:                                         ; preds = %if.end
  %2 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5689
  %3 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5691
  %call = call i32 @cx24110_readreg(%struct.cx24110_state* %3, i8 zeroext 55) #8, !dbg !5692
  %and = and i32 %call, 223, !dbg !5693
  %call3 = call i32 @cx24110_writereg(%struct.cx24110_state* %2, i32 55, i32 %and) #8, !dbg !5694
  %4 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5695
  %call4 = call i32 @cx24110_writereg(%struct.cx24110_state* %4, i32 24, i32 174) #8, !dbg !5696
  %5 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5697
  %6 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5698
  %call5 = call i32 @cx24110_readreg(%struct.cx24110_state* %6, i8 zeroext 5) #8, !dbg !5699
  %and6 = and i32 %call5, 240, !dbg !5700
  %or = or i32 %and6, 3, !dbg !5701
  %call7 = call i32 @cx24110_writereg(%struct.cx24110_state* %5, i32 5, i32 %or) #8, !dbg !5702
  %7 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5703
  %8 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5704
  %call8 = call i32 @cx24110_readreg(%struct.cx24110_state* %8, i8 zeroext 34) #8, !dbg !5705
  %and9 = and i32 %call8, 240, !dbg !5706
  %or10 = or i32 %and9, 3, !dbg !5707
  %call11 = call i32 @cx24110_writereg(%struct.cx24110_state* %7, i32 34, i32 %or10) #8, !dbg !5708
  %9 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5709
  %call12 = call i32 @cx24110_writereg(%struct.cx24110_state* %9, i32 26, i32 5) #8, !dbg !5710
  %10 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5711
  %call13 = call i32 @cx24110_writereg(%struct.cx24110_state* %10, i32 27, i32 6) #8, !dbg !5712
  store i32 0, i32* %retval, align 4, !dbg !5713
  br label %return, !dbg !5713

if.else:                                          ; preds = %if.end
  %11 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5714
  %12 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5716
  %call14 = call i32 @cx24110_readreg(%struct.cx24110_state* %12, i8 zeroext 55) #8, !dbg !5717
  %or15 = or i32 %call14, 32, !dbg !5718
  %call16 = call i32 @cx24110_writereg(%struct.cx24110_state* %11, i32 55, i32 %or15) #8, !dbg !5719
  %13 = load i32, i32* %fec.addr, align 4, !dbg !5720
  %idxprom = zext i32 %13 to i64, !dbg !5722
  %arrayidx = getelementptr [9 x i32], [9 x i32]* @cx24110_set_fec.rate, i64 0, i64 %idxprom, !dbg !5722
  %14 = load i32, i32* %arrayidx, align 4, !dbg !5722
  %cmp17 = icmp slt i32 %14, 0, !dbg !5723
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !5724

if.then18:                                        ; preds = %if.else
  store i32 -22, i32* %retval, align 4, !dbg !5725
  br label %return, !dbg !5725

if.end19:                                         ; preds = %if.else
  %15 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5726
  %16 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5727
  %call20 = call i32 @cx24110_readreg(%struct.cx24110_state* %16, i8 zeroext 5) #8, !dbg !5728
  %and21 = and i32 %call20, 240, !dbg !5729
  %17 = load i32, i32* %fec.addr, align 4, !dbg !5730
  %idxprom22 = zext i32 %17 to i64, !dbg !5731
  %arrayidx23 = getelementptr [9 x i32], [9 x i32]* @cx24110_set_fec.rate, i64 0, i64 %idxprom22, !dbg !5731
  %18 = load i32, i32* %arrayidx23, align 4, !dbg !5731
  %or24 = or i32 %and21, %18, !dbg !5732
  %call25 = call i32 @cx24110_writereg(%struct.cx24110_state* %15, i32 5, i32 %or24) #8, !dbg !5733
  %19 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5734
  %20 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5735
  %call26 = call i32 @cx24110_readreg(%struct.cx24110_state* %20, i8 zeroext 34) #8, !dbg !5736
  %and27 = and i32 %call26, 240, !dbg !5737
  %21 = load i32, i32* %fec.addr, align 4, !dbg !5738
  %idxprom28 = zext i32 %21 to i64, !dbg !5739
  %arrayidx29 = getelementptr [9 x i32], [9 x i32]* @cx24110_set_fec.rate, i64 0, i64 %idxprom28, !dbg !5739
  %22 = load i32, i32* %arrayidx29, align 4, !dbg !5739
  %or30 = or i32 %and27, %22, !dbg !5740
  %call31 = call i32 @cx24110_writereg(%struct.cx24110_state* %19, i32 34, i32 %or30) #8, !dbg !5741
  %23 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5742
  %24 = load i32, i32* %fec.addr, align 4, !dbg !5743
  %idxprom32 = zext i32 %24 to i64, !dbg !5744
  %arrayidx33 = getelementptr [9 x i32], [9 x i32]* @cx24110_set_fec.g1, i64 0, i64 %idxprom32, !dbg !5744
  %25 = load i32, i32* %arrayidx33, align 4, !dbg !5744
  %call34 = call i32 @cx24110_writereg(%struct.cx24110_state* %23, i32 26, i32 %25) #8, !dbg !5745
  %26 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5746
  %27 = load i32, i32* %fec.addr, align 4, !dbg !5747
  %idxprom35 = zext i32 %27 to i64, !dbg !5748
  %arrayidx36 = getelementptr [9 x i32], [9 x i32]* @cx24110_set_fec.g2, i64 0, i64 %idxprom35, !dbg !5748
  %28 = load i32, i32* %arrayidx36, align 4, !dbg !5748
  %call37 = call i32 @cx24110_writereg(%struct.cx24110_state* %26, i32 27, i32 %28) #8, !dbg !5749
  br label %if.end38

if.end38:                                         ; preds = %if.end19
  store i32 0, i32* %retval, align 4, !dbg !5750
  br label %return, !dbg !5750

return:                                           ; preds = %if.end38, %if.then18, %if.then2
  %29 = load i32, i32* %retval, align 4, !dbg !5751
  ret i32 %29, !dbg !5751
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24110_set_symbolrate(%struct.cx24110_state* %state, i32 %srate) #0 !dbg !4452 {
entry:
  %state.addr = alloca %struct.cx24110_state*, align 8
  %srate.addr = alloca i32, align 4
  %ratio = alloca i32, align 4
  %tmp = alloca i32, align 4
  %fclk = alloca i32, align 4
  %BDRI = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.cx24110_state* %state, %struct.cx24110_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state.addr, metadata !5752, metadata !DIExpression()), !dbg !5753
  store i32 %srate, i32* %srate.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %srate.addr, metadata !5754, metadata !DIExpression()), !dbg !5755
  call void @llvm.dbg.declare(metadata i32* %ratio, metadata !5756, metadata !DIExpression()), !dbg !5757
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5758, metadata !DIExpression()), !dbg !5759
  call void @llvm.dbg.declare(metadata i32* %fclk, metadata !5760, metadata !DIExpression()), !dbg !5761
  call void @llvm.dbg.declare(metadata i32* %BDRI, metadata !5762, metadata !DIExpression()), !dbg !5763
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5764, metadata !DIExpression()), !dbg !5765
  br label %do.body, !dbg !5766

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !5767
  %tobool = icmp ne i32 %0, 0, !dbg !5767
  br i1 %tobool, label %if.then, label %if.end, !dbg !5770

if.then:                                          ; preds = %do.body
  %1 = load i32, i32* %srate.addr, align 4, !dbg !5767
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.cx24110_set_symbolrate, i64 0, i64 0), i32 %1) #13, !dbg !5767
  br label %if.end, !dbg !5767

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5770

do.end:                                           ; preds = %if.end
  %2 = load i32, i32* %srate.addr, align 4, !dbg !5771
  %conv = zext i32 %2 to i64, !dbg !5771
  %cmp = icmp ugt i64 %conv, 45499500, !dbg !5773
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5774

if.then2:                                         ; preds = %do.end
  store i32 45499500, i32* %srate.addr, align 4, !dbg !5775
  br label %if.end3, !dbg !5776

if.end3:                                          ; preds = %if.then2, %do.end
  %3 = load i32, i32* %srate.addr, align 4, !dbg !5777
  %cmp4 = icmp ult i32 %3, 500000, !dbg !5779
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !5780

if.then6:                                         ; preds = %if.end3
  store i32 500000, i32* %srate.addr, align 4, !dbg !5781
  br label %if.end7, !dbg !5782

if.end7:                                          ; preds = %if.then6, %if.end3
  store i32 0, i32* %i, align 4, !dbg !5783
  br label %for.cond, !dbg !5785

for.cond:                                         ; preds = %for.inc, %if.end7
  %4 = load i32, i32* %i, align 4, !dbg !5786
  %conv8 = sext i32 %4 to i64, !dbg !5786
  %cmp9 = icmp ult i64 %conv8, 3, !dbg !5788
  br i1 %cmp9, label %land.rhs, label %land.end, !dbg !5789

land.rhs:                                         ; preds = %for.cond
  %5 = load i32, i32* %srate.addr, align 4, !dbg !5790
  %6 = load i32, i32* %i, align 4, !dbg !5791
  %idxprom = sext i32 %6 to i64, !dbg !5792
  %arrayidx = getelementptr [3 x i32], [3 x i32]* @cx24110_set_symbolrate.bands, i64 0, i64 %idxprom, !dbg !5792
  %7 = load i32, i32* %arrayidx, align 4, !dbg !5792
  %cmp11 = icmp ugt i32 %5, %7, !dbg !5793
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp11, %land.rhs ], !dbg !5794
  br i1 %8, label %for.body, label %for.end, !dbg !5795

for.body:                                         ; preds = %land.end
  br label %for.inc, !dbg !5795

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !5796
  %inc = add i32 %9, 1, !dbg !5796
  store i32 %inc, i32* %i, align 4, !dbg !5796
  br label %for.cond, !dbg !5797, !llvm.loop !5798

for.end:                                          ; preds = %land.end
  %10 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5800
  %call13 = call i32 @cx24110_readreg(%struct.cx24110_state* %10, i8 zeroext 7) #8, !dbg !5801
  %and = and i32 %call13, 252, !dbg !5802
  store i32 %and, i32* %tmp, align 4, !dbg !5803
  %11 = load i32, i32* %srate.addr, align 4, !dbg !5804
  %conv14 = zext i32 %11 to i64, !dbg !5804
  %cmp15 = icmp ult i64 %conv14, 22749750, !dbg !5806
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !5807

if.then17:                                        ; preds = %for.end
  %12 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5808
  %13 = load i32, i32* %tmp, align 4, !dbg !5810
  %call18 = call i32 @cx24110_writereg(%struct.cx24110_state* %12, i32 7, i32 %13) #8, !dbg !5811
  %14 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5812
  %call19 = call i32 @cx24110_writereg(%struct.cx24110_state* %14, i32 6, i32 120) #8, !dbg !5813
  store i32 45499500, i32* %fclk, align 4, !dbg !5814
  br label %if.end40, !dbg !5815

if.else:                                          ; preds = %for.end
  %15 = load i32, i32* %srate.addr, align 4, !dbg !5816
  %conv20 = zext i32 %15 to i64, !dbg !5816
  %cmp21 = icmp ult i64 %conv20, 30333000, !dbg !5818
  br i1 %cmp21, label %if.then23, label %if.else26, !dbg !5819

if.then23:                                        ; preds = %if.else
  %16 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5820
  %17 = load i32, i32* %tmp, align 4, !dbg !5822
  %or = or i32 %17, 1, !dbg !5823
  %call24 = call i32 @cx24110_writereg(%struct.cx24110_state* %16, i32 7, i32 %or) #8, !dbg !5824
  %18 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5825
  %call25 = call i32 @cx24110_writereg(%struct.cx24110_state* %18, i32 6, i32 165) #8, !dbg !5826
  store i32 60666000, i32* %fclk, align 4, !dbg !5827
  br label %if.end39, !dbg !5828

if.else26:                                        ; preds = %if.else
  %19 = load i32, i32* %srate.addr, align 4, !dbg !5829
  %conv27 = zext i32 %19 to i64, !dbg !5829
  %cmp28 = icmp ult i64 %conv27, 40444000, !dbg !5831
  br i1 %cmp28, label %if.then30, label %if.else34, !dbg !5832

if.then30:                                        ; preds = %if.else26
  %20 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5833
  %21 = load i32, i32* %tmp, align 4, !dbg !5835
  %or31 = or i32 %21, 2, !dbg !5836
  %call32 = call i32 @cx24110_writereg(%struct.cx24110_state* %20, i32 7, i32 %or31) #8, !dbg !5837
  %22 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5838
  %call33 = call i32 @cx24110_writereg(%struct.cx24110_state* %22, i32 6, i32 135) #8, !dbg !5839
  store i32 80888000, i32* %fclk, align 4, !dbg !5840
  br label %if.end38, !dbg !5841

if.else34:                                        ; preds = %if.else26
  %23 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5842
  %24 = load i32, i32* %tmp, align 4, !dbg !5844
  %or35 = or i32 %24, 3, !dbg !5845
  %call36 = call i32 @cx24110_writereg(%struct.cx24110_state* %23, i32 7, i32 %or35) #8, !dbg !5846
  %25 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5847
  %call37 = call i32 @cx24110_writereg(%struct.cx24110_state* %25, i32 6, i32 120) #8, !dbg !5848
  store i32 90999000, i32* %fclk, align 4, !dbg !5849
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.then30
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then23
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then17
  br label %do.body41, !dbg !5850

do.body41:                                        ; preds = %if.end40
  %26 = load i32, i32* @debug, align 4, !dbg !5851
  %tobool42 = icmp ne i32 %26, 0, !dbg !5851
  br i1 %tobool42, label %if.then43, label %if.end45, !dbg !5854

if.then43:                                        ; preds = %do.body41
  %27 = load i32, i32* %fclk, align 4, !dbg !5851
  %call44 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %27) #13, !dbg !5851
  br label %if.end45, !dbg !5851

if.end45:                                         ; preds = %if.then43, %do.body41
  br label %do.end46, !dbg !5854

do.end46:                                         ; preds = %if.end45
  %28 = load i32, i32* %srate.addr, align 4, !dbg !5855
  %shl = shl i32 %28, 6, !dbg !5856
  store i32 %shl, i32* %tmp, align 4, !dbg !5857
  %29 = load i32, i32* %fclk, align 4, !dbg !5858
  %shr = lshr i32 %29, 2, !dbg !5859
  store i32 %shr, i32* %BDRI, align 4, !dbg !5860
  %30 = load i32, i32* %tmp, align 4, !dbg !5861
  %31 = load i32, i32* %BDRI, align 4, !dbg !5862
  %div = udiv i32 %30, %31, !dbg !5863
  store i32 %div, i32* %ratio, align 4, !dbg !5864
  %32 = load i32, i32* %tmp, align 4, !dbg !5865
  %33 = load i32, i32* %BDRI, align 4, !dbg !5866
  %rem = urem i32 %32, %33, !dbg !5867
  %shl47 = shl i32 %rem, 8, !dbg !5868
  store i32 %shl47, i32* %tmp, align 4, !dbg !5869
  %34 = load i32, i32* %ratio, align 4, !dbg !5870
  %shl48 = shl i32 %34, 8, !dbg !5871
  %35 = load i32, i32* %tmp, align 4, !dbg !5872
  %36 = load i32, i32* %BDRI, align 4, !dbg !5873
  %div49 = udiv i32 %35, %36, !dbg !5874
  %add = add i32 %shl48, %div49, !dbg !5875
  store i32 %add, i32* %ratio, align 4, !dbg !5876
  %37 = load i32, i32* %tmp, align 4, !dbg !5877
  %38 = load i32, i32* %BDRI, align 4, !dbg !5878
  %rem50 = urem i32 %37, %38, !dbg !5879
  %shl51 = shl i32 %rem50, 8, !dbg !5880
  store i32 %shl51, i32* %tmp, align 4, !dbg !5881
  %39 = load i32, i32* %ratio, align 4, !dbg !5882
  %shl52 = shl i32 %39, 8, !dbg !5883
  %40 = load i32, i32* %tmp, align 4, !dbg !5884
  %41 = load i32, i32* %BDRI, align 4, !dbg !5885
  %div53 = udiv i32 %40, %41, !dbg !5886
  %add54 = add i32 %shl52, %div53, !dbg !5887
  store i32 %add54, i32* %ratio, align 4, !dbg !5888
  %42 = load i32, i32* %tmp, align 4, !dbg !5889
  %43 = load i32, i32* %BDRI, align 4, !dbg !5890
  %rem55 = urem i32 %42, %43, !dbg !5891
  %shl56 = shl i32 %rem55, 1, !dbg !5892
  store i32 %shl56, i32* %tmp, align 4, !dbg !5893
  %44 = load i32, i32* %ratio, align 4, !dbg !5894
  %shl57 = shl i32 %44, 1, !dbg !5895
  %45 = load i32, i32* %tmp, align 4, !dbg !5896
  %46 = load i32, i32* %BDRI, align 4, !dbg !5897
  %div58 = udiv i32 %45, %46, !dbg !5898
  %add59 = add i32 %shl57, %div58, !dbg !5899
  store i32 %add59, i32* %ratio, align 4, !dbg !5900
  br label %do.body60, !dbg !5901

do.body60:                                        ; preds = %do.end46
  %47 = load i32, i32* @debug, align 4, !dbg !5902
  %tobool61 = icmp ne i32 %47, 0, !dbg !5902
  br i1 %tobool61, label %if.then62, label %if.end66, !dbg !5905

if.then62:                                        ; preds = %do.body60
  %48 = load i32, i32* %srate.addr, align 4, !dbg !5902
  %49 = load i32, i32* %i, align 4, !dbg !5902
  %50 = load i32, i32* %i, align 4, !dbg !5902
  %idxprom63 = sext i32 %50 to i64, !dbg !5902
  %arrayidx64 = getelementptr [3 x i32], [3 x i32]* @cx24110_set_symbolrate.bands, i64 0, i64 %idxprom63, !dbg !5902
  %51 = load i32, i32* %arrayidx64, align 4, !dbg !5902
  %call65 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %48, i32 %49, i32 %51) #13, !dbg !5902
  br label %if.end66, !dbg !5902

if.end66:                                         ; preds = %if.then62, %do.body60
  br label %do.end67, !dbg !5905

do.end67:                                         ; preds = %if.end66
  br label %do.body68, !dbg !5906

do.body68:                                        ; preds = %do.end67
  %52 = load i32, i32* @debug, align 4, !dbg !5907
  %tobool69 = icmp ne i32 %52, 0, !dbg !5907
  br i1 %tobool69, label %if.then70, label %if.end72, !dbg !5910

if.then70:                                        ; preds = %do.body68
  %53 = load i32, i32* %fclk, align 4, !dbg !5907
  %call71 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %53) #13, !dbg !5907
  br label %if.end72, !dbg !5907

if.end72:                                         ; preds = %if.then70, %do.body68
  br label %do.end73, !dbg !5910

do.end73:                                         ; preds = %if.end72
  br label %do.body74, !dbg !5911

do.body74:                                        ; preds = %do.end73
  %54 = load i32, i32* @debug, align 4, !dbg !5912
  %tobool75 = icmp ne i32 %54, 0, !dbg !5912
  br i1 %tobool75, label %if.then76, label %if.end78, !dbg !5915

if.then76:                                        ; preds = %do.body74
  %55 = load i32, i32* %ratio, align 4, !dbg !5912
  %call77 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %55) #13, !dbg !5912
  br label %if.end78, !dbg !5912

if.end78:                                         ; preds = %if.then76, %do.body74
  br label %do.end79, !dbg !5915

do.end79:                                         ; preds = %if.end78
  %56 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5916
  %57 = load i32, i32* %ratio, align 4, !dbg !5917
  %shr80 = lshr i32 %57, 16, !dbg !5918
  %and81 = and i32 %shr80, 255, !dbg !5919
  %call82 = call i32 @cx24110_writereg(%struct.cx24110_state* %56, i32 1, i32 %and81) #8, !dbg !5920
  %58 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5921
  %59 = load i32, i32* %ratio, align 4, !dbg !5922
  %shr83 = lshr i32 %59, 8, !dbg !5923
  %and84 = and i32 %shr83, 255, !dbg !5924
  %call85 = call i32 @cx24110_writereg(%struct.cx24110_state* %58, i32 2, i32 %and84) #8, !dbg !5925
  %60 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5926
  %61 = load i32, i32* %ratio, align 4, !dbg !5927
  %and86 = and i32 %61, 255, !dbg !5928
  %call87 = call i32 @cx24110_writereg(%struct.cx24110_state* %60, i32 3, i32 %and86) #8, !dbg !5929
  ret i32 0, !dbg !5930
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24110_get_fec(%struct.cx24110_state* %state) #0 !dbg !5931 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.cx24110_state*, align 8
  %i = alloca i32, align 4
  store %struct.cx24110_state* %state, %struct.cx24110_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24110_state** %state.addr, metadata !5934, metadata !DIExpression()), !dbg !5935
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5936, metadata !DIExpression()), !dbg !5937
  %0 = load %struct.cx24110_state*, %struct.cx24110_state** %state.addr, align 8, !dbg !5938
  %call = call i32 @cx24110_readreg(%struct.cx24110_state* %0, i8 zeroext 34) #8, !dbg !5939
  %and = and i32 %call, 15, !dbg !5940
  store i32 %and, i32* %i, align 4, !dbg !5941
  %1 = load i32, i32* %i, align 4, !dbg !5942
  %and1 = and i32 %1, 8, !dbg !5944
  %tobool = icmp ne i32 %and1, 0, !dbg !5944
  br i1 %tobool, label %if.else, label %if.then, !dbg !5945

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %i, align 4, !dbg !5946
  %add = add i32 1, %2, !dbg !5948
  %sub = sub i32 %add, 1, !dbg !5949
  store i32 %sub, i32* %retval, align 4, !dbg !5950
  br label %return, !dbg !5950

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5951
  br label %return, !dbg !5951

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !5953
  ret i32 %3, !dbg !5953
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !5954 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !5955, metadata !DIExpression()), !dbg !5956
  %0 = load i32, i32* %m.addr, align 4, !dbg !5957
  %conv = zext i32 %0 to i64, !dbg !5957
  %add = add i64 %conv, 4, !dbg !5958
  %sub = sub i64 %add, 1, !dbg !5959
  %div = sdiv i64 %sub, 4, !dbg !5960
  ret i64 %div, !dbg !5961
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #3

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
attributes #12 = { nounwind readonly }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4462, !4463, !4464, !4465}
!llvm.ident = !{!4466}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cx24110_ops", scope: !2, file: !3, line: 615, type: !4461, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !290, globals: !296, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/cx24110.c", directory: "/home/lizy2001/genbc/linux")
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
!290 = !{!291, !293, !294, !295}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !292, line: 148, baseType: !7)
!292 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!294 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!295 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!296 = !{!297, !368, !373, !378, !383, !388, !393, !398, !0, !400, !409, !4446, !4448, !4450, !4456}
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 649, type: !299, isLocal: true, isDefinition: true, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !301, line: 69, size: 320, elements: !302)
!301 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!302 = !{!303, !307, !311, !331, !338, !342, !346}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 70, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !300, file: !301, line: 71, baseType: !308, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !310, line: 76, flags: DIFlagFwdDecl)
!310 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !300, file: !301, line: 72, baseType: !312, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !301, line: 47, size: 256, elements: !315)
!315 = !{!316, !317, !322, !327}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !301, line: 49, baseType: !7, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !314, file: !301, line: 51, baseType: !318, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!294, !304, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !314, file: !301, line: 53, baseType: !323, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!294, !326, !321}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !314, file: !301, line: 55, baseType: !328, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !293}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !300, file: !301, line: 73, baseType: !332, size: 16, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !334, line: 19, baseType: !335)
!334 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !336, line: 24, baseType: !337)
!336 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!337 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !300, file: !301, line: 74, baseType: !339, size: 8, offset: 208)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !334, line: 16, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !336, line: 20, baseType: !341)
!341 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !301, line: 75, baseType: !343, size: 8, offset: 216)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !334, line: 17, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !336, line: 21, baseType: !345)
!345 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!346 = !DIDerivedType(tag: DW_TAG_member, scope: !300, file: !301, line: 76, baseType: !347, size: 64, offset: 256)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !301, line: 76, size: 64, elements: !348)
!348 = !{!349, !350, !357}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !347, file: !301, line: 77, baseType: !293, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !347, file: !301, line: 78, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !301, line: 86, size: 128, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !353, file: !301, line: 87, baseType: !7, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !353, file: !301, line: 88, baseType: !326, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !347, file: !301, line: 79, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !301, line: 92, size: 256, elements: !361)
!361 = !{!362, !363, !364, !366, !367}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !360, file: !301, line: 94, baseType: !7, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !360, file: !301, line: 95, baseType: !7, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !360, file: !301, line: 96, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !360, file: !301, line: 97, baseType: !312, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !360, file: !301, line: 98, baseType: !293, size: 64, offset: 192)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 649, type: !370, isLocal: true, isDefinition: true, align: 8)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 216, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 27)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 650, type: !375, isLocal: true, isDefinition: true, align: 8)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 520, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 65)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 652, type: !380, isLocal: true, isDefinition: true, align: 8)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 496, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 62)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author223", scope: !2, file: !3, line: 653, type: !385, isLocal: true, isDefinition: true, align: 8)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 240, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 30)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file224", scope: !2, file: !3, line: 654, type: !390, isLocal: true, isDefinition: true, align: 8)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 392, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 49)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license225", scope: !2, file: !3, line: 654, type: !395, isLocal: true, isDefinition: true, align: 8)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 160, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 20)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 34, type: !294, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "cx24110_regdata", scope: !2, file: !3, line: 40, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 608, elements: !407)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 40, size: 16, elements: !404)
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !403, file: !3, line: 40, baseType: !343, size: 8)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !403, file: !3, line: 40, baseType: !343, size: 8, offset: 8)
!407 = !{!408}
!408 = !DISubrange(count: 38)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(name: "rate", scope: !411, file: !3, line: 170, type: !4444, isLocal: true, isDefinition: true)
!411 = distinct !DISubprogram(name: "cx24110_set_fec", scope: !3, file: !3, line: 168, type: !412, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!412 = !DISubroutineType(types: !413)
!413 = !{!294, !414, !87}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cx24110_state", file: !3, line: 21, size: 10496, elements: !416)
!416 = !{!417, !4113, !4120, !4441, !4442, !4443}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !415, file: !3, line: 23, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !420, line: 695, size: 7552, elements: !421)
!420 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!421 = !{!422, !423, !424, !463, !464, !478, !3506, !3507, !3508, !3509, !4060, !4061, !4062, !4066, !4067, !4068, !4069, !4101, !4112}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !419, file: !420, line: 696, baseType: !308, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !419, file: !420, line: 697, baseType: !7, size: 32, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !419, file: !420, line: 698, baseType: !425, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !420, line: 519, size: 320, elements: !428)
!428 = !{!429, !442, !443, !456, !457}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !427, file: !420, line: 529, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!294, !418, !433, !294}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !435, line: 69, size: 128, elements: !436)
!435 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!436 = !{!437, !438, !439, !440}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !434, file: !435, line: 70, baseType: !335, size: 16)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !434, file: !435, line: 71, baseType: !335, size: 16, offset: 16)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !434, file: !435, line: 84, baseType: !335, size: 16, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !434, file: !435, line: 85, baseType: !441, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !427, file: !420, line: 531, baseType: !430, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !427, file: !420, line: 533, baseType: !444, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!294, !418, !333, !337, !306, !343, !294, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !435, line: 135, size: 272, elements: !449)
!449 = !{!450, !451, !452}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !448, file: !435, line: 136, baseType: !344, size: 8)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !448, file: !435, line: 137, baseType: !335, size: 16)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !448, file: !435, line: 138, baseType: !453, size: 272)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 272, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 34)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !427, file: !420, line: 536, baseType: !444, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !427, file: !420, line: 541, baseType: !458, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !418}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !334, line: 21, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !336, line: 27, baseType: !7)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !419, file: !420, line: 699, baseType: !293, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !419, file: !420, line: 702, baseType: !465, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !420, line: 557, size: 192, elements: !468)
!468 = !{!469, !473, !477}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !467, file: !420, line: 558, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !418, !7}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !467, file: !420, line: 559, baseType: !474, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!294, !418, !7}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !467, file: !420, line: 560, baseType: !470, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !419, file: !420, line: 703, baseType: !479, size: 192, offset: 320)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !480, line: 30, size: 192, elements: !481)
!480 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!481 = !{!482, !492, !508}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !479, file: !480, line: 31, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !484, line: 29, baseType: !485)
!484 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !484, line: 20, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !485, file: !484, line: 21, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !489, line: 25, baseType: !490)
!489 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 25, elements: !491)
!491 = !{}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !479, file: !480, line: 32, baseType: !493, size: 128)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !494, line: 125, size: 128, elements: !495)
!494 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!495 = !{!496, !507}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !493, file: !494, line: 126, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !494, line: 31, size: 64, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !497, file: !494, line: 32, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !494, line: 24, size: 192, align: 64, elements: !502)
!502 = !{!503, !505, !506}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !501, file: !494, line: 25, baseType: !504, size: 64)
!504 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !501, file: !494, line: 26, baseType: !500, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !501, file: !494, line: 27, baseType: !500, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !493, file: !494, line: 127, baseType: !500, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !479, file: !480, line: 33, baseType: !509, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !511, line: 640, size: 48640, elements: !512)
!511 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!512 = !{!513, !519, !521, !522, !532, !533, !534, !535, !536, !537, !538, !539, !543, !569, !580, !672, !673, !674, !685, !686, !688, !689, !2810, !2811, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2893, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2908, !2909, !2910, !2912, !2913, !2914, !2915, !2916, !2917, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2941, !2946, !2947, !2948, !2949, !2950, !2952, !2955, !2958, !2961, !2964, !2968, !3069, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3115, !3116, !3117, !3118, !3119, !3124, !3125, !3126, !3129, !3130, !3133, !3136, !3139, !3140, !3172, !3175, !3176, !3255, !3256, !3259, !3260, !3263, !3264, !3265, !3269, !3270, !3271, !3284, !3285, !3286, !3296, !3301, !3302, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !510, file: !511, line: 646, baseType: !514, size: 128)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !515, line: 56, size: 128, elements: !516)
!515 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !514, file: !515, line: 57, baseType: !504, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !514, file: !515, line: 58, baseType: !461, size: 32, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !510, file: !511, line: 649, baseType: !520, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !295)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !510, file: !511, line: 657, baseType: !293, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !510, file: !511, line: 658, baseType: !523, size: 32, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !524, line: 113, baseType: !525)
!524 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !524, line: 111, size: 32, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !525, file: !524, line: 112, baseType: !528, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !292, line: 168, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 166, size: 32, elements: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !529, file: !292, line: 167, baseType: !294, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !510, file: !511, line: 660, baseType: !7, size: 32, offset: 288)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !510, file: !511, line: 661, baseType: !7, size: 32, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !510, file: !511, line: 684, baseType: !294, size: 32, offset: 352)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !510, file: !511, line: 686, baseType: !294, size: 32, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !510, file: !511, line: 687, baseType: !294, size: 32, offset: 416)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !510, file: !511, line: 688, baseType: !294, size: 32, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !510, file: !511, line: 689, baseType: !7, size: 32, offset: 480)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !510, file: !511, line: 691, baseType: !540, size: 64, offset: 512)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !511, line: 691, flags: DIFlagFwdDecl)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !510, file: !511, line: 692, baseType: !544, size: 832, offset: 576)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !511, line: 451, size: 832, elements: !545)
!545 = !{!546, !551, !552, !558, !559, !563, !564, !565, !566, !567}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !544, file: !511, line: 453, baseType: !547, size: 128)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !511, line: 325, size: 128, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !547, file: !511, line: 326, baseType: !504, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !547, file: !511, line: 327, baseType: !461, size: 32, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !544, file: !511, line: 454, baseType: !501, size: 192, align: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !544, file: !511, line: 455, baseType: !553, size: 128, offset: 320)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !292, line: 178, size: 128, elements: !554)
!554 = !{!555, !557}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !553, file: !292, line: 179, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !553, file: !292, line: 179, baseType: !556, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !544, file: !511, line: 456, baseType: !7, size: 32, offset: 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !544, file: !511, line: 458, baseType: !560, size: 64, offset: 512)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !334, line: 23, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !336, line: 31, baseType: !562)
!562 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !544, file: !511, line: 459, baseType: !560, size: 64, offset: 576)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !544, file: !511, line: 460, baseType: !560, size: 64, offset: 640)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !544, file: !511, line: 461, baseType: !560, size: 64, offset: 704)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !544, file: !511, line: 463, baseType: !560, size: 64, offset: 768)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !544, file: !511, line: 465, baseType: !568, offset: 832)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !511, line: 415, elements: !491)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !510, file: !511, line: 693, baseType: !570, size: 384, offset: 1408)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !511, line: 489, size: 384, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !577, !578}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !570, file: !511, line: 490, baseType: !553, size: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !570, file: !511, line: 491, baseType: !504, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !570, file: !511, line: 492, baseType: !504, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !570, file: !511, line: 493, baseType: !7, size: 32, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !570, file: !511, line: 494, baseType: !337, size: 16, offset: 288)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !570, file: !511, line: 495, baseType: !337, size: 16, offset: 304)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !570, file: !511, line: 497, baseType: !579, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !510, file: !511, line: 697, baseType: !581, size: 1792, offset: 1792)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !511, line: 507, size: 1792, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !589, !593, !594, !595, !596, !597, !598, !599, !669, !670}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !581, file: !511, line: 508, baseType: !501, size: 192, align: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !581, file: !511, line: 515, baseType: !560, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !581, file: !511, line: 516, baseType: !560, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !581, file: !511, line: 517, baseType: !560, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !581, file: !511, line: 518, baseType: !560, size: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !581, file: !511, line: 519, baseType: !560, size: 64, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !581, file: !511, line: 526, baseType: !590, size: 64, offset: 512)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !334, line: 22, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !336, line: 30, baseType: !592)
!592 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !581, file: !511, line: 527, baseType: !560, size: 64, offset: 576)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !511, line: 528, baseType: !7, size: 32, offset: 640)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !581, file: !511, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !581, file: !511, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !581, file: !511, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !581, file: !511, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !581, file: !511, line: 563, baseType: !600, size: 512, offset: 704)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !601)
!601 = !{!602, !610, !611, !616, !665, !666, !667, !668}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !600, file: !191, line: 119, baseType: !603, size: 256)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !604, line: 9, size: 256, elements: !605)
!604 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !603, file: !604, line: 10, baseType: !501, size: 192, align: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !603, file: !604, line: 11, baseType: !608, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !609, line: 29, baseType: !590)
!609 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !600, file: !191, line: 120, baseType: !608, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !600, file: !191, line: 121, baseType: !612, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!190, !615}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !600, file: !191, line: 122, baseType: !617, size: 64, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !619)
!619 = !{!620, !640, !641, !645, !655, !656, !660, !664}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !618, file: !191, line: 160, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !622, file: !191, line: 215, baseType: !483)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !622, file: !191, line: 216, baseType: !7, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !622, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !622, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !622, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !622, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !622, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !622, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !622, file: !191, line: 233, baseType: !608, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !622, file: !191, line: 234, baseType: !615, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !622, file: !191, line: 235, baseType: !608, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !622, file: !191, line: 236, baseType: !615, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !622, file: !191, line: 237, baseType: !637, size: 4096, offset: 512)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 4096, elements: !638)
!638 = !{!639}
!639 = !DISubrange(count: 8)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !618, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !618, file: !191, line: 162, baseType: !642, size: 32, offset: 96)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !292, line: 27, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !644, line: 96, baseType: !294)
!644 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!645 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !618, file: !191, line: 163, baseType: !646, size: 32, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !647, line: 276, baseType: !648)
!647 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !647, line: 276, size: 32, elements: !649)
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !648, file: !647, line: 276, baseType: !651, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !647, line: 70, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !647, line: 65, size: 32, elements: !653)
!653 = !{!654}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !652, file: !647, line: 66, baseType: !7, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !618, file: !191, line: 164, baseType: !615, size: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !618, file: !191, line: 165, baseType: !657, size: 128, offset: 256)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !604, line: 14, size: 128, elements: !658)
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !657, file: !604, line: 15, baseType: !493, size: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !618, file: !191, line: 166, baseType: !661, size: 64, offset: 384)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!608}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !618, file: !191, line: 167, baseType: !608, size: 64, offset: 448)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !600, file: !191, line: 123, baseType: !343, size: 8, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !600, file: !191, line: 124, baseType: !343, size: 8, offset: 456)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !600, file: !191, line: 125, baseType: !343, size: 8, offset: 464)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !600, file: !191, line: 126, baseType: !343, size: 8, offset: 472)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !581, file: !511, line: 572, baseType: !600, size: 512, offset: 1216)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !581, file: !511, line: 580, baseType: !671, size: 64, offset: 1728)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !510, file: !511, line: 721, baseType: !7, size: 32, offset: 3584)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !510, file: !511, line: 722, baseType: !294, size: 32, offset: 3616)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !510, file: !511, line: 723, baseType: !675, size: 64, offset: 3648)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !678, line: 17, baseType: !679)
!678 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !678, line: 17, size: 64, elements: !680)
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !679, file: !678, line: 17, baseType: !682, size: 64)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, size: 64, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 1)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !510, file: !511, line: 724, baseType: !677, size: 64, offset: 3712)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !510, file: !511, line: 749, baseType: !687, offset: 3776)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !511, line: 290, elements: !491)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !510, file: !511, line: 751, baseType: !553, size: 128, offset: 3776)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !510, file: !511, line: 757, baseType: !690, size: 64, offset: 3904)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !692, line: 388, size: 7296, elements: !693)
!692 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!693 = !{!694, !2806}
!694 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !692, line: 389, baseType: !695, size: 7296)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !692, line: 389, size: 7296, elements: !696)
!696 = !{!697, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2719, !2725, !2728, !2767, !2768, !2790, !2791, !2794, !2795, !2796, !2799, !2800, !2801, !2804, !2805}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !695, file: !692, line: 390, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !692, line: 305, size: 1472, elements: !700)
!700 = !{!701, !702, !703, !704, !705, !706, !707, !708, !716, !717, !722, !723, !726, !730, !731, !2667, !2668, !2669}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !699, file: !692, line: 308, baseType: !504, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !699, file: !692, line: 309, baseType: !504, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !699, file: !692, line: 313, baseType: !698, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !699, file: !692, line: 313, baseType: !698, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !699, file: !692, line: 315, baseType: !501, size: 192, align: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !699, file: !692, line: 323, baseType: !504, size: 64, offset: 448)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !699, file: !692, line: 327, baseType: !690, size: 64, offset: 512)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !699, file: !692, line: 333, baseType: !709, size: 64, offset: 576)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !710, line: 284, baseType: !711)
!710 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !710, line: 284, size: 64, elements: !712)
!712 = !{!713}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !711, file: !710, line: 284, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !715, line: 19, baseType: !504)
!715 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!716 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !699, file: !692, line: 334, baseType: !504, size: 64, offset: 640)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !699, file: !692, line: 343, baseType: !718, size: 256, offset: 704)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !699, file: !692, line: 340, size: 256, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !718, file: !692, line: 341, baseType: !501, size: 192, align: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !718, file: !692, line: 342, baseType: !504, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !699, file: !692, line: 351, baseType: !553, size: 128, offset: 960)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !699, file: !692, line: 353, baseType: !724, size: 64, offset: 1088)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !692, line: 353, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !699, file: !692, line: 356, baseType: !727, size: 64, offset: 1152)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !692, line: 356, flags: DIFlagFwdDecl)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !699, file: !692, line: 359, baseType: !504, size: 64, offset: 1216)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !699, file: !692, line: 361, baseType: !732, size: 64, offset: 1280)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !734)
!734 = !{!735, !753, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2466, !2651, !2660, !2661, !2662, !2663, !2664, !2665, !2666}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !733, file: !208, line: 920, baseType: !736, size: 128)
!736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !733, file: !208, line: 917, size: 128, elements: !737)
!737 = !{!738, !744}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !736, file: !208, line: 918, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !740, line: 58, size: 64, elements: !741)
!740 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!741 = !{!742}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !739, file: !740, line: 59, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !736, file: !208, line: 919, baseType: !745, size: 128, align: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !292, line: 216, size: 128, align: 64, elements: !746)
!746 = !{!747, !749}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !745, file: !292, line: 217, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !745, file: !292, line: 218, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !748}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !733, file: !208, line: 921, baseType: !754, size: 128, offset: 128)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !755, line: 8, size: 128, elements: !756)
!755 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!756 = !{!757, !761}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !754, file: !755, line: 9, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !760, line: 18, flags: DIFlagFwdDecl)
!760 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!761 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !754, file: !755, line: 10, baseType: !762, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !760, line: 89, size: 1536, elements: !764)
!764 = !{!765, !766, !771, !779, !780, !795, !2396, !2398, !2410, !2411, !2412, !2413, !2414, !2419, !2420, !2421}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !763, file: !760, line: 91, baseType: !7, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !763, file: !760, line: 92, baseType: !767, size: 32, offset: 32)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !647, line: 277, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !647, line: 277, size: 32, elements: !769)
!769 = !{!770}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !768, file: !647, line: 277, baseType: !651, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !763, file: !760, line: 93, baseType: !772, size: 128, offset: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !773, line: 38, size: 128, elements: !774)
!773 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!774 = !{!775, !777}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !772, file: !773, line: 39, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !772, file: !773, line: 39, baseType: !778, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !763, file: !760, line: 94, baseType: !762, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !763, file: !760, line: 95, baseType: !781, size: 128, offset: 256)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !760, line: 47, size: 128, elements: !782)
!782 = !{!783, !792}
!783 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !760, line: 48, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !781, file: !760, line: 48, size: 64, elements: !785)
!785 = !{!786, !791}
!786 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !760, line: 49, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !784, file: !760, line: 49, size: 64, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !787, file: !760, line: 50, baseType: !461, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !787, file: !760, line: 50, baseType: !461, size: 32, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !784, file: !760, line: 52, baseType: !560, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !781, file: !760, line: 54, baseType: !793, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !763, file: !760, line: 96, baseType: !796, size: 64, offset: 384)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !798)
!798 = !{!799, !801, !802, !810, !817, !818, !967, !1785, !1786, !1787, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !2064, !2072, !2073, !2074, !2392, !2393, !2394, !2395}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !797, file: !208, line: 611, baseType: !800, size: 16)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !292, line: 19, baseType: !337)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !797, file: !208, line: 612, baseType: !337, size: 16, offset: 16)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !797, file: !208, line: 613, baseType: !803, size: 32, offset: 32)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !804, line: 23, baseType: !805)
!804 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !804, line: 21, size: 32, elements: !806)
!806 = !{!807}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !805, file: !804, line: 22, baseType: !808, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !292, line: 32, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !644, line: 49, baseType: !7)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !797, file: !208, line: 614, baseType: !811, size: 32, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !804, line: 28, baseType: !812)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !804, line: 26, size: 32, elements: !813)
!813 = !{!814}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !812, file: !804, line: 27, baseType: !815, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !292, line: 33, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !644, line: 50, baseType: !7)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !797, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !797, file: !208, line: 622, baseType: !819, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !822)
!822 = !{!823, !827, !837, !841, !847, !851, !857, !861, !865, !869, !873, !874, !880, !884, !908, !937, !947, !953, !958, !962, !963}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !821, file: !208, line: 1865, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!762, !796, !762, !7}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !821, file: !208, line: 1866, baseType: !828, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!304, !762, !796, !831}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !833, line: 10, size: 128, elements: !834)
!833 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !832, file: !833, line: 11, baseType: !328, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !832, file: !833, line: 12, baseType: !293, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !821, file: !208, line: 1867, baseType: !838, size: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!294, !796, !294}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !821, file: !208, line: 1868, baseType: !842, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!845, !796, !294}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !821, file: !208, line: 1870, baseType: !848, size: 64, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!294, !762, !326, !294}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !821, file: !208, line: 1872, baseType: !852, size: 64, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!294, !796, !762, !800, !855}
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !292, line: 30, baseType: !856)
!856 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !821, file: !208, line: 1873, baseType: !858, size: 64, offset: 384)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!294, !762, !796, !762}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !821, file: !208, line: 1874, baseType: !862, size: 64, offset: 448)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!294, !796, !762}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !821, file: !208, line: 1875, baseType: !866, size: 64, offset: 512)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!294, !796, !762, !304}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !821, file: !208, line: 1876, baseType: !870, size: 64, offset: 576)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!294, !796, !762, !800}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !821, file: !208, line: 1877, baseType: !862, size: 64, offset: 640)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !821, file: !208, line: 1878, baseType: !875, size: 64, offset: 704)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!294, !796, !762, !800, !878}
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !292, line: 16, baseType: !879)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !292, line: 13, baseType: !461)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !821, file: !208, line: 1879, baseType: !881, size: 64, offset: 768)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!294, !796, !762, !796, !762, !7}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !821, file: !208, line: 1881, baseType: !885, size: 64, offset: 832)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!294, !762, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !890)
!890 = !{!891, !892, !893, !894, !895, !898, !905, !906, !907}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !889, file: !208, line: 220, baseType: !7, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !889, file: !208, line: 221, baseType: !800, size: 16, offset: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !889, file: !208, line: 222, baseType: !803, size: 32, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !889, file: !208, line: 223, baseType: !811, size: 32, offset: 96)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !889, file: !208, line: 224, baseType: !896, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !292, line: 46, baseType: !897)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !644, line: 88, baseType: !592)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !889, file: !208, line: 225, baseType: !899, size: 128, offset: 192)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !900, line: 13, size: 128, elements: !901)
!900 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!901 = !{!902, !904}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !899, file: !900, line: 14, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !900, line: 8, baseType: !591)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !899, file: !900, line: 15, baseType: !295, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !889, file: !208, line: 226, baseType: !899, size: 128, offset: 320)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !889, file: !208, line: 227, baseType: !899, size: 128, offset: 448)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !889, file: !208, line: 234, baseType: !732, size: 64, offset: 576)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !821, file: !208, line: 1882, baseType: !909, size: 64, offset: 896)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!294, !912, !914, !461, !7}
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !916, line: 22, size: 1152, elements: !917)
!916 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!917 = !{!918, !919, !920, !921, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !915, file: !916, line: 23, baseType: !461, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !915, file: !916, line: 24, baseType: !800, size: 16, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !915, file: !916, line: 25, baseType: !7, size: 32, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !915, file: !916, line: 26, baseType: !922, size: 32, offset: 96)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !292, line: 104, baseType: !461)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !915, file: !916, line: 27, baseType: !560, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !915, file: !916, line: 28, baseType: !560, size: 64, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !915, file: !916, line: 37, baseType: !560, size: 64, offset: 256)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !915, file: !916, line: 38, baseType: !878, size: 32, offset: 320)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !915, file: !916, line: 39, baseType: !878, size: 32, offset: 352)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !915, file: !916, line: 40, baseType: !803, size: 32, offset: 384)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !915, file: !916, line: 41, baseType: !811, size: 32, offset: 416)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !915, file: !916, line: 42, baseType: !896, size: 64, offset: 448)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !915, file: !916, line: 43, baseType: !899, size: 128, offset: 512)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !915, file: !916, line: 44, baseType: !899, size: 128, offset: 640)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !915, file: !916, line: 45, baseType: !899, size: 128, offset: 768)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !915, file: !916, line: 46, baseType: !899, size: 128, offset: 896)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !915, file: !916, line: 47, baseType: !560, size: 64, offset: 1024)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !915, file: !916, line: 48, baseType: !560, size: 64, offset: 1088)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !821, file: !208, line: 1883, baseType: !938, size: 64, offset: 960)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!941, !762, !326, !944}
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !292, line: 60, baseType: !942)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !644, line: 73, baseType: !943)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !644, line: 15, baseType: !295)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !292, line: 55, baseType: !945)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !644, line: 72, baseType: !946)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !644, line: 16, baseType: !504)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !821, file: !208, line: 1884, baseType: !948, size: 64, offset: 1024)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!294, !796, !951, !560, !560}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !821, file: !208, line: 1886, baseType: !954, size: 64, offset: 1088)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!294, !796, !957, !294}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !821, file: !208, line: 1887, baseType: !959, size: 64, offset: 1152)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!294, !796, !762, !732, !7, !800}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !821, file: !208, line: 1890, baseType: !870, size: 64, offset: 1216)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !821, file: !208, line: 1891, baseType: !964, size: 64, offset: 1280)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!294, !796, !845, !294}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !797, file: !208, line: 623, baseType: !968, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !970)
!970 = !{!971, !972, !973, !974, !975, !976, !1025, !1362, !1450, !1533, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1549, !1553, !1554, !1557, !1560, !1563, !1564, !1565, !1606, !1638, !1639, !1640, !1641, !1642, !1643, !1646, !1650, !1659, !1660, !1662, !1663, !1664, !1723, !1724, !1739, !1740, !1741, !1742, !1743, !1747, !1748, !1751, !1766, !1767, !1768, !1779, !1780, !1781, !1782, !1783, !1784}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !969, file: !208, line: 1417, baseType: !553, size: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !969, file: !208, line: 1418, baseType: !878, size: 32, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !969, file: !208, line: 1419, baseType: !345, size: 8, offset: 160)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !969, file: !208, line: 1420, baseType: !504, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !969, file: !208, line: 1421, baseType: !896, size: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !969, file: !208, line: 1422, baseType: !977, size: 64, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !979)
!979 = !{!980, !981, !982, !989, !993, !997, !1001, !1002, !1003, !1013, !1016, !1017, !1018, !1022, !1023, !1024}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !978, file: !208, line: 2229, baseType: !304, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !978, file: !208, line: 2230, baseType: !294, size: 32, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !978, file: !208, line: 2238, baseType: !983, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!294, !986}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !988, line: 28, flags: DIFlagFwdDecl)
!988 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!989 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !978, file: !208, line: 2239, baseType: !990, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !992)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !978, file: !208, line: 2240, baseType: !994, size: 64, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!762, !977, !294, !304, !293}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !978, file: !208, line: 2242, baseType: !998, size: 64, offset: 320)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !968}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !978, file: !208, line: 2243, baseType: !308, size: 64, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !978, file: !208, line: 2244, baseType: !977, size: 64, offset: 448)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !978, file: !208, line: 2245, baseType: !1004, size: 64, offset: 512)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !292, line: 182, size: 64, elements: !1005)
!1005 = !{!1006}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1004, file: !292, line: 183, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !292, line: 186, size: 128, elements: !1009)
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1008, file: !292, line: 187, baseType: !1007, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1008, file: !292, line: 187, baseType: !1012, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !978, file: !208, line: 2247, baseType: !1014, offset: 576)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1015, line: 187, elements: !491)
!1015 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !978, file: !208, line: 2248, baseType: !1014, offset: 576)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !978, file: !208, line: 2249, baseType: !1014, offset: 576)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !978, file: !208, line: 2250, baseType: !1019, offset: 576)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1014, elements: !1020)
!1020 = !{!1021}
!1021 = !DISubrange(count: 3)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !978, file: !208, line: 2252, baseType: !1014, offset: 576)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !978, file: !208, line: 2253, baseType: !1014, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !978, file: !208, line: 2254, baseType: !1014, offset: 576)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !969, file: !208, line: 1423, baseType: !1026, size: 64, offset: 384)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !1029)
!1029 = !{!1030, !1034, !1038, !1039, !1043, !1049, !1053, !1054, !1055, !1059, !1063, !1064, !1065, !1066, !1072, !1077, !1078, !1084, !1085, !1086, !1087, !1346, !1361}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1028, file: !208, line: 1936, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!796, !968}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1028, file: !208, line: 1937, baseType: !1035, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !796}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1028, file: !208, line: 1938, baseType: !1035, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1028, file: !208, line: 1940, baseType: !1040, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !796, !294}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1028, file: !208, line: 1941, baseType: !1044, size: 64, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!294, !796, !1047}
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1028, file: !208, line: 1942, baseType: !1050, size: 64, offset: 320)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!294, !796}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1028, file: !208, line: 1943, baseType: !1035, size: 64, offset: 384)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1028, file: !208, line: 1944, baseType: !998, size: 64, offset: 448)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1028, file: !208, line: 1945, baseType: !1056, size: 64, offset: 512)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!294, !968, !294}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1028, file: !208, line: 1946, baseType: !1060, size: 64, offset: 576)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!294, !968}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1028, file: !208, line: 1947, baseType: !1060, size: 64, offset: 640)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1028, file: !208, line: 1948, baseType: !1060, size: 64, offset: 704)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1028, file: !208, line: 1949, baseType: !1060, size: 64, offset: 768)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1028, file: !208, line: 1950, baseType: !1067, size: 64, offset: 832)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!294, !762, !1070}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1028, file: !208, line: 1951, baseType: !1073, size: 64, offset: 896)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!294, !968, !1076, !326}
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1028, file: !208, line: 1952, baseType: !998, size: 64, offset: 960)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1028, file: !208, line: 1954, baseType: !1079, size: 64, offset: 1024)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!294, !1082, !762}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !710, line: 539, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1028, file: !208, line: 1955, baseType: !1079, size: 64, offset: 1088)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1028, file: !208, line: 1956, baseType: !1079, size: 64, offset: 1152)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1028, file: !208, line: 1957, baseType: !1079, size: 64, offset: 1216)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1028, file: !208, line: 1963, baseType: !1088, size: 64, offset: 1280)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!294, !968, !1091, !291}
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !692, line: 68, size: 512, align: 128, elements: !1093)
!1093 = !{!1094, !1095, !1338, !1345}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1092, file: !692, line: 69, baseType: !504, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !692, line: 77, baseType: !1096, size: 320, offset: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1092, file: !692, line: 77, size: 320, elements: !1097)
!1097 = !{!1098, !1270, !1275, !1303, !1311, !1317, !1330, !1337}
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !692, line: 78, baseType: !1099, size: 320)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !692, line: 78, size: 320, elements: !1100)
!1100 = !{!1101, !1102, !1268, !1269}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1099, file: !692, line: 84, baseType: !553, size: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1099, file: !692, line: 86, baseType: !1103, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !1105)
!1105 = !{!1106, !1107, !1121, !1122, !1123, !1124, !1138, !1139, !1140, !1141, !1261, !1262, !1265, !1266, !1267}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1104, file: !208, line: 452, baseType: !796, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1104, file: !208, line: 453, baseType: !1108, size: 128, offset: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1109, line: 292, size: 128, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1110 = !{!1111, !1119, !1120}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1108, file: !1109, line: 293, baseType: !1112)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !484, line: 83, baseType: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !484, line: 71, elements: !1114)
!1114 = !{!1115}
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1113, file: !484, line: 72, baseType: !1116)
!1116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1113, file: !484, line: 72, elements: !1117)
!1117 = !{!1118}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1116, file: !484, line: 73, baseType: !485)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1108, file: !1109, line: 295, baseType: !291, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1108, file: !1109, line: 296, baseType: !293, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1104, file: !208, line: 454, baseType: !291, size: 32, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1104, file: !208, line: 455, baseType: !528, size: 32, offset: 224)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1104, file: !208, line: 460, baseType: !493, size: 128, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1104, file: !208, line: 461, baseType: !1125, size: 256, offset: 384)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1126, line: 35, size: 256, elements: !1127)
!1126 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1127 = !{!1128, !1135, !1136, !1137}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1125, file: !1126, line: 36, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1130, line: 13, baseType: !1131)
!1130 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !292, line: 175, baseType: !1132)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 173, size: 64, elements: !1133)
!1133 = !{!1134}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1132, file: !292, line: 174, baseType: !590, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1125, file: !1126, line: 42, baseType: !1129, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1125, file: !1126, line: 46, baseType: !483, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1125, file: !1126, line: 47, baseType: !553, size: 128, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1104, file: !208, line: 462, baseType: !504, size: 64, offset: 640)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1104, file: !208, line: 463, baseType: !504, size: 64, offset: 704)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1104, file: !208, line: 464, baseType: !504, size: 64, offset: 768)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1104, file: !208, line: 465, baseType: !1142, size: 64, offset: 832)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1144)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1145)
!1145 = !{!1146, !1150, !1154, !1158, !1162, !1166, !1172, !1178, !1182, !1187, !1191, !1195, !1199, !1225, !1229, !1235, !1236, !1237, !1241, !1246, !1250, !1257}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1144, file: !208, line: 368, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!294, !1091, !1047}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1144, file: !208, line: 369, baseType: !1151, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!294, !732, !1091}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1144, file: !208, line: 372, baseType: !1155, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!294, !1103, !1047}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1144, file: !208, line: 375, baseType: !1159, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!294, !1091}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1144, file: !208, line: 381, baseType: !1163, size: 64, offset: 256)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!294, !732, !1103, !556, !7}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1144, file: !208, line: 383, baseType: !1167, size: 64, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !1170}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1144, file: !208, line: 385, baseType: !1173, size: 64, offset: 384)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!294, !732, !1103, !896, !7, !7, !1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1144, file: !208, line: 388, baseType: !1179, size: 64, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!294, !732, !1103, !896, !7, !7, !1091, !293}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1144, file: !208, line: 393, baseType: !1183, size: 64, offset: 512)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!1186, !1103, !1186}
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !292, line: 125, baseType: !560)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1144, file: !208, line: 394, baseType: !1188, size: 64, offset: 576)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null, !1091, !7, !7}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1144, file: !208, line: 395, baseType: !1192, size: 64, offset: 640)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!294, !1091, !291}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1144, file: !208, line: 396, baseType: !1196, size: 64, offset: 704)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{null, !1091}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1144, file: !208, line: 397, baseType: !1200, size: 64, offset: 768)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!941, !1203, !1223}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1212, !1213, !1214, !1215, !1216}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1204, file: !208, line: 321, baseType: !732, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1204, file: !208, line: 326, baseType: !896, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1204, file: !208, line: 327, baseType: !1209, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{null, !1203, !295, !295}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1204, file: !208, line: 328, baseType: !293, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1204, file: !208, line: 329, baseType: !294, size: 32, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1204, file: !208, line: 330, baseType: !333, size: 16, offset: 288)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1204, file: !208, line: 331, baseType: !333, size: 16, offset: 304)
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !1204, file: !208, line: 332, baseType: !1217, size: 64, offset: 320)
!1217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1204, file: !208, line: 332, size: 64, elements: !1218)
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1217, file: !208, line: 333, baseType: !7, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1217, file: !208, line: 334, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1144, file: !208, line: 402, baseType: !1226, size: 64, offset: 832)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!294, !1103, !1091, !1091, !183}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1144, file: !208, line: 404, baseType: !1230, size: 64, offset: 896)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!855, !1091, !1233}
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1234, line: 305, baseType: !7)
!1234 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1144, file: !208, line: 405, baseType: !1196, size: 64, offset: 960)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1144, file: !208, line: 406, baseType: !1159, size: 64, offset: 1024)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1144, file: !208, line: 407, baseType: !1238, size: 64, offset: 1088)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!294, !1091, !504, !504}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1144, file: !208, line: 409, baseType: !1242, size: 64, offset: 1152)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{null, !1091, !1245, !1245}
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1144, file: !208, line: 410, baseType: !1247, size: 64, offset: 1216)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!294, !1103, !1091}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1144, file: !208, line: 413, baseType: !1251, size: 64, offset: 1280)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!294, !1254, !732, !1256}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1144, file: !208, line: 415, baseType: !1258, size: 64, offset: 1344)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !732}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1104, file: !208, line: 466, baseType: !504, size: 64, offset: 896)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1104, file: !208, line: 467, baseType: !1263, size: 32, offset: 960)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1264, line: 8, baseType: !461)
!1264 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1104, file: !208, line: 468, baseType: !1112, offset: 992)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1104, file: !208, line: 469, baseType: !553, size: 128, offset: 1024)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1104, file: !208, line: 470, baseType: !293, size: 64, offset: 1152)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1099, file: !692, line: 87, baseType: !504, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1099, file: !692, line: 94, baseType: !504, size: 64, offset: 256)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !692, line: 96, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !692, line: 96, size: 64, elements: !1272)
!1272 = !{!1273}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1271, file: !692, line: 101, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !292, line: 143, baseType: !560)
!1275 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !692, line: 103, baseType: !1276, size: 320)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !692, line: 103, size: 320, elements: !1277)
!1277 = !{!1278, !1288, !1291, !1292}
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1276, file: !692, line: 104, baseType: !1279, size: 128)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1276, file: !692, line: 104, size: 128, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1279, file: !692, line: 105, baseType: !553, size: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, scope: !1279, file: !692, line: 106, baseType: !1283, size: 128)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1279, file: !692, line: 106, size: 128, elements: !1284)
!1284 = !{!1285, !1286, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1283, file: !692, line: 107, baseType: !1091, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1283, file: !692, line: 109, baseType: !294, size: 32, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1283, file: !692, line: 110, baseType: !294, size: 32, offset: 96)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1276, file: !692, line: 117, baseType: !1289, size: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !692, line: 117, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1276, file: !692, line: 119, baseType: !293, size: 64, offset: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1276, file: !692, line: 120, baseType: !1293, size: 64, offset: 256)
!1293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1276, file: !692, line: 120, size: 64, elements: !1294)
!1294 = !{!1295, !1296, !1297}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1293, file: !692, line: 121, baseType: !293, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1293, file: !692, line: 122, baseType: !504, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !692, line: 123, baseType: !1298, size: 32)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1293, file: !692, line: 123, size: 32, elements: !1299)
!1299 = !{!1300, !1301, !1302}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1298, file: !692, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1298, file: !692, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1298, file: !692, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !692, line: 130, baseType: !1304, size: 192)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !692, line: 130, size: 192, elements: !1305)
!1305 = !{!1306, !1307, !1308, !1309, !1310}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1304, file: !692, line: 131, baseType: !504, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1304, file: !692, line: 134, baseType: !345, size: 8, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1304, file: !692, line: 135, baseType: !345, size: 8, offset: 72)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1304, file: !692, line: 136, baseType: !528, size: 32, offset: 96)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1304, file: !692, line: 137, baseType: !7, size: 32, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !692, line: 139, baseType: !1312, size: 256)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !692, line: 139, size: 256, elements: !1313)
!1313 = !{!1314, !1315, !1316}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1312, file: !692, line: 140, baseType: !504, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1312, file: !692, line: 141, baseType: !528, size: 32, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1312, file: !692, line: 143, baseType: !553, size: 128, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !692, line: 145, baseType: !1318, size: 256)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !692, line: 145, size: 256, elements: !1319)
!1319 = !{!1320, !1321, !1323, !1324, !1329}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1318, file: !692, line: 146, baseType: !504, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1318, file: !692, line: 147, baseType: !1322, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !710, line: 509, baseType: !1091)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1318, file: !692, line: 148, baseType: !504, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, scope: !1318, file: !692, line: 149, baseType: !1325, size: 64, offset: 192)
!1325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1318, file: !692, line: 149, size: 64, elements: !1326)
!1326 = !{!1327, !1328}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1325, file: !692, line: 150, baseType: !690, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1325, file: !692, line: 151, baseType: !528, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1318, file: !692, line: 156, baseType: !1112, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !692, line: 159, baseType: !1331, size: 128)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !692, line: 159, size: 128, elements: !1332)
!1332 = !{!1333, !1336}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1331, file: !692, line: 161, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !692, line: 161, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1331, file: !692, line: 162, baseType: !293, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1096, file: !692, line: 176, baseType: !745, size: 128, align: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !692, line: 179, baseType: !1339, size: 32, offset: 384)
!1339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1092, file: !692, line: 179, size: 32, elements: !1340)
!1340 = !{!1341, !1342, !1343, !1344}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1339, file: !692, line: 184, baseType: !528, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1339, file: !692, line: 192, baseType: !7, size: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1339, file: !692, line: 194, baseType: !7, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1339, file: !692, line: 195, baseType: !294, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1092, file: !692, line: 199, baseType: !528, size: 32, offset: 416)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1028, file: !208, line: 1964, baseType: !1347, size: 64, offset: 1344)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!295, !968, !1350}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1352, line: 12, size: 256, elements: !1353)
!1352 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1353 = !{!1354, !1355, !1356, !1357, !1358}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1351, file: !1352, line: 13, baseType: !291, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1351, file: !1352, line: 16, baseType: !294, size: 32, offset: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1351, file: !1352, line: 23, baseType: !504, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1351, file: !1352, line: 30, baseType: !504, size: 64, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1351, file: !1352, line: 33, baseType: !1359, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !692, line: 27, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1028, file: !208, line: 1966, baseType: !1347, size: 64, offset: 1408)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !969, file: !208, line: 1424, baseType: !1363, size: 64, offset: 448)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1365)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !1366)
!1366 = !{!1367, !1419, !1423, !1427, !1428, !1429, !1430, !1431, !1436, !1441, !1445}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1365, file: !202, line: 323, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!294, !1371}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1385, !1386, !1387, !1388, !1404, !1405, !1406}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1372, file: !202, line: 295, baseType: !1008, size: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1372, file: !202, line: 296, baseType: !553, size: 128, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1372, file: !202, line: 297, baseType: !553, size: 128, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1372, file: !202, line: 298, baseType: !553, size: 128, offset: 384)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1372, file: !202, line: 299, baseType: !1379, size: 192, offset: 512)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1380, line: 53, size: 192, elements: !1381)
!1380 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1381 = !{!1382, !1383, !1384}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1379, file: !1380, line: 54, baseType: !1129, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1379, file: !1380, line: 55, baseType: !1112, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1379, file: !1380, line: 59, baseType: !553, size: 128, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1372, file: !202, line: 300, baseType: !1112, offset: 704)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1372, file: !202, line: 301, baseType: !528, size: 32, offset: 704)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1372, file: !202, line: 302, baseType: !968, size: 64, offset: 768)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1372, file: !202, line: 303, baseType: !1389, size: 64, offset: 832)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !1390)
!1390 = !{!1391, !1403}
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !202, line: 69, baseType: !1392, size: 32)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1389, file: !202, line: 69, size: 32, elements: !1393)
!1393 = !{!1394, !1395, !1396}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1392, file: !202, line: 70, baseType: !803, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1392, file: !202, line: 71, baseType: !811, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1392, file: !202, line: 72, baseType: !1397, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1398, line: 24, baseType: !1399)
!1398 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1398, line: 22, size: 32, elements: !1400)
!1400 = !{!1401}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1399, file: !1398, line: 23, baseType: !1402, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1398, line: 20, baseType: !809)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1389, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1372, file: !202, line: 304, baseType: !896, size: 64, offset: 896)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1372, file: !202, line: 305, baseType: !504, size: 64, offset: 960)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1372, file: !202, line: 306, baseType: !1407, size: 576, offset: 1024)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !1408)
!1408 = !{!1409, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1407, file: !202, line: 206, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !592)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1407, file: !202, line: 207, baseType: !1410, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1407, file: !202, line: 208, baseType: !1410, size: 64, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1407, file: !202, line: 209, baseType: !1410, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1407, file: !202, line: 210, baseType: !1410, size: 64, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1407, file: !202, line: 211, baseType: !1410, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1407, file: !202, line: 212, baseType: !1410, size: 64, offset: 384)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1407, file: !202, line: 213, baseType: !903, size: 64, offset: 448)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1407, file: !202, line: 214, baseType: !903, size: 64, offset: 512)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1365, file: !202, line: 324, baseType: !1420, size: 64, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!1371, !968, !294}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1365, file: !202, line: 325, baseType: !1424, size: 64, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null, !1371}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1365, file: !202, line: 326, baseType: !1368, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1365, file: !202, line: 327, baseType: !1368, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1365, file: !202, line: 328, baseType: !1368, size: 64, offset: 320)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1365, file: !202, line: 329, baseType: !1056, size: 64, offset: 384)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1365, file: !202, line: 332, baseType: !1432, size: 64, offset: 448)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!1435, !796}
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1365, file: !202, line: 333, baseType: !1437, size: 64, offset: 512)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!294, !796, !1440}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1365, file: !202, line: 335, baseType: !1442, size: 64, offset: 576)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!294, !796, !1435}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1365, file: !202, line: 337, baseType: !1446, size: 64, offset: 640)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!294, !968, !1449}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !969, file: !208, line: 1425, baseType: !1451, size: 64, offset: 512)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1453)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !1454)
!1454 = !{!1455, !1459, !1460, !1464, !1465, !1466, !1481, !1504, !1508, !1509, !1532}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1453, file: !202, line: 429, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!294, !968, !294, !294, !912}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1453, file: !202, line: 430, baseType: !1056, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1453, file: !202, line: 431, baseType: !1461, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!294, !968, !7}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1453, file: !202, line: 432, baseType: !1461, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1453, file: !202, line: 433, baseType: !1056, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1453, file: !202, line: 434, baseType: !1467, size: 64, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!294, !968, !294, !1470}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1471, file: !202, line: 416, baseType: !294, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1471, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1471, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1471, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1471, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1471, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1471, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1471, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1453, file: !202, line: 435, baseType: !1482, size: 64, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!294, !968, !1389, !1485}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !1487)
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1486, file: !202, line: 344, baseType: !294, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1486, file: !202, line: 345, baseType: !560, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1486, file: !202, line: 346, baseType: !560, size: 64, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1486, file: !202, line: 347, baseType: !560, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1486, file: !202, line: 348, baseType: !560, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1486, file: !202, line: 349, baseType: !560, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1486, file: !202, line: 350, baseType: !560, size: 64, offset: 384)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1486, file: !202, line: 351, baseType: !590, size: 64, offset: 448)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1486, file: !202, line: 353, baseType: !590, size: 64, offset: 512)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1486, file: !202, line: 354, baseType: !294, size: 32, offset: 576)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1486, file: !202, line: 355, baseType: !294, size: 32, offset: 608)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1486, file: !202, line: 356, baseType: !560, size: 64, offset: 640)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1486, file: !202, line: 357, baseType: !560, size: 64, offset: 704)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1486, file: !202, line: 358, baseType: !560, size: 64, offset: 768)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1486, file: !202, line: 359, baseType: !590, size: 64, offset: 832)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1486, file: !202, line: 360, baseType: !294, size: 32, offset: 896)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1453, file: !202, line: 436, baseType: !1505, size: 64, offset: 448)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!294, !968, !1449, !1485}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1453, file: !202, line: 438, baseType: !1482, size: 64, offset: 512)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1453, file: !202, line: 439, baseType: !1510, size: 64, offset: 576)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!294, !968, !1513}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1514, file: !202, line: 410, baseType: !7, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1514, file: !202, line: 411, baseType: !1518, size: 1344, offset: 64)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 1344, elements: !1020)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !1520)
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1531}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1519, file: !202, line: 396, baseType: !7, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1519, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1519, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1519, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1519, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1519, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1519, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1519, file: !202, line: 404, baseType: !562, size: 64, offset: 256)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1519, file: !202, line: 405, baseType: !1530, size: 64, offset: 320)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !292, line: 126, baseType: !560)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1519, file: !202, line: 406, baseType: !1530, size: 64, offset: 384)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1453, file: !202, line: 440, baseType: !1461, size: 64, offset: 640)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !969, file: !208, line: 1426, baseType: !1534, size: 64, offset: 576)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1536)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !969, file: !208, line: 1427, baseType: !504, size: 64, offset: 640)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !969, file: !208, line: 1428, baseType: !504, size: 64, offset: 704)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !969, file: !208, line: 1429, baseType: !504, size: 64, offset: 768)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !969, file: !208, line: 1430, baseType: !762, size: 64, offset: 832)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !969, file: !208, line: 1431, baseType: !1125, size: 256, offset: 896)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !969, file: !208, line: 1432, baseType: !294, size: 32, offset: 1152)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !969, file: !208, line: 1433, baseType: !528, size: 32, offset: 1184)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !969, file: !208, line: 1437, baseType: !1545, size: 64, offset: 1216)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1548)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !969, file: !208, line: 1449, baseType: !1550, size: 64, offset: 1280)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !773, line: 34, size: 64, elements: !1551)
!1551 = !{!1552}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1550, file: !773, line: 35, baseType: !776, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !969, file: !208, line: 1450, baseType: !553, size: 128, offset: 1344)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !969, file: !208, line: 1451, baseType: !1555, size: 64, offset: 1472)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !969, file: !208, line: 1452, baseType: !1558, size: 64, offset: 1536)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !511, line: 40, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !969, file: !208, line: 1453, baseType: !1561, size: 64, offset: 1600)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !969, file: !208, line: 1454, baseType: !1008, size: 128, offset: 1664)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !969, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !969, file: !208, line: 1456, baseType: !1566, size: 2432, offset: 1856)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !1567)
!1567 = !{!1568, !1569, !1570, !1572, !1604}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1566, file: !202, line: 519, baseType: !7, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1566, file: !202, line: 520, baseType: !1125, size: 256, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1566, file: !202, line: 521, baseType: !1571, size: 192, offset: 320)
!1571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 192, elements: !1020)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1566, file: !202, line: 522, baseType: !1573, size: 1728, offset: 512)
!1573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1574, size: 1728, elements: !1020)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !1575)
!1575 = !{!1576, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1574, file: !202, line: 223, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !1579)
!1579 = !{!1580, !1581, !1594, !1595}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1578, file: !202, line: 444, baseType: !294, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1578, file: !202, line: 445, baseType: !1582, size: 64, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1584)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !1585)
!1585 = !{!1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1584, file: !202, line: 311, baseType: !1056, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1584, file: !202, line: 312, baseType: !1056, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1584, file: !202, line: 313, baseType: !1056, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1584, file: !202, line: 314, baseType: !1056, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1584, file: !202, line: 315, baseType: !1368, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1584, file: !202, line: 316, baseType: !1368, size: 64, offset: 320)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1584, file: !202, line: 317, baseType: !1368, size: 64, offset: 384)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1584, file: !202, line: 318, baseType: !1446, size: 64, offset: 448)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1578, file: !202, line: 446, baseType: !308, size: 64, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1578, file: !202, line: 447, baseType: !1577, size: 64, offset: 192)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1574, file: !202, line: 224, baseType: !294, size: 32, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1574, file: !202, line: 226, baseType: !553, size: 128, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1574, file: !202, line: 227, baseType: !504, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1574, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1574, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1574, file: !202, line: 230, baseType: !1410, size: 64, offset: 384)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1574, file: !202, line: 231, baseType: !1410, size: 64, offset: 448)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1574, file: !202, line: 232, baseType: !293, size: 64, offset: 512)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1566, file: !202, line: 523, baseType: !1605, size: 192, offset: 2240)
!1605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1582, size: 192, elements: !1020)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !969, file: !208, line: 1458, baseType: !1607, size: 2112, offset: 4288)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !1608)
!1608 = !{!1609, !1610, !1617}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1607, file: !208, line: 1411, baseType: !294, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1607, file: !208, line: 1412, baseType: !1611, size: 128, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1612, line: 40, baseType: !1613)
!1612 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1612, line: 36, size: 128, elements: !1614)
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1613, file: !1612, line: 37, baseType: !1112)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1613, file: !1612, line: 38, baseType: !553, size: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1607, file: !208, line: 1413, baseType: !1618, size: 1920, offset: 192)
!1618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1619, size: 1920, elements: !1020)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1620, line: 12, size: 640, elements: !1621)
!1620 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1621 = !{!1622, !1630, !1631, !1636, !1637}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1619, file: !1620, line: 13, baseType: !1623, size: 320)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1624, line: 17, size: 320, elements: !1625)
!1624 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1625 = !{!1626, !1627, !1628, !1629}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1623, file: !1624, line: 18, baseType: !294, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1623, file: !1624, line: 19, baseType: !294, size: 32, offset: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1623, file: !1624, line: 20, baseType: !1611, size: 128, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1623, file: !1624, line: 22, baseType: !745, size: 128, align: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1619, file: !1620, line: 14, baseType: !365, size: 64, offset: 320)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1619, file: !1620, line: 15, baseType: !1632, size: 64, offset: 384)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1633, line: 16, size: 64, elements: !1634)
!1633 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1634 = !{!1635}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1632, file: !1633, line: 17, baseType: !509, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1619, file: !1620, line: 16, baseType: !1611, size: 128, offset: 448)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1619, file: !1620, line: 17, baseType: !528, size: 32, offset: 576)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !969, file: !208, line: 1465, baseType: !293, size: 64, offset: 6400)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !969, file: !208, line: 1468, baseType: !461, size: 32, offset: 6464)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !969, file: !208, line: 1470, baseType: !903, size: 64, offset: 6528)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !969, file: !208, line: 1471, baseType: !903, size: 64, offset: 6592)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !969, file: !208, line: 1473, baseType: !462, size: 32, offset: 6656)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !969, file: !208, line: 1474, baseType: !1644, size: 64, offset: 6720)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !969, file: !208, line: 1477, baseType: !1647, size: 256, offset: 6784)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 256, elements: !1648)
!1648 = !{!1649}
!1649 = !DISubrange(count: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !969, file: !208, line: 1478, baseType: !1651, size: 128, offset: 7040)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1652, line: 18, baseType: !1653)
!1652 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1652, line: 16, size: 128, elements: !1654)
!1654 = !{!1655}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1653, file: !1652, line: 17, baseType: !1656, size: 128)
!1656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 128, elements: !1657)
!1657 = !{!1658}
!1658 = !DISubrange(count: 16)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !969, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !969, file: !208, line: 1481, baseType: !1661, size: 32, offset: 7200)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !292, line: 150, baseType: !7)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !969, file: !208, line: 1487, baseType: !1379, size: 192, offset: 7232)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !969, file: !208, line: 1493, baseType: !304, size: 64, offset: 7424)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !969, file: !208, line: 1495, baseType: !1665, size: 64, offset: 7488)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1667)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !760, line: 135, size: 1024, align: 512, elements: !1668)
!1668 = !{!1669, !1673, !1674, !1681, !1687, !1691, !1695, !1699, !1700, !1704, !1708, !1713, !1717}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1667, file: !760, line: 136, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!294, !762, !7}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1667, file: !760, line: 137, baseType: !1670, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1667, file: !760, line: 138, baseType: !1675, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!294, !1678, !1680}
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1667, file: !760, line: 139, baseType: !1682, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!294, !1678, !7, !304, !1685}
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1667, file: !760, line: 141, baseType: !1688, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!294, !1678}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1667, file: !760, line: 142, baseType: !1692, size: 64, offset: 320)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!294, !762}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1667, file: !760, line: 143, baseType: !1696, size: 64, offset: 384)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{null, !762}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1667, file: !760, line: 144, baseType: !1696, size: 64, offset: 448)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1667, file: !760, line: 145, baseType: !1701, size: 64, offset: 512)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{null, !762, !796}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1667, file: !760, line: 146, baseType: !1705, size: 64, offset: 576)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!326, !762, !326, !294}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1667, file: !760, line: 147, baseType: !1709, size: 64, offset: 640)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!758, !1712}
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1667, file: !760, line: 148, baseType: !1714, size: 64, offset: 704)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!294, !912, !855}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1667, file: !760, line: 149, baseType: !1718, size: 64, offset: 768)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!762, !762, !1721}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !797)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !969, file: !208, line: 1500, baseType: !294, size: 32, offset: 7552)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !969, file: !208, line: 1502, baseType: !1725, size: 448, offset: 7616)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1352, line: 60, size: 448, elements: !1726)
!1726 = !{!1727, !1732, !1733, !1734, !1735, !1736, !1737}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1725, file: !1352, line: 61, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!504, !1731, !1350}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1725, file: !1352, line: 63, baseType: !1728, size: 64, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1725, file: !1352, line: 66, baseType: !295, size: 64, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1725, file: !1352, line: 67, baseType: !294, size: 32, offset: 192)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1725, file: !1352, line: 68, baseType: !7, size: 32, offset: 224)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1725, file: !1352, line: 71, baseType: !553, size: 128, offset: 256)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1725, file: !1352, line: 77, baseType: !1738, size: 64, offset: 384)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !969, file: !208, line: 1505, baseType: !1129, size: 64, offset: 8064)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !969, file: !208, line: 1508, baseType: !1129, size: 64, offset: 8128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !969, file: !208, line: 1511, baseType: !294, size: 32, offset: 8192)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !969, file: !208, line: 1514, baseType: !1263, size: 32, offset: 8224)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !969, file: !208, line: 1517, baseType: !1744, size: 64, offset: 8256)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1746, line: 18, flags: DIFlagFwdDecl)
!1746 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !969, file: !208, line: 1518, baseType: !1004, size: 64, offset: 8320)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !969, file: !208, line: 1525, baseType: !1749, size: 64, offset: 8384)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !692, line: 516, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !969, file: !208, line: 1532, baseType: !1752, size: 64, offset: 8448)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1753, line: 52, size: 64, elements: !1754)
!1753 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1754 = !{!1755}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1752, file: !1753, line: 53, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1753, line: 40, size: 256, elements: !1758)
!1758 = !{!1759, !1760, !1765}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1757, file: !1753, line: 42, baseType: !1112)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1757, file: !1753, line: 44, baseType: !1761, size: 192)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1753, line: 28, size: 192, elements: !1762)
!1762 = !{!1763, !1764}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1761, file: !1753, line: 29, baseType: !553, size: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1761, file: !1753, line: 31, baseType: !295, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1757, file: !1753, line: 49, baseType: !295, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !969, file: !208, line: 1533, baseType: !1752, size: 64, offset: 8512)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !969, file: !208, line: 1534, baseType: !745, size: 128, align: 64, offset: 8576)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !969, file: !208, line: 1535, baseType: !1769, size: 256, offset: 8704)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1746, line: 102, size: 256, elements: !1770)
!1770 = !{!1771, !1772, !1773}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1769, file: !1746, line: 103, baseType: !1129, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1769, file: !1746, line: 104, baseType: !553, size: 128, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1769, file: !1746, line: 105, baseType: !1774, size: 64, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1746, line: 21, baseType: !1775)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{null, !1778}
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !969, file: !208, line: 1537, baseType: !1379, size: 192, offset: 8960)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !969, file: !208, line: 1542, baseType: !294, size: 32, offset: 9152)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !969, file: !208, line: 1545, baseType: !1112, offset: 9184)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !969, file: !208, line: 1546, baseType: !553, size: 128, offset: 9216)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !969, file: !208, line: 1548, baseType: !1112, offset: 9344)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !969, file: !208, line: 1549, baseType: !553, size: 128, offset: 9344)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !797, file: !208, line: 624, baseType: !1103, size: 64, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !797, file: !208, line: 631, baseType: !504, size: 64, offset: 320)
!1787 = !DIDerivedType(tag: DW_TAG_member, scope: !797, file: !208, line: 639, baseType: !1788, size: 32, offset: 384)
!1788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !797, file: !208, line: 639, size: 32, elements: !1789)
!1789 = !{!1790, !1792}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1788, file: !208, line: 640, baseType: !1791, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1788, file: !208, line: 641, baseType: !7, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !797, file: !208, line: 643, baseType: !878, size: 32, offset: 416)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !797, file: !208, line: 644, baseType: !896, size: 64, offset: 448)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !797, file: !208, line: 645, baseType: !899, size: 128, offset: 512)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !797, file: !208, line: 646, baseType: !899, size: 128, offset: 640)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !797, file: !208, line: 647, baseType: !899, size: 128, offset: 768)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !797, file: !208, line: 648, baseType: !1112, offset: 896)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !797, file: !208, line: 649, baseType: !337, size: 16, offset: 896)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !797, file: !208, line: 650, baseType: !343, size: 8, offset: 912)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !797, file: !208, line: 651, baseType: !343, size: 8, offset: 920)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !797, file: !208, line: 652, baseType: !1530, size: 64, offset: 960)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !797, file: !208, line: 659, baseType: !504, size: 64, offset: 1024)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !797, file: !208, line: 660, baseType: !1125, size: 256, offset: 1088)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !797, file: !208, line: 662, baseType: !504, size: 64, offset: 1344)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !797, file: !208, line: 663, baseType: !504, size: 64, offset: 1408)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !797, file: !208, line: 665, baseType: !1008, size: 128, offset: 1472)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !797, file: !208, line: 666, baseType: !553, size: 128, offset: 1600)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !797, file: !208, line: 675, baseType: !553, size: 128, offset: 1728)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !797, file: !208, line: 676, baseType: !553, size: 128, offset: 1856)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !797, file: !208, line: 677, baseType: !553, size: 128, offset: 1984)
!1812 = !DIDerivedType(tag: DW_TAG_member, scope: !797, file: !208, line: 678, baseType: !1813, size: 128, offset: 2112)
!1813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !797, file: !208, line: 678, size: 128, elements: !1814)
!1814 = !{!1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1813, file: !208, line: 679, baseType: !1004, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1813, file: !208, line: 680, baseType: !745, size: 128, align: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !797, file: !208, line: 682, baseType: !1131, size: 64, offset: 2240)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !797, file: !208, line: 683, baseType: !1131, size: 64, offset: 2304)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !797, file: !208, line: 684, baseType: !528, size: 32, offset: 2368)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !797, file: !208, line: 685, baseType: !528, size: 32, offset: 2400)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !797, file: !208, line: 686, baseType: !528, size: 32, offset: 2432)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !797, file: !208, line: 688, baseType: !528, size: 32, offset: 2464)
!1823 = !DIDerivedType(tag: DW_TAG_member, scope: !797, file: !208, line: 690, baseType: !1824, size: 64, offset: 2496)
!1824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !797, file: !208, line: 690, size: 64, elements: !1825)
!1825 = !{!1826, !2063}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1824, file: !208, line: 691, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1829)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !1830)
!1830 = !{!1831, !1832, !1836, !1841, !1845, !1846, !1847, !1851, !1864, !1865, !1882, !1886, !1887, !1891, !1892, !1896, !1901, !1902, !1906, !1910, !2018, !2022, !2026, !2030, !2031, !2037, !2041, !2046, !2050, !2054, !2058, !2062}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1829, file: !208, line: 1823, baseType: !308, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1829, file: !208, line: 1824, baseType: !1833, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!896, !732, !896, !294}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1829, file: !208, line: 1825, baseType: !1837, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!941, !732, !326, !944, !1840}
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1829, file: !208, line: 1826, baseType: !1842, size: 64, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!941, !732, !304, !944, !1840}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1829, file: !208, line: 1827, baseType: !1200, size: 64, offset: 256)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1829, file: !208, line: 1828, baseType: !1200, size: 64, offset: 320)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1829, file: !208, line: 1829, baseType: !1848, size: 64, offset: 384)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!294, !1203, !855}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1829, file: !208, line: 1830, baseType: !1852, size: 64, offset: 448)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!294, !732, !1855}
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !1857)
!1857 = !{!1858, !1863}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1856, file: !208, line: 1777, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !1860)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!294, !1855, !304, !294, !896, !560, !7}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1856, file: !208, line: 1778, baseType: !896, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1829, file: !208, line: 1831, baseType: !1852, size: 64, offset: 512)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1829, file: !208, line: 1832, baseType: !1866, size: 64, offset: 576)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!1869, !732, !1871}
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1870, line: 52, baseType: !7)
!1870 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1873, line: 43, size: 128, elements: !1874)
!1873 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!1874 = !{!1875, !1881}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1872, file: !1873, line: 44, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1873, line: 37, baseType: !1877)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{null, !732, !1880, !1871}
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1872, file: !1873, line: 45, baseType: !1869, size: 32, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1829, file: !208, line: 1833, baseType: !1883, size: 64, offset: 640)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!295, !732, !7, !504}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1829, file: !208, line: 1834, baseType: !1883, size: 64, offset: 704)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1829, file: !208, line: 1835, baseType: !1888, size: 64, offset: 768)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!294, !732, !698}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1829, file: !208, line: 1836, baseType: !504, size: 64, offset: 832)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1829, file: !208, line: 1837, baseType: !1893, size: 64, offset: 896)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!294, !796, !732}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1829, file: !208, line: 1838, baseType: !1897, size: 64, offset: 960)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!294, !732, !1900}
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !293)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1829, file: !208, line: 1839, baseType: !1893, size: 64, offset: 1024)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1829, file: !208, line: 1840, baseType: !1903, size: 64, offset: 1088)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!294, !732, !896, !896, !294}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1829, file: !208, line: 1841, baseType: !1907, size: 64, offset: 1152)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!294, !294, !732, !294}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1829, file: !208, line: 1842, baseType: !1911, size: 64, offset: 1216)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!294, !732, !294, !1914}
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !1916)
!1916 = !{!1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1948, !1949, !1950, !1963, !1994}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1915, file: !208, line: 1063, baseType: !1914, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1915, file: !208, line: 1064, baseType: !553, size: 128, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1915, file: !208, line: 1065, baseType: !1008, size: 128, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1915, file: !208, line: 1066, baseType: !553, size: 128, offset: 320)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1915, file: !208, line: 1069, baseType: !553, size: 128, offset: 448)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1915, file: !208, line: 1072, baseType: !1900, size: 64, offset: 576)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1915, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1915, file: !208, line: 1074, baseType: !345, size: 8, offset: 672)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1915, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1915, file: !208, line: 1076, baseType: !294, size: 32, offset: 736)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1915, file: !208, line: 1077, baseType: !1611, size: 128, offset: 768)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1915, file: !208, line: 1078, baseType: !732, size: 64, offset: 896)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1915, file: !208, line: 1079, baseType: !896, size: 64, offset: 960)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1915, file: !208, line: 1080, baseType: !896, size: 64, offset: 1024)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1915, file: !208, line: 1082, baseType: !1932, size: 64, offset: 1088)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !1934)
!1934 = !{!1935, !1943, !1944, !1945, !1946, !1947}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1933, file: !208, line: 1315, baseType: !1936)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1937, line: 20, baseType: !1938)
!1937 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1937, line: 11, elements: !1939)
!1939 = !{!1940}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1938, file: !1937, line: 12, baseType: !1941)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !489, line: 33, baseType: !1942)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 31, elements: !491)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1933, file: !208, line: 1316, baseType: !294, size: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1933, file: !208, line: 1317, baseType: !294, size: 32, offset: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1933, file: !208, line: 1318, baseType: !1932, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1933, file: !208, line: 1319, baseType: !732, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1933, file: !208, line: 1320, baseType: !745, size: 128, align: 64, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1915, file: !208, line: 1084, baseType: !504, size: 64, offset: 1152)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1915, file: !208, line: 1085, baseType: !504, size: 64, offset: 1216)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1915, file: !208, line: 1087, baseType: !1951, size: 64, offset: 1280)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1953)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !1954)
!1954 = !{!1955, !1959}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1953, file: !208, line: 1012, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !1914, !1914}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1953, file: !208, line: 1013, baseType: !1960, size: 64, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !1914}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1915, file: !208, line: 1088, baseType: !1964, size: 64, offset: 1344)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1966)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !1967)
!1967 = !{!1968, !1972, !1976, !1977, !1981, !1985, !1989, !1993}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1966, file: !208, line: 1017, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!1900, !1900}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1966, file: !208, line: 1018, baseType: !1973, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{null, !1900}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1966, file: !208, line: 1019, baseType: !1960, size: 64, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1966, file: !208, line: 1020, baseType: !1978, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!294, !1914, !294}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1966, file: !208, line: 1021, baseType: !1982, size: 64, offset: 256)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!855, !1914}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1966, file: !208, line: 1022, baseType: !1986, size: 64, offset: 320)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!294, !1914, !294, !556}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1966, file: !208, line: 1023, baseType: !1990, size: 64, offset: 384)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{null, !1914, !1177}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1966, file: !208, line: 1024, baseType: !1982, size: 64, offset: 448)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1915, file: !208, line: 1097, baseType: !1995, size: 256, offset: 1408)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1915, file: !208, line: 1089, size: 256, elements: !1996)
!1996 = !{!1997, !2006, !2012}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1995, file: !208, line: 1090, baseType: !1998, size: 256)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1999, line: 10, size: 256, elements: !2000)
!1999 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2000 = !{!2001, !2002, !2005}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1998, file: !1999, line: 11, baseType: !461, size: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1998, file: !1999, line: 12, baseType: !2003, size: 64, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1999, line: 5, flags: DIFlagFwdDecl)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1998, file: !1999, line: 13, baseType: !553, size: 128, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1995, file: !208, line: 1091, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1999, line: 17, size: 64, elements: !2008)
!2008 = !{!2009}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2007, file: !1999, line: 18, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1999, line: 16, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1995, file: !208, line: 1096, baseType: !2013, size: 192)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !208, line: 1092, size: 192, elements: !2014)
!2014 = !{!2015, !2016, !2017}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2013, file: !208, line: 1093, baseType: !553, size: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2013, file: !208, line: 1094, baseType: !294, size: 32, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2013, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1829, file: !208, line: 1843, baseType: !2019, size: 64, offset: 1280)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!941, !732, !1091, !294, !944, !1840, !294}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1829, file: !208, line: 1844, baseType: !2023, size: 64, offset: 1344)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!504, !732, !504, !504, !504, !504}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1829, file: !208, line: 1845, baseType: !2027, size: 64, offset: 1408)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!294, !294}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1829, file: !208, line: 1846, baseType: !1911, size: 64, offset: 1472)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1829, file: !208, line: 1847, baseType: !2032, size: 64, offset: 1536)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!941, !2035, !732, !1840, !944, !7}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !511, line: 53, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1829, file: !208, line: 1848, baseType: !2038, size: 64, offset: 1600)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!941, !732, !1840, !2035, !944, !7}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1829, file: !208, line: 1849, baseType: !2042, size: 64, offset: 1664)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!294, !732, !295, !2045, !1177}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1829, file: !208, line: 1850, baseType: !2047, size: 64, offset: 1728)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!295, !732, !294, !896, !896}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1829, file: !208, line: 1852, baseType: !2051, size: 64, offset: 1792)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !1082, !732}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1829, file: !208, line: 1856, baseType: !2055, size: 64, offset: 1856)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!941, !732, !896, !732, !896, !944, !7}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1829, file: !208, line: 1858, baseType: !2059, size: 64, offset: 1920)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!896, !732, !896, !732, !896, !896, !7}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1829, file: !208, line: 1861, baseType: !1903, size: 64, offset: 1984)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1824, file: !208, line: 692, baseType: !1035, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !797, file: !208, line: 694, baseType: !2065, size: 64, offset: 2560)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !2067)
!2067 = !{!2068, !2069, !2070, !2071}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2066, file: !208, line: 1101, baseType: !1112)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2066, file: !208, line: 1102, baseType: !553, size: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2066, file: !208, line: 1103, baseType: !553, size: 128, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2066, file: !208, line: 1104, baseType: !553, size: 128, offset: 256)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !797, file: !208, line: 695, baseType: !1104, size: 1216, align: 64, offset: 2624)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !797, file: !208, line: 696, baseType: !553, size: 128, offset: 3840)
!2074 = !DIDerivedType(tag: DW_TAG_member, scope: !797, file: !208, line: 697, baseType: !2075, size: 64, offset: 3968)
!2075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !797, file: !208, line: 697, size: 64, elements: !2076)
!2076 = !{!2077, !2078, !2079, !2390, !2391}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2075, file: !208, line: 698, baseType: !2035, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2075, file: !208, line: 699, baseType: !1555, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2075, file: !208, line: 700, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2082, line: 14, size: 832, elements: !2083)
!2082 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2083 = !{!2084, !2385, !2386, !2387, !2388, !2389}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2081, file: !2082, line: 15, baseType: !2085, size: 512)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2086, line: 64, size: 512, elements: !2087)
!2086 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2087 = !{!2088, !2089, !2090, !2092, !2134, !2236, !2375, !2380, !2381, !2382, !2383, !2384}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2085, file: !2086, line: 65, baseType: !304, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2085, file: !2086, line: 66, baseType: !553, size: 128, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2085, file: !2086, line: 67, baseType: !2091, size: 64, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2085, file: !2086, line: 68, baseType: !2093, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2086, line: 192, size: 704, elements: !2095)
!2095 = !{!2096, !2097, !2098, !2099}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2094, file: !2086, line: 193, baseType: !553, size: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2094, file: !2086, line: 194, baseType: !1112, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2094, file: !2086, line: 195, baseType: !2085, size: 512, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2094, file: !2086, line: 196, baseType: !2100, size: 64, offset: 640)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2102)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2086, line: 156, size: 192, elements: !2103)
!2103 = !{!2104, !2109, !2114}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2102, file: !2086, line: 157, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2106)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!294, !2093, !2091}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2102, file: !2086, line: 158, baseType: !2110, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2111)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!304, !2093, !2091}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2102, file: !2086, line: 159, baseType: !2115, size: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2116)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!294, !2093, !2091, !2119}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2086, line: 148, size: 20736, elements: !2121)
!2121 = !{!2122, !2124, !2128, !2129, !2133}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2120, file: !2086, line: 149, baseType: !2123, size: 192)
!2123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 192, elements: !1020)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2120, file: !2086, line: 150, baseType: !2125, size: 4096, offset: 192)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 4096, elements: !2126)
!2126 = !{!2127}
!2127 = !DISubrange(count: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2120, file: !2086, line: 151, baseType: !294, size: 32, offset: 4288)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2120, file: !2086, line: 152, baseType: !2130, size: 16384, offset: 4320)
!2130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 16384, elements: !2131)
!2131 = !{!2132}
!2132 = !DISubrange(count: 2048)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2120, file: !2086, line: 153, baseType: !294, size: 32, offset: 20704)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2085, file: !2086, line: 69, baseType: !2135, size: 64, offset: 320)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2086, line: 138, size: 448, elements: !2137)
!2137 = !{!2138, !2142, !2161, !2163, !2196, !2226, !2230}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2136, file: !2086, line: 139, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !2091}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2136, file: !2086, line: 140, baseType: !2143, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2145)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2146, line: 230, size: 128, elements: !2147)
!2146 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2147 = !{!2148, !2157}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2145, file: !2146, line: 231, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!941, !2091, !2152, !326}
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2146, line: 30, size: 128, elements: !2154)
!2154 = !{!2155, !2156}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2153, file: !2146, line: 31, baseType: !304, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2153, file: !2146, line: 32, baseType: !800, size: 16, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2145, file: !2146, line: 232, baseType: !2158, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!941, !2091, !2152, !304, !944}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2136, file: !2086, line: 141, baseType: !2162, size: 64, offset: 128)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2136, file: !2086, line: 142, baseType: !2164, size: 64, offset: 192)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2167)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2146, line: 84, size: 320, elements: !2168)
!2168 = !{!2169, !2170, !2174, !2193, !2194}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2167, file: !2146, line: 85, baseType: !304, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2167, file: !2146, line: 86, baseType: !2171, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!800, !2091, !2152, !294}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2167, file: !2146, line: 88, baseType: !2175, size: 64, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!800, !2091, !2178, !294}
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2146, line: 168, size: 448, elements: !2180)
!2180 = !{!2181, !2182, !2183, !2184, !2188, !2189}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2179, file: !2146, line: 169, baseType: !2153, size: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2179, file: !2146, line: 170, baseType: !944, size: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2179, file: !2146, line: 171, baseType: !293, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2179, file: !2146, line: 172, baseType: !2185, size: 64, offset: 256)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!941, !732, !2091, !2178, !326, !896, !944}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2179, file: !2146, line: 174, baseType: !2185, size: 64, offset: 320)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2179, file: !2146, line: 176, baseType: !2190, size: 64, offset: 384)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!294, !732, !2091, !2178, !698}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2167, file: !2146, line: 90, baseType: !2162, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2167, file: !2146, line: 91, baseType: !2195, size: 64, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2136, file: !2086, line: 143, baseType: !2197, size: 64, offset: 256)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!2200, !2091}
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2202)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !2203)
!2203 = !{!2204, !2205, !2209, !2213, !2221, !2225}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2202, file: !225, line: 40, baseType: !224, size: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2202, file: !225, line: 41, baseType: !2206, size: 64, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!855}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2202, file: !225, line: 42, baseType: !2210, size: 64, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!293}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2202, file: !225, line: 43, baseType: !2214, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!2217, !2219}
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2202, file: !225, line: 44, baseType: !2222, size: 64, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!2217}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2202, file: !225, line: 45, baseType: !328, size: 64, offset: 320)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2136, file: !2086, line: 144, baseType: !2227, size: 64, offset: 320)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!2217, !2091}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2136, file: !2086, line: 145, baseType: !2231, size: 64, offset: 384)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{null, !2091, !2234, !2235}
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2085, file: !2086, line: 70, baseType: !2237, size: 64, offset: 384)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !988, line: 123, size: 1024, elements: !2239)
!2239 = !{!2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2368, !2369, !2370, !2371, !2372}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2238, file: !988, line: 124, baseType: !528, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2238, file: !988, line: 125, baseType: !528, size: 32, offset: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2238, file: !988, line: 135, baseType: !2237, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2238, file: !988, line: 136, baseType: !304, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2238, file: !988, line: 138, baseType: !501, size: 192, align: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2238, file: !988, line: 140, baseType: !2217, size: 64, offset: 384)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2238, file: !988, line: 141, baseType: !7, size: 32, offset: 448)
!2247 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !988, line: 142, baseType: !2248, size: 256, offset: 512)
!2248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2238, file: !988, line: 142, size: 256, elements: !2249)
!2249 = !{!2250, !2296, !2300}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2248, file: !988, line: 143, baseType: !2251, size: 192)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !988, line: 91, size: 192, elements: !2252)
!2252 = !{!2253, !2254, !2255}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2251, file: !988, line: 92, baseType: !504, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2251, file: !988, line: 94, baseType: !497, size: 64, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2251, file: !988, line: 100, baseType: !2256, size: 64, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !988, line: 180, size: 704, elements: !2258)
!2258 = !{!2259, !2260, !2261, !2268, !2269, !2270, !2294, !2295}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2257, file: !988, line: 182, baseType: !2237, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2257, file: !988, line: 183, baseType: !7, size: 32, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2257, file: !988, line: 186, baseType: !2262, size: 192, offset: 128)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2263, line: 19, size: 192, elements: !2264)
!2263 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2264 = !{!2265, !2266, !2267}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2262, file: !2263, line: 20, baseType: !1108, size: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2262, file: !2263, line: 21, baseType: !7, size: 32, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2262, file: !2263, line: 22, baseType: !7, size: 32, offset: 160)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2257, file: !988, line: 187, baseType: !461, size: 32, offset: 320)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2257, file: !988, line: 188, baseType: !461, size: 32, offset: 352)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2257, file: !988, line: 189, baseType: !2271, size: 64, offset: 384)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !988, line: 168, size: 320, elements: !2273)
!2273 = !{!2274, !2278, !2282, !2286, !2290}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2272, file: !988, line: 169, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!294, !1082, !2256}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2272, file: !988, line: 171, baseType: !2279, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!294, !2237, !304, !800}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2272, file: !988, line: 173, baseType: !2283, size: 64, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!294, !2237}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2272, file: !988, line: 174, baseType: !2287, size: 64, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!294, !2237, !2237, !304}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2272, file: !988, line: 176, baseType: !2291, size: 64, offset: 256)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!294, !1082, !2237, !2256}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2257, file: !988, line: 192, baseType: !553, size: 128, offset: 448)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2257, file: !988, line: 194, baseType: !1611, size: 128, offset: 576)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2248, file: !988, line: 144, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !988, line: 103, size: 64, elements: !2298)
!2298 = !{!2299}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2297, file: !988, line: 104, baseType: !2237, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2248, file: !988, line: 145, baseType: !2301, size: 256)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !988, line: 107, size: 256, elements: !2302)
!2302 = !{!2303, !2363, !2366, !2367}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2301, file: !988, line: 108, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2306)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !988, line: 217, size: 768, elements: !2307)
!2307 = !{!2308, !2328, !2332, !2336, !2340, !2344, !2348, !2352, !2353, !2354, !2355, !2359}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2306, file: !988, line: 222, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!294, !2312}
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !988, line: 197, size: 1088, elements: !2314)
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2313, file: !988, line: 199, baseType: !2237, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2313, file: !988, line: 200, baseType: !732, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2313, file: !988, line: 201, baseType: !1082, size: 64, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2313, file: !988, line: 202, baseType: !293, size: 64, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2313, file: !988, line: 205, baseType: !1379, size: 192, offset: 256)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2313, file: !988, line: 206, baseType: !1379, size: 192, offset: 448)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2313, file: !988, line: 207, baseType: !294, size: 32, offset: 640)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2313, file: !988, line: 208, baseType: !553, size: 128, offset: 704)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2313, file: !988, line: 209, baseType: !326, size: 64, offset: 832)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2313, file: !988, line: 211, baseType: !944, size: 64, offset: 896)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2313, file: !988, line: 212, baseType: !855, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2313, file: !988, line: 213, baseType: !855, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2313, file: !988, line: 214, baseType: !727, size: 64, offset: 1024)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2306, file: !988, line: 223, baseType: !2329, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{null, !2312}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2306, file: !988, line: 236, baseType: !2333, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!294, !1082, !293}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2306, file: !988, line: 238, baseType: !2337, size: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!293, !1082, !1840}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2306, file: !988, line: 239, baseType: !2341, size: 64, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!293, !1082, !293, !1840}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2306, file: !988, line: 240, baseType: !2345, size: 64, offset: 320)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{null, !1082, !293}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2306, file: !988, line: 242, baseType: !2349, size: 64, offset: 384)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!941, !2312, !326, !944, !896}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2306, file: !988, line: 252, baseType: !944, size: 64, offset: 448)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2306, file: !988, line: 259, baseType: !855, size: 8, offset: 512)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2306, file: !988, line: 260, baseType: !2349, size: 64, offset: 576)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2306, file: !988, line: 263, baseType: !2356, size: 64, offset: 640)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!1869, !2312, !1871}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2306, file: !988, line: 266, baseType: !2360, size: 64, offset: 704)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!294, !2312, !698}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2301, file: !988, line: 109, baseType: !2364, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !988, line: 31, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2301, file: !988, line: 110, baseType: !896, size: 64, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2301, file: !988, line: 111, baseType: !2237, size: 64, offset: 192)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2238, file: !988, line: 148, baseType: !293, size: 64, offset: 768)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2238, file: !988, line: 154, baseType: !560, size: 64, offset: 832)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2238, file: !988, line: 156, baseType: !337, size: 16, offset: 896)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2238, file: !988, line: 157, baseType: !800, size: 16, offset: 912)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2238, file: !988, line: 158, baseType: !2373, size: 64, offset: 960)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !988, line: 32, flags: DIFlagFwdDecl)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2085, file: !2086, line: 71, baseType: !2376, size: 32, offset: 448)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2377, line: 19, size: 32, elements: !2378)
!2377 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2378 = !{!2379}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2376, file: !2377, line: 20, baseType: !523, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2085, file: !2086, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2085, file: !2086, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2085, file: !2086, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2085, file: !2086, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2085, file: !2086, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2081, file: !2082, line: 16, baseType: !308, size: 64, offset: 512)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2081, file: !2082, line: 17, baseType: !1827, size: 64, offset: 576)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2081, file: !2082, line: 18, baseType: !553, size: 128, offset: 640)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2081, file: !2082, line: 19, baseType: !878, size: 32, offset: 768)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2081, file: !2082, line: 20, baseType: !7, size: 32, offset: 800)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2075, file: !208, line: 701, baseType: !326, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2075, file: !208, line: 702, baseType: !7, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !797, file: !208, line: 705, baseType: !462, size: 32, offset: 4032)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !797, file: !208, line: 708, baseType: !462, size: 32, offset: 4064)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !797, file: !208, line: 709, baseType: !1644, size: 64, offset: 4096)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !797, file: !208, line: 720, baseType: !293, size: 64, offset: 4160)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !763, file: !760, line: 98, baseType: !2397, size: 256, offset: 448)
!2397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 256, elements: !1648)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !763, file: !760, line: 101, baseType: !2399, size: 32, offset: 704)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2400, line: 25, size: 32, elements: !2401)
!2400 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2401 = !{!2402}
!2402 = !DIDerivedType(tag: DW_TAG_member, scope: !2399, file: !2400, line: 26, baseType: !2403, size: 32)
!2403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2399, file: !2400, line: 26, size: 32, elements: !2404)
!2404 = !{!2405}
!2405 = !DIDerivedType(tag: DW_TAG_member, scope: !2403, file: !2400, line: 30, baseType: !2406, size: 32)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2403, file: !2400, line: 30, size: 32, elements: !2407)
!2407 = !{!2408, !2409}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2406, file: !2400, line: 31, baseType: !1112)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2406, file: !2400, line: 32, baseType: !294, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !763, file: !760, line: 102, baseType: !1665, size: 64, offset: 768)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !763, file: !760, line: 103, baseType: !968, size: 64, offset: 832)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !763, file: !760, line: 104, baseType: !504, size: 64, offset: 896)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !763, file: !760, line: 105, baseType: !293, size: 64, offset: 960)
!2414 = !DIDerivedType(tag: DW_TAG_member, scope: !763, file: !760, line: 107, baseType: !2415, size: 128, offset: 1024)
!2415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !763, file: !760, line: 107, size: 128, elements: !2416)
!2416 = !{!2417, !2418}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2415, file: !760, line: 108, baseType: !553, size: 128)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2415, file: !760, line: 109, baseType: !1880, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !763, file: !760, line: 111, baseType: !553, size: 128, offset: 1152)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !763, file: !760, line: 112, baseType: !553, size: 128, offset: 1280)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !763, file: !760, line: 120, baseType: !2422, size: 128, offset: 1408)
!2422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !763, file: !760, line: 116, size: 128, elements: !2423)
!2423 = !{!2424, !2425, !2426}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2422, file: !760, line: 117, baseType: !1008, size: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2422, file: !760, line: 118, baseType: !772, size: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2422, file: !760, line: 119, baseType: !745, size: 128, align: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !733, file: !208, line: 922, baseType: !796, size: 64, offset: 256)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !733, file: !208, line: 923, baseType: !1827, size: 64, offset: 320)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !733, file: !208, line: 929, baseType: !1112, offset: 384)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !733, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !733, file: !208, line: 931, baseType: !1129, size: 64, offset: 448)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !733, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !733, file: !208, line: 933, baseType: !1661, size: 32, offset: 544)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !733, file: !208, line: 934, baseType: !1379, size: 192, offset: 576)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !733, file: !208, line: 935, baseType: !896, size: 64, offset: 768)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !733, file: !208, line: 936, baseType: !2437, size: 192, offset: 832)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !2438)
!2438 = !{!2439, !2440, !2462, !2463, !2464, !2465}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2437, file: !208, line: 886, baseType: !1936)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2437, file: !208, line: 887, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !2443)
!2443 = !{!2444, !2445, !2446, !2447, !2451, !2452, !2453, !2454}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2442, file: !217, line: 61, baseType: !523, size: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2442, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2442, file: !217, line: 63, baseType: !1112, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2442, file: !217, line: 65, baseType: !2448, size: 256, offset: 64)
!2448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 256, elements: !2449)
!2449 = !{!2450}
!2450 = !DISubrange(count: 4)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2442, file: !217, line: 66, baseType: !1004, size: 64, offset: 320)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2442, file: !217, line: 68, baseType: !1611, size: 128, offset: 384)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2442, file: !217, line: 69, baseType: !745, size: 128, align: 64, offset: 512)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2442, file: !217, line: 70, baseType: !2455, size: 128, offset: 640)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2456, size: 128, elements: !683)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !2457)
!2457 = !{!2458, !2459}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2456, file: !217, line: 55, baseType: !294, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2456, file: !217, line: 56, baseType: !2460, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2437, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2437, file: !208, line: 889, baseType: !803, size: 32, offset: 96)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2437, file: !208, line: 889, baseType: !803, size: 32, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2437, file: !208, line: 890, baseType: !294, size: 32, offset: 160)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !733, file: !208, line: 937, baseType: !2467, size: 64, offset: 1024)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2469)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2470, line: 111, size: 1280, elements: !2471)
!2470 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2471 = !{!2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2491, !2492, !2493, !2494, !2495, !2496, !2606, !2607, !2608, !2609, !2635, !2636, !2646}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2469, file: !2470, line: 112, baseType: !528, size: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2469, file: !2470, line: 120, baseType: !803, size: 32, offset: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2469, file: !2470, line: 121, baseType: !811, size: 32, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2469, file: !2470, line: 122, baseType: !803, size: 32, offset: 96)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2469, file: !2470, line: 123, baseType: !811, size: 32, offset: 128)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2469, file: !2470, line: 124, baseType: !803, size: 32, offset: 160)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2469, file: !2470, line: 125, baseType: !811, size: 32, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2469, file: !2470, line: 126, baseType: !803, size: 32, offset: 224)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2469, file: !2470, line: 127, baseType: !811, size: 32, offset: 256)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2469, file: !2470, line: 128, baseType: !7, size: 32, offset: 288)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2469, file: !2470, line: 129, baseType: !2483, size: 64, offset: 320)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2484, line: 26, baseType: !2485)
!2484 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2484, line: 24, size: 64, elements: !2486)
!2486 = !{!2487}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2485, file: !2484, line: 25, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 64, elements: !2489)
!2489 = !{!2490}
!2490 = !DISubrange(count: 2)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2469, file: !2470, line: 130, baseType: !2483, size: 64, offset: 384)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2469, file: !2470, line: 131, baseType: !2483, size: 64, offset: 448)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2469, file: !2470, line: 132, baseType: !2483, size: 64, offset: 512)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2469, file: !2470, line: 133, baseType: !2483, size: 64, offset: 576)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2469, file: !2470, line: 135, baseType: !345, size: 8, offset: 640)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2469, file: !2470, line: 137, baseType: !2497, size: 64, offset: 704)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2499, line: 189, size: 1664, elements: !2500)
!2499 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2500 = !{!2501, !2502, !2507, !2512, !2513, !2516, !2517, !2522, !2523, !2524, !2525, !2527, !2528, !2529, !2531, !2532, !2570, !2591}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2498, file: !2499, line: 190, baseType: !523, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2498, file: !2499, line: 191, baseType: !2503, size: 32, offset: 32)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2499, line: 28, baseType: !2504)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !292, line: 98, baseType: !2505)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !334, line: 20, baseType: !2506)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !336, line: 26, baseType: !294)
!2507 = !DIDerivedType(tag: DW_TAG_member, scope: !2498, file: !2499, line: 192, baseType: !2508, size: 192, offset: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2498, file: !2499, line: 192, size: 192, elements: !2509)
!2509 = !{!2510, !2511}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2508, file: !2499, line: 193, baseType: !553, size: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2508, file: !2499, line: 194, baseType: !501, size: 192, align: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2498, file: !2499, line: 199, baseType: !1125, size: 256, offset: 256)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2498, file: !2499, line: 200, baseType: !2514, size: 64, offset: 512)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2499, line: 200, flags: DIFlagFwdDecl)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2498, file: !2499, line: 201, baseType: !293, size: 64, offset: 576)
!2517 = !DIDerivedType(tag: DW_TAG_member, scope: !2498, file: !2499, line: 202, baseType: !2518, size: 64, offset: 640)
!2518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2498, file: !2499, line: 202, size: 64, elements: !2519)
!2519 = !{!2520, !2521}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2518, file: !2499, line: 203, baseType: !903, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2518, file: !2499, line: 204, baseType: !903, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2498, file: !2499, line: 206, baseType: !903, size: 64, offset: 704)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2498, file: !2499, line: 207, baseType: !803, size: 32, offset: 768)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2498, file: !2499, line: 208, baseType: !811, size: 32, offset: 800)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2498, file: !2499, line: 209, baseType: !2526, size: 32, offset: 832)
!2526 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2499, line: 31, baseType: !922)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2498, file: !2499, line: 210, baseType: !337, size: 16, offset: 864)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2498, file: !2499, line: 211, baseType: !337, size: 16, offset: 880)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2498, file: !2499, line: 215, baseType: !2530, size: 16, offset: 896)
!2530 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2498, file: !2499, line: 222, baseType: !504, size: 64, offset: 960)
!2532 = !DIDerivedType(tag: DW_TAG_member, scope: !2498, file: !2499, line: 239, baseType: !2533, size: 320, offset: 1024)
!2533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2498, file: !2499, line: 239, size: 320, elements: !2534)
!2534 = !{!2535, !2562}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2533, file: !2499, line: 240, baseType: !2536, size: 320)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2499, line: 108, size: 320, elements: !2537)
!2537 = !{!2538, !2539, !2551, !2554, !2561}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2536, file: !2499, line: 110, baseType: !504, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, scope: !2536, file: !2499, line: 111, baseType: !2540, size: 64, offset: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2536, file: !2499, line: 111, size: 64, elements: !2541)
!2541 = !{!2542, !2550}
!2542 = !DIDerivedType(tag: DW_TAG_member, scope: !2540, file: !2499, line: 112, baseType: !2543, size: 64)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2540, file: !2499, line: 112, size: 64, elements: !2544)
!2544 = !{!2545, !2546}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2543, file: !2499, line: 114, baseType: !333, size: 16)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2543, file: !2499, line: 115, baseType: !2547, size: 48, offset: 16)
!2547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 48, elements: !2548)
!2548 = !{!2549}
!2549 = !DISubrange(count: 6)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2540, file: !2499, line: 121, baseType: !504, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2536, file: !2499, line: 123, baseType: !2552, size: 64, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2499, line: 96, flags: DIFlagFwdDecl)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2536, file: !2499, line: 124, baseType: !2555, size: 64, offset: 192)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2499, line: 102, size: 192, elements: !2557)
!2557 = !{!2558, !2559, !2560}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2556, file: !2499, line: 103, baseType: !745, size: 128, align: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2556, file: !2499, line: 104, baseType: !523, size: 32, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2556, file: !2499, line: 105, baseType: !855, size: 8, offset: 160)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2536, file: !2499, line: 125, baseType: !304, size: 64, offset: 256)
!2562 = !DIDerivedType(tag: DW_TAG_member, scope: !2533, file: !2499, line: 241, baseType: !2563, size: 320)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2533, file: !2499, line: 241, size: 320, elements: !2564)
!2564 = !{!2565, !2566, !2567, !2568, !2569}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2563, file: !2499, line: 242, baseType: !504, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2563, file: !2499, line: 243, baseType: !504, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2563, file: !2499, line: 244, baseType: !2552, size: 64, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2563, file: !2499, line: 245, baseType: !2555, size: 64, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2563, file: !2499, line: 246, baseType: !326, size: 64, offset: 256)
!2570 = !DIDerivedType(tag: DW_TAG_member, scope: !2498, file: !2499, line: 254, baseType: !2571, size: 256, offset: 1344)
!2571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2498, file: !2499, line: 254, size: 256, elements: !2572)
!2572 = !{!2573, !2579}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2571, file: !2499, line: 255, baseType: !2574, size: 256)
!2574 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2499, line: 128, size: 256, elements: !2575)
!2575 = !{!2576, !2577}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2574, file: !2499, line: 129, baseType: !293, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2574, file: !2499, line: 130, baseType: !2578, size: 256)
!2578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 256, elements: !2449)
!2579 = !DIDerivedType(tag: DW_TAG_member, scope: !2571, file: !2499, line: 256, baseType: !2580, size: 256)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2571, file: !2499, line: 256, size: 256, elements: !2581)
!2581 = !{!2582, !2583}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2580, file: !2499, line: 258, baseType: !553, size: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2580, file: !2499, line: 259, baseType: !2584, size: 128, offset: 128)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2585, line: 22, size: 128, elements: !2586)
!2585 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2586 = !{!2587, !2590}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2584, file: !2585, line: 23, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2585, line: 23, flags: DIFlagFwdDecl)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2584, file: !2585, line: 24, baseType: !504, size: 64, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2498, file: !2499, line: 274, baseType: !2592, size: 64, offset: 1600)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2499, line: 170, size: 192, elements: !2594)
!2594 = !{!2595, !2604, !2605}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2593, file: !2499, line: 171, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2499, line: 165, baseType: !2597)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!294, !2497, !2600, !2602, !2497}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2553)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2574)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2593, file: !2499, line: 172, baseType: !2497, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2593, file: !2499, line: 173, baseType: !2552, size: 64, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2469, file: !2470, line: 138, baseType: !2497, size: 64, offset: 768)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2469, file: !2470, line: 139, baseType: !2497, size: 64, offset: 832)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2469, file: !2470, line: 140, baseType: !2497, size: 64, offset: 896)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2469, file: !2470, line: 145, baseType: !2610, size: 64, offset: 960)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2612, line: 13, size: 896, elements: !2613)
!2612 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2613 = !{!2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2611, file: !2612, line: 14, baseType: !523, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2611, file: !2612, line: 15, baseType: !528, size: 32, offset: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2611, file: !2612, line: 16, baseType: !528, size: 32, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2611, file: !2612, line: 21, baseType: !1129, size: 64, offset: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2611, file: !2612, line: 27, baseType: !504, size: 64, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2611, file: !2612, line: 28, baseType: !504, size: 64, offset: 256)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2611, file: !2612, line: 29, baseType: !1129, size: 64, offset: 320)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2611, file: !2612, line: 32, baseType: !1008, size: 128, offset: 384)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2611, file: !2612, line: 33, baseType: !803, size: 32, offset: 512)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2611, file: !2612, line: 37, baseType: !1129, size: 64, offset: 576)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2611, file: !2612, line: 44, baseType: !2625, size: 256, offset: 640)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2626, line: 15, size: 256, elements: !2627)
!2626 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2627 = !{!2628, !2629, !2630, !2631, !2632, !2633, !2634}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2625, file: !2626, line: 16, baseType: !483)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2625, file: !2626, line: 18, baseType: !294, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2625, file: !2626, line: 19, baseType: !294, size: 32, offset: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2625, file: !2626, line: 20, baseType: !294, size: 32, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2625, file: !2626, line: 21, baseType: !294, size: 32, offset: 96)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2625, file: !2626, line: 22, baseType: !504, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2625, file: !2626, line: 23, baseType: !504, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2469, file: !2470, line: 146, baseType: !1749, size: 64, offset: 1024)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2469, file: !2470, line: 147, baseType: !2637, size: 64, offset: 1088)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2470, line: 25, size: 64, elements: !2639)
!2639 = !{!2640, !2641, !2642}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2638, file: !2470, line: 26, baseType: !528, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2638, file: !2470, line: 27, baseType: !294, size: 32, offset: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2638, file: !2470, line: 28, baseType: !2643, offset: 64)
!2643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, elements: !2644)
!2644 = !{!2645}
!2645 = !DISubrange(count: 0)
!2646 = !DIDerivedType(tag: DW_TAG_member, scope: !2469, file: !2470, line: 149, baseType: !2647, size: 128, offset: 1152)
!2647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2469, file: !2470, line: 149, size: 128, elements: !2648)
!2648 = !{!2649, !2650}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2647, file: !2470, line: 150, baseType: !294, size: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2647, file: !2470, line: 151, baseType: !745, size: 128, align: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !733, file: !208, line: 938, baseType: !2652, size: 256, offset: 1088)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !2653)
!2653 = !{!2654, !2655, !2656, !2657, !2658, !2659}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2652, file: !208, line: 897, baseType: !504, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2652, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2652, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2652, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2652, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2652, file: !208, line: 904, baseType: !896, size: 64, offset: 192)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !733, file: !208, line: 940, baseType: !560, size: 64, offset: 1344)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !733, file: !208, line: 945, baseType: !293, size: 64, offset: 1408)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !733, file: !208, line: 949, baseType: !553, size: 128, offset: 1472)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !733, file: !208, line: 950, baseType: !553, size: 128, offset: 1600)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !733, file: !208, line: 952, baseType: !1103, size: 64, offset: 1728)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !733, file: !208, line: 953, baseType: !1263, size: 32, offset: 1792)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !733, file: !208, line: 954, baseType: !1263, size: 32, offset: 1824)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !699, file: !692, line: 362, baseType: !293, size: 64, offset: 1344)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !699, file: !692, line: 365, baseType: !1129, size: 64, offset: 1408)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !699, file: !692, line: 373, baseType: !2670, offset: 1472)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !692, line: 296, elements: !491)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !695, file: !692, line: 391, baseType: !497, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !695, file: !692, line: 392, baseType: !560, size: 64, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !695, file: !692, line: 394, baseType: !2023, size: 64, offset: 192)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !695, file: !692, line: 398, baseType: !504, size: 64, offset: 256)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !695, file: !692, line: 399, baseType: !504, size: 64, offset: 320)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !695, file: !692, line: 405, baseType: !504, size: 64, offset: 384)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !695, file: !692, line: 406, baseType: !504, size: 64, offset: 448)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !695, file: !692, line: 407, baseType: !2679, size: 64, offset: 512)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !710, line: 286, baseType: !2681)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !710, line: 286, size: 64, elements: !2682)
!2682 = !{!2683}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2681, file: !710, line: 286, baseType: !2684, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !715, line: 18, baseType: !504)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !695, file: !692, line: 416, baseType: !528, size: 32, offset: 576)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !695, file: !692, line: 428, baseType: !528, size: 32, offset: 608)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !695, file: !692, line: 437, baseType: !528, size: 32, offset: 640)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !695, file: !692, line: 447, baseType: !528, size: 32, offset: 672)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !695, file: !692, line: 450, baseType: !1129, size: 64, offset: 704)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !695, file: !692, line: 452, baseType: !294, size: 32, offset: 768)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !695, file: !692, line: 454, baseType: !1112, offset: 800)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !695, file: !692, line: 457, baseType: !1125, size: 256, offset: 832)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !695, file: !692, line: 459, baseType: !553, size: 128, offset: 1088)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !695, file: !692, line: 466, baseType: !504, size: 64, offset: 1216)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !695, file: !692, line: 467, baseType: !504, size: 64, offset: 1280)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !695, file: !692, line: 469, baseType: !504, size: 64, offset: 1344)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !695, file: !692, line: 470, baseType: !504, size: 64, offset: 1408)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !695, file: !692, line: 471, baseType: !1131, size: 64, offset: 1472)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !695, file: !692, line: 472, baseType: !504, size: 64, offset: 1536)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !695, file: !692, line: 473, baseType: !504, size: 64, offset: 1600)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !695, file: !692, line: 474, baseType: !504, size: 64, offset: 1664)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !695, file: !692, line: 475, baseType: !504, size: 64, offset: 1728)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !695, file: !692, line: 477, baseType: !1112, offset: 1792)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !695, file: !692, line: 478, baseType: !504, size: 64, offset: 1792)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !695, file: !692, line: 478, baseType: !504, size: 64, offset: 1856)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !695, file: !692, line: 478, baseType: !504, size: 64, offset: 1920)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !695, file: !692, line: 478, baseType: !504, size: 64, offset: 1984)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !695, file: !692, line: 479, baseType: !504, size: 64, offset: 2048)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !695, file: !692, line: 479, baseType: !504, size: 64, offset: 2112)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !695, file: !692, line: 479, baseType: !504, size: 64, offset: 2176)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !695, file: !692, line: 480, baseType: !504, size: 64, offset: 2240)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !695, file: !692, line: 480, baseType: !504, size: 64, offset: 2304)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !695, file: !692, line: 480, baseType: !504, size: 64, offset: 2368)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !695, file: !692, line: 480, baseType: !504, size: 64, offset: 2432)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !695, file: !692, line: 482, baseType: !2716, size: 2816, offset: 2496)
!2716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, size: 2816, elements: !2717)
!2717 = !{!2718}
!2718 = !DISubrange(count: 44)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !695, file: !692, line: 488, baseType: !2720, size: 256, offset: 5312)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2721, line: 60, size: 256, elements: !2722)
!2721 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2722 = !{!2723}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2720, file: !2721, line: 61, baseType: !2724, size: 256)
!2724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1129, size: 256, elements: !2449)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !695, file: !692, line: 490, baseType: !2726, size: 64, offset: 5568)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !692, line: 490, flags: DIFlagFwdDecl)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !695, file: !692, line: 493, baseType: !2729, size: 896, offset: 5632)
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2730, line: 53, baseType: !2731)
!2730 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2730, line: 13, size: 896, elements: !2732)
!2732 = !{!2733, !2734, !2735, !2736, !2739, !2740, !2741, !2742, !2762, !2763, !2764}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2731, file: !2730, line: 18, baseType: !560, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2731, file: !2730, line: 28, baseType: !1131, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2731, file: !2730, line: 31, baseType: !1125, size: 256, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2731, file: !2730, line: 32, baseType: !2737, size: 64, offset: 384)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2730, line: 32, flags: DIFlagFwdDecl)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2731, file: !2730, line: 37, baseType: !337, size: 16, offset: 448)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2731, file: !2730, line: 40, baseType: !1379, size: 192, offset: 512)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2731, file: !2730, line: 41, baseType: !293, size: 64, offset: 704)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2731, file: !2730, line: 42, baseType: !2743, size: 64, offset: 768)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2745)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2746, line: 13, size: 896, elements: !2747)
!2746 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2747 = !{!2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2745, file: !2746, line: 14, baseType: !293, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2745, file: !2746, line: 15, baseType: !504, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2745, file: !2746, line: 17, baseType: !504, size: 64, offset: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2745, file: !2746, line: 17, baseType: !504, size: 64, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2745, file: !2746, line: 19, baseType: !295, size: 64, offset: 256)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2745, file: !2746, line: 21, baseType: !295, size: 64, offset: 320)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2745, file: !2746, line: 22, baseType: !295, size: 64, offset: 384)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2745, file: !2746, line: 23, baseType: !295, size: 64, offset: 448)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2745, file: !2746, line: 24, baseType: !295, size: 64, offset: 512)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2745, file: !2746, line: 25, baseType: !295, size: 64, offset: 576)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2745, file: !2746, line: 26, baseType: !295, size: 64, offset: 640)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2745, file: !2746, line: 27, baseType: !295, size: 64, offset: 704)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2745, file: !2746, line: 28, baseType: !295, size: 64, offset: 768)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2745, file: !2746, line: 29, baseType: !295, size: 64, offset: 832)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2731, file: !2730, line: 44, baseType: !528, size: 32, offset: 832)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2731, file: !2730, line: 50, baseType: !333, size: 16, offset: 864)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2731, file: !2730, line: 51, baseType: !2765, size: 16, offset: 880)
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !334, line: 18, baseType: !2766)
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !336, line: 23, baseType: !2530)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !695, file: !692, line: 495, baseType: !504, size: 64, offset: 6528)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !695, file: !692, line: 497, baseType: !2769, size: 64, offset: 6592)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !692, line: 381, size: 384, elements: !2771)
!2771 = !{!2772, !2773, !2779}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2770, file: !692, line: 382, baseType: !528, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2770, file: !692, line: 383, baseType: !2774, size: 128, offset: 64)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !692, line: 376, size: 128, elements: !2775)
!2775 = !{!2776, !2777}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2774, file: !692, line: 377, baseType: !509, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2774, file: !692, line: 378, baseType: !2778, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2770, file: !692, line: 384, baseType: !2780, size: 192, offset: 192)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2781, line: 26, size: 192, elements: !2782)
!2781 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2782 = !{!2783, !2784}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2780, file: !2781, line: 27, baseType: !7, size: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2780, file: !2781, line: 28, baseType: !2785, size: 128, offset: 64)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2786, line: 43, size: 128, elements: !2787)
!2786 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2787 = !{!2788, !2789}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2785, file: !2786, line: 44, baseType: !483)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2785, file: !2786, line: 45, baseType: !553, size: 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !695, file: !692, line: 500, baseType: !1112, offset: 6656)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !695, file: !692, line: 501, baseType: !2792, size: 64, offset: 6656)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !692, line: 387, flags: DIFlagFwdDecl)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !695, file: !692, line: 516, baseType: !1749, size: 64, offset: 6720)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !695, file: !692, line: 519, baseType: !732, size: 64, offset: 6784)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !695, file: !692, line: 521, baseType: !2797, size: 64, offset: 6848)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !692, line: 521, flags: DIFlagFwdDecl)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !695, file: !692, line: 545, baseType: !528, size: 32, offset: 6912)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !695, file: !692, line: 548, baseType: !855, size: 8, offset: 6944)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !695, file: !692, line: 550, baseType: !2802, offset: 6952)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2803, line: 142, elements: !491)
!2803 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !695, file: !692, line: 554, baseType: !1769, size: 256, offset: 6976)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !695, file: !692, line: 557, baseType: !461, size: 32, offset: 7232)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !691, file: !692, line: 565, baseType: !2807, offset: 7296)
!2807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, elements: !2808)
!2808 = !{!2809}
!2809 = !DISubrange(count: -1)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !510, file: !511, line: 758, baseType: !690, size: 64, offset: 3968)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !510, file: !511, line: 761, baseType: !2812, size: 320, offset: 4032)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2721, line: 34, size: 320, elements: !2813)
!2813 = !{!2814, !2815}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2812, file: !2721, line: 35, baseType: !560, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2812, file: !2721, line: 36, baseType: !2816, size: 256, offset: 64)
!2816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 256, elements: !2449)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !510, file: !511, line: 766, baseType: !294, size: 32, offset: 4352)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !510, file: !511, line: 767, baseType: !294, size: 32, offset: 4384)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !510, file: !511, line: 768, baseType: !294, size: 32, offset: 4416)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !510, file: !511, line: 770, baseType: !294, size: 32, offset: 4448)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !510, file: !511, line: 772, baseType: !504, size: 64, offset: 4480)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !510, file: !511, line: 775, baseType: !7, size: 32, offset: 4544)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !510, file: !511, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !510, file: !511, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !510, file: !511, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !510, file: !511, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !510, file: !511, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !510, file: !511, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !510, file: !511, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !510, file: !511, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !510, file: !511, line: 831, baseType: !504, size: 64, offset: 4672)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !510, file: !511, line: 833, baseType: !2833, size: 384, offset: 4736)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !2834)
!2834 = !{!2835, !2840}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2833, file: !196, line: 26, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!295, !2839}
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, scope: !2833, file: !196, line: 27, baseType: !2841, size: 320, offset: 64)
!2841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2833, file: !196, line: 27, size: 320, elements: !2842)
!2842 = !{!2843, !2853, !2878}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2841, file: !196, line: 36, baseType: !2844, size: 320)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !196, line: 29, size: 320, elements: !2845)
!2845 = !{!2846, !2848, !2849, !2850, !2851, !2852}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2844, file: !196, line: 30, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2844, file: !196, line: 31, baseType: !461, size: 32, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2844, file: !196, line: 32, baseType: !461, size: 32, offset: 96)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2844, file: !196, line: 33, baseType: !461, size: 32, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2844, file: !196, line: 34, baseType: !560, size: 64, offset: 192)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2844, file: !196, line: 35, baseType: !2847, size: 64, offset: 256)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2841, file: !196, line: 46, baseType: !2854, size: 192)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !196, line: 38, size: 192, elements: !2855)
!2855 = !{!2856, !2857, !2858, !2877}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2854, file: !196, line: 39, baseType: !642, size: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2854, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, scope: !2854, file: !196, line: 41, baseType: !2859, size: 64, offset: 64)
!2859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2854, file: !196, line: 41, size: 64, elements: !2860)
!2860 = !{!2861, !2869}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2859, file: !196, line: 42, baseType: !2862, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2864, line: 7, size: 128, elements: !2865)
!2864 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2865 = !{!2866, !2868}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2863, file: !2864, line: 8, baseType: !2867, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !644, line: 93, baseType: !592)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2863, file: !2864, line: 9, baseType: !592, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2859, file: !196, line: 43, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2872, line: 7, size: 64, elements: !2873)
!2872 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2873 = !{!2874, !2876}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2871, file: !2872, line: 8, baseType: !2875, size: 32)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2872, line: 5, baseType: !2505)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2871, file: !2872, line: 9, baseType: !2505, size: 32, offset: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2854, file: !196, line: 45, baseType: !560, size: 64, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2841, file: !196, line: 54, baseType: !2879, size: 256)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !196, line: 48, size: 256, elements: !2880)
!2880 = !{!2881, !2889, !2890, !2891, !2892}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2879, file: !196, line: 49, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2884, line: 36, size: 64, elements: !2885)
!2884 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!2885 = !{!2886, !2887, !2888}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2883, file: !2884, line: 37, baseType: !294, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2883, file: !2884, line: 38, baseType: !2530, size: 16, offset: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2883, file: !2884, line: 39, baseType: !2530, size: 16, offset: 48)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2879, file: !196, line: 50, baseType: !294, size: 32, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2879, file: !196, line: 51, baseType: !294, size: 32, offset: 96)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2879, file: !196, line: 52, baseType: !504, size: 64, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2879, file: !196, line: 53, baseType: !504, size: 64, offset: 192)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !510, file: !511, line: 835, baseType: !2894, size: 32, offset: 5120)
!2894 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !292, line: 22, baseType: !2895)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !644, line: 28, baseType: !294)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !510, file: !511, line: 836, baseType: !2894, size: 32, offset: 5152)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !510, file: !511, line: 840, baseType: !504, size: 64, offset: 5184)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !510, file: !511, line: 849, baseType: !509, size: 64, offset: 5248)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !510, file: !511, line: 852, baseType: !509, size: 64, offset: 5312)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !510, file: !511, line: 857, baseType: !553, size: 128, offset: 5376)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !510, file: !511, line: 858, baseType: !553, size: 128, offset: 5504)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !510, file: !511, line: 859, baseType: !509, size: 64, offset: 5632)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !510, file: !511, line: 867, baseType: !553, size: 128, offset: 5696)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !510, file: !511, line: 868, baseType: !553, size: 128, offset: 5824)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !510, file: !511, line: 871, baseType: !2441, size: 64, offset: 5952)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !510, file: !511, line: 872, baseType: !2907, size: 512, offset: 6016)
!2907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1008, size: 512, elements: !2449)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !510, file: !511, line: 873, baseType: !553, size: 128, offset: 6528)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !510, file: !511, line: 874, baseType: !553, size: 128, offset: 6656)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !510, file: !511, line: 876, baseType: !2911, size: 64, offset: 6784)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !510, file: !511, line: 879, baseType: !1076, size: 64, offset: 6848)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !510, file: !511, line: 882, baseType: !1076, size: 64, offset: 6912)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !510, file: !511, line: 884, baseType: !560, size: 64, offset: 6976)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !510, file: !511, line: 885, baseType: !560, size: 64, offset: 7040)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !510, file: !511, line: 890, baseType: !560, size: 64, offset: 7104)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !510, file: !511, line: 891, baseType: !2918, size: 128, offset: 7168)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !511, line: 242, size: 128, elements: !2919)
!2919 = !{!2920, !2921, !2922}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2918, file: !511, line: 244, baseType: !560, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2918, file: !511, line: 245, baseType: !560, size: 64, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2918, file: !511, line: 246, baseType: !483, offset: 128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !510, file: !511, line: 900, baseType: !504, size: 64, offset: 7296)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !510, file: !511, line: 901, baseType: !504, size: 64, offset: 7360)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !510, file: !511, line: 904, baseType: !560, size: 64, offset: 7424)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !510, file: !511, line: 907, baseType: !560, size: 64, offset: 7488)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !510, file: !511, line: 910, baseType: !504, size: 64, offset: 7552)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !510, file: !511, line: 911, baseType: !504, size: 64, offset: 7616)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !510, file: !511, line: 914, baseType: !2930, size: 640, offset: 7680)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2931, line: 123, size: 640, elements: !2932)
!2931 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2932 = !{!2933, !2939, !2940}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2930, file: !2931, line: 124, baseType: !2934, size: 576)
!2934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2935, size: 576, elements: !1020)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2931, line: 108, size: 192, elements: !2936)
!2936 = !{!2937, !2938}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2935, file: !2931, line: 109, baseType: !560, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2935, file: !2931, line: 110, baseType: !657, size: 128, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2930, file: !2931, line: 125, baseType: !7, size: 32, offset: 576)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2930, file: !2931, line: 126, baseType: !7, size: 32, offset: 608)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !510, file: !511, line: 917, baseType: !2942, size: 192, offset: 8320)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2931, line: 134, size: 192, elements: !2943)
!2943 = !{!2944, !2945}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2942, file: !2931, line: 135, baseType: !745, size: 128, align: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2942, file: !2931, line: 136, baseType: !7, size: 32, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !510, file: !511, line: 923, baseType: !2467, size: 64, offset: 8512)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !510, file: !511, line: 926, baseType: !2467, size: 64, offset: 8576)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !510, file: !511, line: 929, baseType: !2467, size: 64, offset: 8640)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !510, file: !511, line: 933, baseType: !2497, size: 64, offset: 8704)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !510, file: !511, line: 943, baseType: !2951, size: 128, offset: 8768)
!2951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 128, elements: !1657)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !510, file: !511, line: 945, baseType: !2953, size: 64, offset: 8896)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !511, line: 49, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !510, file: !511, line: 956, baseType: !2956, size: 64, offset: 8960)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !511, line: 45, flags: DIFlagFwdDecl)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !510, file: !511, line: 959, baseType: !2959, size: 64, offset: 9024)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !511, line: 959, flags: DIFlagFwdDecl)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !510, file: !511, line: 962, baseType: !2962, size: 64, offset: 9088)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !511, line: 66, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !510, file: !511, line: 966, baseType: !2965, size: 64, offset: 9152)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2967, line: 35, flags: DIFlagFwdDecl)
!2967 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !510, file: !511, line: 969, baseType: !2969, size: 64, offset: 9216)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2971, line: 82, size: 7296, elements: !2972)
!2971 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2972 = !{!2973, !2974, !2975, !2976, !2977, !2978, !2979, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3008, !3017, !3018, !3020, !3021, !3022, !3025, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3055, !3056, !3063, !3064, !3065, !3066, !3067, !3068}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2970, file: !2971, line: 83, baseType: !523, size: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2970, file: !2971, line: 84, baseType: !528, size: 32, offset: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2970, file: !2971, line: 85, baseType: !294, size: 32, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2970, file: !2971, line: 86, baseType: !553, size: 128, offset: 128)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2970, file: !2971, line: 88, baseType: !1611, size: 128, offset: 256)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2970, file: !2971, line: 91, baseType: !509, size: 64, offset: 384)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2970, file: !2971, line: 94, baseType: !2980, size: 192, offset: 448)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2981, line: 30, size: 192, elements: !2982)
!2981 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2982 = !{!2983, !2984}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2980, file: !2981, line: 31, baseType: !553, size: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2980, file: !2981, line: 32, baseType: !2985, size: 64, offset: 128)
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2986, line: 25, baseType: !2987)
!2986 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2986, line: 23, size: 64, elements: !2988)
!2988 = !{!2989}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2987, file: !2986, line: 24, baseType: !682, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2970, file: !2971, line: 97, baseType: !1004, size: 64, offset: 640)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2970, file: !2971, line: 100, baseType: !294, size: 32, offset: 704)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2970, file: !2971, line: 106, baseType: !294, size: 32, offset: 736)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2970, file: !2971, line: 107, baseType: !509, size: 64, offset: 768)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2970, file: !2971, line: 110, baseType: !294, size: 32, offset: 832)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2970, file: !2971, line: 111, baseType: !7, size: 32, offset: 864)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2970, file: !2971, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2970, file: !2971, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2970, file: !2971, line: 128, baseType: !294, size: 32, offset: 928)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2970, file: !2971, line: 129, baseType: !553, size: 128, offset: 960)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2970, file: !2971, line: 132, baseType: !600, size: 512, offset: 1088)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2970, file: !2971, line: 133, baseType: !608, size: 64, offset: 1600)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2970, file: !2971, line: 140, baseType: !3003, size: 256, offset: 1664)
!3003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3004, size: 256, elements: !2489)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2971, line: 38, size: 128, elements: !3005)
!3005 = !{!3006, !3007}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3004, file: !2971, line: 39, baseType: !560, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3004, file: !2971, line: 40, baseType: !560, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2970, file: !2971, line: 146, baseType: !3009, size: 192, offset: 1920)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2971, line: 66, size: 192, elements: !3010)
!3010 = !{!3011}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3009, file: !2971, line: 67, baseType: !3012, size: 192)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2971, line: 47, size: 192, elements: !3013)
!3013 = !{!3014, !3015, !3016}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3012, file: !2971, line: 48, baseType: !1131, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3012, file: !2971, line: 49, baseType: !1131, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3012, file: !2971, line: 50, baseType: !1131, size: 64, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2970, file: !2971, line: 150, baseType: !2930, size: 640, offset: 2112)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2970, file: !2971, line: 153, baseType: !3019, size: 256, offset: 2752)
!3019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2441, size: 256, elements: !2449)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2970, file: !2971, line: 159, baseType: !2441, size: 64, offset: 3008)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2970, file: !2971, line: 162, baseType: !294, size: 32, offset: 3072)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2970, file: !2971, line: 164, baseType: !3023, size: 64, offset: 3136)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2971, line: 164, flags: DIFlagFwdDecl)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2970, file: !2971, line: 175, baseType: !3026, size: 32, offset: 3200)
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !647, line: 805, baseType: !3027)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !647, line: 798, size: 32, elements: !3028)
!3028 = !{!3029, !3030}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3027, file: !647, line: 803, baseType: !767, size: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3027, file: !647, line: 804, baseType: !1112, offset: 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2970, file: !2971, line: 176, baseType: !560, size: 64, offset: 3264)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2970, file: !2971, line: 176, baseType: !560, size: 64, offset: 3328)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2970, file: !2971, line: 176, baseType: !560, size: 64, offset: 3392)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2970, file: !2971, line: 176, baseType: !560, size: 64, offset: 3456)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2970, file: !2971, line: 177, baseType: !560, size: 64, offset: 3520)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2970, file: !2971, line: 178, baseType: !560, size: 64, offset: 3584)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2970, file: !2971, line: 179, baseType: !2918, size: 128, offset: 3648)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2970, file: !2971, line: 180, baseType: !504, size: 64, offset: 3776)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2970, file: !2971, line: 180, baseType: !504, size: 64, offset: 3840)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2970, file: !2971, line: 180, baseType: !504, size: 64, offset: 3904)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2970, file: !2971, line: 180, baseType: !504, size: 64, offset: 3968)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2970, file: !2971, line: 181, baseType: !504, size: 64, offset: 4032)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2970, file: !2971, line: 181, baseType: !504, size: 64, offset: 4096)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2970, file: !2971, line: 181, baseType: !504, size: 64, offset: 4160)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2970, file: !2971, line: 181, baseType: !504, size: 64, offset: 4224)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2970, file: !2971, line: 182, baseType: !504, size: 64, offset: 4288)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2970, file: !2971, line: 182, baseType: !504, size: 64, offset: 4352)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2970, file: !2971, line: 182, baseType: !504, size: 64, offset: 4416)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2970, file: !2971, line: 182, baseType: !504, size: 64, offset: 4480)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2970, file: !2971, line: 183, baseType: !504, size: 64, offset: 4544)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2970, file: !2971, line: 183, baseType: !504, size: 64, offset: 4608)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2970, file: !2971, line: 184, baseType: !3053, offset: 4672)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3054, line: 12, elements: !491)
!3054 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2970, file: !2971, line: 192, baseType: !562, size: 64, offset: 4672)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2970, file: !2971, line: 203, baseType: !3057, size: 2048, offset: 4736)
!3057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3058, size: 2048, elements: !1657)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3059, line: 43, size: 128, elements: !3060)
!3059 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3060 = !{!3061, !3062}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3058, file: !3059, line: 44, baseType: !946, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3058, file: !3059, line: 45, baseType: !946, size: 64, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2970, file: !2971, line: 220, baseType: !855, size: 8, offset: 6784)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2970, file: !2971, line: 221, baseType: !2530, size: 16, offset: 6800)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2970, file: !2971, line: 222, baseType: !2530, size: 16, offset: 6816)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2970, file: !2971, line: 224, baseType: !690, size: 64, offset: 6848)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2970, file: !2971, line: 227, baseType: !1379, size: 192, offset: 6912)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2970, file: !2971, line: 233, baseType: !1379, size: 192, offset: 7104)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !510, file: !511, line: 970, baseType: !3070, size: 64, offset: 9280)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2971, line: 20, size: 16576, elements: !3072)
!3072 = !{!3073, !3074, !3075, !3076}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3071, file: !2971, line: 21, baseType: !1112)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3071, file: !2971, line: 22, baseType: !523, size: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3071, file: !2971, line: 23, baseType: !1611, size: 128, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3071, file: !2971, line: 24, baseType: !3077, size: 16384, offset: 192)
!3077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3078, size: 16384, elements: !2126)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2981, line: 49, size: 256, elements: !3079)
!3079 = !{!3080}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3078, file: !2981, line: 50, baseType: !3081, size: 256)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2981, line: 35, size: 256, elements: !3082)
!3082 = !{!3083, !3090, !3091, !3097}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3081, file: !2981, line: 37, baseType: !3084, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3085, line: 19, baseType: !3086)
!3085 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3085, line: 18, baseType: !3088)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{null, !294}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3081, file: !2981, line: 38, baseType: !504, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3081, file: !2981, line: 44, baseType: !3092, size: 64, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3085, line: 22, baseType: !3093)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3085, line: 21, baseType: !3095)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{null}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3081, file: !2981, line: 46, baseType: !2985, size: 64, offset: 192)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !510, file: !511, line: 971, baseType: !2985, size: 64, offset: 9344)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !510, file: !511, line: 972, baseType: !2985, size: 64, offset: 9408)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !510, file: !511, line: 974, baseType: !2985, size: 64, offset: 9472)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !510, file: !511, line: 975, baseType: !2980, size: 192, offset: 9536)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !510, file: !511, line: 976, baseType: !504, size: 64, offset: 9728)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !510, file: !511, line: 977, baseType: !944, size: 64, offset: 9792)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !510, file: !511, line: 978, baseType: !7, size: 32, offset: 9856)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !510, file: !511, line: 980, baseType: !748, size: 64, offset: 9920)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !510, file: !511, line: 989, baseType: !3107, size: 128, offset: 9984)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3108, line: 35, size: 128, elements: !3109)
!3108 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3109 = !{!3110, !3111, !3112}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3107, file: !3108, line: 36, baseType: !294, size: 32)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3107, file: !3108, line: 37, baseType: !528, size: 32, offset: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3107, file: !3108, line: 38, baseType: !3113, size: 64, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3108, line: 23, flags: DIFlagFwdDecl)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !510, file: !511, line: 992, baseType: !560, size: 64, offset: 10112)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !510, file: !511, line: 993, baseType: !560, size: 64, offset: 10176)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !510, file: !511, line: 996, baseType: !1112, offset: 10240)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !510, file: !511, line: 999, baseType: !483, offset: 10240)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !510, file: !511, line: 1001, baseType: !3120, size: 64, offset: 10240)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !511, line: 636, size: 64, elements: !3121)
!3121 = !{!3122}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3120, file: !511, line: 637, baseType: !3123, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !510, file: !511, line: 1005, baseType: !493, size: 128, offset: 10304)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !510, file: !511, line: 1007, baseType: !509, size: 64, offset: 10432)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !510, file: !511, line: 1009, baseType: !3127, size: 64, offset: 10496)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !511, line: 1009, flags: DIFlagFwdDecl)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !510, file: !511, line: 1043, baseType: !293, size: 64, offset: 10560)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !510, file: !511, line: 1046, baseType: !3131, size: 64, offset: 10624)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !511, line: 41, flags: DIFlagFwdDecl)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !510, file: !511, line: 1050, baseType: !3134, size: 64, offset: 10688)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !511, line: 42, flags: DIFlagFwdDecl)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !510, file: !511, line: 1054, baseType: !3137, size: 64, offset: 10752)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !511, line: 55, flags: DIFlagFwdDecl)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !510, file: !511, line: 1056, baseType: !1558, size: 64, offset: 10816)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !510, file: !511, line: 1058, baseType: !3141, size: 64, offset: 10880)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3143, line: 99, size: 704, elements: !3144)
!3143 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3144 = !{!3145, !3146, !3147, !3148, !3149, !3150, !3151, !3170, !3171}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3142, file: !3143, line: 100, baseType: !1129, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3142, file: !3143, line: 101, baseType: !528, size: 32, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3142, file: !3143, line: 102, baseType: !528, size: 32, offset: 96)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3142, file: !3143, line: 105, baseType: !1112, offset: 128)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3142, file: !3143, line: 107, baseType: !337, size: 16, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3142, file: !3143, line: 109, baseType: !1108, size: 128, offset: 192)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3142, file: !3143, line: 110, baseType: !3152, size: 64, offset: 320)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3143, line: 73, size: 448, elements: !3154)
!3154 = !{!3155, !3158, !3159, !3164, !3169}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3153, file: !3143, line: 74, baseType: !3156, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3143, line: 74, flags: DIFlagFwdDecl)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3153, file: !3143, line: 75, baseType: !3141, size: 64, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, scope: !3153, file: !3143, line: 83, baseType: !3160, size: 128, offset: 128)
!3160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3153, file: !3143, line: 83, size: 128, elements: !3161)
!3161 = !{!3162, !3163}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3160, file: !3143, line: 84, baseType: !553, size: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3160, file: !3143, line: 85, baseType: !1289, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, scope: !3153, file: !3143, line: 87, baseType: !3165, size: 128, offset: 256)
!3165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3153, file: !3143, line: 87, size: 128, elements: !3166)
!3166 = !{!3167, !3168}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3165, file: !3143, line: 88, baseType: !1008, size: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3165, file: !3143, line: 89, baseType: !745, size: 128, align: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3153, file: !3143, line: 92, baseType: !7, size: 32, offset: 384)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3142, file: !3143, line: 111, baseType: !1004, size: 64, offset: 384)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3142, file: !3143, line: 113, baseType: !1769, size: 256, offset: 448)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !510, file: !511, line: 1061, baseType: !3173, size: 64, offset: 10944)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !511, line: 43, flags: DIFlagFwdDecl)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !510, file: !511, line: 1064, baseType: !504, size: 64, offset: 11008)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !510, file: !511, line: 1065, baseType: !3177, size: 64, offset: 11072)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2981, line: 14, baseType: !3179)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2981, line: 12, size: 384, elements: !3180)
!3180 = !{!3181}
!3181 = !DIDerivedType(tag: DW_TAG_member, scope: !3179, file: !2981, line: 13, baseType: !3182, size: 384)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3179, file: !2981, line: 13, size: 384, elements: !3183)
!3183 = !{!3184, !3185, !3186, !3187}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3182, file: !2981, line: 13, baseType: !294, size: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3182, file: !2981, line: 13, baseType: !294, size: 32, offset: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3182, file: !2981, line: 13, baseType: !294, size: 32, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3182, file: !2981, line: 13, baseType: !3188, size: 256, offset: 128)
!3188 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3189, line: 32, size: 256, elements: !3190)
!3189 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3190 = !{!3191, !3196, !3209, !3215, !3224, !3244, !3249}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3188, file: !3189, line: 37, baseType: !3192, size: 64)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3188, file: !3189, line: 34, size: 64, elements: !3193)
!3193 = !{!3194, !3195}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3192, file: !3189, line: 35, baseType: !2895, size: 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3192, file: !3189, line: 36, baseType: !809, size: 32, offset: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3188, file: !3189, line: 45, baseType: !3197, size: 192)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3188, file: !3189, line: 40, size: 192, elements: !3198)
!3198 = !{!3199, !3201, !3202, !3208}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3197, file: !3189, line: 41, baseType: !3200, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !644, line: 95, baseType: !294)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3197, file: !3189, line: 42, baseType: !294, size: 32, offset: 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3197, file: !3189, line: 43, baseType: !3203, size: 64, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3189, line: 11, baseType: !3204)
!3204 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3189, line: 8, size: 64, elements: !3205)
!3205 = !{!3206, !3207}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3204, file: !3189, line: 9, baseType: !294, size: 32)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3204, file: !3189, line: 10, baseType: !293, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3197, file: !3189, line: 44, baseType: !294, size: 32, offset: 128)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3188, file: !3189, line: 52, baseType: !3210, size: 128)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3188, file: !3189, line: 48, size: 128, elements: !3211)
!3211 = !{!3212, !3213, !3214}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3210, file: !3189, line: 49, baseType: !2895, size: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3210, file: !3189, line: 50, baseType: !809, size: 32, offset: 32)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3210, file: !3189, line: 51, baseType: !3203, size: 64, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3188, file: !3189, line: 61, baseType: !3216, size: 256)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3188, file: !3189, line: 55, size: 256, elements: !3217)
!3217 = !{!3218, !3219, !3220, !3221, !3223}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3216, file: !3189, line: 56, baseType: !2895, size: 32)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3216, file: !3189, line: 57, baseType: !809, size: 32, offset: 32)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3216, file: !3189, line: 58, baseType: !294, size: 32, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3216, file: !3189, line: 59, baseType: !3222, size: 64, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !644, line: 94, baseType: !943)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3216, file: !3189, line: 60, baseType: !3222, size: 64, offset: 192)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3188, file: !3189, line: 95, baseType: !3225, size: 256)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3188, file: !3189, line: 64, size: 256, elements: !3226)
!3226 = !{!3227, !3228}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3225, file: !3189, line: 65, baseType: !293, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, scope: !3225, file: !3189, line: 77, baseType: !3229, size: 192, offset: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3225, file: !3189, line: 77, size: 192, elements: !3230)
!3230 = !{!3231, !3232, !3239}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3229, file: !3189, line: 82, baseType: !2530, size: 16)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3229, file: !3189, line: 88, baseType: !3233, size: 192)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3229, file: !3189, line: 84, size: 192, elements: !3234)
!3234 = !{!3235, !3237, !3238}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3233, file: !3189, line: 85, baseType: !3236, size: 64)
!3236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 64, elements: !638)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3233, file: !3189, line: 86, baseType: !293, size: 64, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3233, file: !3189, line: 87, baseType: !293, size: 64, offset: 128)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3229, file: !3189, line: 93, baseType: !3240, size: 96)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3229, file: !3189, line: 90, size: 96, elements: !3241)
!3241 = !{!3242, !3243}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3240, file: !3189, line: 91, baseType: !3236, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3240, file: !3189, line: 92, baseType: !462, size: 32, offset: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3188, file: !3189, line: 101, baseType: !3245, size: 128)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3188, file: !3189, line: 98, size: 128, elements: !3246)
!3246 = !{!3247, !3248}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3245, file: !3189, line: 99, baseType: !295, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3245, file: !3189, line: 100, baseType: !294, size: 32, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3188, file: !3189, line: 108, baseType: !3250, size: 128)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3188, file: !3189, line: 104, size: 128, elements: !3251)
!3251 = !{!3252, !3253, !3254}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3250, file: !3189, line: 105, baseType: !293, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3250, file: !3189, line: 106, baseType: !294, size: 32, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3250, file: !3189, line: 107, baseType: !7, size: 32, offset: 96)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !510, file: !511, line: 1067, baseType: !3053, offset: 11136)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !510, file: !511, line: 1099, baseType: !3257, size: 64, offset: 11136)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !511, line: 56, flags: DIFlagFwdDecl)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !510, file: !511, line: 1103, baseType: !553, size: 128, offset: 11200)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !510, file: !511, line: 1104, baseType: !3261, size: 64, offset: 11328)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !511, line: 46, flags: DIFlagFwdDecl)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !510, file: !511, line: 1105, baseType: !1379, size: 192, offset: 11392)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !510, file: !511, line: 1106, baseType: !7, size: 32, offset: 11584)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !510, file: !511, line: 1109, baseType: !3266, size: 128, offset: 11648)
!3266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3267, size: 128, elements: !2489)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !511, line: 51, flags: DIFlagFwdDecl)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !510, file: !511, line: 1110, baseType: !1379, size: 192, offset: 11776)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !510, file: !511, line: 1111, baseType: !553, size: 128, offset: 11968)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !510, file: !511, line: 1173, baseType: !3272, size: 64, offset: 12096)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3274, line: 62, size: 256, align: 256, elements: !3275)
!3274 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3275 = !{!3276, !3277, !3278, !3283}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3273, file: !3274, line: 75, baseType: !462, size: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3273, file: !3274, line: 90, baseType: !462, size: 32, offset: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3273, file: !3274, line: 124, baseType: !3279, size: 64, offset: 64)
!3279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3273, file: !3274, line: 109, size: 64, elements: !3280)
!3280 = !{!3281, !3282}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3279, file: !3274, line: 110, baseType: !561, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3279, file: !3274, line: 112, baseType: !561, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3273, file: !3274, line: 144, baseType: !462, size: 32, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !510, file: !511, line: 1174, baseType: !461, size: 32, offset: 12160)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !510, file: !511, line: 1179, baseType: !504, size: 64, offset: 12224)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !510, file: !511, line: 1182, baseType: !3287, size: 128, offset: 12288)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2721, line: 76, size: 128, elements: !3288)
!3288 = !{!3289, !3294, !3295}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3287, file: !2721, line: 85, baseType: !3290, size: 64)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3291, line: 7, size: 64, elements: !3292)
!3291 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3292 = !{!3293}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3290, file: !3291, line: 12, baseType: !679, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3287, file: !2721, line: 88, baseType: !855, size: 8, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3287, file: !2721, line: 95, baseType: !855, size: 8, offset: 72)
!3296 = !DIDerivedType(tag: DW_TAG_member, scope: !510, file: !511, line: 1184, baseType: !3297, size: 128, offset: 12416)
!3297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !510, file: !511, line: 1184, size: 128, elements: !3298)
!3298 = !{!3299, !3300}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3297, file: !511, line: 1185, baseType: !523, size: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3297, file: !511, line: 1186, baseType: !745, size: 128, align: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !510, file: !511, line: 1190, baseType: !2035, size: 64, offset: 12544)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !510, file: !511, line: 1192, baseType: !3303, size: 128, offset: 12608)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2721, line: 64, size: 128, elements: !3304)
!3304 = !{!3305, !3306, !3307}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3303, file: !2721, line: 65, baseType: !1091, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3303, file: !2721, line: 67, baseType: !462, size: 32, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3303, file: !2721, line: 68, baseType: !462, size: 32, offset: 96)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !510, file: !511, line: 1206, baseType: !294, size: 32, offset: 12736)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !510, file: !511, line: 1207, baseType: !294, size: 32, offset: 12768)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !510, file: !511, line: 1209, baseType: !504, size: 64, offset: 12800)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !510, file: !511, line: 1219, baseType: !560, size: 64, offset: 12864)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !510, file: !511, line: 1220, baseType: !560, size: 64, offset: 12928)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !510, file: !511, line: 1317, baseType: !294, size: 32, offset: 12992)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !510, file: !511, line: 1319, baseType: !509, size: 64, offset: 13056)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !510, file: !511, line: 1322, baseType: !3316, size: 64, offset: 13120)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3318, line: 56, size: 512, elements: !3319)
!3318 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3319 = !{!3320, !3321, !3322, !3323, !3324, !3325, !3326, !3328}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3317, file: !3318, line: 57, baseType: !3316, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3317, file: !3318, line: 58, baseType: !293, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3317, file: !3318, line: 59, baseType: !504, size: 64, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3317, file: !3318, line: 60, baseType: !504, size: 64, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3317, file: !3318, line: 61, baseType: !1176, size: 64, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3317, file: !3318, line: 62, baseType: !7, size: 32, offset: 320)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3317, file: !3318, line: 63, baseType: !3327, size: 64, offset: 384)
!3327 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !292, line: 153, baseType: !560)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3317, file: !3318, line: 64, baseType: !2217, size: 64, offset: 448)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !510, file: !511, line: 1326, baseType: !523, size: 32, offset: 13184)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !510, file: !511, line: 1342, baseType: !293, size: 64, offset: 13248)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !510, file: !511, line: 1343, baseType: !561, size: 64, offset: 13312)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !510, file: !511, line: 1344, baseType: !560, size: 64, offset: 13376)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !510, file: !511, line: 1345, baseType: !561, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !510, file: !511, line: 1346, baseType: !561, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !510, file: !511, line: 1347, baseType: !561, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !510, file: !511, line: 1348, baseType: !745, size: 128, align: 64, offset: 13504)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !510, file: !511, line: 1358, baseType: !3338, size: 34816, offset: 13824)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3339, line: 485, size: 34816, elements: !3340)
!3339 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3340 = !{!3341, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3370, !3371, !3372, !3373, !3374, !3375, !3378, !3379, !3380}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3338, file: !3339, line: 487, baseType: !3342, size: 192)
!3342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3343, size: 192, elements: !1020)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3344, line: 16, size: 64, elements: !3345)
!3344 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3345 = !{!3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3343, file: !3344, line: 17, baseType: !333, size: 16)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3343, file: !3344, line: 18, baseType: !333, size: 16, offset: 16)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3343, file: !3344, line: 19, baseType: !333, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3343, file: !3344, line: 19, baseType: !333, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3343, file: !3344, line: 19, baseType: !333, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3343, file: !3344, line: 19, baseType: !333, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3343, file: !3344, line: 19, baseType: !333, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3343, file: !3344, line: 20, baseType: !333, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3343, file: !3344, line: 20, baseType: !333, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3343, file: !3344, line: 20, baseType: !333, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3343, file: !3344, line: 20, baseType: !333, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3343, file: !3344, line: 20, baseType: !333, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3343, file: !3344, line: 20, baseType: !333, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3338, file: !3339, line: 491, baseType: !504, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3338, file: !3339, line: 495, baseType: !337, size: 16, offset: 256)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3338, file: !3339, line: 496, baseType: !337, size: 16, offset: 272)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3338, file: !3339, line: 497, baseType: !337, size: 16, offset: 288)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3338, file: !3339, line: 498, baseType: !337, size: 16, offset: 304)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3338, file: !3339, line: 502, baseType: !504, size: 64, offset: 320)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3338, file: !3339, line: 503, baseType: !504, size: 64, offset: 384)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3338, file: !3339, line: 514, baseType: !3367, size: 256, offset: 448)
!3367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3368, size: 256, elements: !2449)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3339, line: 483, flags: DIFlagFwdDecl)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3338, file: !3339, line: 516, baseType: !504, size: 64, offset: 704)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3338, file: !3339, line: 518, baseType: !504, size: 64, offset: 768)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3338, file: !3339, line: 520, baseType: !504, size: 64, offset: 832)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3338, file: !3339, line: 521, baseType: !504, size: 64, offset: 896)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3338, file: !3339, line: 522, baseType: !504, size: 64, offset: 960)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3338, file: !3339, line: 528, baseType: !3376, size: 64, offset: 1024)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3339, line: 10, flags: DIFlagFwdDecl)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3338, file: !3339, line: 535, baseType: !504, size: 64, offset: 1088)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3338, file: !3339, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3338, file: !3339, line: 540, baseType: !3381, size: 33280, offset: 1536)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3382, line: 317, size: 33280, elements: !3383)
!3382 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3383 = !{!3384, !3385, !3386}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3381, file: !3382, line: 330, baseType: !7, size: 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3381, file: !3382, line: 337, baseType: !504, size: 64, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3381, file: !3382, line: 348, baseType: !3387, size: 32768, offset: 512)
!3387 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3382, line: 304, size: 32768, elements: !3388)
!3388 = !{!3389, !3402, !3439, !3489, !3502}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3387, file: !3382, line: 305, baseType: !3390, size: 896)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3382, line: 12, size: 896, elements: !3391)
!3391 = !{!3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3401}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3390, file: !3382, line: 13, baseType: !461, size: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3390, file: !3382, line: 14, baseType: !461, size: 32, offset: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3390, file: !3382, line: 15, baseType: !461, size: 32, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3390, file: !3382, line: 16, baseType: !461, size: 32, offset: 96)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3390, file: !3382, line: 17, baseType: !461, size: 32, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3390, file: !3382, line: 18, baseType: !461, size: 32, offset: 160)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3390, file: !3382, line: 19, baseType: !461, size: 32, offset: 192)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3390, file: !3382, line: 22, baseType: !3400, size: 640, offset: 224)
!3400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 640, elements: !396)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3390, file: !3382, line: 25, baseType: !461, size: 32, offset: 864)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3387, file: !3382, line: 306, baseType: !3403, size: 4096, align: 128)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3382, line: 34, size: 4096, align: 128, elements: !3404)
!3404 = !{!3405, !3406, !3407, !3408, !3409, !3424, !3425, !3426, !3428, !3430, !3434}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3403, file: !3382, line: 35, baseType: !333, size: 16)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3403, file: !3382, line: 36, baseType: !333, size: 16, offset: 16)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3403, file: !3382, line: 37, baseType: !333, size: 16, offset: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3403, file: !3382, line: 38, baseType: !333, size: 16, offset: 48)
!3409 = !DIDerivedType(tag: DW_TAG_member, scope: !3403, file: !3382, line: 39, baseType: !3410, size: 128, offset: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3403, file: !3382, line: 39, size: 128, elements: !3411)
!3411 = !{!3412, !3417}
!3412 = !DIDerivedType(tag: DW_TAG_member, scope: !3410, file: !3382, line: 40, baseType: !3413, size: 128)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3410, file: !3382, line: 40, size: 128, elements: !3414)
!3414 = !{!3415, !3416}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3413, file: !3382, line: 41, baseType: !560, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3413, file: !3382, line: 42, baseType: !560, size: 64, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, scope: !3410, file: !3382, line: 44, baseType: !3418, size: 128)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3410, file: !3382, line: 44, size: 128, elements: !3419)
!3419 = !{!3420, !3421, !3422, !3423}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3418, file: !3382, line: 45, baseType: !461, size: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3418, file: !3382, line: 46, baseType: !461, size: 32, offset: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3418, file: !3382, line: 47, baseType: !461, size: 32, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3418, file: !3382, line: 48, baseType: !461, size: 32, offset: 96)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3403, file: !3382, line: 51, baseType: !461, size: 32, offset: 192)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3403, file: !3382, line: 52, baseType: !461, size: 32, offset: 224)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3403, file: !3382, line: 55, baseType: !3427, size: 1024, offset: 256)
!3427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 1024, elements: !1648)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3403, file: !3382, line: 58, baseType: !3429, size: 2048, offset: 1280)
!3429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 2048, elements: !2126)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3403, file: !3382, line: 60, baseType: !3431, size: 384, offset: 3328)
!3431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 384, elements: !3432)
!3432 = !{!3433}
!3433 = !DISubrange(count: 12)
!3434 = !DIDerivedType(tag: DW_TAG_member, scope: !3403, file: !3382, line: 62, baseType: !3435, size: 384, offset: 3712)
!3435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3403, file: !3382, line: 62, size: 384, elements: !3436)
!3436 = !{!3437, !3438}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3435, file: !3382, line: 63, baseType: !3431, size: 384)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3435, file: !3382, line: 64, baseType: !3431, size: 384)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3387, file: !3382, line: 307, baseType: !3440, size: 1088)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3382, line: 79, size: 1088, elements: !3441)
!3441 = !{!3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3488}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3440, file: !3382, line: 80, baseType: !461, size: 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3440, file: !3382, line: 81, baseType: !461, size: 32, offset: 32)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3440, file: !3382, line: 82, baseType: !461, size: 32, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3440, file: !3382, line: 83, baseType: !461, size: 32, offset: 96)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3440, file: !3382, line: 84, baseType: !461, size: 32, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3440, file: !3382, line: 85, baseType: !461, size: 32, offset: 160)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3440, file: !3382, line: 86, baseType: !461, size: 32, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3440, file: !3382, line: 88, baseType: !3400, size: 640, offset: 224)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3440, file: !3382, line: 89, baseType: !343, size: 8, offset: 864)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3440, file: !3382, line: 90, baseType: !343, size: 8, offset: 872)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3440, file: !3382, line: 91, baseType: !343, size: 8, offset: 880)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3440, file: !3382, line: 92, baseType: !343, size: 8, offset: 888)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3440, file: !3382, line: 93, baseType: !343, size: 8, offset: 896)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3440, file: !3382, line: 94, baseType: !343, size: 8, offset: 904)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3440, file: !3382, line: 95, baseType: !3457, size: 64, offset: 960)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3459, line: 11, size: 128, elements: !3460)
!3459 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3460 = !{!3461, !3462}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3458, file: !3459, line: 12, baseType: !295, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3458, file: !3459, line: 13, baseType: !3463, size: 64, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3465, line: 56, size: 1344, elements: !3466)
!3465 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3466 = !{!3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3464, file: !3465, line: 61, baseType: !504, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3464, file: !3465, line: 62, baseType: !504, size: 64, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3464, file: !3465, line: 63, baseType: !504, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3464, file: !3465, line: 64, baseType: !504, size: 64, offset: 192)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3464, file: !3465, line: 65, baseType: !504, size: 64, offset: 256)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3464, file: !3465, line: 66, baseType: !504, size: 64, offset: 320)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3464, file: !3465, line: 68, baseType: !504, size: 64, offset: 384)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3464, file: !3465, line: 69, baseType: !504, size: 64, offset: 448)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3464, file: !3465, line: 70, baseType: !504, size: 64, offset: 512)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3464, file: !3465, line: 71, baseType: !504, size: 64, offset: 576)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3464, file: !3465, line: 72, baseType: !504, size: 64, offset: 640)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3464, file: !3465, line: 73, baseType: !504, size: 64, offset: 704)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3464, file: !3465, line: 74, baseType: !504, size: 64, offset: 768)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3464, file: !3465, line: 75, baseType: !504, size: 64, offset: 832)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3464, file: !3465, line: 76, baseType: !504, size: 64, offset: 896)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3464, file: !3465, line: 81, baseType: !504, size: 64, offset: 960)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3464, file: !3465, line: 83, baseType: !504, size: 64, offset: 1024)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3464, file: !3465, line: 84, baseType: !504, size: 64, offset: 1088)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3464, file: !3465, line: 85, baseType: !504, size: 64, offset: 1152)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3464, file: !3465, line: 86, baseType: !504, size: 64, offset: 1216)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3464, file: !3465, line: 87, baseType: !504, size: 64, offset: 1280)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3440, file: !3382, line: 96, baseType: !461, size: 32, offset: 1024)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3387, file: !3382, line: 308, baseType: !3490, size: 4608, align: 512)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3382, line: 289, size: 4608, align: 512, elements: !3491)
!3491 = !{!3492, !3493, !3500}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3490, file: !3382, line: 290, baseType: !3403, size: 4096, align: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3490, file: !3382, line: 291, baseType: !3494, size: 512, offset: 4096)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3382, line: 268, size: 512, elements: !3495)
!3495 = !{!3496, !3497, !3498}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3494, file: !3382, line: 269, baseType: !560, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3494, file: !3382, line: 270, baseType: !560, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3494, file: !3382, line: 271, baseType: !3499, size: 384, offset: 128)
!3499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 384, elements: !2548)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3490, file: !3382, line: 292, baseType: !3501, offset: 4608)
!3501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, elements: !2644)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3387, file: !3382, line: 309, baseType: !3503, size: 32768)
!3503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 32768, elements: !3504)
!3504 = !{!3505}
!3505 = !DISubrange(count: 4096)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !419, file: !420, line: 704, baseType: !479, size: 192, offset: 512)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !419, file: !420, line: 706, baseType: !294, size: 32, offset: 704)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !419, file: !420, line: 707, baseType: !294, size: 32, offset: 736)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !419, file: !420, line: 708, baseType: !3510, size: 5568, offset: 768)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !3511)
!3511 = !{!3512, !3513, !3515, !3518, !3519, !3570, !3661, !3662, !3663, !3664, !3665, !3674, !3779, !3792, !3987, !3988, !3992, !3994, !3995, !3996, !4000, !4006, !4007, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4048, !4049, !4050, !4053, !4056, !4057, !4058, !4059}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3510, file: !237, line: 462, baseType: !2085, size: 512)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3510, file: !237, line: 463, baseType: !3514, size: 64, offset: 512)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3510, file: !237, line: 465, baseType: !3516, size: 64, offset: 576)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3510, file: !237, line: 467, baseType: !304, size: 64, offset: 640)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3510, file: !237, line: 468, baseType: !3520, size: 64, offset: 704)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3522)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3523)
!3523 = !{!3524, !3525, !3526, !3530, !3535, !3539}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3522, file: !237, line: 88, baseType: !304, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3522, file: !237, line: 89, baseType: !2164, size: 64, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3522, file: !237, line: 90, baseType: !3527, size: 64, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!294, !3514, !2119}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3522, file: !237, line: 91, baseType: !3531, size: 64, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!326, !3514, !3534, !2234, !2235}
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3522, file: !237, line: 93, baseType: !3536, size: 64, offset: 256)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{null, !3514}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3522, file: !237, line: 95, baseType: !3540, size: 64, offset: 320)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3542)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3543)
!3543 = !{!3544, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3542, file: !244, line: 279, baseType: !3545, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!294, !3514}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3542, file: !244, line: 280, baseType: !3536, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3542, file: !244, line: 281, baseType: !3545, size: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3542, file: !244, line: 282, baseType: !3545, size: 64, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3542, file: !244, line: 283, baseType: !3545, size: 64, offset: 256)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3542, file: !244, line: 284, baseType: !3545, size: 64, offset: 320)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3542, file: !244, line: 285, baseType: !3545, size: 64, offset: 384)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3542, file: !244, line: 286, baseType: !3545, size: 64, offset: 448)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3542, file: !244, line: 287, baseType: !3545, size: 64, offset: 512)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3542, file: !244, line: 288, baseType: !3545, size: 64, offset: 576)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3542, file: !244, line: 289, baseType: !3545, size: 64, offset: 640)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3542, file: !244, line: 290, baseType: !3545, size: 64, offset: 704)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3542, file: !244, line: 291, baseType: !3545, size: 64, offset: 768)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3542, file: !244, line: 292, baseType: !3545, size: 64, offset: 832)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3542, file: !244, line: 293, baseType: !3545, size: 64, offset: 896)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3542, file: !244, line: 294, baseType: !3545, size: 64, offset: 960)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3542, file: !244, line: 295, baseType: !3545, size: 64, offset: 1024)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3542, file: !244, line: 296, baseType: !3545, size: 64, offset: 1088)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3542, file: !244, line: 297, baseType: !3545, size: 64, offset: 1152)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3542, file: !244, line: 298, baseType: !3545, size: 64, offset: 1216)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3542, file: !244, line: 299, baseType: !3545, size: 64, offset: 1280)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3542, file: !244, line: 300, baseType: !3545, size: 64, offset: 1344)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3542, file: !244, line: 301, baseType: !3545, size: 64, offset: 1408)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3510, file: !237, line: 470, baseType: !3571, size: 64, offset: 768)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3573, line: 82, size: 1408, elements: !3574)
!3573 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3580, !3581, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3656, !3659, !3660}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3572, file: !3573, line: 83, baseType: !304, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3572, file: !3573, line: 84, baseType: !304, size: 64, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3572, file: !3573, line: 85, baseType: !3514, size: 64, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3572, file: !3573, line: 86, baseType: !2164, size: 64, offset: 192)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3572, file: !3573, line: 87, baseType: !2164, size: 64, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3572, file: !3573, line: 88, baseType: !2164, size: 64, offset: 320)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3572, file: !3573, line: 90, baseType: !3582, size: 64, offset: 384)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!294, !3514, !3585}
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3587)
!3587 = !{!3588, !3589, !3590, !3591, !3592, !3593, !3594, !3607, !3620, !3621, !3622, !3623, !3624, !3632, !3633, !3634, !3635, !3636, !3637}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3586, file: !231, line: 96, baseType: !304, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3586, file: !231, line: 97, baseType: !3571, size: 64, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3586, file: !231, line: 99, baseType: !308, size: 64, offset: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3586, file: !231, line: 100, baseType: !304, size: 64, offset: 192)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3586, file: !231, line: 102, baseType: !855, size: 8, offset: 256)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3586, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3586, file: !231, line: 105, baseType: !3595, size: 64, offset: 320)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3597)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3598, line: 262, size: 1600, elements: !3599)
!3598 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3599 = !{!3600, !3601, !3602, !3606}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3597, file: !3598, line: 263, baseType: !1647, size: 256)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3597, file: !3598, line: 264, baseType: !1647, size: 256, offset: 256)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3597, file: !3598, line: 265, baseType: !3603, size: 1024, offset: 512)
!3603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 1024, elements: !3604)
!3604 = !{!3605}
!3605 = !DISubrange(count: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3597, file: !3598, line: 266, baseType: !2217, size: 64, offset: 1536)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3586, file: !231, line: 106, baseType: !3608, size: 64, offset: 384)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3610)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3598, line: 210, size: 256, elements: !3611)
!3611 = !{!3612, !3616, !3618, !3619}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3610, file: !3598, line: 211, baseType: !3613, size: 72)
!3613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 72, elements: !3614)
!3614 = !{!3615}
!3615 = !DISubrange(count: 9)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3610, file: !3598, line: 212, baseType: !3617, size: 64, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3598, line: 14, baseType: !504)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3610, file: !3598, line: 213, baseType: !462, size: 32, offset: 192)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3610, file: !3598, line: 214, baseType: !462, size: 32, offset: 224)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3586, file: !231, line: 108, baseType: !3545, size: 64, offset: 448)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3586, file: !231, line: 109, baseType: !3536, size: 64, offset: 512)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3586, file: !231, line: 110, baseType: !3545, size: 64, offset: 576)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3586, file: !231, line: 111, baseType: !3536, size: 64, offset: 640)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3586, file: !231, line: 112, baseType: !3625, size: 64, offset: 704)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!294, !3514, !3628}
!3628 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3629)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3630)
!3630 = !{!3631}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3629, file: !244, line: 51, baseType: !294, size: 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3586, file: !231, line: 113, baseType: !3545, size: 64, offset: 768)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3586, file: !231, line: 114, baseType: !2164, size: 64, offset: 832)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3586, file: !231, line: 115, baseType: !2164, size: 64, offset: 896)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3586, file: !231, line: 117, baseType: !3540, size: 64, offset: 960)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3586, file: !231, line: 118, baseType: !3536, size: 64, offset: 1024)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3586, file: !231, line: 120, baseType: !3638, size: 64, offset: 1088)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3572, file: !3573, line: 91, baseType: !3527, size: 64, offset: 448)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3572, file: !3573, line: 92, baseType: !3545, size: 64, offset: 512)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3572, file: !3573, line: 93, baseType: !3536, size: 64, offset: 576)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3572, file: !3573, line: 94, baseType: !3545, size: 64, offset: 640)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3572, file: !3573, line: 95, baseType: !3536, size: 64, offset: 704)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3572, file: !3573, line: 97, baseType: !3545, size: 64, offset: 768)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3572, file: !3573, line: 98, baseType: !3545, size: 64, offset: 832)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3572, file: !3573, line: 100, baseType: !3625, size: 64, offset: 896)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3572, file: !3573, line: 101, baseType: !3545, size: 64, offset: 960)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3572, file: !3573, line: 103, baseType: !3545, size: 64, offset: 1024)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3572, file: !3573, line: 105, baseType: !3545, size: 64, offset: 1088)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3572, file: !3573, line: 107, baseType: !3540, size: 64, offset: 1152)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3572, file: !3573, line: 109, baseType: !3653, size: 64, offset: 1216)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3655)
!3655 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3573, line: 109, flags: DIFlagFwdDecl)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3572, file: !3573, line: 111, baseType: !3657, size: 64, offset: 1280)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3573, line: 111, flags: DIFlagFwdDecl)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3572, file: !3573, line: 112, baseType: !1014, offset: 1344)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3572, file: !3573, line: 114, baseType: !855, size: 8, offset: 1344)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3510, file: !237, line: 471, baseType: !3585, size: 64, offset: 832)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3510, file: !237, line: 473, baseType: !293, size: 64, offset: 896)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3510, file: !237, line: 475, baseType: !293, size: 64, offset: 960)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3510, file: !237, line: 480, baseType: !1379, size: 192, offset: 1024)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3510, file: !237, line: 484, baseType: !3666, size: 576, offset: 1216)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3667)
!3667 = !{!3668, !3669, !3670, !3671, !3672, !3673}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3666, file: !237, line: 362, baseType: !553, size: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3666, file: !237, line: 363, baseType: !553, size: 128, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3666, file: !237, line: 364, baseType: !553, size: 128, offset: 256)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3666, file: !237, line: 365, baseType: !553, size: 128, offset: 384)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3666, file: !237, line: 366, baseType: !855, size: 8, offset: 512)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3666, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3510, file: !237, line: 485, baseType: !3675, size: 2304, offset: 1792)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3676)
!3676 = !{!3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3772, !3776}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3675, file: !244, line: 566, baseType: !3628, size: 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3675, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3675, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3675, file: !244, line: 569, baseType: !855, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3675, file: !244, line: 570, baseType: !855, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3675, file: !244, line: 571, baseType: !855, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3675, file: !244, line: 572, baseType: !855, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3675, file: !244, line: 573, baseType: !855, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3675, file: !244, line: 574, baseType: !855, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3675, file: !244, line: 575, baseType: !855, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3675, file: !244, line: 576, baseType: !855, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3675, file: !244, line: 577, baseType: !461, size: 32, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3675, file: !244, line: 578, baseType: !1112, offset: 96)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3675, file: !244, line: 580, baseType: !553, size: 128, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3675, file: !244, line: 581, baseType: !2780, size: 192, offset: 256)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3675, file: !244, line: 582, baseType: !3693, size: 64, offset: 448)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3695, line: 43, size: 1472, elements: !3696)
!3695 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3696 = !{!3697, !3698, !3699, !3700, !3701, !3704, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3694, file: !3695, line: 44, baseType: !304, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3694, file: !3695, line: 45, baseType: !294, size: 32, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3694, file: !3695, line: 46, baseType: !553, size: 128, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3694, file: !3695, line: 47, baseType: !1112, offset: 256)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3694, file: !3695, line: 48, baseType: !3702, size: 64, offset: 256)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3694, file: !3695, line: 49, baseType: !3705, size: 320, offset: 320)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3706, line: 11, size: 320, elements: !3707)
!3706 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3707 = !{!3708, !3709, !3710, !3715}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3705, file: !3706, line: 16, baseType: !1008, size: 128)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3705, file: !3706, line: 17, baseType: !504, size: 64, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3705, file: !3706, line: 18, baseType: !3711, size: 64, offset: 192)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{null, !3714}
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3705, file: !3706, line: 19, baseType: !461, size: 32, offset: 256)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3694, file: !3695, line: 50, baseType: !504, size: 64, offset: 640)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3694, file: !3695, line: 51, baseType: !608, size: 64, offset: 704)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3694, file: !3695, line: 52, baseType: !608, size: 64, offset: 768)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3694, file: !3695, line: 53, baseType: !608, size: 64, offset: 832)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3694, file: !3695, line: 54, baseType: !608, size: 64, offset: 896)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3694, file: !3695, line: 55, baseType: !608, size: 64, offset: 960)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3694, file: !3695, line: 56, baseType: !504, size: 64, offset: 1024)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3694, file: !3695, line: 57, baseType: !504, size: 64, offset: 1088)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3694, file: !3695, line: 58, baseType: !504, size: 64, offset: 1152)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3694, file: !3695, line: 59, baseType: !504, size: 64, offset: 1216)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3694, file: !3695, line: 60, baseType: !504, size: 64, offset: 1280)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3694, file: !3695, line: 61, baseType: !3514, size: 64, offset: 1344)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3694, file: !3695, line: 62, baseType: !855, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3694, file: !3695, line: 63, baseType: !855, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3675, file: !244, line: 583, baseType: !855, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3675, file: !244, line: 584, baseType: !855, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3675, file: !244, line: 585, baseType: !855, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3675, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3675, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3675, file: !244, line: 592, baseType: !600, size: 512, offset: 576)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3675, file: !244, line: 593, baseType: !560, size: 64, offset: 1088)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3675, file: !244, line: 594, baseType: !1769, size: 256, offset: 1152)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3675, file: !244, line: 595, baseType: !1611, size: 128, offset: 1408)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3675, file: !244, line: 596, baseType: !3702, size: 64, offset: 1536)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3675, file: !244, line: 597, baseType: !528, size: 32, offset: 1600)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3675, file: !244, line: 598, baseType: !528, size: 32, offset: 1632)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3675, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3675, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3675, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3675, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3675, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3675, file: !244, line: 604, baseType: !855, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3675, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3675, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3675, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3675, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3675, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3675, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3675, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3675, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3675, file: !244, line: 613, baseType: !294, size: 32, offset: 1792)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3675, file: !244, line: 614, baseType: !294, size: 32, offset: 1824)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3675, file: !244, line: 615, baseType: !560, size: 64, offset: 1856)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3675, file: !244, line: 616, baseType: !560, size: 64, offset: 1920)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3675, file: !244, line: 617, baseType: !560, size: 64, offset: 1984)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3675, file: !244, line: 618, baseType: !560, size: 64, offset: 2048)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3675, file: !244, line: 620, baseType: !3763, size: 64, offset: 2112)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3765)
!3765 = !{!3766, !3767, !3768, !3769}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3764, file: !244, line: 537, baseType: !1112)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3764, file: !244, line: 538, baseType: !7, size: 32)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3764, file: !244, line: 540, baseType: !553, size: 128, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3764, file: !244, line: 543, baseType: !3770, size: 64, offset: 192)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3675, file: !244, line: 621, baseType: !3773, size: 64, offset: 2176)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{null, !3514, !2505}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3675, file: !244, line: 622, baseType: !3777, size: 64, offset: 2240)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3510, file: !237, line: 486, baseType: !3780, size: 64, offset: 4096)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3782)
!3782 = !{!3783, !3784, !3785, !3789, !3790, !3791}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3781, file: !244, line: 643, baseType: !3542, size: 1472)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3781, file: !244, line: 644, baseType: !3545, size: 64, offset: 1472)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3781, file: !244, line: 645, baseType: !3786, size: 64, offset: 1536)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{null, !3514, !855}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3781, file: !244, line: 646, baseType: !3545, size: 64, offset: 1600)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3781, file: !244, line: 647, baseType: !3536, size: 64, offset: 1664)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3781, file: !244, line: 648, baseType: !3536, size: 64, offset: 1728)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3510, file: !237, line: 493, baseType: !3793, size: 64, offset: 4160)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3795)
!3795 = !{!3796, !3797, !3798, !3971, !3972, !3973, !3974, !3975, !3976, !3979, !3980, !3981, !3982, !3983, !3984, !3985}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3794, file: !258, line: 163, baseType: !553, size: 128)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3794, file: !258, line: 164, baseType: !304, size: 64, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3794, file: !258, line: 165, baseType: !3799, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3801)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3802)
!3802 = !{!3803, !3921, !3932, !3937, !3941, !3948, !3952, !3956, !3963, !3967}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3801, file: !258, line: 106, baseType: !3804, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!294, !3793, !3807, !257}
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3809, line: 51, size: 1344, elements: !3810)
!3809 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3810 = !{!3811, !3812, !3814, !3815, !3905, !3914, !3915, !3916, !3917, !3918, !3919, !3920}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3808, file: !3809, line: 52, baseType: !304, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3808, file: !3809, line: 53, baseType: !3813, size: 32, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3809, line: 28, baseType: !461)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3808, file: !3809, line: 54, baseType: !304, size: 64, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3808, file: !3809, line: 55, baseType: !3816, size: 192, offset: 192)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3817, line: 17, size: 192, elements: !3818)
!3817 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3818 = !{!3819, !3821, !3904}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3816, file: !3817, line: 18, baseType: !3820, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3816, file: !3817, line: 19, baseType: !3822, size: 64, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3824)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3817, line: 110, size: 1152, elements: !3825)
!3825 = !{!3826, !3830, !3834, !3840, !3846, !3850, !3854, !3859, !3863, !3864, !3868, !3872, !3876, !3887, !3888, !3889, !3890, !3900}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3824, file: !3817, line: 111, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!3820, !3820}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3824, file: !3817, line: 112, baseType: !3831, size: 64, offset: 64)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{null, !3820}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3824, file: !3817, line: 113, baseType: !3835, size: 64, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!855, !3838}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3816)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3824, file: !3817, line: 114, baseType: !3841, size: 64, offset: 192)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!2217, !3838, !3844}
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3510)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3824, file: !3817, line: 116, baseType: !3847, size: 64, offset: 256)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!855, !3838, !304}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3824, file: !3817, line: 118, baseType: !3851, size: 64, offset: 320)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!294, !3838, !304, !7, !293, !944}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3824, file: !3817, line: 123, baseType: !3855, size: 64, offset: 384)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!294, !3838, !304, !3858, !944}
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3824, file: !3817, line: 126, baseType: !3860, size: 64, offset: 448)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!304, !3838}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3824, file: !3817, line: 127, baseType: !3860, size: 64, offset: 512)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3824, file: !3817, line: 128, baseType: !3865, size: 64, offset: 576)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!3820, !3838}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3824, file: !3817, line: 130, baseType: !3869, size: 64, offset: 640)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!3820, !3838, !3820}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3824, file: !3817, line: 133, baseType: !3873, size: 64, offset: 704)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!3820, !3838, !304}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3824, file: !3817, line: 135, baseType: !3877, size: 64, offset: 768)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!294, !3838, !304, !304, !7, !7, !3880}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3817, line: 43, size: 640, elements: !3882)
!3882 = !{!3883, !3884, !3885}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3881, file: !3817, line: 44, baseType: !3820, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3881, file: !3817, line: 45, baseType: !7, size: 32, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3881, file: !3817, line: 46, baseType: !3886, size: 512, offset: 128)
!3886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 512, elements: !638)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3824, file: !3817, line: 140, baseType: !3869, size: 64, offset: 832)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3824, file: !3817, line: 143, baseType: !3865, size: 64, offset: 896)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3824, file: !3817, line: 145, baseType: !3827, size: 64, offset: 960)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3824, file: !3817, line: 146, baseType: !3891, size: 64, offset: 1024)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!294, !3838, !3894}
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3817, line: 29, size: 128, elements: !3896)
!3896 = !{!3897, !3898, !3899}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3895, file: !3817, line: 30, baseType: !7, size: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3895, file: !3817, line: 31, baseType: !7, size: 32, offset: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3895, file: !3817, line: 32, baseType: !3838, size: 64, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3824, file: !3817, line: 148, baseType: !3901, size: 64, offset: 1088)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!294, !3838, !3514}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3816, file: !3817, line: 20, baseType: !3514, size: 64, offset: 128)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3808, file: !3809, line: 57, baseType: !3906, size: 64, offset: 384)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3809, line: 31, size: 704, elements: !3908)
!3908 = !{!3909, !3910, !3911, !3912, !3913}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3907, file: !3809, line: 32, baseType: !326, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3907, file: !3809, line: 33, baseType: !294, size: 32, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3907, file: !3809, line: 34, baseType: !293, size: 64, offset: 128)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3907, file: !3809, line: 35, baseType: !3906, size: 64, offset: 192)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3907, file: !3809, line: 43, baseType: !2179, size: 448, offset: 256)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3808, file: !3809, line: 58, baseType: !3906, size: 64, offset: 448)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3808, file: !3809, line: 59, baseType: !3807, size: 64, offset: 512)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3808, file: !3809, line: 60, baseType: !3807, size: 64, offset: 576)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3808, file: !3809, line: 61, baseType: !3807, size: 64, offset: 640)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3808, file: !3809, line: 63, baseType: !2085, size: 512, offset: 704)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3808, file: !3809, line: 65, baseType: !504, size: 64, offset: 1216)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3808, file: !3809, line: 66, baseType: !293, size: 64, offset: 1280)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3801, file: !258, line: 108, baseType: !3922, size: 64, offset: 64)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!294, !3793, !3925, !257}
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !3927)
!3927 = !{!3928, !3929, !3930}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3926, file: !258, line: 64, baseType: !3820, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3926, file: !258, line: 65, baseType: !294, size: 32, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3926, file: !258, line: 66, baseType: !3931, size: 512, offset: 96)
!3931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 512, elements: !1657)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3801, file: !258, line: 110, baseType: !3933, size: 64, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!294, !3793, !7, !3936}
!3936 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !292, line: 164, baseType: !504)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3801, file: !258, line: 111, baseType: !3938, size: 64, offset: 192)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{null, !3793, !7}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3801, file: !258, line: 112, baseType: !3942, size: 64, offset: 256)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!294, !3793, !3807, !3945, !7, !3947, !365}
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3801, file: !258, line: 117, baseType: !3949, size: 64, offset: 320)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!294, !3793, !7, !7, !293}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3801, file: !258, line: 119, baseType: !3953, size: 64, offset: 384)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{null, !3793, !7, !7}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3801, file: !258, line: 121, baseType: !3957, size: 64, offset: 448)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!294, !3793, !3960, !855}
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3962, line: 11, flags: DIFlagFwdDecl)
!3962 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3801, file: !258, line: 122, baseType: !3964, size: 64, offset: 512)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{null, !3793, !3960}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3801, file: !258, line: 123, baseType: !3968, size: 64, offset: 576)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!294, !3793, !3925, !3947, !365}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3794, file: !258, line: 166, baseType: !293, size: 64, offset: 256)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3794, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3794, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3794, file: !258, line: 171, baseType: !3820, size: 64, offset: 384)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3794, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3794, file: !258, line: 173, baseType: !3977, size: 64, offset: 512)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3794, file: !258, line: 175, baseType: !3793, size: 64, offset: 576)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3794, file: !258, line: 182, baseType: !3936, size: 64, offset: 640)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3794, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3794, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3794, file: !258, line: 185, baseType: !1108, size: 128, offset: 768)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3794, file: !258, line: 186, baseType: !1379, size: 192, offset: 896)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3794, file: !258, line: 187, baseType: !3986, offset: 1088)
!3986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2808)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3510, file: !237, line: 499, baseType: !553, size: 128, offset: 4224)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3510, file: !237, line: 502, baseType: !3989, size: 64, offset: 4352)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3991)
!3991 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3510, file: !237, line: 504, baseType: !3993, size: 64, offset: 4416)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3510, file: !237, line: 505, baseType: !560, size: 64, offset: 4480)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3510, file: !237, line: 510, baseType: !560, size: 64, offset: 4544)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3510, file: !237, line: 511, baseType: !3997, size: 64, offset: 4608)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3999)
!3999 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3510, file: !237, line: 513, baseType: !4001, size: 64, offset: 4672)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !4003)
!4003 = !{!4004, !4005}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4002, file: !237, line: 293, baseType: !7, size: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4002, file: !237, line: 294, baseType: !504, size: 64, offset: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3510, file: !237, line: 515, baseType: !553, size: 128, offset: 4736)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3510, file: !237, line: 526, baseType: !4008, offset: 4864)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4009, line: 5, elements: !491)
!4009 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3510, file: !237, line: 528, baseType: !3807, size: 64, offset: 4864)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3510, file: !237, line: 529, baseType: !3820, size: 64, offset: 4928)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3510, file: !237, line: 534, baseType: !878, size: 32, offset: 4992)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3510, file: !237, line: 535, baseType: !461, size: 32, offset: 5024)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3510, file: !237, line: 537, baseType: !1112, offset: 5056)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3510, file: !237, line: 538, baseType: !553, size: 128, offset: 5056)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3510, file: !237, line: 540, baseType: !4017, size: 64, offset: 5184)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4019, line: 54, size: 960, elements: !4020)
!4019 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4020 = !{!4021, !4022, !4023, !4024, !4025, !4026, !4027, !4031, !4035, !4036, !4037, !4038, !4042, !4046, !4047}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4018, file: !4019, line: 55, baseType: !304, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4018, file: !4019, line: 56, baseType: !308, size: 64, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4018, file: !4019, line: 58, baseType: !2164, size: 64, offset: 128)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4018, file: !4019, line: 59, baseType: !2164, size: 64, offset: 192)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4018, file: !4019, line: 60, baseType: !2091, size: 64, offset: 256)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4018, file: !4019, line: 62, baseType: !3527, size: 64, offset: 320)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4018, file: !4019, line: 63, baseType: !4028, size: 64, offset: 384)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!326, !3514, !3534}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4018, file: !4019, line: 65, baseType: !4032, size: 64, offset: 448)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{null, !4017}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4018, file: !4019, line: 66, baseType: !3536, size: 64, offset: 512)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4018, file: !4019, line: 68, baseType: !3545, size: 64, offset: 576)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4018, file: !4019, line: 70, baseType: !2200, size: 64, offset: 640)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4018, file: !4019, line: 71, baseType: !4039, size: 64, offset: 704)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!2217, !3514}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4018, file: !4019, line: 73, baseType: !4043, size: 64, offset: 768)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{null, !3514, !2234, !2235}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4018, file: !4019, line: 75, baseType: !3540, size: 64, offset: 832)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4018, file: !4019, line: 77, baseType: !3657, size: 64, offset: 896)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3510, file: !237, line: 541, baseType: !2164, size: 64, offset: 5248)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3510, file: !237, line: 543, baseType: !3536, size: 64, offset: 5312)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3510, file: !237, line: 544, baseType: !4051, size: 64, offset: 5376)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3510, file: !237, line: 545, baseType: !4054, size: 64, offset: 5440)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3510, file: !237, line: 547, baseType: !855, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3510, file: !237, line: 548, baseType: !855, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3510, file: !237, line: 549, baseType: !855, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3510, file: !237, line: 550, baseType: !855, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !419, file: !420, line: 709, baseType: !504, size: 64, offset: 6336)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !419, file: !420, line: 713, baseType: !294, size: 32, offset: 6400)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !419, file: !420, line: 714, baseType: !4063, size: 384, offset: 6432)
!4063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 384, elements: !4064)
!4064 = !{!4065}
!4065 = !DISubrange(count: 48)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !419, file: !420, line: 715, baseType: !2780, size: 192, offset: 6848)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !419, file: !420, line: 717, baseType: !1379, size: 192, offset: 7040)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !419, file: !420, line: 718, baseType: !553, size: 128, offset: 7232)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !419, file: !420, line: 720, baseType: !4070, size: 64, offset: 7360)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !420, line: 618, size: 832, elements: !4072)
!4072 = !{!4073, !4077, !4078, !4082, !4083, !4084, !4085, !4089, !4090, !4093, !4094, !4097, !4100}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4071, file: !420, line: 619, baseType: !4074, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!294, !418}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4071, file: !420, line: 621, baseType: !4074, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4071, file: !420, line: 622, baseType: !4079, size: 64, offset: 128)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{null, !418, !294}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4071, file: !420, line: 623, baseType: !4074, size: 64, offset: 192)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4071, file: !420, line: 624, baseType: !4079, size: 64, offset: 256)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4071, file: !420, line: 625, baseType: !4074, size: 64, offset: 320)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4071, file: !420, line: 627, baseType: !4086, size: 64, offset: 384)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{null, !418}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4071, file: !420, line: 628, baseType: !4086, size: 64, offset: 448)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4071, file: !420, line: 631, baseType: !4091, size: 64, offset: 512)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !420, line: 631, flags: DIFlagFwdDecl)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4071, file: !420, line: 632, baseType: !4091, size: 64, offset: 576)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4071, file: !420, line: 633, baseType: !4095, size: 64, offset: 640)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !420, line: 633, flags: DIFlagFwdDecl)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4071, file: !420, line: 634, baseType: !4098, size: 64, offset: 704)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !420, line: 634, flags: DIFlagFwdDecl)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4071, file: !420, line: 635, baseType: !4098, size: 64, offset: 768)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !419, file: !420, line: 721, baseType: !4102, size: 64, offset: 7424)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4104)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !420, line: 664, size: 192, elements: !4105)
!4105 = !{!4106, !4107, !4108, !4109, !4110, !4111}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4104, file: !420, line: 665, baseType: !560, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4104, file: !420, line: 666, baseType: !294, size: 32, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4104, file: !420, line: 667, baseType: !333, size: 16, offset: 96)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4104, file: !420, line: 668, baseType: !333, size: 16, offset: 112)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4104, file: !420, line: 669, baseType: !333, size: 16, offset: 128)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4104, file: !420, line: 670, baseType: !333, size: 16, offset: 144)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !419, file: !420, line: 723, baseType: !3793, size: 64, offset: 7488)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !415, file: !3, line: 25, baseType: !4114, size: 64, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4116)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cx24110_config", file: !4117, line: 17, size: 8, elements: !4118)
!4117 = !DIFile(filename: "drivers/media/dvb-frontends/cx24110.h", directory: "/home/lizy2001/genbc/linux")
!4118 = !{!4119}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4116, file: !4117, line: 20, baseType: !343, size: 8)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !415, file: !3, line: 27, baseType: !4121, size: 10240, offset: 128)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !4122)
!4122 = !{!4123, !4124, !4395, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4439, !4440}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4121, file: !51, line: 687, baseType: !2376, size: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4121, file: !51, line: 688, baseType: !4125, size: 6016, offset: 64)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !4126)
!4126 = !{!4127, !4139, !4141, !4146, !4147, !4148, !4152, !4153, !4159, !4164, !4168, !4169, !4179, !4256, !4260, !4264, !4269, !4270, !4271, !4272, !4282, !4293, !4297, !4301, !4305, !4309, !4313, !4317, !4318, !4319, !4323, !4377}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4125, file: !51, line: 436, baseType: !4128, size: 1280)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !4129)
!4129 = !{!4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4128, file: !51, line: 339, baseType: !3603, size: 1024)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4128, file: !51, line: 340, baseType: !461, size: 32, offset: 1024)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4128, file: !51, line: 341, baseType: !461, size: 32, offset: 1056)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !4128, file: !51, line: 342, baseType: !461, size: 32, offset: 1088)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !4128, file: !51, line: 343, baseType: !461, size: 32, offset: 1120)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !4128, file: !51, line: 344, baseType: !461, size: 32, offset: 1152)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !4128, file: !51, line: 345, baseType: !461, size: 32, offset: 1184)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !4128, file: !51, line: 346, baseType: !461, size: 32, offset: 1216)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !4128, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !4125, file: !51, line: 438, baseType: !4140, size: 64, offset: 1280)
!4140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 64, elements: !638)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4125, file: !51, line: 440, baseType: !4142, size: 64, offset: 1344)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{null, !4145}
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4125, file: !51, line: 441, baseType: !4142, size: 64, offset: 1408)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !4125, file: !51, line: 442, baseType: !4142, size: 64, offset: 1472)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4125, file: !51, line: 444, baseType: !4149, size: 64, offset: 1536)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!294, !4145}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4125, file: !51, line: 445, baseType: !4149, size: 64, offset: 1600)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4125, file: !51, line: 447, baseType: !4154, size: 64, offset: 1664)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!294, !4145, !4157, !294}
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !4125, file: !51, line: 450, baseType: !4160, size: 64, offset: 1728)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!294, !4145, !855, !7, !365, !4163}
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !4125, file: !51, line: 457, baseType: !4165, size: 64, offset: 1792)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!50, !4145}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !4125, file: !51, line: 460, baseType: !4149, size: 64, offset: 1856)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !4125, file: !51, line: 461, baseType: !4170, size: 64, offset: 1920)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!294, !4145, !4173}
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !4175)
!4175 = !{!4176, !4177, !4178}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4174, file: !51, line: 70, baseType: !294, size: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4174, file: !51, line: 71, baseType: !294, size: 32, offset: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4174, file: !51, line: 72, baseType: !294, size: 32, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !4125, file: !51, line: 463, baseType: !4180, size: 64, offset: 1984)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!294, !4145, !4183}
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !4185)
!4185 = !{!4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4249, !4250, !4251, !4252, !4253, !4254, !4255}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4184, file: !51, line: 587, baseType: !461, size: 32)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4184, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4184, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4184, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4184, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4184, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4184, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4184, file: !51, line: 595, baseType: !461, size: 32, offset: 224)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4184, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4184, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4184, file: !51, line: 598, baseType: !461, size: 32, offset: 320)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4184, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4184, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4184, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4184, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4184, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4184, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4184, file: !51, line: 610, baseType: !343, size: 8, offset: 544)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4184, file: !51, line: 611, baseType: !343, size: 8, offset: 552)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4184, file: !51, line: 612, baseType: !343, size: 8, offset: 560)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4184, file: !51, line: 613, baseType: !461, size: 32, offset: 576)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4184, file: !51, line: 614, baseType: !461, size: 32, offset: 608)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4184, file: !51, line: 615, baseType: !343, size: 8, offset: 640)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4184, file: !51, line: 621, baseType: !4210, size: 384, offset: 672)
!4210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4211, size: 384, elements: !1020)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4184, file: !51, line: 616, size: 128, elements: !4212)
!4212 = !{!4213, !4214, !4215, !4216}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4211, file: !51, line: 617, baseType: !343, size: 8)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4211, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4211, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4211, file: !51, line: 620, baseType: !343, size: 8, offset: 96)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4184, file: !51, line: 624, baseType: !461, size: 32, offset: 1056)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4184, file: !51, line: 627, baseType: !461, size: 32, offset: 1088)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4184, file: !51, line: 630, baseType: !343, size: 8, offset: 1120)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4184, file: !51, line: 631, baseType: !343, size: 8, offset: 1128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4184, file: !51, line: 632, baseType: !343, size: 8, offset: 1136)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4184, file: !51, line: 633, baseType: !343, size: 8, offset: 1144)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4184, file: !51, line: 634, baseType: !343, size: 8, offset: 1152)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4184, file: !51, line: 635, baseType: !343, size: 8, offset: 1160)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4184, file: !51, line: 637, baseType: !343, size: 8, offset: 1168)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4184, file: !51, line: 638, baseType: !343, size: 8, offset: 1176)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4184, file: !51, line: 639, baseType: !343, size: 8, offset: 1184)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4184, file: !51, line: 640, baseType: !343, size: 8, offset: 1192)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4184, file: !51, line: 641, baseType: !343, size: 8, offset: 1200)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4184, file: !51, line: 642, baseType: !343, size: 8, offset: 1208)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4184, file: !51, line: 643, baseType: !343, size: 8, offset: 1216)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4184, file: !51, line: 644, baseType: !343, size: 8, offset: 1224)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4184, file: !51, line: 645, baseType: !343, size: 8, offset: 1232)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4184, file: !51, line: 647, baseType: !461, size: 32, offset: 1248)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4184, file: !51, line: 650, baseType: !4236, size: 296, offset: 1280)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !4237)
!4237 = !{!4238, !4239}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4236, file: !6, line: 826, baseType: !344, size: 8)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4236, file: !6, line: 827, baseType: !4240, size: 288, offset: 8)
!4240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4241, size: 288, elements: !2449)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !4242)
!4242 = !{!4243, !4244}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4241, file: !6, line: 804, baseType: !344, size: 8)
!4244 = !DIDerivedType(tag: DW_TAG_member, scope: !4241, file: !6, line: 805, baseType: !4245, size: 64, offset: 8)
!4245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4241, file: !6, line: 805, size: 64, elements: !4246)
!4246 = !{!4247, !4248}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4245, file: !6, line: 806, baseType: !561, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4245, file: !6, line: 807, baseType: !591, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4184, file: !51, line: 651, baseType: !4236, size: 296, offset: 1576)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4184, file: !51, line: 652, baseType: !4236, size: 296, offset: 1872)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4184, file: !51, line: 653, baseType: !4236, size: 296, offset: 2168)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4184, file: !51, line: 654, baseType: !4236, size: 296, offset: 2464)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4184, file: !51, line: 655, baseType: !4236, size: 296, offset: 2760)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4184, file: !51, line: 656, baseType: !4236, size: 296, offset: 3056)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4184, file: !51, line: 657, baseType: !4236, size: 296, offset: 3352)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !4125, file: !51, line: 466, baseType: !4257, size: 64, offset: 2048)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!294, !4145, !4163}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !4125, file: !51, line: 467, baseType: !4261, size: 64, offset: 2112)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!294, !4145, !2847}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !4125, file: !51, line: 468, baseType: !4265, size: 64, offset: 2176)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!294, !4145, !4268}
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !4125, file: !51, line: 469, baseType: !4265, size: 64, offset: 2240)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !4125, file: !51, line: 470, baseType: !4261, size: 64, offset: 2304)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !4125, file: !51, line: 472, baseType: !4149, size: 64, offset: 2368)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !4125, file: !51, line: 473, baseType: !4273, size: 64, offset: 2432)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!294, !4145, !4276}
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !4278)
!4278 = !{!4279, !4281}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4277, file: !6, line: 174, baseType: !4280, size: 48)
!4280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 48, elements: !2548)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4277, file: !6, line: 175, baseType: !344, size: 8, offset: 48)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !4125, file: !51, line: 474, baseType: !4283, size: 64, offset: 2496)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!294, !4145, !4286}
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !4288)
!4288 = !{!4289, !4291, !4292}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4287, file: !6, line: 196, baseType: !4290, size: 32)
!4290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 32, elements: !2449)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4287, file: !6, line: 197, baseType: !344, size: 8, offset: 32)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4287, file: !6, line: 198, baseType: !294, size: 32, offset: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !4125, file: !51, line: 475, baseType: !4294, size: 64, offset: 2560)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!294, !4145, !171}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !4125, file: !51, line: 477, baseType: !4298, size: 64, offset: 2624)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!294, !4145, !78}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !4125, file: !51, line: 478, baseType: !4302, size: 64, offset: 2688)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!294, !4145, !73}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !4125, file: !51, line: 480, baseType: !4306, size: 64, offset: 2752)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!294, !4145, !295}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !4125, file: !51, line: 481, baseType: !4310, size: 64, offset: 2816)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!294, !4145, !504}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4125, file: !51, line: 482, baseType: !4314, size: 64, offset: 2880)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!294, !4145, !294}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !4125, file: !51, line: 483, baseType: !4314, size: 64, offset: 2944)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !4125, file: !51, line: 484, baseType: !4149, size: 64, offset: 3008)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !4125, file: !51, line: 490, baseType: !4320, size: 64, offset: 3072)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!175, !4145}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !4125, file: !51, line: 492, baseType: !4324, size: 2304, offset: 3136)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !4325)
!4325 = !{!4326, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4353, !4357, !4358, !4359, !4360, !4361, !4362, !4367, !4372, !4376}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4324, file: !51, line: 228, baseType: !4327, size: 1216)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !4328)
!4328 = !{!4329, !4330, !4331, !4332, !4333, !4334, !4335}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4327, file: !51, line: 89, baseType: !3603, size: 1024)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4327, file: !51, line: 91, baseType: !461, size: 32, offset: 1024)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4327, file: !51, line: 92, baseType: !461, size: 32, offset: 1056)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4327, file: !51, line: 93, baseType: !461, size: 32, offset: 1088)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4327, file: !51, line: 95, baseType: !461, size: 32, offset: 1120)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4327, file: !51, line: 96, baseType: !461, size: 32, offset: 1152)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4327, file: !51, line: 97, baseType: !461, size: 32, offset: 1184)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4324, file: !51, line: 230, baseType: !4142, size: 64, offset: 1216)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4324, file: !51, line: 231, baseType: !4149, size: 64, offset: 1280)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4324, file: !51, line: 232, baseType: !4149, size: 64, offset: 1344)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4324, file: !51, line: 233, baseType: !4149, size: 64, offset: 1408)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4324, file: !51, line: 234, baseType: !4149, size: 64, offset: 1472)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4324, file: !51, line: 237, baseType: !4149, size: 64, offset: 1536)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4324, file: !51, line: 238, baseType: !4343, size: 64, offset: 1600)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!294, !4145, !4346}
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !4348)
!4348 = !{!4349, !4350, !4351, !4352}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4347, file: !51, line: 115, baseType: !7, size: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4347, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4347, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4347, file: !51, line: 118, baseType: !560, size: 64, offset: 128)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4324, file: !51, line: 240, baseType: !4354, size: 64, offset: 1664)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!294, !4145, !293}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4324, file: !51, line: 242, baseType: !4261, size: 64, offset: 1728)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4324, file: !51, line: 243, baseType: !4261, size: 64, offset: 1792)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4324, file: !51, line: 244, baseType: !4261, size: 64, offset: 1856)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4324, file: !51, line: 248, baseType: !4261, size: 64, offset: 1920)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4324, file: !51, line: 249, baseType: !4265, size: 64, offset: 1984)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4324, file: !51, line: 250, baseType: !4363, size: 64, offset: 2048)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!294, !4145, !4366}
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4324, file: !51, line: 258, baseType: !4368, size: 64, offset: 2112)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!294, !4145, !4371, !294}
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4324, file: !51, line: 267, baseType: !4373, size: 64, offset: 2176)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!294, !4145, !461}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4324, file: !51, line: 268, baseType: !4373, size: 64, offset: 2240)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !4125, file: !51, line: 493, baseType: !4378, size: 576, offset: 5440)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !4379)
!4379 = !{!4380, !4384, !4388, !4389, !4390, !4391, !4392, !4393, !4394}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4378, file: !51, line: 304, baseType: !4381, size: 64)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !4382)
!4382 = !{!4383}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4381, file: !51, line: 277, baseType: !326, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4378, file: !51, line: 306, baseType: !4385, size: 64, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{null, !4145, !4346}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4378, file: !51, line: 308, baseType: !4265, size: 64, offset: 128)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4378, file: !51, line: 309, baseType: !4363, size: 64, offset: 192)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4378, file: !51, line: 310, baseType: !4142, size: 64, offset: 256)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4378, file: !51, line: 311, baseType: !4142, size: 64, offset: 320)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4378, file: !51, line: 312, baseType: !4142, size: 64, offset: 384)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4378, file: !51, line: 313, baseType: !4314, size: 64, offset: 448)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4378, file: !51, line: 316, baseType: !4354, size: 64, offset: 512)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !4121, file: !51, line: 689, baseType: !4396, size: 64, offset: 6080)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !4398)
!4398 = !{!4399, !4400, !4401, !4402, !4403, !4405, !4406, !4407, !4408, !4409, !4428}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4397, file: !272, line: 102, baseType: !294, size: 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4397, file: !272, line: 103, baseType: !553, size: 128, offset: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4397, file: !272, line: 104, baseType: !553, size: 128, offset: 192)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4397, file: !272, line: 105, baseType: !304, size: 64, offset: 320)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !4397, file: !272, line: 106, baseType: !4404, size: 48, offset: 384)
!4404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 48, elements: !2548)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4397, file: !272, line: 107, baseType: !293, size: 64, offset: 448)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4397, file: !272, line: 109, baseType: !3514, size: 64, offset: 512)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4397, file: !272, line: 111, baseType: !308, size: 64, offset: 576)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !4397, file: !272, line: 113, baseType: !294, size: 32, offset: 640)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !4397, file: !272, line: 114, baseType: !4410, size: 64, offset: 704)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4412)
!4412 = !{!4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4427}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4411, file: !272, line: 158, baseType: !553, size: 128)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4411, file: !272, line: 159, baseType: !1827, size: 64, offset: 128)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4411, file: !272, line: 160, baseType: !4396, size: 64, offset: 192)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4411, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4411, file: !272, line: 162, baseType: !294, size: 32, offset: 288)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4411, file: !272, line: 163, baseType: !461, size: 32, offset: 320)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4411, file: !272, line: 167, baseType: !294, size: 32, offset: 352)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4411, file: !272, line: 168, baseType: !294, size: 32, offset: 384)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4411, file: !272, line: 169, baseType: !294, size: 32, offset: 416)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4411, file: !272, line: 171, baseType: !1611, size: 128, offset: 448)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4411, file: !272, line: 173, baseType: !4424, size: 64, offset: 576)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!294, !732, !7, !293}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4411, file: !272, line: 187, baseType: !293, size: 64, offset: 640)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !4397, file: !272, line: 115, baseType: !1379, size: 192, offset: 768)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !4121, file: !51, line: 690, baseType: !293, size: 64, offset: 6144)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !4121, file: !51, line: 691, baseType: !293, size: 64, offset: 6208)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !4121, file: !51, line: 692, baseType: !293, size: 64, offset: 6272)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !4121, file: !51, line: 693, baseType: !293, size: 64, offset: 6336)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !4121, file: !51, line: 694, baseType: !293, size: 64, offset: 6400)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !4121, file: !51, line: 695, baseType: !4184, size: 3648, offset: 6464)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4121, file: !51, line: 698, baseType: !4436, size: 64, offset: 10112)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!294, !293, !294, !294, !294}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4121, file: !51, line: 699, baseType: !294, size: 32, offset: 10176)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4121, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "lastber", scope: !415, file: !3, line: 29, baseType: !461, size: 32, offset: 10368)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "lastbler", scope: !415, file: !3, line: 30, baseType: !461, size: 32, offset: 10400)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "lastesn0", scope: !415, file: !3, line: 31, baseType: !461, size: 32, offset: 10432)
!4444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4445, size: 288, elements: !3614)
!4445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!4446 = !DIGlobalVariableExpression(var: !4447, expr: !DIExpression())
!4447 = distinct !DIGlobalVariable(name: "g1", scope: !411, file: !3, line: 171, type: !4444, isLocal: true, isDefinition: true)
!4448 = !DIGlobalVariableExpression(var: !4449, expr: !DIExpression())
!4449 = distinct !DIGlobalVariable(name: "g2", scope: !411, file: !3, line: 172, type: !4444, isLocal: true, isDefinition: true)
!4450 = !DIGlobalVariableExpression(var: !4451, expr: !DIExpression())
!4451 = distinct !DIGlobalVariable(name: "bands", scope: !4452, file: !3, line: 233, type: !4455, isLocal: true, isDefinition: true)
!4452 = distinct !DISubprogram(name: "cx24110_set_symbolrate", scope: !3, file: !3, line: 227, type: !4453, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!294, !414, !461}
!4455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3946, size: 96, elements: !1020)
!4456 = !DIGlobalVariableExpression(var: !4457, expr: !DIExpression())
!4457 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 649, type: !4458, isLocal: true, isDefinition: true)
!4458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 112, elements: !4459)
!4459 = !{!4460}
!4460 = !DISubrange(count: 14)
!4461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4125)
!4462 = !{i32 7, !"Dwarf Version", i32 4}
!4463 = !{i32 2, !"Debug Info Version", i32 3}
!4464 = !{i32 1, !"wchar_size", i32 2}
!4465 = !{i32 1, !"Code Model", i32 2}
!4466 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4467 = distinct !DISubprogram(name: "cx24110_attach", scope: !3, file: !3, line: 584, type: !4468, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !491)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{!4145, !4114, !418}
!4470 = !DILocalVariable(name: "config", arg: 1, scope: !4467, file: !3, line: 584, type: !4114)
!4471 = !DILocation(line: 584, column: 66, scope: !4467)
!4472 = !DILocalVariable(name: "i2c", arg: 2, scope: !4467, file: !3, line: 585, type: !418)
!4473 = !DILocation(line: 585, column: 29, scope: !4467)
!4474 = !DILocalVariable(name: "state", scope: !4467, file: !3, line: 587, type: !414)
!4475 = !DILocation(line: 587, column: 24, scope: !4467)
!4476 = !DILocalVariable(name: "ret", scope: !4467, file: !3, line: 588, type: !294)
!4477 = !DILocation(line: 588, column: 6, scope: !4467)
!4478 = !DILocation(line: 591, column: 10, scope: !4467)
!4479 = !DILocation(line: 591, column: 8, scope: !4467)
!4480 = !DILocation(line: 592, column: 6, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 592, column: 6)
!4482 = !DILocation(line: 592, column: 12, scope: !4481)
!4483 = !DILocation(line: 592, column: 6, scope: !4467)
!4484 = !DILocation(line: 592, column: 21, scope: !4481)
!4485 = !DILocation(line: 595, column: 18, scope: !4467)
!4486 = !DILocation(line: 595, column: 2, scope: !4467)
!4487 = !DILocation(line: 595, column: 9, scope: !4467)
!4488 = !DILocation(line: 595, column: 16, scope: !4467)
!4489 = !DILocation(line: 596, column: 15, scope: !4467)
!4490 = !DILocation(line: 596, column: 2, scope: !4467)
!4491 = !DILocation(line: 596, column: 9, scope: !4467)
!4492 = !DILocation(line: 596, column: 13, scope: !4467)
!4493 = !DILocation(line: 597, column: 2, scope: !4467)
!4494 = !DILocation(line: 597, column: 9, scope: !4467)
!4495 = !DILocation(line: 597, column: 17, scope: !4467)
!4496 = !DILocation(line: 598, column: 2, scope: !4467)
!4497 = !DILocation(line: 598, column: 9, scope: !4467)
!4498 = !DILocation(line: 598, column: 18, scope: !4467)
!4499 = !DILocation(line: 599, column: 2, scope: !4467)
!4500 = !DILocation(line: 599, column: 9, scope: !4467)
!4501 = !DILocation(line: 599, column: 18, scope: !4467)
!4502 = !DILocation(line: 602, column: 24, scope: !4467)
!4503 = !DILocation(line: 602, column: 8, scope: !4467)
!4504 = !DILocation(line: 602, column: 6, scope: !4467)
!4505 = !DILocation(line: 603, column: 7, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 603, column: 6)
!4507 = !DILocation(line: 603, column: 11, scope: !4506)
!4508 = !DILocation(line: 603, column: 20, scope: !4506)
!4509 = !DILocation(line: 603, column: 24, scope: !4506)
!4510 = !DILocation(line: 603, column: 28, scope: !4506)
!4511 = !DILocation(line: 603, column: 6, scope: !4467)
!4512 = !DILocation(line: 603, column: 38, scope: !4506)
!4513 = !DILocation(line: 606, column: 10, scope: !4467)
!4514 = !DILocation(line: 606, column: 17, scope: !4467)
!4515 = !DILocation(line: 606, column: 26, scope: !4467)
!4516 = !DILocation(line: 606, column: 2, scope: !4467)
!4517 = !DILocation(line: 607, column: 37, scope: !4467)
!4518 = !DILocation(line: 607, column: 2, scope: !4467)
!4519 = !DILocation(line: 607, column: 9, scope: !4467)
!4520 = !DILocation(line: 607, column: 18, scope: !4467)
!4521 = !DILocation(line: 607, column: 35, scope: !4467)
!4522 = !DILocation(line: 608, column: 10, scope: !4467)
!4523 = !DILocation(line: 608, column: 17, scope: !4467)
!4524 = !DILocation(line: 608, column: 2, scope: !4467)
!4525 = !DILabel(scope: !4467, name: "error", file: !3, line: 610)
!4526 = !DILocation(line: 610, column: 1, scope: !4467)
!4527 = !DILocation(line: 611, column: 8, scope: !4467)
!4528 = !DILocation(line: 611, column: 2, scope: !4467)
!4529 = !DILocation(line: 612, column: 2, scope: !4467)
!4530 = !DILocation(line: 613, column: 1, scope: !4467)
!4531 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 662, type: !4532, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!293, !944, !291}
!4534 = !DILocalVariable(name: "s", arg: 1, scope: !4535, file: !284, line: 445, type: !1289)
!4535 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !284, file: !284, line: 445, type: !4536, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!293, !1289, !291, !944}
!4538 = !DILocation(line: 445, column: 72, scope: !4535, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 552, column: 10, scope: !4540, inlinedAt: !4543)
!4540 = distinct !DILexicalBlock(scope: !4541, file: !284, line: 540, column: 34)
!4541 = distinct !DILexicalBlock(scope: !4542, file: !284, line: 540, column: 6)
!4542 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 538, type: !4532, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!4543 = distinct !DILocation(line: 664, column: 9, scope: !4531)
!4544 = !DILocalVariable(name: "flags", arg: 2, scope: !4535, file: !284, line: 446, type: !291)
!4545 = !DILocation(line: 446, column: 9, scope: !4535, inlinedAt: !4539)
!4546 = !DILocalVariable(name: "size", arg: 3, scope: !4535, file: !284, line: 446, type: !944)
!4547 = !DILocation(line: 446, column: 23, scope: !4535, inlinedAt: !4539)
!4548 = !DILocalVariable(name: "ret", scope: !4535, file: !284, line: 448, type: !293)
!4549 = !DILocation(line: 448, column: 8, scope: !4535, inlinedAt: !4539)
!4550 = !DILocalVariable(name: "flags", arg: 1, scope: !4551, file: !284, line: 318, type: !291)
!4551 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 318, type: !4552, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!283, !291}
!4554 = !DILocation(line: 318, column: 67, scope: !4551, inlinedAt: !4555)
!4555 = distinct !DILocation(line: 553, column: 20, scope: !4540, inlinedAt: !4543)
!4556 = !DILocalVariable(name: "size", arg: 1, scope: !4557, file: !284, line: 346, type: !944)
!4557 = distinct !DISubprogram(name: "kmalloc_index", scope: !284, file: !284, line: 346, type: !4558, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!7, !944}
!4560 = !DILocation(line: 346, column: 58, scope: !4557, inlinedAt: !4561)
!4561 = distinct !DILocation(line: 547, column: 11, scope: !4540, inlinedAt: !4543)
!4562 = !DILocalVariable(name: "size", arg: 1, scope: !4563, file: !284, line: 472, type: !944)
!4563 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !284, file: !284, line: 472, type: !4564, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!293, !944, !291, !7}
!4566 = !DILocation(line: 472, column: 28, scope: !4563, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 481, column: 9, scope: !4568, inlinedAt: !4569)
!4568 = distinct !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 478, type: !4532, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!4569 = distinct !DILocation(line: 545, column: 11, scope: !4570, inlinedAt: !4543)
!4570 = distinct !DILexicalBlock(scope: !4540, file: !284, line: 544, column: 7)
!4571 = !DILocalVariable(name: "flags", arg: 2, scope: !4563, file: !284, line: 472, type: !291)
!4572 = !DILocation(line: 472, column: 40, scope: !4563, inlinedAt: !4567)
!4573 = !DILocalVariable(name: "order", arg: 3, scope: !4563, file: !284, line: 472, type: !7)
!4574 = !DILocation(line: 472, column: 60, scope: !4563, inlinedAt: !4567)
!4575 = !DILocalVariable(name: "size", arg: 1, scope: !4568, file: !284, line: 478, type: !944)
!4576 = !DILocation(line: 478, column: 51, scope: !4568, inlinedAt: !4569)
!4577 = !DILocalVariable(name: "flags", arg: 2, scope: !4568, file: !284, line: 478, type: !291)
!4578 = !DILocation(line: 478, column: 63, scope: !4568, inlinedAt: !4569)
!4579 = !DILocalVariable(name: "order", scope: !4568, file: !284, line: 480, type: !7)
!4580 = !DILocation(line: 480, column: 15, scope: !4568, inlinedAt: !4569)
!4581 = !DILocalVariable(name: "size", arg: 1, scope: !4542, file: !284, line: 538, type: !944)
!4582 = !DILocation(line: 538, column: 45, scope: !4542, inlinedAt: !4543)
!4583 = !DILocalVariable(name: "flags", arg: 2, scope: !4542, file: !284, line: 538, type: !291)
!4584 = !DILocation(line: 538, column: 57, scope: !4542, inlinedAt: !4543)
!4585 = !DILocalVariable(name: "index", scope: !4540, file: !284, line: 542, type: !7)
!4586 = !DILocation(line: 542, column: 16, scope: !4540, inlinedAt: !4543)
!4587 = !DILocalVariable(name: "size", arg: 1, scope: !4531, file: !284, line: 662, type: !944)
!4588 = !DILocation(line: 662, column: 36, scope: !4531)
!4589 = !DILocalVariable(name: "flags", arg: 2, scope: !4531, file: !284, line: 662, type: !291)
!4590 = !DILocation(line: 662, column: 48, scope: !4531)
!4591 = !DILocation(line: 664, column: 17, scope: !4531)
!4592 = !DILocation(line: 664, column: 23, scope: !4531)
!4593 = !DILocation(line: 664, column: 29, scope: !4531)
!4594 = !DILocation(line: 540, column: 27, scope: !4541, inlinedAt: !4543)
!4595 = !DILocation(line: 540, column: 6, scope: !4541, inlinedAt: !4543)
!4596 = !DILocation(line: 540, column: 6, scope: !4542, inlinedAt: !4543)
!4597 = !DILocation(line: 544, column: 7, scope: !4570, inlinedAt: !4543)
!4598 = !DILocation(line: 544, column: 12, scope: !4570, inlinedAt: !4543)
!4599 = !DILocation(line: 544, column: 7, scope: !4540, inlinedAt: !4543)
!4600 = !DILocation(line: 545, column: 25, scope: !4570, inlinedAt: !4543)
!4601 = !DILocation(line: 545, column: 31, scope: !4570, inlinedAt: !4543)
!4602 = !DILocation(line: 480, column: 33, scope: !4568, inlinedAt: !4569)
!4603 = !DILocation(line: 480, column: 23, scope: !4568, inlinedAt: !4569)
!4604 = !DILocation(line: 481, column: 29, scope: !4568, inlinedAt: !4569)
!4605 = !DILocation(line: 481, column: 35, scope: !4568, inlinedAt: !4569)
!4606 = !DILocation(line: 481, column: 42, scope: !4568, inlinedAt: !4569)
!4607 = !DILocation(line: 474, column: 23, scope: !4563, inlinedAt: !4567)
!4608 = !DILocation(line: 474, column: 29, scope: !4563, inlinedAt: !4567)
!4609 = !DILocation(line: 474, column: 36, scope: !4563, inlinedAt: !4567)
!4610 = !DILocation(line: 474, column: 9, scope: !4563, inlinedAt: !4567)
!4611 = !DILocation(line: 545, column: 4, scope: !4570, inlinedAt: !4543)
!4612 = !DILocation(line: 547, column: 25, scope: !4540, inlinedAt: !4543)
!4613 = !DILocation(line: 348, column: 7, scope: !4614, inlinedAt: !4561)
!4614 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 348, column: 6)
!4615 = !DILocation(line: 348, column: 6, scope: !4557, inlinedAt: !4561)
!4616 = !DILocation(line: 349, column: 3, scope: !4614, inlinedAt: !4561)
!4617 = !DILocation(line: 351, column: 6, scope: !4618, inlinedAt: !4561)
!4618 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 351, column: 6)
!4619 = !DILocation(line: 351, column: 11, scope: !4618, inlinedAt: !4561)
!4620 = !DILocation(line: 351, column: 6, scope: !4557, inlinedAt: !4561)
!4621 = !DILocation(line: 352, column: 3, scope: !4618, inlinedAt: !4561)
!4622 = !DILocation(line: 354, column: 32, scope: !4623, inlinedAt: !4561)
!4623 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 354, column: 6)
!4624 = !DILocation(line: 354, column: 37, scope: !4623, inlinedAt: !4561)
!4625 = !DILocation(line: 354, column: 42, scope: !4623, inlinedAt: !4561)
!4626 = !DILocation(line: 354, column: 45, scope: !4623, inlinedAt: !4561)
!4627 = !DILocation(line: 354, column: 50, scope: !4623, inlinedAt: !4561)
!4628 = !DILocation(line: 354, column: 6, scope: !4557, inlinedAt: !4561)
!4629 = !DILocation(line: 355, column: 3, scope: !4623, inlinedAt: !4561)
!4630 = !DILocation(line: 356, column: 32, scope: !4631, inlinedAt: !4561)
!4631 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 356, column: 6)
!4632 = !DILocation(line: 356, column: 37, scope: !4631, inlinedAt: !4561)
!4633 = !DILocation(line: 356, column: 43, scope: !4631, inlinedAt: !4561)
!4634 = !DILocation(line: 356, column: 46, scope: !4631, inlinedAt: !4561)
!4635 = !DILocation(line: 356, column: 51, scope: !4631, inlinedAt: !4561)
!4636 = !DILocation(line: 356, column: 6, scope: !4557, inlinedAt: !4561)
!4637 = !DILocation(line: 357, column: 3, scope: !4631, inlinedAt: !4561)
!4638 = !DILocation(line: 358, column: 6, scope: !4639, inlinedAt: !4561)
!4639 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 358, column: 6)
!4640 = !DILocation(line: 358, column: 11, scope: !4639, inlinedAt: !4561)
!4641 = !DILocation(line: 358, column: 6, scope: !4557, inlinedAt: !4561)
!4642 = !DILocation(line: 358, column: 26, scope: !4639, inlinedAt: !4561)
!4643 = !DILocation(line: 359, column: 6, scope: !4644, inlinedAt: !4561)
!4644 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 359, column: 6)
!4645 = !DILocation(line: 359, column: 11, scope: !4644, inlinedAt: !4561)
!4646 = !DILocation(line: 359, column: 6, scope: !4557, inlinedAt: !4561)
!4647 = !DILocation(line: 359, column: 26, scope: !4644, inlinedAt: !4561)
!4648 = !DILocation(line: 360, column: 6, scope: !4649, inlinedAt: !4561)
!4649 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 360, column: 6)
!4650 = !DILocation(line: 360, column: 11, scope: !4649, inlinedAt: !4561)
!4651 = !DILocation(line: 360, column: 6, scope: !4557, inlinedAt: !4561)
!4652 = !DILocation(line: 360, column: 26, scope: !4649, inlinedAt: !4561)
!4653 = !DILocation(line: 361, column: 6, scope: !4654, inlinedAt: !4561)
!4654 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 361, column: 6)
!4655 = !DILocation(line: 361, column: 11, scope: !4654, inlinedAt: !4561)
!4656 = !DILocation(line: 361, column: 6, scope: !4557, inlinedAt: !4561)
!4657 = !DILocation(line: 361, column: 26, scope: !4654, inlinedAt: !4561)
!4658 = !DILocation(line: 362, column: 6, scope: !4659, inlinedAt: !4561)
!4659 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 362, column: 6)
!4660 = !DILocation(line: 362, column: 11, scope: !4659, inlinedAt: !4561)
!4661 = !DILocation(line: 362, column: 6, scope: !4557, inlinedAt: !4561)
!4662 = !DILocation(line: 362, column: 26, scope: !4659, inlinedAt: !4561)
!4663 = !DILocation(line: 363, column: 6, scope: !4664, inlinedAt: !4561)
!4664 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 363, column: 6)
!4665 = !DILocation(line: 363, column: 11, scope: !4664, inlinedAt: !4561)
!4666 = !DILocation(line: 363, column: 6, scope: !4557, inlinedAt: !4561)
!4667 = !DILocation(line: 363, column: 26, scope: !4664, inlinedAt: !4561)
!4668 = !DILocation(line: 364, column: 6, scope: !4669, inlinedAt: !4561)
!4669 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 364, column: 6)
!4670 = !DILocation(line: 364, column: 11, scope: !4669, inlinedAt: !4561)
!4671 = !DILocation(line: 364, column: 6, scope: !4557, inlinedAt: !4561)
!4672 = !DILocation(line: 364, column: 26, scope: !4669, inlinedAt: !4561)
!4673 = !DILocation(line: 365, column: 6, scope: !4674, inlinedAt: !4561)
!4674 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 365, column: 6)
!4675 = !DILocation(line: 365, column: 11, scope: !4674, inlinedAt: !4561)
!4676 = !DILocation(line: 365, column: 6, scope: !4557, inlinedAt: !4561)
!4677 = !DILocation(line: 365, column: 26, scope: !4674, inlinedAt: !4561)
!4678 = !DILocation(line: 366, column: 6, scope: !4679, inlinedAt: !4561)
!4679 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 366, column: 6)
!4680 = !DILocation(line: 366, column: 11, scope: !4679, inlinedAt: !4561)
!4681 = !DILocation(line: 366, column: 6, scope: !4557, inlinedAt: !4561)
!4682 = !DILocation(line: 366, column: 26, scope: !4679, inlinedAt: !4561)
!4683 = !DILocation(line: 367, column: 6, scope: !4684, inlinedAt: !4561)
!4684 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 367, column: 6)
!4685 = !DILocation(line: 367, column: 11, scope: !4684, inlinedAt: !4561)
!4686 = !DILocation(line: 367, column: 6, scope: !4557, inlinedAt: !4561)
!4687 = !DILocation(line: 367, column: 26, scope: !4684, inlinedAt: !4561)
!4688 = !DILocation(line: 368, column: 6, scope: !4689, inlinedAt: !4561)
!4689 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 368, column: 6)
!4690 = !DILocation(line: 368, column: 11, scope: !4689, inlinedAt: !4561)
!4691 = !DILocation(line: 368, column: 6, scope: !4557, inlinedAt: !4561)
!4692 = !DILocation(line: 368, column: 26, scope: !4689, inlinedAt: !4561)
!4693 = !DILocation(line: 369, column: 6, scope: !4694, inlinedAt: !4561)
!4694 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 369, column: 6)
!4695 = !DILocation(line: 369, column: 11, scope: !4694, inlinedAt: !4561)
!4696 = !DILocation(line: 369, column: 6, scope: !4557, inlinedAt: !4561)
!4697 = !DILocation(line: 369, column: 26, scope: !4694, inlinedAt: !4561)
!4698 = !DILocation(line: 370, column: 6, scope: !4699, inlinedAt: !4561)
!4699 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 370, column: 6)
!4700 = !DILocation(line: 370, column: 11, scope: !4699, inlinedAt: !4561)
!4701 = !DILocation(line: 370, column: 6, scope: !4557, inlinedAt: !4561)
!4702 = !DILocation(line: 370, column: 26, scope: !4699, inlinedAt: !4561)
!4703 = !DILocation(line: 371, column: 6, scope: !4704, inlinedAt: !4561)
!4704 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 371, column: 6)
!4705 = !DILocation(line: 371, column: 11, scope: !4704, inlinedAt: !4561)
!4706 = !DILocation(line: 371, column: 6, scope: !4557, inlinedAt: !4561)
!4707 = !DILocation(line: 371, column: 26, scope: !4704, inlinedAt: !4561)
!4708 = !DILocation(line: 372, column: 6, scope: !4709, inlinedAt: !4561)
!4709 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 372, column: 6)
!4710 = !DILocation(line: 372, column: 11, scope: !4709, inlinedAt: !4561)
!4711 = !DILocation(line: 372, column: 6, scope: !4557, inlinedAt: !4561)
!4712 = !DILocation(line: 372, column: 26, scope: !4709, inlinedAt: !4561)
!4713 = !DILocation(line: 373, column: 6, scope: !4714, inlinedAt: !4561)
!4714 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 373, column: 6)
!4715 = !DILocation(line: 373, column: 11, scope: !4714, inlinedAt: !4561)
!4716 = !DILocation(line: 373, column: 6, scope: !4557, inlinedAt: !4561)
!4717 = !DILocation(line: 373, column: 26, scope: !4714, inlinedAt: !4561)
!4718 = !DILocation(line: 374, column: 6, scope: !4719, inlinedAt: !4561)
!4719 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 374, column: 6)
!4720 = !DILocation(line: 374, column: 11, scope: !4719, inlinedAt: !4561)
!4721 = !DILocation(line: 374, column: 6, scope: !4557, inlinedAt: !4561)
!4722 = !DILocation(line: 374, column: 26, scope: !4719, inlinedAt: !4561)
!4723 = !DILocation(line: 375, column: 6, scope: !4724, inlinedAt: !4561)
!4724 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 375, column: 6)
!4725 = !DILocation(line: 375, column: 11, scope: !4724, inlinedAt: !4561)
!4726 = !DILocation(line: 375, column: 6, scope: !4557, inlinedAt: !4561)
!4727 = !DILocation(line: 375, column: 27, scope: !4724, inlinedAt: !4561)
!4728 = !DILocation(line: 376, column: 6, scope: !4729, inlinedAt: !4561)
!4729 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 376, column: 6)
!4730 = !DILocation(line: 376, column: 11, scope: !4729, inlinedAt: !4561)
!4731 = !DILocation(line: 376, column: 6, scope: !4557, inlinedAt: !4561)
!4732 = !DILocation(line: 376, column: 32, scope: !4729, inlinedAt: !4561)
!4733 = !DILocation(line: 377, column: 6, scope: !4734, inlinedAt: !4561)
!4734 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 377, column: 6)
!4735 = !DILocation(line: 377, column: 11, scope: !4734, inlinedAt: !4561)
!4736 = !DILocation(line: 377, column: 6, scope: !4557, inlinedAt: !4561)
!4737 = !DILocation(line: 377, column: 32, scope: !4734, inlinedAt: !4561)
!4738 = !DILocation(line: 378, column: 6, scope: !4739, inlinedAt: !4561)
!4739 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 378, column: 6)
!4740 = !DILocation(line: 378, column: 11, scope: !4739, inlinedAt: !4561)
!4741 = !DILocation(line: 378, column: 6, scope: !4557, inlinedAt: !4561)
!4742 = !DILocation(line: 378, column: 32, scope: !4739, inlinedAt: !4561)
!4743 = !DILocation(line: 379, column: 6, scope: !4744, inlinedAt: !4561)
!4744 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 379, column: 6)
!4745 = !DILocation(line: 379, column: 11, scope: !4744, inlinedAt: !4561)
!4746 = !DILocation(line: 379, column: 6, scope: !4557, inlinedAt: !4561)
!4747 = !DILocation(line: 379, column: 33, scope: !4744, inlinedAt: !4561)
!4748 = !DILocation(line: 380, column: 6, scope: !4749, inlinedAt: !4561)
!4749 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 380, column: 6)
!4750 = !DILocation(line: 380, column: 11, scope: !4749, inlinedAt: !4561)
!4751 = !DILocation(line: 380, column: 6, scope: !4557, inlinedAt: !4561)
!4752 = !DILocation(line: 380, column: 33, scope: !4749, inlinedAt: !4561)
!4753 = !DILocation(line: 381, column: 6, scope: !4754, inlinedAt: !4561)
!4754 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 381, column: 6)
!4755 = !DILocation(line: 381, column: 11, scope: !4754, inlinedAt: !4561)
!4756 = !DILocation(line: 381, column: 6, scope: !4557, inlinedAt: !4561)
!4757 = !DILocation(line: 381, column: 33, scope: !4754, inlinedAt: !4561)
!4758 = !DILocation(line: 382, column: 2, scope: !4759, inlinedAt: !4561)
!4759 = distinct !DILexicalBlock(scope: !4760, file: !284, line: 382, column: 2)
!4760 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 382, column: 2)
!4761 = !{i32 -2144634964, i32 -2144634935, i32 -2144634889, i32 -2144634831, i32 -2144634777, i32 -2144634723, i32 -2144634668, i32 -2144634637}
!4762 = !DILocation(line: 382, column: 2, scope: !4763, inlinedAt: !4561)
!4763 = distinct !DILexicalBlock(scope: !4764, file: !284, line: 382, column: 2)
!4764 = distinct !DILexicalBlock(scope: !4760, file: !284, line: 382, column: 2)
!4765 = !{i32 -2144634194, i32 -2144634187, i32 -2144634133, i32 -2144634102, i32 -2144634072}
!4766 = !DILocation(line: 382, column: 2, scope: !4764, inlinedAt: !4561)
!4767 = !DILocation(line: 386, column: 1, scope: !4557, inlinedAt: !4561)
!4768 = !DILocation(line: 547, column: 9, scope: !4540, inlinedAt: !4543)
!4769 = !DILocation(line: 549, column: 8, scope: !4770, inlinedAt: !4543)
!4770 = distinct !DILexicalBlock(scope: !4540, file: !284, line: 549, column: 7)
!4771 = !DILocation(line: 549, column: 7, scope: !4540, inlinedAt: !4543)
!4772 = !DILocation(line: 550, column: 4, scope: !4770, inlinedAt: !4543)
!4773 = !DILocation(line: 553, column: 33, scope: !4540, inlinedAt: !4543)
!4774 = !DILocation(line: 325, column: 6, scope: !4775, inlinedAt: !4555)
!4775 = distinct !DILexicalBlock(scope: !4551, file: !284, line: 325, column: 6)
!4776 = !DILocation(line: 325, column: 6, scope: !4551, inlinedAt: !4555)
!4777 = !DILocation(line: 326, column: 3, scope: !4775, inlinedAt: !4555)
!4778 = !DILocation(line: 332, column: 9, scope: !4551, inlinedAt: !4555)
!4779 = !DILocation(line: 332, column: 15, scope: !4551, inlinedAt: !4555)
!4780 = !DILocation(line: 332, column: 2, scope: !4551, inlinedAt: !4555)
!4781 = !DILocation(line: 336, column: 1, scope: !4551, inlinedAt: !4555)
!4782 = !DILocation(line: 553, column: 5, scope: !4540, inlinedAt: !4543)
!4783 = !DILocation(line: 553, column: 41, scope: !4540, inlinedAt: !4543)
!4784 = !DILocation(line: 554, column: 5, scope: !4540, inlinedAt: !4543)
!4785 = !DILocation(line: 554, column: 12, scope: !4540, inlinedAt: !4543)
!4786 = !DILocation(line: 448, column: 31, scope: !4535, inlinedAt: !4539)
!4787 = !DILocation(line: 448, column: 34, scope: !4535, inlinedAt: !4539)
!4788 = !DILocation(line: 448, column: 14, scope: !4535, inlinedAt: !4539)
!4789 = !DILocation(line: 450, column: 22, scope: !4535, inlinedAt: !4539)
!4790 = !DILocation(line: 450, column: 25, scope: !4535, inlinedAt: !4539)
!4791 = !DILocation(line: 450, column: 30, scope: !4535, inlinedAt: !4539)
!4792 = !DILocation(line: 450, column: 36, scope: !4535, inlinedAt: !4539)
!4793 = !DILocation(line: 450, column: 8, scope: !4535, inlinedAt: !4539)
!4794 = !DILocation(line: 450, column: 6, scope: !4535, inlinedAt: !4539)
!4795 = !DILocation(line: 451, column: 9, scope: !4535, inlinedAt: !4539)
!4796 = !DILocation(line: 552, column: 3, scope: !4540, inlinedAt: !4543)
!4797 = !DILocation(line: 557, column: 19, scope: !4542, inlinedAt: !4543)
!4798 = !DILocation(line: 557, column: 25, scope: !4542, inlinedAt: !4543)
!4799 = !DILocation(line: 557, column: 9, scope: !4542, inlinedAt: !4543)
!4800 = !DILocation(line: 557, column: 2, scope: !4542, inlinedAt: !4543)
!4801 = !DILocation(line: 558, column: 1, scope: !4542, inlinedAt: !4543)
!4802 = !DILocation(line: 664, column: 2, scope: !4531)
!4803 = distinct !DISubprogram(name: "cx24110_readreg", scope: !3, file: !3, line: 118, type: !4804, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!4804 = !DISubroutineType(types: !4805)
!4805 = !{!294, !414, !343}
!4806 = !DILocalVariable(name: "state", arg: 1, scope: !4803, file: !3, line: 118, type: !414)
!4807 = !DILocation(line: 118, column: 51, scope: !4803)
!4808 = !DILocalVariable(name: "reg", arg: 2, scope: !4803, file: !3, line: 118, type: !343)
!4809 = !DILocation(line: 118, column: 61, scope: !4803)
!4810 = !DILocalVariable(name: "ret", scope: !4803, file: !3, line: 120, type: !294)
!4811 = !DILocation(line: 120, column: 6, scope: !4803)
!4812 = !DILocalVariable(name: "b0", scope: !4803, file: !3, line: 121, type: !4813)
!4813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 8, elements: !683)
!4814 = !DILocation(line: 121, column: 5, scope: !4803)
!4815 = !DILocation(line: 121, column: 13, scope: !4803)
!4816 = !DILocation(line: 121, column: 15, scope: !4803)
!4817 = !DILocalVariable(name: "b1", scope: !4803, file: !3, line: 122, type: !4813)
!4818 = !DILocation(line: 122, column: 5, scope: !4803)
!4819 = !DILocalVariable(name: "msg", scope: !4803, file: !3, line: 123, type: !4820)
!4820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 256, elements: !2489)
!4821 = !DILocation(line: 123, column: 17, scope: !4803)
!4822 = !DILocation(line: 123, column: 26, scope: !4803)
!4823 = !DILocation(line: 123, column: 28, scope: !4803)
!4824 = !DILocation(line: 123, column: 38, scope: !4803)
!4825 = !DILocation(line: 123, column: 45, scope: !4803)
!4826 = !DILocation(line: 123, column: 53, scope: !4803)
!4827 = !DILocation(line: 123, column: 87, scope: !4803)
!4828 = !DILocation(line: 124, column: 7, scope: !4803)
!4829 = !DILocation(line: 124, column: 17, scope: !4803)
!4830 = !DILocation(line: 124, column: 24, scope: !4803)
!4831 = !DILocation(line: 124, column: 32, scope: !4803)
!4832 = !DILocation(line: 124, column: 73, scope: !4803)
!4833 = !DILocation(line: 126, column: 21, scope: !4803)
!4834 = !DILocation(line: 126, column: 28, scope: !4803)
!4835 = !DILocation(line: 126, column: 33, scope: !4803)
!4836 = !DILocation(line: 126, column: 8, scope: !4803)
!4837 = !DILocation(line: 126, column: 6, scope: !4803)
!4838 = !DILocation(line: 128, column: 6, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 128, column: 6)
!4840 = !DILocation(line: 128, column: 10, scope: !4839)
!4841 = !DILocation(line: 128, column: 6, scope: !4803)
!4842 = !DILocation(line: 128, column: 23, scope: !4839)
!4843 = !DILocation(line: 128, column: 16, scope: !4839)
!4844 = !DILocation(line: 130, column: 9, scope: !4803)
!4845 = !DILocation(line: 130, column: 2, scope: !4803)
!4846 = !DILocation(line: 131, column: 1, scope: !4803)
!4847 = distinct !DISubprogram(name: "get_order", scope: !4848, file: !4848, line: 29, type: !4849, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!4848 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!294, !504}
!4851 = !DILocalVariable(name: "x", arg: 1, scope: !4852, file: !4853, line: 366, type: !561)
!4852 = distinct !DISubprogram(name: "fls64", scope: !4853, file: !4853, line: 366, type: !4854, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!4853 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!294, !561}
!4856 = !DILocation(line: 366, column: 40, scope: !4852, inlinedAt: !4857)
!4857 = distinct !DILocation(line: 46, column: 9, scope: !4847)
!4858 = !DILocalVariable(name: "bitpos", scope: !4852, file: !4853, line: 368, type: !294)
!4859 = !DILocation(line: 368, column: 6, scope: !4852, inlinedAt: !4857)
!4860 = !DILocalVariable(name: "size", arg: 1, scope: !4847, file: !4848, line: 29, type: !504)
!4861 = !DILocation(line: 29, column: 63, scope: !4847)
!4862 = !DILocation(line: 31, column: 27, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4847, file: !4848, line: 31, column: 6)
!4864 = !DILocation(line: 31, column: 6, scope: !4863)
!4865 = !DILocation(line: 31, column: 6, scope: !4847)
!4866 = !DILocation(line: 32, column: 8, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4868, file: !4848, line: 32, column: 7)
!4868 = distinct !DILexicalBlock(scope: !4863, file: !4848, line: 31, column: 34)
!4869 = !DILocation(line: 32, column: 7, scope: !4868)
!4870 = !DILocation(line: 33, column: 4, scope: !4867)
!4871 = !DILocation(line: 35, column: 7, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4868, file: !4848, line: 35, column: 7)
!4873 = !DILocation(line: 35, column: 12, scope: !4872)
!4874 = !DILocation(line: 35, column: 7, scope: !4868)
!4875 = !DILocation(line: 36, column: 4, scope: !4872)
!4876 = !DILocation(line: 38, column: 10, scope: !4868)
!4877 = !DILocation(line: 38, column: 28, scope: !4868)
!4878 = !DILocation(line: 38, column: 41, scope: !4868)
!4879 = !DILocation(line: 38, column: 3, scope: !4868)
!4880 = !DILocation(line: 41, column: 6, scope: !4847)
!4881 = !DILocation(line: 42, column: 7, scope: !4847)
!4882 = !DILocation(line: 46, column: 15, scope: !4847)
!4883 = !DILocation(line: 374, column: 2, scope: !4852, inlinedAt: !4857)
!4884 = !DILocation(line: 376, column: 14, scope: !4852, inlinedAt: !4857)
!4885 = !{i32 320348}
!4886 = !DILocation(line: 377, column: 9, scope: !4852, inlinedAt: !4857)
!4887 = !DILocation(line: 377, column: 16, scope: !4852, inlinedAt: !4857)
!4888 = !DILocation(line: 46, column: 2, scope: !4847)
!4889 = !DILocation(line: 48, column: 1, scope: !4847)
!4890 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4891, file: !4891, line: 30, type: !4892, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!4891 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4892 = !DISubroutineType(types: !4893)
!4893 = !{!294, !560}
!4894 = !DILocation(line: 366, column: 40, scope: !4852, inlinedAt: !4895)
!4895 = distinct !DILocation(line: 32, column: 9, scope: !4890)
!4896 = !DILocation(line: 368, column: 6, scope: !4852, inlinedAt: !4895)
!4897 = !DILocalVariable(name: "n", arg: 1, scope: !4890, file: !4891, line: 30, type: !560)
!4898 = !DILocation(line: 30, column: 21, scope: !4890)
!4899 = !DILocation(line: 32, column: 15, scope: !4890)
!4900 = !DILocation(line: 374, column: 2, scope: !4852, inlinedAt: !4895)
!4901 = !DILocation(line: 376, column: 14, scope: !4852, inlinedAt: !4895)
!4902 = !DILocation(line: 377, column: 9, scope: !4852, inlinedAt: !4895)
!4903 = !DILocation(line: 377, column: 16, scope: !4852, inlinedAt: !4895)
!4904 = !DILocation(line: 32, column: 18, scope: !4890)
!4905 = !DILocation(line: 32, column: 2, scope: !4890)
!4906 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4907, file: !4907, line: 137, type: !4908, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!4907 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!293, !1289, !2217, !944, !291}
!4910 = !DILocalVariable(name: "s", arg: 1, scope: !4906, file: !4907, line: 137, type: !1289)
!4911 = !DILocation(line: 137, column: 54, scope: !4906)
!4912 = !DILocalVariable(name: "object", arg: 2, scope: !4906, file: !4907, line: 137, type: !2217)
!4913 = !DILocation(line: 137, column: 69, scope: !4906)
!4914 = !DILocalVariable(name: "size", arg: 3, scope: !4906, file: !4907, line: 138, type: !944)
!4915 = !DILocation(line: 138, column: 12, scope: !4906)
!4916 = !DILocalVariable(name: "flags", arg: 4, scope: !4906, file: !4907, line: 138, type: !291)
!4917 = !DILocation(line: 138, column: 24, scope: !4906)
!4918 = !DILocation(line: 140, column: 17, scope: !4906)
!4919 = !DILocation(line: 140, column: 2, scope: !4906)
!4920 = distinct !DISubprogram(name: "cx24110_release", scope: !3, file: !3, line: 576, type: !4143, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!4921 = !DILocalVariable(name: "fe", arg: 1, scope: !4920, file: !3, line: 576, type: !4145)
!4922 = !DILocation(line: 576, column: 50, scope: !4920)
!4923 = !DILocalVariable(name: "state", scope: !4920, file: !3, line: 578, type: !414)
!4924 = !DILocation(line: 578, column: 24, scope: !4920)
!4925 = !DILocation(line: 578, column: 32, scope: !4920)
!4926 = !DILocation(line: 578, column: 36, scope: !4920)
!4927 = !DILocation(line: 579, column: 8, scope: !4920)
!4928 = !DILocation(line: 579, column: 2, scope: !4920)
!4929 = !DILocation(line: 580, column: 1, scope: !4920)
!4930 = distinct !DISubprogram(name: "cx24110_initfe", scope: !3, file: !3, line: 341, type: !4150, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!4931 = !DILocalVariable(name: "fe", arg: 1, scope: !4930, file: !3, line: 341, type: !4145)
!4932 = !DILocation(line: 341, column: 48, scope: !4930)
!4933 = !DILocalVariable(name: "state", scope: !4930, file: !3, line: 343, type: !414)
!4934 = !DILocation(line: 343, column: 24, scope: !4930)
!4935 = !DILocation(line: 343, column: 32, scope: !4930)
!4936 = !DILocation(line: 343, column: 36, scope: !4930)
!4937 = !DILocalVariable(name: "i", scope: !4930, file: !3, line: 345, type: !294)
!4938 = !DILocation(line: 345, column: 6, scope: !4930)
!4939 = !DILocation(line: 347, column: 2, scope: !4930)
!4940 = !DILocation(line: 347, column: 2, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 347, column: 2)
!4942 = distinct !DILexicalBlock(scope: !4930, file: !3, line: 347, column: 2)
!4943 = !DILocation(line: 347, column: 2, scope: !4942)
!4944 = !DILocation(line: 349, column: 8, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4930, file: !3, line: 349, column: 2)
!4946 = !DILocation(line: 349, column: 6, scope: !4945)
!4947 = !DILocation(line: 349, column: 13, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 349, column: 2)
!4949 = !DILocation(line: 349, column: 15, scope: !4948)
!4950 = !DILocation(line: 349, column: 2, scope: !4945)
!4951 = !DILocation(line: 350, column: 20, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 349, column: 51)
!4953 = !DILocation(line: 350, column: 43, scope: !4952)
!4954 = !DILocation(line: 350, column: 27, scope: !4952)
!4955 = !DILocation(line: 350, column: 46, scope: !4952)
!4956 = !DILocation(line: 350, column: 67, scope: !4952)
!4957 = !DILocation(line: 350, column: 51, scope: !4952)
!4958 = !DILocation(line: 350, column: 70, scope: !4952)
!4959 = !DILocation(line: 350, column: 3, scope: !4952)
!4960 = !DILocation(line: 351, column: 2, scope: !4952)
!4961 = !DILocation(line: 349, column: 47, scope: !4948)
!4962 = !DILocation(line: 349, column: 2, scope: !4948)
!4963 = distinct !{!4963, !4950, !4964}
!4964 = !DILocation(line: 351, column: 2, scope: !4945)
!4965 = !DILocation(line: 353, column: 2, scope: !4930)
!4966 = distinct !DISubprogram(name: "_cx24110_pll_write", scope: !3, file: !3, line: 299, type: !4155, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!4967 = !DILocalVariable(name: "fe", arg: 1, scope: !4966, file: !3, line: 299, type: !4145)
!4968 = !DILocation(line: 299, column: 53, scope: !4966)
!4969 = !DILocalVariable(name: "buf", arg: 2, scope: !4966, file: !3, line: 299, type: !4157)
!4970 = !DILocation(line: 299, column: 66, scope: !4966)
!4971 = !DILocalVariable(name: "len", arg: 3, scope: !4966, file: !3, line: 299, type: !294)
!4972 = !DILocation(line: 299, column: 77, scope: !4966)
!4973 = !DILocalVariable(name: "state", scope: !4966, file: !3, line: 301, type: !414)
!4974 = !DILocation(line: 301, column: 24, scope: !4966)
!4975 = !DILocation(line: 301, column: 32, scope: !4966)
!4976 = !DILocation(line: 301, column: 36, scope: !4966)
!4977 = !DILocation(line: 303, column: 6, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4966, file: !3, line: 303, column: 6)
!4979 = !DILocation(line: 303, column: 10, scope: !4978)
!4980 = !DILocation(line: 303, column: 6, scope: !4966)
!4981 = !DILocation(line: 304, column: 3, scope: !4978)
!4982 = !DILocation(line: 310, column: 19, scope: !4966)
!4983 = !DILocation(line: 310, column: 2, scope: !4966)
!4984 = !DILocation(line: 311, column: 19, scope: !4966)
!4985 = !DILocation(line: 311, column: 2, scope: !4966)
!4986 = !DILocation(line: 314, column: 2, scope: !4966)
!4987 = !DILocation(line: 314, column: 25, scope: !4966)
!4988 = !DILocation(line: 314, column: 9, scope: !4966)
!4989 = !DILocation(line: 314, column: 36, scope: !4966)
!4990 = !DILocation(line: 315, column: 20, scope: !4966)
!4991 = !DILocation(line: 315, column: 3, scope: !4966)
!4992 = distinct !{!4992, !4986, !4993}
!4993 = !DILocation(line: 315, column: 32, scope: !4966)
!4994 = !DILocation(line: 318, column: 19, scope: !4966)
!4995 = !DILocation(line: 318, column: 30, scope: !4966)
!4996 = !DILocation(line: 318, column: 2, scope: !4966)
!4997 = !DILocation(line: 321, column: 2, scope: !4966)
!4998 = !DILocation(line: 321, column: 26, scope: !4966)
!4999 = !DILocation(line: 321, column: 10, scope: !4966)
!5000 = !DILocation(line: 321, column: 37, scope: !4966)
!5001 = !DILocation(line: 321, column: 43, scope: !4966)
!5002 = distinct !{!5002, !4997, !5003}
!5003 = !DILocation(line: 322, column: 3, scope: !4966)
!5004 = !DILocation(line: 325, column: 19, scope: !4966)
!5005 = !DILocation(line: 325, column: 30, scope: !4966)
!5006 = !DILocation(line: 325, column: 2, scope: !4966)
!5007 = !DILocation(line: 326, column: 2, scope: !4966)
!5008 = !DILocation(line: 326, column: 26, scope: !4966)
!5009 = !DILocation(line: 326, column: 10, scope: !4966)
!5010 = !DILocation(line: 326, column: 37, scope: !4966)
!5011 = !DILocation(line: 326, column: 43, scope: !4966)
!5012 = distinct !{!5012, !5007, !5013}
!5013 = !DILocation(line: 327, column: 3, scope: !4966)
!5014 = !DILocation(line: 330, column: 19, scope: !4966)
!5015 = !DILocation(line: 330, column: 30, scope: !4966)
!5016 = !DILocation(line: 330, column: 2, scope: !4966)
!5017 = !DILocation(line: 331, column: 2, scope: !4966)
!5018 = !DILocation(line: 331, column: 26, scope: !4966)
!5019 = !DILocation(line: 331, column: 10, scope: !4966)
!5020 = !DILocation(line: 331, column: 37, scope: !4966)
!5021 = !DILocation(line: 331, column: 43, scope: !4966)
!5022 = distinct !{!5022, !5017, !5023}
!5023 = !DILocation(line: 332, column: 3, scope: !4966)
!5024 = !DILocation(line: 335, column: 19, scope: !4966)
!5025 = !DILocation(line: 335, column: 2, scope: !4966)
!5026 = !DILocation(line: 336, column: 19, scope: !4966)
!5027 = !DILocation(line: 336, column: 2, scope: !4966)
!5028 = !DILocation(line: 338, column: 2, scope: !4966)
!5029 = !DILocation(line: 339, column: 1, scope: !4966)
!5030 = distinct !DISubprogram(name: "cx24110_set_frontend", scope: !3, file: !3, line: 522, type: !4150, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!5031 = !DILocalVariable(name: "fe", arg: 1, scope: !5030, file: !3, line: 522, type: !4145)
!5032 = !DILocation(line: 522, column: 54, scope: !5030)
!5033 = !DILocalVariable(name: "state", scope: !5030, file: !3, line: 524, type: !414)
!5034 = !DILocation(line: 524, column: 24, scope: !5030)
!5035 = !DILocation(line: 524, column: 32, scope: !5030)
!5036 = !DILocation(line: 524, column: 36, scope: !5030)
!5037 = !DILocalVariable(name: "p", scope: !5030, file: !3, line: 525, type: !4183)
!5038 = !DILocation(line: 525, column: 34, scope: !5030)
!5039 = !DILocation(line: 525, column: 39, scope: !5030)
!5040 = !DILocation(line: 525, column: 43, scope: !5030)
!5041 = !DILocation(line: 527, column: 6, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5030, file: !3, line: 527, column: 6)
!5043 = !DILocation(line: 527, column: 10, scope: !5042)
!5044 = !DILocation(line: 527, column: 14, scope: !5042)
!5045 = !DILocation(line: 527, column: 24, scope: !5042)
!5046 = !DILocation(line: 527, column: 6, scope: !5030)
!5047 = !DILocation(line: 528, column: 3, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5042, file: !3, line: 527, column: 36)
!5049 = !DILocation(line: 528, column: 7, scope: !5048)
!5050 = !DILocation(line: 528, column: 11, scope: !5048)
!5051 = !DILocation(line: 528, column: 21, scope: !5048)
!5052 = !DILocation(line: 528, column: 32, scope: !5048)
!5053 = !DILocation(line: 529, column: 7, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5048, file: !3, line: 529, column: 7)
!5055 = !DILocation(line: 529, column: 11, scope: !5054)
!5056 = !DILocation(line: 529, column: 15, scope: !5054)
!5057 = !DILocation(line: 529, column: 7, scope: !5048)
!5058 = !DILocation(line: 529, column: 30, scope: !5054)
!5059 = !DILocation(line: 529, column: 34, scope: !5054)
!5060 = !DILocation(line: 529, column: 38, scope: !5054)
!5061 = !DILocation(line: 529, column: 52, scope: !5054)
!5062 = !DILocation(line: 530, column: 2, scope: !5048)
!5063 = !DILocation(line: 532, column: 24, scope: !5030)
!5064 = !DILocation(line: 532, column: 31, scope: !5030)
!5065 = !DILocation(line: 532, column: 34, scope: !5030)
!5066 = !DILocation(line: 532, column: 2, scope: !5030)
!5067 = !DILocation(line: 533, column: 18, scope: !5030)
!5068 = !DILocation(line: 533, column: 25, scope: !5030)
!5069 = !DILocation(line: 533, column: 28, scope: !5030)
!5070 = !DILocation(line: 533, column: 2, scope: !5030)
!5071 = !DILocation(line: 534, column: 25, scope: !5030)
!5072 = !DILocation(line: 534, column: 32, scope: !5030)
!5073 = !DILocation(line: 534, column: 35, scope: !5030)
!5074 = !DILocation(line: 534, column: 2, scope: !5030)
!5075 = !DILocation(line: 535, column: 19, scope: !5030)
!5076 = !DILocation(line: 535, column: 2, scope: !5030)
!5077 = !DILocation(line: 537, column: 2, scope: !5030)
!5078 = distinct !DISubprogram(name: "cx24110_get_frontend", scope: !3, file: !3, line: 540, type: !4181, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!5079 = !DILocalVariable(name: "fe", arg: 1, scope: !5078, file: !3, line: 540, type: !4145)
!5080 = !DILocation(line: 540, column: 54, scope: !5078)
!5081 = !DILocalVariable(name: "p", arg: 2, scope: !5078, file: !3, line: 541, type: !4183)
!5082 = !DILocation(line: 541, column: 37, scope: !5078)
!5083 = !DILocalVariable(name: "state", scope: !5078, file: !3, line: 543, type: !414)
!5084 = !DILocation(line: 543, column: 24, scope: !5078)
!5085 = !DILocation(line: 543, column: 32, scope: !5078)
!5086 = !DILocation(line: 543, column: 36, scope: !5078)
!5087 = !DILocalVariable(name: "afc", scope: !5078, file: !3, line: 544, type: !2505)
!5088 = !DILocation(line: 544, column: 6, scope: !5078)
!5089 = !DILocalVariable(name: "sclk", scope: !5078, file: !3, line: 544, type: !7)
!5090 = !DILocation(line: 544, column: 20, scope: !5078)
!5091 = !DILocation(line: 548, column: 26, scope: !5078)
!5092 = !DILocation(line: 548, column: 9, scope: !5078)
!5093 = !DILocation(line: 548, column: 39, scope: !5078)
!5094 = !DILocation(line: 548, column: 7, scope: !5078)
!5095 = !DILocation(line: 551, column: 6, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 551, column: 6)
!5097 = !DILocation(line: 551, column: 10, scope: !5096)
!5098 = !DILocation(line: 551, column: 6, scope: !5078)
!5099 = !DILocation(line: 551, column: 19, scope: !5096)
!5100 = !DILocation(line: 551, column: 15, scope: !5096)
!5101 = !DILocation(line: 552, column: 11, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5096, file: !3, line: 552, column: 11)
!5103 = !DILocation(line: 552, column: 15, scope: !5102)
!5104 = !DILocation(line: 552, column: 11, scope: !5096)
!5105 = !DILocation(line: 552, column: 24, scope: !5102)
!5106 = !DILocation(line: 552, column: 20, scope: !5102)
!5107 = !DILocation(line: 553, column: 11, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 553, column: 11)
!5109 = !DILocation(line: 553, column: 15, scope: !5108)
!5110 = !DILocation(line: 553, column: 11, scope: !5102)
!5111 = !DILocation(line: 553, column: 24, scope: !5108)
!5112 = !DILocation(line: 553, column: 20, scope: !5108)
!5113 = !DILocation(line: 554, column: 11, scope: !5108)
!5114 = !DILocation(line: 555, column: 6, scope: !5078)
!5115 = !DILocation(line: 556, column: 8, scope: !5078)
!5116 = !DILocation(line: 556, column: 31, scope: !5078)
!5117 = !DILocation(line: 556, column: 14, scope: !5078)
!5118 = !DILocation(line: 556, column: 43, scope: !5078)
!5119 = !DILocation(line: 556, column: 12, scope: !5078)
!5120 = !DILocation(line: 557, column: 10, scope: !5078)
!5121 = !DILocation(line: 557, column: 32, scope: !5078)
!5122 = !DILocation(line: 557, column: 15, scope: !5078)
!5123 = !DILocation(line: 557, column: 14, scope: !5078)
!5124 = !DILocation(line: 557, column: 45, scope: !5078)
!5125 = !DILocation(line: 556, column: 49, scope: !5078)
!5126 = !DILocation(line: 558, column: 10, scope: !5078)
!5127 = !DILocation(line: 558, column: 32, scope: !5078)
!5128 = !DILocation(line: 558, column: 15, scope: !5078)
!5129 = !DILocation(line: 558, column: 14, scope: !5078)
!5130 = !DILocation(line: 558, column: 45, scope: !5078)
!5131 = !DILocation(line: 557, column: 49, scope: !5078)
!5132 = !DILocation(line: 556, column: 6, scope: !5078)
!5133 = !DILocation(line: 560, column: 18, scope: !5078)
!5134 = !DILocation(line: 560, column: 2, scope: !5078)
!5135 = !DILocation(line: 560, column: 5, scope: !5078)
!5136 = !DILocation(line: 560, column: 15, scope: !5078)
!5137 = !DILocation(line: 561, column: 35, scope: !5078)
!5138 = !DILocation(line: 561, column: 18, scope: !5078)
!5139 = !DILocation(line: 561, column: 48, scope: !5078)
!5140 = !DILocation(line: 561, column: 17, scope: !5078)
!5141 = !DILocation(line: 561, column: 2, scope: !5078)
!5142 = !DILocation(line: 561, column: 5, scope: !5078)
!5143 = !DILocation(line: 561, column: 15, scope: !5078)
!5144 = !DILocation(line: 563, column: 33, scope: !5078)
!5145 = !DILocation(line: 563, column: 17, scope: !5078)
!5146 = !DILocation(line: 563, column: 2, scope: !5078)
!5147 = !DILocation(line: 563, column: 5, scope: !5078)
!5148 = !DILocation(line: 563, column: 15, scope: !5078)
!5149 = !DILocation(line: 565, column: 2, scope: !5078)
!5150 = distinct !DISubprogram(name: "cx24110_read_status", scope: !3, file: !3, line: 427, type: !4258, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!5151 = !DILocalVariable(name: "fe", arg: 1, scope: !5150, file: !3, line: 427, type: !4145)
!5152 = !DILocation(line: 427, column: 53, scope: !5150)
!5153 = !DILocalVariable(name: "status", arg: 2, scope: !5150, file: !3, line: 428, type: !4163)
!5154 = !DILocation(line: 428, column: 27, scope: !5150)
!5155 = !DILocalVariable(name: "state", scope: !5150, file: !3, line: 430, type: !414)
!5156 = !DILocation(line: 430, column: 24, scope: !5150)
!5157 = !DILocation(line: 430, column: 32, scope: !5150)
!5158 = !DILocation(line: 430, column: 36, scope: !5150)
!5159 = !DILocalVariable(name: "sync", scope: !5150, file: !3, line: 432, type: !294)
!5160 = !DILocation(line: 432, column: 6, scope: !5150)
!5161 = !DILocation(line: 432, column: 30, scope: !5150)
!5162 = !DILocation(line: 432, column: 13, scope: !5150)
!5163 = !DILocation(line: 434, column: 3, scope: !5150)
!5164 = !DILocation(line: 434, column: 10, scope: !5150)
!5165 = !DILocation(line: 436, column: 6, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 436, column: 6)
!5167 = !DILocation(line: 436, column: 11, scope: !5166)
!5168 = !DILocation(line: 436, column: 6, scope: !5150)
!5169 = !DILocation(line: 437, column: 4, scope: !5166)
!5170 = !DILocation(line: 437, column: 11, scope: !5166)
!5171 = !DILocation(line: 437, column: 3, scope: !5166)
!5172 = !DILocation(line: 439, column: 6, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 439, column: 6)
!5174 = !DILocation(line: 439, column: 11, scope: !5173)
!5175 = !DILocation(line: 439, column: 6, scope: !5150)
!5176 = !DILocation(line: 440, column: 4, scope: !5173)
!5177 = !DILocation(line: 440, column: 11, scope: !5173)
!5178 = !DILocation(line: 440, column: 3, scope: !5173)
!5179 = !DILocation(line: 442, column: 26, scope: !5150)
!5180 = !DILocation(line: 442, column: 9, scope: !5150)
!5181 = !DILocation(line: 442, column: 7, scope: !5150)
!5182 = !DILocation(line: 444, column: 6, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 444, column: 6)
!5184 = !DILocation(line: 444, column: 11, scope: !5183)
!5185 = !DILocation(line: 444, column: 6, scope: !5150)
!5186 = !DILocation(line: 445, column: 4, scope: !5183)
!5187 = !DILocation(line: 445, column: 11, scope: !5183)
!5188 = !DILocation(line: 445, column: 3, scope: !5183)
!5189 = !DILocation(line: 447, column: 6, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 447, column: 6)
!5191 = !DILocation(line: 447, column: 11, scope: !5190)
!5192 = !DILocation(line: 447, column: 6, scope: !5150)
!5193 = !DILocation(line: 448, column: 4, scope: !5190)
!5194 = !DILocation(line: 448, column: 11, scope: !5190)
!5195 = !DILocation(line: 448, column: 3, scope: !5190)
!5196 = !DILocation(line: 450, column: 7, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 450, column: 6)
!5198 = !DILocation(line: 450, column: 12, scope: !5197)
!5199 = !DILocation(line: 450, column: 20, scope: !5197)
!5200 = !DILocation(line: 450, column: 6, scope: !5150)
!5201 = !DILocation(line: 451, column: 4, scope: !5197)
!5202 = !DILocation(line: 451, column: 11, scope: !5197)
!5203 = !DILocation(line: 451, column: 3, scope: !5197)
!5204 = !DILocation(line: 453, column: 2, scope: !5150)
!5205 = distinct !DISubprogram(name: "cx24110_read_ber", scope: !3, file: !3, line: 456, type: !4262, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!5206 = !DILocalVariable(name: "fe", arg: 1, scope: !5205, file: !3, line: 456, type: !4145)
!5207 = !DILocation(line: 456, column: 50, scope: !5205)
!5208 = !DILocalVariable(name: "ber", arg: 2, scope: !5205, file: !3, line: 456, type: !2847)
!5209 = !DILocation(line: 456, column: 59, scope: !5205)
!5210 = !DILocalVariable(name: "state", scope: !5205, file: !3, line: 458, type: !414)
!5211 = !DILocation(line: 458, column: 24, scope: !5205)
!5212 = !DILocation(line: 458, column: 32, scope: !5205)
!5213 = !DILocation(line: 458, column: 36, scope: !5205)
!5214 = !DILocation(line: 461, column: 21, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 461, column: 5)
!5216 = !DILocation(line: 461, column: 5, scope: !5215)
!5217 = !DILocation(line: 461, column: 32, scope: !5215)
!5218 = !DILocation(line: 461, column: 5, scope: !5205)
!5219 = !DILocation(line: 463, column: 20, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 461, column: 39)
!5221 = !DILocation(line: 463, column: 3, scope: !5220)
!5222 = !DILocation(line: 464, column: 34, scope: !5220)
!5223 = !DILocation(line: 464, column: 18, scope: !5220)
!5224 = !DILocation(line: 465, column: 21, scope: !5220)
!5225 = !DILocation(line: 465, column: 5, scope: !5220)
!5226 = !DILocation(line: 465, column: 32, scope: !5220)
!5227 = !DILocation(line: 464, column: 45, scope: !5220)
!5228 = !DILocation(line: 464, column: 3, scope: !5220)
!5229 = !DILocation(line: 464, column: 10, scope: !5220)
!5230 = !DILocation(line: 464, column: 17, scope: !5220)
!5231 = !DILocation(line: 466, column: 20, scope: !5220)
!5232 = !DILocation(line: 466, column: 3, scope: !5220)
!5233 = !DILocation(line: 467, column: 20, scope: !5220)
!5234 = !DILocation(line: 467, column: 3, scope: !5220)
!5235 = !DILocation(line: 468, column: 2, scope: !5220)
!5236 = !DILocation(line: 469, column: 9, scope: !5205)
!5237 = !DILocation(line: 469, column: 16, scope: !5205)
!5238 = !DILocation(line: 469, column: 3, scope: !5205)
!5239 = !DILocation(line: 469, column: 7, scope: !5205)
!5240 = !DILocation(line: 471, column: 2, scope: !5205)
!5241 = distinct !DISubprogram(name: "cx24110_read_signal_strength", scope: !3, file: !3, line: 474, type: !4266, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!5242 = !DILocalVariable(name: "fe", arg: 1, scope: !5241, file: !3, line: 474, type: !4145)
!5243 = !DILocation(line: 474, column: 62, scope: !5241)
!5244 = !DILocalVariable(name: "signal_strength", arg: 2, scope: !5241, file: !3, line: 474, type: !4268)
!5245 = !DILocation(line: 474, column: 71, scope: !5241)
!5246 = !DILocalVariable(name: "state", scope: !5241, file: !3, line: 476, type: !414)
!5247 = !DILocation(line: 476, column: 24, scope: !5241)
!5248 = !DILocation(line: 476, column: 32, scope: !5241)
!5249 = !DILocation(line: 476, column: 36, scope: !5241)
!5250 = !DILocalVariable(name: "signal", scope: !5241, file: !3, line: 479, type: !343)
!5251 = !DILocation(line: 479, column: 5, scope: !5241)
!5252 = !DILocation(line: 479, column: 31, scope: !5241)
!5253 = !DILocation(line: 479, column: 14, scope: !5241)
!5254 = !DILocation(line: 479, column: 43, scope: !5241)
!5255 = !DILocation(line: 480, column: 22, scope: !5241)
!5256 = !DILocation(line: 480, column: 29, scope: !5241)
!5257 = !DILocation(line: 480, column: 37, scope: !5241)
!5258 = !DILocation(line: 480, column: 35, scope: !5241)
!5259 = !DILocation(line: 480, column: 21, scope: !5241)
!5260 = !DILocation(line: 480, column: 3, scope: !5241)
!5261 = !DILocation(line: 480, column: 19, scope: !5241)
!5262 = !DILocation(line: 482, column: 2, scope: !5241)
!5263 = distinct !DISubprogram(name: "cx24110_read_snr", scope: !3, file: !3, line: 485, type: !4266, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!5264 = !DILocalVariable(name: "fe", arg: 1, scope: !5263, file: !3, line: 485, type: !4145)
!5265 = !DILocation(line: 485, column: 50, scope: !5263)
!5266 = !DILocalVariable(name: "snr", arg: 2, scope: !5263, file: !3, line: 485, type: !4268)
!5267 = !DILocation(line: 485, column: 59, scope: !5263)
!5268 = !DILocalVariable(name: "state", scope: !5263, file: !3, line: 487, type: !414)
!5269 = !DILocation(line: 487, column: 24, scope: !5263)
!5270 = !DILocation(line: 487, column: 32, scope: !5263)
!5271 = !DILocation(line: 487, column: 36, scope: !5263)
!5272 = !DILocation(line: 490, column: 21, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 490, column: 5)
!5274 = !DILocation(line: 490, column: 5, scope: !5273)
!5275 = !DILocation(line: 490, column: 32, scope: !5273)
!5276 = !DILocation(line: 490, column: 5, scope: !5263)
!5277 = !DILocation(line: 492, column: 35, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5273, file: !3, line: 490, column: 39)
!5279 = !DILocation(line: 492, column: 19, scope: !5278)
!5280 = !DILocation(line: 493, column: 21, scope: !5278)
!5281 = !DILocation(line: 493, column: 5, scope: !5278)
!5282 = !DILocation(line: 493, column: 32, scope: !5278)
!5283 = !DILocation(line: 492, column: 46, scope: !5278)
!5284 = !DILocation(line: 492, column: 3, scope: !5278)
!5285 = !DILocation(line: 492, column: 10, scope: !5278)
!5286 = !DILocation(line: 492, column: 18, scope: !5278)
!5287 = !DILocation(line: 494, column: 20, scope: !5278)
!5288 = !DILocation(line: 494, column: 3, scope: !5278)
!5289 = !DILocation(line: 495, column: 2, scope: !5278)
!5290 = !DILocation(line: 496, column: 9, scope: !5263)
!5291 = !DILocation(line: 496, column: 16, scope: !5263)
!5292 = !DILocation(line: 496, column: 3, scope: !5263)
!5293 = !DILocation(line: 496, column: 7, scope: !5263)
!5294 = !DILocation(line: 498, column: 2, scope: !5263)
!5295 = distinct !DISubprogram(name: "cx24110_read_ucblocks", scope: !3, file: !3, line: 501, type: !4262, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!5296 = !DILocalVariable(name: "fe", arg: 1, scope: !5295, file: !3, line: 501, type: !4145)
!5297 = !DILocation(line: 501, column: 55, scope: !5295)
!5298 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !5295, file: !3, line: 501, type: !2847)
!5299 = !DILocation(line: 501, column: 64, scope: !5295)
!5300 = !DILocalVariable(name: "state", scope: !5295, file: !3, line: 503, type: !414)
!5301 = !DILocation(line: 503, column: 24, scope: !5295)
!5302 = !DILocation(line: 503, column: 32, scope: !5295)
!5303 = !DILocation(line: 503, column: 36, scope: !5295)
!5304 = !DILocation(line: 505, column: 21, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 505, column: 5)
!5306 = !DILocation(line: 505, column: 5, scope: !5305)
!5307 = !DILocation(line: 505, column: 32, scope: !5305)
!5308 = !DILocation(line: 505, column: 5, scope: !5295)
!5309 = !DILocation(line: 507, column: 20, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 505, column: 39)
!5311 = !DILocation(line: 507, column: 3, scope: !5310)
!5312 = !DILocation(line: 508, column: 26, scope: !5310)
!5313 = !DILocation(line: 508, column: 10, scope: !5310)
!5314 = !DILocation(line: 509, column: 21, scope: !5310)
!5315 = !DILocation(line: 509, column: 5, scope: !5310)
!5316 = !DILocation(line: 509, column: 34, scope: !5310)
!5317 = !DILocation(line: 508, column: 39, scope: !5310)
!5318 = !DILocation(line: 510, column: 21, scope: !5310)
!5319 = !DILocation(line: 510, column: 5, scope: !5310)
!5320 = !DILocation(line: 510, column: 34, scope: !5310)
!5321 = !DILocation(line: 509, column: 40, scope: !5310)
!5322 = !DILocation(line: 511, column: 20, scope: !5310)
!5323 = !DILocation(line: 511, column: 3, scope: !5310)
!5324 = !DILocation(line: 512, column: 35, scope: !5310)
!5325 = !DILocation(line: 512, column: 19, scope: !5310)
!5326 = !DILocation(line: 513, column: 21, scope: !5310)
!5327 = !DILocation(line: 513, column: 5, scope: !5310)
!5328 = !DILocation(line: 513, column: 32, scope: !5310)
!5329 = !DILocation(line: 512, column: 46, scope: !5310)
!5330 = !DILocation(line: 514, column: 21, scope: !5310)
!5331 = !DILocation(line: 514, column: 5, scope: !5310)
!5332 = !DILocation(line: 514, column: 32, scope: !5310)
!5333 = !DILocation(line: 513, column: 36, scope: !5310)
!5334 = !DILocation(line: 512, column: 3, scope: !5310)
!5335 = !DILocation(line: 512, column: 10, scope: !5310)
!5336 = !DILocation(line: 512, column: 18, scope: !5310)
!5337 = !DILocation(line: 515, column: 20, scope: !5310)
!5338 = !DILocation(line: 515, column: 3, scope: !5310)
!5339 = !DILocation(line: 516, column: 2, scope: !5310)
!5340 = !DILocation(line: 517, column: 14, scope: !5295)
!5341 = !DILocation(line: 517, column: 21, scope: !5295)
!5342 = !DILocation(line: 517, column: 3, scope: !5295)
!5343 = !DILocation(line: 517, column: 12, scope: !5295)
!5344 = !DILocation(line: 519, column: 2, scope: !5295)
!5345 = distinct !DISubprogram(name: "cx24110_send_diseqc_msg", scope: !3, file: !3, line: 398, type: !4274, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!5346 = !DILocalVariable(name: "m", arg: 1, scope: !5347, file: !5348, line: 363, type: !1791)
!5347 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !5348, file: !5348, line: 363, type: !5349, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!5348 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!5349 = !DISubroutineType(types: !5350)
!5350 = !{!504, !1791}
!5351 = !DILocation(line: 363, column: 74, scope: !5347, inlinedAt: !5352)
!5352 = distinct !DILocation(line: 420, column: 22, scope: !5345)
!5353 = !DILocalVariable(name: "fe", arg: 1, scope: !5345, file: !3, line: 398, type: !4145)
!5354 = !DILocation(line: 398, column: 57, scope: !5345)
!5355 = !DILocalVariable(name: "cmd", arg: 2, scope: !5345, file: !3, line: 399, type: !4276)
!5356 = !DILocation(line: 399, column: 38, scope: !5345)
!5357 = !DILocalVariable(name: "i", scope: !5345, file: !3, line: 401, type: !294)
!5358 = !DILocation(line: 401, column: 6, scope: !5345)
!5359 = !DILocalVariable(name: "rv", scope: !5345, file: !3, line: 401, type: !294)
!5360 = !DILocation(line: 401, column: 9, scope: !5345)
!5361 = !DILocalVariable(name: "state", scope: !5345, file: !3, line: 402, type: !414)
!5362 = !DILocation(line: 402, column: 24, scope: !5345)
!5363 = !DILocation(line: 402, column: 32, scope: !5345)
!5364 = !DILocation(line: 402, column: 36, scope: !5345)
!5365 = !DILocalVariable(name: "timeout", scope: !5345, file: !3, line: 403, type: !504)
!5366 = !DILocation(line: 403, column: 16, scope: !5345)
!5367 = !DILocation(line: 405, column: 6, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 405, column: 6)
!5369 = !DILocation(line: 405, column: 11, scope: !5368)
!5370 = !DILocation(line: 405, column: 19, scope: !5368)
!5371 = !DILocation(line: 405, column: 23, scope: !5368)
!5372 = !DILocation(line: 405, column: 26, scope: !5368)
!5373 = !DILocation(line: 405, column: 31, scope: !5368)
!5374 = !DILocation(line: 405, column: 39, scope: !5368)
!5375 = !DILocation(line: 405, column: 6, scope: !5345)
!5376 = !DILocation(line: 406, column: 3, scope: !5368)
!5377 = !DILocation(line: 408, column: 9, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 408, column: 2)
!5379 = !DILocation(line: 408, column: 7, scope: !5378)
!5380 = !DILocation(line: 408, column: 14, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 408, column: 2)
!5382 = !DILocation(line: 408, column: 18, scope: !5381)
!5383 = !DILocation(line: 408, column: 23, scope: !5381)
!5384 = !DILocation(line: 408, column: 16, scope: !5381)
!5385 = !DILocation(line: 408, column: 2, scope: !5378)
!5386 = !DILocation(line: 409, column: 20, scope: !5381)
!5387 = !DILocation(line: 409, column: 34, scope: !5381)
!5388 = !DILocation(line: 409, column: 32, scope: !5381)
!5389 = !DILocation(line: 409, column: 37, scope: !5381)
!5390 = !DILocation(line: 409, column: 42, scope: !5381)
!5391 = !DILocation(line: 409, column: 46, scope: !5381)
!5392 = !DILocation(line: 409, column: 3, scope: !5381)
!5393 = !DILocation(line: 408, column: 33, scope: !5381)
!5394 = !DILocation(line: 408, column: 2, scope: !5381)
!5395 = distinct !{!5395, !5385, !5396}
!5396 = !DILocation(line: 409, column: 48, scope: !5378)
!5397 = !DILocation(line: 411, column: 23, scope: !5345)
!5398 = !DILocation(line: 411, column: 7, scope: !5345)
!5399 = !DILocation(line: 411, column: 5, scope: !5345)
!5400 = !DILocation(line: 412, column: 6, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 412, column: 6)
!5402 = !DILocation(line: 412, column: 9, scope: !5401)
!5403 = !DILocation(line: 412, column: 6, scope: !5345)
!5404 = !DILocation(line: 413, column: 20, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5401, file: !3, line: 412, column: 17)
!5406 = !DILocation(line: 413, column: 33, scope: !5405)
!5407 = !DILocation(line: 413, column: 36, scope: !5405)
!5408 = !DILocation(line: 413, column: 3, scope: !5405)
!5409 = !DILocation(line: 414, column: 3, scope: !5405)
!5410 = !DILocation(line: 415, column: 2, scope: !5405)
!5411 = !DILocation(line: 417, column: 23, scope: !5345)
!5412 = !DILocation(line: 417, column: 7, scope: !5345)
!5413 = !DILocation(line: 417, column: 5, scope: !5345)
!5414 = !DILocation(line: 419, column: 19, scope: !5345)
!5415 = !DILocation(line: 419, column: 34, scope: !5345)
!5416 = !DILocation(line: 419, column: 37, scope: !5345)
!5417 = !DILocation(line: 419, column: 45, scope: !5345)
!5418 = !DILocation(line: 419, column: 57, scope: !5345)
!5419 = !DILocation(line: 419, column: 62, scope: !5345)
!5420 = !DILocation(line: 419, column: 69, scope: !5345)
!5421 = !DILocation(line: 419, column: 73, scope: !5345)
!5422 = !DILocation(line: 419, column: 53, scope: !5345)
!5423 = !DILocation(line: 419, column: 2, scope: !5345)
!5424 = !DILocation(line: 420, column: 12, scope: !5345)
!5425 = !DILocation(line: 365, column: 27, scope: !5426, inlinedAt: !5352)
!5426 = distinct !DILexicalBlock(scope: !5347, file: !5348, line: 365, column: 6)
!5427 = !DILocation(line: 365, column: 6, scope: !5426, inlinedAt: !5352)
!5428 = !DILocation(line: 365, column: 6, scope: !5347, inlinedAt: !5352)
!5429 = !DILocation(line: 366, column: 12, scope: !5430, inlinedAt: !5352)
!5430 = distinct !DILexicalBlock(scope: !5431, file: !5348, line: 366, column: 7)
!5431 = distinct !DILexicalBlock(scope: !5426, file: !5348, line: 365, column: 31)
!5432 = !DILocation(line: 366, column: 14, scope: !5430, inlinedAt: !5352)
!5433 = !DILocation(line: 366, column: 7, scope: !5431, inlinedAt: !5352)
!5434 = !DILocation(line: 367, column: 4, scope: !5430, inlinedAt: !5352)
!5435 = !DILocation(line: 368, column: 28, scope: !5431, inlinedAt: !5352)
!5436 = !DILocation(line: 368, column: 10, scope: !5431, inlinedAt: !5352)
!5437 = !DILocation(line: 368, column: 3, scope: !5431, inlinedAt: !5352)
!5438 = !DILocation(line: 370, column: 29, scope: !5439, inlinedAt: !5352)
!5439 = distinct !DILexicalBlock(scope: !5426, file: !5348, line: 369, column: 9)
!5440 = !DILocation(line: 370, column: 10, scope: !5439, inlinedAt: !5352)
!5441 = !DILocation(line: 370, column: 3, scope: !5439, inlinedAt: !5352)
!5442 = !DILocation(line: 372, column: 1, scope: !5347, inlinedAt: !5352)
!5443 = !DILocation(line: 420, column: 20, scope: !5345)
!5444 = !DILocation(line: 420, column: 10, scope: !5345)
!5445 = !DILocation(line: 421, column: 2, scope: !5345)
!5446 = !DILocation(line: 421, column: 10, scope: !5345)
!5447 = !DILocation(line: 421, column: 39, scope: !5345)
!5448 = !DILocation(line: 421, column: 60, scope: !5345)
!5449 = !DILocation(line: 421, column: 44, scope: !5345)
!5450 = !DILocation(line: 421, column: 73, scope: !5345)
!5451 = !DILocation(line: 421, column: 42, scope: !5345)
!5452 = !DILocation(line: 0, scope: !5345)
!5453 = distinct !{!5453, !5445, !5454}
!5454 = !DILocation(line: 422, column: 3, scope: !5345)
!5455 = !DILocation(line: 424, column: 2, scope: !5345)
!5456 = !DILocation(line: 425, column: 1, scope: !5345)
!5457 = distinct !DISubprogram(name: "cx24110_diseqc_send_burst", scope: !3, file: !3, line: 371, type: !4295, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!5458 = !DILocation(line: 363, column: 74, scope: !5347, inlinedAt: !5459)
!5459 = distinct !DILocation(line: 391, column: 22, scope: !5457)
!5460 = !DILocalVariable(name: "fe", arg: 1, scope: !5457, file: !3, line: 371, type: !4145)
!5461 = !DILocation(line: 371, column: 59, scope: !5457)
!5462 = !DILocalVariable(name: "burst", arg: 2, scope: !5457, file: !3, line: 372, type: !171)
!5463 = !DILocation(line: 372, column: 31, scope: !5457)
!5464 = !DILocalVariable(name: "rv", scope: !5457, file: !3, line: 374, type: !294)
!5465 = !DILocation(line: 374, column: 6, scope: !5457)
!5466 = !DILocalVariable(name: "bit", scope: !5457, file: !3, line: 374, type: !294)
!5467 = !DILocation(line: 374, column: 10, scope: !5457)
!5468 = !DILocalVariable(name: "state", scope: !5457, file: !3, line: 375, type: !414)
!5469 = !DILocation(line: 375, column: 24, scope: !5457)
!5470 = !DILocation(line: 375, column: 32, scope: !5457)
!5471 = !DILocation(line: 375, column: 36, scope: !5457)
!5472 = !DILocalVariable(name: "timeout", scope: !5457, file: !3, line: 376, type: !504)
!5473 = !DILocation(line: 376, column: 16, scope: !5457)
!5474 = !DILocation(line: 378, column: 6, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 378, column: 6)
!5476 = !DILocation(line: 378, column: 12, scope: !5475)
!5477 = !DILocation(line: 378, column: 6, scope: !5457)
!5478 = !DILocation(line: 379, column: 7, scope: !5475)
!5479 = !DILocation(line: 379, column: 3, scope: !5475)
!5480 = !DILocation(line: 380, column: 11, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5475, file: !3, line: 380, column: 11)
!5482 = !DILocation(line: 380, column: 17, scope: !5481)
!5483 = !DILocation(line: 380, column: 11, scope: !5475)
!5484 = !DILocation(line: 381, column: 7, scope: !5481)
!5485 = !DILocation(line: 381, column: 3, scope: !5481)
!5486 = !DILocation(line: 383, column: 3, scope: !5481)
!5487 = !DILocation(line: 385, column: 23, scope: !5457)
!5488 = !DILocation(line: 385, column: 7, scope: !5457)
!5489 = !DILocation(line: 385, column: 5, scope: !5457)
!5490 = !DILocation(line: 386, column: 8, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 386, column: 6)
!5492 = !DILocation(line: 386, column: 11, scope: !5491)
!5493 = !DILocation(line: 386, column: 6, scope: !5457)
!5494 = !DILocation(line: 387, column: 20, scope: !5491)
!5495 = !DILocation(line: 387, column: 33, scope: !5491)
!5496 = !DILocation(line: 387, column: 36, scope: !5491)
!5497 = !DILocation(line: 387, column: 3, scope: !5491)
!5498 = !DILocation(line: 389, column: 23, scope: !5457)
!5499 = !DILocation(line: 389, column: 7, scope: !5457)
!5500 = !DILocation(line: 389, column: 5, scope: !5457)
!5501 = !DILocation(line: 390, column: 19, scope: !5457)
!5502 = !DILocation(line: 390, column: 34, scope: !5457)
!5503 = !DILocation(line: 390, column: 37, scope: !5457)
!5504 = !DILocation(line: 390, column: 45, scope: !5457)
!5505 = !DILocation(line: 390, column: 54, scope: !5457)
!5506 = !DILocation(line: 390, column: 52, scope: !5457)
!5507 = !DILocation(line: 390, column: 2, scope: !5457)
!5508 = !DILocation(line: 391, column: 12, scope: !5457)
!5509 = !DILocation(line: 365, column: 27, scope: !5426, inlinedAt: !5459)
!5510 = !DILocation(line: 365, column: 6, scope: !5426, inlinedAt: !5459)
!5511 = !DILocation(line: 365, column: 6, scope: !5347, inlinedAt: !5459)
!5512 = !DILocation(line: 366, column: 12, scope: !5430, inlinedAt: !5459)
!5513 = !DILocation(line: 366, column: 14, scope: !5430, inlinedAt: !5459)
!5514 = !DILocation(line: 366, column: 7, scope: !5431, inlinedAt: !5459)
!5515 = !DILocation(line: 367, column: 4, scope: !5430, inlinedAt: !5459)
!5516 = !DILocation(line: 368, column: 28, scope: !5431, inlinedAt: !5459)
!5517 = !DILocation(line: 368, column: 10, scope: !5431, inlinedAt: !5459)
!5518 = !DILocation(line: 368, column: 3, scope: !5431, inlinedAt: !5459)
!5519 = !DILocation(line: 370, column: 29, scope: !5439, inlinedAt: !5459)
!5520 = !DILocation(line: 370, column: 10, scope: !5439, inlinedAt: !5459)
!5521 = !DILocation(line: 370, column: 3, scope: !5439, inlinedAt: !5459)
!5522 = !DILocation(line: 372, column: 1, scope: !5347, inlinedAt: !5459)
!5523 = !DILocation(line: 391, column: 20, scope: !5457)
!5524 = !DILocation(line: 391, column: 10, scope: !5457)
!5525 = !DILocation(line: 392, column: 2, scope: !5457)
!5526 = !DILocation(line: 392, column: 10, scope: !5457)
!5527 = !DILocation(line: 392, column: 39, scope: !5457)
!5528 = !DILocation(line: 392, column: 60, scope: !5457)
!5529 = !DILocation(line: 392, column: 44, scope: !5457)
!5530 = !DILocation(line: 392, column: 73, scope: !5457)
!5531 = !DILocation(line: 392, column: 42, scope: !5457)
!5532 = !DILocation(line: 0, scope: !5457)
!5533 = distinct !{!5533, !5525, !5534}
!5534 = !DILocation(line: 393, column: 3, scope: !5457)
!5535 = !DILocation(line: 395, column: 2, scope: !5457)
!5536 = !DILocation(line: 396, column: 1, scope: !5457)
!5537 = distinct !DISubprogram(name: "cx24110_set_tone", scope: !3, file: !3, line: 568, type: !4299, scopeLine: 570, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!5538 = !DILocalVariable(name: "fe", arg: 1, scope: !5537, file: !3, line: 568, type: !4145)
!5539 = !DILocation(line: 568, column: 50, scope: !5537)
!5540 = !DILocalVariable(name: "tone", arg: 2, scope: !5537, file: !3, line: 569, type: !78)
!5541 = !DILocation(line: 569, column: 30, scope: !5537)
!5542 = !DILocalVariable(name: "state", scope: !5537, file: !3, line: 571, type: !414)
!5543 = !DILocation(line: 571, column: 24, scope: !5537)
!5544 = !DILocation(line: 571, column: 32, scope: !5537)
!5545 = !DILocation(line: 571, column: 36, scope: !5537)
!5546 = !DILocation(line: 573, column: 26, scope: !5537)
!5547 = !DILocation(line: 573, column: 54, scope: !5537)
!5548 = !DILocation(line: 573, column: 38, scope: !5537)
!5549 = !DILocation(line: 573, column: 65, scope: !5537)
!5550 = !DILocation(line: 573, column: 76, scope: !5537)
!5551 = !DILocation(line: 573, column: 80, scope: !5537)
!5552 = !DILocation(line: 573, column: 74, scope: !5537)
!5553 = !DILocation(line: 573, column: 72, scope: !5537)
!5554 = !DILocation(line: 573, column: 9, scope: !5537)
!5555 = !DILocation(line: 573, column: 2, scope: !5537)
!5556 = distinct !DISubprogram(name: "cx24110_set_voltage", scope: !3, file: !3, line: 356, type: !4303, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!5557 = !DILocalVariable(name: "fe", arg: 1, scope: !5556, file: !3, line: 356, type: !4145)
!5558 = !DILocation(line: 356, column: 53, scope: !5556)
!5559 = !DILocalVariable(name: "voltage", arg: 2, scope: !5556, file: !3, line: 357, type: !73)
!5560 = !DILocation(line: 357, column: 31, scope: !5556)
!5561 = !DILocalVariable(name: "state", scope: !5556, file: !3, line: 359, type: !414)
!5562 = !DILocation(line: 359, column: 24, scope: !5556)
!5563 = !DILocation(line: 359, column: 32, scope: !5556)
!5564 = !DILocation(line: 359, column: 36, scope: !5556)
!5565 = !DILocation(line: 361, column: 10, scope: !5556)
!5566 = !DILocation(line: 361, column: 2, scope: !5556)
!5567 = !DILocation(line: 363, column: 27, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 361, column: 19)
!5569 = !DILocation(line: 363, column: 55, scope: !5568)
!5570 = !DILocation(line: 363, column: 39, scope: !5568)
!5571 = !DILocation(line: 363, column: 66, scope: !5568)
!5572 = !DILocation(line: 363, column: 72, scope: !5568)
!5573 = !DILocation(line: 363, column: 10, scope: !5568)
!5574 = !DILocation(line: 363, column: 3, scope: !5568)
!5575 = !DILocation(line: 365, column: 27, scope: !5568)
!5576 = !DILocation(line: 365, column: 55, scope: !5568)
!5577 = !DILocation(line: 365, column: 39, scope: !5568)
!5578 = !DILocation(line: 365, column: 66, scope: !5568)
!5579 = !DILocation(line: 365, column: 72, scope: !5568)
!5580 = !DILocation(line: 365, column: 10, scope: !5568)
!5581 = !DILocation(line: 365, column: 3, scope: !5568)
!5582 = !DILocation(line: 367, column: 3, scope: !5568)
!5583 = !DILocation(line: 369, column: 1, scope: !5556)
!5584 = distinct !DISubprogram(name: "cx24110_writereg", scope: !3, file: !3, line: 103, type: !5585, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!5585 = !DISubroutineType(types: !5586)
!5586 = !{!294, !414, !294, !294}
!5587 = !DILocalVariable(name: "state", arg: 1, scope: !5584, file: !3, line: 103, type: !414)
!5588 = !DILocation(line: 103, column: 52, scope: !5584)
!5589 = !DILocalVariable(name: "reg", arg: 2, scope: !5584, file: !3, line: 103, type: !294)
!5590 = !DILocation(line: 103, column: 63, scope: !5584)
!5591 = !DILocalVariable(name: "data", arg: 3, scope: !5584, file: !3, line: 103, type: !294)
!5592 = !DILocation(line: 103, column: 72, scope: !5584)
!5593 = !DILocalVariable(name: "buf", scope: !5584, file: !3, line: 105, type: !5594)
!5594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 16, elements: !2489)
!5595 = !DILocation(line: 105, column: 5, scope: !5584)
!5596 = !DILocation(line: 105, column: 14, scope: !5584)
!5597 = !DILocation(line: 105, column: 16, scope: !5584)
!5598 = !DILocation(line: 105, column: 21, scope: !5584)
!5599 = !DILocalVariable(name: "msg", scope: !5584, file: !3, line: 106, type: !434)
!5600 = !DILocation(line: 106, column: 17, scope: !5584)
!5601 = !DILocation(line: 106, column: 23, scope: !5584)
!5602 = !DILocation(line: 106, column: 33, scope: !5584)
!5603 = !DILocation(line: 106, column: 40, scope: !5584)
!5604 = !DILocation(line: 106, column: 48, scope: !5584)
!5605 = !DILocation(line: 106, column: 82, scope: !5584)
!5606 = !DILocalVariable(name: "err", scope: !5584, file: !3, line: 107, type: !294)
!5607 = !DILocation(line: 107, column: 6, scope: !5584)
!5608 = !DILocation(line: 109, column: 26, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5584, file: !3, line: 109, column: 6)
!5610 = !DILocation(line: 109, column: 33, scope: !5609)
!5611 = !DILocation(line: 109, column: 13, scope: !5609)
!5612 = !DILocation(line: 109, column: 11, scope: !5609)
!5613 = !DILocation(line: 109, column: 48, scope: !5609)
!5614 = !DILocation(line: 109, column: 6, scope: !5584)
!5615 = !DILocation(line: 110, column: 3, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 109, column: 54)
!5617 = !DILocation(line: 110, column: 3, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 110, column: 3)
!5619 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 110, column: 3)
!5620 = !DILocation(line: 110, column: 3, scope: !5619)
!5621 = !DILocation(line: 112, column: 3, scope: !5616)
!5622 = !DILocation(line: 115, column: 2, scope: !5584)
!5623 = !DILocation(line: 116, column: 1, scope: !5584)
!5624 = distinct !DISubprogram(name: "cx24110_set_inversion", scope: !3, file: !3, line: 133, type: !5625, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!5625 = !DISubroutineType(types: !5626)
!5626 = !{!294, !414, !82}
!5627 = !DILocalVariable(name: "state", arg: 1, scope: !5624, file: !3, line: 133, type: !414)
!5628 = !DILocation(line: 133, column: 56, scope: !5624)
!5629 = !DILocalVariable(name: "inversion", arg: 2, scope: !5624, file: !3, line: 134, type: !82)
!5630 = !DILocation(line: 134, column: 33, scope: !5624)
!5631 = !DILocation(line: 138, column: 10, scope: !5624)
!5632 = !DILocation(line: 138, column: 2, scope: !5624)
!5633 = !DILocation(line: 140, column: 20, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 138, column: 21)
!5635 = !DILocation(line: 140, column: 47, scope: !5634)
!5636 = !DILocation(line: 140, column: 31, scope: !5634)
!5637 = !DILocation(line: 140, column: 58, scope: !5634)
!5638 = !DILocation(line: 140, column: 3, scope: !5634)
!5639 = !DILocation(line: 142, column: 20, scope: !5634)
!5640 = !DILocation(line: 142, column: 46, scope: !5634)
!5641 = !DILocation(line: 142, column: 30, scope: !5634)
!5642 = !DILocation(line: 142, column: 56, scope: !5634)
!5643 = !DILocation(line: 142, column: 3, scope: !5634)
!5644 = !DILocation(line: 144, column: 20, scope: !5634)
!5645 = !DILocation(line: 144, column: 47, scope: !5634)
!5646 = !DILocation(line: 144, column: 31, scope: !5634)
!5647 = !DILocation(line: 144, column: 58, scope: !5634)
!5648 = !DILocation(line: 144, column: 3, scope: !5634)
!5649 = !DILocation(line: 148, column: 3, scope: !5634)
!5650 = !DILocation(line: 150, column: 20, scope: !5634)
!5651 = !DILocation(line: 150, column: 47, scope: !5634)
!5652 = !DILocation(line: 150, column: 31, scope: !5634)
!5653 = !DILocation(line: 150, column: 58, scope: !5634)
!5654 = !DILocation(line: 150, column: 3, scope: !5634)
!5655 = !DILocation(line: 152, column: 20, scope: !5634)
!5656 = !DILocation(line: 152, column: 46, scope: !5634)
!5657 = !DILocation(line: 152, column: 30, scope: !5634)
!5658 = !DILocation(line: 152, column: 56, scope: !5634)
!5659 = !DILocation(line: 152, column: 3, scope: !5634)
!5660 = !DILocation(line: 154, column: 20, scope: !5634)
!5661 = !DILocation(line: 154, column: 47, scope: !5634)
!5662 = !DILocation(line: 154, column: 31, scope: !5634)
!5663 = !DILocation(line: 154, column: 58, scope: !5634)
!5664 = !DILocation(line: 154, column: 3, scope: !5634)
!5665 = !DILocation(line: 156, column: 3, scope: !5634)
!5666 = !DILocation(line: 158, column: 20, scope: !5634)
!5667 = !DILocation(line: 158, column: 47, scope: !5634)
!5668 = !DILocation(line: 158, column: 31, scope: !5634)
!5669 = !DILocation(line: 158, column: 58, scope: !5634)
!5670 = !DILocation(line: 158, column: 3, scope: !5634)
!5671 = !DILocation(line: 160, column: 3, scope: !5634)
!5672 = !DILocation(line: 162, column: 3, scope: !5634)
!5673 = !DILocation(line: 165, column: 2, scope: !5624)
!5674 = !DILocation(line: 166, column: 1, scope: !5624)
!5675 = !DILocalVariable(name: "state", arg: 1, scope: !411, file: !3, line: 168, type: !414)
!5676 = !DILocation(line: 168, column: 50, scope: !411)
!5677 = !DILocalVariable(name: "fec", arg: 2, scope: !411, file: !3, line: 168, type: !87)
!5678 = !DILocation(line: 168, column: 75, scope: !411)
!5679 = !DILocation(line: 178, column: 6, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !411, file: !3, line: 178, column: 6)
!5681 = !DILocation(line: 178, column: 10, scope: !5680)
!5682 = !DILocation(line: 178, column: 6, scope: !411)
!5683 = !DILocation(line: 179, column: 7, scope: !5680)
!5684 = !DILocation(line: 179, column: 3, scope: !5680)
!5685 = !DILocation(line: 181, column: 6, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !411, file: !3, line: 181, column: 6)
!5687 = !DILocation(line: 181, column: 10, scope: !5686)
!5688 = !DILocation(line: 181, column: 6, scope: !411)
!5689 = !DILocation(line: 182, column: 20, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 181, column: 23)
!5691 = !DILocation(line: 182, column: 49, scope: !5690)
!5692 = !DILocation(line: 182, column: 33, scope: !5690)
!5693 = !DILocation(line: 182, column: 62, scope: !5690)
!5694 = !DILocation(line: 182, column: 3, scope: !5690)
!5695 = !DILocation(line: 184, column: 20, scope: !5690)
!5696 = !DILocation(line: 184, column: 3, scope: !5690)
!5697 = !DILocation(line: 186, column: 20, scope: !5690)
!5698 = !DILocation(line: 186, column: 50, scope: !5690)
!5699 = !DILocation(line: 186, column: 34, scope: !5690)
!5700 = !DILocation(line: 186, column: 63, scope: !5690)
!5701 = !DILocation(line: 186, column: 71, scope: !5690)
!5702 = !DILocation(line: 186, column: 3, scope: !5690)
!5703 = !DILocation(line: 188, column: 20, scope: !5690)
!5704 = !DILocation(line: 188, column: 50, scope: !5690)
!5705 = !DILocation(line: 188, column: 34, scope: !5690)
!5706 = !DILocation(line: 188, column: 63, scope: !5690)
!5707 = !DILocation(line: 188, column: 71, scope: !5690)
!5708 = !DILocation(line: 188, column: 3, scope: !5690)
!5709 = !DILocation(line: 190, column: 20, scope: !5690)
!5710 = !DILocation(line: 190, column: 3, scope: !5690)
!5711 = !DILocation(line: 191, column: 20, scope: !5690)
!5712 = !DILocation(line: 191, column: 3, scope: !5690)
!5713 = !DILocation(line: 193, column: 3, scope: !5690)
!5714 = !DILocation(line: 195, column: 20, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 194, column: 9)
!5716 = !DILocation(line: 195, column: 49, scope: !5715)
!5717 = !DILocation(line: 195, column: 33, scope: !5715)
!5718 = !DILocation(line: 195, column: 62, scope: !5715)
!5719 = !DILocation(line: 195, column: 3, scope: !5715)
!5720 = !DILocation(line: 197, column: 12, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 197, column: 7)
!5722 = !DILocation(line: 197, column: 7, scope: !5721)
!5723 = !DILocation(line: 197, column: 17, scope: !5721)
!5724 = !DILocation(line: 197, column: 7, scope: !5715)
!5725 = !DILocation(line: 198, column: 4, scope: !5721)
!5726 = !DILocation(line: 200, column: 20, scope: !5715)
!5727 = !DILocation(line: 200, column: 50, scope: !5715)
!5728 = !DILocation(line: 200, column: 34, scope: !5715)
!5729 = !DILocation(line: 200, column: 63, scope: !5715)
!5730 = !DILocation(line: 200, column: 78, scope: !5715)
!5731 = !DILocation(line: 200, column: 73, scope: !5715)
!5732 = !DILocation(line: 200, column: 71, scope: !5715)
!5733 = !DILocation(line: 200, column: 3, scope: !5715)
!5734 = !DILocation(line: 202, column: 20, scope: !5715)
!5735 = !DILocation(line: 202, column: 50, scope: !5715)
!5736 = !DILocation(line: 202, column: 34, scope: !5715)
!5737 = !DILocation(line: 202, column: 63, scope: !5715)
!5738 = !DILocation(line: 202, column: 78, scope: !5715)
!5739 = !DILocation(line: 202, column: 73, scope: !5715)
!5740 = !DILocation(line: 202, column: 71, scope: !5715)
!5741 = !DILocation(line: 202, column: 3, scope: !5715)
!5742 = !DILocation(line: 204, column: 20, scope: !5715)
!5743 = !DILocation(line: 204, column: 36, scope: !5715)
!5744 = !DILocation(line: 204, column: 33, scope: !5715)
!5745 = !DILocation(line: 204, column: 3, scope: !5715)
!5746 = !DILocation(line: 205, column: 20, scope: !5715)
!5747 = !DILocation(line: 205, column: 36, scope: !5715)
!5748 = !DILocation(line: 205, column: 33, scope: !5715)
!5749 = !DILocation(line: 205, column: 3, scope: !5715)
!5750 = !DILocation(line: 208, column: 2, scope: !411)
!5751 = !DILocation(line: 209, column: 1, scope: !411)
!5752 = !DILocalVariable(name: "state", arg: 1, scope: !4452, file: !3, line: 227, type: !414)
!5753 = !DILocation(line: 227, column: 58, scope: !4452)
!5754 = !DILocalVariable(name: "srate", arg: 2, scope: !4452, file: !3, line: 227, type: !461)
!5755 = !DILocation(line: 227, column: 69, scope: !4452)
!5756 = !DILocalVariable(name: "ratio", scope: !4452, file: !3, line: 230, type: !461)
!5757 = !DILocation(line: 230, column: 6, scope: !4452)
!5758 = !DILocalVariable(name: "tmp", scope: !4452, file: !3, line: 231, type: !461)
!5759 = !DILocation(line: 231, column: 6, scope: !4452)
!5760 = !DILocalVariable(name: "fclk", scope: !4452, file: !3, line: 231, type: !461)
!5761 = !DILocation(line: 231, column: 11, scope: !4452)
!5762 = !DILocalVariable(name: "BDRI", scope: !4452, file: !3, line: 231, type: !461)
!5763 = !DILocation(line: 231, column: 17, scope: !4452)
!5764 = !DILocalVariable(name: "i", scope: !4452, file: !3, line: 234, type: !294)
!5765 = !DILocation(line: 234, column: 6, scope: !4452)
!5766 = !DILocation(line: 236, column: 2, scope: !4452)
!5767 = !DILocation(line: 236, column: 2, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5769, file: !3, line: 236, column: 2)
!5769 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 236, column: 2)
!5770 = !DILocation(line: 236, column: 2, scope: !5769)
!5771 = !DILocation(line: 237, column: 6, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 237, column: 6)
!5773 = !DILocation(line: 237, column: 11, scope: !5772)
!5774 = !DILocation(line: 237, column: 6, scope: !4452)
!5775 = !DILocation(line: 238, column: 8, scope: !5772)
!5776 = !DILocation(line: 238, column: 3, scope: !5772)
!5777 = !DILocation(line: 239, column: 6, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 239, column: 6)
!5779 = !DILocation(line: 239, column: 11, scope: !5778)
!5780 = !DILocation(line: 239, column: 6, scope: !4452)
!5781 = !DILocation(line: 240, column: 8, scope: !5778)
!5782 = !DILocation(line: 240, column: 3, scope: !5778)
!5783 = !DILocation(line: 242, column: 8, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 242, column: 2)
!5785 = !DILocation(line: 242, column: 6, scope: !5784)
!5786 = !DILocation(line: 242, column: 14, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5784, file: !3, line: 242, column: 2)
!5788 = !DILocation(line: 242, column: 16, scope: !5787)
!5789 = !DILocation(line: 242, column: 37, scope: !5787)
!5790 = !DILocation(line: 242, column: 41, scope: !5787)
!5791 = !DILocation(line: 242, column: 53, scope: !5787)
!5792 = !DILocation(line: 242, column: 47, scope: !5787)
!5793 = !DILocation(line: 242, column: 46, scope: !5787)
!5794 = !DILocation(line: 0, scope: !5787)
!5795 = !DILocation(line: 242, column: 2, scope: !5784)
!5796 = !DILocation(line: 242, column: 59, scope: !5787)
!5797 = !DILocation(line: 242, column: 2, scope: !5787)
!5798 = distinct !{!5798, !5795, !5799}
!5799 = !DILocation(line: 243, column: 3, scope: !5784)
!5800 = !DILocation(line: 247, column: 22, scope: !4452)
!5801 = !DILocation(line: 247, column: 6, scope: !4452)
!5802 = !DILocation(line: 247, column: 33, scope: !4452)
!5803 = !DILocation(line: 247, column: 5, scope: !4452)
!5804 = !DILocation(line: 248, column: 5, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 248, column: 5)
!5806 = !DILocation(line: 248, column: 10, scope: !5805)
!5807 = !DILocation(line: 248, column: 5, scope: !4452)
!5808 = !DILocation(line: 249, column: 20, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5805, file: !3, line: 248, column: 25)
!5810 = !DILocation(line: 249, column: 31, scope: !5809)
!5811 = !DILocation(line: 249, column: 3, scope: !5809)
!5812 = !DILocation(line: 250, column: 20, scope: !5809)
!5813 = !DILocation(line: 250, column: 3, scope: !5809)
!5814 = !DILocation(line: 251, column: 7, scope: !5809)
!5815 = !DILocation(line: 252, column: 2, scope: !5809)
!5816 = !DILocation(line: 252, column: 12, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5805, file: !3, line: 252, column: 12)
!5818 = !DILocation(line: 252, column: 17, scope: !5817)
!5819 = !DILocation(line: 252, column: 12, scope: !5805)
!5820 = !DILocation(line: 253, column: 20, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5817, file: !3, line: 252, column: 32)
!5822 = !DILocation(line: 253, column: 31, scope: !5821)
!5823 = !DILocation(line: 253, column: 34, scope: !5821)
!5824 = !DILocation(line: 253, column: 3, scope: !5821)
!5825 = !DILocation(line: 254, column: 20, scope: !5821)
!5826 = !DILocation(line: 254, column: 3, scope: !5821)
!5827 = !DILocation(line: 255, column: 7, scope: !5821)
!5828 = !DILocation(line: 256, column: 2, scope: !5821)
!5829 = !DILocation(line: 256, column: 12, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5817, file: !3, line: 256, column: 12)
!5831 = !DILocation(line: 256, column: 17, scope: !5830)
!5832 = !DILocation(line: 256, column: 12, scope: !5817)
!5833 = !DILocation(line: 257, column: 20, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5830, file: !3, line: 256, column: 32)
!5835 = !DILocation(line: 257, column: 31, scope: !5834)
!5836 = !DILocation(line: 257, column: 34, scope: !5834)
!5837 = !DILocation(line: 257, column: 3, scope: !5834)
!5838 = !DILocation(line: 258, column: 20, scope: !5834)
!5839 = !DILocation(line: 258, column: 3, scope: !5834)
!5840 = !DILocation(line: 259, column: 7, scope: !5834)
!5841 = !DILocation(line: 260, column: 2, scope: !5834)
!5842 = !DILocation(line: 261, column: 20, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5830, file: !3, line: 260, column: 9)
!5844 = !DILocation(line: 261, column: 31, scope: !5843)
!5845 = !DILocation(line: 261, column: 34, scope: !5843)
!5846 = !DILocation(line: 261, column: 3, scope: !5843)
!5847 = !DILocation(line: 262, column: 20, scope: !5843)
!5848 = !DILocation(line: 262, column: 3, scope: !5843)
!5849 = !DILocation(line: 263, column: 7, scope: !5843)
!5850 = !DILocation(line: 265, column: 2, scope: !4452)
!5851 = !DILocation(line: 265, column: 2, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 265, column: 2)
!5853 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 265, column: 2)
!5854 = !DILocation(line: 265, column: 2, scope: !5853)
!5855 = !DILocation(line: 274, column: 6, scope: !4452)
!5856 = !DILocation(line: 274, column: 11, scope: !4452)
!5857 = !DILocation(line: 274, column: 5, scope: !4452)
!5858 = !DILocation(line: 275, column: 7, scope: !4452)
!5859 = !DILocation(line: 275, column: 11, scope: !4452)
!5860 = !DILocation(line: 275, column: 6, scope: !4452)
!5861 = !DILocation(line: 276, column: 9, scope: !4452)
!5862 = !DILocation(line: 276, column: 13, scope: !4452)
!5863 = !DILocation(line: 276, column: 12, scope: !4452)
!5864 = !DILocation(line: 276, column: 7, scope: !4452)
!5865 = !DILocation(line: 278, column: 7, scope: !4452)
!5866 = !DILocation(line: 278, column: 11, scope: !4452)
!5867 = !DILocation(line: 278, column: 10, scope: !4452)
!5868 = !DILocation(line: 278, column: 16, scope: !4452)
!5869 = !DILocation(line: 278, column: 5, scope: !4452)
!5870 = !DILocation(line: 279, column: 9, scope: !4452)
!5871 = !DILocation(line: 279, column: 14, scope: !4452)
!5872 = !DILocation(line: 279, column: 20, scope: !4452)
!5873 = !DILocation(line: 279, column: 24, scope: !4452)
!5874 = !DILocation(line: 279, column: 23, scope: !4452)
!5875 = !DILocation(line: 279, column: 18, scope: !4452)
!5876 = !DILocation(line: 279, column: 7, scope: !4452)
!5877 = !DILocation(line: 281, column: 7, scope: !4452)
!5878 = !DILocation(line: 281, column: 11, scope: !4452)
!5879 = !DILocation(line: 281, column: 10, scope: !4452)
!5880 = !DILocation(line: 281, column: 16, scope: !4452)
!5881 = !DILocation(line: 281, column: 5, scope: !4452)
!5882 = !DILocation(line: 282, column: 9, scope: !4452)
!5883 = !DILocation(line: 282, column: 14, scope: !4452)
!5884 = !DILocation(line: 282, column: 20, scope: !4452)
!5885 = !DILocation(line: 282, column: 24, scope: !4452)
!5886 = !DILocation(line: 282, column: 23, scope: !4452)
!5887 = !DILocation(line: 282, column: 18, scope: !4452)
!5888 = !DILocation(line: 282, column: 7, scope: !4452)
!5889 = !DILocation(line: 284, column: 7, scope: !4452)
!5890 = !DILocation(line: 284, column: 11, scope: !4452)
!5891 = !DILocation(line: 284, column: 10, scope: !4452)
!5892 = !DILocation(line: 284, column: 16, scope: !4452)
!5893 = !DILocation(line: 284, column: 5, scope: !4452)
!5894 = !DILocation(line: 285, column: 9, scope: !4452)
!5895 = !DILocation(line: 285, column: 14, scope: !4452)
!5896 = !DILocation(line: 285, column: 20, scope: !4452)
!5897 = !DILocation(line: 285, column: 24, scope: !4452)
!5898 = !DILocation(line: 285, column: 23, scope: !4452)
!5899 = !DILocation(line: 285, column: 18, scope: !4452)
!5900 = !DILocation(line: 285, column: 7, scope: !4452)
!5901 = !DILocation(line: 287, column: 2, scope: !4452)
!5902 = !DILocation(line: 287, column: 2, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 287, column: 2)
!5904 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 287, column: 2)
!5905 = !DILocation(line: 287, column: 2, scope: !5904)
!5906 = !DILocation(line: 288, column: 2, scope: !4452)
!5907 = !DILocation(line: 288, column: 2, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 288, column: 2)
!5909 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 288, column: 2)
!5910 = !DILocation(line: 288, column: 2, scope: !5909)
!5911 = !DILocation(line: 289, column: 2, scope: !4452)
!5912 = !DILocation(line: 289, column: 2, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5914, file: !3, line: 289, column: 2)
!5914 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 289, column: 2)
!5915 = !DILocation(line: 289, column: 2, scope: !5914)
!5916 = !DILocation(line: 291, column: 19, scope: !4452)
!5917 = !DILocation(line: 291, column: 32, scope: !4452)
!5918 = !DILocation(line: 291, column: 37, scope: !4452)
!5919 = !DILocation(line: 291, column: 42, scope: !4452)
!5920 = !DILocation(line: 291, column: 2, scope: !4452)
!5921 = !DILocation(line: 292, column: 19, scope: !4452)
!5922 = !DILocation(line: 292, column: 32, scope: !4452)
!5923 = !DILocation(line: 292, column: 37, scope: !4452)
!5924 = !DILocation(line: 292, column: 41, scope: !4452)
!5925 = !DILocation(line: 292, column: 2, scope: !4452)
!5926 = !DILocation(line: 293, column: 19, scope: !4452)
!5927 = !DILocation(line: 293, column: 32, scope: !4452)
!5928 = !DILocation(line: 293, column: 38, scope: !4452)
!5929 = !DILocation(line: 293, column: 2, scope: !4452)
!5930 = !DILocation(line: 295, column: 2, scope: !4452)
!5931 = distinct !DISubprogram(name: "cx24110_get_fec", scope: !3, file: !3, line: 211, type: !5932, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!5932 = !DISubroutineType(types: !5933)
!5933 = !{!87, !414}
!5934 = !DILocalVariable(name: "state", arg: 1, scope: !5931, file: !3, line: 211, type: !414)
!5935 = !DILocation(line: 211, column: 64, scope: !5931)
!5936 = !DILocalVariable(name: "i", scope: !5931, file: !3, line: 213, type: !294)
!5937 = !DILocation(line: 213, column: 6, scope: !5931)
!5938 = !DILocation(line: 215, column: 20, scope: !5931)
!5939 = !DILocation(line: 215, column: 4, scope: !5931)
!5940 = !DILocation(line: 215, column: 31, scope: !5931)
!5941 = !DILocation(line: 215, column: 3, scope: !5931)
!5942 = !DILocation(line: 216, column: 7, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5931, file: !3, line: 216, column: 5)
!5944 = !DILocation(line: 216, column: 8, scope: !5943)
!5945 = !DILocation(line: 216, column: 5, scope: !5931)
!5946 = !DILocation(line: 217, column: 20, scope: !5947)
!5947 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 216, column: 16)
!5948 = !DILocation(line: 217, column: 18, scope: !5947)
!5949 = !DILocation(line: 217, column: 22, scope: !5947)
!5950 = !DILocation(line: 217, column: 3, scope: !5947)
!5951 = !DILocation(line: 223, column: 5, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 218, column: 9)
!5953 = !DILocation(line: 225, column: 1, scope: !5931)
!5954 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !5348, file: !5348, line: 308, type: !5349, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !491)
!5955 = !DILocalVariable(name: "m", arg: 1, scope: !5954, file: !5348, line: 308, type: !1791)
!5956 = !DILocation(line: 308, column: 66, scope: !5954)
!5957 = !DILocation(line: 310, column: 10, scope: !5954)
!5958 = !DILocation(line: 310, column: 12, scope: !5954)
!5959 = !DILocation(line: 310, column: 34, scope: !5954)
!5960 = !DILocation(line: 310, column: 39, scope: !5954)
!5961 = !DILocation(line: 310, column: 2, scope: !5954)
