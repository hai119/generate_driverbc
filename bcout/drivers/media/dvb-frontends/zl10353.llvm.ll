; ModuleID = '../bcout/drivers/media/dvb-frontends/zl10353.llvm.bc'
source_filename = "drivers/media/dvb-frontends/zl10353.c"
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
%struct.zl10353_config = type { i8, i32, i32, i32, i32, i8, i8, i8 }
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
%struct.zl10353_state = type { %struct.i2c_adapter*, %struct.dvb_frontend, %struct.zl10353_config, i32, i32, i32 }

@zl10353_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Zarlink ZL10353 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 -1071960402 }, [8 x i8] c"\03\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @zl10353_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @zl10353_init, i32 (%struct.dvb_frontend*)* @zl10353_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* @zl10353_write, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @zl10353_set_parameters, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @zl10353_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @zl10353_get_parameters, i32 (%struct.dvb_frontend*, i32*)* @zl10353_read_status, i32 (%struct.dvb_frontend*, i32*)* @zl10353_read_ber, i32 (%struct.dvb_frontend*, i16*)* @zl10353_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @zl10353_read_snr, i32 (%struct.dvb_frontend*, i32*)* @zl10353_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* @zl10353_i2c_gate_ctrl, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !0
@__param_str_debug = internal constant [14 x i8] c"zl10353.debug\00", align 1, !dbg !4360
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !459
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !351
@__UNIQUE_ID_debugtype220 = internal constant [27 x i8] c"zl10353.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !417
@__UNIQUE_ID_debug221 = internal constant [65 x i8] c"zl10353.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1, !dbg !422
@__param_str_debug_regs = internal constant [19 x i8] c"zl10353.debug_regs\00", align 16, !dbg !4365
@debug_regs = internal global i32 0, align 4, !dbg !461
@__param_debug_regs = internal constant %struct.kernel_param { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__param_str_debug_regs, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i32* @debug_regs to i8*) } }, section "__param", align 8, !dbg !427
@__UNIQUE_ID_debug_regstype222 = internal constant [32 x i8] c"zl10353.parmtype=debug_regs:int\00", section ".modinfo", align 1, !dbg !429
@__UNIQUE_ID_debug_regs223 = internal constant [75 x i8] c"zl10353.parm=debug_regs:Turn on/off frontend register dumps (default:off).\00", section ".modinfo", align 1, !dbg !434
@__UNIQUE_ID_description224 = internal constant [61 x i8] c"zl10353.description=Zarlink ZL10353 DVB-T demodulator driver\00", section ".modinfo", align 1, !dbg !439
@__UNIQUE_ID_author225 = internal constant [28 x i8] c"zl10353.author=Chris Pascoe\00", section ".modinfo", align 1, !dbg !444
@__UNIQUE_ID_file226 = internal constant [49 x i8] c"zl10353.file=drivers/media/dvb-frontends/zl10353\00", section ".modinfo", align 1, !dbg !449
@__UNIQUE_ID_license227 = internal constant [20 x i8] c"zl10353.license=GPL\00", section ".modinfo", align 1, !dbg !454
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: readreg error (reg=%d, ret==%i)\0A\00", align 1
@__func__.zl10353_read_register = private unnamed_addr constant [22 x i8] c"zl10353_read_register\00", align 1
@__const.zl10353_init.zl10353_reset_attach = private unnamed_addr constant [6 x i8] c"P\03dF\15\0F", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\017%02x:\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\01c %02x\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\01c --\00", align 1
@zl10353_sleep.zl10353_softdown = internal global [3 x i8] c"P\0CD", align 1, !dbg !463
@.str.6 = private unnamed_addr constant [45 x i8] c"zl10353: write to reg %x failed (err = %d)!\0A\00", align 1
@__const.zl10353_set_parameters.pllbuf = private unnamed_addr constant [6 x i8] c"g\00\00\00\00\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"\017zl10353: %s: bw %d, adc_clock %d => 0x%x\0A\00", align 1
@__func__.zl10353_calc_nominal_rate = private unnamed_addr constant [26 x i8] c"zl10353_calc_nominal_rate\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"\017zl10353: %s: if2 %d, ife %d, adc_clock %d => %d / 0x%x\0A\00", align 1
@__func__.zl10353_calc_input_freq = private unnamed_addr constant [24 x i8] c"zl10353_calc_input_freq\00", align 1
@zl10353_get_parameters.tps_fec_to_api = internal constant [8 x i8] c"\01\02\03\05\07\09\09\09", align 1, !dbg !4356
@llvm.used = appending global [10 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_debug_regs to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_debug_regstype222, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__UNIQUE_ID_debug_regs223, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__UNIQUE_ID_description224, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_author225, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_file226, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license227, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @zl10353_attach(%struct.zl10353_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4376 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.zl10353_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.zl10353_state*, align 8
  %id = alloca i32, align 4
  store %struct.zl10353_config* %config, %struct.zl10353_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.zl10353_config** %config.addr, metadata !4514, metadata !DIExpression()), !dbg !4515
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4516, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.declare(metadata %struct.zl10353_state** %state, metadata !4518, metadata !DIExpression()), !dbg !4528
  store %struct.zl10353_state* null, %struct.zl10353_state** %state, align 8, !dbg !4528
  call void @llvm.dbg.declare(metadata i32* %id, metadata !4529, metadata !DIExpression()), !dbg !4530
  %call = call i8* @kzalloc(i64 1328, i32 3264) #8, !dbg !4531
  %0 = bitcast i8* %call to %struct.zl10353_state*, !dbg !4531
  store %struct.zl10353_state* %0, %struct.zl10353_state** %state, align 8, !dbg !4532
  %1 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !4533
  %cmp = icmp eq %struct.zl10353_state* %1, null, !dbg !4535
  br i1 %cmp, label %if.then, label %if.end, !dbg !4536

if.then:                                          ; preds = %entry
  br label %error, !dbg !4537

if.end:                                           ; preds = %entry
  %2 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4538
  %3 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !4539
  %i2c1 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %3, i32 0, i32 0, !dbg !4540
  store %struct.i2c_adapter* %2, %struct.i2c_adapter** %i2c1, align 8, !dbg !4541
  %4 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !4542
  %config2 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %4, i32 0, i32 2, !dbg !4543
  %5 = bitcast %struct.zl10353_config* %config2 to i8*, !dbg !4544
  %6 = load %struct.zl10353_config*, %struct.zl10353_config** %config.addr, align 8, !dbg !4545
  %7 = bitcast %struct.zl10353_config* %6 to i8*, !dbg !4544
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 4 %7, i64 24, i1 false), !dbg !4544
  %8 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !4546
  %call3 = call i32 @zl10353_read_register(%struct.zl10353_state* %8, i8 zeroext 127) #8, !dbg !4547
  store i32 %call3, i32* %id, align 4, !dbg !4548
  %9 = load i32, i32* %id, align 4, !dbg !4549
  %cmp4 = icmp ne i32 %9, 20, !dbg !4551
  br i1 %cmp4, label %land.lhs.true, label %if.end9, !dbg !4552

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %id, align 4, !dbg !4553
  %cmp5 = icmp ne i32 %10, 24, !dbg !4554
  br i1 %cmp5, label %land.lhs.true6, label %if.end9, !dbg !4555

land.lhs.true6:                                   ; preds = %land.lhs.true
  %11 = load i32, i32* %id, align 4, !dbg !4556
  %cmp7 = icmp ne i32 %11, 25, !dbg !4557
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !4558

if.then8:                                         ; preds = %land.lhs.true6
  br label %error, !dbg !4559

if.end9:                                          ; preds = %land.lhs.true6, %land.lhs.true, %if.end
  %12 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !4560
  %frontend = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %12, i32 0, i32 1, !dbg !4561
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4562
  %13 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4563
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @zl10353_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4563
  %14 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !4564
  %15 = bitcast %struct.zl10353_state* %14 to i8*, !dbg !4564
  %16 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !4565
  %frontend10 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %16, i32 0, i32 1, !dbg !4566
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend10, i32 0, i32 3, !dbg !4567
  store i8* %15, i8** %demodulator_priv, align 8, !dbg !4568
  %17 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !4569
  %frontend11 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %17, i32 0, i32 1, !dbg !4570
  store %struct.dvb_frontend* %frontend11, %struct.dvb_frontend** %retval, align 8, !dbg !4571
  br label %return, !dbg !4571

error:                                            ; preds = %if.then8, %if.then
  call void @llvm.dbg.label(metadata !4572), !dbg !4573
  %18 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !4574
  %19 = bitcast %struct.zl10353_state* %18 to i8*, !dbg !4574
  call void @kfree(i8* %19) #8, !dbg !4575
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4576
  br label %return, !dbg !4576

return:                                           ; preds = %error, %if.end9
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4577
  ret %struct.dvb_frontend* %20, !dbg !4577
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4578 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4581, metadata !DIExpression()), !dbg !4585
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4591, metadata !DIExpression()), !dbg !4592
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4593, metadata !DIExpression()), !dbg !4594
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4595, metadata !DIExpression()), !dbg !4596
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4597, metadata !DIExpression()), !dbg !4601
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4603, metadata !DIExpression()), !dbg !4607
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4609, metadata !DIExpression()), !dbg !4613
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4618, metadata !DIExpression()), !dbg !4619
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4620, metadata !DIExpression()), !dbg !4621
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4622, metadata !DIExpression()), !dbg !4623
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4624, metadata !DIExpression()), !dbg !4625
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4626, metadata !DIExpression()), !dbg !4627
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4628, metadata !DIExpression()), !dbg !4629
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4630, metadata !DIExpression()), !dbg !4631
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4632, metadata !DIExpression()), !dbg !4633
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4634, metadata !DIExpression()), !dbg !4635
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4636, metadata !DIExpression()), !dbg !4637
  %0 = load i64, i64* %size.addr, align 8, !dbg !4638
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4639
  %or = or i32 %1, 256, !dbg !4640
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4641
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4642
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4643

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4644
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4645
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4646

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4647
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4648
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4649
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4650
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4627
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4651
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4652
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4653
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4654
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4655
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4656
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4657
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4657
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4657
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4657
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4657
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4658
  br label %kmalloc.exit, !dbg !4658

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4659
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4660
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4660
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4662

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4663
  br label %kmalloc_index.exit.i, !dbg !4663

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4664
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4666
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4667

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4668
  br label %kmalloc_index.exit.i, !dbg !4668

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4669
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4671
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4672

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4673
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4674
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4675

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4676
  br label %kmalloc_index.exit.i, !dbg !4676

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4677
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4679
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4680

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4681
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4682
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4683

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4684
  br label %kmalloc_index.exit.i, !dbg !4684

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4685
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4687
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4688

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4689
  br label %kmalloc_index.exit.i, !dbg !4689

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4690
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4692
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4693

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4694
  br label %kmalloc_index.exit.i, !dbg !4694

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4695
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4697
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4698

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4699
  br label %kmalloc_index.exit.i, !dbg !4699

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4700
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4702
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4703

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4704
  br label %kmalloc_index.exit.i, !dbg !4704

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4705
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4707
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4708

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4709
  br label %kmalloc_index.exit.i, !dbg !4709

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4710
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4712
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4713

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4714
  br label %kmalloc_index.exit.i, !dbg !4714

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4715
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4717
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4718

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4719
  br label %kmalloc_index.exit.i, !dbg !4719

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4720
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4722
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4723

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4724
  br label %kmalloc_index.exit.i, !dbg !4724

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4725
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4727
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4728

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4729
  br label %kmalloc_index.exit.i, !dbg !4729

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4730
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4732
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4733

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4734
  br label %kmalloc_index.exit.i, !dbg !4734

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4735
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4737
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4738

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4739
  br label %kmalloc_index.exit.i, !dbg !4739

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4740
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4742
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4743

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4744
  br label %kmalloc_index.exit.i, !dbg !4744

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4745
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4747
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4748

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4749
  br label %kmalloc_index.exit.i, !dbg !4749

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4750
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4752
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4753

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4754
  br label %kmalloc_index.exit.i, !dbg !4754

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4755
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4757
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4758

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4759
  br label %kmalloc_index.exit.i, !dbg !4759

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4760
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4762
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4763

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4764
  br label %kmalloc_index.exit.i, !dbg !4764

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4765
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4767
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4768

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4769
  br label %kmalloc_index.exit.i, !dbg !4769

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4770
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4772
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4773

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4774
  br label %kmalloc_index.exit.i, !dbg !4774

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4775
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4777
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4778

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4779
  br label %kmalloc_index.exit.i, !dbg !4779

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4780
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4782
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4783

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4784
  br label %kmalloc_index.exit.i, !dbg !4784

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4785
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4787
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4788

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4789
  br label %kmalloc_index.exit.i, !dbg !4789

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4790
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4792
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4793

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4794
  br label %kmalloc_index.exit.i, !dbg !4794

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4795
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4797
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4798

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4799
  br label %kmalloc_index.exit.i, !dbg !4799

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4800
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4802
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4803

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4804
  br label %kmalloc_index.exit.i, !dbg !4804

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4805, !srcloc !4808
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #9, !dbg !4809, !srcloc !4812
  unreachable, !dbg !4813

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4814
  store i32 %45, i32* %index.i, align 4, !dbg !4815
  %46 = load i32, i32* %index.i, align 4, !dbg !4816
  %tobool.i = icmp ne i32 %46, 0, !dbg !4816
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4818

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4819
  br label %kmalloc.exit, !dbg !4819

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4820
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4821
  %and.i.i = and i32 %48, 17, !dbg !4821
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4821
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4821
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4821
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4821
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4823

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4824
  br label %kmalloc_type.exit.i, !dbg !4824

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4825
  %and2.i.i = and i32 %49, 1, !dbg !4826
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4825
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4825
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4825
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4827
  br label %kmalloc_type.exit.i, !dbg !4827

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4828
  %idxprom.i = zext i32 %51 to i64, !dbg !4829
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4829
  %52 = load i32, i32* %index.i, align 4, !dbg !4830
  %idxprom6.i = zext i32 %52 to i64, !dbg !4829
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4829
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4829
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4831
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4832
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4833
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4834
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4835
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4835
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4835
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4835
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4835
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4596
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4836
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4837
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4838
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4839
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4840
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4841
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4842
  store i8* %62, i8** %retval.i, align 8, !dbg !4843
  br label %kmalloc.exit, !dbg !4843

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4844
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4845
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4846
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4846
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4846
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4846
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4846
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4847
  br label %kmalloc.exit, !dbg !4847

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4848
  ret i8* %65, !dbg !4849
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zl10353_read_register(%struct.zl10353_state* %state, i8 zeroext %reg) #0 !dbg !4850 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.zl10353_state*, align 8
  %reg.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.zl10353_state* %state, %struct.zl10353_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.zl10353_state** %state.addr, metadata !4853, metadata !DIExpression()), !dbg !4854
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4855, metadata !DIExpression()), !dbg !4856
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4857, metadata !DIExpression()), !dbg !4858
  call void @llvm.dbg.declare(metadata [1 x i8]* %b0, metadata !4859, metadata !DIExpression()), !dbg !4861
  %arrayinit.begin = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4862
  %0 = load i8, i8* %reg.addr, align 1, !dbg !4863
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !4862
  call void @llvm.dbg.declare(metadata [1 x i8]* %b1, metadata !4864, metadata !DIExpression()), !dbg !4865
  %1 = bitcast [1 x i8]* %b1 to i8*, !dbg !4865
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 1, i1 false), !dbg !4865
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !4866, metadata !DIExpression()), !dbg !4868
  %arrayinit.begin1 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4869
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 0, !dbg !4870
  %2 = load %struct.zl10353_state*, %struct.zl10353_state** %state.addr, align 8, !dbg !4871
  %config = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %2, i32 0, i32 2, !dbg !4872
  %demod_address = getelementptr inbounds %struct.zl10353_config, %struct.zl10353_config* %config, i32 0, i32 0, !dbg !4873
  %3 = load i8, i8* %demod_address, align 8, !dbg !4873
  %conv = zext i8 %3 to i16, !dbg !4871
  store i16 %conv, i16* %addr, align 16, !dbg !4870
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 1, !dbg !4870
  store i16 0, i16* %flags, align 2, !dbg !4870
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 2, !dbg !4870
  store i16 1, i16* %len, align 4, !dbg !4870
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 3, !dbg !4870
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4874
  store i8* %arraydecay, i8** %buf, align 8, !dbg !4870
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i64 1, !dbg !4869
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4875
  %4 = load %struct.zl10353_state*, %struct.zl10353_state** %state.addr, align 8, !dbg !4876
  %config3 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %4, i32 0, i32 2, !dbg !4877
  %demod_address4 = getelementptr inbounds %struct.zl10353_config, %struct.zl10353_config* %config3, i32 0, i32 0, !dbg !4878
  %5 = load i8, i8* %demod_address4, align 8, !dbg !4878
  %conv5 = zext i8 %5 to i16, !dbg !4876
  store i16 %conv5, i16* %addr2, align 16, !dbg !4875
  %flags6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4875
  store i16 1, i16* %flags6, align 2, !dbg !4875
  %len7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4875
  store i16 1, i16* %len7, align 4, !dbg !4875
  %buf8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4875
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4879
  store i8* %arraydecay9, i8** %buf8, align 8, !dbg !4875
  %6 = load %struct.zl10353_state*, %struct.zl10353_state** %state.addr, align 8, !dbg !4880
  %i2c = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %6, i32 0, i32 0, !dbg !4881
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4881
  %arraydecay10 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4882
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %7, %struct.i2c_msg* %arraydecay10, i32 2) #8, !dbg !4883
  store i32 %call, i32* %ret, align 4, !dbg !4884
  %8 = load i32, i32* %ret, align 4, !dbg !4885
  %cmp = icmp ne i32 %8, 2, !dbg !4887
  br i1 %cmp, label %if.then, label %if.end, !dbg !4888

if.then:                                          ; preds = %entry
  %9 = load i8, i8* %reg.addr, align 1, !dbg !4889
  %conv12 = zext i8 %9 to i32, !dbg !4889
  %10 = load i32, i32* %ret, align 4, !dbg !4891
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.zl10353_read_register, i64 0, i64 0), i32 %conv12, i32 %10) #12, !dbg !4892
  %11 = load i32, i32* %ret, align 4, !dbg !4893
  store i32 %11, i32* %retval, align 4, !dbg !4894
  br label %return, !dbg !4894

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4895
  %12 = load i8, i8* %arrayidx, align 1, !dbg !4895
  %conv14 = zext i8 %12 to i32, !dbg !4895
  store i32 %conv14, i32* %retval, align 4, !dbg !4896
  br label %return, !dbg !4896

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !4897
  ret i32 %13, !dbg !4897
}

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
define internal i32 @get_order(i64 %size) #6 !dbg !4898 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4902, metadata !DIExpression()), !dbg !4907
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4909, metadata !DIExpression()), !dbg !4910
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4911, metadata !DIExpression()), !dbg !4912
  %0 = load i64, i64* %size.addr, align 8, !dbg !4913
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4915
  br i1 %1, label %if.then, label %if.end447, !dbg !4916

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4917
  %tobool = icmp ne i64 %2, 0, !dbg !4917
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4920

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4921
  br label %return, !dbg !4921

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4922
  %cmp = icmp ult i64 %3, 4096, !dbg !4924
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4925

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4926
  br label %return, !dbg !4926

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub = sub i64 %4, 1, !dbg !4927
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4927
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4927

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub4 = sub i64 %6, 1, !dbg !4927
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4927
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4927

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub6 = sub i64 %8, 1, !dbg !4927
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4927
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4927

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4927

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub9 = sub i64 %9, 1, !dbg !4927
  %and = and i64 %sub9, -9223372036854775808, !dbg !4927
  %tobool10 = icmp ne i64 %and, 0, !dbg !4927
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4927

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4927

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub13 = sub i64 %10, 1, !dbg !4927
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4927
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4927
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4927

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4927

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub18 = sub i64 %11, 1, !dbg !4927
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4927
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4927
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4927

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4927

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub23 = sub i64 %12, 1, !dbg !4927
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4927
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4927
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4927

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4927

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub28 = sub i64 %13, 1, !dbg !4927
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4927
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4927
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4927

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4927

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub33 = sub i64 %14, 1, !dbg !4927
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4927
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4927
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4927

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4927

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub38 = sub i64 %15, 1, !dbg !4927
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4927
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4927
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4927

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4927

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub43 = sub i64 %16, 1, !dbg !4927
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4927
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4927
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4927

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4927

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub48 = sub i64 %17, 1, !dbg !4927
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4927
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4927
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4927

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4927

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub53 = sub i64 %18, 1, !dbg !4927
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4927
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4927
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4927

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4927

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub58 = sub i64 %19, 1, !dbg !4927
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4927
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4927
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4927

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4927

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub63 = sub i64 %20, 1, !dbg !4927
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4927
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4927
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4927

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4927

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub68 = sub i64 %21, 1, !dbg !4927
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4927
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4927
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4927

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4927

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub73 = sub i64 %22, 1, !dbg !4927
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4927
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4927
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4927

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4927

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub78 = sub i64 %23, 1, !dbg !4927
  %and79 = and i64 %sub78, 562949953421312, !dbg !4927
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4927
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4927

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4927

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub83 = sub i64 %24, 1, !dbg !4927
  %and84 = and i64 %sub83, 281474976710656, !dbg !4927
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4927
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4927

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4927

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub88 = sub i64 %25, 1, !dbg !4927
  %and89 = and i64 %sub88, 140737488355328, !dbg !4927
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4927
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4927

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4927

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub93 = sub i64 %26, 1, !dbg !4927
  %and94 = and i64 %sub93, 70368744177664, !dbg !4927
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4927
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4927

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4927

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub98 = sub i64 %27, 1, !dbg !4927
  %and99 = and i64 %sub98, 35184372088832, !dbg !4927
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4927
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4927

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4927

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub103 = sub i64 %28, 1, !dbg !4927
  %and104 = and i64 %sub103, 17592186044416, !dbg !4927
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4927
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4927

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4927

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub108 = sub i64 %29, 1, !dbg !4927
  %and109 = and i64 %sub108, 8796093022208, !dbg !4927
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4927
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4927

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4927

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub113 = sub i64 %30, 1, !dbg !4927
  %and114 = and i64 %sub113, 4398046511104, !dbg !4927
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4927
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4927

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4927

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub118 = sub i64 %31, 1, !dbg !4927
  %and119 = and i64 %sub118, 2199023255552, !dbg !4927
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4927
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4927

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4927

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub123 = sub i64 %32, 1, !dbg !4927
  %and124 = and i64 %sub123, 1099511627776, !dbg !4927
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4927
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4927

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4927

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub128 = sub i64 %33, 1, !dbg !4927
  %and129 = and i64 %sub128, 549755813888, !dbg !4927
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4927
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4927

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4927

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub133 = sub i64 %34, 1, !dbg !4927
  %and134 = and i64 %sub133, 274877906944, !dbg !4927
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4927
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4927

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4927

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub138 = sub i64 %35, 1, !dbg !4927
  %and139 = and i64 %sub138, 137438953472, !dbg !4927
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4927
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4927

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4927

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub143 = sub i64 %36, 1, !dbg !4927
  %and144 = and i64 %sub143, 68719476736, !dbg !4927
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4927
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4927

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4927

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub148 = sub i64 %37, 1, !dbg !4927
  %and149 = and i64 %sub148, 34359738368, !dbg !4927
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4927
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4927

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4927

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub153 = sub i64 %38, 1, !dbg !4927
  %and154 = and i64 %sub153, 17179869184, !dbg !4927
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4927
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4927

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4927

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub158 = sub i64 %39, 1, !dbg !4927
  %and159 = and i64 %sub158, 8589934592, !dbg !4927
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4927
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4927

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4927

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub163 = sub i64 %40, 1, !dbg !4927
  %and164 = and i64 %sub163, 4294967296, !dbg !4927
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4927
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4927

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4927

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub168 = sub i64 %41, 1, !dbg !4927
  %and169 = and i64 %sub168, 2147483648, !dbg !4927
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4927
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4927

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4927

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub173 = sub i64 %42, 1, !dbg !4927
  %and174 = and i64 %sub173, 1073741824, !dbg !4927
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4927
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4927

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4927

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub178 = sub i64 %43, 1, !dbg !4927
  %and179 = and i64 %sub178, 536870912, !dbg !4927
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4927
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4927

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4927

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub183 = sub i64 %44, 1, !dbg !4927
  %and184 = and i64 %sub183, 268435456, !dbg !4927
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4927
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4927

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4927

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub188 = sub i64 %45, 1, !dbg !4927
  %and189 = and i64 %sub188, 134217728, !dbg !4927
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4927
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4927

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4927

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub193 = sub i64 %46, 1, !dbg !4927
  %and194 = and i64 %sub193, 67108864, !dbg !4927
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4927
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4927

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4927

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub198 = sub i64 %47, 1, !dbg !4927
  %and199 = and i64 %sub198, 33554432, !dbg !4927
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4927
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4927

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4927

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub203 = sub i64 %48, 1, !dbg !4927
  %and204 = and i64 %sub203, 16777216, !dbg !4927
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4927
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4927

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4927

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub208 = sub i64 %49, 1, !dbg !4927
  %and209 = and i64 %sub208, 8388608, !dbg !4927
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4927
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4927

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4927

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub213 = sub i64 %50, 1, !dbg !4927
  %and214 = and i64 %sub213, 4194304, !dbg !4927
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4927
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4927

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4927

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub218 = sub i64 %51, 1, !dbg !4927
  %and219 = and i64 %sub218, 2097152, !dbg !4927
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4927
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4927

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4927

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub223 = sub i64 %52, 1, !dbg !4927
  %and224 = and i64 %sub223, 1048576, !dbg !4927
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4927
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4927

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4927

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub228 = sub i64 %53, 1, !dbg !4927
  %and229 = and i64 %sub228, 524288, !dbg !4927
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4927
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4927

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4927

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub233 = sub i64 %54, 1, !dbg !4927
  %and234 = and i64 %sub233, 262144, !dbg !4927
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4927
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4927

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4927

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub238 = sub i64 %55, 1, !dbg !4927
  %and239 = and i64 %sub238, 131072, !dbg !4927
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4927
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4927

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4927

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub243 = sub i64 %56, 1, !dbg !4927
  %and244 = and i64 %sub243, 65536, !dbg !4927
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4927
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4927

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4927

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub248 = sub i64 %57, 1, !dbg !4927
  %and249 = and i64 %sub248, 32768, !dbg !4927
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4927
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4927

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4927

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub253 = sub i64 %58, 1, !dbg !4927
  %and254 = and i64 %sub253, 16384, !dbg !4927
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4927
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4927

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4927

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub258 = sub i64 %59, 1, !dbg !4927
  %and259 = and i64 %sub258, 8192, !dbg !4927
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4927
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4927

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4927

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub263 = sub i64 %60, 1, !dbg !4927
  %and264 = and i64 %sub263, 4096, !dbg !4927
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4927
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4927

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4927

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub268 = sub i64 %61, 1, !dbg !4927
  %and269 = and i64 %sub268, 2048, !dbg !4927
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4927
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4927

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4927

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub273 = sub i64 %62, 1, !dbg !4927
  %and274 = and i64 %sub273, 1024, !dbg !4927
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4927
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4927

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4927

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub278 = sub i64 %63, 1, !dbg !4927
  %and279 = and i64 %sub278, 512, !dbg !4927
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4927
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4927

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4927

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub283 = sub i64 %64, 1, !dbg !4927
  %and284 = and i64 %sub283, 256, !dbg !4927
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4927
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4927

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4927

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub288 = sub i64 %65, 1, !dbg !4927
  %and289 = and i64 %sub288, 128, !dbg !4927
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4927
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4927

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4927

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub293 = sub i64 %66, 1, !dbg !4927
  %and294 = and i64 %sub293, 64, !dbg !4927
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4927
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4927

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4927

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub298 = sub i64 %67, 1, !dbg !4927
  %and299 = and i64 %sub298, 32, !dbg !4927
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4927
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4927

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4927

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub303 = sub i64 %68, 1, !dbg !4927
  %and304 = and i64 %sub303, 16, !dbg !4927
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4927
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4927

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4927

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub308 = sub i64 %69, 1, !dbg !4927
  %and309 = and i64 %sub308, 8, !dbg !4927
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4927
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4927

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4927

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub313 = sub i64 %70, 1, !dbg !4927
  %and314 = and i64 %sub313, 4, !dbg !4927
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4927
  %71 = zext i1 %tobool315 to i64, !dbg !4927
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4927
  br label %cond.end, !dbg !4927

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4927
  br label %cond.end317, !dbg !4927

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4927
  br label %cond.end319, !dbg !4927

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4927
  br label %cond.end321, !dbg !4927

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4927
  br label %cond.end323, !dbg !4927

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4927
  br label %cond.end325, !dbg !4927

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4927
  br label %cond.end327, !dbg !4927

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4927
  br label %cond.end329, !dbg !4927

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4927
  br label %cond.end331, !dbg !4927

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4927
  br label %cond.end333, !dbg !4927

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4927
  br label %cond.end335, !dbg !4927

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4927
  br label %cond.end337, !dbg !4927

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4927
  br label %cond.end339, !dbg !4927

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4927
  br label %cond.end341, !dbg !4927

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4927
  br label %cond.end343, !dbg !4927

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4927
  br label %cond.end345, !dbg !4927

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4927
  br label %cond.end347, !dbg !4927

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4927
  br label %cond.end349, !dbg !4927

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4927
  br label %cond.end351, !dbg !4927

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4927
  br label %cond.end353, !dbg !4927

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4927
  br label %cond.end355, !dbg !4927

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4927
  br label %cond.end357, !dbg !4927

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4927
  br label %cond.end359, !dbg !4927

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4927
  br label %cond.end361, !dbg !4927

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4927
  br label %cond.end363, !dbg !4927

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4927
  br label %cond.end365, !dbg !4927

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4927
  br label %cond.end367, !dbg !4927

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4927
  br label %cond.end369, !dbg !4927

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4927
  br label %cond.end371, !dbg !4927

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4927
  br label %cond.end373, !dbg !4927

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4927
  br label %cond.end375, !dbg !4927

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4927
  br label %cond.end377, !dbg !4927

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4927
  br label %cond.end379, !dbg !4927

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4927
  br label %cond.end381, !dbg !4927

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4927
  br label %cond.end383, !dbg !4927

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4927
  br label %cond.end385, !dbg !4927

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4927
  br label %cond.end387, !dbg !4927

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4927
  br label %cond.end389, !dbg !4927

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4927
  br label %cond.end391, !dbg !4927

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4927
  br label %cond.end393, !dbg !4927

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4927
  br label %cond.end395, !dbg !4927

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4927
  br label %cond.end397, !dbg !4927

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4927
  br label %cond.end399, !dbg !4927

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4927
  br label %cond.end401, !dbg !4927

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4927
  br label %cond.end403, !dbg !4927

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4927
  br label %cond.end405, !dbg !4927

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4927
  br label %cond.end407, !dbg !4927

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4927
  br label %cond.end409, !dbg !4927

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4927
  br label %cond.end411, !dbg !4927

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4927
  br label %cond.end413, !dbg !4927

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4927
  br label %cond.end415, !dbg !4927

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4927
  br label %cond.end417, !dbg !4927

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4927
  br label %cond.end419, !dbg !4927

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4927
  br label %cond.end421, !dbg !4927

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4927
  br label %cond.end423, !dbg !4927

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4927
  br label %cond.end425, !dbg !4927

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4927
  br label %cond.end427, !dbg !4927

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4927
  br label %cond.end429, !dbg !4927

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4927
  br label %cond.end431, !dbg !4927

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4927
  br label %cond.end433, !dbg !4927

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4927
  br label %cond.end435, !dbg !4927

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4927
  br label %cond.end437, !dbg !4927

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4927
  br label %cond.end440, !dbg !4927

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4927

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4927
  br label %cond.end444, !dbg !4927

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub443 = sub i64 %72, 1, !dbg !4927
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4927
  br label %cond.end444, !dbg !4927

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4927
  %sub446 = sub i32 %cond445, 12, !dbg !4928
  %add = add i32 %sub446, 1, !dbg !4929
  store i32 %add, i32* %retval, align 4, !dbg !4930
  br label %return, !dbg !4930

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4931
  %dec = add i64 %73, -1, !dbg !4931
  store i64 %dec, i64* %size.addr, align 8, !dbg !4931
  %74 = load i64, i64* %size.addr, align 8, !dbg !4932
  %shr = lshr i64 %74, 12, !dbg !4932
  store i64 %shr, i64* %size.addr, align 8, !dbg !4932
  %75 = load i64, i64* %size.addr, align 8, !dbg !4933
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4910
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4934
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4935
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4934, !srcloc !4936
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4934
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4937
  %add.i = add i32 %79, 1, !dbg !4938
  store i32 %add.i, i32* %retval, align 4, !dbg !4939
  br label %return, !dbg !4939

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4940
  ret i32 %80, !dbg !4940
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4941 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4902, metadata !DIExpression()), !dbg !4945
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4909, metadata !DIExpression()), !dbg !4947
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4948, metadata !DIExpression()), !dbg !4949
  %0 = load i64, i64* %n.addr, align 8, !dbg !4950
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4947
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4951
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4952
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4951, !srcloc !4936
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4951
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4953
  %add.i = add i32 %4, 1, !dbg !4954
  %sub = sub i32 %add.i, 1, !dbg !4955
  ret i32 %sub, !dbg !4956
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4957 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4961, metadata !DIExpression()), !dbg !4962
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4963, metadata !DIExpression()), !dbg !4964
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4965, metadata !DIExpression()), !dbg !4966
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4967, metadata !DIExpression()), !dbg !4968
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4969
  ret i8* %0, !dbg !4970
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @zl10353_release(%struct.dvb_frontend* %fe) #0 !dbg !4971 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.zl10353_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4972, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.declare(metadata %struct.zl10353_state** %state, metadata !4974, metadata !DIExpression()), !dbg !4975
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4976
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4977
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4977
  %2 = bitcast i8* %1 to %struct.zl10353_state*, !dbg !4976
  store %struct.zl10353_state* %2, %struct.zl10353_state** %state, align 8, !dbg !4975
  %3 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !4978
  %4 = bitcast %struct.zl10353_state* %3 to i8*, !dbg !4978
  call void @kfree(i8* %4) #8, !dbg !4979
  ret void, !dbg !4980
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zl10353_init(%struct.dvb_frontend* %fe) #0 !dbg !4981 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.zl10353_state*, align 8
  %zl10353_reset_attach = alloca [6 x i8], align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4982, metadata !DIExpression()), !dbg !4983
  call void @llvm.dbg.declare(metadata %struct.zl10353_state** %state, metadata !4984, metadata !DIExpression()), !dbg !4985
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4986
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4987
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4987
  %2 = bitcast i8* %1 to %struct.zl10353_state*, !dbg !4986
  store %struct.zl10353_state* %2, %struct.zl10353_state** %state, align 8, !dbg !4985
  call void @llvm.dbg.declare(metadata [6 x i8]* %zl10353_reset_attach, metadata !4988, metadata !DIExpression()), !dbg !4989
  %3 = bitcast [6 x i8]* %zl10353_reset_attach to i8*, !dbg !4989
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.zl10353_init.zl10353_reset_attach, i32 0, i32 0), i64 6, i1 false), !dbg !4989
  %4 = load i32, i32* @debug_regs, align 4, !dbg !4990
  %tobool = icmp ne i32 %4, 0, !dbg !4990
  br i1 %tobool, label %if.then, label %if.end, !dbg !4992

if.then:                                          ; preds = %entry
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4993
  call void @zl10353_dump_regs(%struct.dvb_frontend* %5) #8, !dbg !4994
  br label %if.end, !dbg !4994

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !4995
  %config = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %6, i32 0, i32 2, !dbg !4997
  %parallel_ts = getelementptr inbounds %struct.zl10353_config, %struct.zl10353_config* %config, i32 0, i32 4, !dbg !4998
  %7 = load i32, i32* %parallel_ts, align 8, !dbg !4998
  %tobool1 = icmp ne i32 %7, 0, !dbg !4995
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !4999

if.then2:                                         ; preds = %if.end
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %zl10353_reset_attach, i64 0, i64 2, !dbg !5000
  %8 = load i8, i8* %arrayidx, align 1, !dbg !5001
  %conv = zext i8 %8 to i32, !dbg !5001
  %and = and i32 %conv, -33, !dbg !5001
  %conv3 = trunc i32 %and to i8, !dbg !5001
  store i8 %conv3, i8* %arrayidx, align 1, !dbg !5001
  br label %if.end4, !dbg !5000

if.end4:                                          ; preds = %if.then2, %if.end
  %9 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5002
  %config5 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %9, i32 0, i32 2, !dbg !5004
  %clock_ctl_1 = getelementptr inbounds %struct.zl10353_config, %struct.zl10353_config* %config5, i32 0, i32 6, !dbg !5005
  %10 = load i8, i8* %clock_ctl_1, align 1, !dbg !5005
  %tobool6 = icmp ne i8 %10, 0, !dbg !5002
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !5006

if.then7:                                         ; preds = %if.end4
  %11 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5007
  %config8 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %11, i32 0, i32 2, !dbg !5008
  %clock_ctl_19 = getelementptr inbounds %struct.zl10353_config, %struct.zl10353_config* %config8, i32 0, i32 6, !dbg !5009
  %12 = load i8, i8* %clock_ctl_19, align 1, !dbg !5009
  %arrayidx10 = getelementptr [6 x i8], [6 x i8]* %zl10353_reset_attach, i64 0, i64 3, !dbg !5010
  store i8 %12, i8* %arrayidx10, align 1, !dbg !5011
  br label %if.end11, !dbg !5010

if.end11:                                         ; preds = %if.then7, %if.end4
  %13 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5012
  %config12 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %13, i32 0, i32 2, !dbg !5014
  %pll_0 = getelementptr inbounds %struct.zl10353_config, %struct.zl10353_config* %config12, i32 0, i32 7, !dbg !5015
  %14 = load i8, i8* %pll_0, align 2, !dbg !5015
  %tobool13 = icmp ne i8 %14, 0, !dbg !5012
  br i1 %tobool13, label %if.then14, label %if.end18, !dbg !5016

if.then14:                                        ; preds = %if.end11
  %15 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5017
  %config15 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %15, i32 0, i32 2, !dbg !5018
  %pll_016 = getelementptr inbounds %struct.zl10353_config, %struct.zl10353_config* %config15, i32 0, i32 7, !dbg !5019
  %16 = load i8, i8* %pll_016, align 2, !dbg !5019
  %arrayidx17 = getelementptr [6 x i8], [6 x i8]* %zl10353_reset_attach, i64 0, i64 4, !dbg !5020
  store i8 %16, i8* %arrayidx17, align 1, !dbg !5021
  br label %if.end18, !dbg !5020

if.end18:                                         ; preds = %if.then14, %if.end11
  %17 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5022
  %call = call i32 @zl10353_read_register(%struct.zl10353_state* %17, i8 zeroext 80) #8, !dbg !5024
  %arrayidx19 = getelementptr [6 x i8], [6 x i8]* %zl10353_reset_attach, i64 0, i64 1, !dbg !5025
  %18 = load i8, i8* %arrayidx19, align 1, !dbg !5025
  %conv20 = zext i8 %18 to i32, !dbg !5025
  %cmp = icmp ne i32 %call, %conv20, !dbg !5026
  br i1 %cmp, label %if.then27, label %lor.lhs.false, !dbg !5027

lor.lhs.false:                                    ; preds = %if.end18
  %19 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5028
  %call22 = call i32 @zl10353_read_register(%struct.zl10353_state* %19, i8 zeroext 81) #8, !dbg !5029
  %arrayidx23 = getelementptr [6 x i8], [6 x i8]* %zl10353_reset_attach, i64 0, i64 2, !dbg !5030
  %20 = load i8, i8* %arrayidx23, align 1, !dbg !5030
  %conv24 = zext i8 %20 to i32, !dbg !5030
  %cmp25 = icmp ne i32 %call22, %conv24, !dbg !5031
  br i1 %cmp25, label %if.then27, label %if.end32, !dbg !5032

if.then27:                                        ; preds = %lor.lhs.false, %if.end18
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5033
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %zl10353_reset_attach, i64 0, i64 0, !dbg !5035
  %call28 = call i32 @zl10353_write(%struct.dvb_frontend* %21, i8* %arraydecay, i32 6) #8, !dbg !5036
  %22 = load i32, i32* @debug_regs, align 4, !dbg !5037
  %tobool29 = icmp ne i32 %22, 0, !dbg !5037
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !5039

if.then30:                                        ; preds = %if.then27
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5040
  call void @zl10353_dump_regs(%struct.dvb_frontend* %23) #8, !dbg !5041
  br label %if.end31, !dbg !5041

if.end31:                                         ; preds = %if.then30, %if.then27
  br label %if.end32, !dbg !5042

if.end32:                                         ; preds = %if.end31, %lor.lhs.false
  ret i32 0, !dbg !5043
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zl10353_sleep(%struct.dvb_frontend* %fe) #0 !dbg !465 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5044, metadata !DIExpression()), !dbg !5045
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5046
  %call = call i32 @zl10353_write(%struct.dvb_frontend* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @zl10353_sleep.zl10353_softdown, i64 0, i64 0), i32 3) #8, !dbg !5047
  ret i32 0, !dbg !5048
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zl10353_write(%struct.dvb_frontend* %fe, i8* %ibuf, i32 %ilen) #0 !dbg !5049 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ibuf.addr = alloca i8*, align 8
  %ilen.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5050, metadata !DIExpression()), !dbg !5051
  store i8* %ibuf, i8** %ibuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ibuf.addr, metadata !5052, metadata !DIExpression()), !dbg !5053
  store i32 %ilen, i32* %ilen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ilen.addr, metadata !5054, metadata !DIExpression()), !dbg !5055
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5056, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5058, metadata !DIExpression()), !dbg !5059
  store i32 0, i32* %i, align 4, !dbg !5060
  br label %for.cond, !dbg !5062

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5063
  %1 = load i32, i32* %ilen.addr, align 4, !dbg !5065
  %sub = sub i32 %1, 1, !dbg !5066
  %cmp = icmp slt i32 %0, %sub, !dbg !5067
  br i1 %cmp, label %for.body, label %for.end, !dbg !5068

for.body:                                         ; preds = %for.cond
  %2 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5069
  %3 = load i8*, i8** %ibuf.addr, align 8, !dbg !5071
  %arrayidx = getelementptr i8, i8* %3, i64 0, !dbg !5071
  %4 = load i8, i8* %arrayidx, align 1, !dbg !5071
  %conv = zext i8 %4 to i32, !dbg !5071
  %5 = load i32, i32* %i, align 4, !dbg !5072
  %add = add i32 %conv, %5, !dbg !5073
  %conv1 = trunc i32 %add to i8, !dbg !5071
  %6 = load i8*, i8** %ibuf.addr, align 8, !dbg !5074
  %7 = load i32, i32* %i, align 4, !dbg !5075
  %add2 = add i32 %7, 1, !dbg !5076
  %idxprom = sext i32 %add2 to i64, !dbg !5074
  %arrayidx3 = getelementptr i8, i8* %6, i64 %idxprom, !dbg !5074
  %8 = load i8, i8* %arrayidx3, align 1, !dbg !5074
  %call = call i32 @zl10353_single_write(%struct.dvb_frontend* %2, i8 zeroext %conv1, i8 zeroext %8) #8, !dbg !5077
  store i32 %call, i32* %err, align 4, !dbg !5078
  %tobool = icmp ne i32 %call, 0, !dbg !5078
  br i1 %tobool, label %if.then, label %if.end, !dbg !5079

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %err, align 4, !dbg !5080
  store i32 %9, i32* %retval, align 4, !dbg !5081
  br label %return, !dbg !5081

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5082

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !dbg !5083
  %inc = add i32 %10, 1, !dbg !5083
  store i32 %inc, i32* %i, align 4, !dbg !5083
  br label %for.cond, !dbg !5084, !llvm.loop !5085

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5087
  br label %return, !dbg !5087

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5088
  ret i32 %11, !dbg !5088
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zl10353_set_parameters(%struct.dvb_frontend* %fe) #0 !dbg !5089 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.zl10353_state*, align 8
  %nominal_rate = alloca i16, align 2
  %input_freq = alloca i16, align 2
  %pllbuf = alloca [6 x i8], align 1
  %acq_ctl = alloca i8, align 1
  %tps = alloca i16, align 2
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5090, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5092, metadata !DIExpression()), !dbg !5093
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5094
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5095
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5093
  call void @llvm.dbg.declare(metadata %struct.zl10353_state** %state, metadata !5096, metadata !DIExpression()), !dbg !5097
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5098
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 3, !dbg !5099
  %2 = load i8*, i8** %demodulator_priv, align 8, !dbg !5099
  %3 = bitcast i8* %2 to %struct.zl10353_state*, !dbg !5098
  store %struct.zl10353_state* %3, %struct.zl10353_state** %state, align 8, !dbg !5097
  call void @llvm.dbg.declare(metadata i16* %nominal_rate, metadata !5100, metadata !DIExpression()), !dbg !5101
  call void @llvm.dbg.declare(metadata i16* %input_freq, metadata !5102, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.declare(metadata [6 x i8]* %pllbuf, metadata !5104, metadata !DIExpression()), !dbg !5105
  %4 = bitcast [6 x i8]* %pllbuf to i8*, !dbg !5105
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.zl10353_set_parameters.pllbuf, i32 0, i32 0), i64 6, i1 false), !dbg !5105
  call void @llvm.dbg.declare(metadata i8* %acq_ctl, metadata !5106, metadata !DIExpression()), !dbg !5107
  store i8 0, i8* %acq_ctl, align 1, !dbg !5107
  call void @llvm.dbg.declare(metadata i16* %tps, metadata !5108, metadata !DIExpression()), !dbg !5109
  store i16 0, i16* %tps, align 2, !dbg !5109
  %5 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5110
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 0, !dbg !5111
  %6 = load i32, i32* %frequency, align 4, !dbg !5111
  %7 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5112
  %frequency1 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %7, i32 0, i32 5, !dbg !5113
  store i32 %6, i32* %frequency1, align 8, !dbg !5114
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5115
  %call = call i32 @zl10353_single_write(%struct.dvb_frontend* %8, i8 zeroext 85, i8 zeroext -128) #8, !dbg !5116
  call void @__const_udelay(i64 859000) #8, !dbg !5117
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5122
  %call2 = call i32 @zl10353_single_write(%struct.dvb_frontend* %9, i8 zeroext -22, i8 zeroext 1) #8, !dbg !5123
  call void @__const_udelay(i64 859000) #8, !dbg !5124
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5129
  %call3 = call i32 @zl10353_single_write(%struct.dvb_frontend* %10, i8 zeroext -22, i8 zeroext 0) #8, !dbg !5130
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5131
  %call4 = call i32 @zl10353_single_write(%struct.dvb_frontend* %11, i8 zeroext 86, i8 zeroext 40) #8, !dbg !5132
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5133
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 6, !dbg !5135
  %13 = load i32, i32* %transmission_mode, align 4, !dbg !5135
  %cmp = icmp ne i32 %13, 2, !dbg !5136
  br i1 %cmp, label %if.then, label %if.end, !dbg !5137

if.then:                                          ; preds = %entry
  %14 = load i8, i8* %acq_ctl, align 1, !dbg !5138
  %conv = zext i8 %14 to i32, !dbg !5138
  %or = or i32 %conv, 1, !dbg !5138
  %conv5 = trunc i32 %or to i8, !dbg !5138
  store i8 %conv5, i8* %acq_ctl, align 1, !dbg !5138
  br label %if.end, !dbg !5139

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5140
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 8, !dbg !5142
  %16 = load i32, i32* %guard_interval, align 4, !dbg !5142
  %cmp6 = icmp ne i32 %16, 4, !dbg !5143
  br i1 %cmp6, label %if.then8, label %if.end12, !dbg !5144

if.then8:                                         ; preds = %if.end
  %17 = load i8, i8* %acq_ctl, align 1, !dbg !5145
  %conv9 = zext i8 %17 to i32, !dbg !5145
  %or10 = or i32 %conv9, 2, !dbg !5145
  %conv11 = trunc i32 %or10 to i8, !dbg !5145
  store i8 %conv11, i8* %acq_ctl, align 1, !dbg !5145
  br label %if.end12, !dbg !5146

if.end12:                                         ; preds = %if.then8, %if.end
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5147
  %19 = load i8, i8* %acq_ctl, align 1, !dbg !5148
  %call13 = call i32 @zl10353_single_write(%struct.dvb_frontend* %18, i8 zeroext 94, i8 zeroext %19) #8, !dbg !5149
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5150
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 7, !dbg !5151
  %21 = load i32, i32* %bandwidth_hz, align 4, !dbg !5151
  switch i32 %21, label %sw.default [
    i32 6000000, label %sw.bb
    i32 7000000, label %sw.bb17
    i32 8000000, label %sw.bb22
  ], !dbg !5152

sw.bb:                                            ; preds = %if.end12
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5153
  %call14 = call i32 @zl10353_single_write(%struct.dvb_frontend* %22, i8 zeroext 92, i8 zeroext -105) #8, !dbg !5155
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5156
  %call15 = call i32 @zl10353_single_write(%struct.dvb_frontend* %23, i8 zeroext 100, i8 zeroext 52) #8, !dbg !5157
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5158
  %call16 = call i32 @zl10353_single_write(%struct.dvb_frontend* %24, i8 zeroext -52, i8 zeroext -35) #8, !dbg !5159
  br label %sw.epilog, !dbg !5160

sw.bb17:                                          ; preds = %if.end12
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5161
  %call18 = call i32 @zl10353_single_write(%struct.dvb_frontend* %25, i8 zeroext 92, i8 zeroext -122) #8, !dbg !5162
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5163
  %call19 = call i32 @zl10353_single_write(%struct.dvb_frontend* %26, i8 zeroext 100, i8 zeroext 53) #8, !dbg !5164
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5165
  %call20 = call i32 @zl10353_single_write(%struct.dvb_frontend* %27, i8 zeroext -52, i8 zeroext 115) #8, !dbg !5166
  br label %sw.epilog, !dbg !5167

sw.default:                                       ; preds = %if.end12
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5168
  %bandwidth_hz21 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 7, !dbg !5169
  store i32 8000000, i32* %bandwidth_hz21, align 4, !dbg !5170
  br label %sw.bb22, !dbg !5168

sw.bb22:                                          ; preds = %if.end12, %sw.default
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5171
  %call23 = call i32 @zl10353_single_write(%struct.dvb_frontend* %29, i8 zeroext 92, i8 zeroext 117) #8, !dbg !5172
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5173
  %call24 = call i32 @zl10353_single_write(%struct.dvb_frontend* %30, i8 zeroext 100, i8 zeroext 54) #8, !dbg !5174
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5175
  %call25 = call i32 @zl10353_single_write(%struct.dvb_frontend* %31, i8 zeroext -52, i8 zeroext 115) #8, !dbg !5176
  br label %sw.epilog, !dbg !5177

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb17, %sw.bb
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5178
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5179
  %bandwidth_hz26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 7, !dbg !5180
  %34 = load i32, i32* %bandwidth_hz26, align 4, !dbg !5180
  call void @zl10353_calc_nominal_rate(%struct.dvb_frontend* %32, i32 %34, i16* %nominal_rate) #8, !dbg !5181
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5182
  %36 = load i16, i16* %nominal_rate, align 2, !dbg !5183
  %conv27 = zext i16 %36 to i32, !dbg !5183
  %shr = ashr i32 %conv27, 8, !dbg !5183
  %and = and i32 %shr, 255, !dbg !5183
  %conv28 = trunc i32 %and to i8, !dbg !5183
  %call29 = call i32 @zl10353_single_write(%struct.dvb_frontend* %35, i8 zeroext 101, i8 zeroext %conv28) #8, !dbg !5184
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5185
  %38 = load i16, i16* %nominal_rate, align 2, !dbg !5186
  %conv30 = zext i16 %38 to i32, !dbg !5186
  %and31 = and i32 %conv30, 255, !dbg !5186
  %conv32 = trunc i32 %and31 to i8, !dbg !5186
  %call33 = call i32 @zl10353_single_write(%struct.dvb_frontend* %37, i8 zeroext 102, i8 zeroext %conv32) #8, !dbg !5187
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5188
  %bandwidth_hz34 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 7, !dbg !5189
  %40 = load i32, i32* %bandwidth_hz34, align 4, !dbg !5189
  %41 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5190
  %bandwidth = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %41, i32 0, i32 3, !dbg !5191
  store i32 %40, i32* %bandwidth, align 8, !dbg !5192
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5193
  call void @zl10353_calc_input_freq(%struct.dvb_frontend* %42, i16* %input_freq) #8, !dbg !5194
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5195
  %44 = load i16, i16* %input_freq, align 2, !dbg !5196
  %conv35 = zext i16 %44 to i32, !dbg !5196
  %shr36 = ashr i32 %conv35, 8, !dbg !5196
  %and37 = and i32 %shr36, 255, !dbg !5196
  %conv38 = trunc i32 %and37 to i8, !dbg !5196
  %call39 = call i32 @zl10353_single_write(%struct.dvb_frontend* %43, i8 zeroext 108, i8 zeroext %conv38) #8, !dbg !5197
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5198
  %46 = load i16, i16* %input_freq, align 2, !dbg !5199
  %conv40 = zext i16 %46 to i32, !dbg !5199
  %and41 = and i32 %conv40, 255, !dbg !5199
  %conv42 = trunc i32 %and41 to i8, !dbg !5199
  %call43 = call i32 @zl10353_single_write(%struct.dvb_frontend* %45, i8 zeroext 109, i8 zeroext %conv42) #8, !dbg !5200
  %47 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5201
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %47, i32 0, i32 11, !dbg !5202
  %48 = load i32, i32* %code_rate_HP, align 4, !dbg !5202
  switch i32 %48, label %sw.default61 [
    i32 2, label %sw.bb44
    i32 3, label %sw.bb48
    i32 5, label %sw.bb52
    i32 7, label %sw.bb56
    i32 1, label %sw.bb60
    i32 9, label %sw.bb60
  ], !dbg !5203

sw.bb44:                                          ; preds = %sw.epilog
  %49 = load i16, i16* %tps, align 2, !dbg !5204
  %conv45 = zext i16 %49 to i32, !dbg !5204
  %or46 = or i32 %conv45, 128, !dbg !5204
  %conv47 = trunc i32 %or46 to i16, !dbg !5204
  store i16 %conv47, i16* %tps, align 2, !dbg !5204
  br label %sw.epilog62, !dbg !5206

sw.bb48:                                          ; preds = %sw.epilog
  %50 = load i16, i16* %tps, align 2, !dbg !5207
  %conv49 = zext i16 %50 to i32, !dbg !5207
  %or50 = or i32 %conv49, 256, !dbg !5207
  %conv51 = trunc i32 %or50 to i16, !dbg !5207
  store i16 %conv51, i16* %tps, align 2, !dbg !5207
  br label %sw.epilog62, !dbg !5208

sw.bb52:                                          ; preds = %sw.epilog
  %51 = load i16, i16* %tps, align 2, !dbg !5209
  %conv53 = zext i16 %51 to i32, !dbg !5209
  %or54 = or i32 %conv53, 384, !dbg !5209
  %conv55 = trunc i32 %or54 to i16, !dbg !5209
  store i16 %conv55, i16* %tps, align 2, !dbg !5209
  br label %sw.epilog62, !dbg !5210

sw.bb56:                                          ; preds = %sw.epilog
  %52 = load i16, i16* %tps, align 2, !dbg !5211
  %conv57 = zext i16 %52 to i32, !dbg !5211
  %or58 = or i32 %conv57, 512, !dbg !5211
  %conv59 = trunc i32 %or58 to i16, !dbg !5211
  store i16 %conv59, i16* %tps, align 2, !dbg !5211
  br label %sw.epilog62, !dbg !5212

sw.bb60:                                          ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog62, !dbg !5213

sw.default61:                                     ; preds = %sw.epilog
  store i32 -22, i32* %retval, align 4, !dbg !5214
  br label %return, !dbg !5214

sw.epilog62:                                      ; preds = %sw.bb60, %sw.bb56, %sw.bb52, %sw.bb48, %sw.bb44
  %53 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5215
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %53, i32 0, i32 12, !dbg !5216
  %54 = load i32, i32* %code_rate_LP, align 4, !dbg !5216
  switch i32 %54, label %sw.default88 [
    i32 2, label %sw.bb63
    i32 3, label %sw.bb67
    i32 5, label %sw.bb71
    i32 7, label %sw.bb75
    i32 1, label %sw.bb79
    i32 9, label %sw.bb79
    i32 0, label %sw.bb80
  ], !dbg !5217

sw.bb63:                                          ; preds = %sw.epilog62
  %55 = load i16, i16* %tps, align 2, !dbg !5218
  %conv64 = zext i16 %55 to i32, !dbg !5218
  %or65 = or i32 %conv64, 16, !dbg !5218
  %conv66 = trunc i32 %or65 to i16, !dbg !5218
  store i16 %conv66, i16* %tps, align 2, !dbg !5218
  br label %sw.epilog89, !dbg !5220

sw.bb67:                                          ; preds = %sw.epilog62
  %56 = load i16, i16* %tps, align 2, !dbg !5221
  %conv68 = zext i16 %56 to i32, !dbg !5221
  %or69 = or i32 %conv68, 32, !dbg !5221
  %conv70 = trunc i32 %or69 to i16, !dbg !5221
  store i16 %conv70, i16* %tps, align 2, !dbg !5221
  br label %sw.epilog89, !dbg !5222

sw.bb71:                                          ; preds = %sw.epilog62
  %57 = load i16, i16* %tps, align 2, !dbg !5223
  %conv72 = zext i16 %57 to i32, !dbg !5223
  %or73 = or i32 %conv72, 48, !dbg !5223
  %conv74 = trunc i32 %or73 to i16, !dbg !5223
  store i16 %conv74, i16* %tps, align 2, !dbg !5223
  br label %sw.epilog89, !dbg !5224

sw.bb75:                                          ; preds = %sw.epilog62
  %58 = load i16, i16* %tps, align 2, !dbg !5225
  %conv76 = zext i16 %58 to i32, !dbg !5225
  %or77 = or i32 %conv76, 64, !dbg !5225
  %conv78 = trunc i32 %or77 to i16, !dbg !5225
  store i16 %conv78, i16* %tps, align 2, !dbg !5225
  br label %sw.epilog89, !dbg !5226

sw.bb79:                                          ; preds = %sw.epilog62, %sw.epilog62
  br label %sw.epilog89, !dbg !5227

sw.bb80:                                          ; preds = %sw.epilog62
  %59 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5228
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %59, i32 0, i32 9, !dbg !5230
  %60 = load i32, i32* %hierarchy, align 4, !dbg !5230
  %cmp81 = icmp eq i32 %60, 4, !dbg !5231
  br i1 %cmp81, label %if.then86, label %lor.lhs.false, !dbg !5232

lor.lhs.false:                                    ; preds = %sw.bb80
  %61 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5233
  %hierarchy83 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %61, i32 0, i32 9, !dbg !5234
  %62 = load i32, i32* %hierarchy83, align 4, !dbg !5234
  %cmp84 = icmp eq i32 %62, 0, !dbg !5235
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !5236

if.then86:                                        ; preds = %lor.lhs.false, %sw.bb80
  br label %sw.epilog89, !dbg !5237

if.end87:                                         ; preds = %lor.lhs.false
  br label %sw.default88, !dbg !5238

sw.default88:                                     ; preds = %sw.epilog62, %if.end87
  store i32 -22, i32* %retval, align 4, !dbg !5239
  br label %return, !dbg !5239

sw.epilog89:                                      ; preds = %if.then86, %sw.bb79, %sw.bb75, %sw.bb71, %sw.bb67, %sw.bb63
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5240
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 1, !dbg !5241
  %64 = load i32, i32* %modulation, align 4, !dbg !5241
  switch i32 %64, label %sw.default99 [
    i32 0, label %sw.bb90
    i32 6, label %sw.bb91
    i32 1, label %sw.bb91
    i32 3, label %sw.bb95
  ], !dbg !5242

sw.bb90:                                          ; preds = %sw.epilog89
  br label %sw.epilog100, !dbg !5243

sw.bb91:                                          ; preds = %sw.epilog89, %sw.epilog89
  %65 = load i16, i16* %tps, align 2, !dbg !5245
  %conv92 = zext i16 %65 to i32, !dbg !5245
  %or93 = or i32 %conv92, 8192, !dbg !5245
  %conv94 = trunc i32 %or93 to i16, !dbg !5245
  store i16 %conv94, i16* %tps, align 2, !dbg !5245
  br label %sw.epilog100, !dbg !5246

sw.bb95:                                          ; preds = %sw.epilog89
  %66 = load i16, i16* %tps, align 2, !dbg !5247
  %conv96 = zext i16 %66 to i32, !dbg !5247
  %or97 = or i32 %conv96, 16384, !dbg !5247
  %conv98 = trunc i32 %or97 to i16, !dbg !5247
  store i16 %conv98, i16* %tps, align 2, !dbg !5247
  br label %sw.epilog100, !dbg !5248

sw.default99:                                     ; preds = %sw.epilog89
  store i32 -22, i32* %retval, align 4, !dbg !5249
  br label %return, !dbg !5249

sw.epilog100:                                     ; preds = %sw.bb95, %sw.bb91, %sw.bb90
  %67 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5250
  %transmission_mode101 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %67, i32 0, i32 6, !dbg !5251
  %68 = load i32, i32* %transmission_mode101, align 4, !dbg !5251
  switch i32 %68, label %sw.default107 [
    i32 0, label %sw.bb102
    i32 2, label %sw.bb102
    i32 1, label %sw.bb103
  ], !dbg !5252

sw.bb102:                                         ; preds = %sw.epilog100, %sw.epilog100
  br label %sw.epilog108, !dbg !5253

sw.bb103:                                         ; preds = %sw.epilog100
  %69 = load i16, i16* %tps, align 2, !dbg !5255
  %conv104 = zext i16 %69 to i32, !dbg !5255
  %or105 = or i32 %conv104, 1, !dbg !5255
  %conv106 = trunc i32 %or105 to i16, !dbg !5255
  store i16 %conv106, i16* %tps, align 2, !dbg !5255
  br label %sw.epilog108, !dbg !5256

sw.default107:                                    ; preds = %sw.epilog100
  store i32 -22, i32* %retval, align 4, !dbg !5257
  br label %return, !dbg !5257

sw.epilog108:                                     ; preds = %sw.bb103, %sw.bb102
  %70 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5258
  %guard_interval109 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %70, i32 0, i32 8, !dbg !5259
  %71 = load i32, i32* %guard_interval109, align 4, !dbg !5259
  switch i32 %71, label %sw.default123 [
    i32 0, label %sw.bb110
    i32 4, label %sw.bb110
    i32 1, label %sw.bb111
    i32 2, label %sw.bb115
    i32 3, label %sw.bb119
  ], !dbg !5260

sw.bb110:                                         ; preds = %sw.epilog108, %sw.epilog108
  br label %sw.epilog124, !dbg !5261

sw.bb111:                                         ; preds = %sw.epilog108
  %72 = load i16, i16* %tps, align 2, !dbg !5263
  %conv112 = zext i16 %72 to i32, !dbg !5263
  %or113 = or i32 %conv112, 4, !dbg !5263
  %conv114 = trunc i32 %or113 to i16, !dbg !5263
  store i16 %conv114, i16* %tps, align 2, !dbg !5263
  br label %sw.epilog124, !dbg !5264

sw.bb115:                                         ; preds = %sw.epilog108
  %73 = load i16, i16* %tps, align 2, !dbg !5265
  %conv116 = zext i16 %73 to i32, !dbg !5265
  %or117 = or i32 %conv116, 8, !dbg !5265
  %conv118 = trunc i32 %or117 to i16, !dbg !5265
  store i16 %conv118, i16* %tps, align 2, !dbg !5265
  br label %sw.epilog124, !dbg !5266

sw.bb119:                                         ; preds = %sw.epilog108
  %74 = load i16, i16* %tps, align 2, !dbg !5267
  %conv120 = zext i16 %74 to i32, !dbg !5267
  %or121 = or i32 %conv120, 12, !dbg !5267
  %conv122 = trunc i32 %or121 to i16, !dbg !5267
  store i16 %conv122, i16* %tps, align 2, !dbg !5267
  br label %sw.epilog124, !dbg !5268

sw.default123:                                    ; preds = %sw.epilog108
  store i32 -22, i32* %retval, align 4, !dbg !5269
  br label %return, !dbg !5269

sw.epilog124:                                     ; preds = %sw.bb119, %sw.bb115, %sw.bb111, %sw.bb110
  %75 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5270
  %hierarchy125 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %75, i32 0, i32 9, !dbg !5271
  %76 = load i32, i32* %hierarchy125, align 4, !dbg !5271
  switch i32 %76, label %sw.default139 [
    i32 4, label %sw.bb126
    i32 0, label %sw.bb126
    i32 1, label %sw.bb127
    i32 2, label %sw.bb131
    i32 3, label %sw.bb135
  ], !dbg !5272

sw.bb126:                                         ; preds = %sw.epilog124, %sw.epilog124
  br label %sw.epilog140, !dbg !5273

sw.bb127:                                         ; preds = %sw.epilog124
  %77 = load i16, i16* %tps, align 2, !dbg !5275
  %conv128 = zext i16 %77 to i32, !dbg !5275
  %or129 = or i32 %conv128, 1024, !dbg !5275
  %conv130 = trunc i32 %or129 to i16, !dbg !5275
  store i16 %conv130, i16* %tps, align 2, !dbg !5275
  br label %sw.epilog140, !dbg !5276

sw.bb131:                                         ; preds = %sw.epilog124
  %78 = load i16, i16* %tps, align 2, !dbg !5277
  %conv132 = zext i16 %78 to i32, !dbg !5277
  %or133 = or i32 %conv132, 2048, !dbg !5277
  %conv134 = trunc i32 %or133 to i16, !dbg !5277
  store i16 %conv134, i16* %tps, align 2, !dbg !5277
  br label %sw.epilog140, !dbg !5278

sw.bb135:                                         ; preds = %sw.epilog124
  %79 = load i16, i16* %tps, align 2, !dbg !5279
  %conv136 = zext i16 %79 to i32, !dbg !5279
  %or137 = or i32 %conv136, 3072, !dbg !5279
  %conv138 = trunc i32 %or137 to i16, !dbg !5279
  store i16 %conv138, i16* %tps, align 2, !dbg !5279
  br label %sw.epilog140, !dbg !5280

sw.default139:                                    ; preds = %sw.epilog124
  store i32 -22, i32* %retval, align 4, !dbg !5281
  br label %return, !dbg !5281

sw.epilog140:                                     ; preds = %sw.bb135, %sw.bb131, %sw.bb127, %sw.bb126
  %80 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5282
  %81 = load i16, i16* %tps, align 2, !dbg !5283
  %conv141 = zext i16 %81 to i32, !dbg !5283
  %shr142 = ashr i32 %conv141, 8, !dbg !5283
  %and143 = and i32 %shr142, 255, !dbg !5283
  %conv144 = trunc i32 %and143 to i8, !dbg !5283
  %call145 = call i32 @zl10353_single_write(%struct.dvb_frontend* %80, i8 zeroext 110, i8 zeroext %conv144) #8, !dbg !5284
  %82 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5285
  %83 = load i16, i16* %tps, align 2, !dbg !5286
  %conv146 = zext i16 %83 to i32, !dbg !5286
  %and147 = and i32 %conv146, 255, !dbg !5286
  %conv148 = trunc i32 %and147 to i8, !dbg !5286
  %call149 = call i32 @zl10353_single_write(%struct.dvb_frontend* %82, i8 zeroext 111, i8 zeroext %conv148) #8, !dbg !5287
  %84 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5288
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %84, i32 0, i32 1, !dbg !5290
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 26, !dbg !5291
  %85 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5291
  %tobool = icmp ne i32 (%struct.dvb_frontend*, i32)* %85, null, !dbg !5288
  br i1 %tobool, label %if.then150, label %if.end154, !dbg !5292

if.then150:                                       ; preds = %sw.epilog140
  %86 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5293
  %ops151 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %86, i32 0, i32 1, !dbg !5294
  %i2c_gate_ctrl152 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops151, i32 0, i32 26, !dbg !5295
  %87 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl152, align 8, !dbg !5295
  %88 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5296
  %call153 = call i32 %87(%struct.dvb_frontend* %88, i32 0) #8, !dbg !5293
  br label %if.end154, !dbg !5293

if.end154:                                        ; preds = %if.then150, %sw.epilog140
  %89 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5297
  %config = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %89, i32 0, i32 2, !dbg !5299
  %no_tuner = getelementptr inbounds %struct.zl10353_config, %struct.zl10353_config* %config, i32 0, i32 3, !dbg !5300
  %90 = load i32, i32* %no_tuner, align 4, !dbg !5300
  %tobool155 = icmp ne i32 %90, 0, !dbg !5297
  br i1 %tobool155, label %if.then156, label %if.else, !dbg !5301

if.then156:                                       ; preds = %if.end154
  %91 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5302
  %ops157 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %91, i32 0, i32 1, !dbg !5305
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops157, i32 0, i32 30, !dbg !5306
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5307
  %92 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5307
  %tobool158 = icmp ne i32 (%struct.dvb_frontend*)* %92, null, !dbg !5302
  br i1 %tobool158, label %if.then159, label %if.end172, !dbg !5308

if.then159:                                       ; preds = %if.then156
  %93 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5309
  %ops160 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %93, i32 0, i32 1, !dbg !5311
  %tuner_ops161 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops160, i32 0, i32 30, !dbg !5312
  %set_params162 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops161, i32 0, i32 6, !dbg !5313
  %94 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params162, align 8, !dbg !5313
  %95 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5314
  %call163 = call i32 %94(%struct.dvb_frontend* %95) #8, !dbg !5309
  %96 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5315
  %ops164 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %96, i32 0, i32 1, !dbg !5317
  %i2c_gate_ctrl165 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops164, i32 0, i32 26, !dbg !5318
  %97 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl165, align 8, !dbg !5318
  %tobool166 = icmp ne i32 (%struct.dvb_frontend*, i32)* %97, null, !dbg !5315
  br i1 %tobool166, label %if.then167, label %if.end171, !dbg !5319

if.then167:                                       ; preds = %if.then159
  %98 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5320
  %ops168 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %98, i32 0, i32 1, !dbg !5321
  %i2c_gate_ctrl169 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops168, i32 0, i32 26, !dbg !5322
  %99 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl169, align 8, !dbg !5322
  %100 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5323
  %call170 = call i32 %99(%struct.dvb_frontend* %100, i32 0) #8, !dbg !5320
  br label %if.end171, !dbg !5320

if.end171:                                        ; preds = %if.then167, %if.then159
  br label %if.end172, !dbg !5324

if.end172:                                        ; preds = %if.end171, %if.then156
  br label %if.end186, !dbg !5325

if.else:                                          ; preds = %if.end154
  %101 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5326
  %ops173 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %101, i32 0, i32 1, !dbg !5328
  %tuner_ops174 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops173, i32 0, i32 30, !dbg !5329
  %calc_regs = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops174, i32 0, i32 15, !dbg !5330
  %102 = load i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i8*, i32)** %calc_regs, align 8, !dbg !5330
  %tobool175 = icmp ne i32 (%struct.dvb_frontend*, i8*, i32)* %102, null, !dbg !5326
  br i1 %tobool175, label %if.then176, label %if.end185, !dbg !5331

if.then176:                                       ; preds = %if.else
  %103 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5332
  %ops177 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %103, i32 0, i32 1, !dbg !5334
  %tuner_ops178 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops177, i32 0, i32 30, !dbg !5335
  %calc_regs179 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops178, i32 0, i32 15, !dbg !5336
  %104 = load i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i8*, i32)** %calc_regs179, align 8, !dbg !5336
  %105 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5337
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %pllbuf, i64 0, i64 0, !dbg !5338
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 1, !dbg !5339
  %call180 = call i32 %104(%struct.dvb_frontend* %105, i8* %add.ptr, i32 5) #8, !dbg !5332
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %pllbuf, i64 0, i64 1, !dbg !5340
  %106 = load i8, i8* %arrayidx, align 1, !dbg !5341
  %conv181 = zext i8 %106 to i32, !dbg !5341
  %shl = shl i32 %conv181, 1, !dbg !5341
  %conv182 = trunc i32 %shl to i8, !dbg !5341
  store i8 %conv182, i8* %arrayidx, align 1, !dbg !5341
  %107 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5342
  %arraydecay183 = getelementptr inbounds [6 x i8], [6 x i8]* %pllbuf, i64 0, i64 0, !dbg !5343
  %call184 = call i32 @zl10353_write(%struct.dvb_frontend* %107, i8* %arraydecay183, i32 6) #8, !dbg !5344
  br label %if.end185, !dbg !5345

if.end185:                                        ; preds = %if.then176, %if.else
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %if.end172
  %108 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5346
  %call187 = call i32 @zl10353_single_write(%struct.dvb_frontend* %108, i8 zeroext 95, i8 zeroext 19) #8, !dbg !5347
  %109 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5348
  %config188 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %109, i32 0, i32 2, !dbg !5350
  %no_tuner189 = getelementptr inbounds %struct.zl10353_config, %struct.zl10353_config* %config188, i32 0, i32 3, !dbg !5351
  %110 = load i32, i32* %no_tuner189, align 4, !dbg !5351
  %tobool190 = icmp ne i32 %110, 0, !dbg !5348
  br i1 %tobool190, label %if.then197, label %lor.lhs.false191, !dbg !5352

lor.lhs.false191:                                 ; preds = %if.end186
  %111 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5353
  %ops192 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %111, i32 0, i32 1, !dbg !5354
  %tuner_ops193 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops192, i32 0, i32 30, !dbg !5355
  %calc_regs194 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops193, i32 0, i32 15, !dbg !5356
  %112 = load i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i8*, i32)** %calc_regs194, align 8, !dbg !5356
  %cmp195 = icmp eq i32 (%struct.dvb_frontend*, i8*, i32)* %112, null, !dbg !5357
  br i1 %cmp195, label %if.then197, label %if.else199, !dbg !5358

if.then197:                                       ; preds = %lor.lhs.false191, %if.end186
  %113 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5359
  %call198 = call i32 @zl10353_single_write(%struct.dvb_frontend* %113, i8 zeroext 113, i8 zeroext 1) #8, !dbg !5360
  br label %if.end201, !dbg !5360

if.else199:                                       ; preds = %lor.lhs.false191
  %114 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5361
  %call200 = call i32 @zl10353_single_write(%struct.dvb_frontend* %114, i8 zeroext 112, i8 zeroext 1) #8, !dbg !5362
  br label %if.end201

if.end201:                                        ; preds = %if.else199, %if.then197
  store i32 0, i32* %retval, align 4, !dbg !5363
  br label %return, !dbg !5363

return:                                           ; preds = %if.end201, %sw.default139, %sw.default123, %sw.default107, %sw.default99, %sw.default88, %sw.default61
  %115 = load i32, i32* %retval, align 4, !dbg !5364
  ret i32 %115, !dbg !5364
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zl10353_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %fe_tune_settings) #0 !dbg !5365 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fe_tune_settings.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5366, metadata !DIExpression()), !dbg !5367
  store %struct.dvb_frontend_tune_settings* %fe_tune_settings, %struct.dvb_frontend_tune_settings** %fe_tune_settings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %fe_tune_settings.addr, metadata !5368, metadata !DIExpression()), !dbg !5369
  %0 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fe_tune_settings.addr, align 8, !dbg !5370
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %0, i32 0, i32 0, !dbg !5371
  store i32 1000, i32* %min_delay_ms, align 4, !dbg !5372
  %1 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fe_tune_settings.addr, align 8, !dbg !5373
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %1, i32 0, i32 1, !dbg !5374
  store i32 0, i32* %step_size, align 4, !dbg !5375
  %2 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fe_tune_settings.addr, align 8, !dbg !5376
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %2, i32 0, i32 2, !dbg !5377
  store i32 0, i32* %max_drift, align 4, !dbg !5378
  ret i32 0, !dbg !5379
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zl10353_get_parameters(%struct.dvb_frontend* %fe, %struct.dtv_frontend_properties* %c) #0 !dbg !4358 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %c.addr = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.zl10353_state*, align 8
  %s6 = alloca i32, align 4
  %s9 = alloca i32, align 4
  %tps = alloca i16, align 2
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5380, metadata !DIExpression()), !dbg !5381
  store %struct.dtv_frontend_properties* %c, %struct.dtv_frontend_properties** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c.addr, metadata !5382, metadata !DIExpression()), !dbg !5383
  call void @llvm.dbg.declare(metadata %struct.zl10353_state** %state, metadata !5384, metadata !DIExpression()), !dbg !5385
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5386
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5387
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5387
  %2 = bitcast i8* %1 to %struct.zl10353_state*, !dbg !5386
  store %struct.zl10353_state* %2, %struct.zl10353_state** %state, align 8, !dbg !5385
  call void @llvm.dbg.declare(metadata i32* %s6, metadata !5388, metadata !DIExpression()), !dbg !5389
  call void @llvm.dbg.declare(metadata i32* %s9, metadata !5390, metadata !DIExpression()), !dbg !5391
  call void @llvm.dbg.declare(metadata i16* %tps, metadata !5392, metadata !DIExpression()), !dbg !5393
  %3 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5394
  %call = call i32 @zl10353_read_register(%struct.zl10353_state* %3, i8 zeroext 6) #8, !dbg !5395
  store i32 %call, i32* %s6, align 4, !dbg !5396
  %4 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5397
  %call1 = call i32 @zl10353_read_register(%struct.zl10353_state* %4, i8 zeroext 9) #8, !dbg !5398
  store i32 %call1, i32* %s9, align 4, !dbg !5399
  %5 = load i32, i32* %s6, align 4, !dbg !5400
  %cmp = icmp slt i32 %5, 0, !dbg !5402
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5403

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %s9, align 4, !dbg !5404
  %cmp2 = icmp slt i32 %6, 0, !dbg !5405
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5406

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -121, i32* %retval, align 4, !dbg !5407
  br label %return, !dbg !5407

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32, i32* %s6, align 4, !dbg !5408
  %and = and i32 %7, 32, !dbg !5410
  %cmp3 = icmp eq i32 %and, 0, !dbg !5411
  br i1 %cmp3, label %if.then7, label %lor.lhs.false4, !dbg !5412

lor.lhs.false4:                                   ; preds = %if.end
  %8 = load i32, i32* %s9, align 4, !dbg !5413
  %and5 = and i32 %8, 16, !dbg !5414
  %cmp6 = icmp eq i32 %and5, 0, !dbg !5415
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5416

if.then7:                                         ; preds = %lor.lhs.false4, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5417
  br label %return, !dbg !5417

if.end8:                                          ; preds = %lor.lhs.false4
  %9 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5418
  %call9 = call i32 @zl10353_read_register(%struct.zl10353_state* %9, i8 zeroext 29) #8, !dbg !5419
  %shl = shl i32 %call9, 8, !dbg !5420
  %10 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5421
  %call10 = call i32 @zl10353_read_register(%struct.zl10353_state* %10, i8 zeroext 30) #8, !dbg !5422
  %or = or i32 %shl, %call10, !dbg !5423
  %conv = trunc i32 %or to i16, !dbg !5419
  store i16 %conv, i16* %tps, align 2, !dbg !5424
  %11 = load i16, i16* %tps, align 2, !dbg !5425
  %conv11 = zext i16 %11 to i32, !dbg !5425
  %shr = ashr i32 %conv11, 7, !dbg !5426
  %and12 = and i32 %shr, 7, !dbg !5427
  %idxprom = sext i32 %and12 to i64, !dbg !5428
  %arrayidx = getelementptr [8 x i8], [8 x i8]* @zl10353_get_parameters.tps_fec_to_api, i64 0, i64 %idxprom, !dbg !5428
  %12 = load i8, i8* %arrayidx, align 1, !dbg !5428
  %conv13 = zext i8 %12 to i32, !dbg !5428
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5429
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 11, !dbg !5430
  store i32 %conv13, i32* %code_rate_HP, align 4, !dbg !5431
  %14 = load i16, i16* %tps, align 2, !dbg !5432
  %conv14 = zext i16 %14 to i32, !dbg !5432
  %shr15 = ashr i32 %conv14, 4, !dbg !5433
  %and16 = and i32 %shr15, 7, !dbg !5434
  %idxprom17 = sext i32 %and16 to i64, !dbg !5435
  %arrayidx18 = getelementptr [8 x i8], [8 x i8]* @zl10353_get_parameters.tps_fec_to_api, i64 0, i64 %idxprom17, !dbg !5435
  %15 = load i8, i8* %arrayidx18, align 1, !dbg !5435
  %conv19 = zext i8 %15 to i32, !dbg !5435
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5436
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 12, !dbg !5437
  store i32 %conv19, i32* %code_rate_LP, align 4, !dbg !5438
  %17 = load i16, i16* %tps, align 2, !dbg !5439
  %conv20 = zext i16 %17 to i32, !dbg !5439
  %shr21 = ashr i32 %conv20, 13, !dbg !5440
  %and22 = and i32 %shr21, 3, !dbg !5441
  switch i32 %and22, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
    i32 2, label %sw.bb25
  ], !dbg !5442

sw.bb:                                            ; preds = %if.end8
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5443
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 1, !dbg !5445
  store i32 0, i32* %modulation, align 4, !dbg !5446
  br label %sw.epilog, !dbg !5447

sw.bb23:                                          ; preds = %if.end8
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5448
  %modulation24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 1, !dbg !5449
  store i32 1, i32* %modulation24, align 4, !dbg !5450
  br label %sw.epilog, !dbg !5451

sw.bb25:                                          ; preds = %if.end8
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5452
  %modulation26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 1, !dbg !5453
  store i32 3, i32* %modulation26, align 4, !dbg !5454
  br label %sw.epilog, !dbg !5455

sw.default:                                       ; preds = %if.end8
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5456
  %modulation27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 1, !dbg !5457
  store i32 6, i32* %modulation27, align 4, !dbg !5458
  br label %sw.epilog, !dbg !5459

sw.epilog:                                        ; preds = %sw.default, %sw.bb25, %sw.bb23, %sw.bb
  %22 = load i16, i16* %tps, align 2, !dbg !5460
  %conv28 = zext i16 %22 to i32, !dbg !5460
  %and29 = and i32 %conv28, 1, !dbg !5461
  %tobool = icmp ne i32 %and29, 0, !dbg !5462
  %23 = zext i1 %tobool to i64, !dbg !5462
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !5462
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5463
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 6, !dbg !5464
  store i32 %cond, i32* %transmission_mode, align 4, !dbg !5465
  %25 = load i16, i16* %tps, align 2, !dbg !5466
  %conv30 = zext i16 %25 to i32, !dbg !5466
  %shr31 = ashr i32 %conv30, 2, !dbg !5467
  %and32 = and i32 %shr31, 3, !dbg !5468
  switch i32 %and32, label %sw.default40 [
    i32 0, label %sw.bb33
    i32 1, label %sw.bb34
    i32 2, label %sw.bb36
    i32 3, label %sw.bb38
  ], !dbg !5469

sw.bb33:                                          ; preds = %sw.epilog
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5470
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 8, !dbg !5472
  store i32 0, i32* %guard_interval, align 4, !dbg !5473
  br label %sw.epilog42, !dbg !5474

sw.bb34:                                          ; preds = %sw.epilog
  %27 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5475
  %guard_interval35 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %27, i32 0, i32 8, !dbg !5476
  store i32 1, i32* %guard_interval35, align 4, !dbg !5477
  br label %sw.epilog42, !dbg !5478

sw.bb36:                                          ; preds = %sw.epilog
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5479
  %guard_interval37 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 8, !dbg !5480
  store i32 2, i32* %guard_interval37, align 4, !dbg !5481
  br label %sw.epilog42, !dbg !5482

sw.bb38:                                          ; preds = %sw.epilog
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5483
  %guard_interval39 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 8, !dbg !5484
  store i32 3, i32* %guard_interval39, align 4, !dbg !5485
  br label %sw.epilog42, !dbg !5486

sw.default40:                                     ; preds = %sw.epilog
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5487
  %guard_interval41 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 8, !dbg !5488
  store i32 4, i32* %guard_interval41, align 4, !dbg !5489
  br label %sw.epilog42, !dbg !5490

sw.epilog42:                                      ; preds = %sw.default40, %sw.bb38, %sw.bb36, %sw.bb34, %sw.bb33
  %31 = load i16, i16* %tps, align 2, !dbg !5491
  %conv43 = zext i16 %31 to i32, !dbg !5491
  %shr44 = ashr i32 %conv43, 10, !dbg !5492
  %and45 = and i32 %shr44, 7, !dbg !5493
  switch i32 %and45, label %sw.default53 [
    i32 0, label %sw.bb46
    i32 1, label %sw.bb47
    i32 2, label %sw.bb49
    i32 3, label %sw.bb51
  ], !dbg !5494

sw.bb46:                                          ; preds = %sw.epilog42
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5495
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 9, !dbg !5497
  store i32 0, i32* %hierarchy, align 4, !dbg !5498
  br label %sw.epilog55, !dbg !5499

sw.bb47:                                          ; preds = %sw.epilog42
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5500
  %hierarchy48 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 9, !dbg !5501
  store i32 1, i32* %hierarchy48, align 4, !dbg !5502
  br label %sw.epilog55, !dbg !5503

sw.bb49:                                          ; preds = %sw.epilog42
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5504
  %hierarchy50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 9, !dbg !5505
  store i32 2, i32* %hierarchy50, align 4, !dbg !5506
  br label %sw.epilog55, !dbg !5507

sw.bb51:                                          ; preds = %sw.epilog42
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5508
  %hierarchy52 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 9, !dbg !5509
  store i32 3, i32* %hierarchy52, align 4, !dbg !5510
  br label %sw.epilog55, !dbg !5511

sw.default53:                                     ; preds = %sw.epilog42
  %36 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5512
  %hierarchy54 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %36, i32 0, i32 9, !dbg !5513
  store i32 4, i32* %hierarchy54, align 4, !dbg !5514
  br label %sw.epilog55, !dbg !5515

sw.epilog55:                                      ; preds = %sw.default53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb46
  %37 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5516
  %frequency = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %37, i32 0, i32 5, !dbg !5517
  %38 = load i32, i32* %frequency, align 8, !dbg !5517
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5518
  %frequency56 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 0, !dbg !5519
  store i32 %38, i32* %frequency56, align 4, !dbg !5520
  %40 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5521
  %bandwidth = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %40, i32 0, i32 3, !dbg !5522
  %41 = load i32, i32* %bandwidth, align 8, !dbg !5522
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5523
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 7, !dbg !5524
  store i32 %41, i32* %bandwidth_hz, align 4, !dbg !5525
  %43 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5526
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %43, i32 0, i32 4, !dbg !5527
  store i32 2, i32* %inversion, align 4, !dbg !5528
  store i32 0, i32* %retval, align 4, !dbg !5529
  br label %return, !dbg !5529

return:                                           ; preds = %sw.epilog55, %if.then7, %if.then
  %44 = load i32, i32* %retval, align 4, !dbg !5530
  ret i32 %44, !dbg !5530
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zl10353_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !5531 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.zl10353_state*, align 8
  %s6 = alloca i32, align 4
  %s7 = alloca i32, align 4
  %s8 = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5532, metadata !DIExpression()), !dbg !5533
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5534, metadata !DIExpression()), !dbg !5535
  call void @llvm.dbg.declare(metadata %struct.zl10353_state** %state, metadata !5536, metadata !DIExpression()), !dbg !5537
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5538
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5539
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5539
  %2 = bitcast i8* %1 to %struct.zl10353_state*, !dbg !5538
  store %struct.zl10353_state* %2, %struct.zl10353_state** %state, align 8, !dbg !5537
  call void @llvm.dbg.declare(metadata i32* %s6, metadata !5540, metadata !DIExpression()), !dbg !5541
  call void @llvm.dbg.declare(metadata i32* %s7, metadata !5542, metadata !DIExpression()), !dbg !5543
  call void @llvm.dbg.declare(metadata i32* %s8, metadata !5544, metadata !DIExpression()), !dbg !5545
  %3 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5546
  %call = call i32 @zl10353_read_register(%struct.zl10353_state* %3, i8 zeroext 6) #8, !dbg !5548
  store i32 %call, i32* %s6, align 4, !dbg !5549
  %cmp = icmp slt i32 %call, 0, !dbg !5550
  br i1 %cmp, label %if.then, label %if.end, !dbg !5551

if.then:                                          ; preds = %entry
  store i32 -121, i32* %retval, align 4, !dbg !5552
  br label %return, !dbg !5552

if.end:                                           ; preds = %entry
  %4 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5553
  %call1 = call i32 @zl10353_read_register(%struct.zl10353_state* %4, i8 zeroext 7) #8, !dbg !5555
  store i32 %call1, i32* %s7, align 4, !dbg !5556
  %cmp2 = icmp slt i32 %call1, 0, !dbg !5557
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5558

if.then3:                                         ; preds = %if.end
  store i32 -121, i32* %retval, align 4, !dbg !5559
  br label %return, !dbg !5559

if.end4:                                          ; preds = %if.end
  %5 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5560
  %call5 = call i32 @zl10353_read_register(%struct.zl10353_state* %5, i8 zeroext 8) #8, !dbg !5562
  store i32 %call5, i32* %s8, align 4, !dbg !5563
  %cmp6 = icmp slt i32 %call5, 0, !dbg !5564
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5565

if.then7:                                         ; preds = %if.end4
  store i32 -121, i32* %retval, align 4, !dbg !5566
  br label %return, !dbg !5566

if.end8:                                          ; preds = %if.end4
  %6 = load i32*, i32** %status.addr, align 8, !dbg !5567
  store i32 0, i32* %6, align 4, !dbg !5568
  %7 = load i32, i32* %s6, align 4, !dbg !5569
  %and = and i32 %7, 4, !dbg !5571
  %tobool = icmp ne i32 %and, 0, !dbg !5571
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !5572

if.then9:                                         ; preds = %if.end8
  %8 = load i32*, i32** %status.addr, align 8, !dbg !5573
  %9 = load i32, i32* %8, align 4, !dbg !5574
  %or = or i32 %9, 2, !dbg !5574
  store i32 %or, i32* %8, align 4, !dbg !5574
  br label %if.end10, !dbg !5575

if.end10:                                         ; preds = %if.then9, %if.end8
  %10 = load i32, i32* %s6, align 4, !dbg !5576
  %and11 = and i32 %10, 2, !dbg !5578
  %tobool12 = icmp ne i32 %and11, 0, !dbg !5578
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !5579

if.then13:                                        ; preds = %if.end10
  %11 = load i32*, i32** %status.addr, align 8, !dbg !5580
  %12 = load i32, i32* %11, align 4, !dbg !5581
  %or14 = or i32 %12, 4, !dbg !5581
  store i32 %or14, i32* %11, align 4, !dbg !5581
  br label %if.end15, !dbg !5582

if.end15:                                         ; preds = %if.then13, %if.end10
  %13 = load i32, i32* %s6, align 4, !dbg !5583
  %and16 = and i32 %13, 32, !dbg !5585
  %tobool17 = icmp ne i32 %and16, 0, !dbg !5585
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !5586

if.then18:                                        ; preds = %if.end15
  %14 = load i32*, i32** %status.addr, align 8, !dbg !5587
  %15 = load i32, i32* %14, align 4, !dbg !5588
  %or19 = or i32 %15, 16, !dbg !5588
  store i32 %or19, i32* %14, align 4, !dbg !5588
  br label %if.end20, !dbg !5589

if.end20:                                         ; preds = %if.then18, %if.end15
  %16 = load i32, i32* %s7, align 4, !dbg !5590
  %and21 = and i32 %16, 16, !dbg !5592
  %tobool22 = icmp ne i32 %and21, 0, !dbg !5592
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !5593

if.then23:                                        ; preds = %if.end20
  %17 = load i32*, i32** %status.addr, align 8, !dbg !5594
  %18 = load i32, i32* %17, align 4, !dbg !5595
  %or24 = or i32 %18, 8, !dbg !5595
  store i32 %or24, i32* %17, align 4, !dbg !5595
  br label %if.end25, !dbg !5596

if.end25:                                         ; preds = %if.then23, %if.end20
  %19 = load i32, i32* %s8, align 4, !dbg !5597
  %and26 = and i32 %19, 64, !dbg !5599
  %tobool27 = icmp ne i32 %and26, 0, !dbg !5599
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !5600

if.then28:                                        ; preds = %if.end25
  %20 = load i32*, i32** %status.addr, align 8, !dbg !5601
  %21 = load i32, i32* %20, align 4, !dbg !5602
  %or29 = or i32 %21, 1, !dbg !5602
  store i32 %or29, i32* %20, align 4, !dbg !5602
  br label %if.end30, !dbg !5603

if.end30:                                         ; preds = %if.then28, %if.end25
  %22 = load i32*, i32** %status.addr, align 8, !dbg !5604
  %23 = load i32, i32* %22, align 4, !dbg !5606
  %and31 = and i32 %23, 14, !dbg !5607
  %cmp32 = icmp ne i32 %and31, 14, !dbg !5608
  br i1 %cmp32, label %if.then33, label %if.end35, !dbg !5609

if.then33:                                        ; preds = %if.end30
  %24 = load i32*, i32** %status.addr, align 8, !dbg !5610
  %25 = load i32, i32* %24, align 4, !dbg !5611
  %and34 = and i32 %25, -17, !dbg !5611
  store i32 %and34, i32* %24, align 4, !dbg !5611
  br label %if.end35, !dbg !5612

if.end35:                                         ; preds = %if.then33, %if.end30
  store i32 0, i32* %retval, align 4, !dbg !5613
  br label %return, !dbg !5613

return:                                           ; preds = %if.end35, %if.then7, %if.then3, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !5614
  ret i32 %26, !dbg !5614
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zl10353_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5615 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %state = alloca %struct.zl10353_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5616, metadata !DIExpression()), !dbg !5617
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5618, metadata !DIExpression()), !dbg !5619
  call void @llvm.dbg.declare(metadata %struct.zl10353_state** %state, metadata !5620, metadata !DIExpression()), !dbg !5621
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5622
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5623
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5623
  %2 = bitcast i8* %1 to %struct.zl10353_state*, !dbg !5622
  store %struct.zl10353_state* %2, %struct.zl10353_state** %state, align 8, !dbg !5621
  %3 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5624
  %call = call i32 @zl10353_read_register(%struct.zl10353_state* %3, i8 zeroext 17) #8, !dbg !5625
  %shl = shl i32 %call, 16, !dbg !5626
  %4 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5627
  %call1 = call i32 @zl10353_read_register(%struct.zl10353_state* %4, i8 zeroext 18) #8, !dbg !5628
  %shl2 = shl i32 %call1, 8, !dbg !5629
  %or = or i32 %shl, %shl2, !dbg !5630
  %5 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5631
  %call3 = call i32 @zl10353_read_register(%struct.zl10353_state* %5, i8 zeroext 19) #8, !dbg !5632
  %or4 = or i32 %or, %call3, !dbg !5633
  %6 = load i32*, i32** %ber.addr, align 8, !dbg !5634
  store i32 %or4, i32* %6, align 4, !dbg !5635
  ret i32 0, !dbg !5636
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zl10353_read_signal_strength(%struct.dvb_frontend* %fe, i16* %strength) #0 !dbg !5637 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %strength.addr = alloca i16*, align 8
  %state = alloca %struct.zl10353_state*, align 8
  %signal = alloca i16, align 2
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5638, metadata !DIExpression()), !dbg !5639
  store i16* %strength, i16** %strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %strength.addr, metadata !5640, metadata !DIExpression()), !dbg !5641
  call void @llvm.dbg.declare(metadata %struct.zl10353_state** %state, metadata !5642, metadata !DIExpression()), !dbg !5643
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5644
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5645
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5645
  %2 = bitcast i8* %1 to %struct.zl10353_state*, !dbg !5644
  store %struct.zl10353_state* %2, %struct.zl10353_state** %state, align 8, !dbg !5643
  call void @llvm.dbg.declare(metadata i16* %signal, metadata !5646, metadata !DIExpression()), !dbg !5647
  %3 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5648
  %call = call i32 @zl10353_read_register(%struct.zl10353_state* %3, i8 zeroext 10) #8, !dbg !5649
  %shl = shl i32 %call, 10, !dbg !5650
  %4 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5651
  %call1 = call i32 @zl10353_read_register(%struct.zl10353_state* %4, i8 zeroext 11) #8, !dbg !5652
  %shl2 = shl i32 %call1, 2, !dbg !5653
  %or = or i32 %shl, %shl2, !dbg !5654
  %or3 = or i32 %or, 3, !dbg !5655
  %conv = trunc i32 %or3 to i16, !dbg !5649
  store i16 %conv, i16* %signal, align 2, !dbg !5647
  %5 = load i16, i16* %signal, align 2, !dbg !5656
  %conv4 = zext i16 %5 to i32, !dbg !5656
  %neg = xor i32 %conv4, -1, !dbg !5657
  %conv5 = trunc i32 %neg to i16, !dbg !5657
  %6 = load i16*, i16** %strength.addr, align 8, !dbg !5658
  store i16 %conv5, i16* %6, align 2, !dbg !5659
  ret i32 0, !dbg !5660
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zl10353_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5661 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %state = alloca %struct.zl10353_state*, align 8
  %_snr = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5662, metadata !DIExpression()), !dbg !5663
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5664, metadata !DIExpression()), !dbg !5665
  call void @llvm.dbg.declare(metadata %struct.zl10353_state** %state, metadata !5666, metadata !DIExpression()), !dbg !5667
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5668
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5669
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5669
  %2 = bitcast i8* %1 to %struct.zl10353_state*, !dbg !5668
  store %struct.zl10353_state* %2, %struct.zl10353_state** %state, align 8, !dbg !5667
  call void @llvm.dbg.declare(metadata i8* %_snr, metadata !5670, metadata !DIExpression()), !dbg !5671
  %3 = load i32, i32* @debug_regs, align 4, !dbg !5672
  %tobool = icmp ne i32 %3, 0, !dbg !5672
  br i1 %tobool, label %if.then, label %if.end, !dbg !5674

if.then:                                          ; preds = %entry
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5675
  call void @zl10353_dump_regs(%struct.dvb_frontend* %4) #8, !dbg !5676
  br label %if.end, !dbg !5676

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5677
  %call = call i32 @zl10353_read_register(%struct.zl10353_state* %5, i8 zeroext 16) #8, !dbg !5678
  %conv = trunc i32 %call to i8, !dbg !5678
  store i8 %conv, i8* %_snr, align 1, !dbg !5679
  %6 = load i8, i8* %_snr, align 1, !dbg !5680
  %conv1 = zext i8 %6 to i32, !dbg !5680
  %mul = mul i32 10, %conv1, !dbg !5681
  %div = sdiv i32 %mul, 8, !dbg !5682
  %conv2 = trunc i32 %div to i16, !dbg !5683
  %7 = load i16*, i16** %snr.addr, align 8, !dbg !5684
  store i16 %conv2, i16* %7, align 2, !dbg !5685
  ret i32 0, !dbg !5686
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zl10353_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !5687 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  %state = alloca %struct.zl10353_state*, align 8
  %ubl = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5688, metadata !DIExpression()), !dbg !5689
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !5690, metadata !DIExpression()), !dbg !5691
  call void @llvm.dbg.declare(metadata %struct.zl10353_state** %state, metadata !5692, metadata !DIExpression()), !dbg !5693
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5694
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5695
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5695
  %2 = bitcast i8* %1 to %struct.zl10353_state*, !dbg !5694
  store %struct.zl10353_state* %2, %struct.zl10353_state** %state, align 8, !dbg !5693
  call void @llvm.dbg.declare(metadata i32* %ubl, metadata !5696, metadata !DIExpression()), !dbg !5697
  store i32 0, i32* %ubl, align 4, !dbg !5697
  %3 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5698
  %call = call i32 @zl10353_read_register(%struct.zl10353_state* %3, i8 zeroext 20) #8, !dbg !5699
  %shl = shl i32 %call, 8, !dbg !5700
  %4 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5701
  %call1 = call i32 @zl10353_read_register(%struct.zl10353_state* %4, i8 zeroext 21) #8, !dbg !5702
  %or = or i32 %shl, %call1, !dbg !5703
  store i32 %or, i32* %ubl, align 4, !dbg !5704
  %5 = load i32, i32* %ubl, align 4, !dbg !5705
  %6 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5706
  %ucblocks2 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %6, i32 0, i32 4, !dbg !5707
  %7 = load i32, i32* %ucblocks2, align 4, !dbg !5708
  %add = add i32 %7, %5, !dbg !5708
  store i32 %add, i32* %ucblocks2, align 4, !dbg !5708
  %8 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5709
  %ucblocks3 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %8, i32 0, i32 4, !dbg !5710
  %9 = load i32, i32* %ucblocks3, align 4, !dbg !5710
  %10 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5711
  store i32 %9, i32* %10, align 4, !dbg !5712
  ret i32 0, !dbg !5713
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zl10353_i2c_gate_ctrl(%struct.dvb_frontend* %fe, i32 %enable) #0 !dbg !5714 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %enable.addr = alloca i32, align 4
  %state = alloca %struct.zl10353_state*, align 8
  %val = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5715, metadata !DIExpression()), !dbg !5716
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !5717, metadata !DIExpression()), !dbg !5718
  call void @llvm.dbg.declare(metadata %struct.zl10353_state** %state, metadata !5719, metadata !DIExpression()), !dbg !5720
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5721
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5722
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5722
  %2 = bitcast i8* %1 to %struct.zl10353_state*, !dbg !5721
  store %struct.zl10353_state* %2, %struct.zl10353_state** %state, align 8, !dbg !5720
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5723, metadata !DIExpression()), !dbg !5724
  store i8 10, i8* %val, align 1, !dbg !5724
  %3 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5725
  %config = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %3, i32 0, i32 2, !dbg !5727
  %disable_i2c_gate_ctrl = getelementptr inbounds %struct.zl10353_config, %struct.zl10353_config* %config, i32 0, i32 5, !dbg !5728
  %bf.load = load i8, i8* %disable_i2c_gate_ctrl, align 4, !dbg !5728
  %bf.clear = and i8 %bf.load, 1, !dbg !5728
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !5725
  br i1 %tobool, label %if.then, label %if.end, !dbg !5729

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5730
  br label %return, !dbg !5730

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %enable.addr, align 4, !dbg !5732
  %tobool1 = icmp ne i32 %4, 0, !dbg !5732
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !5734

if.then2:                                         ; preds = %if.end
  %5 = load i8, i8* %val, align 1, !dbg !5735
  %conv = zext i8 %5 to i32, !dbg !5735
  %or = or i32 %conv, 16, !dbg !5735
  %conv3 = trunc i32 %or to i8, !dbg !5735
  store i8 %conv3, i8* %val, align 1, !dbg !5735
  br label %if.end4, !dbg !5736

if.end4:                                          ; preds = %if.then2, %if.end
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5737
  %7 = load i8, i8* %val, align 1, !dbg !5738
  %call = call i32 @zl10353_single_write(%struct.dvb_frontend* %6, i8 zeroext 98, i8 zeroext %7) #8, !dbg !5739
  store i32 %call, i32* %retval, align 4, !dbg !5740
  br label %return, !dbg !5740

return:                                           ; preds = %if.end4, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5741
  ret i32 %8, !dbg !5741
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @zl10353_dump_regs(%struct.dvb_frontend* %fe) #0 !dbg !5742 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.zl10353_state*, align 8
  %ret = alloca i32, align 4
  %reg = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5743, metadata !DIExpression()), !dbg !5744
  call void @llvm.dbg.declare(metadata %struct.zl10353_state** %state, metadata !5745, metadata !DIExpression()), !dbg !5746
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5747
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5748
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5748
  %2 = bitcast i8* %1 to %struct.zl10353_state*, !dbg !5747
  store %struct.zl10353_state* %2, %struct.zl10353_state** %state, align 8, !dbg !5746
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5749, metadata !DIExpression()), !dbg !5750
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !5751, metadata !DIExpression()), !dbg !5752
  store i8 0, i8* %reg, align 1, !dbg !5753
  br label %for.cond, !dbg !5755

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8, i8* %reg, align 1, !dbg !5756
  %conv = zext i8 %3 to i32, !dbg !5756
  %rem = srem i32 %conv, 16, !dbg !5760
  %cmp = icmp eq i32 %rem, 0, !dbg !5761
  br i1 %cmp, label %if.then, label %if.end5, !dbg !5762

if.then:                                          ; preds = %for.cond
  %4 = load i8, i8* %reg, align 1, !dbg !5763
  %tobool = icmp ne i8 %4, 0, !dbg !5763
  br i1 %tobool, label %if.then2, label %if.end, !dbg !5766

if.then2:                                         ; preds = %if.then
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #12, !dbg !5767
  br label %if.end, !dbg !5767

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load i8, i8* %reg, align 1, !dbg !5768
  %conv3 = zext i8 %5 to i32, !dbg !5768
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %conv3) #12, !dbg !5769
  br label %if.end5, !dbg !5770

if.end5:                                          ; preds = %if.end, %for.cond
  %6 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5771
  %7 = load i8, i8* %reg, align 1, !dbg !5772
  %call6 = call i32 @zl10353_read_register(%struct.zl10353_state* %6, i8 zeroext %7) #8, !dbg !5773
  store i32 %call6, i32* %ret, align 4, !dbg !5774
  %8 = load i32, i32* %ret, align 4, !dbg !5775
  %cmp7 = icmp sge i32 %8, 0, !dbg !5777
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !5778

if.then9:                                         ; preds = %if.end5
  %9 = load i32, i32* %ret, align 4, !dbg !5779
  %conv10 = trunc i32 %9 to i8, !dbg !5780
  %conv11 = zext i8 %conv10 to i32, !dbg !5780
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %conv11) #12, !dbg !5781
  br label %if.end14, !dbg !5781

if.else:                                          ; preds = %if.end5
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #12, !dbg !5782
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %10 = load i8, i8* %reg, align 1, !dbg !5783
  %conv15 = zext i8 %10 to i32, !dbg !5783
  %cmp16 = icmp eq i32 %conv15, 255, !dbg !5785
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !5786

if.then18:                                        ; preds = %if.end14
  br label %for.end, !dbg !5787

if.end19:                                         ; preds = %if.end14
  br label %for.inc, !dbg !5788

for.inc:                                          ; preds = %if.end19
  %11 = load i8, i8* %reg, align 1, !dbg !5789
  %inc = add i8 %11, 1, !dbg !5789
  store i8 %inc, i8* %reg, align 1, !dbg !5789
  br label %for.cond, !dbg !5790, !llvm.loop !5791

for.end:                                          ; preds = %if.then18
  %call20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #12, !dbg !5794
  ret void, !dbg !5795
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zl10353_single_write(%struct.dvb_frontend* %fe, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !5796 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  %state = alloca %struct.zl10353_state*, align 8
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  %err = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5799, metadata !DIExpression()), !dbg !5800
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5801, metadata !DIExpression()), !dbg !5802
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !5803, metadata !DIExpression()), !dbg !5804
  call void @llvm.dbg.declare(metadata %struct.zl10353_state** %state, metadata !5805, metadata !DIExpression()), !dbg !5806
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5807
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5808
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5808
  %2 = bitcast i8* %1 to %struct.zl10353_state*, !dbg !5807
  store %struct.zl10353_state* %2, %struct.zl10353_state** %state, align 8, !dbg !5806
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !5809, metadata !DIExpression()), !dbg !5811
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5812
  %3 = load i8, i8* %reg.addr, align 1, !dbg !5813
  store i8 %3, i8* %arrayinit.begin, align 1, !dbg !5812
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !5812
  %4 = load i8, i8* %val.addr, align 1, !dbg !5814
  store i8 %4, i8* %arrayinit.element, align 1, !dbg !5812
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5815, metadata !DIExpression()), !dbg !5816
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5817
  %5 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5818
  %config = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %5, i32 0, i32 2, !dbg !5819
  %demod_address = getelementptr inbounds %struct.zl10353_config, %struct.zl10353_config* %config, i32 0, i32 0, !dbg !5820
  %6 = load i8, i8* %demod_address, align 8, !dbg !5820
  %conv = zext i8 %6 to i16, !dbg !5818
  store i16 %conv, i16* %addr, align 8, !dbg !5817
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5817
  store i16 0, i16* %flags, align 2, !dbg !5817
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5817
  store i16 2, i16* %len, align 4, !dbg !5817
  %buf1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5817
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5821
  store i8* %arraydecay, i8** %buf1, align 8, !dbg !5817
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5822, metadata !DIExpression()), !dbg !5823
  %7 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5824
  %i2c = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %7, i32 0, i32 0, !dbg !5825
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5825
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %8, %struct.i2c_msg* %msg, i32 1) #8, !dbg !5826
  store i32 %call, i32* %err, align 4, !dbg !5823
  %9 = load i32, i32* %err, align 4, !dbg !5827
  %cmp = icmp ne i32 %9, 1, !dbg !5829
  br i1 %cmp, label %if.then, label %if.end, !dbg !5830

if.then:                                          ; preds = %entry
  %10 = load i8, i8* %reg.addr, align 1, !dbg !5831
  %conv3 = zext i8 %10 to i32, !dbg !5831
  %11 = load i32, i32* %err, align 4, !dbg !5833
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %conv3, i32 %11) #12, !dbg !5834
  %12 = load i32, i32* %err, align 4, !dbg !5835
  store i32 %12, i32* %retval, align 4, !dbg !5836
  br label %return, !dbg !5836

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5837
  br label %return, !dbg !5837

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !5838
  ret i32 %13, !dbg !5838
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @zl10353_calc_nominal_rate(%struct.dvb_frontend* %fe, i32 %bandwidth, i16* %nominal_rate) #0 !dbg !5839 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %bandwidth.addr = alloca i32, align 4
  %nominal_rate.addr = alloca i16*, align 8
  %state = alloca %struct.zl10353_state*, align 8
  %adc_clock = alloca i32, align 4
  %value = alloca i64, align 8
  %bw = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5842, metadata !DIExpression()), !dbg !5843
  store i32 %bandwidth, i32* %bandwidth.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bandwidth.addr, metadata !5844, metadata !DIExpression()), !dbg !5845
  store i16* %nominal_rate, i16** %nominal_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %nominal_rate.addr, metadata !5846, metadata !DIExpression()), !dbg !5847
  call void @llvm.dbg.declare(metadata %struct.zl10353_state** %state, metadata !5848, metadata !DIExpression()), !dbg !5849
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5850
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5851
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5851
  %2 = bitcast i8* %1 to %struct.zl10353_state*, !dbg !5850
  store %struct.zl10353_state* %2, %struct.zl10353_state** %state, align 8, !dbg !5849
  call void @llvm.dbg.declare(metadata i32* %adc_clock, metadata !5852, metadata !DIExpression()), !dbg !5853
  store i32 450560, i32* %adc_clock, align 4, !dbg !5853
  call void @llvm.dbg.declare(metadata i64* %value, metadata !5854, metadata !DIExpression()), !dbg !5855
  call void @llvm.dbg.declare(metadata i8* %bw, metadata !5856, metadata !DIExpression()), !dbg !5857
  %3 = load i32, i32* %bandwidth.addr, align 4, !dbg !5858
  %div = udiv i32 %3, 1000000, !dbg !5859
  %conv = trunc i32 %div to i8, !dbg !5858
  store i8 %conv, i8* %bw, align 1, !dbg !5857
  %4 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5860
  %config = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %4, i32 0, i32 2, !dbg !5862
  %adc_clock1 = getelementptr inbounds %struct.zl10353_config, %struct.zl10353_config* %config, i32 0, i32 1, !dbg !5863
  %5 = load i32, i32* %adc_clock1, align 4, !dbg !5863
  %tobool = icmp ne i32 %5, 0, !dbg !5860
  br i1 %tobool, label %if.then, label %if.end, !dbg !5864

if.then:                                          ; preds = %entry
  %6 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5865
  %config2 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %6, i32 0, i32 2, !dbg !5866
  %adc_clock3 = getelementptr inbounds %struct.zl10353_config, %struct.zl10353_config* %config2, i32 0, i32 1, !dbg !5867
  %7 = load i32, i32* %adc_clock3, align 4, !dbg !5867
  store i32 %7, i32* %adc_clock, align 4, !dbg !5868
  br label %if.end, !dbg !5869

if.end:                                           ; preds = %if.then, %entry
  store i64 1497965625, i64* %value, align 8, !dbg !5870
  %8 = load i8, i8* %bw, align 1, !dbg !5871
  %conv4 = zext i8 %8 to i64, !dbg !5871
  %9 = load i64, i64* %value, align 8, !dbg !5872
  %mul = mul i64 %conv4, %9, !dbg !5873
  %10 = load i32, i32* %adc_clock, align 4, !dbg !5874
  %div5 = udiv i32 %10, 2, !dbg !5875
  %conv6 = zext i32 %div5 to i64, !dbg !5874
  %add = add i64 %mul, %conv6, !dbg !5876
  store i64 %add, i64* %value, align 8, !dbg !5877
  %11 = load i64, i64* %value, align 8, !dbg !5878
  %12 = load i32, i32* %adc_clock, align 4, !dbg !5879
  %call = call i64 @div_u64(i64 %11, i32 %12) #8, !dbg !5880
  %conv7 = trunc i64 %call to i16, !dbg !5880
  %13 = load i16*, i16** %nominal_rate.addr, align 8, !dbg !5881
  store i16 %conv7, i16* %13, align 2, !dbg !5882
  br label %do.body, !dbg !5883

do.body:                                          ; preds = %if.end
  %14 = load i32, i32* @debug, align 4, !dbg !5884
  %tobool8 = icmp ne i32 %14, 0, !dbg !5884
  br i1 %tobool8, label %if.then9, label %if.end13, !dbg !5887

if.then9:                                         ; preds = %do.body
  %15 = load i8, i8* %bw, align 1, !dbg !5884
  %conv10 = zext i8 %15 to i32, !dbg !5884
  %16 = load i32, i32* %adc_clock, align 4, !dbg !5884
  %17 = load i16*, i16** %nominal_rate.addr, align 8, !dbg !5884
  %18 = load i16, i16* %17, align 2, !dbg !5884
  %conv11 = zext i16 %18 to i32, !dbg !5884
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.zl10353_calc_nominal_rate, i64 0, i64 0), i32 %conv10, i32 %16, i32 %conv11) #12, !dbg !5884
  br label %if.end13, !dbg !5884

if.end13:                                         ; preds = %if.then9, %do.body
  br label %do.end, !dbg !5887

do.end:                                           ; preds = %if.end13
  ret void, !dbg !5888
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @zl10353_calc_input_freq(%struct.dvb_frontend* %fe, i16* %input_freq) #0 !dbg !5889 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %input_freq.addr = alloca i16*, align 8
  %state = alloca %struct.zl10353_state*, align 8
  %adc_clock = alloca i32, align 4
  %if2 = alloca i32, align 4
  %ife = alloca i32, align 4
  %value = alloca i64, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5892, metadata !DIExpression()), !dbg !5893
  store i16* %input_freq, i16** %input_freq.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %input_freq.addr, metadata !5894, metadata !DIExpression()), !dbg !5895
  call void @llvm.dbg.declare(metadata %struct.zl10353_state** %state, metadata !5896, metadata !DIExpression()), !dbg !5897
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5898
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5899
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5899
  %2 = bitcast i8* %1 to %struct.zl10353_state*, !dbg !5898
  store %struct.zl10353_state* %2, %struct.zl10353_state** %state, align 8, !dbg !5897
  call void @llvm.dbg.declare(metadata i32* %adc_clock, metadata !5900, metadata !DIExpression()), !dbg !5901
  store i32 450560, i32* %adc_clock, align 4, !dbg !5901
  call void @llvm.dbg.declare(metadata i32* %if2, metadata !5902, metadata !DIExpression()), !dbg !5903
  store i32 361667, i32* %if2, align 4, !dbg !5903
  call void @llvm.dbg.declare(metadata i32* %ife, metadata !5904, metadata !DIExpression()), !dbg !5905
  call void @llvm.dbg.declare(metadata i64* %value, metadata !5906, metadata !DIExpression()), !dbg !5907
  %3 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5908
  %config = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %3, i32 0, i32 2, !dbg !5910
  %adc_clock1 = getelementptr inbounds %struct.zl10353_config, %struct.zl10353_config* %config, i32 0, i32 1, !dbg !5911
  %4 = load i32, i32* %adc_clock1, align 4, !dbg !5911
  %tobool = icmp ne i32 %4, 0, !dbg !5908
  br i1 %tobool, label %if.then, label %if.end, !dbg !5912

if.then:                                          ; preds = %entry
  %5 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5913
  %config2 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %5, i32 0, i32 2, !dbg !5914
  %adc_clock3 = getelementptr inbounds %struct.zl10353_config, %struct.zl10353_config* %config2, i32 0, i32 1, !dbg !5915
  %6 = load i32, i32* %adc_clock3, align 4, !dbg !5915
  store i32 %6, i32* %adc_clock, align 4, !dbg !5916
  br label %if.end, !dbg !5917

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5918
  %config4 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %7, i32 0, i32 2, !dbg !5920
  %if25 = getelementptr inbounds %struct.zl10353_config, %struct.zl10353_config* %config4, i32 0, i32 2, !dbg !5921
  %8 = load i32, i32* %if25, align 8, !dbg !5921
  %tobool6 = icmp ne i32 %8, 0, !dbg !5918
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !5922

if.then7:                                         ; preds = %if.end
  %9 = load %struct.zl10353_state*, %struct.zl10353_state** %state, align 8, !dbg !5923
  %config8 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %9, i32 0, i32 2, !dbg !5924
  %if29 = getelementptr inbounds %struct.zl10353_config, %struct.zl10353_config* %config8, i32 0, i32 2, !dbg !5925
  %10 = load i32, i32* %if29, align 8, !dbg !5925
  store i32 %10, i32* %if2, align 4, !dbg !5926
  br label %if.end10, !dbg !5927

if.end10:                                         ; preds = %if.then7, %if.end
  %11 = load i32, i32* %adc_clock, align 4, !dbg !5928
  %12 = load i32, i32* %if2, align 4, !dbg !5930
  %mul = mul i32 %12, 2, !dbg !5931
  %cmp = icmp uge i32 %11, %mul, !dbg !5932
  br i1 %cmp, label %if.then11, label %if.else, !dbg !5933

if.then11:                                        ; preds = %if.end10
  %13 = load i32, i32* %if2, align 4, !dbg !5934
  store i32 %13, i32* %ife, align 4, !dbg !5935
  br label %if.end16, !dbg !5936

if.else:                                          ; preds = %if.end10
  %14 = load i32, i32* %adc_clock, align 4, !dbg !5937
  %15 = load i32, i32* %if2, align 4, !dbg !5939
  %16 = load i32, i32* %adc_clock, align 4, !dbg !5940
  %rem = urem i32 %15, %16, !dbg !5941
  %sub = sub i32 %14, %rem, !dbg !5942
  store i32 %sub, i32* %ife, align 4, !dbg !5943
  %17 = load i32, i32* %ife, align 4, !dbg !5944
  %18 = load i32, i32* %adc_clock, align 4, !dbg !5946
  %div = udiv i32 %18, 2, !dbg !5947
  %cmp12 = icmp ugt i32 %17, %div, !dbg !5948
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !5949

if.then13:                                        ; preds = %if.else
  %19 = load i32, i32* %adc_clock, align 4, !dbg !5950
  %20 = load i32, i32* %ife, align 4, !dbg !5951
  %sub14 = sub i32 %19, %20, !dbg !5952
  store i32 %sub14, i32* %ife, align 4, !dbg !5953
  br label %if.end15, !dbg !5954

if.end15:                                         ; preds = %if.then13, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then11
  %21 = load i32, i32* %ife, align 4, !dbg !5955
  %conv = sext i32 %21 to i64, !dbg !5955
  %mul17 = mul i64 65536, %conv, !dbg !5956
  %22 = load i32, i32* %adc_clock, align 4, !dbg !5957
  %div18 = udiv i32 %22, 2, !dbg !5958
  %conv19 = zext i32 %div18 to i64, !dbg !5957
  %add = add i64 %mul17, %conv19, !dbg !5959
  %23 = load i32, i32* %adc_clock, align 4, !dbg !5960
  %call = call i64 @div_u64(i64 %add, i32 %23) #8, !dbg !5961
  store i64 %call, i64* %value, align 8, !dbg !5962
  %24 = load i64, i64* %value, align 8, !dbg !5963
  %sub20 = sub i64 0, %24, !dbg !5964
  %conv21 = trunc i64 %sub20 to i16, !dbg !5964
  %25 = load i16*, i16** %input_freq.addr, align 8, !dbg !5965
  store i16 %conv21, i16* %25, align 2, !dbg !5966
  br label %do.body, !dbg !5967

do.body:                                          ; preds = %if.end16
  %26 = load i32, i32* @debug, align 4, !dbg !5968
  %tobool22 = icmp ne i32 %26, 0, !dbg !5968
  br i1 %tobool22, label %if.then23, label %if.end28, !dbg !5971

if.then23:                                        ; preds = %do.body
  %27 = load i32, i32* %if2, align 4, !dbg !5968
  %28 = load i32, i32* %ife, align 4, !dbg !5968
  %29 = load i32, i32* %adc_clock, align 4, !dbg !5968
  %30 = load i64, i64* %value, align 8, !dbg !5968
  %conv24 = trunc i64 %30 to i32, !dbg !5968
  %sub25 = sub i32 0, %conv24, !dbg !5968
  %31 = load i16*, i16** %input_freq.addr, align 8, !dbg !5968
  %32 = load i16, i16* %31, align 2, !dbg !5968
  %conv26 = zext i16 %32 to i32, !dbg !5968
  %call27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.zl10353_calc_input_freq, i64 0, i64 0), i32 %27, i32 %28, i32 %29, i32 %sub25, i32 %conv26) #12, !dbg !5968
  br label %if.end28, !dbg !5968

if.end28:                                         ; preds = %if.then23, %do.body
  br label %do.end, !dbg !5971

do.end:                                           ; preds = %if.end28
  ret void, !dbg !5972
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div_u64(i64 %dividend, i32 %divisor) #0 !dbg !5973 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !5977, metadata !DIExpression()), !dbg !5978
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !5979, metadata !DIExpression()), !dbg !5980
  call void @llvm.dbg.declare(metadata i32* %remainder, metadata !5981, metadata !DIExpression()), !dbg !5982
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !5983
  %1 = load i32, i32* %divisor.addr, align 4, !dbg !5984
  %call = call i64 @div_u64_rem(i64 %0, i32 %1, i32* %remainder) #8, !dbg !5985
  ret i64 %call, !dbg !5986
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div_u64_rem(i64 %dividend, i32 %divisor, i32* %remainder) #0 !dbg !5987 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca i32*, align 8
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !5990, metadata !DIExpression()), !dbg !5991
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !5992, metadata !DIExpression()), !dbg !5993
  store i32* %remainder, i32** %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %remainder.addr, metadata !5994, metadata !DIExpression()), !dbg !5995
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !5996
  %1 = load i32, i32* %divisor.addr, align 4, !dbg !5997
  %conv = zext i32 %1 to i64, !dbg !5997
  %rem = urem i64 %0, %conv, !dbg !5998
  %conv1 = trunc i64 %rem to i32, !dbg !5996
  %2 = load i32*, i32** %remainder.addr, align 8, !dbg !5999
  store i32 %conv1, i32* %2, align 4, !dbg !6000
  %3 = load i64, i64* %dividend.addr, align 8, !dbg !6001
  %4 = load i32, i32* %divisor.addr, align 4, !dbg !6002
  %conv2 = zext i32 %4 to i64, !dbg !6002
  %div = udiv i64 %3, %conv2, !dbg !6003
  ret i64 %div, !dbg !6004
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
!llvm.module.flags = !{!4371, !4372, !4373, !4374}
!llvm.ident = !{!4375}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "zl10353_ops", scope: !2, file: !3, line: 624, type: !4370, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !337, globals: !350, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/zl10353.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !40, !50, !57, !73, !78, !82, !87, !102, !113, !126, !133, !138, !144, !165, !171, !175, !183, !190, !195, !201, !207, !216, !224, !230, !236, !243, !251, !257, !271, !283, !330}
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
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zl10353_reg_addr", file: !284, line: 18, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "drivers/media/dvb-frontends/zl10353_priv.h", directory: "/home/lizy2001/genbc/linux")
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!286 = !DIEnumerator(name: "INTERRUPT_0", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "INTERRUPT_1", value: 1, isUnsigned: true)
!288 = !DIEnumerator(name: "INTERRUPT_2", value: 2, isUnsigned: true)
!289 = !DIEnumerator(name: "INTERRUPT_3", value: 3, isUnsigned: true)
!290 = !DIEnumerator(name: "INTERRUPT_4", value: 4, isUnsigned: true)
!291 = !DIEnumerator(name: "INTERRUPT_5", value: 5, isUnsigned: true)
!292 = !DIEnumerator(name: "STATUS_6", value: 6, isUnsigned: true)
!293 = !DIEnumerator(name: "STATUS_7", value: 7, isUnsigned: true)
!294 = !DIEnumerator(name: "STATUS_8", value: 8, isUnsigned: true)
!295 = !DIEnumerator(name: "STATUS_9", value: 9, isUnsigned: true)
!296 = !DIEnumerator(name: "AGC_GAIN_1", value: 10, isUnsigned: true)
!297 = !DIEnumerator(name: "AGC_GAIN_0", value: 11, isUnsigned: true)
!298 = !DIEnumerator(name: "SNR", value: 16, isUnsigned: true)
!299 = !DIEnumerator(name: "RS_ERR_CNT_2", value: 17, isUnsigned: true)
!300 = !DIEnumerator(name: "RS_ERR_CNT_1", value: 18, isUnsigned: true)
!301 = !DIEnumerator(name: "RS_ERR_CNT_0", value: 19, isUnsigned: true)
!302 = !DIEnumerator(name: "RS_UBC_1", value: 20, isUnsigned: true)
!303 = !DIEnumerator(name: "RS_UBC_0", value: 21, isUnsigned: true)
!304 = !DIEnumerator(name: "TPS_RECEIVED_1", value: 29, isUnsigned: true)
!305 = !DIEnumerator(name: "TPS_RECEIVED_0", value: 30, isUnsigned: true)
!306 = !DIEnumerator(name: "TPS_CURRENT_1", value: 31, isUnsigned: true)
!307 = !DIEnumerator(name: "TPS_CURRENT_0", value: 32, isUnsigned: true)
!308 = !DIEnumerator(name: "CLOCK_CTL_0", value: 81, isUnsigned: true)
!309 = !DIEnumerator(name: "CLOCK_CTL_1", value: 82, isUnsigned: true)
!310 = !DIEnumerator(name: "PLL_0", value: 83, isUnsigned: true)
!311 = !DIEnumerator(name: "PLL_1", value: 84, isUnsigned: true)
!312 = !DIEnumerator(name: "RESET", value: 85, isUnsigned: true)
!313 = !DIEnumerator(name: "AGC_TARGET", value: 86, isUnsigned: true)
!314 = !DIEnumerator(name: "MCLK_RATIO", value: 92, isUnsigned: true)
!315 = !DIEnumerator(name: "ACQ_CTL", value: 94, isUnsigned: true)
!316 = !DIEnumerator(name: "TRL_NOMINAL_RATE_1", value: 101, isUnsigned: true)
!317 = !DIEnumerator(name: "TRL_NOMINAL_RATE_0", value: 102, isUnsigned: true)
!318 = !DIEnumerator(name: "INPUT_FREQ_1", value: 108, isUnsigned: true)
!319 = !DIEnumerator(name: "INPUT_FREQ_0", value: 109, isUnsigned: true)
!320 = !DIEnumerator(name: "TPS_GIVEN_1", value: 110, isUnsigned: true)
!321 = !DIEnumerator(name: "TPS_GIVEN_0", value: 111, isUnsigned: true)
!322 = !DIEnumerator(name: "TUNER_GO", value: 112, isUnsigned: true)
!323 = !DIEnumerator(name: "FSM_GO", value: 113, isUnsigned: true)
!324 = !DIEnumerator(name: "CHIP_ID", value: 127, isUnsigned: true)
!325 = !DIEnumerator(name: "CHAN_STEP_1", value: 228, isUnsigned: true)
!326 = !DIEnumerator(name: "CHAN_STEP_0", value: 229, isUnsigned: true)
!327 = !DIEnumerator(name: "OFDM_LOCK_TIME", value: 231, isUnsigned: true)
!328 = !DIEnumerator(name: "FEC_LOCK_TIME", value: 232, isUnsigned: true)
!329 = !DIEnumerator(name: "ACQ_DELAY", value: 233, isUnsigned: true)
!330 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !331, line: 305, baseType: !7, size: 32, elements: !332)
!331 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!332 = !{!333, !334, !335, !336}
!333 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!334 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!335 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!336 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!337 = !{!338, !340, !341, !346, !349}
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !339, line: 148, baseType: !7)
!339 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !342, line: 17, baseType: !343)
!342 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !344, line: 21, baseType: !345)
!344 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!345 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !342, line: 23, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !344, line: 31, baseType: !348)
!348 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!349 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!350 = !{!351, !417, !422, !427, !429, !434, !439, !444, !449, !454, !459, !461, !0, !463, !4356, !4360, !4365}
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 658, type: !353, isLocal: true, isDefinition: true, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !355, line: 69, size: 320, elements: !356)
!355 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!356 = !{!357, !361, !365, !385, !390, !394, !395}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !354, file: !355, line: 70, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !354, file: !355, line: 71, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !364, line: 76, flags: DIFlagFwdDecl)
!364 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !354, file: !355, line: 72, baseType: !366, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !355, line: 47, size: 256, elements: !369)
!369 = !{!370, !371, !376, !381}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !368, file: !355, line: 49, baseType: !7, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !368, file: !355, line: 51, baseType: !372, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!349, !358, !375}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !368, file: !355, line: 53, baseType: !377, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!349, !380, !375}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !368, file: !355, line: 55, baseType: !382, size: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !340}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !354, file: !355, line: 73, baseType: !386, size: 16, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !342, line: 19, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !344, line: 24, baseType: !389)
!389 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !354, file: !355, line: 74, baseType: !391, size: 8, offset: 208)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !342, line: 16, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !344, line: 20, baseType: !393)
!393 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !355, line: 75, baseType: !341, size: 8, offset: 216)
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !355, line: 76, baseType: !396, size: 64, offset: 256)
!396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !355, line: 76, size: 64, elements: !397)
!397 = !{!398, !399, !406}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !396, file: !355, line: 77, baseType: !340, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !396, file: !355, line: 78, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !355, line: 86, size: 128, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !402, file: !355, line: 87, baseType: !7, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !402, file: !355, line: 88, baseType: !380, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !396, file: !355, line: 79, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !355, line: 92, size: 256, elements: !410)
!410 = !{!411, !412, !413, !415, !416}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !409, file: !355, line: 94, baseType: !7, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !409, file: !355, line: 95, baseType: !7, size: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !409, file: !355, line: 96, baseType: !414, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !409, file: !355, line: 97, baseType: !366, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !409, file: !355, line: 98, baseType: !340, size: 64, offset: 192)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 658, type: !419, isLocal: true, isDefinition: true, align: 8)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 216, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 27)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 659, type: !424, isLocal: true, isDefinition: true, align: 8)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 520, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 65)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(name: "__param_debug_regs", scope: !2, file: !3, line: 661, type: !353, isLocal: true, isDefinition: true, align: 64)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug_regstype222", scope: !2, file: !3, line: 661, type: !431, isLocal: true, isDefinition: true, align: 8)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 256, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 32)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug_regs223", scope: !2, file: !3, line: 662, type: !436, isLocal: true, isDefinition: true, align: 8)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 600, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 75)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description224", scope: !2, file: !3, line: 664, type: !441, isLocal: true, isDefinition: true, align: 8)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 488, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 61)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author225", scope: !2, file: !3, line: 665, type: !446, isLocal: true, isDefinition: true, align: 8)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 224, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 28)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file226", scope: !2, file: !3, line: 666, type: !451, isLocal: true, isDefinition: true, align: 8)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 392, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 49)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license227", scope: !2, file: !3, line: 666, type: !456, isLocal: true, isDefinition: true, align: 8)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 160, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 20)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 31, type: !349, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(name: "debug_regs", scope: !2, file: !3, line: 37, type: !349, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "zl10353_softdown", scope: !465, file: !3, line: 160, type: !4355, isLocal: true, isDefinition: true)
!465 = distinct !DISubprogram(name: "zl10353_sleep", scope: !3, file: !3, line: 158, type: !466, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!466 = !DISubroutineType(types: !467)
!467 = !{!349, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !470)
!470 = !{!471, !485, !775, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4353, !4354}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !469, file: !51, line: 687, baseType: !472, size: 32)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !473, line: 19, size: 32, elements: !474)
!473 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !472, file: !473, line: 20, baseType: !476, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !477, line: 113, baseType: !478)
!477 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !477, line: 111, size: 32, elements: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !478, file: !477, line: 112, baseType: !481, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !339, line: 168, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !339, line: 166, size: 32, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !482, file: !339, line: 167, baseType: !349, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !469, file: !51, line: 688, baseType: !486, size: 6016, offset: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !487)
!487 = !{!488, !505, !509, !513, !514, !515, !517, !518, !524, !531, !535, !536, !546, !629, !633, !638, !643, !644, !645, !646, !658, !669, !673, !677, !681, !686, !691, !695, !696, !697, !701, !757}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !486, file: !51, line: 436, baseType: !489, size: 1280)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !490)
!490 = !{!491, !495, !498, !499, !500, !501, !502, !503, !504}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !489, file: !51, line: 339, baseType: !492, size: 1024)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 1024, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !489, file: !51, line: 340, baseType: !496, size: 32, offset: 1024)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !342, line: 21, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !344, line: 27, baseType: !7)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !489, file: !51, line: 341, baseType: !496, size: 32, offset: 1056)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !489, file: !51, line: 342, baseType: !496, size: 32, offset: 1088)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !489, file: !51, line: 343, baseType: !496, size: 32, offset: 1120)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !489, file: !51, line: 344, baseType: !496, size: 32, offset: 1152)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !489, file: !51, line: 345, baseType: !496, size: 32, offset: 1184)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !489, file: !51, line: 346, baseType: !496, size: 32, offset: 1216)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !489, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !486, file: !51, line: 438, baseType: !506, size: 64, offset: 1280)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 64, elements: !507)
!507 = !{!508}
!508 = !DISubrange(count: 8)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !486, file: !51, line: 440, baseType: !510, size: 64, offset: 1344)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !468}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !486, file: !51, line: 441, baseType: !510, size: 64, offset: 1408)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !486, file: !51, line: 442, baseType: !510, size: 64, offset: 1472)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !486, file: !51, line: 444, baseType: !516, size: 64, offset: 1536)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !486, file: !51, line: 445, baseType: !516, size: 64, offset: 1600)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !486, file: !51, line: 447, baseType: !519, size: 64, offset: 1664)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!349, !468, !522, !349}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !486, file: !51, line: 450, baseType: !525, size: 64, offset: 1728)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!349, !468, !528, !7, !414, !530}
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !339, line: 30, baseType: !529)
!529 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !486, file: !51, line: 457, baseType: !532, size: 64, offset: 1792)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!50, !468}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !486, file: !51, line: 460, baseType: !516, size: 64, offset: 1856)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !486, file: !51, line: 461, baseType: !537, size: 64, offset: 1920)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!349, !468, !540}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !542)
!542 = !{!543, !544, !545}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !541, file: !51, line: 70, baseType: !349, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !541, file: !51, line: 71, baseType: !349, size: 32, offset: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !541, file: !51, line: 72, baseType: !349, size: 32, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !486, file: !51, line: 463, baseType: !547, size: 64, offset: 1984)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!349, !468, !550}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !552)
!552 = !{!553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !622, !623, !624, !625, !626, !627, !628}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !551, file: !51, line: 587, baseType: !496, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !551, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !551, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !551, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !551, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !551, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !551, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !551, file: !51, line: 595, baseType: !496, size: 32, offset: 224)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !551, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !551, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !551, file: !51, line: 598, baseType: !496, size: 32, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !551, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !551, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !551, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !551, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !551, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !551, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !551, file: !51, line: 610, baseType: !341, size: 8, offset: 544)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !551, file: !51, line: 611, baseType: !341, size: 8, offset: 552)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !551, file: !51, line: 612, baseType: !341, size: 8, offset: 560)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !551, file: !51, line: 613, baseType: !496, size: 32, offset: 576)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !551, file: !51, line: 614, baseType: !496, size: 32, offset: 608)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !551, file: !51, line: 615, baseType: !341, size: 8, offset: 640)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !551, file: !51, line: 621, baseType: !577, size: 384, offset: 672)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 384, elements: !584)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !551, file: !51, line: 616, size: 128, elements: !579)
!579 = !{!580, !581, !582, !583}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !578, file: !51, line: 617, baseType: !341, size: 8)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !578, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !578, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !578, file: !51, line: 620, baseType: !341, size: 8, offset: 96)
!584 = !{!585}
!585 = !DISubrange(count: 3)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !551, file: !51, line: 624, baseType: !496, size: 32, offset: 1056)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !551, file: !51, line: 627, baseType: !496, size: 32, offset: 1088)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !551, file: !51, line: 630, baseType: !341, size: 8, offset: 1120)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !551, file: !51, line: 631, baseType: !341, size: 8, offset: 1128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !551, file: !51, line: 632, baseType: !341, size: 8, offset: 1136)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !551, file: !51, line: 633, baseType: !341, size: 8, offset: 1144)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !551, file: !51, line: 634, baseType: !341, size: 8, offset: 1152)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !551, file: !51, line: 635, baseType: !341, size: 8, offset: 1160)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !551, file: !51, line: 637, baseType: !341, size: 8, offset: 1168)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !551, file: !51, line: 638, baseType: !341, size: 8, offset: 1176)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !551, file: !51, line: 639, baseType: !341, size: 8, offset: 1184)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !551, file: !51, line: 640, baseType: !341, size: 8, offset: 1192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !551, file: !51, line: 641, baseType: !341, size: 8, offset: 1200)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !551, file: !51, line: 642, baseType: !341, size: 8, offset: 1208)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !551, file: !51, line: 643, baseType: !341, size: 8, offset: 1216)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !551, file: !51, line: 644, baseType: !341, size: 8, offset: 1224)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !551, file: !51, line: 645, baseType: !341, size: 8, offset: 1232)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !551, file: !51, line: 647, baseType: !496, size: 32, offset: 1248)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !551, file: !51, line: 650, baseType: !605, size: 296, offset: 1280)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !605, file: !6, line: 826, baseType: !343, size: 8)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !605, file: !6, line: 827, baseType: !609, size: 288, offset: 8)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 288, elements: !620)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !611)
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !610, file: !6, line: 804, baseType: !343, size: 8)
!613 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !6, line: 805, baseType: !614, size: 64, offset: 8)
!614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !6, line: 805, size: 64, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !614, file: !6, line: 806, baseType: !347, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !614, file: !6, line: 807, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !344, line: 30, baseType: !619)
!619 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!620 = !{!621}
!621 = !DISubrange(count: 4)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !551, file: !51, line: 651, baseType: !605, size: 296, offset: 1576)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !551, file: !51, line: 652, baseType: !605, size: 296, offset: 1872)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !551, file: !51, line: 653, baseType: !605, size: 296, offset: 2168)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !551, file: !51, line: 654, baseType: !605, size: 296, offset: 2464)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !551, file: !51, line: 655, baseType: !605, size: 296, offset: 2760)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !551, file: !51, line: 656, baseType: !605, size: 296, offset: 3056)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !551, file: !51, line: 657, baseType: !605, size: 296, offset: 3352)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !486, file: !51, line: 466, baseType: !630, size: 64, offset: 2048)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!349, !468, !530}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !486, file: !51, line: 467, baseType: !634, size: 64, offset: 2112)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!349, !468, !637}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !486, file: !51, line: 468, baseType: !639, size: 64, offset: 2176)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!349, !468, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !486, file: !51, line: 469, baseType: !639, size: 64, offset: 2240)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !486, file: !51, line: 470, baseType: !634, size: 64, offset: 2304)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !486, file: !51, line: 472, baseType: !516, size: 64, offset: 2368)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !486, file: !51, line: 473, baseType: !647, size: 64, offset: 2432)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!349, !468, !650}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !652)
!652 = !{!653, !657}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !651, file: !6, line: 174, baseType: !654, size: 48)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 48, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 6)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !651, file: !6, line: 175, baseType: !343, size: 8, offset: 48)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !486, file: !51, line: 474, baseType: !659, size: 64, offset: 2496)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!349, !468, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !664)
!664 = !{!665, !667, !668}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !663, file: !6, line: 196, baseType: !666, size: 32)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 32, elements: !620)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !663, file: !6, line: 197, baseType: !343, size: 8, offset: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !663, file: !6, line: 198, baseType: !349, size: 32, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !486, file: !51, line: 475, baseType: !670, size: 64, offset: 2560)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!349, !468, !171}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !486, file: !51, line: 477, baseType: !674, size: 64, offset: 2624)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!349, !468, !78}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !486, file: !51, line: 478, baseType: !678, size: 64, offset: 2688)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!349, !468, !73}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !486, file: !51, line: 480, baseType: !682, size: 64, offset: 2752)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!349, !468, !685}
!685 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !486, file: !51, line: 481, baseType: !687, size: 64, offset: 2816)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!349, !468, !690}
!690 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !486, file: !51, line: 482, baseType: !692, size: 64, offset: 2880)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!349, !468, !349}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !486, file: !51, line: 483, baseType: !692, size: 64, offset: 2944)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !486, file: !51, line: 484, baseType: !516, size: 64, offset: 3008)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !486, file: !51, line: 490, baseType: !698, size: 64, offset: 3072)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!175, !468}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !486, file: !51, line: 492, baseType: !702, size: 2304, offset: 3136)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !703)
!703 = !{!704, !714, !715, !716, !717, !718, !719, !720, !731, !735, !736, !737, !738, !739, !740, !747, !752, !756}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !702, file: !51, line: 228, baseType: !705, size: 1216)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712, !713}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !705, file: !51, line: 89, baseType: !492, size: 1024)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !705, file: !51, line: 91, baseType: !496, size: 32, offset: 1024)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !705, file: !51, line: 92, baseType: !496, size: 32, offset: 1056)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !705, file: !51, line: 93, baseType: !496, size: 32, offset: 1088)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !705, file: !51, line: 95, baseType: !496, size: 32, offset: 1120)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !705, file: !51, line: 96, baseType: !496, size: 32, offset: 1152)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !705, file: !51, line: 97, baseType: !496, size: 32, offset: 1184)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !702, file: !51, line: 230, baseType: !510, size: 64, offset: 1216)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !702, file: !51, line: 231, baseType: !516, size: 64, offset: 1280)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !702, file: !51, line: 232, baseType: !516, size: 64, offset: 1344)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !702, file: !51, line: 233, baseType: !516, size: 64, offset: 1408)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !702, file: !51, line: 234, baseType: !516, size: 64, offset: 1472)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !702, file: !51, line: 237, baseType: !516, size: 64, offset: 1536)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !702, file: !51, line: 238, baseType: !721, size: 64, offset: 1600)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!349, !468, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !726)
!726 = !{!727, !728, !729, !730}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !725, file: !51, line: 115, baseType: !7, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !725, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !725, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !725, file: !51, line: 118, baseType: !346, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !702, file: !51, line: 240, baseType: !732, size: 64, offset: 1664)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!349, !468, !340}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !702, file: !51, line: 242, baseType: !634, size: 64, offset: 1728)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !702, file: !51, line: 243, baseType: !634, size: 64, offset: 1792)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !702, file: !51, line: 244, baseType: !634, size: 64, offset: 1856)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !702, file: !51, line: 248, baseType: !634, size: 64, offset: 1920)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !702, file: !51, line: 249, baseType: !639, size: 64, offset: 1984)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !702, file: !51, line: 250, baseType: !741, size: 64, offset: 2048)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!349, !468, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !342, line: 20, baseType: !746)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !344, line: 26, baseType: !349)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !702, file: !51, line: 258, baseType: !748, size: 64, offset: 2112)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!349, !468, !751, !349}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !702, file: !51, line: 267, baseType: !753, size: 64, offset: 2176)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!349, !468, !496}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !702, file: !51, line: 268, baseType: !753, size: 64, offset: 2240)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !486, file: !51, line: 493, baseType: !758, size: 576, offset: 5440)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !759)
!759 = !{!760, !764, !768, !769, !770, !771, !772, !773, !774}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !758, file: !51, line: 304, baseType: !761, size: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !762)
!762 = !{!763}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !761, file: !51, line: 277, baseType: !380, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !758, file: !51, line: 306, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !468, !724}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !758, file: !51, line: 308, baseType: !639, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !758, file: !51, line: 309, baseType: !741, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !758, file: !51, line: 310, baseType: !510, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !758, file: !51, line: 311, baseType: !510, size: 64, offset: 320)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !758, file: !51, line: 312, baseType: !510, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !758, file: !51, line: 313, baseType: !692, size: 64, offset: 448)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !758, file: !51, line: 316, baseType: !732, size: 64, offset: 512)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !469, file: !51, line: 689, baseType: !776, size: 64, offset: 6080)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !778)
!778 = !{!779, !780, !786, !787, !788, !790, !791, !4321, !4322, !4323, !4342}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !777, file: !272, line: 102, baseType: !349, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !777, file: !272, line: 103, baseType: !781, size: 128, offset: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !339, line: 178, size: 128, elements: !782)
!782 = !{!783, !785}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !781, file: !339, line: 179, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !781, file: !339, line: 179, baseType: !784, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !777, file: !272, line: 104, baseType: !781, size: 128, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !777, file: !272, line: 105, baseType: !358, size: 64, offset: 320)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !777, file: !272, line: 106, baseType: !789, size: 48, offset: 384)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 48, elements: !655)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !777, file: !272, line: 107, baseType: !340, size: 64, offset: 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !777, file: !272, line: 109, baseType: !792, size: 64, offset: 512)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !794)
!794 = !{!795, !3778, !3779, !3782, !3783, !3834, !3922, !3923, !3924, !3925, !3926, !3935, !4040, !4053, !4248, !4249, !4253, !4255, !4256, !4257, !4261, !4267, !4268, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4309, !4310, !4311, !4314, !4317, !4318, !4319, !4320}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !793, file: !237, line: 462, baseType: !796, size: 512)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !797, line: 64, size: 512, elements: !798)
!797 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!798 = !{!799, !800, !801, !803, !860, !3633, !3772, !3773, !3774, !3775, !3776, !3777}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !796, file: !797, line: 65, baseType: !358, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !796, file: !797, line: 66, baseType: !781, size: 128, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !796, file: !797, line: 67, baseType: !802, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !796, file: !797, line: 68, baseType: !804, size: 64, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !797, line: 192, size: 704, elements: !806)
!806 = !{!807, !808, !824, !825}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !805, file: !797, line: 193, baseType: !781, size: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !805, file: !797, line: 194, baseType: !809, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !810, line: 83, baseType: !811)
!810 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !810, line: 71, elements: !812)
!812 = !{!813}
!813 = !DIDerivedType(tag: DW_TAG_member, scope: !811, file: !810, line: 72, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !811, file: !810, line: 72, elements: !815)
!815 = !{!816}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !814, file: !810, line: 73, baseType: !817)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !810, line: 20, elements: !818)
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !817, file: !810, line: 21, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !821, line: 25, baseType: !822)
!821 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !821, line: 25, elements: !823)
!823 = !{}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !805, file: !797, line: 195, baseType: !796, size: 512, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !805, file: !797, line: 196, baseType: !826, size: 64, offset: 640)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !797, line: 156, size: 192, elements: !829)
!829 = !{!830, !835, !840}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !828, file: !797, line: 157, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !832)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!349, !804, !802}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !828, file: !797, line: 158, baseType: !836, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !837)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!358, !804, !802}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !828, file: !797, line: 159, baseType: !841, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!349, !804, !802, !845}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !797, line: 148, size: 20736, elements: !847)
!847 = !{!848, !850, !854, !855, !859}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !846, file: !797, line: 149, baseType: !849, size: 192)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 192, elements: !584)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !846, file: !797, line: 150, baseType: !851, size: 4096, offset: 192)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 4096, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !846, file: !797, line: 151, baseType: !349, size: 32, offset: 4288)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !846, file: !797, line: 152, baseType: !856, size: 16384, offset: 4320)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 16384, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: 2048)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !846, file: !797, line: 153, baseType: !349, size: 32, offset: 20704)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !796, file: !797, line: 69, baseType: !861, size: 64, offset: 320)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !797, line: 138, size: 448, elements: !863)
!863 = !{!864, !868, !895, !897, !3595, !3623, !3627}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !862, file: !797, line: 139, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !802}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !862, file: !797, line: 140, baseType: !869, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !871)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !872, line: 230, size: 128, elements: !873)
!872 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!873 = !{!874, !888}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !871, file: !872, line: 231, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!878, !802, !882, !380}
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !339, line: 60, baseType: !879)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !880, line: 73, baseType: !881)
!880 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !880, line: 15, baseType: !685)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !872, line: 30, size: 128, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !883, file: !872, line: 31, baseType: !358, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !883, file: !872, line: 32, baseType: !887, size: 16, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !339, line: 19, baseType: !389)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !871, file: !872, line: 232, baseType: !889, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!878, !802, !882, !358, !892}
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !339, line: 55, baseType: !893)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !880, line: 72, baseType: !894)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !880, line: 16, baseType: !690)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !862, file: !797, line: 141, baseType: !896, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !862, file: !797, line: 142, baseType: !898, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !872, line: 84, size: 320, elements: !902)
!902 = !{!903, !904, !908, !3592, !3593}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !901, file: !872, line: 85, baseType: !358, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !901, file: !872, line: 86, baseType: !905, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!887, !802, !882, !349}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !901, file: !872, line: 88, baseType: !909, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!887, !802, !912, !349}
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !872, line: 168, size: 448, elements: !914)
!914 = !{!915, !916, !917, !918, !3587, !3588}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !913, file: !872, line: 169, baseType: !883, size: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !913, file: !872, line: 170, baseType: !892, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !913, file: !872, line: 171, baseType: !340, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !913, file: !872, line: 172, baseType: !919, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!878, !922, !802, !912, !380, !1088, !892}
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !924)
!924 = !{!925, !943, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3570, !3571, !3580, !3581, !3582, !3583, !3584, !3585, !3586}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !923, file: !208, line: 920, baseType: !926, size: 128)
!926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !923, file: !208, line: 917, size: 128, elements: !927)
!927 = !{!928, !934}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !926, file: !208, line: 918, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !930, line: 58, size: 64, elements: !931)
!930 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!931 = !{!932}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !929, file: !930, line: 59, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !926, file: !208, line: 919, baseType: !935, size: 128, align: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !339, line: 216, size: 128, align: 64, elements: !936)
!936 = !{!937, !939}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !935, file: !339, line: 217, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !935, file: !339, line: 218, baseType: !940, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{null, !938}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !923, file: !208, line: 921, baseType: !944, size: 128, offset: 128)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !945, line: 8, size: 128, elements: !946)
!945 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!946 = !{!947, !951}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !944, file: !945, line: 9, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !950, line: 18, flags: DIFlagFwdDecl)
!950 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!951 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !944, file: !945, line: 10, baseType: !952, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !950, line: 89, size: 1536, elements: !954)
!954 = !{!955, !956, !966, !974, !975, !990, !3521, !3523, !3535, !3536, !3537, !3538, !3539, !3544, !3545, !3546}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !953, file: !950, line: 91, baseType: !7, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !953, file: !950, line: 92, baseType: !957, size: 32, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !958, line: 277, baseType: !959)
!958 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !958, line: 277, size: 32, elements: !960)
!960 = !{!961}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !959, file: !958, line: 277, baseType: !962, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !958, line: 70, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !958, line: 65, size: 32, elements: !964)
!964 = !{!965}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !963, file: !958, line: 66, baseType: !7, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !953, file: !950, line: 93, baseType: !967, size: 128, offset: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !968, line: 38, size: 128, elements: !969)
!968 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!969 = !{!970, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !967, file: !968, line: 39, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !967, file: !968, line: 39, baseType: !973, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !953, file: !950, line: 94, baseType: !952, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !953, file: !950, line: 95, baseType: !976, size: 128, offset: 256)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !950, line: 47, size: 128, elements: !977)
!977 = !{!978, !987}
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !950, line: 48, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !976, file: !950, line: 48, size: 64, elements: !980)
!980 = !{!981, !986}
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !950, line: 49, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !979, file: !950, line: 49, size: 64, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !982, file: !950, line: 50, baseType: !496, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !982, file: !950, line: 50, baseType: !496, size: 32, offset: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !979, file: !950, line: 52, baseType: !346, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !976, file: !950, line: 54, baseType: !988, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !953, file: !950, line: 96, baseType: !991, size: 64, offset: 384)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !993)
!993 = !{!994, !995, !996, !1004, !1011, !1012, !1153, !3215, !3216, !3217, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3489, !3497, !3498, !3499, !3517, !3518, !3519, !3520}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !992, file: !208, line: 611, baseType: !887, size: 16)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !992, file: !208, line: 612, baseType: !389, size: 16, offset: 16)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !992, file: !208, line: 613, baseType: !997, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !998, line: 23, baseType: !999)
!998 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !998, line: 21, size: 32, elements: !1000)
!1000 = !{!1001}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !999, file: !998, line: 22, baseType: !1002, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !339, line: 32, baseType: !1003)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !880, line: 49, baseType: !7)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !992, file: !208, line: 614, baseType: !1005, size: 32, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !998, line: 28, baseType: !1006)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !998, line: 26, size: 32, elements: !1007)
!1007 = !{!1008}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1006, file: !998, line: 27, baseType: !1009, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !339, line: 33, baseType: !1010)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !880, line: 50, baseType: !7)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !992, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !992, file: !208, line: 622, baseType: !1013, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !1016)
!1016 = !{!1017, !1021, !1031, !1035, !1041, !1045, !1049, !1053, !1057, !1061, !1065, !1066, !1072, !1076, !1100, !1129, !1133, !1139, !1144, !1148, !1149}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1015, file: !208, line: 1865, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!952, !991, !952, !7}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1015, file: !208, line: 1866, baseType: !1022, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!358, !952, !991, !1025}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1027, line: 10, size: 128, elements: !1028)
!1027 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1026, file: !1027, line: 11, baseType: !382, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1026, file: !1027, line: 12, baseType: !340, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1015, file: !208, line: 1867, baseType: !1032, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!349, !991, !349}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1015, file: !208, line: 1868, baseType: !1036, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!1039, !991, !349}
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1015, file: !208, line: 1870, baseType: !1042, size: 64, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!349, !952, !380, !349}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1015, file: !208, line: 1872, baseType: !1046, size: 64, offset: 320)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!349, !991, !952, !887, !528}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1015, file: !208, line: 1873, baseType: !1050, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!349, !952, !991, !952}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1015, file: !208, line: 1874, baseType: !1054, size: 64, offset: 448)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!349, !991, !952}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1015, file: !208, line: 1875, baseType: !1058, size: 64, offset: 512)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!349, !991, !952, !358}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1015, file: !208, line: 1876, baseType: !1062, size: 64, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!349, !991, !952, !887}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1015, file: !208, line: 1877, baseType: !1054, size: 64, offset: 640)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1015, file: !208, line: 1878, baseType: !1067, size: 64, offset: 704)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!349, !991, !952, !887, !1070}
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !339, line: 16, baseType: !1071)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !339, line: 13, baseType: !496)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1015, file: !208, line: 1879, baseType: !1073, size: 64, offset: 768)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!349, !991, !952, !991, !952, !7}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1015, file: !208, line: 1881, baseType: !1077, size: 64, offset: 832)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!349, !952, !1080}
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1087, !1090, !1097, !1098, !1099}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1081, file: !208, line: 220, baseType: !7, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1081, file: !208, line: 221, baseType: !887, size: 16, offset: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1081, file: !208, line: 222, baseType: !997, size: 32, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1081, file: !208, line: 223, baseType: !1005, size: 32, offset: 96)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1081, file: !208, line: 224, baseType: !1088, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !339, line: 46, baseType: !1089)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !880, line: 88, baseType: !619)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1081, file: !208, line: 225, baseType: !1091, size: 128, offset: 192)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1092, line: 13, size: 128, elements: !1093)
!1092 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1093 = !{!1094, !1096}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1091, file: !1092, line: 14, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1092, line: 8, baseType: !618)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1091, file: !1092, line: 15, baseType: !685, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1081, file: !208, line: 226, baseType: !1091, size: 128, offset: 320)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1081, file: !208, line: 227, baseType: !1091, size: 128, offset: 448)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1081, file: !208, line: 234, baseType: !922, size: 64, offset: 576)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1015, file: !208, line: 1882, baseType: !1101, size: 64, offset: 896)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!349, !1104, !1106, !496, !7}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !944)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1108, line: 22, size: 1152, elements: !1109)
!1108 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!1109 = !{!1110, !1111, !1112, !1113, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1107, file: !1108, line: 23, baseType: !496, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1107, file: !1108, line: 24, baseType: !887, size: 16, offset: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1107, file: !1108, line: 25, baseType: !7, size: 32, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1107, file: !1108, line: 26, baseType: !1114, size: 32, offset: 96)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !339, line: 104, baseType: !496)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1107, file: !1108, line: 27, baseType: !346, size: 64, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1107, file: !1108, line: 28, baseType: !346, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1107, file: !1108, line: 37, baseType: !346, size: 64, offset: 256)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1107, file: !1108, line: 38, baseType: !1070, size: 32, offset: 320)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1107, file: !1108, line: 39, baseType: !1070, size: 32, offset: 352)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1107, file: !1108, line: 40, baseType: !997, size: 32, offset: 384)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1107, file: !1108, line: 41, baseType: !1005, size: 32, offset: 416)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1107, file: !1108, line: 42, baseType: !1088, size: 64, offset: 448)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1107, file: !1108, line: 43, baseType: !1091, size: 128, offset: 512)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1107, file: !1108, line: 44, baseType: !1091, size: 128, offset: 640)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1107, file: !1108, line: 45, baseType: !1091, size: 128, offset: 768)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1107, file: !1108, line: 46, baseType: !1091, size: 128, offset: 896)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1107, file: !1108, line: 47, baseType: !346, size: 64, offset: 1024)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1107, file: !1108, line: 48, baseType: !346, size: 64, offset: 1088)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1015, file: !208, line: 1883, baseType: !1130, size: 64, offset: 960)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!878, !952, !380, !892}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1015, file: !208, line: 1884, baseType: !1134, size: 64, offset: 1024)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!349, !991, !1137, !346, !346}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1015, file: !208, line: 1886, baseType: !1140, size: 64, offset: 1088)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!349, !991, !1143, !349}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1015, file: !208, line: 1887, baseType: !1145, size: 64, offset: 1152)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!349, !991, !952, !922, !7, !887}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1015, file: !208, line: 1890, baseType: !1062, size: 64, offset: 1216)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1015, file: !208, line: 1891, baseType: !1150, size: 64, offset: 1280)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!349, !991, !1039, !349}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !992, file: !208, line: 623, baseType: !1154, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !1156)
!1156 = !{!1157, !1158, !1159, !1160, !1161, !1162, !1209, !2823, !2905, !2988, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3004, !3008, !3009, !3012, !3013, !3016, !3017, !3018, !3059, !3085, !3086, !3087, !3088, !3089, !3090, !3093, !3095, !3102, !3103, !3105, !3106, !3107, !3166, !3167, !3182, !3183, !3184, !3185, !3186, !3189, !3190, !3191, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1155, file: !208, line: 1417, baseType: !781, size: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1155, file: !208, line: 1418, baseType: !1070, size: 32, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1155, file: !208, line: 1419, baseType: !345, size: 8, offset: 160)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1155, file: !208, line: 1420, baseType: !690, size: 64, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1155, file: !208, line: 1421, baseType: !1088, size: 64, offset: 256)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1155, file: !208, line: 1422, baseType: !1163, size: 64, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1175, !1179, !1183, !1187, !1188, !1189, !1199, !1202, !1203, !1204, !1206, !1207, !1208}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1164, file: !208, line: 2229, baseType: !358, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1164, file: !208, line: 2230, baseType: !349, size: 32, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1164, file: !208, line: 2238, baseType: !1169, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!349, !1172}
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1174, line: 28, flags: DIFlagFwdDecl)
!1174 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1164, file: !208, line: 2239, baseType: !1176, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1178)
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1164, file: !208, line: 2240, baseType: !1180, size: 64, offset: 256)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!952, !1163, !349, !358, !340}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1164, file: !208, line: 2242, baseType: !1184, size: 64, offset: 320)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{null, !1154}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1164, file: !208, line: 2243, baseType: !362, size: 64, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1164, file: !208, line: 2244, baseType: !1163, size: 64, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1164, file: !208, line: 2245, baseType: !1190, size: 64, offset: 512)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !339, line: 182, size: 64, elements: !1191)
!1191 = !{!1192}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1190, file: !339, line: 183, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !339, line: 186, size: 128, elements: !1195)
!1195 = !{!1196, !1197}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1194, file: !339, line: 187, baseType: !1193, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1194, file: !339, line: 187, baseType: !1198, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1164, file: !208, line: 2247, baseType: !1200, offset: 576)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1201, line: 187, elements: !823)
!1201 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1164, file: !208, line: 2248, baseType: !1200, offset: 576)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1164, file: !208, line: 2249, baseType: !1200, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1164, file: !208, line: 2250, baseType: !1205, offset: 576)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1200, elements: !584)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1164, file: !208, line: 2252, baseType: !1200, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1164, file: !208, line: 2253, baseType: !1200, offset: 576)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1164, file: !208, line: 2254, baseType: !1200, offset: 576)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1155, file: !208, line: 1423, baseType: !1210, size: 64, offset: 384)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1212)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !1213)
!1213 = !{!1214, !1218, !1222, !1223, !1227, !1233, !1237, !1238, !1239, !1243, !1247, !1248, !1249, !1250, !1256, !1261, !1262, !1269, !1270, !1271, !1272, !2807, !2822}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1212, file: !208, line: 1936, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!991, !1154}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1212, file: !208, line: 1937, baseType: !1219, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{null, !991}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1212, file: !208, line: 1938, baseType: !1219, size: 64, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1212, file: !208, line: 1940, baseType: !1224, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !991, !349}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1212, file: !208, line: 1941, baseType: !1228, size: 64, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!349, !991, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1212, file: !208, line: 1942, baseType: !1234, size: 64, offset: 320)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!349, !991}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1212, file: !208, line: 1943, baseType: !1219, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1212, file: !208, line: 1944, baseType: !1184, size: 64, offset: 448)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1212, file: !208, line: 1945, baseType: !1240, size: 64, offset: 512)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!349, !1154, !349}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1212, file: !208, line: 1946, baseType: !1244, size: 64, offset: 576)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!349, !1154}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1212, file: !208, line: 1947, baseType: !1244, size: 64, offset: 640)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1212, file: !208, line: 1948, baseType: !1244, size: 64, offset: 704)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1212, file: !208, line: 1949, baseType: !1244, size: 64, offset: 768)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1212, file: !208, line: 1950, baseType: !1251, size: 64, offset: 832)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!349, !952, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1212, file: !208, line: 1951, baseType: !1257, size: 64, offset: 896)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!349, !1154, !1260, !380}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1212, file: !208, line: 1952, baseType: !1184, size: 64, offset: 960)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1212, file: !208, line: 1954, baseType: !1263, size: 64, offset: 1024)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!349, !1266, !952}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1268, line: 539, flags: DIFlagFwdDecl)
!1268 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1212, file: !208, line: 1955, baseType: !1263, size: 64, offset: 1088)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1212, file: !208, line: 1956, baseType: !1263, size: 64, offset: 1152)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1212, file: !208, line: 1957, baseType: !1263, size: 64, offset: 1216)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1212, file: !208, line: 1963, baseType: !1273, size: 64, offset: 1280)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!349, !1154, !1276, !338}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1278, line: 68, size: 512, align: 128, elements: !1279)
!1278 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1279 = !{!1280, !1281, !2799, !2806}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1277, file: !1278, line: 69, baseType: !690, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, scope: !1277, file: !1278, line: 77, baseType: !1282, size: 320, offset: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1277, file: !1278, line: 77, size: 320, elements: !1283)
!1283 = !{!1284, !1465, !1470, !1498, !1506, !1512, !2791, !2798}
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !1278, line: 78, baseType: !1285, size: 320)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !1278, line: 78, size: 320, elements: !1286)
!1286 = !{!1287, !1288, !1463, !1464}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1285, file: !1278, line: 84, baseType: !781, size: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1285, file: !1278, line: 86, baseType: !1289, size: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !1291)
!1291 = !{!1292, !1293, !1300, !1301, !1302, !1317, !1333, !1334, !1335, !1336, !1456, !1457, !1460, !1461, !1462}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1290, file: !208, line: 452, baseType: !991, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1290, file: !208, line: 453, baseType: !1294, size: 128, offset: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1295, line: 292, size: 128, elements: !1296)
!1295 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1296 = !{!1297, !1298, !1299}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1294, file: !1295, line: 293, baseType: !809)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1294, file: !1295, line: 295, baseType: !338, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1294, file: !1295, line: 296, baseType: !340, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1290, file: !208, line: 454, baseType: !338, size: 32, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1290, file: !208, line: 455, baseType: !481, size: 32, offset: 224)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1290, file: !208, line: 460, baseType: !1303, size: 128, offset: 256)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1304, line: 125, size: 128, elements: !1305)
!1304 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!1305 = !{!1306, !1316}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1303, file: !1304, line: 126, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1304, line: 31, size: 64, elements: !1308)
!1308 = !{!1309}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1307, file: !1304, line: 32, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1304, line: 24, size: 192, align: 64, elements: !1312)
!1312 = !{!1313, !1314, !1315}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1311, file: !1304, line: 25, baseType: !690, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1311, file: !1304, line: 26, baseType: !1310, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1311, file: !1304, line: 27, baseType: !1310, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1303, file: !1304, line: 127, baseType: !1310, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1290, file: !208, line: 461, baseType: !1318, size: 256, offset: 384)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1319, line: 35, size: 256, elements: !1320)
!1319 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1320 = !{!1321, !1329, !1330, !1332}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1318, file: !1319, line: 36, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1323, line: 13, baseType: !1324)
!1323 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !339, line: 175, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !339, line: 173, size: 64, elements: !1326)
!1326 = !{!1327}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1325, file: !339, line: 174, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !342, line: 22, baseType: !618)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1318, file: !1319, line: 42, baseType: !1322, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1318, file: !1319, line: 46, baseType: !1331, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !810, line: 29, baseType: !817)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1318, file: !1319, line: 47, baseType: !781, size: 128, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1290, file: !208, line: 462, baseType: !690, size: 64, offset: 640)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1290, file: !208, line: 463, baseType: !690, size: 64, offset: 704)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1290, file: !208, line: 464, baseType: !690, size: 64, offset: 768)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1290, file: !208, line: 465, baseType: !1337, size: 64, offset: 832)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1339)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1340)
!1340 = !{!1341, !1345, !1349, !1353, !1357, !1361, !1367, !1373, !1377, !1382, !1386, !1390, !1394, !1420, !1424, !1430, !1431, !1432, !1436, !1441, !1445, !1452}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1339, file: !208, line: 368, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!349, !1276, !1231}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1339, file: !208, line: 369, baseType: !1346, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!349, !922, !1276}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1339, file: !208, line: 372, baseType: !1350, size: 64, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!349, !1289, !1231}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1339, file: !208, line: 375, baseType: !1354, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!349, !1276}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1339, file: !208, line: 381, baseType: !1358, size: 64, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!349, !922, !1289, !784, !7}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1339, file: !208, line: 383, baseType: !1362, size: 64, offset: 320)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !1365}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1339, file: !208, line: 385, baseType: !1368, size: 64, offset: 384)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!349, !922, !1289, !1088, !7, !7, !1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1339, file: !208, line: 388, baseType: !1374, size: 64, offset: 448)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!349, !922, !1289, !1088, !7, !7, !1276, !340}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1339, file: !208, line: 393, baseType: !1378, size: 64, offset: 512)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!1381, !1289, !1381}
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !339, line: 125, baseType: !346)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1339, file: !208, line: 394, baseType: !1383, size: 64, offset: 576)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !1276, !7, !7}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1339, file: !208, line: 395, baseType: !1387, size: 64, offset: 640)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!349, !1276, !338}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1339, file: !208, line: 396, baseType: !1391, size: 64, offset: 704)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !1276}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1339, file: !208, line: 397, baseType: !1395, size: 64, offset: 768)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!878, !1398, !1418}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1400)
!1400 = !{!1401, !1402, !1403, !1407, !1408, !1409, !1410, !1411}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1399, file: !208, line: 321, baseType: !922, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1399, file: !208, line: 326, baseType: !1088, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1399, file: !208, line: 327, baseType: !1404, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null, !1398, !685, !685}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1399, file: !208, line: 328, baseType: !340, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1399, file: !208, line: 329, baseType: !349, size: 32, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1399, file: !208, line: 330, baseType: !387, size: 16, offset: 288)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1399, file: !208, line: 331, baseType: !387, size: 16, offset: 304)
!1411 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !208, line: 332, baseType: !1412, size: 64, offset: 320)
!1412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1399, file: !208, line: 332, size: 64, elements: !1413)
!1413 = !{!1414, !1415}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1412, file: !208, line: 333, baseType: !7, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1412, file: !208, line: 334, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1339, file: !208, line: 402, baseType: !1421, size: 64, offset: 832)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!349, !1289, !1276, !1276, !183}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1339, file: !208, line: 404, baseType: !1425, size: 64, offset: 896)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!528, !1276, !1428}
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1429, line: 305, baseType: !7)
!1429 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1339, file: !208, line: 405, baseType: !1391, size: 64, offset: 960)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1339, file: !208, line: 406, baseType: !1354, size: 64, offset: 1024)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1339, file: !208, line: 407, baseType: !1433, size: 64, offset: 1088)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!349, !1276, !690, !690}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1339, file: !208, line: 409, baseType: !1437, size: 64, offset: 1152)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{null, !1276, !1440, !1440}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1339, file: !208, line: 410, baseType: !1442, size: 64, offset: 1216)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!349, !1289, !1276}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1339, file: !208, line: 413, baseType: !1446, size: 64, offset: 1280)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!349, !1449, !922, !1451}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1339, file: !208, line: 415, baseType: !1453, size: 64, offset: 1344)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{null, !922}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1290, file: !208, line: 466, baseType: !690, size: 64, offset: 896)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1290, file: !208, line: 467, baseType: !1458, size: 32, offset: 960)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1459, line: 8, baseType: !496)
!1459 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1290, file: !208, line: 468, baseType: !809, offset: 992)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1290, file: !208, line: 469, baseType: !781, size: 128, offset: 1024)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1290, file: !208, line: 470, baseType: !340, size: 64, offset: 1152)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1285, file: !1278, line: 87, baseType: !690, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1285, file: !1278, line: 94, baseType: !690, size: 64, offset: 256)
!1465 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !1278, line: 96, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !1278, line: 96, size: 64, elements: !1467)
!1467 = !{!1468}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1466, file: !1278, line: 101, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !339, line: 143, baseType: !346)
!1470 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !1278, line: 103, baseType: !1471, size: 320)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !1278, line: 103, size: 320, elements: !1472)
!1472 = !{!1473, !1483, !1486, !1487}
!1473 = !DIDerivedType(tag: DW_TAG_member, scope: !1471, file: !1278, line: 104, baseType: !1474, size: 128)
!1474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1471, file: !1278, line: 104, size: 128, elements: !1475)
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1474, file: !1278, line: 105, baseType: !781, size: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1474, file: !1278, line: 106, baseType: !1478, size: 128)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1474, file: !1278, line: 106, size: 128, elements: !1479)
!1479 = !{!1480, !1481, !1482}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1478, file: !1278, line: 107, baseType: !1276, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1478, file: !1278, line: 109, baseType: !349, size: 32, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1478, file: !1278, line: 110, baseType: !349, size: 32, offset: 96)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1471, file: !1278, line: 117, baseType: !1484, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1278, line: 117, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1471, file: !1278, line: 119, baseType: !340, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1471, file: !1278, line: 120, baseType: !1488, size: 64, offset: 256)
!1488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1471, file: !1278, line: 120, size: 64, elements: !1489)
!1489 = !{!1490, !1491, !1492}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1488, file: !1278, line: 121, baseType: !340, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1488, file: !1278, line: 122, baseType: !690, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !1278, line: 123, baseType: !1493, size: 32)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1488, file: !1278, line: 123, size: 32, elements: !1494)
!1494 = !{!1495, !1496, !1497}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1493, file: !1278, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1493, file: !1278, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1493, file: !1278, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1498 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !1278, line: 130, baseType: !1499, size: 192)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !1278, line: 130, size: 192, elements: !1500)
!1500 = !{!1501, !1502, !1503, !1504, !1505}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1499, file: !1278, line: 131, baseType: !690, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1499, file: !1278, line: 134, baseType: !345, size: 8, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1499, file: !1278, line: 135, baseType: !345, size: 8, offset: 72)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1499, file: !1278, line: 136, baseType: !481, size: 32, offset: 96)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1499, file: !1278, line: 137, baseType: !7, size: 32, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !1278, line: 139, baseType: !1507, size: 256)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !1278, line: 139, size: 256, elements: !1508)
!1508 = !{!1509, !1510, !1511}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1507, file: !1278, line: 140, baseType: !690, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1507, file: !1278, line: 141, baseType: !481, size: 32, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1507, file: !1278, line: 143, baseType: !781, size: 128, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !1278, line: 145, baseType: !1513, size: 256)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !1278, line: 145, size: 256, elements: !1514)
!1514 = !{!1515, !1516, !1518, !1519, !2790}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1513, file: !1278, line: 146, baseType: !690, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1513, file: !1278, line: 147, baseType: !1517, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1268, line: 509, baseType: !1276)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1513, file: !1278, line: 148, baseType: !690, size: 64, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !1513, file: !1278, line: 149, baseType: !1520, size: 64, offset: 192)
!1520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1513, file: !1278, line: 149, size: 64, elements: !1521)
!1521 = !{!1522, !2789}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1520, file: !1278, line: 150, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1278, line: 388, size: 7296, elements: !1525)
!1525 = !{!1526, !2785}
!1526 = !DIDerivedType(tag: DW_TAG_member, scope: !1524, file: !1278, line: 389, baseType: !1527, size: 7296)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1524, file: !1278, line: 389, size: 7296, elements: !1528)
!1528 = !{!1529, !1567, !1568, !1569, !1573, !1574, !1575, !1576, !1577, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1618, !1624, !1627, !1673, !1674, !2769, !2770, !2773, !2774, !2775, !2778, !2779, !2780, !2783, !2784}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1527, file: !1278, line: 390, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1278, line: 305, size: 1472, elements: !1532)
!1532 = !{!1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1547, !1548, !1553, !1554, !1557, !1561, !1562, !1563, !1564, !1565}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1531, file: !1278, line: 308, baseType: !690, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1531, file: !1278, line: 309, baseType: !690, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1531, file: !1278, line: 313, baseType: !1530, size: 64, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1531, file: !1278, line: 313, baseType: !1530, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1531, file: !1278, line: 315, baseType: !1311, size: 192, align: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1531, file: !1278, line: 323, baseType: !690, size: 64, offset: 448)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1531, file: !1278, line: 327, baseType: !1523, size: 64, offset: 512)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1531, file: !1278, line: 333, baseType: !1541, size: 64, offset: 576)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1268, line: 284, baseType: !1542)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1268, line: 284, size: 64, elements: !1543)
!1543 = !{!1544}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1542, file: !1268, line: 284, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1546, line: 19, baseType: !690)
!1546 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1531, file: !1278, line: 334, baseType: !690, size: 64, offset: 640)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1531, file: !1278, line: 343, baseType: !1549, size: 256, offset: 704)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1531, file: !1278, line: 340, size: 256, elements: !1550)
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1549, file: !1278, line: 341, baseType: !1311, size: 192, align: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1549, file: !1278, line: 342, baseType: !690, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1531, file: !1278, line: 351, baseType: !781, size: 128, offset: 960)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1531, file: !1278, line: 353, baseType: !1555, size: 64, offset: 1088)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1278, line: 353, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1531, file: !1278, line: 356, baseType: !1558, size: 64, offset: 1152)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1560)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1278, line: 356, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1531, file: !1278, line: 359, baseType: !690, size: 64, offset: 1216)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1531, file: !1278, line: 361, baseType: !922, size: 64, offset: 1280)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1531, file: !1278, line: 362, baseType: !340, size: 64, offset: 1344)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1531, file: !1278, line: 365, baseType: !1322, size: 64, offset: 1408)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1531, file: !1278, line: 373, baseType: !1566, offset: 1472)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1278, line: 296, elements: !823)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1527, file: !1278, line: 391, baseType: !1307, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1527, file: !1278, line: 392, baseType: !346, size: 64, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1527, file: !1278, line: 394, baseType: !1570, size: 64, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!690, !922, !690, !690, !690, !690}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1527, file: !1278, line: 398, baseType: !690, size: 64, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1527, file: !1278, line: 399, baseType: !690, size: 64, offset: 320)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1527, file: !1278, line: 405, baseType: !690, size: 64, offset: 384)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1527, file: !1278, line: 406, baseType: !690, size: 64, offset: 448)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1527, file: !1278, line: 407, baseType: !1578, size: 64, offset: 512)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1268, line: 286, baseType: !1580)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1268, line: 286, size: 64, elements: !1581)
!1581 = !{!1582}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1580, file: !1268, line: 286, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1546, line: 18, baseType: !690)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1527, file: !1278, line: 416, baseType: !481, size: 32, offset: 576)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1527, file: !1278, line: 428, baseType: !481, size: 32, offset: 608)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1527, file: !1278, line: 437, baseType: !481, size: 32, offset: 640)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1527, file: !1278, line: 447, baseType: !481, size: 32, offset: 672)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1527, file: !1278, line: 450, baseType: !1322, size: 64, offset: 704)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1527, file: !1278, line: 452, baseType: !349, size: 32, offset: 768)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1527, file: !1278, line: 454, baseType: !809, offset: 800)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1527, file: !1278, line: 457, baseType: !1318, size: 256, offset: 832)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1527, file: !1278, line: 459, baseType: !781, size: 128, offset: 1088)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1527, file: !1278, line: 466, baseType: !690, size: 64, offset: 1216)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1527, file: !1278, line: 467, baseType: !690, size: 64, offset: 1280)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1527, file: !1278, line: 469, baseType: !690, size: 64, offset: 1344)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1527, file: !1278, line: 470, baseType: !690, size: 64, offset: 1408)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1527, file: !1278, line: 471, baseType: !1324, size: 64, offset: 1472)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1527, file: !1278, line: 472, baseType: !690, size: 64, offset: 1536)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1527, file: !1278, line: 473, baseType: !690, size: 64, offset: 1600)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1527, file: !1278, line: 474, baseType: !690, size: 64, offset: 1664)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1527, file: !1278, line: 475, baseType: !690, size: 64, offset: 1728)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1527, file: !1278, line: 477, baseType: !809, offset: 1792)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1527, file: !1278, line: 478, baseType: !690, size: 64, offset: 1792)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1527, file: !1278, line: 478, baseType: !690, size: 64, offset: 1856)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1527, file: !1278, line: 478, baseType: !690, size: 64, offset: 1920)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1527, file: !1278, line: 478, baseType: !690, size: 64, offset: 1984)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1527, file: !1278, line: 479, baseType: !690, size: 64, offset: 2048)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1527, file: !1278, line: 479, baseType: !690, size: 64, offset: 2112)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1527, file: !1278, line: 479, baseType: !690, size: 64, offset: 2176)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1527, file: !1278, line: 480, baseType: !690, size: 64, offset: 2240)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1527, file: !1278, line: 480, baseType: !690, size: 64, offset: 2304)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1527, file: !1278, line: 480, baseType: !690, size: 64, offset: 2368)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1527, file: !1278, line: 480, baseType: !690, size: 64, offset: 2432)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1527, file: !1278, line: 482, baseType: !1615, size: 2816, offset: 2496)
!1615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 2816, elements: !1616)
!1616 = !{!1617}
!1617 = !DISubrange(count: 44)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1527, file: !1278, line: 488, baseType: !1619, size: 256, offset: 5312)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1620, line: 60, size: 256, elements: !1621)
!1620 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1621 = !{!1622}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1619, file: !1620, line: 61, baseType: !1623, size: 256)
!1623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1322, size: 256, elements: !620)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1527, file: !1278, line: 490, baseType: !1625, size: 64, offset: 5568)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1278, line: 490, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1527, file: !1278, line: 493, baseType: !1628, size: 896, offset: 5632)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1629, line: 53, baseType: !1630)
!1629 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1629, line: 13, size: 896, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1638, !1639, !1646, !1647, !1667, !1668, !1669}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1630, file: !1629, line: 18, baseType: !346, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1630, file: !1629, line: 28, baseType: !1324, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1630, file: !1629, line: 31, baseType: !1318, size: 256, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1630, file: !1629, line: 32, baseType: !1636, size: 64, offset: 384)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1629, line: 32, flags: DIFlagFwdDecl)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1630, file: !1629, line: 37, baseType: !389, size: 16, offset: 448)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1630, file: !1629, line: 40, baseType: !1640, size: 192, offset: 512)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1641, line: 53, size: 192, elements: !1642)
!1641 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1642 = !{!1643, !1644, !1645}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1640, file: !1641, line: 54, baseType: !1322, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1640, file: !1641, line: 55, baseType: !809, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1640, file: !1641, line: 59, baseType: !781, size: 128, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1630, file: !1629, line: 41, baseType: !340, size: 64, offset: 704)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1630, file: !1629, line: 42, baseType: !1648, size: 64, offset: 768)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1650)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1651, line: 13, size: 896, elements: !1652)
!1651 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1652 = !{!1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1650, file: !1651, line: 14, baseType: !340, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1650, file: !1651, line: 15, baseType: !690, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1650, file: !1651, line: 17, baseType: !690, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1650, file: !1651, line: 17, baseType: !690, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1650, file: !1651, line: 19, baseType: !685, size: 64, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1650, file: !1651, line: 21, baseType: !685, size: 64, offset: 320)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1650, file: !1651, line: 22, baseType: !685, size: 64, offset: 384)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1650, file: !1651, line: 23, baseType: !685, size: 64, offset: 448)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1650, file: !1651, line: 24, baseType: !685, size: 64, offset: 512)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1650, file: !1651, line: 25, baseType: !685, size: 64, offset: 576)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1650, file: !1651, line: 26, baseType: !685, size: 64, offset: 640)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1650, file: !1651, line: 27, baseType: !685, size: 64, offset: 704)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1650, file: !1651, line: 28, baseType: !685, size: 64, offset: 768)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1650, file: !1651, line: 29, baseType: !685, size: 64, offset: 832)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1630, file: !1629, line: 44, baseType: !481, size: 32, offset: 832)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1630, file: !1629, line: 50, baseType: !387, size: 16, offset: 864)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1630, file: !1629, line: 51, baseType: !1670, size: 16, offset: 880)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !342, line: 18, baseType: !1671)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !344, line: 23, baseType: !1672)
!1672 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1527, file: !1278, line: 495, baseType: !690, size: 64, offset: 6528)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1527, file: !1278, line: 497, baseType: !1675, size: 64, offset: 6592)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1278, line: 381, size: 384, elements: !1677)
!1677 = !{!1678, !1679, !2768}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1676, file: !1278, line: 382, baseType: !481, size: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1676, file: !1278, line: 383, baseType: !1680, size: 128, offset: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1278, line: 376, size: 128, elements: !1681)
!1681 = !{!1682, !2766}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1680, file: !1278, line: 377, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1685, line: 640, size: 48640, elements: !1686)
!1685 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1686 = !{!1687, !1693, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1708, !1726, !1737, !1818, !1819, !1820, !1831, !1832, !1834, !1835, !1836, !1837, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1918, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1956, !1958, !1959, !1960, !1972, !1973, !1974, !1975, !1976, !1977, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !2001, !2006, !2188, !2189, !2190, !2191, !2195, !2198, !2201, !2204, !2207, !2211, !2312, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2358, !2359, !2360, !2361, !2362, !2367, !2368, !2369, !2372, !2373, !2376, !2379, !2382, !2385, !2428, !2431, !2432, !2511, !2512, !2515, !2516, !2519, !2520, !2521, !2525, !2526, !2527, !2540, !2541, !2542, !2552, !2557, !2560, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1684, file: !1685, line: 646, baseType: !1688, size: 128)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1689, line: 56, size: 128, elements: !1690)
!1689 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1690 = !{!1691, !1692}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1688, file: !1689, line: 57, baseType: !690, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1688, file: !1689, line: 58, baseType: !496, size: 32, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1684, file: !1685, line: 649, baseType: !1694, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !685)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1684, file: !1685, line: 657, baseType: !340, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1684, file: !1685, line: 658, baseType: !476, size: 32, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1684, file: !1685, line: 660, baseType: !7, size: 32, offset: 288)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1684, file: !1685, line: 661, baseType: !7, size: 32, offset: 320)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1684, file: !1685, line: 684, baseType: !349, size: 32, offset: 352)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1684, file: !1685, line: 686, baseType: !349, size: 32, offset: 384)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1684, file: !1685, line: 687, baseType: !349, size: 32, offset: 416)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1684, file: !1685, line: 688, baseType: !349, size: 32, offset: 448)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1684, file: !1685, line: 689, baseType: !7, size: 32, offset: 480)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1684, file: !1685, line: 691, baseType: !1705, size: 64, offset: 512)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1707)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1685, line: 691, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1684, file: !1685, line: 692, baseType: !1709, size: 832, offset: 576)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1685, line: 451, size: 832, elements: !1710)
!1710 = !{!1711, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1709, file: !1685, line: 453, baseType: !1712, size: 128)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1685, line: 325, size: 128, elements: !1713)
!1713 = !{!1714, !1715}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1712, file: !1685, line: 326, baseType: !690, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1712, file: !1685, line: 327, baseType: !496, size: 32, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1709, file: !1685, line: 454, baseType: !1311, size: 192, align: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1709, file: !1685, line: 455, baseType: !781, size: 128, offset: 320)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1709, file: !1685, line: 456, baseType: !7, size: 32, offset: 448)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1709, file: !1685, line: 458, baseType: !346, size: 64, offset: 512)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1709, file: !1685, line: 459, baseType: !346, size: 64, offset: 576)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1709, file: !1685, line: 460, baseType: !346, size: 64, offset: 640)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1709, file: !1685, line: 461, baseType: !346, size: 64, offset: 704)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1709, file: !1685, line: 463, baseType: !346, size: 64, offset: 768)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1709, file: !1685, line: 465, baseType: !1725, offset: 832)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1685, line: 415, elements: !823)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1684, file: !1685, line: 693, baseType: !1727, size: 384, offset: 1408)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1685, line: 489, size: 384, elements: !1728)
!1728 = !{!1729, !1730, !1731, !1732, !1733, !1734, !1735}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1727, file: !1685, line: 490, baseType: !781, size: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1727, file: !1685, line: 491, baseType: !690, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1727, file: !1685, line: 492, baseType: !690, size: 64, offset: 192)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1727, file: !1685, line: 493, baseType: !7, size: 32, offset: 256)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1727, file: !1685, line: 494, baseType: !389, size: 16, offset: 288)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1727, file: !1685, line: 495, baseType: !389, size: 16, offset: 304)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1727, file: !1685, line: 497, baseType: !1736, size: 64, offset: 320)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1684, file: !1685, line: 697, baseType: !1738, size: 1792, offset: 1792)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1685, line: 507, size: 1792, elements: !1739)
!1739 = !{!1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1815, !1816}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1738, file: !1685, line: 508, baseType: !1311, size: 192, align: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1738, file: !1685, line: 515, baseType: !346, size: 64, offset: 192)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1738, file: !1685, line: 516, baseType: !346, size: 64, offset: 256)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1738, file: !1685, line: 517, baseType: !346, size: 64, offset: 320)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1738, file: !1685, line: 518, baseType: !346, size: 64, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1738, file: !1685, line: 519, baseType: !346, size: 64, offset: 448)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1738, file: !1685, line: 526, baseType: !1328, size: 64, offset: 512)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1738, file: !1685, line: 527, baseType: !346, size: 64, offset: 576)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1738, file: !1685, line: 528, baseType: !7, size: 32, offset: 640)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1738, file: !1685, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1738, file: !1685, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1738, file: !1685, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1738, file: !1685, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1738, file: !1685, line: 563, baseType: !1754, size: 512, offset: 704)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !1755)
!1755 = !{!1756, !1764, !1765, !1770, !1811, !1812, !1813, !1814}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1754, file: !191, line: 119, baseType: !1757, size: 256)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1758, line: 9, size: 256, elements: !1759)
!1758 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1757, file: !1758, line: 10, baseType: !1311, size: 192, align: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1757, file: !1758, line: 11, baseType: !1762, size: 64, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1763, line: 29, baseType: !1328)
!1763 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1754, file: !191, line: 120, baseType: !1762, size: 64, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1754, file: !191, line: 121, baseType: !1766, size: 64, offset: 320)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!190, !1769}
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1754, file: !191, line: 122, baseType: !1771, size: 64, offset: 384)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !1773)
!1773 = !{!1774, !1792, !1793, !1796, !1801, !1802, !1806, !1810}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1772, file: !191, line: 160, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !1777)
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1776, file: !191, line: 215, baseType: !1331)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1776, file: !191, line: 216, baseType: !7, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1776, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1776, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1776, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1776, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1776, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1776, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1776, file: !191, line: 233, baseType: !1762, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1776, file: !191, line: 234, baseType: !1769, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1776, file: !191, line: 235, baseType: !1762, size: 64, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1776, file: !191, line: 236, baseType: !1769, size: 64, offset: 320)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1776, file: !191, line: 237, baseType: !1791, size: 4096, offset: 512)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1772, size: 4096, elements: !507)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1772, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1772, file: !191, line: 162, baseType: !1794, size: 32, offset: 96)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !339, line: 27, baseType: !1795)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !880, line: 96, baseType: !349)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1772, file: !191, line: 163, baseType: !1797, size: 32, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !958, line: 276, baseType: !1798)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !958, line: 276, size: 32, elements: !1799)
!1799 = !{!1800}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1798, file: !958, line: 276, baseType: !962, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1772, file: !191, line: 164, baseType: !1769, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1772, file: !191, line: 165, baseType: !1803, size: 128, offset: 256)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1758, line: 14, size: 128, elements: !1804)
!1804 = !{!1805}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1803, file: !1758, line: 15, baseType: !1303, size: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1772, file: !191, line: 166, baseType: !1807, size: 64, offset: 384)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!1762}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1772, file: !191, line: 167, baseType: !1762, size: 64, offset: 448)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1754, file: !191, line: 123, baseType: !341, size: 8, offset: 448)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1754, file: !191, line: 124, baseType: !341, size: 8, offset: 456)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1754, file: !191, line: 125, baseType: !341, size: 8, offset: 464)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1754, file: !191, line: 126, baseType: !341, size: 8, offset: 472)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1738, file: !1685, line: 572, baseType: !1754, size: 512, offset: 1216)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1738, file: !1685, line: 580, baseType: !1817, size: 64, offset: 1728)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1684, file: !1685, line: 721, baseType: !7, size: 32, offset: 3584)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1684, file: !1685, line: 722, baseType: !349, size: 32, offset: 3616)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1684, file: !1685, line: 723, baseType: !1821, size: 64, offset: 3648)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1823)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1824, line: 17, baseType: !1825)
!1824 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1824, line: 17, size: 64, elements: !1826)
!1826 = !{!1827}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1825, file: !1824, line: 17, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 64, elements: !1829)
!1829 = !{!1830}
!1830 = !DISubrange(count: 1)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1684, file: !1685, line: 724, baseType: !1823, size: 64, offset: 3712)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1684, file: !1685, line: 749, baseType: !1833, offset: 3776)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1685, line: 290, elements: !823)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1684, file: !1685, line: 751, baseType: !781, size: 128, offset: 3776)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1684, file: !1685, line: 757, baseType: !1523, size: 64, offset: 3904)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1684, file: !1685, line: 758, baseType: !1523, size: 64, offset: 3968)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1684, file: !1685, line: 761, baseType: !1838, size: 320, offset: 4032)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1620, line: 34, size: 320, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1838, file: !1620, line: 35, baseType: !346, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1838, file: !1620, line: 36, baseType: !1842, size: 256, offset: 64)
!1842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1530, size: 256, elements: !620)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1684, file: !1685, line: 766, baseType: !349, size: 32, offset: 4352)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1684, file: !1685, line: 767, baseType: !349, size: 32, offset: 4384)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1684, file: !1685, line: 768, baseType: !349, size: 32, offset: 4416)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1684, file: !1685, line: 770, baseType: !349, size: 32, offset: 4448)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1684, file: !1685, line: 772, baseType: !690, size: 64, offset: 4480)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1684, file: !1685, line: 775, baseType: !7, size: 32, offset: 4544)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1684, file: !1685, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1684, file: !1685, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1684, file: !1685, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1684, file: !1685, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1684, file: !1685, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1684, file: !1685, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1684, file: !1685, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1684, file: !1685, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1684, file: !1685, line: 831, baseType: !690, size: 64, offset: 4672)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1684, file: !1685, line: 833, baseType: !1859, size: 384, offset: 4736)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !1860)
!1860 = !{!1861, !1866}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1859, file: !196, line: 26, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!685, !1865}
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, scope: !1859, file: !196, line: 27, baseType: !1867, size: 320, offset: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1859, file: !196, line: 27, size: 320, elements: !1868)
!1868 = !{!1869, !1878, !1903}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1867, file: !196, line: 36, baseType: !1870, size: 320)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1867, file: !196, line: 29, size: 320, elements: !1871)
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1877}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1870, file: !196, line: 30, baseType: !637, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1870, file: !196, line: 31, baseType: !496, size: 32, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1870, file: !196, line: 32, baseType: !496, size: 32, offset: 96)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1870, file: !196, line: 33, baseType: !496, size: 32, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1870, file: !196, line: 34, baseType: !346, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1870, file: !196, line: 35, baseType: !637, size: 64, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1867, file: !196, line: 46, baseType: !1879, size: 192)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1867, file: !196, line: 38, size: 192, elements: !1880)
!1880 = !{!1881, !1882, !1883, !1902}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1879, file: !196, line: 39, baseType: !1794, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1879, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, scope: !1879, file: !196, line: 41, baseType: !1884, size: 64, offset: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1879, file: !196, line: 41, size: 64, elements: !1885)
!1885 = !{!1886, !1894}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1884, file: !196, line: 42, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1889, line: 7, size: 128, elements: !1890)
!1889 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1890 = !{!1891, !1893}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1888, file: !1889, line: 8, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !880, line: 93, baseType: !619)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1888, file: !1889, line: 9, baseType: !619, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1884, file: !196, line: 43, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1897, line: 7, size: 64, elements: !1898)
!1897 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1898 = !{!1899, !1901}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1896, file: !1897, line: 8, baseType: !1900, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1897, line: 5, baseType: !745)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1896, file: !1897, line: 9, baseType: !745, size: 32, offset: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1879, file: !196, line: 45, baseType: !346, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1867, file: !196, line: 54, baseType: !1904, size: 256)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1867, file: !196, line: 48, size: 256, elements: !1905)
!1905 = !{!1906, !1914, !1915, !1916, !1917}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1904, file: !196, line: 49, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1909, line: 36, size: 64, elements: !1910)
!1909 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1910 = !{!1911, !1912, !1913}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1908, file: !1909, line: 37, baseType: !349, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1908, file: !1909, line: 38, baseType: !1672, size: 16, offset: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1908, file: !1909, line: 39, baseType: !1672, size: 16, offset: 48)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1904, file: !196, line: 50, baseType: !349, size: 32, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1904, file: !196, line: 51, baseType: !349, size: 32, offset: 96)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1904, file: !196, line: 52, baseType: !690, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1904, file: !196, line: 53, baseType: !690, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1684, file: !1685, line: 835, baseType: !1919, size: 32, offset: 5120)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !339, line: 22, baseType: !1920)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !880, line: 28, baseType: !349)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1684, file: !1685, line: 836, baseType: !1919, size: 32, offset: 5152)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1684, file: !1685, line: 840, baseType: !690, size: 64, offset: 5184)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1684, file: !1685, line: 849, baseType: !1683, size: 64, offset: 5248)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1684, file: !1685, line: 852, baseType: !1683, size: 64, offset: 5312)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1684, file: !1685, line: 857, baseType: !781, size: 128, offset: 5376)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1684, file: !1685, line: 858, baseType: !781, size: 128, offset: 5504)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1684, file: !1685, line: 859, baseType: !1683, size: 64, offset: 5632)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1684, file: !1685, line: 867, baseType: !781, size: 128, offset: 5696)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1684, file: !1685, line: 868, baseType: !781, size: 128, offset: 5824)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1684, file: !1685, line: 871, baseType: !1931, size: 64, offset: 5952)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !1933)
!1933 = !{!1934, !1935, !1936, !1937, !1939, !1940, !1947, !1948}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1932, file: !217, line: 61, baseType: !476, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1932, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1932, file: !217, line: 63, baseType: !809, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1932, file: !217, line: 65, baseType: !1938, size: 256, offset: 64)
!1938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1190, size: 256, elements: !620)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1932, file: !217, line: 66, baseType: !1190, size: 64, offset: 320)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1932, file: !217, line: 68, baseType: !1941, size: 128, offset: 384)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1942, line: 40, baseType: !1943)
!1942 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1942, line: 36, size: 128, elements: !1944)
!1944 = !{!1945, !1946}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1943, file: !1942, line: 37, baseType: !809)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1943, file: !1942, line: 38, baseType: !781, size: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1932, file: !217, line: 69, baseType: !935, size: 128, align: 64, offset: 512)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1932, file: !217, line: 70, baseType: !1949, size: 128, offset: 640)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1950, size: 128, elements: !1829)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !1951)
!1951 = !{!1952, !1953}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1950, file: !217, line: 55, baseType: !349, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1950, file: !217, line: 56, baseType: !1954, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1684, file: !1685, line: 872, baseType: !1957, size: 512, offset: 6016)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1194, size: 512, elements: !620)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1684, file: !1685, line: 873, baseType: !781, size: 128, offset: 6528)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1684, file: !1685, line: 874, baseType: !781, size: 128, offset: 6656)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1684, file: !1685, line: 876, baseType: !1961, size: 64, offset: 6784)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1963, line: 26, size: 192, elements: !1964)
!1963 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1964 = !{!1965, !1966}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1962, file: !1963, line: 27, baseType: !7, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1962, file: !1963, line: 28, baseType: !1967, size: 128, offset: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1968, line: 43, size: 128, elements: !1969)
!1968 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1969 = !{!1970, !1971}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1967, file: !1968, line: 44, baseType: !1331)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1967, file: !1968, line: 45, baseType: !781, size: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1684, file: !1685, line: 879, baseType: !1260, size: 64, offset: 6848)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1684, file: !1685, line: 882, baseType: !1260, size: 64, offset: 6912)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1684, file: !1685, line: 884, baseType: !346, size: 64, offset: 6976)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1684, file: !1685, line: 885, baseType: !346, size: 64, offset: 7040)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1684, file: !1685, line: 890, baseType: !346, size: 64, offset: 7104)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1684, file: !1685, line: 891, baseType: !1978, size: 128, offset: 7168)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1685, line: 242, size: 128, elements: !1979)
!1979 = !{!1980, !1981, !1982}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1978, file: !1685, line: 244, baseType: !346, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1978, file: !1685, line: 245, baseType: !346, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1978, file: !1685, line: 246, baseType: !1331, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1684, file: !1685, line: 900, baseType: !690, size: 64, offset: 7296)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1684, file: !1685, line: 901, baseType: !690, size: 64, offset: 7360)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1684, file: !1685, line: 904, baseType: !346, size: 64, offset: 7424)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1684, file: !1685, line: 907, baseType: !346, size: 64, offset: 7488)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1684, file: !1685, line: 910, baseType: !690, size: 64, offset: 7552)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1684, file: !1685, line: 911, baseType: !690, size: 64, offset: 7616)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1684, file: !1685, line: 914, baseType: !1990, size: 640, offset: 7680)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1991, line: 123, size: 640, elements: !1992)
!1991 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1992 = !{!1993, !1999, !2000}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1990, file: !1991, line: 124, baseType: !1994, size: 576)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1995, size: 576, elements: !584)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1991, line: 108, size: 192, elements: !1996)
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1995, file: !1991, line: 109, baseType: !346, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1995, file: !1991, line: 110, baseType: !1803, size: 128, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1990, file: !1991, line: 125, baseType: !7, size: 32, offset: 576)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1990, file: !1991, line: 126, baseType: !7, size: 32, offset: 608)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1684, file: !1685, line: 917, baseType: !2002, size: 192, offset: 8320)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1991, line: 134, size: 192, elements: !2003)
!2003 = !{!2004, !2005}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2002, file: !1991, line: 135, baseType: !935, size: 128, align: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2002, file: !1991, line: 136, baseType: !7, size: 32, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1684, file: !1685, line: 923, baseType: !2007, size: 64, offset: 8512)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2009)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2010, line: 111, size: 1280, elements: !2011)
!2010 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2011 = !{!2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2031, !2032, !2033, !2034, !2035, !2036, !2141, !2142, !2143, !2144, !2170, !2173, !2183}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2009, file: !2010, line: 112, baseType: !481, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2009, file: !2010, line: 120, baseType: !997, size: 32, offset: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2009, file: !2010, line: 121, baseType: !1005, size: 32, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2009, file: !2010, line: 122, baseType: !997, size: 32, offset: 96)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2009, file: !2010, line: 123, baseType: !1005, size: 32, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2009, file: !2010, line: 124, baseType: !997, size: 32, offset: 160)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2009, file: !2010, line: 125, baseType: !1005, size: 32, offset: 192)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2009, file: !2010, line: 126, baseType: !997, size: 32, offset: 224)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2009, file: !2010, line: 127, baseType: !1005, size: 32, offset: 256)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2009, file: !2010, line: 128, baseType: !7, size: 32, offset: 288)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2009, file: !2010, line: 129, baseType: !2023, size: 64, offset: 320)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2024, line: 26, baseType: !2025)
!2024 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2024, line: 24, size: 64, elements: !2026)
!2026 = !{!2027}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2025, file: !2024, line: 25, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, size: 64, elements: !2029)
!2029 = !{!2030}
!2030 = !DISubrange(count: 2)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2009, file: !2010, line: 130, baseType: !2023, size: 64, offset: 384)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2009, file: !2010, line: 131, baseType: !2023, size: 64, offset: 448)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2009, file: !2010, line: 132, baseType: !2023, size: 64, offset: 512)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2009, file: !2010, line: 133, baseType: !2023, size: 64, offset: 576)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2009, file: !2010, line: 135, baseType: !345, size: 8, offset: 640)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2009, file: !2010, line: 137, baseType: !2037, size: 64, offset: 704)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2039, line: 189, size: 1664, elements: !2040)
!2039 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2040 = !{!2041, !2042, !2045, !2050, !2051, !2054, !2055, !2060, !2061, !2062, !2063, !2065, !2066, !2067, !2068, !2069, !2105, !2126}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2038, file: !2039, line: 190, baseType: !476, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2038, file: !2039, line: 191, baseType: !2043, size: 32, offset: 32)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2039, line: 28, baseType: !2044)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !339, line: 98, baseType: !745)
!2045 = !DIDerivedType(tag: DW_TAG_member, scope: !2038, file: !2039, line: 192, baseType: !2046, size: 192, offset: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2038, file: !2039, line: 192, size: 192, elements: !2047)
!2047 = !{!2048, !2049}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2046, file: !2039, line: 193, baseType: !781, size: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2046, file: !2039, line: 194, baseType: !1311, size: 192, align: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2038, file: !2039, line: 199, baseType: !1318, size: 256, offset: 256)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2038, file: !2039, line: 200, baseType: !2052, size: 64, offset: 512)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2039, line: 200, flags: DIFlagFwdDecl)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2038, file: !2039, line: 201, baseType: !340, size: 64, offset: 576)
!2055 = !DIDerivedType(tag: DW_TAG_member, scope: !2038, file: !2039, line: 202, baseType: !2056, size: 64, offset: 640)
!2056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2038, file: !2039, line: 202, size: 64, elements: !2057)
!2057 = !{!2058, !2059}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2056, file: !2039, line: 203, baseType: !1095, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2056, file: !2039, line: 204, baseType: !1095, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2038, file: !2039, line: 206, baseType: !1095, size: 64, offset: 704)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2038, file: !2039, line: 207, baseType: !997, size: 32, offset: 768)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2038, file: !2039, line: 208, baseType: !1005, size: 32, offset: 800)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2038, file: !2039, line: 209, baseType: !2064, size: 32, offset: 832)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2039, line: 31, baseType: !1114)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2038, file: !2039, line: 210, baseType: !389, size: 16, offset: 864)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2038, file: !2039, line: 211, baseType: !389, size: 16, offset: 880)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2038, file: !2039, line: 215, baseType: !1672, size: 16, offset: 896)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2038, file: !2039, line: 222, baseType: !690, size: 64, offset: 960)
!2069 = !DIDerivedType(tag: DW_TAG_member, scope: !2038, file: !2039, line: 239, baseType: !2070, size: 320, offset: 1024)
!2070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2038, file: !2039, line: 239, size: 320, elements: !2071)
!2071 = !{!2072, !2097}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2070, file: !2039, line: 240, baseType: !2073, size: 320)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2039, line: 108, size: 320, elements: !2074)
!2074 = !{!2075, !2076, !2086, !2089, !2096}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2073, file: !2039, line: 110, baseType: !690, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, scope: !2073, file: !2039, line: 111, baseType: !2077, size: 64, offset: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2073, file: !2039, line: 111, size: 64, elements: !2078)
!2078 = !{!2079, !2085}
!2079 = !DIDerivedType(tag: DW_TAG_member, scope: !2077, file: !2039, line: 112, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2077, file: !2039, line: 112, size: 64, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2080, file: !2039, line: 114, baseType: !387, size: 16)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2080, file: !2039, line: 115, baseType: !2084, size: 48, offset: 16)
!2084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 48, elements: !655)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2077, file: !2039, line: 121, baseType: !690, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2073, file: !2039, line: 123, baseType: !2087, size: 64, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2039, line: 96, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2073, file: !2039, line: 124, baseType: !2090, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2039, line: 102, size: 192, elements: !2092)
!2092 = !{!2093, !2094, !2095}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2091, file: !2039, line: 103, baseType: !935, size: 128, align: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2091, file: !2039, line: 104, baseType: !476, size: 32, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2091, file: !2039, line: 105, baseType: !528, size: 8, offset: 160)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2073, file: !2039, line: 125, baseType: !358, size: 64, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_member, scope: !2070, file: !2039, line: 241, baseType: !2098, size: 320)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2070, file: !2039, line: 241, size: 320, elements: !2099)
!2099 = !{!2100, !2101, !2102, !2103, !2104}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2098, file: !2039, line: 242, baseType: !690, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2098, file: !2039, line: 243, baseType: !690, size: 64, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2098, file: !2039, line: 244, baseType: !2087, size: 64, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2098, file: !2039, line: 245, baseType: !2090, size: 64, offset: 192)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2098, file: !2039, line: 246, baseType: !380, size: 64, offset: 256)
!2105 = !DIDerivedType(tag: DW_TAG_member, scope: !2038, file: !2039, line: 254, baseType: !2106, size: 256, offset: 1344)
!2106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2038, file: !2039, line: 254, size: 256, elements: !2107)
!2107 = !{!2108, !2114}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2106, file: !2039, line: 255, baseType: !2109, size: 256)
!2109 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2039, line: 128, size: 256, elements: !2110)
!2110 = !{!2111, !2112}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2109, file: !2039, line: 129, baseType: !340, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2109, file: !2039, line: 130, baseType: !2113, size: 256)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 256, elements: !620)
!2114 = !DIDerivedType(tag: DW_TAG_member, scope: !2106, file: !2039, line: 256, baseType: !2115, size: 256)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2106, file: !2039, line: 256, size: 256, elements: !2116)
!2116 = !{!2117, !2118}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2115, file: !2039, line: 258, baseType: !781, size: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2115, file: !2039, line: 259, baseType: !2119, size: 128, offset: 128)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2120, line: 22, size: 128, elements: !2121)
!2120 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2121 = !{!2122, !2125}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2119, file: !2120, line: 23, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2120, line: 23, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2119, file: !2120, line: 24, baseType: !690, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2038, file: !2039, line: 274, baseType: !2127, size: 64, offset: 1600)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2039, line: 170, size: 192, elements: !2129)
!2129 = !{!2130, !2139, !2140}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2128, file: !2039, line: 171, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2039, line: 165, baseType: !2132)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!349, !2037, !2135, !2137, !2037}
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2088)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2109)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2128, file: !2039, line: 172, baseType: !2037, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2128, file: !2039, line: 173, baseType: !2087, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2009, file: !2010, line: 138, baseType: !2037, size: 64, offset: 768)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2009, file: !2010, line: 139, baseType: !2037, size: 64, offset: 832)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2009, file: !2010, line: 140, baseType: !2037, size: 64, offset: 896)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2009, file: !2010, line: 145, baseType: !2145, size: 64, offset: 960)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2147, line: 13, size: 896, elements: !2148)
!2147 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2148 = !{!2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2146, file: !2147, line: 14, baseType: !476, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2146, file: !2147, line: 15, baseType: !481, size: 32, offset: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2146, file: !2147, line: 16, baseType: !481, size: 32, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2146, file: !2147, line: 21, baseType: !1322, size: 64, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2146, file: !2147, line: 27, baseType: !690, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2146, file: !2147, line: 28, baseType: !690, size: 64, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2146, file: !2147, line: 29, baseType: !1322, size: 64, offset: 320)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2146, file: !2147, line: 32, baseType: !1194, size: 128, offset: 384)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2146, file: !2147, line: 33, baseType: !997, size: 32, offset: 512)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2146, file: !2147, line: 37, baseType: !1322, size: 64, offset: 576)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2146, file: !2147, line: 44, baseType: !2160, size: 256, offset: 640)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2161, line: 15, size: 256, elements: !2162)
!2161 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2162 = !{!2163, !2164, !2165, !2166, !2167, !2168, !2169}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2160, file: !2161, line: 16, baseType: !1331)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2160, file: !2161, line: 18, baseType: !349, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2160, file: !2161, line: 19, baseType: !349, size: 32, offset: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2160, file: !2161, line: 20, baseType: !349, size: 32, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2160, file: !2161, line: 21, baseType: !349, size: 32, offset: 96)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2160, file: !2161, line: 22, baseType: !690, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2160, file: !2161, line: 23, baseType: !690, size: 64, offset: 192)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2009, file: !2010, line: 146, baseType: !2171, size: 64, offset: 1024)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !998, line: 18, flags: DIFlagFwdDecl)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2009, file: !2010, line: 147, baseType: !2174, size: 64, offset: 1088)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2010, line: 25, size: 64, elements: !2176)
!2176 = !{!2177, !2178, !2179}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2175, file: !2010, line: 26, baseType: !481, size: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2175, file: !2010, line: 27, baseType: !349, size: 32, offset: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2175, file: !2010, line: 28, baseType: !2180, offset: 64)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1005, elements: !2181)
!2181 = !{!2182}
!2182 = !DISubrange(count: 0)
!2183 = !DIDerivedType(tag: DW_TAG_member, scope: !2009, file: !2010, line: 149, baseType: !2184, size: 128, offset: 1152)
!2184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2009, file: !2010, line: 149, size: 128, elements: !2185)
!2185 = !{!2186, !2187}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2184, file: !2010, line: 150, baseType: !349, size: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2184, file: !2010, line: 151, baseType: !935, size: 128, align: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1684, file: !1685, line: 926, baseType: !2007, size: 64, offset: 8576)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1684, file: !1685, line: 929, baseType: !2007, size: 64, offset: 8640)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1684, file: !1685, line: 933, baseType: !2037, size: 64, offset: 8704)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1684, file: !1685, line: 943, baseType: !2192, size: 128, offset: 8768)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 128, elements: !2193)
!2193 = !{!2194}
!2194 = !DISubrange(count: 16)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1684, file: !1685, line: 945, baseType: !2196, size: 64, offset: 8896)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1685, line: 49, flags: DIFlagFwdDecl)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1684, file: !1685, line: 956, baseType: !2199, size: 64, offset: 8960)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1685, line: 45, flags: DIFlagFwdDecl)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1684, file: !1685, line: 959, baseType: !2202, size: 64, offset: 9024)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1685, line: 959, flags: DIFlagFwdDecl)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1684, file: !1685, line: 962, baseType: !2205, size: 64, offset: 9088)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1685, line: 66, flags: DIFlagFwdDecl)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1684, file: !1685, line: 966, baseType: !2208, size: 64, offset: 9152)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2210, line: 35, flags: DIFlagFwdDecl)
!2210 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1684, file: !1685, line: 969, baseType: !2212, size: 64, offset: 9216)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2214, line: 82, size: 7296, elements: !2215)
!2214 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2215 = !{!2216, !2217, !2218, !2219, !2220, !2221, !2222, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2251, !2260, !2261, !2263, !2264, !2265, !2268, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2298, !2299, !2306, !2307, !2308, !2309, !2310, !2311}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2213, file: !2214, line: 83, baseType: !476, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2213, file: !2214, line: 84, baseType: !481, size: 32, offset: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2213, file: !2214, line: 85, baseType: !349, size: 32, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2213, file: !2214, line: 86, baseType: !781, size: 128, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2213, file: !2214, line: 88, baseType: !1941, size: 128, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2213, file: !2214, line: 91, baseType: !1683, size: 64, offset: 384)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2213, file: !2214, line: 94, baseType: !2223, size: 192, offset: 448)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2224, line: 30, size: 192, elements: !2225)
!2224 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2225 = !{!2226, !2227}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2223, file: !2224, line: 31, baseType: !781, size: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2223, file: !2224, line: 32, baseType: !2228, size: 64, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2229, line: 25, baseType: !2230)
!2229 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2229, line: 23, size: 64, elements: !2231)
!2231 = !{!2232}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2230, file: !2229, line: 24, baseType: !1828, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2213, file: !2214, line: 97, baseType: !1190, size: 64, offset: 640)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2213, file: !2214, line: 100, baseType: !349, size: 32, offset: 704)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2213, file: !2214, line: 106, baseType: !349, size: 32, offset: 736)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2213, file: !2214, line: 107, baseType: !1683, size: 64, offset: 768)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2213, file: !2214, line: 110, baseType: !349, size: 32, offset: 832)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2213, file: !2214, line: 111, baseType: !7, size: 32, offset: 864)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2213, file: !2214, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2213, file: !2214, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2213, file: !2214, line: 128, baseType: !349, size: 32, offset: 928)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2213, file: !2214, line: 129, baseType: !781, size: 128, offset: 960)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2213, file: !2214, line: 132, baseType: !1754, size: 512, offset: 1088)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2213, file: !2214, line: 133, baseType: !1762, size: 64, offset: 1600)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2213, file: !2214, line: 140, baseType: !2246, size: 256, offset: 1664)
!2246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2247, size: 256, elements: !2029)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2214, line: 38, size: 128, elements: !2248)
!2248 = !{!2249, !2250}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2247, file: !2214, line: 39, baseType: !346, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2247, file: !2214, line: 40, baseType: !346, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2213, file: !2214, line: 146, baseType: !2252, size: 192, offset: 1920)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2214, line: 66, size: 192, elements: !2253)
!2253 = !{!2254}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2252, file: !2214, line: 67, baseType: !2255, size: 192)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2214, line: 47, size: 192, elements: !2256)
!2256 = !{!2257, !2258, !2259}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2255, file: !2214, line: 48, baseType: !1324, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2255, file: !2214, line: 49, baseType: !1324, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2255, file: !2214, line: 50, baseType: !1324, size: 64, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2213, file: !2214, line: 150, baseType: !1990, size: 640, offset: 2112)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2213, file: !2214, line: 153, baseType: !2262, size: 256, offset: 2752)
!2262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1931, size: 256, elements: !620)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2213, file: !2214, line: 159, baseType: !1931, size: 64, offset: 3008)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2213, file: !2214, line: 162, baseType: !349, size: 32, offset: 3072)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2213, file: !2214, line: 164, baseType: !2266, size: 64, offset: 3136)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2214, line: 164, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2213, file: !2214, line: 175, baseType: !2269, size: 32, offset: 3200)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !958, line: 805, baseType: !2270)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !958, line: 798, size: 32, elements: !2271)
!2271 = !{!2272, !2273}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2270, file: !958, line: 803, baseType: !957, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2270, file: !958, line: 804, baseType: !809, offset: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2213, file: !2214, line: 176, baseType: !346, size: 64, offset: 3264)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2213, file: !2214, line: 176, baseType: !346, size: 64, offset: 3328)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2213, file: !2214, line: 176, baseType: !346, size: 64, offset: 3392)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2213, file: !2214, line: 176, baseType: !346, size: 64, offset: 3456)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2213, file: !2214, line: 177, baseType: !346, size: 64, offset: 3520)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2213, file: !2214, line: 178, baseType: !346, size: 64, offset: 3584)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2213, file: !2214, line: 179, baseType: !1978, size: 128, offset: 3648)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2213, file: !2214, line: 180, baseType: !690, size: 64, offset: 3776)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2213, file: !2214, line: 180, baseType: !690, size: 64, offset: 3840)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2213, file: !2214, line: 180, baseType: !690, size: 64, offset: 3904)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2213, file: !2214, line: 180, baseType: !690, size: 64, offset: 3968)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2213, file: !2214, line: 181, baseType: !690, size: 64, offset: 4032)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2213, file: !2214, line: 181, baseType: !690, size: 64, offset: 4096)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2213, file: !2214, line: 181, baseType: !690, size: 64, offset: 4160)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2213, file: !2214, line: 181, baseType: !690, size: 64, offset: 4224)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2213, file: !2214, line: 182, baseType: !690, size: 64, offset: 4288)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2213, file: !2214, line: 182, baseType: !690, size: 64, offset: 4352)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2213, file: !2214, line: 182, baseType: !690, size: 64, offset: 4416)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2213, file: !2214, line: 182, baseType: !690, size: 64, offset: 4480)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2213, file: !2214, line: 183, baseType: !690, size: 64, offset: 4544)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2213, file: !2214, line: 183, baseType: !690, size: 64, offset: 4608)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2213, file: !2214, line: 184, baseType: !2296, offset: 4672)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2297, line: 12, elements: !823)
!2297 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2213, file: !2214, line: 192, baseType: !348, size: 64, offset: 4672)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2213, file: !2214, line: 203, baseType: !2300, size: 2048, offset: 4736)
!2300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2301, size: 2048, elements: !2193)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2302, line: 43, size: 128, elements: !2303)
!2302 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2303 = !{!2304, !2305}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2301, file: !2302, line: 44, baseType: !894, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2301, file: !2302, line: 45, baseType: !894, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2213, file: !2214, line: 220, baseType: !528, size: 8, offset: 6784)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2213, file: !2214, line: 221, baseType: !1672, size: 16, offset: 6800)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2213, file: !2214, line: 222, baseType: !1672, size: 16, offset: 6816)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2213, file: !2214, line: 224, baseType: !1523, size: 64, offset: 6848)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2213, file: !2214, line: 227, baseType: !1640, size: 192, offset: 6912)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2213, file: !2214, line: 233, baseType: !1640, size: 192, offset: 7104)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1684, file: !1685, line: 970, baseType: !2313, size: 64, offset: 9280)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2214, line: 20, size: 16576, elements: !2315)
!2315 = !{!2316, !2317, !2318, !2319}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2314, file: !2214, line: 21, baseType: !809)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2314, file: !2214, line: 22, baseType: !476, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2314, file: !2214, line: 23, baseType: !1941, size: 128, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2314, file: !2214, line: 24, baseType: !2320, size: 16384, offset: 192)
!2320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2321, size: 16384, elements: !852)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2224, line: 49, size: 256, elements: !2322)
!2322 = !{!2323}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2321, file: !2224, line: 50, baseType: !2324, size: 256)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2224, line: 35, size: 256, elements: !2325)
!2325 = !{!2326, !2333, !2334, !2340}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2324, file: !2224, line: 37, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2328, line: 19, baseType: !2329)
!2328 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2328, line: 18, baseType: !2331)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{null, !349}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2324, file: !2224, line: 38, baseType: !690, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2324, file: !2224, line: 44, baseType: !2335, size: 64, offset: 128)
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2328, line: 22, baseType: !2336)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2328, line: 21, baseType: !2338)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{null}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2324, file: !2224, line: 46, baseType: !2228, size: 64, offset: 192)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1684, file: !1685, line: 971, baseType: !2228, size: 64, offset: 9344)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1684, file: !1685, line: 972, baseType: !2228, size: 64, offset: 9408)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1684, file: !1685, line: 974, baseType: !2228, size: 64, offset: 9472)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1684, file: !1685, line: 975, baseType: !2223, size: 192, offset: 9536)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1684, file: !1685, line: 976, baseType: !690, size: 64, offset: 9728)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1684, file: !1685, line: 977, baseType: !892, size: 64, offset: 9792)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1684, file: !1685, line: 978, baseType: !7, size: 32, offset: 9856)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1684, file: !1685, line: 980, baseType: !938, size: 64, offset: 9920)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1684, file: !1685, line: 989, baseType: !2350, size: 128, offset: 9984)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2351, line: 35, size: 128, elements: !2352)
!2351 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2352 = !{!2353, !2354, !2355}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2350, file: !2351, line: 36, baseType: !349, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2350, file: !2351, line: 37, baseType: !481, size: 32, offset: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2350, file: !2351, line: 38, baseType: !2356, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2351, line: 23, flags: DIFlagFwdDecl)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1684, file: !1685, line: 992, baseType: !346, size: 64, offset: 10112)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1684, file: !1685, line: 993, baseType: !346, size: 64, offset: 10176)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1684, file: !1685, line: 996, baseType: !809, offset: 10240)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1684, file: !1685, line: 999, baseType: !1331, offset: 10240)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1684, file: !1685, line: 1001, baseType: !2363, size: 64, offset: 10240)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1685, line: 636, size: 64, elements: !2364)
!2364 = !{!2365}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2363, file: !1685, line: 637, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1684, file: !1685, line: 1005, baseType: !1303, size: 128, offset: 10304)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1684, file: !1685, line: 1007, baseType: !1683, size: 64, offset: 10432)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1684, file: !1685, line: 1009, baseType: !2370, size: 64, offset: 10496)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1685, line: 1009, flags: DIFlagFwdDecl)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1684, file: !1685, line: 1043, baseType: !340, size: 64, offset: 10560)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1684, file: !1685, line: 1046, baseType: !2374, size: 64, offset: 10624)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1685, line: 41, flags: DIFlagFwdDecl)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1684, file: !1685, line: 1050, baseType: !2377, size: 64, offset: 10688)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1685, line: 42, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1684, file: !1685, line: 1054, baseType: !2380, size: 64, offset: 10752)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1685, line: 55, flags: DIFlagFwdDecl)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1684, file: !1685, line: 1056, baseType: !2383, size: 64, offset: 10816)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1685, line: 40, flags: DIFlagFwdDecl)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1684, file: !1685, line: 1058, baseType: !2386, size: 64, offset: 10880)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2388, line: 99, size: 704, elements: !2389)
!2388 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2389 = !{!2390, !2391, !2392, !2393, !2394, !2395, !2396, !2415, !2416}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2387, file: !2388, line: 100, baseType: !1322, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2387, file: !2388, line: 101, baseType: !481, size: 32, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2387, file: !2388, line: 102, baseType: !481, size: 32, offset: 96)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2387, file: !2388, line: 105, baseType: !809, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2387, file: !2388, line: 107, baseType: !389, size: 16, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2387, file: !2388, line: 109, baseType: !1294, size: 128, offset: 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2387, file: !2388, line: 110, baseType: !2397, size: 64, offset: 320)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2388, line: 73, size: 448, elements: !2399)
!2399 = !{!2400, !2403, !2404, !2409, !2414}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2398, file: !2388, line: 74, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2388, line: 74, flags: DIFlagFwdDecl)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2398, file: !2388, line: 75, baseType: !2386, size: 64, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, scope: !2398, file: !2388, line: 83, baseType: !2405, size: 128, offset: 128)
!2405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2398, file: !2388, line: 83, size: 128, elements: !2406)
!2406 = !{!2407, !2408}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2405, file: !2388, line: 84, baseType: !781, size: 128)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2405, file: !2388, line: 85, baseType: !1484, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, scope: !2398, file: !2388, line: 87, baseType: !2410, size: 128, offset: 256)
!2410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2398, file: !2388, line: 87, size: 128, elements: !2411)
!2411 = !{!2412, !2413}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2410, file: !2388, line: 88, baseType: !1194, size: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2410, file: !2388, line: 89, baseType: !935, size: 128, align: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2398, file: !2388, line: 92, baseType: !7, size: 32, offset: 384)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2387, file: !2388, line: 111, baseType: !1190, size: 64, offset: 384)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2387, file: !2388, line: 113, baseType: !2417, size: 256, offset: 448)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2418, line: 102, size: 256, elements: !2419)
!2418 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2419 = !{!2420, !2421, !2422}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2417, file: !2418, line: 103, baseType: !1322, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2417, file: !2418, line: 104, baseType: !781, size: 128, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2417, file: !2418, line: 105, baseType: !2423, size: 64, offset: 192)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2418, line: 21, baseType: !2424)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{null, !2427}
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1684, file: !1685, line: 1061, baseType: !2429, size: 64, offset: 10944)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1685, line: 43, flags: DIFlagFwdDecl)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1684, file: !1685, line: 1064, baseType: !690, size: 64, offset: 11008)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1684, file: !1685, line: 1065, baseType: !2433, size: 64, offset: 11072)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2224, line: 14, baseType: !2435)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2224, line: 12, size: 384, elements: !2436)
!2436 = !{!2437}
!2437 = !DIDerivedType(tag: DW_TAG_member, scope: !2435, file: !2224, line: 13, baseType: !2438, size: 384)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2435, file: !2224, line: 13, size: 384, elements: !2439)
!2439 = !{!2440, !2441, !2442, !2443}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2438, file: !2224, line: 13, baseType: !349, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2438, file: !2224, line: 13, baseType: !349, size: 32, offset: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2438, file: !2224, line: 13, baseType: !349, size: 32, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2438, file: !2224, line: 13, baseType: !2444, size: 256, offset: 128)
!2444 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2445, line: 32, size: 256, elements: !2446)
!2445 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2446 = !{!2447, !2452, !2465, !2471, !2480, !2500, !2505}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2444, file: !2445, line: 37, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2444, file: !2445, line: 34, size: 64, elements: !2449)
!2449 = !{!2450, !2451}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2448, file: !2445, line: 35, baseType: !1920, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2448, file: !2445, line: 36, baseType: !1003, size: 32, offset: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2444, file: !2445, line: 45, baseType: !2453, size: 192)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2444, file: !2445, line: 40, size: 192, elements: !2454)
!2454 = !{!2455, !2457, !2458, !2464}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2453, file: !2445, line: 41, baseType: !2456, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !880, line: 95, baseType: !349)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2453, file: !2445, line: 42, baseType: !349, size: 32, offset: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2453, file: !2445, line: 43, baseType: !2459, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2445, line: 11, baseType: !2460)
!2460 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2445, line: 8, size: 64, elements: !2461)
!2461 = !{!2462, !2463}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2460, file: !2445, line: 9, baseType: !349, size: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2460, file: !2445, line: 10, baseType: !340, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2453, file: !2445, line: 44, baseType: !349, size: 32, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2444, file: !2445, line: 52, baseType: !2466, size: 128)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2444, file: !2445, line: 48, size: 128, elements: !2467)
!2467 = !{!2468, !2469, !2470}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2466, file: !2445, line: 49, baseType: !1920, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2466, file: !2445, line: 50, baseType: !1003, size: 32, offset: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2466, file: !2445, line: 51, baseType: !2459, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2444, file: !2445, line: 61, baseType: !2472, size: 256)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2444, file: !2445, line: 55, size: 256, elements: !2473)
!2473 = !{!2474, !2475, !2476, !2477, !2479}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2472, file: !2445, line: 56, baseType: !1920, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2472, file: !2445, line: 57, baseType: !1003, size: 32, offset: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2472, file: !2445, line: 58, baseType: !349, size: 32, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2472, file: !2445, line: 59, baseType: !2478, size: 64, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !880, line: 94, baseType: !881)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2472, file: !2445, line: 60, baseType: !2478, size: 64, offset: 192)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2444, file: !2445, line: 95, baseType: !2481, size: 256)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2444, file: !2445, line: 64, size: 256, elements: !2482)
!2482 = !{!2483, !2484}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2481, file: !2445, line: 65, baseType: !340, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, scope: !2481, file: !2445, line: 77, baseType: !2485, size: 192, offset: 64)
!2485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2481, file: !2445, line: 77, size: 192, elements: !2486)
!2486 = !{!2487, !2488, !2495}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2485, file: !2445, line: 82, baseType: !1672, size: 16)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2485, file: !2445, line: 88, baseType: !2489, size: 192)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2485, file: !2445, line: 84, size: 192, elements: !2490)
!2490 = !{!2491, !2493, !2494}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2489, file: !2445, line: 85, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 64, elements: !507)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2489, file: !2445, line: 86, baseType: !340, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2489, file: !2445, line: 87, baseType: !340, size: 64, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2485, file: !2445, line: 93, baseType: !2496, size: 96)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2485, file: !2445, line: 90, size: 96, elements: !2497)
!2497 = !{!2498, !2499}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2496, file: !2445, line: 91, baseType: !2492, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2496, file: !2445, line: 92, baseType: !497, size: 32, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2444, file: !2445, line: 101, baseType: !2501, size: 128)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2444, file: !2445, line: 98, size: 128, elements: !2502)
!2502 = !{!2503, !2504}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2501, file: !2445, line: 99, baseType: !685, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2501, file: !2445, line: 100, baseType: !349, size: 32, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2444, file: !2445, line: 108, baseType: !2506, size: 128)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2444, file: !2445, line: 104, size: 128, elements: !2507)
!2507 = !{!2508, !2509, !2510}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2506, file: !2445, line: 105, baseType: !340, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2506, file: !2445, line: 106, baseType: !349, size: 32, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2506, file: !2445, line: 107, baseType: !7, size: 32, offset: 96)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1684, file: !1685, line: 1067, baseType: !2296, offset: 11136)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1684, file: !1685, line: 1099, baseType: !2513, size: 64, offset: 11136)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1685, line: 56, flags: DIFlagFwdDecl)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1684, file: !1685, line: 1103, baseType: !781, size: 128, offset: 11200)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1684, file: !1685, line: 1104, baseType: !2517, size: 64, offset: 11328)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1685, line: 46, flags: DIFlagFwdDecl)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1684, file: !1685, line: 1105, baseType: !1640, size: 192, offset: 11392)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1684, file: !1685, line: 1106, baseType: !7, size: 32, offset: 11584)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1684, file: !1685, line: 1109, baseType: !2522, size: 128, offset: 11648)
!2522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2523, size: 128, elements: !2029)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1685, line: 51, flags: DIFlagFwdDecl)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1684, file: !1685, line: 1110, baseType: !1640, size: 192, offset: 11776)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1684, file: !1685, line: 1111, baseType: !781, size: 128, offset: 11968)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1684, file: !1685, line: 1173, baseType: !2528, size: 64, offset: 12096)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2530, line: 62, size: 256, align: 256, elements: !2531)
!2530 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2531 = !{!2532, !2533, !2534, !2539}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2529, file: !2530, line: 75, baseType: !497, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2529, file: !2530, line: 90, baseType: !497, size: 32, offset: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2529, file: !2530, line: 124, baseType: !2535, size: 64, offset: 64)
!2535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2529, file: !2530, line: 109, size: 64, elements: !2536)
!2536 = !{!2537, !2538}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2535, file: !2530, line: 110, baseType: !347, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2535, file: !2530, line: 112, baseType: !347, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2529, file: !2530, line: 144, baseType: !497, size: 32, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1684, file: !1685, line: 1174, baseType: !496, size: 32, offset: 12160)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1684, file: !1685, line: 1179, baseType: !690, size: 64, offset: 12224)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1684, file: !1685, line: 1182, baseType: !2543, size: 128, offset: 12288)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1620, line: 76, size: 128, elements: !2544)
!2544 = !{!2545, !2550, !2551}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2543, file: !1620, line: 85, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2547, line: 7, size: 64, elements: !2548)
!2547 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2548 = !{!2549}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2546, file: !2547, line: 12, baseType: !1825, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2543, file: !1620, line: 88, baseType: !528, size: 8, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2543, file: !1620, line: 95, baseType: !528, size: 8, offset: 72)
!2552 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !1685, line: 1184, baseType: !2553, size: 128, offset: 12416)
!2553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1684, file: !1685, line: 1184, size: 128, elements: !2554)
!2554 = !{!2555, !2556}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2553, file: !1685, line: 1185, baseType: !476, size: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2553, file: !1685, line: 1186, baseType: !935, size: 128, align: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1684, file: !1685, line: 1190, baseType: !2558, size: 64, offset: 12544)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1685, line: 53, flags: DIFlagFwdDecl)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1684, file: !1685, line: 1192, baseType: !2561, size: 128, offset: 12608)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1620, line: 64, size: 128, elements: !2562)
!2562 = !{!2563, !2564, !2565}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2561, file: !1620, line: 65, baseType: !1276, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2561, file: !1620, line: 67, baseType: !497, size: 32, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2561, file: !1620, line: 68, baseType: !497, size: 32, offset: 96)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1684, file: !1685, line: 1206, baseType: !349, size: 32, offset: 12736)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1684, file: !1685, line: 1207, baseType: !349, size: 32, offset: 12768)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1684, file: !1685, line: 1209, baseType: !690, size: 64, offset: 12800)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1684, file: !1685, line: 1219, baseType: !346, size: 64, offset: 12864)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1684, file: !1685, line: 1220, baseType: !346, size: 64, offset: 12928)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1684, file: !1685, line: 1317, baseType: !349, size: 32, offset: 12992)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1684, file: !1685, line: 1319, baseType: !1683, size: 64, offset: 13056)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1684, file: !1685, line: 1322, baseType: !2574, size: 64, offset: 13120)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2576, line: 56, size: 512, elements: !2577)
!2576 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2577 = !{!2578, !2579, !2580, !2581, !2582, !2583, !2584, !2586}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2575, file: !2576, line: 57, baseType: !2574, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2575, file: !2576, line: 58, baseType: !340, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2575, file: !2576, line: 59, baseType: !690, size: 64, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2575, file: !2576, line: 60, baseType: !690, size: 64, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2575, file: !2576, line: 61, baseType: !1371, size: 64, offset: 256)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2575, file: !2576, line: 62, baseType: !7, size: 32, offset: 320)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2575, file: !2576, line: 63, baseType: !2585, size: 64, offset: 384)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !339, line: 153, baseType: !346)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2575, file: !2576, line: 64, baseType: !2587, size: 64, offset: 448)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1684, file: !1685, line: 1326, baseType: !476, size: 32, offset: 13184)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1684, file: !1685, line: 1342, baseType: !340, size: 64, offset: 13248)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1684, file: !1685, line: 1343, baseType: !347, size: 64, offset: 13312)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1684, file: !1685, line: 1344, baseType: !346, size: 64, offset: 13376)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1684, file: !1685, line: 1345, baseType: !347, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1684, file: !1685, line: 1346, baseType: !347, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1684, file: !1685, line: 1347, baseType: !347, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1684, file: !1685, line: 1348, baseType: !935, size: 128, align: 64, offset: 13504)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1684, file: !1685, line: 1358, baseType: !2598, size: 34816, offset: 13824)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2599, line: 485, size: 34816, elements: !2600)
!2599 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2600 = !{!2601, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2630, !2631, !2632, !2633, !2634, !2635, !2638, !2639, !2640}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2598, file: !2599, line: 487, baseType: !2602, size: 192)
!2602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2603, size: 192, elements: !584)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2604, line: 16, size: 64, elements: !2605)
!2604 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2605 = !{!2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2603, file: !2604, line: 17, baseType: !387, size: 16)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2603, file: !2604, line: 18, baseType: !387, size: 16, offset: 16)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2603, file: !2604, line: 19, baseType: !387, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2603, file: !2604, line: 19, baseType: !387, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2603, file: !2604, line: 19, baseType: !387, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2603, file: !2604, line: 19, baseType: !387, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2603, file: !2604, line: 19, baseType: !387, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2603, file: !2604, line: 20, baseType: !387, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2603, file: !2604, line: 20, baseType: !387, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2603, file: !2604, line: 20, baseType: !387, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2603, file: !2604, line: 20, baseType: !387, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2603, file: !2604, line: 20, baseType: !387, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2603, file: !2604, line: 20, baseType: !387, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2598, file: !2599, line: 491, baseType: !690, size: 64, offset: 192)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2598, file: !2599, line: 495, baseType: !389, size: 16, offset: 256)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2598, file: !2599, line: 496, baseType: !389, size: 16, offset: 272)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2598, file: !2599, line: 497, baseType: !389, size: 16, offset: 288)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2598, file: !2599, line: 498, baseType: !389, size: 16, offset: 304)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2598, file: !2599, line: 502, baseType: !690, size: 64, offset: 320)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2598, file: !2599, line: 503, baseType: !690, size: 64, offset: 384)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2598, file: !2599, line: 514, baseType: !2627, size: 256, offset: 448)
!2627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2628, size: 256, elements: !620)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2599, line: 483, flags: DIFlagFwdDecl)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2598, file: !2599, line: 516, baseType: !690, size: 64, offset: 704)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2598, file: !2599, line: 518, baseType: !690, size: 64, offset: 768)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2598, file: !2599, line: 520, baseType: !690, size: 64, offset: 832)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2598, file: !2599, line: 521, baseType: !690, size: 64, offset: 896)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2598, file: !2599, line: 522, baseType: !690, size: 64, offset: 960)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2598, file: !2599, line: 528, baseType: !2636, size: 64, offset: 1024)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2599, line: 10, flags: DIFlagFwdDecl)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2598, file: !2599, line: 535, baseType: !690, size: 64, offset: 1088)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2598, file: !2599, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2598, file: !2599, line: 540, baseType: !2641, size: 33280, offset: 1536)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2642, line: 317, size: 33280, elements: !2643)
!2642 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2643 = !{!2644, !2645, !2646}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2641, file: !2642, line: 330, baseType: !7, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2641, file: !2642, line: 337, baseType: !690, size: 64, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2641, file: !2642, line: 348, baseType: !2647, size: 32768, offset: 512)
!2647 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2642, line: 304, size: 32768, elements: !2648)
!2648 = !{!2649, !2662, !2699, !2749, !2762}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2647, file: !2642, line: 305, baseType: !2650, size: 896)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2642, line: 12, size: 896, elements: !2651)
!2651 = !{!2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2661}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2650, file: !2642, line: 13, baseType: !496, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2650, file: !2642, line: 14, baseType: !496, size: 32, offset: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2650, file: !2642, line: 15, baseType: !496, size: 32, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2650, file: !2642, line: 16, baseType: !496, size: 32, offset: 96)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2650, file: !2642, line: 17, baseType: !496, size: 32, offset: 128)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2650, file: !2642, line: 18, baseType: !496, size: 32, offset: 160)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2650, file: !2642, line: 19, baseType: !496, size: 32, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2650, file: !2642, line: 22, baseType: !2660, size: 640, offset: 224)
!2660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 640, elements: !457)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2650, file: !2642, line: 25, baseType: !496, size: 32, offset: 864)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2647, file: !2642, line: 306, baseType: !2663, size: 4096, align: 128)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2642, line: 34, size: 4096, align: 128, elements: !2664)
!2664 = !{!2665, !2666, !2667, !2668, !2669, !2684, !2685, !2686, !2688, !2690, !2694}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2663, file: !2642, line: 35, baseType: !387, size: 16)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2663, file: !2642, line: 36, baseType: !387, size: 16, offset: 16)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2663, file: !2642, line: 37, baseType: !387, size: 16, offset: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2663, file: !2642, line: 38, baseType: !387, size: 16, offset: 48)
!2669 = !DIDerivedType(tag: DW_TAG_member, scope: !2663, file: !2642, line: 39, baseType: !2670, size: 128, offset: 64)
!2670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2663, file: !2642, line: 39, size: 128, elements: !2671)
!2671 = !{!2672, !2677}
!2672 = !DIDerivedType(tag: DW_TAG_member, scope: !2670, file: !2642, line: 40, baseType: !2673, size: 128)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2670, file: !2642, line: 40, size: 128, elements: !2674)
!2674 = !{!2675, !2676}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2673, file: !2642, line: 41, baseType: !346, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2673, file: !2642, line: 42, baseType: !346, size: 64, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, scope: !2670, file: !2642, line: 44, baseType: !2678, size: 128)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2670, file: !2642, line: 44, size: 128, elements: !2679)
!2679 = !{!2680, !2681, !2682, !2683}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2678, file: !2642, line: 45, baseType: !496, size: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2678, file: !2642, line: 46, baseType: !496, size: 32, offset: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2678, file: !2642, line: 47, baseType: !496, size: 32, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2678, file: !2642, line: 48, baseType: !496, size: 32, offset: 96)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2663, file: !2642, line: 51, baseType: !496, size: 32, offset: 192)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2663, file: !2642, line: 52, baseType: !496, size: 32, offset: 224)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2663, file: !2642, line: 55, baseType: !2687, size: 1024, offset: 256)
!2687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 1024, elements: !432)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2663, file: !2642, line: 58, baseType: !2689, size: 2048, offset: 1280)
!2689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 2048, elements: !852)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2663, file: !2642, line: 60, baseType: !2691, size: 384, offset: 3328)
!2691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 384, elements: !2692)
!2692 = !{!2693}
!2693 = !DISubrange(count: 12)
!2694 = !DIDerivedType(tag: DW_TAG_member, scope: !2663, file: !2642, line: 62, baseType: !2695, size: 384, offset: 3712)
!2695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2663, file: !2642, line: 62, size: 384, elements: !2696)
!2696 = !{!2697, !2698}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2695, file: !2642, line: 63, baseType: !2691, size: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2695, file: !2642, line: 64, baseType: !2691, size: 384)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2647, file: !2642, line: 307, baseType: !2700, size: 1088)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2642, line: 79, size: 1088, elements: !2701)
!2701 = !{!2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2748}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2700, file: !2642, line: 80, baseType: !496, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2700, file: !2642, line: 81, baseType: !496, size: 32, offset: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2700, file: !2642, line: 82, baseType: !496, size: 32, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2700, file: !2642, line: 83, baseType: !496, size: 32, offset: 96)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2700, file: !2642, line: 84, baseType: !496, size: 32, offset: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2700, file: !2642, line: 85, baseType: !496, size: 32, offset: 160)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2700, file: !2642, line: 86, baseType: !496, size: 32, offset: 192)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2700, file: !2642, line: 88, baseType: !2660, size: 640, offset: 224)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2700, file: !2642, line: 89, baseType: !341, size: 8, offset: 864)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2700, file: !2642, line: 90, baseType: !341, size: 8, offset: 872)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2700, file: !2642, line: 91, baseType: !341, size: 8, offset: 880)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2700, file: !2642, line: 92, baseType: !341, size: 8, offset: 888)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2700, file: !2642, line: 93, baseType: !341, size: 8, offset: 896)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2700, file: !2642, line: 94, baseType: !341, size: 8, offset: 904)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2700, file: !2642, line: 95, baseType: !2717, size: 64, offset: 960)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2719, line: 11, size: 128, elements: !2720)
!2719 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2720 = !{!2721, !2722}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2718, file: !2719, line: 12, baseType: !685, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2718, file: !2719, line: 13, baseType: !2723, size: 64, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2725, line: 56, size: 1344, elements: !2726)
!2725 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2726 = !{!2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2724, file: !2725, line: 61, baseType: !690, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2724, file: !2725, line: 62, baseType: !690, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2724, file: !2725, line: 63, baseType: !690, size: 64, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2724, file: !2725, line: 64, baseType: !690, size: 64, offset: 192)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2724, file: !2725, line: 65, baseType: !690, size: 64, offset: 256)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2724, file: !2725, line: 66, baseType: !690, size: 64, offset: 320)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2724, file: !2725, line: 68, baseType: !690, size: 64, offset: 384)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2724, file: !2725, line: 69, baseType: !690, size: 64, offset: 448)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2724, file: !2725, line: 70, baseType: !690, size: 64, offset: 512)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2724, file: !2725, line: 71, baseType: !690, size: 64, offset: 576)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2724, file: !2725, line: 72, baseType: !690, size: 64, offset: 640)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2724, file: !2725, line: 73, baseType: !690, size: 64, offset: 704)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2724, file: !2725, line: 74, baseType: !690, size: 64, offset: 768)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2724, file: !2725, line: 75, baseType: !690, size: 64, offset: 832)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2724, file: !2725, line: 76, baseType: !690, size: 64, offset: 896)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2724, file: !2725, line: 81, baseType: !690, size: 64, offset: 960)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2724, file: !2725, line: 83, baseType: !690, size: 64, offset: 1024)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2724, file: !2725, line: 84, baseType: !690, size: 64, offset: 1088)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2724, file: !2725, line: 85, baseType: !690, size: 64, offset: 1152)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2724, file: !2725, line: 86, baseType: !690, size: 64, offset: 1216)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2724, file: !2725, line: 87, baseType: !690, size: 64, offset: 1280)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2700, file: !2642, line: 96, baseType: !496, size: 32, offset: 1024)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2647, file: !2642, line: 308, baseType: !2750, size: 4608, align: 512)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2642, line: 289, size: 4608, align: 512, elements: !2751)
!2751 = !{!2752, !2753, !2760}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2750, file: !2642, line: 290, baseType: !2663, size: 4096, align: 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2750, file: !2642, line: 291, baseType: !2754, size: 512, offset: 4096)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2642, line: 268, size: 512, elements: !2755)
!2755 = !{!2756, !2757, !2758}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2754, file: !2642, line: 269, baseType: !346, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2754, file: !2642, line: 270, baseType: !346, size: 64, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2754, file: !2642, line: 271, baseType: !2759, size: 384, offset: 128)
!2759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 384, elements: !655)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2750, file: !2642, line: 292, baseType: !2761, offset: 4608)
!2761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, elements: !2181)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2647, file: !2642, line: 309, baseType: !2763, size: 32768)
!2763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 32768, elements: !2764)
!2764 = !{!2765}
!2765 = !DISubrange(count: 4096)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1680, file: !1278, line: 378, baseType: !2767, size: 64, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1676, file: !1278, line: 384, baseType: !1962, size: 192, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1527, file: !1278, line: 500, baseType: !809, offset: 6656)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1527, file: !1278, line: 501, baseType: !2771, size: 64, offset: 6656)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1278, line: 387, flags: DIFlagFwdDecl)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1527, file: !1278, line: 516, baseType: !2171, size: 64, offset: 6720)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1527, file: !1278, line: 519, baseType: !922, size: 64, offset: 6784)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1527, file: !1278, line: 521, baseType: !2776, size: 64, offset: 6848)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1278, line: 521, flags: DIFlagFwdDecl)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1527, file: !1278, line: 545, baseType: !481, size: 32, offset: 6912)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1527, file: !1278, line: 548, baseType: !528, size: 8, offset: 6944)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1527, file: !1278, line: 550, baseType: !2781, offset: 6952)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2782, line: 142, elements: !823)
!2782 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1527, file: !1278, line: 554, baseType: !2417, size: 256, offset: 6976)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1527, file: !1278, line: 557, baseType: !496, size: 32, offset: 7232)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1524, file: !1278, line: 565, baseType: !2786, offset: 7296)
!2786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, elements: !2787)
!2787 = !{!2788}
!2788 = !DISubrange(count: -1)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1520, file: !1278, line: 151, baseType: !481, size: 32)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1513, file: !1278, line: 156, baseType: !809, offset: 256)
!2791 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !1278, line: 159, baseType: !2792, size: 128)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !1278, line: 159, size: 128, elements: !2793)
!2793 = !{!2794, !2797}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2792, file: !1278, line: 161, baseType: !2795, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1278, line: 161, flags: DIFlagFwdDecl)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2792, file: !1278, line: 162, baseType: !340, size: 64, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1282, file: !1278, line: 176, baseType: !935, size: 128, align: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, scope: !1277, file: !1278, line: 179, baseType: !2800, size: 32, offset: 384)
!2800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1277, file: !1278, line: 179, size: 32, elements: !2801)
!2801 = !{!2802, !2803, !2804, !2805}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2800, file: !1278, line: 184, baseType: !481, size: 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2800, file: !1278, line: 192, baseType: !7, size: 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2800, file: !1278, line: 194, baseType: !7, size: 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2800, file: !1278, line: 195, baseType: !349, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1277, file: !1278, line: 199, baseType: !481, size: 32, offset: 416)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1212, file: !208, line: 1964, baseType: !2808, size: 64, offset: 1344)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!685, !1154, !2811}
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2813, line: 12, size: 256, elements: !2814)
!2813 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2814 = !{!2815, !2816, !2817, !2818, !2819}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2812, file: !2813, line: 13, baseType: !338, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2812, file: !2813, line: 16, baseType: !349, size: 32, offset: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2812, file: !2813, line: 23, baseType: !690, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2812, file: !2813, line: 30, baseType: !690, size: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2812, file: !2813, line: 33, baseType: !2820, size: 64, offset: 192)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1278, line: 27, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1212, file: !208, line: 1966, baseType: !2808, size: 64, offset: 1408)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1155, file: !208, line: 1424, baseType: !2824, size: 64, offset: 448)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2826)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !2827)
!2827 = !{!2828, !2874, !2878, !2882, !2883, !2884, !2885, !2886, !2891, !2896, !2900}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2826, file: !202, line: 323, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!349, !2832}
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !2834)
!2834 = !{!2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2859, !2860, !2861}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2833, file: !202, line: 295, baseType: !1194, size: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2833, file: !202, line: 296, baseType: !781, size: 128, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2833, file: !202, line: 297, baseType: !781, size: 128, offset: 256)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2833, file: !202, line: 298, baseType: !781, size: 128, offset: 384)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2833, file: !202, line: 299, baseType: !1640, size: 192, offset: 512)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2833, file: !202, line: 300, baseType: !809, offset: 704)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2833, file: !202, line: 301, baseType: !481, size: 32, offset: 704)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2833, file: !202, line: 302, baseType: !1154, size: 64, offset: 768)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2833, file: !202, line: 303, baseType: !2844, size: 64, offset: 832)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !2845)
!2845 = !{!2846, !2858}
!2846 = !DIDerivedType(tag: DW_TAG_member, scope: !2844, file: !202, line: 69, baseType: !2847, size: 32)
!2847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2844, file: !202, line: 69, size: 32, elements: !2848)
!2848 = !{!2849, !2850, !2851}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2847, file: !202, line: 70, baseType: !997, size: 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2847, file: !202, line: 71, baseType: !1005, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2847, file: !202, line: 72, baseType: !2852, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2853, line: 24, baseType: !2854)
!2853 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2853, line: 22, size: 32, elements: !2855)
!2855 = !{!2856}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2854, file: !2853, line: 23, baseType: !2857, size: 32)
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2853, line: 20, baseType: !1003)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2844, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2833, file: !202, line: 304, baseType: !1088, size: 64, offset: 896)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2833, file: !202, line: 305, baseType: !690, size: 64, offset: 960)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2833, file: !202, line: 306, baseType: !2862, size: 576, offset: 1024)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !2863)
!2863 = !{!2864, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2862, file: !202, line: 206, baseType: !2865, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !619)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2862, file: !202, line: 207, baseType: !2865, size: 64, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2862, file: !202, line: 208, baseType: !2865, size: 64, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2862, file: !202, line: 209, baseType: !2865, size: 64, offset: 192)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2862, file: !202, line: 210, baseType: !2865, size: 64, offset: 256)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2862, file: !202, line: 211, baseType: !2865, size: 64, offset: 320)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2862, file: !202, line: 212, baseType: !2865, size: 64, offset: 384)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2862, file: !202, line: 213, baseType: !1095, size: 64, offset: 448)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2862, file: !202, line: 214, baseType: !1095, size: 64, offset: 512)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2826, file: !202, line: 324, baseType: !2875, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!2832, !1154, !349}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2826, file: !202, line: 325, baseType: !2879, size: 64, offset: 128)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{null, !2832}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2826, file: !202, line: 326, baseType: !2829, size: 64, offset: 192)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2826, file: !202, line: 327, baseType: !2829, size: 64, offset: 256)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2826, file: !202, line: 328, baseType: !2829, size: 64, offset: 320)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2826, file: !202, line: 329, baseType: !1240, size: 64, offset: 384)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2826, file: !202, line: 332, baseType: !2887, size: 64, offset: 448)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!2890, !991}
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2826, file: !202, line: 333, baseType: !2892, size: 64, offset: 512)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!349, !991, !2895}
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2826, file: !202, line: 335, baseType: !2897, size: 64, offset: 576)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!349, !991, !2890}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2826, file: !202, line: 337, baseType: !2901, size: 64, offset: 640)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!349, !1154, !2904}
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1155, file: !208, line: 1425, baseType: !2906, size: 64, offset: 512)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2908)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !2909)
!2909 = !{!2910, !2914, !2915, !2919, !2920, !2921, !2936, !2959, !2963, !2964, !2987}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2908, file: !202, line: 429, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!349, !1154, !349, !349, !1104}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2908, file: !202, line: 430, baseType: !1240, size: 64, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2908, file: !202, line: 431, baseType: !2916, size: 64, offset: 128)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!349, !1154, !7}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2908, file: !202, line: 432, baseType: !2916, size: 64, offset: 192)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2908, file: !202, line: 433, baseType: !1240, size: 64, offset: 256)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2908, file: !202, line: 434, baseType: !2922, size: 64, offset: 320)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!349, !1154, !349, !2925}
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !2927)
!2927 = !{!2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2926, file: !202, line: 416, baseType: !349, size: 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2926, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2926, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2926, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2926, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2926, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2926, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2926, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2908, file: !202, line: 435, baseType: !2937, size: 64, offset: 384)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!349, !1154, !2844, !2940}
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !2942)
!2942 = !{!2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2941, file: !202, line: 344, baseType: !349, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2941, file: !202, line: 345, baseType: !346, size: 64, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2941, file: !202, line: 346, baseType: !346, size: 64, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2941, file: !202, line: 347, baseType: !346, size: 64, offset: 192)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2941, file: !202, line: 348, baseType: !346, size: 64, offset: 256)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2941, file: !202, line: 349, baseType: !346, size: 64, offset: 320)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2941, file: !202, line: 350, baseType: !346, size: 64, offset: 384)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2941, file: !202, line: 351, baseType: !1328, size: 64, offset: 448)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2941, file: !202, line: 353, baseType: !1328, size: 64, offset: 512)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2941, file: !202, line: 354, baseType: !349, size: 32, offset: 576)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2941, file: !202, line: 355, baseType: !349, size: 32, offset: 608)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2941, file: !202, line: 356, baseType: !346, size: 64, offset: 640)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2941, file: !202, line: 357, baseType: !346, size: 64, offset: 704)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2941, file: !202, line: 358, baseType: !346, size: 64, offset: 768)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2941, file: !202, line: 359, baseType: !1328, size: 64, offset: 832)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2941, file: !202, line: 360, baseType: !349, size: 32, offset: 896)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2908, file: !202, line: 436, baseType: !2960, size: 64, offset: 448)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!349, !1154, !2904, !2940}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2908, file: !202, line: 438, baseType: !2937, size: 64, offset: 512)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2908, file: !202, line: 439, baseType: !2965, size: 64, offset: 576)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!349, !1154, !2968}
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !2970)
!2970 = !{!2971, !2972}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2969, file: !202, line: 410, baseType: !7, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2969, file: !202, line: 411, baseType: !2973, size: 1344, offset: 64)
!2973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2974, size: 1344, elements: !584)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !2975)
!2975 = !{!2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2986}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2974, file: !202, line: 396, baseType: !7, size: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2974, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2974, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2974, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2974, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2974, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2974, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2974, file: !202, line: 404, baseType: !348, size: 64, offset: 256)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2974, file: !202, line: 405, baseType: !2985, size: 64, offset: 320)
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !339, line: 126, baseType: !346)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2974, file: !202, line: 406, baseType: !2985, size: 64, offset: 384)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2908, file: !202, line: 440, baseType: !2916, size: 64, offset: 640)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1155, file: !208, line: 1426, baseType: !2989, size: 64, offset: 576)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2991)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1155, file: !208, line: 1427, baseType: !690, size: 64, offset: 640)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1155, file: !208, line: 1428, baseType: !690, size: 64, offset: 704)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1155, file: !208, line: 1429, baseType: !690, size: 64, offset: 768)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1155, file: !208, line: 1430, baseType: !952, size: 64, offset: 832)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1155, file: !208, line: 1431, baseType: !1318, size: 256, offset: 896)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1155, file: !208, line: 1432, baseType: !349, size: 32, offset: 1152)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1155, file: !208, line: 1433, baseType: !481, size: 32, offset: 1184)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1155, file: !208, line: 1437, baseType: !3000, size: 64, offset: 1216)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3003)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1155, file: !208, line: 1449, baseType: !3005, size: 64, offset: 1280)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !968, line: 34, size: 64, elements: !3006)
!3006 = !{!3007}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3005, file: !968, line: 35, baseType: !971, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1155, file: !208, line: 1450, baseType: !781, size: 128, offset: 1344)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1155, file: !208, line: 1451, baseType: !3010, size: 64, offset: 1472)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1155, file: !208, line: 1452, baseType: !2383, size: 64, offset: 1536)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1155, file: !208, line: 1453, baseType: !3014, size: 64, offset: 1600)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1155, file: !208, line: 1454, baseType: !1194, size: 128, offset: 1664)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1155, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1155, file: !208, line: 1456, baseType: !3019, size: 2432, offset: 1856)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !3020)
!3020 = !{!3021, !3022, !3023, !3025, !3057}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3019, file: !202, line: 519, baseType: !7, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3019, file: !202, line: 520, baseType: !1318, size: 256, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3019, file: !202, line: 521, baseType: !3024, size: 192, offset: 320)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !991, size: 192, elements: !584)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3019, file: !202, line: 522, baseType: !3026, size: 1728, offset: 512)
!3026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3027, size: 1728, elements: !584)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !3028)
!3028 = !{!3029, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3027, file: !202, line: 223, baseType: !3030, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !3032)
!3032 = !{!3033, !3034, !3047, !3048}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3031, file: !202, line: 444, baseType: !349, size: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3031, file: !202, line: 445, baseType: !3035, size: 64, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3037)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !3038)
!3038 = !{!3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3037, file: !202, line: 311, baseType: !1240, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3037, file: !202, line: 312, baseType: !1240, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3037, file: !202, line: 313, baseType: !1240, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3037, file: !202, line: 314, baseType: !1240, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3037, file: !202, line: 315, baseType: !2829, size: 64, offset: 256)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3037, file: !202, line: 316, baseType: !2829, size: 64, offset: 320)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3037, file: !202, line: 317, baseType: !2829, size: 64, offset: 384)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3037, file: !202, line: 318, baseType: !2901, size: 64, offset: 448)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3031, file: !202, line: 446, baseType: !362, size: 64, offset: 128)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3031, file: !202, line: 447, baseType: !3030, size: 64, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3027, file: !202, line: 224, baseType: !349, size: 32, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3027, file: !202, line: 226, baseType: !781, size: 128, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3027, file: !202, line: 227, baseType: !690, size: 64, offset: 256)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3027, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3027, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3027, file: !202, line: 230, baseType: !2865, size: 64, offset: 384)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3027, file: !202, line: 231, baseType: !2865, size: 64, offset: 448)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3027, file: !202, line: 232, baseType: !340, size: 64, offset: 512)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3019, file: !202, line: 523, baseType: !3058, size: 192, offset: 2240)
!3058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3035, size: 192, elements: !584)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1155, file: !208, line: 1458, baseType: !3060, size: 2112, offset: 4288)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !3061)
!3061 = !{!3062, !3063, !3064}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3060, file: !208, line: 1411, baseType: !349, size: 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3060, file: !208, line: 1412, baseType: !1941, size: 128, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3060, file: !208, line: 1413, baseType: !3065, size: 1920, offset: 192)
!3065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3066, size: 1920, elements: !584)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3067, line: 12, size: 640, elements: !3068)
!3067 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3068 = !{!3069, !3077, !3078, !3083, !3084}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3066, file: !3067, line: 13, baseType: !3070, size: 320)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3071, line: 17, size: 320, elements: !3072)
!3071 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3072 = !{!3073, !3074, !3075, !3076}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3070, file: !3071, line: 18, baseType: !349, size: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3070, file: !3071, line: 19, baseType: !349, size: 32, offset: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3070, file: !3071, line: 20, baseType: !1941, size: 128, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3070, file: !3071, line: 22, baseType: !935, size: 128, align: 64, offset: 192)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3066, file: !3067, line: 14, baseType: !414, size: 64, offset: 320)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3066, file: !3067, line: 15, baseType: !3079, size: 64, offset: 384)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3080, line: 16, size: 64, elements: !3081)
!3080 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3081 = !{!3082}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3079, file: !3080, line: 17, baseType: !1683, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3066, file: !3067, line: 16, baseType: !1941, size: 128, offset: 448)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3066, file: !3067, line: 17, baseType: !481, size: 32, offset: 576)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1155, file: !208, line: 1465, baseType: !340, size: 64, offset: 6400)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1155, file: !208, line: 1468, baseType: !496, size: 32, offset: 6464)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1155, file: !208, line: 1470, baseType: !1095, size: 64, offset: 6528)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1155, file: !208, line: 1471, baseType: !1095, size: 64, offset: 6592)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1155, file: !208, line: 1473, baseType: !497, size: 32, offset: 6656)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1155, file: !208, line: 1474, baseType: !3091, size: 64, offset: 6720)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1155, file: !208, line: 1477, baseType: !3094, size: 256, offset: 6784)
!3094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 256, elements: !432)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1155, file: !208, line: 1478, baseType: !3096, size: 128, offset: 7040)
!3096 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3097, line: 18, baseType: !3098)
!3097 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3097, line: 16, size: 128, elements: !3099)
!3099 = !{!3100}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3098, file: !3097, line: 17, baseType: !3101, size: 128)
!3101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 128, elements: !2193)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1155, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !1155, file: !208, line: 1481, baseType: !3104, size: 32, offset: 7200)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !339, line: 150, baseType: !7)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1155, file: !208, line: 1487, baseType: !1640, size: 192, offset: 7232)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1155, file: !208, line: 1493, baseType: !358, size: 64, offset: 7424)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1155, file: !208, line: 1495, baseType: !3108, size: 64, offset: 7488)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3110)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !950, line: 135, size: 1024, align: 512, elements: !3111)
!3111 = !{!3112, !3116, !3117, !3124, !3130, !3134, !3138, !3142, !3143, !3147, !3151, !3156, !3160}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3110, file: !950, line: 136, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!349, !952, !7}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3110, file: !950, line: 137, baseType: !3113, size: 64, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3110, file: !950, line: 138, baseType: !3118, size: 64, offset: 128)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!349, !3121, !3123}
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !953)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3110, file: !950, line: 139, baseType: !3125, size: 64, offset: 192)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!349, !3121, !7, !358, !3128}
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !976)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3110, file: !950, line: 141, baseType: !3131, size: 64, offset: 256)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!349, !3121}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3110, file: !950, line: 142, baseType: !3135, size: 64, offset: 320)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!349, !952}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3110, file: !950, line: 143, baseType: !3139, size: 64, offset: 384)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{null, !952}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3110, file: !950, line: 144, baseType: !3139, size: 64, offset: 448)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3110, file: !950, line: 145, baseType: !3144, size: 64, offset: 512)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{null, !952, !991}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3110, file: !950, line: 146, baseType: !3148, size: 64, offset: 576)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!380, !952, !380, !349}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3110, file: !950, line: 147, baseType: !3152, size: 64, offset: 640)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!948, !3155}
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3110, file: !950, line: 148, baseType: !3157, size: 64, offset: 704)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!349, !1104, !528}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3110, file: !950, line: 149, baseType: !3161, size: 64, offset: 768)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!952, !952, !3164}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !992)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !1155, file: !208, line: 1500, baseType: !349, size: 32, offset: 7552)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1155, file: !208, line: 1502, baseType: !3168, size: 448, offset: 7616)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2813, line: 60, size: 448, elements: !3169)
!3169 = !{!3170, !3175, !3176, !3177, !3178, !3179, !3180}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3168, file: !2813, line: 61, baseType: !3171, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!690, !3174, !2811}
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3168, file: !2813, line: 63, baseType: !3171, size: 64, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3168, file: !2813, line: 66, baseType: !685, size: 64, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3168, file: !2813, line: 67, baseType: !349, size: 32, offset: 192)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3168, file: !2813, line: 68, baseType: !7, size: 32, offset: 224)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3168, file: !2813, line: 71, baseType: !781, size: 128, offset: 256)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3168, file: !2813, line: 77, baseType: !3181, size: 64, offset: 384)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1155, file: !208, line: 1505, baseType: !1322, size: 64, offset: 8064)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !1155, file: !208, line: 1508, baseType: !1322, size: 64, offset: 8128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1155, file: !208, line: 1511, baseType: !349, size: 32, offset: 8192)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1155, file: !208, line: 1514, baseType: !1458, size: 32, offset: 8224)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1155, file: !208, line: 1517, baseType: !3187, size: 64, offset: 8256)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2418, line: 18, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1155, file: !208, line: 1518, baseType: !1190, size: 64, offset: 8320)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1155, file: !208, line: 1525, baseType: !2171, size: 64, offset: 8384)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1155, file: !208, line: 1532, baseType: !3192, size: 64, offset: 8448)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3193, line: 52, size: 64, elements: !3194)
!3193 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3194 = !{!3195}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3192, file: !3193, line: 53, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3193, line: 40, size: 256, elements: !3198)
!3198 = !{!3199, !3200, !3205}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3197, file: !3193, line: 42, baseType: !809)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3197, file: !3193, line: 44, baseType: !3201, size: 192)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3193, line: 28, size: 192, elements: !3202)
!3202 = !{!3203, !3204}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3201, file: !3193, line: 29, baseType: !781, size: 128)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3201, file: !3193, line: 31, baseType: !685, size: 64, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3197, file: !3193, line: 49, baseType: !685, size: 64, offset: 192)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1155, file: !208, line: 1533, baseType: !3192, size: 64, offset: 8512)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1155, file: !208, line: 1534, baseType: !935, size: 128, align: 64, offset: 8576)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1155, file: !208, line: 1535, baseType: !2417, size: 256, offset: 8704)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1155, file: !208, line: 1537, baseType: !1640, size: 192, offset: 8960)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1155, file: !208, line: 1542, baseType: !349, size: 32, offset: 9152)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1155, file: !208, line: 1545, baseType: !809, offset: 9184)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1155, file: !208, line: 1546, baseType: !781, size: 128, offset: 9216)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1155, file: !208, line: 1548, baseType: !809, offset: 9344)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1155, file: !208, line: 1549, baseType: !781, size: 128, offset: 9344)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !992, file: !208, line: 624, baseType: !1289, size: 64, offset: 256)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !992, file: !208, line: 631, baseType: !690, size: 64, offset: 320)
!3217 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !208, line: 639, baseType: !3218, size: 32, offset: 384)
!3218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !208, line: 639, size: 32, elements: !3219)
!3219 = !{!3220, !3222}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3218, file: !208, line: 640, baseType: !3221, size: 32)
!3221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3218, file: !208, line: 641, baseType: !7, size: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !992, file: !208, line: 643, baseType: !1070, size: 32, offset: 416)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !992, file: !208, line: 644, baseType: !1088, size: 64, offset: 448)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !992, file: !208, line: 645, baseType: !1091, size: 128, offset: 512)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !992, file: !208, line: 646, baseType: !1091, size: 128, offset: 640)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !992, file: !208, line: 647, baseType: !1091, size: 128, offset: 768)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !992, file: !208, line: 648, baseType: !809, offset: 896)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !992, file: !208, line: 649, baseType: !389, size: 16, offset: 896)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !992, file: !208, line: 650, baseType: !341, size: 8, offset: 912)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !992, file: !208, line: 651, baseType: !341, size: 8, offset: 920)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !992, file: !208, line: 652, baseType: !2985, size: 64, offset: 960)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !992, file: !208, line: 659, baseType: !690, size: 64, offset: 1024)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !992, file: !208, line: 660, baseType: !1318, size: 256, offset: 1088)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !992, file: !208, line: 662, baseType: !690, size: 64, offset: 1344)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !992, file: !208, line: 663, baseType: !690, size: 64, offset: 1408)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !992, file: !208, line: 665, baseType: !1194, size: 128, offset: 1472)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !992, file: !208, line: 666, baseType: !781, size: 128, offset: 1600)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !992, file: !208, line: 675, baseType: !781, size: 128, offset: 1728)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !992, file: !208, line: 676, baseType: !781, size: 128, offset: 1856)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !992, file: !208, line: 677, baseType: !781, size: 128, offset: 1984)
!3242 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !208, line: 678, baseType: !3243, size: 128, offset: 2112)
!3243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !208, line: 678, size: 128, elements: !3244)
!3244 = !{!3245, !3246}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3243, file: !208, line: 679, baseType: !1190, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3243, file: !208, line: 680, baseType: !935, size: 128, align: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !992, file: !208, line: 682, baseType: !1324, size: 64, offset: 2240)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !992, file: !208, line: 683, baseType: !1324, size: 64, offset: 2304)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !992, file: !208, line: 684, baseType: !481, size: 32, offset: 2368)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !992, file: !208, line: 685, baseType: !481, size: 32, offset: 2400)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !992, file: !208, line: 686, baseType: !481, size: 32, offset: 2432)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !992, file: !208, line: 688, baseType: !481, size: 32, offset: 2464)
!3253 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !208, line: 690, baseType: !3254, size: 64, offset: 2496)
!3254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !208, line: 690, size: 64, elements: !3255)
!3255 = !{!3256, !3488}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3254, file: !208, line: 691, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3259)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !3260)
!3260 = !{!3261, !3262, !3266, !3271, !3275, !3276, !3277, !3281, !3294, !3295, !3312, !3316, !3317, !3321, !3322, !3326, !3331, !3332, !3336, !3340, !3448, !3452, !3453, !3457, !3458, !3462, !3466, !3471, !3475, !3479, !3483, !3487}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3259, file: !208, line: 1823, baseType: !362, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3259, file: !208, line: 1824, baseType: !3263, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!1088, !922, !1088, !349}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3259, file: !208, line: 1825, baseType: !3267, size: 64, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!878, !922, !380, !892, !3270}
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3259, file: !208, line: 1826, baseType: !3272, size: 64, offset: 192)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!878, !922, !358, !892, !3270}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3259, file: !208, line: 1827, baseType: !1395, size: 64, offset: 256)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3259, file: !208, line: 1828, baseType: !1395, size: 64, offset: 320)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3259, file: !208, line: 1829, baseType: !3278, size: 64, offset: 384)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!349, !1398, !528}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3259, file: !208, line: 1830, baseType: !3282, size: 64, offset: 448)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!349, !922, !3285}
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !3287)
!3287 = !{!3288, !3293}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3286, file: !208, line: 1777, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !3290)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!349, !3285, !358, !349, !1088, !346, !7}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3286, file: !208, line: 1778, baseType: !1088, size: 64, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3259, file: !208, line: 1831, baseType: !3282, size: 64, offset: 512)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3259, file: !208, line: 1832, baseType: !3296, size: 64, offset: 576)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!3299, !922, !3301}
!3299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3300, line: 52, baseType: !7)
!3300 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3303, line: 43, size: 128, elements: !3304)
!3303 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!3304 = !{!3305, !3311}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3302, file: !3303, line: 44, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3303, line: 37, baseType: !3307)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{null, !922, !3310, !3301}
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3302, file: !3303, line: 45, baseType: !3299, size: 32, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3259, file: !208, line: 1833, baseType: !3313, size: 64, offset: 640)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!685, !922, !7, !690}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3259, file: !208, line: 1834, baseType: !3313, size: 64, offset: 704)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3259, file: !208, line: 1835, baseType: !3318, size: 64, offset: 768)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!349, !922, !1530}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3259, file: !208, line: 1836, baseType: !690, size: 64, offset: 832)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3259, file: !208, line: 1837, baseType: !3323, size: 64, offset: 896)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!349, !991, !922}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3259, file: !208, line: 1838, baseType: !3327, size: 64, offset: 960)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!349, !922, !3330}
!3330 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !340)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3259, file: !208, line: 1839, baseType: !3323, size: 64, offset: 1024)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3259, file: !208, line: 1840, baseType: !3333, size: 64, offset: 1088)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!349, !922, !1088, !1088, !349}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3259, file: !208, line: 1841, baseType: !3337, size: 64, offset: 1152)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!349, !349, !922, !349}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3259, file: !208, line: 1842, baseType: !3341, size: 64, offset: 1216)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!349, !922, !349, !3344}
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !3346)
!3346 = !{!3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3378, !3379, !3380, !3393, !3424}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3345, file: !208, line: 1063, baseType: !3344, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3345, file: !208, line: 1064, baseType: !781, size: 128, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3345, file: !208, line: 1065, baseType: !1194, size: 128, offset: 192)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3345, file: !208, line: 1066, baseType: !781, size: 128, offset: 320)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3345, file: !208, line: 1069, baseType: !781, size: 128, offset: 448)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3345, file: !208, line: 1072, baseType: !3330, size: 64, offset: 576)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3345, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3345, file: !208, line: 1074, baseType: !345, size: 8, offset: 672)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3345, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3345, file: !208, line: 1076, baseType: !349, size: 32, offset: 736)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3345, file: !208, line: 1077, baseType: !1941, size: 128, offset: 768)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3345, file: !208, line: 1078, baseType: !922, size: 64, offset: 896)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3345, file: !208, line: 1079, baseType: !1088, size: 64, offset: 960)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3345, file: !208, line: 1080, baseType: !1088, size: 64, offset: 1024)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3345, file: !208, line: 1082, baseType: !3362, size: 64, offset: 1088)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !3364)
!3364 = !{!3365, !3373, !3374, !3375, !3376, !3377}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3363, file: !208, line: 1315, baseType: !3366)
!3366 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3367, line: 20, baseType: !3368)
!3367 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3367, line: 11, elements: !3369)
!3369 = !{!3370}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3368, file: !3367, line: 12, baseType: !3371)
!3371 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !821, line: 33, baseType: !3372)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !821, line: 31, elements: !823)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3363, file: !208, line: 1316, baseType: !349, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3363, file: !208, line: 1317, baseType: !349, size: 32, offset: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3363, file: !208, line: 1318, baseType: !3362, size: 64, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3363, file: !208, line: 1319, baseType: !922, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3363, file: !208, line: 1320, baseType: !935, size: 128, align: 64, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3345, file: !208, line: 1084, baseType: !690, size: 64, offset: 1152)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3345, file: !208, line: 1085, baseType: !690, size: 64, offset: 1216)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3345, file: !208, line: 1087, baseType: !3381, size: 64, offset: 1280)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3383)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !3384)
!3384 = !{!3385, !3389}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3383, file: !208, line: 1012, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{null, !3344, !3344}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3383, file: !208, line: 1013, baseType: !3390, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{null, !3344}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3345, file: !208, line: 1088, baseType: !3394, size: 64, offset: 1344)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3396)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !3397)
!3397 = !{!3398, !3402, !3406, !3407, !3411, !3415, !3419, !3423}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3396, file: !208, line: 1017, baseType: !3399, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!3330, !3330}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3396, file: !208, line: 1018, baseType: !3403, size: 64, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{null, !3330}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3396, file: !208, line: 1019, baseType: !3390, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3396, file: !208, line: 1020, baseType: !3408, size: 64, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!349, !3344, !349}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3396, file: !208, line: 1021, baseType: !3412, size: 64, offset: 256)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!528, !3344}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3396, file: !208, line: 1022, baseType: !3416, size: 64, offset: 320)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!349, !3344, !349, !784}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3396, file: !208, line: 1023, baseType: !3420, size: 64, offset: 384)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{null, !3344, !1372}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3396, file: !208, line: 1024, baseType: !3412, size: 64, offset: 448)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3345, file: !208, line: 1097, baseType: !3425, size: 256, offset: 1408)
!3425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3345, file: !208, line: 1089, size: 256, elements: !3426)
!3426 = !{!3427, !3436, !3442}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3425, file: !208, line: 1090, baseType: !3428, size: 256)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3429, line: 10, size: 256, elements: !3430)
!3429 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3430 = !{!3431, !3432, !3435}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3428, file: !3429, line: 11, baseType: !496, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3428, file: !3429, line: 12, baseType: !3433, size: 64, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3429, line: 5, flags: DIFlagFwdDecl)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3428, file: !3429, line: 13, baseType: !781, size: 128, offset: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3425, file: !208, line: 1091, baseType: !3437, size: 64)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3429, line: 17, size: 64, elements: !3438)
!3438 = !{!3439}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3437, file: !3429, line: 18, baseType: !3440, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3429, line: 16, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3425, file: !208, line: 1096, baseType: !3443, size: 192)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3425, file: !208, line: 1092, size: 192, elements: !3444)
!3444 = !{!3445, !3446, !3447}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3443, file: !208, line: 1093, baseType: !781, size: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3443, file: !208, line: 1094, baseType: !349, size: 32, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3443, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3259, file: !208, line: 1843, baseType: !3449, size: 64, offset: 1280)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!878, !922, !1276, !349, !892, !3270, !349}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3259, file: !208, line: 1844, baseType: !1570, size: 64, offset: 1344)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3259, file: !208, line: 1845, baseType: !3454, size: 64, offset: 1408)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!349, !349}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3259, file: !208, line: 1846, baseType: !3341, size: 64, offset: 1472)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3259, file: !208, line: 1847, baseType: !3459, size: 64, offset: 1536)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!878, !2558, !922, !3270, !892, !7}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3259, file: !208, line: 1848, baseType: !3463, size: 64, offset: 1600)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!878, !922, !3270, !2558, !892, !7}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3259, file: !208, line: 1849, baseType: !3467, size: 64, offset: 1664)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!349, !922, !685, !3470, !1372}
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3259, file: !208, line: 1850, baseType: !3472, size: 64, offset: 1728)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!685, !922, !349, !1088, !1088}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3259, file: !208, line: 1852, baseType: !3476, size: 64, offset: 1792)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{null, !1266, !922}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3259, file: !208, line: 1856, baseType: !3480, size: 64, offset: 1856)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!878, !922, !1088, !922, !1088, !892, !7}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3259, file: !208, line: 1858, baseType: !3484, size: 64, offset: 1920)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!1088, !922, !1088, !922, !1088, !1088, !7}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3259, file: !208, line: 1861, baseType: !3333, size: 64, offset: 1984)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3254, file: !208, line: 692, baseType: !1219, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !992, file: !208, line: 694, baseType: !3490, size: 64, offset: 2560)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !3492)
!3492 = !{!3493, !3494, !3495, !3496}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3491, file: !208, line: 1101, baseType: !809)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3491, file: !208, line: 1102, baseType: !781, size: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3491, file: !208, line: 1103, baseType: !781, size: 128, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3491, file: !208, line: 1104, baseType: !781, size: 128, offset: 256)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !992, file: !208, line: 695, baseType: !1290, size: 1216, align: 64, offset: 2624)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !992, file: !208, line: 696, baseType: !781, size: 128, offset: 3840)
!3499 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !208, line: 697, baseType: !3500, size: 64, offset: 3968)
!3500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !208, line: 697, size: 64, elements: !3501)
!3501 = !{!3502, !3503, !3504, !3515, !3516}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3500, file: !208, line: 698, baseType: !2558, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3500, file: !208, line: 699, baseType: !3010, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3500, file: !208, line: 700, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3507, line: 14, size: 832, elements: !3508)
!3507 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3508 = !{!3509, !3510, !3511, !3512, !3513, !3514}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3506, file: !3507, line: 15, baseType: !796, size: 512)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3506, file: !3507, line: 16, baseType: !362, size: 64, offset: 512)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3506, file: !3507, line: 17, baseType: !3257, size: 64, offset: 576)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3506, file: !3507, line: 18, baseType: !781, size: 128, offset: 640)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3506, file: !3507, line: 19, baseType: !1070, size: 32, offset: 768)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3506, file: !3507, line: 20, baseType: !7, size: 32, offset: 800)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3500, file: !208, line: 701, baseType: !380, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3500, file: !208, line: 702, baseType: !7, size: 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !992, file: !208, line: 705, baseType: !497, size: 32, offset: 4032)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !992, file: !208, line: 708, baseType: !497, size: 32, offset: 4064)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !992, file: !208, line: 709, baseType: !3091, size: 64, offset: 4096)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !992, file: !208, line: 720, baseType: !340, size: 64, offset: 4160)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !953, file: !950, line: 98, baseType: !3522, size: 256, offset: 448)
!3522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 256, elements: !432)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !953, file: !950, line: 101, baseType: !3524, size: 32, offset: 704)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3525, line: 25, size: 32, elements: !3526)
!3525 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3526 = !{!3527}
!3527 = !DIDerivedType(tag: DW_TAG_member, scope: !3524, file: !3525, line: 26, baseType: !3528, size: 32)
!3528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3524, file: !3525, line: 26, size: 32, elements: !3529)
!3529 = !{!3530}
!3530 = !DIDerivedType(tag: DW_TAG_member, scope: !3528, file: !3525, line: 30, baseType: !3531, size: 32)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3528, file: !3525, line: 30, size: 32, elements: !3532)
!3532 = !{!3533, !3534}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3531, file: !3525, line: 31, baseType: !809)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3531, file: !3525, line: 32, baseType: !349, size: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !953, file: !950, line: 102, baseType: !3108, size: 64, offset: 768)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !953, file: !950, line: 103, baseType: !1154, size: 64, offset: 832)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !953, file: !950, line: 104, baseType: !690, size: 64, offset: 896)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !953, file: !950, line: 105, baseType: !340, size: 64, offset: 960)
!3539 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !950, line: 107, baseType: !3540, size: 128, offset: 1024)
!3540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !953, file: !950, line: 107, size: 128, elements: !3541)
!3541 = !{!3542, !3543}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3540, file: !950, line: 108, baseType: !781, size: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3540, file: !950, line: 109, baseType: !3310, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !953, file: !950, line: 111, baseType: !781, size: 128, offset: 1152)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !953, file: !950, line: 112, baseType: !781, size: 128, offset: 1280)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !953, file: !950, line: 120, baseType: !3547, size: 128, offset: 1408)
!3547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !953, file: !950, line: 116, size: 128, elements: !3548)
!3548 = !{!3549, !3550, !3551}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3547, file: !950, line: 117, baseType: !1194, size: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3547, file: !950, line: 118, baseType: !967, size: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3547, file: !950, line: 119, baseType: !935, size: 128, align: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !923, file: !208, line: 922, baseType: !991, size: 64, offset: 256)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !923, file: !208, line: 923, baseType: !3257, size: 64, offset: 320)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !923, file: !208, line: 929, baseType: !809, offset: 384)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !923, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !923, file: !208, line: 931, baseType: !1322, size: 64, offset: 448)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !923, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !923, file: !208, line: 933, baseType: !3104, size: 32, offset: 544)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !923, file: !208, line: 934, baseType: !1640, size: 192, offset: 576)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !923, file: !208, line: 935, baseType: !1088, size: 64, offset: 768)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !923, file: !208, line: 936, baseType: !3562, size: 192, offset: 832)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !3563)
!3563 = !{!3564, !3565, !3566, !3567, !3568, !3569}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3562, file: !208, line: 886, baseType: !3366)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3562, file: !208, line: 887, baseType: !1931, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3562, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3562, file: !208, line: 889, baseType: !997, size: 32, offset: 96)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3562, file: !208, line: 889, baseType: !997, size: 32, offset: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3562, file: !208, line: 890, baseType: !349, size: 32, offset: 160)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !923, file: !208, line: 937, baseType: !2007, size: 64, offset: 1024)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !923, file: !208, line: 938, baseType: !3572, size: 256, offset: 1088)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !3573)
!3573 = !{!3574, !3575, !3576, !3577, !3578, !3579}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3572, file: !208, line: 897, baseType: !690, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3572, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3572, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3572, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3572, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3572, file: !208, line: 904, baseType: !1088, size: 64, offset: 192)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !923, file: !208, line: 940, baseType: !346, size: 64, offset: 1344)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !923, file: !208, line: 945, baseType: !340, size: 64, offset: 1408)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !923, file: !208, line: 949, baseType: !781, size: 128, offset: 1472)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !923, file: !208, line: 950, baseType: !781, size: 128, offset: 1600)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !923, file: !208, line: 952, baseType: !1289, size: 64, offset: 1728)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !923, file: !208, line: 953, baseType: !1458, size: 32, offset: 1792)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !923, file: !208, line: 954, baseType: !1458, size: 32, offset: 1824)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !913, file: !872, line: 174, baseType: !919, size: 64, offset: 320)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !913, file: !872, line: 176, baseType: !3589, size: 64, offset: 384)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!349, !922, !802, !912, !1530}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !901, file: !872, line: 90, baseType: !896, size: 64, offset: 192)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !901, file: !872, line: 91, baseType: !3594, size: 64, offset: 256)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !862, file: !797, line: 143, baseType: !3596, size: 64, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!3599, !802}
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3601)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !3602)
!3602 = !{!3603, !3604, !3608, !3612, !3618, !3622}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3601, file: !225, line: 40, baseType: !224, size: 32)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3601, file: !225, line: 41, baseType: !3605, size: 64, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!528}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3601, file: !225, line: 42, baseType: !3609, size: 64, offset: 128)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!340}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3601, file: !225, line: 43, baseType: !3613, size: 64, offset: 192)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!2587, !3616}
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3601, file: !225, line: 44, baseType: !3619, size: 64, offset: 256)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!2587}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3601, file: !225, line: 45, baseType: !382, size: 64, offset: 320)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !862, file: !797, line: 144, baseType: !3624, size: 64, offset: 320)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!2587, !802}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !862, file: !797, line: 145, baseType: !3628, size: 64, offset: 384)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{null, !802, !3631, !3632}
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !796, file: !797, line: 70, baseType: !3634, size: 64, offset: 384)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1174, line: 123, size: 1024, elements: !3636)
!3636 = !{!3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3765, !3766, !3767, !3768, !3769}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3635, file: !1174, line: 124, baseType: !481, size: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3635, file: !1174, line: 125, baseType: !481, size: 32, offset: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3635, file: !1174, line: 135, baseType: !3634, size: 64, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3635, file: !1174, line: 136, baseType: !358, size: 64, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3635, file: !1174, line: 138, baseType: !1311, size: 192, align: 64, offset: 192)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3635, file: !1174, line: 140, baseType: !2587, size: 64, offset: 384)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3635, file: !1174, line: 141, baseType: !7, size: 32, offset: 448)
!3644 = !DIDerivedType(tag: DW_TAG_member, scope: !3635, file: !1174, line: 142, baseType: !3645, size: 256, offset: 512)
!3645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3635, file: !1174, line: 142, size: 256, elements: !3646)
!3646 = !{!3647, !3693, !3697}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3645, file: !1174, line: 143, baseType: !3648, size: 192)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1174, line: 91, size: 192, elements: !3649)
!3649 = !{!3650, !3651, !3652}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3648, file: !1174, line: 92, baseType: !690, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3648, file: !1174, line: 94, baseType: !1307, size: 64, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3648, file: !1174, line: 100, baseType: !3653, size: 64, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1174, line: 180, size: 704, elements: !3655)
!3655 = !{!3656, !3657, !3658, !3665, !3666, !3667, !3691, !3692}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3654, file: !1174, line: 182, baseType: !3634, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3654, file: !1174, line: 183, baseType: !7, size: 32, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3654, file: !1174, line: 186, baseType: !3659, size: 192, offset: 128)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3660, line: 19, size: 192, elements: !3661)
!3660 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3661 = !{!3662, !3663, !3664}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3659, file: !3660, line: 20, baseType: !1294, size: 128)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3659, file: !3660, line: 21, baseType: !7, size: 32, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3659, file: !3660, line: 22, baseType: !7, size: 32, offset: 160)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3654, file: !1174, line: 187, baseType: !496, size: 32, offset: 320)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3654, file: !1174, line: 188, baseType: !496, size: 32, offset: 352)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3654, file: !1174, line: 189, baseType: !3668, size: 64, offset: 384)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1174, line: 168, size: 320, elements: !3670)
!3670 = !{!3671, !3675, !3679, !3683, !3687}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3669, file: !1174, line: 169, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!349, !1266, !3653}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3669, file: !1174, line: 171, baseType: !3676, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!349, !3634, !358, !887}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3669, file: !1174, line: 173, baseType: !3680, size: 64, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!349, !3634}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3669, file: !1174, line: 174, baseType: !3684, size: 64, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!349, !3634, !3634, !358}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3669, file: !1174, line: 176, baseType: !3688, size: 64, offset: 256)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!349, !1266, !3634, !3653}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3654, file: !1174, line: 192, baseType: !781, size: 128, offset: 448)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3654, file: !1174, line: 194, baseType: !1941, size: 128, offset: 576)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3645, file: !1174, line: 144, baseType: !3694, size: 64)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1174, line: 103, size: 64, elements: !3695)
!3695 = !{!3696}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3694, file: !1174, line: 104, baseType: !3634, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3645, file: !1174, line: 145, baseType: !3698, size: 256)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1174, line: 107, size: 256, elements: !3699)
!3699 = !{!3700, !3760, !3763, !3764}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3698, file: !1174, line: 108, baseType: !3701, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3703)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1174, line: 217, size: 768, elements: !3704)
!3704 = !{!3705, !3725, !3729, !3733, !3737, !3741, !3745, !3749, !3750, !3751, !3752, !3756}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3703, file: !1174, line: 222, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!349, !3709}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1174, line: 197, size: 1088, elements: !3711)
!3711 = !{!3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3710, file: !1174, line: 199, baseType: !3634, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3710, file: !1174, line: 200, baseType: !922, size: 64, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3710, file: !1174, line: 201, baseType: !1266, size: 64, offset: 128)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3710, file: !1174, line: 202, baseType: !340, size: 64, offset: 192)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3710, file: !1174, line: 205, baseType: !1640, size: 192, offset: 256)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3710, file: !1174, line: 206, baseType: !1640, size: 192, offset: 448)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3710, file: !1174, line: 207, baseType: !349, size: 32, offset: 640)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3710, file: !1174, line: 208, baseType: !781, size: 128, offset: 704)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3710, file: !1174, line: 209, baseType: !380, size: 64, offset: 832)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3710, file: !1174, line: 211, baseType: !892, size: 64, offset: 896)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3710, file: !1174, line: 212, baseType: !528, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3710, file: !1174, line: 213, baseType: !528, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3710, file: !1174, line: 214, baseType: !1558, size: 64, offset: 1024)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3703, file: !1174, line: 223, baseType: !3726, size: 64, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{null, !3709}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3703, file: !1174, line: 236, baseType: !3730, size: 64, offset: 128)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!349, !1266, !340}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3703, file: !1174, line: 238, baseType: !3734, size: 64, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!340, !1266, !3270}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3703, file: !1174, line: 239, baseType: !3738, size: 64, offset: 256)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!340, !1266, !340, !3270}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3703, file: !1174, line: 240, baseType: !3742, size: 64, offset: 320)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{null, !1266, !340}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3703, file: !1174, line: 242, baseType: !3746, size: 64, offset: 384)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!878, !3709, !380, !892, !1088}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3703, file: !1174, line: 252, baseType: !892, size: 64, offset: 448)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3703, file: !1174, line: 259, baseType: !528, size: 8, offset: 512)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3703, file: !1174, line: 260, baseType: !3746, size: 64, offset: 576)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3703, file: !1174, line: 263, baseType: !3753, size: 64, offset: 640)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!3299, !3709, !3301}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3703, file: !1174, line: 266, baseType: !3757, size: 64, offset: 704)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!349, !3709, !1530}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3698, file: !1174, line: 109, baseType: !3761, size: 64, offset: 64)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1174, line: 31, flags: DIFlagFwdDecl)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3698, file: !1174, line: 110, baseType: !1088, size: 64, offset: 128)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3698, file: !1174, line: 111, baseType: !3634, size: 64, offset: 192)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3635, file: !1174, line: 148, baseType: !340, size: 64, offset: 768)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3635, file: !1174, line: 154, baseType: !346, size: 64, offset: 832)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3635, file: !1174, line: 156, baseType: !389, size: 16, offset: 896)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3635, file: !1174, line: 157, baseType: !887, size: 16, offset: 912)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3635, file: !1174, line: 158, baseType: !3770, size: 64, offset: 960)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1174, line: 32, flags: DIFlagFwdDecl)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !796, file: !797, line: 71, baseType: !472, size: 32, offset: 448)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !796, file: !797, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !796, file: !797, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !796, file: !797, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !796, file: !797, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !796, file: !797, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !793, file: !237, line: 463, baseType: !792, size: 64, offset: 512)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !793, file: !237, line: 465, baseType: !3780, size: 64, offset: 576)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !793, file: !237, line: 467, baseType: !358, size: 64, offset: 640)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !793, file: !237, line: 468, baseType: !3784, size: 64, offset: 704)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3786)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3787)
!3787 = !{!3788, !3789, !3790, !3794, !3799, !3803}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3786, file: !237, line: 88, baseType: !358, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3786, file: !237, line: 89, baseType: !898, size: 64, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3786, file: !237, line: 90, baseType: !3791, size: 64, offset: 128)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!349, !792, !845}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3786, file: !237, line: 91, baseType: !3795, size: 64, offset: 192)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!380, !792, !3798, !3631, !3632}
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3786, file: !237, line: 93, baseType: !3800, size: 64, offset: 256)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{null, !792}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3786, file: !237, line: 95, baseType: !3804, size: 64, offset: 320)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3806)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3807)
!3807 = !{!3808, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3806, file: !244, line: 279, baseType: !3809, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!349, !792}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3806, file: !244, line: 280, baseType: !3800, size: 64, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3806, file: !244, line: 281, baseType: !3809, size: 64, offset: 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3806, file: !244, line: 282, baseType: !3809, size: 64, offset: 192)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3806, file: !244, line: 283, baseType: !3809, size: 64, offset: 256)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3806, file: !244, line: 284, baseType: !3809, size: 64, offset: 320)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3806, file: !244, line: 285, baseType: !3809, size: 64, offset: 384)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3806, file: !244, line: 286, baseType: !3809, size: 64, offset: 448)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3806, file: !244, line: 287, baseType: !3809, size: 64, offset: 512)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3806, file: !244, line: 288, baseType: !3809, size: 64, offset: 576)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3806, file: !244, line: 289, baseType: !3809, size: 64, offset: 640)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3806, file: !244, line: 290, baseType: !3809, size: 64, offset: 704)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3806, file: !244, line: 291, baseType: !3809, size: 64, offset: 768)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3806, file: !244, line: 292, baseType: !3809, size: 64, offset: 832)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3806, file: !244, line: 293, baseType: !3809, size: 64, offset: 896)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3806, file: !244, line: 294, baseType: !3809, size: 64, offset: 960)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3806, file: !244, line: 295, baseType: !3809, size: 64, offset: 1024)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3806, file: !244, line: 296, baseType: !3809, size: 64, offset: 1088)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3806, file: !244, line: 297, baseType: !3809, size: 64, offset: 1152)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3806, file: !244, line: 298, baseType: !3809, size: 64, offset: 1216)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3806, file: !244, line: 299, baseType: !3809, size: 64, offset: 1280)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3806, file: !244, line: 300, baseType: !3809, size: 64, offset: 1344)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3806, file: !244, line: 301, baseType: !3809, size: 64, offset: 1408)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !793, file: !237, line: 470, baseType: !3835, size: 64, offset: 768)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3837, line: 82, size: 1408, elements: !3838)
!3837 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3838 = !{!3839, !3840, !3841, !3842, !3843, !3844, !3845, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3917, !3920, !3921}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3836, file: !3837, line: 83, baseType: !358, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3836, file: !3837, line: 84, baseType: !358, size: 64, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3836, file: !3837, line: 85, baseType: !792, size: 64, offset: 128)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3836, file: !3837, line: 86, baseType: !898, size: 64, offset: 192)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3836, file: !3837, line: 87, baseType: !898, size: 64, offset: 256)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3836, file: !3837, line: 88, baseType: !898, size: 64, offset: 320)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3836, file: !3837, line: 90, baseType: !3846, size: 64, offset: 384)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!349, !792, !3849}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3851)
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857, !3858, !3868, !3881, !3882, !3883, !3884, !3885, !3893, !3894, !3895, !3896, !3897, !3898}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3850, file: !231, line: 96, baseType: !358, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3850, file: !231, line: 97, baseType: !3835, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3850, file: !231, line: 99, baseType: !362, size: 64, offset: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3850, file: !231, line: 100, baseType: !358, size: 64, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3850, file: !231, line: 102, baseType: !528, size: 8, offset: 256)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3850, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3850, file: !231, line: 105, baseType: !3859, size: 64, offset: 320)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3861)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3862, line: 262, size: 1600, elements: !3863)
!3862 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3863 = !{!3864, !3865, !3866, !3867}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3861, file: !3862, line: 263, baseType: !3094, size: 256)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3861, file: !3862, line: 264, baseType: !3094, size: 256, offset: 256)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3861, file: !3862, line: 265, baseType: !492, size: 1024, offset: 512)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3861, file: !3862, line: 266, baseType: !2587, size: 64, offset: 1536)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3850, file: !231, line: 106, baseType: !3869, size: 64, offset: 384)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3871)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3862, line: 210, size: 256, elements: !3872)
!3872 = !{!3873, !3877, !3879, !3880}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3871, file: !3862, line: 211, baseType: !3874, size: 72)
!3874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 72, elements: !3875)
!3875 = !{!3876}
!3876 = !DISubrange(count: 9)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3871, file: !3862, line: 212, baseType: !3878, size: 64, offset: 128)
!3878 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3862, line: 14, baseType: !690)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3871, file: !3862, line: 213, baseType: !497, size: 32, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3871, file: !3862, line: 214, baseType: !497, size: 32, offset: 224)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3850, file: !231, line: 108, baseType: !3809, size: 64, offset: 448)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3850, file: !231, line: 109, baseType: !3800, size: 64, offset: 512)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3850, file: !231, line: 110, baseType: !3809, size: 64, offset: 576)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3850, file: !231, line: 111, baseType: !3800, size: 64, offset: 640)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3850, file: !231, line: 112, baseType: !3886, size: 64, offset: 704)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!349, !792, !3889}
!3889 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3890)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3891)
!3891 = !{!3892}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3890, file: !244, line: 51, baseType: !349, size: 32)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3850, file: !231, line: 113, baseType: !3809, size: 64, offset: 768)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3850, file: !231, line: 114, baseType: !898, size: 64, offset: 832)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3850, file: !231, line: 115, baseType: !898, size: 64, offset: 896)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3850, file: !231, line: 117, baseType: !3804, size: 64, offset: 960)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3850, file: !231, line: 118, baseType: !3800, size: 64, offset: 1024)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3850, file: !231, line: 120, baseType: !3899, size: 64, offset: 1088)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3836, file: !3837, line: 91, baseType: !3791, size: 64, offset: 448)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3836, file: !3837, line: 92, baseType: !3809, size: 64, offset: 512)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3836, file: !3837, line: 93, baseType: !3800, size: 64, offset: 576)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3836, file: !3837, line: 94, baseType: !3809, size: 64, offset: 640)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3836, file: !3837, line: 95, baseType: !3800, size: 64, offset: 704)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3836, file: !3837, line: 97, baseType: !3809, size: 64, offset: 768)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3836, file: !3837, line: 98, baseType: !3809, size: 64, offset: 832)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3836, file: !3837, line: 100, baseType: !3886, size: 64, offset: 896)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3836, file: !3837, line: 101, baseType: !3809, size: 64, offset: 960)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3836, file: !3837, line: 103, baseType: !3809, size: 64, offset: 1024)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3836, file: !3837, line: 105, baseType: !3809, size: 64, offset: 1088)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3836, file: !3837, line: 107, baseType: !3804, size: 64, offset: 1152)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3836, file: !3837, line: 109, baseType: !3914, size: 64, offset: 1216)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3916)
!3916 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3837, line: 109, flags: DIFlagFwdDecl)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3836, file: !3837, line: 111, baseType: !3918, size: 64, offset: 1280)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3837, line: 111, flags: DIFlagFwdDecl)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3836, file: !3837, line: 112, baseType: !1200, offset: 1344)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3836, file: !3837, line: 114, baseType: !528, size: 8, offset: 1344)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !793, file: !237, line: 471, baseType: !3849, size: 64, offset: 832)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !793, file: !237, line: 473, baseType: !340, size: 64, offset: 896)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !793, file: !237, line: 475, baseType: !340, size: 64, offset: 960)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !793, file: !237, line: 480, baseType: !1640, size: 192, offset: 1024)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !793, file: !237, line: 484, baseType: !3927, size: 576, offset: 1216)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3928)
!3928 = !{!3929, !3930, !3931, !3932, !3933, !3934}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3927, file: !237, line: 362, baseType: !781, size: 128)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3927, file: !237, line: 363, baseType: !781, size: 128, offset: 128)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3927, file: !237, line: 364, baseType: !781, size: 128, offset: 256)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3927, file: !237, line: 365, baseType: !781, size: 128, offset: 384)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3927, file: !237, line: 366, baseType: !528, size: 8, offset: 512)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3927, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !793, file: !237, line: 485, baseType: !3936, size: 2304, offset: 1792)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3937)
!3937 = !{!3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4033, !4037}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3936, file: !244, line: 566, baseType: !3889, size: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3936, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3936, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3936, file: !244, line: 569, baseType: !528, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3936, file: !244, line: 570, baseType: !528, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3936, file: !244, line: 571, baseType: !528, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3936, file: !244, line: 572, baseType: !528, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3936, file: !244, line: 573, baseType: !528, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3936, file: !244, line: 574, baseType: !528, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3936, file: !244, line: 575, baseType: !528, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3936, file: !244, line: 576, baseType: !528, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3936, file: !244, line: 577, baseType: !496, size: 32, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3936, file: !244, line: 578, baseType: !809, offset: 96)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3936, file: !244, line: 580, baseType: !781, size: 128, offset: 128)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3936, file: !244, line: 581, baseType: !1962, size: 192, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3936, file: !244, line: 582, baseType: !3954, size: 64, offset: 448)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3956, line: 43, size: 1472, elements: !3957)
!3956 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3957 = !{!3958, !3959, !3960, !3961, !3962, !3965, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3955, file: !3956, line: 44, baseType: !358, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3955, file: !3956, line: 45, baseType: !349, size: 32, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3955, file: !3956, line: 46, baseType: !781, size: 128, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3955, file: !3956, line: 47, baseType: !809, offset: 256)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3955, file: !3956, line: 48, baseType: !3963, size: 64, offset: 256)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3955, file: !3956, line: 49, baseType: !3966, size: 320, offset: 320)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3967, line: 11, size: 320, elements: !3968)
!3967 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3968 = !{!3969, !3970, !3971, !3976}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3966, file: !3967, line: 16, baseType: !1194, size: 128)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3966, file: !3967, line: 17, baseType: !690, size: 64, offset: 128)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3966, file: !3967, line: 18, baseType: !3972, size: 64, offset: 192)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{null, !3975}
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3966, file: !3967, line: 19, baseType: !496, size: 32, offset: 256)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3955, file: !3956, line: 50, baseType: !690, size: 64, offset: 640)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3955, file: !3956, line: 51, baseType: !1762, size: 64, offset: 704)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3955, file: !3956, line: 52, baseType: !1762, size: 64, offset: 768)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3955, file: !3956, line: 53, baseType: !1762, size: 64, offset: 832)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3955, file: !3956, line: 54, baseType: !1762, size: 64, offset: 896)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3955, file: !3956, line: 55, baseType: !1762, size: 64, offset: 960)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3955, file: !3956, line: 56, baseType: !690, size: 64, offset: 1024)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3955, file: !3956, line: 57, baseType: !690, size: 64, offset: 1088)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3955, file: !3956, line: 58, baseType: !690, size: 64, offset: 1152)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3955, file: !3956, line: 59, baseType: !690, size: 64, offset: 1216)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3955, file: !3956, line: 60, baseType: !690, size: 64, offset: 1280)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3955, file: !3956, line: 61, baseType: !792, size: 64, offset: 1344)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3955, file: !3956, line: 62, baseType: !528, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3955, file: !3956, line: 63, baseType: !528, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3936, file: !244, line: 583, baseType: !528, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3936, file: !244, line: 584, baseType: !528, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3936, file: !244, line: 585, baseType: !528, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3936, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3936, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3936, file: !244, line: 592, baseType: !1754, size: 512, offset: 576)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3936, file: !244, line: 593, baseType: !346, size: 64, offset: 1088)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3936, file: !244, line: 594, baseType: !2417, size: 256, offset: 1152)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3936, file: !244, line: 595, baseType: !1941, size: 128, offset: 1408)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3936, file: !244, line: 596, baseType: !3963, size: 64, offset: 1536)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3936, file: !244, line: 597, baseType: !481, size: 32, offset: 1600)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3936, file: !244, line: 598, baseType: !481, size: 32, offset: 1632)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3936, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3936, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3936, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3936, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3936, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3936, file: !244, line: 604, baseType: !528, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3936, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3936, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3936, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3936, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3936, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3936, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3936, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3936, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3936, file: !244, line: 613, baseType: !349, size: 32, offset: 1792)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3936, file: !244, line: 614, baseType: !349, size: 32, offset: 1824)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3936, file: !244, line: 615, baseType: !346, size: 64, offset: 1856)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3936, file: !244, line: 616, baseType: !346, size: 64, offset: 1920)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3936, file: !244, line: 617, baseType: !346, size: 64, offset: 1984)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3936, file: !244, line: 618, baseType: !346, size: 64, offset: 2048)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3936, file: !244, line: 620, baseType: !4024, size: 64, offset: 2112)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !4026)
!4026 = !{!4027, !4028, !4029, !4030}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4025, file: !244, line: 537, baseType: !809)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4025, file: !244, line: 538, baseType: !7, size: 32)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !4025, file: !244, line: 540, baseType: !781, size: 128, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !4025, file: !244, line: 543, baseType: !4031, size: 64, offset: 192)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3936, file: !244, line: 621, baseType: !4034, size: 64, offset: 2176)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{null, !792, !745}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3936, file: !244, line: 622, baseType: !4038, size: 64, offset: 2240)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !793, file: !237, line: 486, baseType: !4041, size: 64, offset: 4096)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !4043)
!4043 = !{!4044, !4045, !4046, !4050, !4051, !4052}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4042, file: !244, line: 643, baseType: !3806, size: 1472)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4042, file: !244, line: 644, baseType: !3809, size: 64, offset: 1472)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4042, file: !244, line: 645, baseType: !4047, size: 64, offset: 1536)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !792, !528}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4042, file: !244, line: 646, baseType: !3809, size: 64, offset: 1600)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4042, file: !244, line: 647, baseType: !3800, size: 64, offset: 1664)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4042, file: !244, line: 648, baseType: !3800, size: 64, offset: 1728)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !793, file: !237, line: 493, baseType: !4054, size: 64, offset: 4160)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !4056)
!4056 = !{!4057, !4058, !4059, !4232, !4233, !4234, !4235, !4236, !4237, !4240, !4241, !4242, !4243, !4244, !4245, !4246}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4055, file: !258, line: 163, baseType: !781, size: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4055, file: !258, line: 164, baseType: !358, size: 64, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4055, file: !258, line: 165, baseType: !4060, size: 64, offset: 192)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4062)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !4063)
!4063 = !{!4064, !4182, !4193, !4198, !4202, !4209, !4213, !4217, !4224, !4228}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4062, file: !258, line: 106, baseType: !4065, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!349, !4054, !4068, !257}
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4070, line: 51, size: 1344, elements: !4071)
!4070 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!4071 = !{!4072, !4073, !4075, !4076, !4166, !4175, !4176, !4177, !4178, !4179, !4180, !4181}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4069, file: !4070, line: 52, baseType: !358, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4069, file: !4070, line: 53, baseType: !4074, size: 32, offset: 64)
!4074 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4070, line: 28, baseType: !496)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4069, file: !4070, line: 54, baseType: !358, size: 64, offset: 128)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4069, file: !4070, line: 55, baseType: !4077, size: 192, offset: 192)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4078, line: 17, size: 192, elements: !4079)
!4078 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!4079 = !{!4080, !4082, !4165}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4077, file: !4078, line: 18, baseType: !4081, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4077, file: !4078, line: 19, baseType: !4083, size: 64, offset: 64)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4085)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4078, line: 110, size: 1152, elements: !4086)
!4086 = !{!4087, !4091, !4095, !4101, !4107, !4111, !4115, !4120, !4124, !4125, !4129, !4133, !4137, !4148, !4149, !4150, !4151, !4161}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4085, file: !4078, line: 111, baseType: !4088, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!4081, !4081}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4085, file: !4078, line: 112, baseType: !4092, size: 64, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{null, !4081}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4085, file: !4078, line: 113, baseType: !4096, size: 64, offset: 128)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!528, !4099}
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4077)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4085, file: !4078, line: 114, baseType: !4102, size: 64, offset: 192)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!2587, !4099, !4105}
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4085, file: !4078, line: 116, baseType: !4108, size: 64, offset: 256)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!528, !4099, !358}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4085, file: !4078, line: 118, baseType: !4112, size: 64, offset: 320)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!349, !4099, !358, !7, !340, !892}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4085, file: !4078, line: 123, baseType: !4116, size: 64, offset: 384)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!349, !4099, !358, !4119, !892}
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4085, file: !4078, line: 126, baseType: !4121, size: 64, offset: 448)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!358, !4099}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4085, file: !4078, line: 127, baseType: !4121, size: 64, offset: 512)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4085, file: !4078, line: 128, baseType: !4126, size: 64, offset: 576)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!4081, !4099}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4085, file: !4078, line: 130, baseType: !4130, size: 64, offset: 640)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!4081, !4099, !4081}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4085, file: !4078, line: 133, baseType: !4134, size: 64, offset: 704)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!4081, !4099, !358}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4085, file: !4078, line: 135, baseType: !4138, size: 64, offset: 768)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!349, !4099, !358, !358, !7, !7, !4141}
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4078, line: 43, size: 640, elements: !4143)
!4143 = !{!4144, !4145, !4146}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4142, file: !4078, line: 44, baseType: !4081, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4142, file: !4078, line: 45, baseType: !7, size: 32, offset: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4142, file: !4078, line: 46, baseType: !4147, size: 512, offset: 128)
!4147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 512, elements: !507)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4085, file: !4078, line: 140, baseType: !4130, size: 64, offset: 832)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4085, file: !4078, line: 143, baseType: !4126, size: 64, offset: 896)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4085, file: !4078, line: 145, baseType: !4088, size: 64, offset: 960)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4085, file: !4078, line: 146, baseType: !4152, size: 64, offset: 1024)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!349, !4099, !4155}
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4078, line: 29, size: 128, elements: !4157)
!4157 = !{!4158, !4159, !4160}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4156, file: !4078, line: 30, baseType: !7, size: 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4156, file: !4078, line: 31, baseType: !7, size: 32, offset: 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4156, file: !4078, line: 32, baseType: !4099, size: 64, offset: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4085, file: !4078, line: 148, baseType: !4162, size: 64, offset: 1088)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!349, !4099, !792}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4077, file: !4078, line: 20, baseType: !792, size: 64, offset: 128)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4069, file: !4070, line: 57, baseType: !4167, size: 64, offset: 384)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4070, line: 31, size: 704, elements: !4169)
!4169 = !{!4170, !4171, !4172, !4173, !4174}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4168, file: !4070, line: 32, baseType: !380, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4168, file: !4070, line: 33, baseType: !349, size: 32, offset: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4168, file: !4070, line: 34, baseType: !340, size: 64, offset: 128)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4168, file: !4070, line: 35, baseType: !4167, size: 64, offset: 192)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4168, file: !4070, line: 43, baseType: !913, size: 448, offset: 256)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4069, file: !4070, line: 58, baseType: !4167, size: 64, offset: 448)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4069, file: !4070, line: 59, baseType: !4068, size: 64, offset: 512)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4069, file: !4070, line: 60, baseType: !4068, size: 64, offset: 576)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4069, file: !4070, line: 61, baseType: !4068, size: 64, offset: 640)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4069, file: !4070, line: 63, baseType: !796, size: 512, offset: 704)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4069, file: !4070, line: 65, baseType: !690, size: 64, offset: 1216)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4069, file: !4070, line: 66, baseType: !340, size: 64, offset: 1280)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !4062, file: !258, line: 108, baseType: !4183, size: 64, offset: 64)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!349, !4054, !4186, !257}
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !4188)
!4188 = !{!4189, !4190, !4191}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4187, file: !258, line: 64, baseType: !4081, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4187, file: !258, line: 65, baseType: !349, size: 32, offset: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4187, file: !258, line: 66, baseType: !4192, size: 512, offset: 96)
!4192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 512, elements: !2193)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4062, file: !258, line: 110, baseType: !4194, size: 64, offset: 128)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!349, !4054, !7, !4197}
!4197 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !339, line: 164, baseType: !690)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4062, file: !258, line: 111, baseType: !4199, size: 64, offset: 192)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{null, !4054, !7}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !4062, file: !258, line: 112, baseType: !4203, size: 64, offset: 256)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!349, !4054, !4068, !4206, !7, !4208, !414}
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4062, file: !258, line: 117, baseType: !4210, size: 64, offset: 320)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!349, !4054, !7, !7, !340}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4062, file: !258, line: 119, baseType: !4214, size: 64, offset: 384)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{null, !4054, !7, !7}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4062, file: !258, line: 121, baseType: !4218, size: 64, offset: 448)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!349, !4054, !4221, !528}
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4223, line: 11, flags: DIFlagFwdDecl)
!4223 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4062, file: !258, line: 122, baseType: !4225, size: 64, offset: 512)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{null, !4054, !4221}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !4062, file: !258, line: 123, baseType: !4229, size: 64, offset: 576)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!349, !4054, !4186, !4208, !414}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !4055, file: !258, line: 166, baseType: !340, size: 64, offset: 256)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4055, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !4055, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4055, file: !258, line: 171, baseType: !4081, size: 64, offset: 384)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !4055, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4055, file: !258, line: 173, baseType: !4238, size: 64, offset: 512)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4055, file: !258, line: 175, baseType: !4054, size: 64, offset: 576)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !4055, file: !258, line: 182, baseType: !4197, size: 64, offset: 640)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !4055, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !4055, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !4055, file: !258, line: 185, baseType: !1294, size: 128, offset: 768)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !4055, file: !258, line: 186, baseType: !1640, size: 192, offset: 896)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !4055, file: !258, line: 187, baseType: !4247, offset: 1088)
!4247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2787)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !793, file: !237, line: 499, baseType: !781, size: 128, offset: 4224)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !793, file: !237, line: 502, baseType: !4250, size: 64, offset: 4352)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4252)
!4252 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !793, file: !237, line: 504, baseType: !4254, size: 64, offset: 4416)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !793, file: !237, line: 505, baseType: !346, size: 64, offset: 4480)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !793, file: !237, line: 510, baseType: !346, size: 64, offset: 4544)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !793, file: !237, line: 511, baseType: !4258, size: 64, offset: 4608)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4260)
!4260 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !793, file: !237, line: 513, baseType: !4262, size: 64, offset: 4672)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !4264)
!4264 = !{!4265, !4266}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4263, file: !237, line: 293, baseType: !7, size: 32)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4263, file: !237, line: 294, baseType: !690, size: 64, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !793, file: !237, line: 515, baseType: !781, size: 128, offset: 4736)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !793, file: !237, line: 526, baseType: !4269, offset: 4864)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4270, line: 5, elements: !823)
!4270 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !793, file: !237, line: 528, baseType: !4068, size: 64, offset: 4864)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !793, file: !237, line: 529, baseType: !4081, size: 64, offset: 4928)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !793, file: !237, line: 534, baseType: !1070, size: 32, offset: 4992)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !793, file: !237, line: 535, baseType: !496, size: 32, offset: 5024)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !793, file: !237, line: 537, baseType: !809, offset: 5056)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !793, file: !237, line: 538, baseType: !781, size: 128, offset: 5056)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !793, file: !237, line: 540, baseType: !4278, size: 64, offset: 5184)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4280, line: 54, size: 960, elements: !4281)
!4280 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4281 = !{!4282, !4283, !4284, !4285, !4286, !4287, !4288, !4292, !4296, !4297, !4298, !4299, !4303, !4307, !4308}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4279, file: !4280, line: 55, baseType: !358, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4279, file: !4280, line: 56, baseType: !362, size: 64, offset: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4279, file: !4280, line: 58, baseType: !898, size: 64, offset: 128)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4279, file: !4280, line: 59, baseType: !898, size: 64, offset: 192)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4279, file: !4280, line: 60, baseType: !802, size: 64, offset: 256)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4279, file: !4280, line: 62, baseType: !3791, size: 64, offset: 320)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4279, file: !4280, line: 63, baseType: !4289, size: 64, offset: 384)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!380, !792, !3798}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4279, file: !4280, line: 65, baseType: !4293, size: 64, offset: 448)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{null, !4278}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4279, file: !4280, line: 66, baseType: !3800, size: 64, offset: 512)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4279, file: !4280, line: 68, baseType: !3809, size: 64, offset: 576)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4279, file: !4280, line: 70, baseType: !3599, size: 64, offset: 640)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4279, file: !4280, line: 71, baseType: !4300, size: 64, offset: 704)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!2587, !792}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4279, file: !4280, line: 73, baseType: !4304, size: 64, offset: 768)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{null, !792, !3631, !3632}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4279, file: !4280, line: 75, baseType: !3804, size: 64, offset: 832)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4279, file: !4280, line: 77, baseType: !3918, size: 64, offset: 896)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !793, file: !237, line: 541, baseType: !898, size: 64, offset: 5248)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !793, file: !237, line: 543, baseType: !3800, size: 64, offset: 5312)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !793, file: !237, line: 544, baseType: !4312, size: 64, offset: 5376)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !793, file: !237, line: 545, baseType: !4315, size: 64, offset: 5440)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !793, file: !237, line: 547, baseType: !528, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !793, file: !237, line: 548, baseType: !528, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !793, file: !237, line: 549, baseType: !528, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !793, file: !237, line: 550, baseType: !528, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !777, file: !272, line: 111, baseType: !362, size: 64, offset: 576)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !777, file: !272, line: 113, baseType: !349, size: 32, offset: 640)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !777, file: !272, line: 114, baseType: !4324, size: 64, offset: 704)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4326)
!4326 = !{!4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4341}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4325, file: !272, line: 158, baseType: !781, size: 128)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4325, file: !272, line: 159, baseType: !3257, size: 64, offset: 128)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4325, file: !272, line: 160, baseType: !776, size: 64, offset: 192)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4325, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4325, file: !272, line: 162, baseType: !349, size: 32, offset: 288)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4325, file: !272, line: 163, baseType: !496, size: 32, offset: 320)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4325, file: !272, line: 167, baseType: !349, size: 32, offset: 352)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4325, file: !272, line: 168, baseType: !349, size: 32, offset: 384)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4325, file: !272, line: 169, baseType: !349, size: 32, offset: 416)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4325, file: !272, line: 171, baseType: !1941, size: 128, offset: 448)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4325, file: !272, line: 173, baseType: !4338, size: 64, offset: 576)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!349, !922, !7, !340}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4325, file: !272, line: 187, baseType: !340, size: 64, offset: 640)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !777, file: !272, line: 115, baseType: !1640, size: 192, offset: 768)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !469, file: !51, line: 690, baseType: !340, size: 64, offset: 6144)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !469, file: !51, line: 691, baseType: !340, size: 64, offset: 6208)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !469, file: !51, line: 692, baseType: !340, size: 64, offset: 6272)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !469, file: !51, line: 693, baseType: !340, size: 64, offset: 6336)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !469, file: !51, line: 694, baseType: !340, size: 64, offset: 6400)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !469, file: !51, line: 695, baseType: !551, size: 3648, offset: 6464)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !469, file: !51, line: 698, baseType: !4350, size: 64, offset: 10112)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!349, !340, !349, !349, !349}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !469, file: !51, line: 699, baseType: !349, size: 32, offset: 10176)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !469, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 24, elements: !584)
!4356 = !DIGlobalVariableExpression(var: !4357, expr: !DIExpression())
!4357 = distinct !DIGlobalVariable(name: "tps_fec_to_api", scope: !4358, file: !3, line: 365, type: !4359, isLocal: true, isDefinition: true)
!4358 = distinct !DISubprogram(name: "zl10353_get_parameters", scope: !3, file: !3, line: 359, type: !548, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!4359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 64, elements: !507)
!4360 = !DIGlobalVariableExpression(var: !4361, expr: !DIExpression())
!4361 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 658, type: !4362, isLocal: true, isDefinition: true)
!4362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 112, elements: !4363)
!4363 = !{!4364}
!4364 = !DISubrange(count: 14)
!4365 = !DIGlobalVariableExpression(var: !4366, expr: !DIExpression())
!4366 = distinct !DIGlobalVariable(name: "__param_str_debug_regs", scope: !2, file: !3, line: 661, type: !4367, isLocal: true, isDefinition: true)
!4367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 152, elements: !4368)
!4368 = !{!4369}
!4369 = !DISubrange(count: 19)
!4370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!4371 = !{i32 7, !"Dwarf Version", i32 4}
!4372 = !{i32 2, !"Debug Info Version", i32 3}
!4373 = !{i32 1, !"wchar_size", i32 2}
!4374 = !{i32 1, !"Code Model", i32 2}
!4375 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4376 = distinct !DISubprogram(name: "zl10353_attach", scope: !3, file: !3, line: 594, type: !4377, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !823)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!468, !4379, !4392}
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4381)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zl10353_config", file: !4382, line: 13, size: 192, elements: !4383)
!4382 = !DIFile(filename: "drivers/media/dvb-frontends/zl10353.h", directory: "/home/lizy2001/genbc/linux")
!4383 = !{!4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4381, file: !4382, line: 16, baseType: !341, size: 8)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "adc_clock", scope: !4381, file: !4382, line: 19, baseType: !349, size: 32, offset: 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "if2", scope: !4381, file: !4382, line: 20, baseType: !349, size: 32, offset: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "no_tuner", scope: !4381, file: !4382, line: 23, baseType: !349, size: 32, offset: 96)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "parallel_ts", scope: !4381, file: !4382, line: 26, baseType: !349, size: 32, offset: 128)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "disable_i2c_gate_ctrl", scope: !4381, file: !4382, line: 29, baseType: !341, size: 1, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "clock_ctl_1", scope: !4381, file: !4382, line: 32, baseType: !341, size: 8, offset: 168)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "pll_0", scope: !4381, file: !4382, line: 33, baseType: !341, size: 8, offset: 176)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4394, line: 695, size: 7552, elements: !4395)
!4394 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4395 = !{!4396, !4397, !4398, !4435, !4436, !4450, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4467, !4468, !4469, !4470, !4502, !4513}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4393, file: !4394, line: 696, baseType: !362, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4393, file: !4394, line: 697, baseType: !7, size: 32, offset: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4393, file: !4394, line: 698, baseType: !4399, size: 64, offset: 128)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4401)
!4401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4394, line: 519, size: 320, elements: !4402)
!4402 = !{!4403, !4416, !4417, !4430, !4431}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4401, file: !4394, line: 529, baseType: !4404, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!349, !4392, !4407, !349}
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4409, line: 69, size: 128, elements: !4410)
!4409 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4410 = !{!4411, !4412, !4413, !4414}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4408, file: !4409, line: 70, baseType: !388, size: 16)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4408, file: !4409, line: 71, baseType: !388, size: 16, offset: 16)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4408, file: !4409, line: 84, baseType: !388, size: 16, offset: 32)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4408, file: !4409, line: 85, baseType: !4415, size: 64, offset: 64)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4401, file: !4394, line: 531, baseType: !4404, size: 64, offset: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4401, file: !4394, line: 533, baseType: !4418, size: 64, offset: 128)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!349, !4392, !387, !389, !360, !341, !349, !4421}
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4409, line: 135, size: 272, elements: !4423)
!4423 = !{!4424, !4425, !4426}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4422, file: !4409, line: 136, baseType: !343, size: 8)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4422, file: !4409, line: 137, baseType: !388, size: 16)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4422, file: !4409, line: 138, baseType: !4427, size: 272)
!4427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 272, elements: !4428)
!4428 = !{!4429}
!4429 = !DISubrange(count: 34)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4401, file: !4394, line: 536, baseType: !4418, size: 64, offset: 192)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4401, file: !4394, line: 541, baseType: !4432, size: 64, offset: 256)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!496, !4392}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4393, file: !4394, line: 699, baseType: !340, size: 64, offset: 192)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4393, file: !4394, line: 702, baseType: !4437, size: 64, offset: 256)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4439)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4394, line: 557, size: 192, elements: !4440)
!4440 = !{!4441, !4445, !4449}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4439, file: !4394, line: 558, baseType: !4442, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{null, !4392, !7}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4439, file: !4394, line: 559, baseType: !4446, size: 64, offset: 64)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!349, !4392, !7}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4439, file: !4394, line: 560, baseType: !4442, size: 64, offset: 128)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4393, file: !4394, line: 703, baseType: !4451, size: 192, offset: 320)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4452, line: 30, size: 192, elements: !4453)
!4452 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4453 = !{!4454, !4455, !4456}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4451, file: !4452, line: 31, baseType: !1331)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4451, file: !4452, line: 32, baseType: !1303, size: 128)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4451, file: !4452, line: 33, baseType: !1683, size: 64, offset: 128)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4393, file: !4394, line: 704, baseType: !4451, size: 192, offset: 512)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4393, file: !4394, line: 706, baseType: !349, size: 32, offset: 704)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4393, file: !4394, line: 707, baseType: !349, size: 32, offset: 736)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4393, file: !4394, line: 708, baseType: !793, size: 5568, offset: 768)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4393, file: !4394, line: 709, baseType: !690, size: 64, offset: 6336)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4393, file: !4394, line: 713, baseType: !349, size: 32, offset: 6400)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4393, file: !4394, line: 714, baseType: !4464, size: 384, offset: 6432)
!4464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 384, elements: !4465)
!4465 = !{!4466}
!4466 = !DISubrange(count: 48)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4393, file: !4394, line: 715, baseType: !1962, size: 192, offset: 6848)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4393, file: !4394, line: 717, baseType: !1640, size: 192, offset: 7040)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4393, file: !4394, line: 718, baseType: !781, size: 128, offset: 7232)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4393, file: !4394, line: 720, baseType: !4471, size: 64, offset: 7360)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4394, line: 618, size: 832, elements: !4473)
!4473 = !{!4474, !4478, !4479, !4483, !4484, !4485, !4486, !4490, !4491, !4494, !4495, !4498, !4501}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4472, file: !4394, line: 619, baseType: !4475, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!349, !4392}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4472, file: !4394, line: 621, baseType: !4475, size: 64, offset: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4472, file: !4394, line: 622, baseType: !4480, size: 64, offset: 128)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{null, !4392, !349}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4472, file: !4394, line: 623, baseType: !4475, size: 64, offset: 192)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4472, file: !4394, line: 624, baseType: !4480, size: 64, offset: 256)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4472, file: !4394, line: 625, baseType: !4475, size: 64, offset: 320)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4472, file: !4394, line: 627, baseType: !4487, size: 64, offset: 384)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{null, !4392}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4472, file: !4394, line: 628, baseType: !4487, size: 64, offset: 448)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4472, file: !4394, line: 631, baseType: !4492, size: 64, offset: 512)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4394, line: 631, flags: DIFlagFwdDecl)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4472, file: !4394, line: 632, baseType: !4492, size: 64, offset: 576)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4472, file: !4394, line: 633, baseType: !4496, size: 64, offset: 640)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4394, line: 633, flags: DIFlagFwdDecl)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4472, file: !4394, line: 634, baseType: !4499, size: 64, offset: 704)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4394, line: 634, flags: DIFlagFwdDecl)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4472, file: !4394, line: 635, baseType: !4499, size: 64, offset: 768)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4393, file: !4394, line: 721, baseType: !4503, size: 64, offset: 7424)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4505)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4394, line: 664, size: 192, elements: !4506)
!4506 = !{!4507, !4508, !4509, !4510, !4511, !4512}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4505, file: !4394, line: 665, baseType: !346, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4505, file: !4394, line: 666, baseType: !349, size: 32, offset: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4505, file: !4394, line: 667, baseType: !387, size: 16, offset: 96)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4505, file: !4394, line: 668, baseType: !387, size: 16, offset: 112)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4505, file: !4394, line: 669, baseType: !387, size: 16, offset: 128)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4505, file: !4394, line: 670, baseType: !387, size: 16, offset: 144)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4393, file: !4394, line: 723, baseType: !4054, size: 64, offset: 7488)
!4514 = !DILocalVariable(name: "config", arg: 1, scope: !4376, file: !3, line: 594, type: !4379)
!4515 = !DILocation(line: 594, column: 66, scope: !4376)
!4516 = !DILocalVariable(name: "i2c", arg: 2, scope: !4376, file: !3, line: 595, type: !4392)
!4517 = !DILocation(line: 595, column: 29, scope: !4376)
!4518 = !DILocalVariable(name: "state", scope: !4376, file: !3, line: 597, type: !4519)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zl10353_state", file: !3, line: 20, size: 10624, elements: !4521)
!4521 = !{!4522, !4523, !4524, !4525, !4526, !4527}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4520, file: !3, line: 21, baseType: !4392, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4520, file: !3, line: 22, baseType: !469, size: 10240, offset: 64)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4520, file: !3, line: 24, baseType: !4381, size: 192, offset: 10304)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth", scope: !4520, file: !3, line: 26, baseType: !496, size: 32, offset: 10496)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "ucblocks", scope: !4520, file: !3, line: 27, baseType: !496, size: 32, offset: 10528)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4520, file: !3, line: 28, baseType: !496, size: 32, offset: 10560)
!4528 = !DILocation(line: 597, column: 24, scope: !4376)
!4529 = !DILocalVariable(name: "id", scope: !4376, file: !3, line: 598, type: !349)
!4530 = !DILocation(line: 598, column: 6, scope: !4376)
!4531 = !DILocation(line: 601, column: 10, scope: !4376)
!4532 = !DILocation(line: 601, column: 8, scope: !4376)
!4533 = !DILocation(line: 602, column: 6, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4376, file: !3, line: 602, column: 6)
!4535 = !DILocation(line: 602, column: 12, scope: !4534)
!4536 = !DILocation(line: 602, column: 6, scope: !4376)
!4537 = !DILocation(line: 603, column: 3, scope: !4534)
!4538 = !DILocation(line: 606, column: 15, scope: !4376)
!4539 = !DILocation(line: 606, column: 2, scope: !4376)
!4540 = !DILocation(line: 606, column: 9, scope: !4376)
!4541 = !DILocation(line: 606, column: 13, scope: !4376)
!4542 = !DILocation(line: 607, column: 10, scope: !4376)
!4543 = !DILocation(line: 607, column: 17, scope: !4376)
!4544 = !DILocation(line: 607, column: 2, scope: !4376)
!4545 = !DILocation(line: 607, column: 25, scope: !4376)
!4546 = !DILocation(line: 610, column: 29, scope: !4376)
!4547 = !DILocation(line: 610, column: 7, scope: !4376)
!4548 = !DILocation(line: 610, column: 5, scope: !4376)
!4549 = !DILocation(line: 611, column: 7, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4376, file: !3, line: 611, column: 6)
!4551 = !DILocation(line: 611, column: 10, scope: !4550)
!4552 = !DILocation(line: 611, column: 25, scope: !4550)
!4553 = !DILocation(line: 611, column: 29, scope: !4550)
!4554 = !DILocation(line: 611, column: 32, scope: !4550)
!4555 = !DILocation(line: 611, column: 46, scope: !4550)
!4556 = !DILocation(line: 611, column: 50, scope: !4550)
!4557 = !DILocation(line: 611, column: 53, scope: !4550)
!4558 = !DILocation(line: 611, column: 6, scope: !4376)
!4559 = !DILocation(line: 612, column: 3, scope: !4550)
!4560 = !DILocation(line: 615, column: 10, scope: !4376)
!4561 = !DILocation(line: 615, column: 17, scope: !4376)
!4562 = !DILocation(line: 615, column: 26, scope: !4376)
!4563 = !DILocation(line: 615, column: 2, scope: !4376)
!4564 = !DILocation(line: 616, column: 37, scope: !4376)
!4565 = !DILocation(line: 616, column: 2, scope: !4376)
!4566 = !DILocation(line: 616, column: 9, scope: !4376)
!4567 = !DILocation(line: 616, column: 18, scope: !4376)
!4568 = !DILocation(line: 616, column: 35, scope: !4376)
!4569 = !DILocation(line: 618, column: 10, scope: !4376)
!4570 = !DILocation(line: 618, column: 17, scope: !4376)
!4571 = !DILocation(line: 618, column: 2, scope: !4376)
!4572 = !DILabel(scope: !4376, name: "error", file: !3, line: 619)
!4573 = !DILocation(line: 619, column: 1, scope: !4376)
!4574 = !DILocation(line: 620, column: 8, scope: !4376)
!4575 = !DILocation(line: 620, column: 2, scope: !4376)
!4576 = !DILocation(line: 621, column: 2, scope: !4376)
!4577 = !DILocation(line: 622, column: 1, scope: !4376)
!4578 = distinct !DISubprogram(name: "kzalloc", scope: !331, file: !331, line: 662, type: !4579, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!340, !892, !338}
!4581 = !DILocalVariable(name: "s", arg: 1, scope: !4582, file: !331, line: 445, type: !1484)
!4582 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !331, file: !331, line: 445, type: !4583, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!340, !1484, !338, !892}
!4585 = !DILocation(line: 445, column: 72, scope: !4582, inlinedAt: !4586)
!4586 = distinct !DILocation(line: 552, column: 10, scope: !4587, inlinedAt: !4590)
!4587 = distinct !DILexicalBlock(scope: !4588, file: !331, line: 540, column: 34)
!4588 = distinct !DILexicalBlock(scope: !4589, file: !331, line: 540, column: 6)
!4589 = distinct !DISubprogram(name: "kmalloc", scope: !331, file: !331, line: 538, type: !4579, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!4590 = distinct !DILocation(line: 664, column: 9, scope: !4578)
!4591 = !DILocalVariable(name: "flags", arg: 2, scope: !4582, file: !331, line: 446, type: !338)
!4592 = !DILocation(line: 446, column: 9, scope: !4582, inlinedAt: !4586)
!4593 = !DILocalVariable(name: "size", arg: 3, scope: !4582, file: !331, line: 446, type: !892)
!4594 = !DILocation(line: 446, column: 23, scope: !4582, inlinedAt: !4586)
!4595 = !DILocalVariable(name: "ret", scope: !4582, file: !331, line: 448, type: !340)
!4596 = !DILocation(line: 448, column: 8, scope: !4582, inlinedAt: !4586)
!4597 = !DILocalVariable(name: "flags", arg: 1, scope: !4598, file: !331, line: 318, type: !338)
!4598 = distinct !DISubprogram(name: "kmalloc_type", scope: !331, file: !331, line: 318, type: !4599, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!330, !338}
!4601 = !DILocation(line: 318, column: 67, scope: !4598, inlinedAt: !4602)
!4602 = distinct !DILocation(line: 553, column: 20, scope: !4587, inlinedAt: !4590)
!4603 = !DILocalVariable(name: "size", arg: 1, scope: !4604, file: !331, line: 346, type: !892)
!4604 = distinct !DISubprogram(name: "kmalloc_index", scope: !331, file: !331, line: 346, type: !4605, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!7, !892}
!4607 = !DILocation(line: 346, column: 58, scope: !4604, inlinedAt: !4608)
!4608 = distinct !DILocation(line: 547, column: 11, scope: !4587, inlinedAt: !4590)
!4609 = !DILocalVariable(name: "size", arg: 1, scope: !4610, file: !331, line: 472, type: !892)
!4610 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !331, file: !331, line: 472, type: !4611, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!340, !892, !338, !7}
!4613 = !DILocation(line: 472, column: 28, scope: !4610, inlinedAt: !4614)
!4614 = distinct !DILocation(line: 481, column: 9, scope: !4615, inlinedAt: !4616)
!4615 = distinct !DISubprogram(name: "kmalloc_large", scope: !331, file: !331, line: 478, type: !4579, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!4616 = distinct !DILocation(line: 545, column: 11, scope: !4617, inlinedAt: !4590)
!4617 = distinct !DILexicalBlock(scope: !4587, file: !331, line: 544, column: 7)
!4618 = !DILocalVariable(name: "flags", arg: 2, scope: !4610, file: !331, line: 472, type: !338)
!4619 = !DILocation(line: 472, column: 40, scope: !4610, inlinedAt: !4614)
!4620 = !DILocalVariable(name: "order", arg: 3, scope: !4610, file: !331, line: 472, type: !7)
!4621 = !DILocation(line: 472, column: 60, scope: !4610, inlinedAt: !4614)
!4622 = !DILocalVariable(name: "size", arg: 1, scope: !4615, file: !331, line: 478, type: !892)
!4623 = !DILocation(line: 478, column: 51, scope: !4615, inlinedAt: !4616)
!4624 = !DILocalVariable(name: "flags", arg: 2, scope: !4615, file: !331, line: 478, type: !338)
!4625 = !DILocation(line: 478, column: 63, scope: !4615, inlinedAt: !4616)
!4626 = !DILocalVariable(name: "order", scope: !4615, file: !331, line: 480, type: !7)
!4627 = !DILocation(line: 480, column: 15, scope: !4615, inlinedAt: !4616)
!4628 = !DILocalVariable(name: "size", arg: 1, scope: !4589, file: !331, line: 538, type: !892)
!4629 = !DILocation(line: 538, column: 45, scope: !4589, inlinedAt: !4590)
!4630 = !DILocalVariable(name: "flags", arg: 2, scope: !4589, file: !331, line: 538, type: !338)
!4631 = !DILocation(line: 538, column: 57, scope: !4589, inlinedAt: !4590)
!4632 = !DILocalVariable(name: "index", scope: !4587, file: !331, line: 542, type: !7)
!4633 = !DILocation(line: 542, column: 16, scope: !4587, inlinedAt: !4590)
!4634 = !DILocalVariable(name: "size", arg: 1, scope: !4578, file: !331, line: 662, type: !892)
!4635 = !DILocation(line: 662, column: 36, scope: !4578)
!4636 = !DILocalVariable(name: "flags", arg: 2, scope: !4578, file: !331, line: 662, type: !338)
!4637 = !DILocation(line: 662, column: 48, scope: !4578)
!4638 = !DILocation(line: 664, column: 17, scope: !4578)
!4639 = !DILocation(line: 664, column: 23, scope: !4578)
!4640 = !DILocation(line: 664, column: 29, scope: !4578)
!4641 = !DILocation(line: 540, column: 27, scope: !4588, inlinedAt: !4590)
!4642 = !DILocation(line: 540, column: 6, scope: !4588, inlinedAt: !4590)
!4643 = !DILocation(line: 540, column: 6, scope: !4589, inlinedAt: !4590)
!4644 = !DILocation(line: 544, column: 7, scope: !4617, inlinedAt: !4590)
!4645 = !DILocation(line: 544, column: 12, scope: !4617, inlinedAt: !4590)
!4646 = !DILocation(line: 544, column: 7, scope: !4587, inlinedAt: !4590)
!4647 = !DILocation(line: 545, column: 25, scope: !4617, inlinedAt: !4590)
!4648 = !DILocation(line: 545, column: 31, scope: !4617, inlinedAt: !4590)
!4649 = !DILocation(line: 480, column: 33, scope: !4615, inlinedAt: !4616)
!4650 = !DILocation(line: 480, column: 23, scope: !4615, inlinedAt: !4616)
!4651 = !DILocation(line: 481, column: 29, scope: !4615, inlinedAt: !4616)
!4652 = !DILocation(line: 481, column: 35, scope: !4615, inlinedAt: !4616)
!4653 = !DILocation(line: 481, column: 42, scope: !4615, inlinedAt: !4616)
!4654 = !DILocation(line: 474, column: 23, scope: !4610, inlinedAt: !4614)
!4655 = !DILocation(line: 474, column: 29, scope: !4610, inlinedAt: !4614)
!4656 = !DILocation(line: 474, column: 36, scope: !4610, inlinedAt: !4614)
!4657 = !DILocation(line: 474, column: 9, scope: !4610, inlinedAt: !4614)
!4658 = !DILocation(line: 545, column: 4, scope: !4617, inlinedAt: !4590)
!4659 = !DILocation(line: 547, column: 25, scope: !4587, inlinedAt: !4590)
!4660 = !DILocation(line: 348, column: 7, scope: !4661, inlinedAt: !4608)
!4661 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 348, column: 6)
!4662 = !DILocation(line: 348, column: 6, scope: !4604, inlinedAt: !4608)
!4663 = !DILocation(line: 349, column: 3, scope: !4661, inlinedAt: !4608)
!4664 = !DILocation(line: 351, column: 6, scope: !4665, inlinedAt: !4608)
!4665 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 351, column: 6)
!4666 = !DILocation(line: 351, column: 11, scope: !4665, inlinedAt: !4608)
!4667 = !DILocation(line: 351, column: 6, scope: !4604, inlinedAt: !4608)
!4668 = !DILocation(line: 352, column: 3, scope: !4665, inlinedAt: !4608)
!4669 = !DILocation(line: 354, column: 32, scope: !4670, inlinedAt: !4608)
!4670 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 354, column: 6)
!4671 = !DILocation(line: 354, column: 37, scope: !4670, inlinedAt: !4608)
!4672 = !DILocation(line: 354, column: 42, scope: !4670, inlinedAt: !4608)
!4673 = !DILocation(line: 354, column: 45, scope: !4670, inlinedAt: !4608)
!4674 = !DILocation(line: 354, column: 50, scope: !4670, inlinedAt: !4608)
!4675 = !DILocation(line: 354, column: 6, scope: !4604, inlinedAt: !4608)
!4676 = !DILocation(line: 355, column: 3, scope: !4670, inlinedAt: !4608)
!4677 = !DILocation(line: 356, column: 32, scope: !4678, inlinedAt: !4608)
!4678 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 356, column: 6)
!4679 = !DILocation(line: 356, column: 37, scope: !4678, inlinedAt: !4608)
!4680 = !DILocation(line: 356, column: 43, scope: !4678, inlinedAt: !4608)
!4681 = !DILocation(line: 356, column: 46, scope: !4678, inlinedAt: !4608)
!4682 = !DILocation(line: 356, column: 51, scope: !4678, inlinedAt: !4608)
!4683 = !DILocation(line: 356, column: 6, scope: !4604, inlinedAt: !4608)
!4684 = !DILocation(line: 357, column: 3, scope: !4678, inlinedAt: !4608)
!4685 = !DILocation(line: 358, column: 6, scope: !4686, inlinedAt: !4608)
!4686 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 358, column: 6)
!4687 = !DILocation(line: 358, column: 11, scope: !4686, inlinedAt: !4608)
!4688 = !DILocation(line: 358, column: 6, scope: !4604, inlinedAt: !4608)
!4689 = !DILocation(line: 358, column: 26, scope: !4686, inlinedAt: !4608)
!4690 = !DILocation(line: 359, column: 6, scope: !4691, inlinedAt: !4608)
!4691 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 359, column: 6)
!4692 = !DILocation(line: 359, column: 11, scope: !4691, inlinedAt: !4608)
!4693 = !DILocation(line: 359, column: 6, scope: !4604, inlinedAt: !4608)
!4694 = !DILocation(line: 359, column: 26, scope: !4691, inlinedAt: !4608)
!4695 = !DILocation(line: 360, column: 6, scope: !4696, inlinedAt: !4608)
!4696 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 360, column: 6)
!4697 = !DILocation(line: 360, column: 11, scope: !4696, inlinedAt: !4608)
!4698 = !DILocation(line: 360, column: 6, scope: !4604, inlinedAt: !4608)
!4699 = !DILocation(line: 360, column: 26, scope: !4696, inlinedAt: !4608)
!4700 = !DILocation(line: 361, column: 6, scope: !4701, inlinedAt: !4608)
!4701 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 361, column: 6)
!4702 = !DILocation(line: 361, column: 11, scope: !4701, inlinedAt: !4608)
!4703 = !DILocation(line: 361, column: 6, scope: !4604, inlinedAt: !4608)
!4704 = !DILocation(line: 361, column: 26, scope: !4701, inlinedAt: !4608)
!4705 = !DILocation(line: 362, column: 6, scope: !4706, inlinedAt: !4608)
!4706 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 362, column: 6)
!4707 = !DILocation(line: 362, column: 11, scope: !4706, inlinedAt: !4608)
!4708 = !DILocation(line: 362, column: 6, scope: !4604, inlinedAt: !4608)
!4709 = !DILocation(line: 362, column: 26, scope: !4706, inlinedAt: !4608)
!4710 = !DILocation(line: 363, column: 6, scope: !4711, inlinedAt: !4608)
!4711 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 363, column: 6)
!4712 = !DILocation(line: 363, column: 11, scope: !4711, inlinedAt: !4608)
!4713 = !DILocation(line: 363, column: 6, scope: !4604, inlinedAt: !4608)
!4714 = !DILocation(line: 363, column: 26, scope: !4711, inlinedAt: !4608)
!4715 = !DILocation(line: 364, column: 6, scope: !4716, inlinedAt: !4608)
!4716 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 364, column: 6)
!4717 = !DILocation(line: 364, column: 11, scope: !4716, inlinedAt: !4608)
!4718 = !DILocation(line: 364, column: 6, scope: !4604, inlinedAt: !4608)
!4719 = !DILocation(line: 364, column: 26, scope: !4716, inlinedAt: !4608)
!4720 = !DILocation(line: 365, column: 6, scope: !4721, inlinedAt: !4608)
!4721 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 365, column: 6)
!4722 = !DILocation(line: 365, column: 11, scope: !4721, inlinedAt: !4608)
!4723 = !DILocation(line: 365, column: 6, scope: !4604, inlinedAt: !4608)
!4724 = !DILocation(line: 365, column: 26, scope: !4721, inlinedAt: !4608)
!4725 = !DILocation(line: 366, column: 6, scope: !4726, inlinedAt: !4608)
!4726 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 366, column: 6)
!4727 = !DILocation(line: 366, column: 11, scope: !4726, inlinedAt: !4608)
!4728 = !DILocation(line: 366, column: 6, scope: !4604, inlinedAt: !4608)
!4729 = !DILocation(line: 366, column: 26, scope: !4726, inlinedAt: !4608)
!4730 = !DILocation(line: 367, column: 6, scope: !4731, inlinedAt: !4608)
!4731 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 367, column: 6)
!4732 = !DILocation(line: 367, column: 11, scope: !4731, inlinedAt: !4608)
!4733 = !DILocation(line: 367, column: 6, scope: !4604, inlinedAt: !4608)
!4734 = !DILocation(line: 367, column: 26, scope: !4731, inlinedAt: !4608)
!4735 = !DILocation(line: 368, column: 6, scope: !4736, inlinedAt: !4608)
!4736 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 368, column: 6)
!4737 = !DILocation(line: 368, column: 11, scope: !4736, inlinedAt: !4608)
!4738 = !DILocation(line: 368, column: 6, scope: !4604, inlinedAt: !4608)
!4739 = !DILocation(line: 368, column: 26, scope: !4736, inlinedAt: !4608)
!4740 = !DILocation(line: 369, column: 6, scope: !4741, inlinedAt: !4608)
!4741 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 369, column: 6)
!4742 = !DILocation(line: 369, column: 11, scope: !4741, inlinedAt: !4608)
!4743 = !DILocation(line: 369, column: 6, scope: !4604, inlinedAt: !4608)
!4744 = !DILocation(line: 369, column: 26, scope: !4741, inlinedAt: !4608)
!4745 = !DILocation(line: 370, column: 6, scope: !4746, inlinedAt: !4608)
!4746 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 370, column: 6)
!4747 = !DILocation(line: 370, column: 11, scope: !4746, inlinedAt: !4608)
!4748 = !DILocation(line: 370, column: 6, scope: !4604, inlinedAt: !4608)
!4749 = !DILocation(line: 370, column: 26, scope: !4746, inlinedAt: !4608)
!4750 = !DILocation(line: 371, column: 6, scope: !4751, inlinedAt: !4608)
!4751 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 371, column: 6)
!4752 = !DILocation(line: 371, column: 11, scope: !4751, inlinedAt: !4608)
!4753 = !DILocation(line: 371, column: 6, scope: !4604, inlinedAt: !4608)
!4754 = !DILocation(line: 371, column: 26, scope: !4751, inlinedAt: !4608)
!4755 = !DILocation(line: 372, column: 6, scope: !4756, inlinedAt: !4608)
!4756 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 372, column: 6)
!4757 = !DILocation(line: 372, column: 11, scope: !4756, inlinedAt: !4608)
!4758 = !DILocation(line: 372, column: 6, scope: !4604, inlinedAt: !4608)
!4759 = !DILocation(line: 372, column: 26, scope: !4756, inlinedAt: !4608)
!4760 = !DILocation(line: 373, column: 6, scope: !4761, inlinedAt: !4608)
!4761 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 373, column: 6)
!4762 = !DILocation(line: 373, column: 11, scope: !4761, inlinedAt: !4608)
!4763 = !DILocation(line: 373, column: 6, scope: !4604, inlinedAt: !4608)
!4764 = !DILocation(line: 373, column: 26, scope: !4761, inlinedAt: !4608)
!4765 = !DILocation(line: 374, column: 6, scope: !4766, inlinedAt: !4608)
!4766 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 374, column: 6)
!4767 = !DILocation(line: 374, column: 11, scope: !4766, inlinedAt: !4608)
!4768 = !DILocation(line: 374, column: 6, scope: !4604, inlinedAt: !4608)
!4769 = !DILocation(line: 374, column: 26, scope: !4766, inlinedAt: !4608)
!4770 = !DILocation(line: 375, column: 6, scope: !4771, inlinedAt: !4608)
!4771 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 375, column: 6)
!4772 = !DILocation(line: 375, column: 11, scope: !4771, inlinedAt: !4608)
!4773 = !DILocation(line: 375, column: 6, scope: !4604, inlinedAt: !4608)
!4774 = !DILocation(line: 375, column: 27, scope: !4771, inlinedAt: !4608)
!4775 = !DILocation(line: 376, column: 6, scope: !4776, inlinedAt: !4608)
!4776 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 376, column: 6)
!4777 = !DILocation(line: 376, column: 11, scope: !4776, inlinedAt: !4608)
!4778 = !DILocation(line: 376, column: 6, scope: !4604, inlinedAt: !4608)
!4779 = !DILocation(line: 376, column: 32, scope: !4776, inlinedAt: !4608)
!4780 = !DILocation(line: 377, column: 6, scope: !4781, inlinedAt: !4608)
!4781 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 377, column: 6)
!4782 = !DILocation(line: 377, column: 11, scope: !4781, inlinedAt: !4608)
!4783 = !DILocation(line: 377, column: 6, scope: !4604, inlinedAt: !4608)
!4784 = !DILocation(line: 377, column: 32, scope: !4781, inlinedAt: !4608)
!4785 = !DILocation(line: 378, column: 6, scope: !4786, inlinedAt: !4608)
!4786 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 378, column: 6)
!4787 = !DILocation(line: 378, column: 11, scope: !4786, inlinedAt: !4608)
!4788 = !DILocation(line: 378, column: 6, scope: !4604, inlinedAt: !4608)
!4789 = !DILocation(line: 378, column: 32, scope: !4786, inlinedAt: !4608)
!4790 = !DILocation(line: 379, column: 6, scope: !4791, inlinedAt: !4608)
!4791 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 379, column: 6)
!4792 = !DILocation(line: 379, column: 11, scope: !4791, inlinedAt: !4608)
!4793 = !DILocation(line: 379, column: 6, scope: !4604, inlinedAt: !4608)
!4794 = !DILocation(line: 379, column: 33, scope: !4791, inlinedAt: !4608)
!4795 = !DILocation(line: 380, column: 6, scope: !4796, inlinedAt: !4608)
!4796 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 380, column: 6)
!4797 = !DILocation(line: 380, column: 11, scope: !4796, inlinedAt: !4608)
!4798 = !DILocation(line: 380, column: 6, scope: !4604, inlinedAt: !4608)
!4799 = !DILocation(line: 380, column: 33, scope: !4796, inlinedAt: !4608)
!4800 = !DILocation(line: 381, column: 6, scope: !4801, inlinedAt: !4608)
!4801 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 381, column: 6)
!4802 = !DILocation(line: 381, column: 11, scope: !4801, inlinedAt: !4608)
!4803 = !DILocation(line: 381, column: 6, scope: !4604, inlinedAt: !4608)
!4804 = !DILocation(line: 381, column: 33, scope: !4801, inlinedAt: !4608)
!4805 = !DILocation(line: 382, column: 2, scope: !4806, inlinedAt: !4608)
!4806 = distinct !DILexicalBlock(scope: !4807, file: !331, line: 382, column: 2)
!4807 = distinct !DILexicalBlock(scope: !4604, file: !331, line: 382, column: 2)
!4808 = !{i32 -2144227579, i32 -2144227550, i32 -2144227504, i32 -2144227446, i32 -2144227392, i32 -2144227338, i32 -2144227283, i32 -2144227252}
!4809 = !DILocation(line: 382, column: 2, scope: !4810, inlinedAt: !4608)
!4810 = distinct !DILexicalBlock(scope: !4811, file: !331, line: 382, column: 2)
!4811 = distinct !DILexicalBlock(scope: !4807, file: !331, line: 382, column: 2)
!4812 = !{i32 -2144226809, i32 -2144226802, i32 -2144226748, i32 -2144226717, i32 -2144226687}
!4813 = !DILocation(line: 382, column: 2, scope: !4811, inlinedAt: !4608)
!4814 = !DILocation(line: 386, column: 1, scope: !4604, inlinedAt: !4608)
!4815 = !DILocation(line: 547, column: 9, scope: !4587, inlinedAt: !4590)
!4816 = !DILocation(line: 549, column: 8, scope: !4817, inlinedAt: !4590)
!4817 = distinct !DILexicalBlock(scope: !4587, file: !331, line: 549, column: 7)
!4818 = !DILocation(line: 549, column: 7, scope: !4587, inlinedAt: !4590)
!4819 = !DILocation(line: 550, column: 4, scope: !4817, inlinedAt: !4590)
!4820 = !DILocation(line: 553, column: 33, scope: !4587, inlinedAt: !4590)
!4821 = !DILocation(line: 325, column: 6, scope: !4822, inlinedAt: !4602)
!4822 = distinct !DILexicalBlock(scope: !4598, file: !331, line: 325, column: 6)
!4823 = !DILocation(line: 325, column: 6, scope: !4598, inlinedAt: !4602)
!4824 = !DILocation(line: 326, column: 3, scope: !4822, inlinedAt: !4602)
!4825 = !DILocation(line: 332, column: 9, scope: !4598, inlinedAt: !4602)
!4826 = !DILocation(line: 332, column: 15, scope: !4598, inlinedAt: !4602)
!4827 = !DILocation(line: 332, column: 2, scope: !4598, inlinedAt: !4602)
!4828 = !DILocation(line: 336, column: 1, scope: !4598, inlinedAt: !4602)
!4829 = !DILocation(line: 553, column: 5, scope: !4587, inlinedAt: !4590)
!4830 = !DILocation(line: 553, column: 41, scope: !4587, inlinedAt: !4590)
!4831 = !DILocation(line: 554, column: 5, scope: !4587, inlinedAt: !4590)
!4832 = !DILocation(line: 554, column: 12, scope: !4587, inlinedAt: !4590)
!4833 = !DILocation(line: 448, column: 31, scope: !4582, inlinedAt: !4586)
!4834 = !DILocation(line: 448, column: 34, scope: !4582, inlinedAt: !4586)
!4835 = !DILocation(line: 448, column: 14, scope: !4582, inlinedAt: !4586)
!4836 = !DILocation(line: 450, column: 22, scope: !4582, inlinedAt: !4586)
!4837 = !DILocation(line: 450, column: 25, scope: !4582, inlinedAt: !4586)
!4838 = !DILocation(line: 450, column: 30, scope: !4582, inlinedAt: !4586)
!4839 = !DILocation(line: 450, column: 36, scope: !4582, inlinedAt: !4586)
!4840 = !DILocation(line: 450, column: 8, scope: !4582, inlinedAt: !4586)
!4841 = !DILocation(line: 450, column: 6, scope: !4582, inlinedAt: !4586)
!4842 = !DILocation(line: 451, column: 9, scope: !4582, inlinedAt: !4586)
!4843 = !DILocation(line: 552, column: 3, scope: !4587, inlinedAt: !4590)
!4844 = !DILocation(line: 557, column: 19, scope: !4589, inlinedAt: !4590)
!4845 = !DILocation(line: 557, column: 25, scope: !4589, inlinedAt: !4590)
!4846 = !DILocation(line: 557, column: 9, scope: !4589, inlinedAt: !4590)
!4847 = !DILocation(line: 557, column: 2, scope: !4589, inlinedAt: !4590)
!4848 = !DILocation(line: 558, column: 1, scope: !4589, inlinedAt: !4590)
!4849 = !DILocation(line: 664, column: 2, scope: !4578)
!4850 = distinct !DISubprogram(name: "zl10353_read_register", scope: !3, file: !3, line: 63, type: !4851, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!349, !4519, !341}
!4853 = !DILocalVariable(name: "state", arg: 1, scope: !4850, file: !3, line: 63, type: !4519)
!4854 = !DILocation(line: 63, column: 56, scope: !4850)
!4855 = !DILocalVariable(name: "reg", arg: 2, scope: !4850, file: !3, line: 63, type: !341)
!4856 = !DILocation(line: 63, column: 66, scope: !4850)
!4857 = !DILocalVariable(name: "ret", scope: !4850, file: !3, line: 65, type: !349)
!4858 = !DILocation(line: 65, column: 6, scope: !4850)
!4859 = !DILocalVariable(name: "b0", scope: !4850, file: !3, line: 66, type: !4860)
!4860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 8, elements: !1829)
!4861 = !DILocation(line: 66, column: 5, scope: !4850)
!4862 = !DILocation(line: 66, column: 13, scope: !4850)
!4863 = !DILocation(line: 66, column: 15, scope: !4850)
!4864 = !DILocalVariable(name: "b1", scope: !4850, file: !3, line: 67, type: !4860)
!4865 = !DILocation(line: 67, column: 5, scope: !4850)
!4866 = !DILocalVariable(name: "msg", scope: !4850, file: !3, line: 68, type: !4867)
!4867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4408, size: 256, elements: !2029)
!4868 = !DILocation(line: 68, column: 17, scope: !4850)
!4869 = !DILocation(line: 68, column: 26, scope: !4850)
!4870 = !DILocation(line: 68, column: 28, scope: !4850)
!4871 = !DILocation(line: 68, column: 38, scope: !4850)
!4872 = !DILocation(line: 68, column: 45, scope: !4850)
!4873 = !DILocation(line: 68, column: 52, scope: !4850)
!4874 = !DILocation(line: 70, column: 16, scope: !4850)
!4875 = !DILocation(line: 71, column: 7, scope: !4850)
!4876 = !DILocation(line: 71, column: 17, scope: !4850)
!4877 = !DILocation(line: 71, column: 24, scope: !4850)
!4878 = !DILocation(line: 71, column: 31, scope: !4850)
!4879 = !DILocation(line: 73, column: 16, scope: !4850)
!4880 = !DILocation(line: 75, column: 21, scope: !4850)
!4881 = !DILocation(line: 75, column: 28, scope: !4850)
!4882 = !DILocation(line: 75, column: 33, scope: !4850)
!4883 = !DILocation(line: 75, column: 8, scope: !4850)
!4884 = !DILocation(line: 75, column: 6, scope: !4850)
!4885 = !DILocation(line: 77, column: 6, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 77, column: 6)
!4887 = !DILocation(line: 77, column: 10, scope: !4886)
!4888 = !DILocation(line: 77, column: 6, scope: !4850)
!4889 = !DILocation(line: 79, column: 20, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 77, column: 16)
!4891 = !DILocation(line: 79, column: 25, scope: !4890)
!4892 = !DILocation(line: 78, column: 3, scope: !4890)
!4893 = !DILocation(line: 80, column: 10, scope: !4890)
!4894 = !DILocation(line: 80, column: 3, scope: !4890)
!4895 = !DILocation(line: 83, column: 9, scope: !4850)
!4896 = !DILocation(line: 83, column: 2, scope: !4850)
!4897 = !DILocation(line: 84, column: 1, scope: !4850)
!4898 = distinct !DISubprogram(name: "get_order", scope: !4899, file: !4899, line: 29, type: !4900, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!4899 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!349, !690}
!4902 = !DILocalVariable(name: "x", arg: 1, scope: !4903, file: !4904, line: 366, type: !347)
!4903 = distinct !DISubprogram(name: "fls64", scope: !4904, file: !4904, line: 366, type: !4905, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!4904 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!349, !347}
!4907 = !DILocation(line: 366, column: 40, scope: !4903, inlinedAt: !4908)
!4908 = distinct !DILocation(line: 46, column: 9, scope: !4898)
!4909 = !DILocalVariable(name: "bitpos", scope: !4903, file: !4904, line: 368, type: !349)
!4910 = !DILocation(line: 368, column: 6, scope: !4903, inlinedAt: !4908)
!4911 = !DILocalVariable(name: "size", arg: 1, scope: !4898, file: !4899, line: 29, type: !690)
!4912 = !DILocation(line: 29, column: 63, scope: !4898)
!4913 = !DILocation(line: 31, column: 27, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4898, file: !4899, line: 31, column: 6)
!4915 = !DILocation(line: 31, column: 6, scope: !4914)
!4916 = !DILocation(line: 31, column: 6, scope: !4898)
!4917 = !DILocation(line: 32, column: 8, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4919, file: !4899, line: 32, column: 7)
!4919 = distinct !DILexicalBlock(scope: !4914, file: !4899, line: 31, column: 34)
!4920 = !DILocation(line: 32, column: 7, scope: !4919)
!4921 = !DILocation(line: 33, column: 4, scope: !4918)
!4922 = !DILocation(line: 35, column: 7, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4919, file: !4899, line: 35, column: 7)
!4924 = !DILocation(line: 35, column: 12, scope: !4923)
!4925 = !DILocation(line: 35, column: 7, scope: !4919)
!4926 = !DILocation(line: 36, column: 4, scope: !4923)
!4927 = !DILocation(line: 38, column: 10, scope: !4919)
!4928 = !DILocation(line: 38, column: 28, scope: !4919)
!4929 = !DILocation(line: 38, column: 41, scope: !4919)
!4930 = !DILocation(line: 38, column: 3, scope: !4919)
!4931 = !DILocation(line: 41, column: 6, scope: !4898)
!4932 = !DILocation(line: 42, column: 7, scope: !4898)
!4933 = !DILocation(line: 46, column: 15, scope: !4898)
!4934 = !DILocation(line: 374, column: 2, scope: !4903, inlinedAt: !4908)
!4935 = !DILocation(line: 376, column: 14, scope: !4903, inlinedAt: !4908)
!4936 = !{i32 254637}
!4937 = !DILocation(line: 377, column: 9, scope: !4903, inlinedAt: !4908)
!4938 = !DILocation(line: 377, column: 16, scope: !4903, inlinedAt: !4908)
!4939 = !DILocation(line: 46, column: 2, scope: !4898)
!4940 = !DILocation(line: 48, column: 1, scope: !4898)
!4941 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4942, file: !4942, line: 30, type: !4943, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!4942 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!349, !346}
!4945 = !DILocation(line: 366, column: 40, scope: !4903, inlinedAt: !4946)
!4946 = distinct !DILocation(line: 32, column: 9, scope: !4941)
!4947 = !DILocation(line: 368, column: 6, scope: !4903, inlinedAt: !4946)
!4948 = !DILocalVariable(name: "n", arg: 1, scope: !4941, file: !4942, line: 30, type: !346)
!4949 = !DILocation(line: 30, column: 21, scope: !4941)
!4950 = !DILocation(line: 32, column: 15, scope: !4941)
!4951 = !DILocation(line: 374, column: 2, scope: !4903, inlinedAt: !4946)
!4952 = !DILocation(line: 376, column: 14, scope: !4903, inlinedAt: !4946)
!4953 = !DILocation(line: 377, column: 9, scope: !4903, inlinedAt: !4946)
!4954 = !DILocation(line: 377, column: 16, scope: !4903, inlinedAt: !4946)
!4955 = !DILocation(line: 32, column: 18, scope: !4941)
!4956 = !DILocation(line: 32, column: 2, scope: !4941)
!4957 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4958, file: !4958, line: 137, type: !4959, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!4958 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!340, !1484, !2587, !892, !338}
!4961 = !DILocalVariable(name: "s", arg: 1, scope: !4957, file: !4958, line: 137, type: !1484)
!4962 = !DILocation(line: 137, column: 54, scope: !4957)
!4963 = !DILocalVariable(name: "object", arg: 2, scope: !4957, file: !4958, line: 137, type: !2587)
!4964 = !DILocation(line: 137, column: 69, scope: !4957)
!4965 = !DILocalVariable(name: "size", arg: 3, scope: !4957, file: !4958, line: 138, type: !892)
!4966 = !DILocation(line: 138, column: 12, scope: !4957)
!4967 = !DILocalVariable(name: "flags", arg: 4, scope: !4957, file: !4958, line: 138, type: !338)
!4968 = !DILocation(line: 138, column: 24, scope: !4957)
!4969 = !DILocation(line: 140, column: 17, scope: !4957)
!4970 = !DILocation(line: 140, column: 2, scope: !4957)
!4971 = distinct !DISubprogram(name: "zl10353_release", scope: !3, file: !3, line: 586, type: !511, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!4972 = !DILocalVariable(name: "fe", arg: 1, scope: !4971, file: !3, line: 586, type: !468)
!4973 = !DILocation(line: 586, column: 50, scope: !4971)
!4974 = !DILocalVariable(name: "state", scope: !4971, file: !3, line: 588, type: !4519)
!4975 = !DILocation(line: 588, column: 24, scope: !4971)
!4976 = !DILocation(line: 588, column: 32, scope: !4971)
!4977 = !DILocation(line: 588, column: 36, scope: !4971)
!4978 = !DILocation(line: 589, column: 8, scope: !4971)
!4979 = !DILocation(line: 589, column: 2, scope: !4971)
!4980 = !DILocation(line: 590, column: 1, scope: !4971)
!4981 = distinct !DISubprogram(name: "zl10353_init", scope: !3, file: !3, line: 543, type: !466, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!4982 = !DILocalVariable(name: "fe", arg: 1, scope: !4981, file: !3, line: 543, type: !468)
!4983 = !DILocation(line: 543, column: 46, scope: !4981)
!4984 = !DILocalVariable(name: "state", scope: !4981, file: !3, line: 545, type: !4519)
!4985 = !DILocation(line: 545, column: 24, scope: !4981)
!4986 = !DILocation(line: 545, column: 32, scope: !4981)
!4987 = !DILocation(line: 545, column: 36, scope: !4981)
!4988 = !DILocalVariable(name: "zl10353_reset_attach", scope: !4981, file: !3, line: 546, type: !789)
!4989 = !DILocation(line: 546, column: 5, scope: !4981)
!4990 = !DILocation(line: 548, column: 6, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 548, column: 6)
!4992 = !DILocation(line: 548, column: 6, scope: !4981)
!4993 = !DILocation(line: 549, column: 21, scope: !4991)
!4994 = !DILocation(line: 549, column: 3, scope: !4991)
!4995 = !DILocation(line: 550, column: 6, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 550, column: 6)
!4997 = !DILocation(line: 550, column: 13, scope: !4996)
!4998 = !DILocation(line: 550, column: 20, scope: !4996)
!4999 = !DILocation(line: 550, column: 6, scope: !4981)
!5000 = !DILocation(line: 551, column: 3, scope: !4996)
!5001 = !DILocation(line: 551, column: 27, scope: !4996)
!5002 = !DILocation(line: 552, column: 6, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 552, column: 6)
!5004 = !DILocation(line: 552, column: 13, scope: !5003)
!5005 = !DILocation(line: 552, column: 20, scope: !5003)
!5006 = !DILocation(line: 552, column: 6, scope: !4981)
!5007 = !DILocation(line: 553, column: 29, scope: !5003)
!5008 = !DILocation(line: 553, column: 36, scope: !5003)
!5009 = !DILocation(line: 553, column: 43, scope: !5003)
!5010 = !DILocation(line: 553, column: 3, scope: !5003)
!5011 = !DILocation(line: 553, column: 27, scope: !5003)
!5012 = !DILocation(line: 554, column: 6, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 554, column: 6)
!5014 = !DILocation(line: 554, column: 13, scope: !5013)
!5015 = !DILocation(line: 554, column: 20, scope: !5013)
!5016 = !DILocation(line: 554, column: 6, scope: !4981)
!5017 = !DILocation(line: 555, column: 29, scope: !5013)
!5018 = !DILocation(line: 555, column: 36, scope: !5013)
!5019 = !DILocation(line: 555, column: 43, scope: !5013)
!5020 = !DILocation(line: 555, column: 3, scope: !5013)
!5021 = !DILocation(line: 555, column: 27, scope: !5013)
!5022 = !DILocation(line: 558, column: 28, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 558, column: 6)
!5024 = !DILocation(line: 558, column: 6, scope: !5023)
!5025 = !DILocation(line: 558, column: 44, scope: !5023)
!5026 = !DILocation(line: 558, column: 41, scope: !5023)
!5027 = !DILocation(line: 558, column: 68, scope: !5023)
!5028 = !DILocation(line: 559, column: 28, scope: !5023)
!5029 = !DILocation(line: 559, column: 6, scope: !5023)
!5030 = !DILocation(line: 559, column: 44, scope: !5023)
!5031 = !DILocation(line: 559, column: 41, scope: !5023)
!5032 = !DILocation(line: 558, column: 6, scope: !4981)
!5033 = !DILocation(line: 560, column: 17, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 559, column: 69)
!5035 = !DILocation(line: 560, column: 21, scope: !5034)
!5036 = !DILocation(line: 560, column: 3, scope: !5034)
!5037 = !DILocation(line: 562, column: 7, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5034, file: !3, line: 562, column: 7)
!5039 = !DILocation(line: 562, column: 7, scope: !5034)
!5040 = !DILocation(line: 563, column: 22, scope: !5038)
!5041 = !DILocation(line: 563, column: 4, scope: !5038)
!5042 = !DILocation(line: 564, column: 2, scope: !5034)
!5043 = !DILocation(line: 566, column: 2, scope: !4981)
!5044 = !DILocalVariable(name: "fe", arg: 1, scope: !465, file: !3, line: 158, type: !468)
!5045 = !DILocation(line: 158, column: 47, scope: !465)
!5046 = !DILocation(line: 162, column: 16, scope: !465)
!5047 = !DILocation(line: 162, column: 2, scope: !465)
!5048 = !DILocation(line: 163, column: 2, scope: !465)
!5049 = distinct !DISubprogram(name: "zl10353_write", scope: !3, file: !3, line: 53, type: !520, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!5050 = !DILocalVariable(name: "fe", arg: 1, scope: !5049, file: !3, line: 53, type: !468)
!5051 = !DILocation(line: 53, column: 47, scope: !5049)
!5052 = !DILocalVariable(name: "ibuf", arg: 2, scope: !5049, file: !3, line: 53, type: !522)
!5053 = !DILocation(line: 53, column: 60, scope: !5049)
!5054 = !DILocalVariable(name: "ilen", arg: 3, scope: !5049, file: !3, line: 53, type: !349)
!5055 = !DILocation(line: 53, column: 72, scope: !5049)
!5056 = !DILocalVariable(name: "err", scope: !5049, file: !3, line: 55, type: !349)
!5057 = !DILocation(line: 55, column: 6, scope: !5049)
!5058 = !DILocalVariable(name: "i", scope: !5049, file: !3, line: 55, type: !349)
!5059 = !DILocation(line: 55, column: 11, scope: !5049)
!5060 = !DILocation(line: 56, column: 9, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 56, column: 2)
!5062 = !DILocation(line: 56, column: 7, scope: !5061)
!5063 = !DILocation(line: 56, column: 14, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 56, column: 2)
!5065 = !DILocation(line: 56, column: 18, scope: !5064)
!5066 = !DILocation(line: 56, column: 23, scope: !5064)
!5067 = !DILocation(line: 56, column: 16, scope: !5064)
!5068 = !DILocation(line: 56, column: 2, scope: !5061)
!5069 = !DILocation(line: 57, column: 35, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 57, column: 7)
!5071 = !DILocation(line: 57, column: 39, scope: !5070)
!5072 = !DILocation(line: 57, column: 49, scope: !5070)
!5073 = !DILocation(line: 57, column: 47, scope: !5070)
!5074 = !DILocation(line: 57, column: 52, scope: !5070)
!5075 = !DILocation(line: 57, column: 57, scope: !5070)
!5076 = !DILocation(line: 57, column: 59, scope: !5070)
!5077 = !DILocation(line: 57, column: 14, scope: !5070)
!5078 = !DILocation(line: 57, column: 12, scope: !5070)
!5079 = !DILocation(line: 57, column: 7, scope: !5064)
!5080 = !DILocation(line: 58, column: 11, scope: !5070)
!5081 = !DILocation(line: 58, column: 4, scope: !5070)
!5082 = !DILocation(line: 57, column: 64, scope: !5070)
!5083 = !DILocation(line: 56, column: 29, scope: !5064)
!5084 = !DILocation(line: 56, column: 2, scope: !5064)
!5085 = distinct !{!5085, !5068, !5086}
!5086 = !DILocation(line: 58, column: 11, scope: !5061)
!5087 = !DILocation(line: 60, column: 2, scope: !5049)
!5088 = !DILocation(line: 61, column: 1, scope: !5049)
!5089 = distinct !DISubprogram(name: "zl10353_set_parameters", scope: !3, file: !3, line: 166, type: !466, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!5090 = !DILocalVariable(name: "fe", arg: 1, scope: !5089, file: !3, line: 166, type: !468)
!5091 = !DILocation(line: 166, column: 56, scope: !5089)
!5092 = !DILocalVariable(name: "c", scope: !5089, file: !3, line: 168, type: !550)
!5093 = !DILocation(line: 168, column: 34, scope: !5089)
!5094 = !DILocation(line: 168, column: 39, scope: !5089)
!5095 = !DILocation(line: 168, column: 43, scope: !5089)
!5096 = !DILocalVariable(name: "state", scope: !5089, file: !3, line: 169, type: !4519)
!5097 = !DILocation(line: 169, column: 24, scope: !5089)
!5098 = !DILocation(line: 169, column: 32, scope: !5089)
!5099 = !DILocation(line: 169, column: 36, scope: !5089)
!5100 = !DILocalVariable(name: "nominal_rate", scope: !5089, file: !3, line: 170, type: !387)
!5101 = !DILocation(line: 170, column: 6, scope: !5089)
!5102 = !DILocalVariable(name: "input_freq", scope: !5089, file: !3, line: 170, type: !387)
!5103 = !DILocation(line: 170, column: 20, scope: !5089)
!5104 = !DILocalVariable(name: "pllbuf", scope: !5089, file: !3, line: 171, type: !789)
!5105 = !DILocation(line: 171, column: 5, scope: !5089)
!5106 = !DILocalVariable(name: "acq_ctl", scope: !5089, file: !3, line: 171, type: !341)
!5107 = !DILocation(line: 171, column: 27, scope: !5089)
!5108 = !DILocalVariable(name: "tps", scope: !5089, file: !3, line: 172, type: !387)
!5109 = !DILocation(line: 172, column: 6, scope: !5089)
!5110 = !DILocation(line: 174, column: 21, scope: !5089)
!5111 = !DILocation(line: 174, column: 24, scope: !5089)
!5112 = !DILocation(line: 174, column: 2, scope: !5089)
!5113 = !DILocation(line: 174, column: 9, scope: !5089)
!5114 = !DILocation(line: 174, column: 19, scope: !5089)
!5115 = !DILocation(line: 176, column: 23, scope: !5089)
!5116 = !DILocation(line: 176, column: 2, scope: !5089)
!5117 = !DILocation(line: 177, column: 2, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5119, file: !3, line: 177, column: 2)
!5119 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 177, column: 2)
!5120 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 177, column: 2)
!5121 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 177, column: 2)
!5122 = !DILocation(line: 178, column: 23, scope: !5089)
!5123 = !DILocation(line: 178, column: 2, scope: !5089)
!5124 = !DILocation(line: 179, column: 2, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 179, column: 2)
!5126 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 179, column: 2)
!5127 = distinct !DILexicalBlock(scope: !5128, file: !3, line: 179, column: 2)
!5128 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 179, column: 2)
!5129 = !DILocation(line: 180, column: 23, scope: !5089)
!5130 = !DILocation(line: 180, column: 2, scope: !5089)
!5131 = !DILocation(line: 182, column: 23, scope: !5089)
!5132 = !DILocation(line: 182, column: 2, scope: !5089)
!5133 = !DILocation(line: 184, column: 6, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 184, column: 6)
!5135 = !DILocation(line: 184, column: 9, scope: !5134)
!5136 = !DILocation(line: 184, column: 27, scope: !5134)
!5137 = !DILocation(line: 184, column: 6, scope: !5089)
!5138 = !DILocation(line: 185, column: 11, scope: !5134)
!5139 = !DILocation(line: 185, column: 3, scope: !5134)
!5140 = !DILocation(line: 186, column: 6, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 186, column: 6)
!5142 = !DILocation(line: 186, column: 9, scope: !5141)
!5143 = !DILocation(line: 186, column: 24, scope: !5141)
!5144 = !DILocation(line: 186, column: 6, scope: !5089)
!5145 = !DILocation(line: 187, column: 11, scope: !5141)
!5146 = !DILocation(line: 187, column: 3, scope: !5141)
!5147 = !DILocation(line: 188, column: 23, scope: !5089)
!5148 = !DILocation(line: 188, column: 36, scope: !5089)
!5149 = !DILocation(line: 188, column: 2, scope: !5089)
!5150 = !DILocation(line: 190, column: 10, scope: !5089)
!5151 = !DILocation(line: 190, column: 13, scope: !5089)
!5152 = !DILocation(line: 190, column: 2, scope: !5089)
!5153 = !DILocation(line: 193, column: 24, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 190, column: 27)
!5155 = !DILocation(line: 193, column: 3, scope: !5154)
!5156 = !DILocation(line: 194, column: 24, scope: !5154)
!5157 = !DILocation(line: 194, column: 3, scope: !5154)
!5158 = !DILocation(line: 195, column: 24, scope: !5154)
!5159 = !DILocation(line: 195, column: 3, scope: !5154)
!5160 = !DILocation(line: 196, column: 3, scope: !5154)
!5161 = !DILocation(line: 198, column: 24, scope: !5154)
!5162 = !DILocation(line: 198, column: 3, scope: !5154)
!5163 = !DILocation(line: 199, column: 24, scope: !5154)
!5164 = !DILocation(line: 199, column: 3, scope: !5154)
!5165 = !DILocation(line: 200, column: 24, scope: !5154)
!5166 = !DILocation(line: 200, column: 3, scope: !5154)
!5167 = !DILocation(line: 201, column: 3, scope: !5154)
!5168 = !DILocation(line: 203, column: 3, scope: !5154)
!5169 = !DILocation(line: 203, column: 6, scope: !5154)
!5170 = !DILocation(line: 203, column: 19, scope: !5154)
!5171 = !DILocation(line: 206, column: 24, scope: !5154)
!5172 = !DILocation(line: 206, column: 3, scope: !5154)
!5173 = !DILocation(line: 207, column: 24, scope: !5154)
!5174 = !DILocation(line: 207, column: 3, scope: !5154)
!5175 = !DILocation(line: 208, column: 24, scope: !5154)
!5176 = !DILocation(line: 208, column: 3, scope: !5154)
!5177 = !DILocation(line: 209, column: 2, scope: !5154)
!5178 = !DILocation(line: 211, column: 28, scope: !5089)
!5179 = !DILocation(line: 211, column: 32, scope: !5089)
!5180 = !DILocation(line: 211, column: 35, scope: !5089)
!5181 = !DILocation(line: 211, column: 2, scope: !5089)
!5182 = !DILocation(line: 212, column: 23, scope: !5089)
!5183 = !DILocation(line: 212, column: 47, scope: !5089)
!5184 = !DILocation(line: 212, column: 2, scope: !5089)
!5185 = !DILocation(line: 213, column: 23, scope: !5089)
!5186 = !DILocation(line: 213, column: 47, scope: !5089)
!5187 = !DILocation(line: 213, column: 2, scope: !5089)
!5188 = !DILocation(line: 214, column: 21, scope: !5089)
!5189 = !DILocation(line: 214, column: 24, scope: !5089)
!5190 = !DILocation(line: 214, column: 2, scope: !5089)
!5191 = !DILocation(line: 214, column: 9, scope: !5089)
!5192 = !DILocation(line: 214, column: 19, scope: !5089)
!5193 = !DILocation(line: 216, column: 26, scope: !5089)
!5194 = !DILocation(line: 216, column: 2, scope: !5089)
!5195 = !DILocation(line: 217, column: 23, scope: !5089)
!5196 = !DILocation(line: 217, column: 41, scope: !5089)
!5197 = !DILocation(line: 217, column: 2, scope: !5089)
!5198 = !DILocation(line: 218, column: 23, scope: !5089)
!5199 = !DILocation(line: 218, column: 41, scope: !5089)
!5200 = !DILocation(line: 218, column: 2, scope: !5089)
!5201 = !DILocation(line: 221, column: 10, scope: !5089)
!5202 = !DILocation(line: 221, column: 13, scope: !5089)
!5203 = !DILocation(line: 221, column: 2, scope: !5089)
!5204 = !DILocation(line: 223, column: 7, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 221, column: 27)
!5206 = !DILocation(line: 224, column: 3, scope: !5205)
!5207 = !DILocation(line: 226, column: 7, scope: !5205)
!5208 = !DILocation(line: 227, column: 3, scope: !5205)
!5209 = !DILocation(line: 229, column: 7, scope: !5205)
!5210 = !DILocation(line: 230, column: 3, scope: !5205)
!5211 = !DILocation(line: 232, column: 7, scope: !5205)
!5212 = !DILocation(line: 233, column: 3, scope: !5205)
!5213 = !DILocation(line: 236, column: 3, scope: !5205)
!5214 = !DILocation(line: 238, column: 3, scope: !5205)
!5215 = !DILocation(line: 241, column: 10, scope: !5089)
!5216 = !DILocation(line: 241, column: 13, scope: !5089)
!5217 = !DILocation(line: 241, column: 2, scope: !5089)
!5218 = !DILocation(line: 243, column: 7, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 241, column: 27)
!5220 = !DILocation(line: 244, column: 3, scope: !5219)
!5221 = !DILocation(line: 246, column: 7, scope: !5219)
!5222 = !DILocation(line: 247, column: 3, scope: !5219)
!5223 = !DILocation(line: 249, column: 7, scope: !5219)
!5224 = !DILocation(line: 250, column: 3, scope: !5219)
!5225 = !DILocation(line: 252, column: 7, scope: !5219)
!5226 = !DILocation(line: 253, column: 3, scope: !5219)
!5227 = !DILocation(line: 256, column: 3, scope: !5219)
!5228 = !DILocation(line: 258, column: 7, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 258, column: 7)
!5230 = !DILocation(line: 258, column: 10, scope: !5229)
!5231 = !DILocation(line: 258, column: 20, scope: !5229)
!5232 = !DILocation(line: 258, column: 38, scope: !5229)
!5233 = !DILocation(line: 259, column: 7, scope: !5229)
!5234 = !DILocation(line: 259, column: 10, scope: !5229)
!5235 = !DILocation(line: 259, column: 20, scope: !5229)
!5236 = !DILocation(line: 258, column: 7, scope: !5219)
!5237 = !DILocation(line: 260, column: 4, scope: !5229)
!5238 = !DILocation(line: 259, column: 23, scope: !5229)
!5239 = !DILocation(line: 263, column: 3, scope: !5219)
!5240 = !DILocation(line: 266, column: 10, scope: !5089)
!5241 = !DILocation(line: 266, column: 13, scope: !5089)
!5242 = !DILocation(line: 266, column: 2, scope: !5089)
!5243 = !DILocation(line: 268, column: 3, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 266, column: 25)
!5245 = !DILocation(line: 271, column: 7, scope: !5244)
!5246 = !DILocation(line: 272, column: 3, scope: !5244)
!5247 = !DILocation(line: 274, column: 7, scope: !5244)
!5248 = !DILocation(line: 275, column: 3, scope: !5244)
!5249 = !DILocation(line: 277, column: 3, scope: !5244)
!5250 = !DILocation(line: 280, column: 10, scope: !5089)
!5251 = !DILocation(line: 280, column: 13, scope: !5089)
!5252 = !DILocation(line: 280, column: 2, scope: !5089)
!5253 = !DILocation(line: 283, column: 3, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 280, column: 32)
!5255 = !DILocation(line: 285, column: 7, scope: !5254)
!5256 = !DILocation(line: 286, column: 3, scope: !5254)
!5257 = !DILocation(line: 288, column: 3, scope: !5254)
!5258 = !DILocation(line: 291, column: 10, scope: !5089)
!5259 = !DILocation(line: 291, column: 13, scope: !5089)
!5260 = !DILocation(line: 291, column: 2, scope: !5089)
!5261 = !DILocation(line: 294, column: 3, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 291, column: 29)
!5263 = !DILocation(line: 296, column: 7, scope: !5262)
!5264 = !DILocation(line: 297, column: 3, scope: !5262)
!5265 = !DILocation(line: 299, column: 7, scope: !5262)
!5266 = !DILocation(line: 300, column: 3, scope: !5262)
!5267 = !DILocation(line: 302, column: 7, scope: !5262)
!5268 = !DILocation(line: 303, column: 3, scope: !5262)
!5269 = !DILocation(line: 305, column: 3, scope: !5262)
!5270 = !DILocation(line: 308, column: 10, scope: !5089)
!5271 = !DILocation(line: 308, column: 13, scope: !5089)
!5272 = !DILocation(line: 308, column: 2, scope: !5089)
!5273 = !DILocation(line: 311, column: 3, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 308, column: 24)
!5275 = !DILocation(line: 313, column: 7, scope: !5274)
!5276 = !DILocation(line: 314, column: 3, scope: !5274)
!5277 = !DILocation(line: 316, column: 7, scope: !5274)
!5278 = !DILocation(line: 317, column: 3, scope: !5274)
!5279 = !DILocation(line: 319, column: 7, scope: !5274)
!5280 = !DILocation(line: 320, column: 3, scope: !5274)
!5281 = !DILocation(line: 322, column: 3, scope: !5274)
!5282 = !DILocation(line: 325, column: 23, scope: !5089)
!5283 = !DILocation(line: 325, column: 40, scope: !5089)
!5284 = !DILocation(line: 325, column: 2, scope: !5089)
!5285 = !DILocation(line: 326, column: 23, scope: !5089)
!5286 = !DILocation(line: 326, column: 40, scope: !5089)
!5287 = !DILocation(line: 326, column: 2, scope: !5089)
!5288 = !DILocation(line: 328, column: 6, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 328, column: 6)
!5290 = !DILocation(line: 328, column: 10, scope: !5289)
!5291 = !DILocation(line: 328, column: 14, scope: !5289)
!5292 = !DILocation(line: 328, column: 6, scope: !5089)
!5293 = !DILocation(line: 329, column: 3, scope: !5289)
!5294 = !DILocation(line: 329, column: 7, scope: !5289)
!5295 = !DILocation(line: 329, column: 11, scope: !5289)
!5296 = !DILocation(line: 329, column: 25, scope: !5289)
!5297 = !DILocation(line: 336, column: 6, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 336, column: 6)
!5299 = !DILocation(line: 336, column: 13, scope: !5298)
!5300 = !DILocation(line: 336, column: 20, scope: !5298)
!5301 = !DILocation(line: 336, column: 6, scope: !5089)
!5302 = !DILocation(line: 337, column: 7, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 337, column: 7)
!5304 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 336, column: 30)
!5305 = !DILocation(line: 337, column: 11, scope: !5303)
!5306 = !DILocation(line: 337, column: 15, scope: !5303)
!5307 = !DILocation(line: 337, column: 25, scope: !5303)
!5308 = !DILocation(line: 337, column: 7, scope: !5304)
!5309 = !DILocation(line: 338, column: 4, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 337, column: 37)
!5311 = !DILocation(line: 338, column: 8, scope: !5310)
!5312 = !DILocation(line: 338, column: 12, scope: !5310)
!5313 = !DILocation(line: 338, column: 22, scope: !5310)
!5314 = !DILocation(line: 338, column: 33, scope: !5310)
!5315 = !DILocation(line: 339, column: 8, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 339, column: 8)
!5317 = !DILocation(line: 339, column: 12, scope: !5316)
!5318 = !DILocation(line: 339, column: 16, scope: !5316)
!5319 = !DILocation(line: 339, column: 8, scope: !5310)
!5320 = !DILocation(line: 340, column: 5, scope: !5316)
!5321 = !DILocation(line: 340, column: 9, scope: !5316)
!5322 = !DILocation(line: 340, column: 13, scope: !5316)
!5323 = !DILocation(line: 340, column: 27, scope: !5316)
!5324 = !DILocation(line: 341, column: 3, scope: !5310)
!5325 = !DILocation(line: 342, column: 2, scope: !5304)
!5326 = !DILocation(line: 342, column: 13, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 342, column: 13)
!5328 = !DILocation(line: 342, column: 17, scope: !5327)
!5329 = !DILocation(line: 342, column: 21, scope: !5327)
!5330 = !DILocation(line: 342, column: 31, scope: !5327)
!5331 = !DILocation(line: 342, column: 13, scope: !5298)
!5332 = !DILocation(line: 343, column: 3, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 342, column: 42)
!5334 = !DILocation(line: 343, column: 7, scope: !5333)
!5335 = !DILocation(line: 343, column: 11, scope: !5333)
!5336 = !DILocation(line: 343, column: 21, scope: !5333)
!5337 = !DILocation(line: 343, column: 31, scope: !5333)
!5338 = !DILocation(line: 343, column: 35, scope: !5333)
!5339 = !DILocation(line: 343, column: 42, scope: !5333)
!5340 = !DILocation(line: 344, column: 3, scope: !5333)
!5341 = !DILocation(line: 344, column: 13, scope: !5333)
!5342 = !DILocation(line: 345, column: 17, scope: !5333)
!5343 = !DILocation(line: 345, column: 21, scope: !5333)
!5344 = !DILocation(line: 345, column: 3, scope: !5333)
!5345 = !DILocation(line: 346, column: 2, scope: !5333)
!5346 = !DILocation(line: 348, column: 23, scope: !5089)
!5347 = !DILocation(line: 348, column: 2, scope: !5089)
!5348 = !DILocation(line: 351, column: 6, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 351, column: 6)
!5350 = !DILocation(line: 351, column: 13, scope: !5349)
!5351 = !DILocation(line: 351, column: 20, scope: !5349)
!5352 = !DILocation(line: 351, column: 29, scope: !5349)
!5353 = !DILocation(line: 351, column: 32, scope: !5349)
!5354 = !DILocation(line: 351, column: 36, scope: !5349)
!5355 = !DILocation(line: 351, column: 40, scope: !5349)
!5356 = !DILocation(line: 351, column: 50, scope: !5349)
!5357 = !DILocation(line: 351, column: 60, scope: !5349)
!5358 = !DILocation(line: 351, column: 6, scope: !5089)
!5359 = !DILocation(line: 352, column: 24, scope: !5349)
!5360 = !DILocation(line: 352, column: 3, scope: !5349)
!5361 = !DILocation(line: 354, column: 24, scope: !5349)
!5362 = !DILocation(line: 354, column: 3, scope: !5349)
!5363 = !DILocation(line: 356, column: 2, scope: !5089)
!5364 = !DILocation(line: 357, column: 1, scope: !5089)
!5365 = distinct !DISubprogram(name: "zl10353_get_tune_settings", scope: !3, file: !3, line: 532, type: !538, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!5366 = !DILocalVariable(name: "fe", arg: 1, scope: !5365, file: !3, line: 532, type: !468)
!5367 = !DILocation(line: 532, column: 59, scope: !5365)
!5368 = !DILocalVariable(name: "fe_tune_settings", arg: 2, scope: !5365, file: !3, line: 534, type: !540)
!5369 = !DILocation(line: 534, column: 8, scope: !5365)
!5370 = !DILocation(line: 536, column: 2, scope: !5365)
!5371 = !DILocation(line: 536, column: 20, scope: !5365)
!5372 = !DILocation(line: 536, column: 33, scope: !5365)
!5373 = !DILocation(line: 537, column: 2, scope: !5365)
!5374 = !DILocation(line: 537, column: 20, scope: !5365)
!5375 = !DILocation(line: 537, column: 30, scope: !5365)
!5376 = !DILocation(line: 538, column: 2, scope: !5365)
!5377 = !DILocation(line: 538, column: 20, scope: !5365)
!5378 = !DILocation(line: 538, column: 30, scope: !5365)
!5379 = !DILocation(line: 540, column: 2, scope: !5365)
!5380 = !DILocalVariable(name: "fe", arg: 1, scope: !4358, file: !3, line: 359, type: !468)
!5381 = !DILocation(line: 359, column: 56, scope: !4358)
!5382 = !DILocalVariable(name: "c", arg: 2, scope: !4358, file: !3, line: 360, type: !550)
!5383 = !DILocation(line: 360, column: 39, scope: !4358)
!5384 = !DILocalVariable(name: "state", scope: !4358, file: !3, line: 362, type: !4519)
!5385 = !DILocation(line: 362, column: 24, scope: !4358)
!5386 = !DILocation(line: 362, column: 32, scope: !4358)
!5387 = !DILocation(line: 362, column: 36, scope: !4358)
!5388 = !DILocalVariable(name: "s6", scope: !4358, file: !3, line: 363, type: !349)
!5389 = !DILocation(line: 363, column: 6, scope: !4358)
!5390 = !DILocalVariable(name: "s9", scope: !4358, file: !3, line: 363, type: !349)
!5391 = !DILocation(line: 363, column: 10, scope: !4358)
!5392 = !DILocalVariable(name: "tps", scope: !4358, file: !3, line: 364, type: !387)
!5393 = !DILocation(line: 364, column: 6, scope: !4358)
!5394 = !DILocation(line: 376, column: 29, scope: !4358)
!5395 = !DILocation(line: 376, column: 7, scope: !4358)
!5396 = !DILocation(line: 376, column: 5, scope: !4358)
!5397 = !DILocation(line: 377, column: 29, scope: !4358)
!5398 = !DILocation(line: 377, column: 7, scope: !4358)
!5399 = !DILocation(line: 377, column: 5, scope: !4358)
!5400 = !DILocation(line: 378, column: 6, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 378, column: 6)
!5402 = !DILocation(line: 378, column: 9, scope: !5401)
!5403 = !DILocation(line: 378, column: 13, scope: !5401)
!5404 = !DILocation(line: 378, column: 16, scope: !5401)
!5405 = !DILocation(line: 378, column: 19, scope: !5401)
!5406 = !DILocation(line: 378, column: 6, scope: !4358)
!5407 = !DILocation(line: 379, column: 3, scope: !5401)
!5408 = !DILocation(line: 380, column: 7, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 380, column: 6)
!5410 = !DILocation(line: 380, column: 10, scope: !5409)
!5411 = !DILocation(line: 380, column: 22, scope: !5409)
!5412 = !DILocation(line: 380, column: 27, scope: !5409)
!5413 = !DILocation(line: 380, column: 31, scope: !5409)
!5414 = !DILocation(line: 380, column: 34, scope: !5409)
!5415 = !DILocation(line: 380, column: 46, scope: !5409)
!5416 = !DILocation(line: 380, column: 6, scope: !4358)
!5417 = !DILocation(line: 381, column: 3, scope: !5409)
!5418 = !DILocation(line: 383, column: 30, scope: !4358)
!5419 = !DILocation(line: 383, column: 8, scope: !4358)
!5420 = !DILocation(line: 383, column: 53, scope: !4358)
!5421 = !DILocation(line: 384, column: 30, scope: !4358)
!5422 = !DILocation(line: 384, column: 8, scope: !4358)
!5423 = !DILocation(line: 383, column: 58, scope: !4358)
!5424 = !DILocation(line: 383, column: 6, scope: !4358)
!5425 = !DILocation(line: 386, column: 36, scope: !4358)
!5426 = !DILocation(line: 386, column: 40, scope: !4358)
!5427 = !DILocation(line: 386, column: 46, scope: !4358)
!5428 = !DILocation(line: 386, column: 20, scope: !4358)
!5429 = !DILocation(line: 386, column: 2, scope: !4358)
!5430 = !DILocation(line: 386, column: 5, scope: !4358)
!5431 = !DILocation(line: 386, column: 18, scope: !4358)
!5432 = !DILocation(line: 387, column: 36, scope: !4358)
!5433 = !DILocation(line: 387, column: 40, scope: !4358)
!5434 = !DILocation(line: 387, column: 46, scope: !4358)
!5435 = !DILocation(line: 387, column: 20, scope: !4358)
!5436 = !DILocation(line: 387, column: 2, scope: !4358)
!5437 = !DILocation(line: 387, column: 5, scope: !4358)
!5438 = !DILocation(line: 387, column: 18, scope: !4358)
!5439 = !DILocation(line: 389, column: 11, scope: !4358)
!5440 = !DILocation(line: 389, column: 15, scope: !4358)
!5441 = !DILocation(line: 389, column: 22, scope: !4358)
!5442 = !DILocation(line: 389, column: 2, scope: !4358)
!5443 = !DILocation(line: 391, column: 3, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 389, column: 27)
!5445 = !DILocation(line: 391, column: 6, scope: !5444)
!5446 = !DILocation(line: 391, column: 17, scope: !5444)
!5447 = !DILocation(line: 392, column: 3, scope: !5444)
!5448 = !DILocation(line: 394, column: 3, scope: !5444)
!5449 = !DILocation(line: 394, column: 6, scope: !5444)
!5450 = !DILocation(line: 394, column: 17, scope: !5444)
!5451 = !DILocation(line: 395, column: 3, scope: !5444)
!5452 = !DILocation(line: 397, column: 3, scope: !5444)
!5453 = !DILocation(line: 397, column: 6, scope: !5444)
!5454 = !DILocation(line: 397, column: 17, scope: !5444)
!5455 = !DILocation(line: 398, column: 3, scope: !5444)
!5456 = !DILocation(line: 400, column: 3, scope: !5444)
!5457 = !DILocation(line: 400, column: 6, scope: !5444)
!5458 = !DILocation(line: 400, column: 17, scope: !5444)
!5459 = !DILocation(line: 401, column: 3, scope: !5444)
!5460 = !DILocation(line: 404, column: 26, scope: !4358)
!5461 = !DILocation(line: 404, column: 30, scope: !4358)
!5462 = !DILocation(line: 404, column: 25, scope: !4358)
!5463 = !DILocation(line: 404, column: 2, scope: !4358)
!5464 = !DILocation(line: 404, column: 5, scope: !4358)
!5465 = !DILocation(line: 404, column: 23, scope: !4358)
!5466 = !DILocation(line: 407, column: 11, scope: !4358)
!5467 = !DILocation(line: 407, column: 15, scope: !4358)
!5468 = !DILocation(line: 407, column: 21, scope: !4358)
!5469 = !DILocation(line: 407, column: 2, scope: !4358)
!5470 = !DILocation(line: 409, column: 3, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 407, column: 26)
!5472 = !DILocation(line: 409, column: 6, scope: !5471)
!5473 = !DILocation(line: 409, column: 21, scope: !5471)
!5474 = !DILocation(line: 410, column: 3, scope: !5471)
!5475 = !DILocation(line: 412, column: 3, scope: !5471)
!5476 = !DILocation(line: 412, column: 6, scope: !5471)
!5477 = !DILocation(line: 412, column: 21, scope: !5471)
!5478 = !DILocation(line: 413, column: 3, scope: !5471)
!5479 = !DILocation(line: 415, column: 3, scope: !5471)
!5480 = !DILocation(line: 415, column: 6, scope: !5471)
!5481 = !DILocation(line: 415, column: 21, scope: !5471)
!5482 = !DILocation(line: 416, column: 3, scope: !5471)
!5483 = !DILocation(line: 418, column: 3, scope: !5471)
!5484 = !DILocation(line: 418, column: 6, scope: !5471)
!5485 = !DILocation(line: 418, column: 21, scope: !5471)
!5486 = !DILocation(line: 419, column: 3, scope: !5471)
!5487 = !DILocation(line: 421, column: 3, scope: !5471)
!5488 = !DILocation(line: 421, column: 6, scope: !5471)
!5489 = !DILocation(line: 421, column: 21, scope: !5471)
!5490 = !DILocation(line: 422, column: 3, scope: !5471)
!5491 = !DILocation(line: 425, column: 11, scope: !4358)
!5492 = !DILocation(line: 425, column: 15, scope: !4358)
!5493 = !DILocation(line: 425, column: 22, scope: !4358)
!5494 = !DILocation(line: 425, column: 2, scope: !4358)
!5495 = !DILocation(line: 427, column: 3, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 425, column: 27)
!5497 = !DILocation(line: 427, column: 6, scope: !5496)
!5498 = !DILocation(line: 427, column: 16, scope: !5496)
!5499 = !DILocation(line: 428, column: 3, scope: !5496)
!5500 = !DILocation(line: 430, column: 3, scope: !5496)
!5501 = !DILocation(line: 430, column: 6, scope: !5496)
!5502 = !DILocation(line: 430, column: 16, scope: !5496)
!5503 = !DILocation(line: 431, column: 3, scope: !5496)
!5504 = !DILocation(line: 433, column: 3, scope: !5496)
!5505 = !DILocation(line: 433, column: 6, scope: !5496)
!5506 = !DILocation(line: 433, column: 16, scope: !5496)
!5507 = !DILocation(line: 434, column: 3, scope: !5496)
!5508 = !DILocation(line: 436, column: 3, scope: !5496)
!5509 = !DILocation(line: 436, column: 6, scope: !5496)
!5510 = !DILocation(line: 436, column: 16, scope: !5496)
!5511 = !DILocation(line: 437, column: 3, scope: !5496)
!5512 = !DILocation(line: 439, column: 3, scope: !5496)
!5513 = !DILocation(line: 439, column: 6, scope: !5496)
!5514 = !DILocation(line: 439, column: 16, scope: !5496)
!5515 = !DILocation(line: 440, column: 3, scope: !5496)
!5516 = !DILocation(line: 443, column: 17, scope: !4358)
!5517 = !DILocation(line: 443, column: 24, scope: !4358)
!5518 = !DILocation(line: 443, column: 2, scope: !4358)
!5519 = !DILocation(line: 443, column: 5, scope: !4358)
!5520 = !DILocation(line: 443, column: 15, scope: !4358)
!5521 = !DILocation(line: 444, column: 20, scope: !4358)
!5522 = !DILocation(line: 444, column: 27, scope: !4358)
!5523 = !DILocation(line: 444, column: 2, scope: !4358)
!5524 = !DILocation(line: 444, column: 5, scope: !4358)
!5525 = !DILocation(line: 444, column: 18, scope: !4358)
!5526 = !DILocation(line: 445, column: 2, scope: !4358)
!5527 = !DILocation(line: 445, column: 5, scope: !4358)
!5528 = !DILocation(line: 445, column: 15, scope: !4358)
!5529 = !DILocation(line: 447, column: 2, scope: !4358)
!5530 = !DILocation(line: 448, column: 1, scope: !4358)
!5531 = distinct !DISubprogram(name: "zl10353_read_status", scope: !3, file: !3, line: 450, type: !631, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!5532 = !DILocalVariable(name: "fe", arg: 1, scope: !5531, file: !3, line: 450, type: !468)
!5533 = !DILocation(line: 450, column: 53, scope: !5531)
!5534 = !DILocalVariable(name: "status", arg: 2, scope: !5531, file: !3, line: 450, type: !530)
!5535 = !DILocation(line: 450, column: 73, scope: !5531)
!5536 = !DILocalVariable(name: "state", scope: !5531, file: !3, line: 452, type: !4519)
!5537 = !DILocation(line: 452, column: 24, scope: !5531)
!5538 = !DILocation(line: 452, column: 32, scope: !5531)
!5539 = !DILocation(line: 452, column: 36, scope: !5531)
!5540 = !DILocalVariable(name: "s6", scope: !5531, file: !3, line: 453, type: !349)
!5541 = !DILocation(line: 453, column: 6, scope: !5531)
!5542 = !DILocalVariable(name: "s7", scope: !5531, file: !3, line: 453, type: !349)
!5543 = !DILocation(line: 453, column: 10, scope: !5531)
!5544 = !DILocalVariable(name: "s8", scope: !5531, file: !3, line: 453, type: !349)
!5545 = !DILocation(line: 453, column: 14, scope: !5531)
!5546 = !DILocation(line: 455, column: 34, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 455, column: 6)
!5548 = !DILocation(line: 455, column: 12, scope: !5547)
!5549 = !DILocation(line: 455, column: 10, scope: !5547)
!5550 = !DILocation(line: 455, column: 52, scope: !5547)
!5551 = !DILocation(line: 455, column: 6, scope: !5531)
!5552 = !DILocation(line: 456, column: 3, scope: !5547)
!5553 = !DILocation(line: 457, column: 34, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 457, column: 6)
!5555 = !DILocation(line: 457, column: 12, scope: !5554)
!5556 = !DILocation(line: 457, column: 10, scope: !5554)
!5557 = !DILocation(line: 457, column: 52, scope: !5554)
!5558 = !DILocation(line: 457, column: 6, scope: !5531)
!5559 = !DILocation(line: 458, column: 3, scope: !5554)
!5560 = !DILocation(line: 459, column: 34, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 459, column: 6)
!5562 = !DILocation(line: 459, column: 12, scope: !5561)
!5563 = !DILocation(line: 459, column: 10, scope: !5561)
!5564 = !DILocation(line: 459, column: 52, scope: !5561)
!5565 = !DILocation(line: 459, column: 6, scope: !5531)
!5566 = !DILocation(line: 460, column: 3, scope: !5561)
!5567 = !DILocation(line: 462, column: 3, scope: !5531)
!5568 = !DILocation(line: 462, column: 10, scope: !5531)
!5569 = !DILocation(line: 463, column: 6, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 463, column: 6)
!5571 = !DILocation(line: 463, column: 9, scope: !5570)
!5572 = !DILocation(line: 463, column: 6, scope: !5531)
!5573 = !DILocation(line: 464, column: 4, scope: !5570)
!5574 = !DILocation(line: 464, column: 11, scope: !5570)
!5575 = !DILocation(line: 464, column: 3, scope: !5570)
!5576 = !DILocation(line: 465, column: 6, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 465, column: 6)
!5578 = !DILocation(line: 465, column: 9, scope: !5577)
!5579 = !DILocation(line: 465, column: 6, scope: !5531)
!5580 = !DILocation(line: 466, column: 4, scope: !5577)
!5581 = !DILocation(line: 466, column: 11, scope: !5577)
!5582 = !DILocation(line: 466, column: 3, scope: !5577)
!5583 = !DILocation(line: 467, column: 6, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 467, column: 6)
!5585 = !DILocation(line: 467, column: 9, scope: !5584)
!5586 = !DILocation(line: 467, column: 6, scope: !5531)
!5587 = !DILocation(line: 468, column: 4, scope: !5584)
!5588 = !DILocation(line: 468, column: 11, scope: !5584)
!5589 = !DILocation(line: 468, column: 3, scope: !5584)
!5590 = !DILocation(line: 469, column: 6, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 469, column: 6)
!5592 = !DILocation(line: 469, column: 9, scope: !5591)
!5593 = !DILocation(line: 469, column: 6, scope: !5531)
!5594 = !DILocation(line: 470, column: 4, scope: !5591)
!5595 = !DILocation(line: 470, column: 11, scope: !5591)
!5596 = !DILocation(line: 470, column: 3, scope: !5591)
!5597 = !DILocation(line: 471, column: 6, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 471, column: 6)
!5599 = !DILocation(line: 471, column: 9, scope: !5598)
!5600 = !DILocation(line: 471, column: 6, scope: !5531)
!5601 = !DILocation(line: 472, column: 4, scope: !5598)
!5602 = !DILocation(line: 472, column: 11, scope: !5598)
!5603 = !DILocation(line: 472, column: 3, scope: !5598)
!5604 = !DILocation(line: 474, column: 8, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 474, column: 6)
!5606 = !DILocation(line: 474, column: 7, scope: !5605)
!5607 = !DILocation(line: 474, column: 15, scope: !5605)
!5608 = !DILocation(line: 474, column: 66, scope: !5605)
!5609 = !DILocation(line: 474, column: 6, scope: !5531)
!5610 = !DILocation(line: 476, column: 4, scope: !5605)
!5611 = !DILocation(line: 476, column: 11, scope: !5605)
!5612 = !DILocation(line: 476, column: 3, scope: !5605)
!5613 = !DILocation(line: 478, column: 2, scope: !5531)
!5614 = !DILocation(line: 479, column: 1, scope: !5531)
!5615 = distinct !DISubprogram(name: "zl10353_read_ber", scope: !3, file: !3, line: 481, type: !635, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!5616 = !DILocalVariable(name: "fe", arg: 1, scope: !5615, file: !3, line: 481, type: !468)
!5617 = !DILocation(line: 481, column: 50, scope: !5615)
!5618 = !DILocalVariable(name: "ber", arg: 2, scope: !5615, file: !3, line: 481, type: !637)
!5619 = !DILocation(line: 481, column: 59, scope: !5615)
!5620 = !DILocalVariable(name: "state", scope: !5615, file: !3, line: 483, type: !4519)
!5621 = !DILocation(line: 483, column: 24, scope: !5615)
!5622 = !DILocation(line: 483, column: 32, scope: !5615)
!5623 = !DILocation(line: 483, column: 36, scope: !5615)
!5624 = !DILocation(line: 485, column: 31, scope: !5615)
!5625 = !DILocation(line: 485, column: 9, scope: !5615)
!5626 = !DILocation(line: 485, column: 52, scope: !5615)
!5627 = !DILocation(line: 486, column: 31, scope: !5615)
!5628 = !DILocation(line: 486, column: 9, scope: !5615)
!5629 = !DILocation(line: 486, column: 52, scope: !5615)
!5630 = !DILocation(line: 485, column: 58, scope: !5615)
!5631 = !DILocation(line: 487, column: 31, scope: !5615)
!5632 = !DILocation(line: 487, column: 9, scope: !5615)
!5633 = !DILocation(line: 486, column: 57, scope: !5615)
!5634 = !DILocation(line: 485, column: 3, scope: !5615)
!5635 = !DILocation(line: 485, column: 7, scope: !5615)
!5636 = !DILocation(line: 489, column: 2, scope: !5615)
!5637 = distinct !DISubprogram(name: "zl10353_read_signal_strength", scope: !3, file: !3, line: 492, type: !640, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!5638 = !DILocalVariable(name: "fe", arg: 1, scope: !5637, file: !3, line: 492, type: !468)
!5639 = !DILocation(line: 492, column: 62, scope: !5637)
!5640 = !DILocalVariable(name: "strength", arg: 2, scope: !5637, file: !3, line: 492, type: !642)
!5641 = !DILocation(line: 492, column: 71, scope: !5637)
!5642 = !DILocalVariable(name: "state", scope: !5637, file: !3, line: 494, type: !4519)
!5643 = !DILocation(line: 494, column: 24, scope: !5637)
!5644 = !DILocation(line: 494, column: 32, scope: !5637)
!5645 = !DILocation(line: 494, column: 36, scope: !5637)
!5646 = !DILocalVariable(name: "signal", scope: !5637, file: !3, line: 496, type: !387)
!5647 = !DILocation(line: 496, column: 6, scope: !5637)
!5648 = !DILocation(line: 496, column: 37, scope: !5637)
!5649 = !DILocation(line: 496, column: 15, scope: !5637)
!5650 = !DILocation(line: 496, column: 56, scope: !5637)
!5651 = !DILocation(line: 497, column: 30, scope: !5637)
!5652 = !DILocation(line: 497, column: 8, scope: !5637)
!5653 = !DILocation(line: 497, column: 49, scope: !5637)
!5654 = !DILocation(line: 496, column: 62, scope: !5637)
!5655 = !DILocation(line: 497, column: 54, scope: !5637)
!5656 = !DILocation(line: 499, column: 15, scope: !5637)
!5657 = !DILocation(line: 499, column: 14, scope: !5637)
!5658 = !DILocation(line: 499, column: 3, scope: !5637)
!5659 = !DILocation(line: 499, column: 12, scope: !5637)
!5660 = !DILocation(line: 501, column: 2, scope: !5637)
!5661 = distinct !DISubprogram(name: "zl10353_read_snr", scope: !3, file: !3, line: 504, type: !640, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!5662 = !DILocalVariable(name: "fe", arg: 1, scope: !5661, file: !3, line: 504, type: !468)
!5663 = !DILocation(line: 504, column: 50, scope: !5661)
!5664 = !DILocalVariable(name: "snr", arg: 2, scope: !5661, file: !3, line: 504, type: !642)
!5665 = !DILocation(line: 504, column: 59, scope: !5661)
!5666 = !DILocalVariable(name: "state", scope: !5661, file: !3, line: 506, type: !4519)
!5667 = !DILocation(line: 506, column: 24, scope: !5661)
!5668 = !DILocation(line: 506, column: 32, scope: !5661)
!5669 = !DILocation(line: 506, column: 36, scope: !5661)
!5670 = !DILocalVariable(name: "_snr", scope: !5661, file: !3, line: 507, type: !341)
!5671 = !DILocation(line: 507, column: 5, scope: !5661)
!5672 = !DILocation(line: 509, column: 6, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 509, column: 6)
!5674 = !DILocation(line: 509, column: 6, scope: !5661)
!5675 = !DILocation(line: 510, column: 21, scope: !5673)
!5676 = !DILocation(line: 510, column: 3, scope: !5673)
!5677 = !DILocation(line: 512, column: 31, scope: !5661)
!5678 = !DILocation(line: 512, column: 9, scope: !5661)
!5679 = !DILocation(line: 512, column: 7, scope: !5661)
!5680 = !DILocation(line: 513, column: 14, scope: !5661)
!5681 = !DILocation(line: 513, column: 12, scope: !5661)
!5682 = !DILocation(line: 513, column: 19, scope: !5661)
!5683 = !DILocation(line: 513, column: 9, scope: !5661)
!5684 = !DILocation(line: 513, column: 3, scope: !5661)
!5685 = !DILocation(line: 513, column: 7, scope: !5661)
!5686 = !DILocation(line: 515, column: 2, scope: !5661)
!5687 = distinct !DISubprogram(name: "zl10353_read_ucblocks", scope: !3, file: !3, line: 518, type: !635, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!5688 = !DILocalVariable(name: "fe", arg: 1, scope: !5687, file: !3, line: 518, type: !468)
!5689 = !DILocation(line: 518, column: 55, scope: !5687)
!5690 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !5687, file: !3, line: 518, type: !637)
!5691 = !DILocation(line: 518, column: 64, scope: !5687)
!5692 = !DILocalVariable(name: "state", scope: !5687, file: !3, line: 520, type: !4519)
!5693 = !DILocation(line: 520, column: 24, scope: !5687)
!5694 = !DILocation(line: 520, column: 32, scope: !5687)
!5695 = !DILocation(line: 520, column: 36, scope: !5687)
!5696 = !DILocalVariable(name: "ubl", scope: !5687, file: !3, line: 521, type: !496)
!5697 = !DILocation(line: 521, column: 6, scope: !5687)
!5698 = !DILocation(line: 523, column: 30, scope: !5687)
!5699 = !DILocation(line: 523, column: 8, scope: !5687)
!5700 = !DILocation(line: 523, column: 47, scope: !5687)
!5701 = !DILocation(line: 524, column: 30, scope: !5687)
!5702 = !DILocation(line: 524, column: 8, scope: !5687)
!5703 = !DILocation(line: 523, column: 52, scope: !5687)
!5704 = !DILocation(line: 523, column: 6, scope: !5687)
!5705 = !DILocation(line: 526, column: 21, scope: !5687)
!5706 = !DILocation(line: 526, column: 2, scope: !5687)
!5707 = !DILocation(line: 526, column: 9, scope: !5687)
!5708 = !DILocation(line: 526, column: 18, scope: !5687)
!5709 = !DILocation(line: 527, column: 14, scope: !5687)
!5710 = !DILocation(line: 527, column: 21, scope: !5687)
!5711 = !DILocation(line: 527, column: 3, scope: !5687)
!5712 = !DILocation(line: 527, column: 12, scope: !5687)
!5713 = !DILocation(line: 529, column: 2, scope: !5687)
!5714 = distinct !DISubprogram(name: "zl10353_i2c_gate_ctrl", scope: !3, file: !3, line: 569, type: !693, scopeLine: 570, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!5715 = !DILocalVariable(name: "fe", arg: 1, scope: !5714, file: !3, line: 569, type: !468)
!5716 = !DILocation(line: 569, column: 55, scope: !5714)
!5717 = !DILocalVariable(name: "enable", arg: 2, scope: !5714, file: !3, line: 569, type: !349)
!5718 = !DILocation(line: 569, column: 63, scope: !5714)
!5719 = !DILocalVariable(name: "state", scope: !5714, file: !3, line: 571, type: !4519)
!5720 = !DILocation(line: 571, column: 24, scope: !5714)
!5721 = !DILocation(line: 571, column: 32, scope: !5714)
!5722 = !DILocation(line: 571, column: 36, scope: !5714)
!5723 = !DILocalVariable(name: "val", scope: !5714, file: !3, line: 572, type: !341)
!5724 = !DILocation(line: 572, column: 5, scope: !5714)
!5725 = !DILocation(line: 574, column: 6, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5714, file: !3, line: 574, column: 6)
!5727 = !DILocation(line: 574, column: 13, scope: !5726)
!5728 = !DILocation(line: 574, column: 20, scope: !5726)
!5729 = !DILocation(line: 574, column: 6, scope: !5714)
!5730 = !DILocation(line: 577, column: 3, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 574, column: 43)
!5732 = !DILocation(line: 580, column: 6, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5714, file: !3, line: 580, column: 6)
!5734 = !DILocation(line: 580, column: 6, scope: !5714)
!5735 = !DILocation(line: 581, column: 7, scope: !5733)
!5736 = !DILocation(line: 581, column: 3, scope: !5733)
!5737 = !DILocation(line: 583, column: 30, scope: !5714)
!5738 = !DILocation(line: 583, column: 40, scope: !5714)
!5739 = !DILocation(line: 583, column: 9, scope: !5714)
!5740 = !DILocation(line: 583, column: 2, scope: !5714)
!5741 = !DILocation(line: 584, column: 1, scope: !5714)
!5742 = distinct !DISubprogram(name: "zl10353_dump_regs", scope: !3, file: !3, line: 86, type: !511, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!5743 = !DILocalVariable(name: "fe", arg: 1, scope: !5742, file: !3, line: 86, type: !468)
!5744 = !DILocation(line: 86, column: 52, scope: !5742)
!5745 = !DILocalVariable(name: "state", scope: !5742, file: !3, line: 88, type: !4519)
!5746 = !DILocation(line: 88, column: 24, scope: !5742)
!5747 = !DILocation(line: 88, column: 32, scope: !5742)
!5748 = !DILocation(line: 88, column: 36, scope: !5742)
!5749 = !DILocalVariable(name: "ret", scope: !5742, file: !3, line: 89, type: !349)
!5750 = !DILocation(line: 89, column: 6, scope: !5742)
!5751 = !DILocalVariable(name: "reg", scope: !5742, file: !3, line: 90, type: !341)
!5752 = !DILocation(line: 90, column: 5, scope: !5742)
!5753 = !DILocation(line: 93, column: 11, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 93, column: 2)
!5755 = !DILocation(line: 93, column: 7, scope: !5754)
!5756 = !DILocation(line: 94, column: 7, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5758, file: !3, line: 94, column: 7)
!5758 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 93, column: 25)
!5759 = distinct !DILexicalBlock(scope: !5754, file: !3, line: 93, column: 2)
!5760 = !DILocation(line: 94, column: 11, scope: !5757)
!5761 = !DILocation(line: 94, column: 16, scope: !5757)
!5762 = !DILocation(line: 94, column: 7, scope: !5758)
!5763 = !DILocation(line: 95, column: 8, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5765, file: !3, line: 95, column: 8)
!5765 = distinct !DILexicalBlock(scope: !5757, file: !3, line: 94, column: 22)
!5766 = !DILocation(line: 95, column: 8, scope: !5765)
!5767 = !DILocation(line: 96, column: 5, scope: !5764)
!5768 = !DILocation(line: 97, column: 31, scope: !5765)
!5769 = !DILocation(line: 97, column: 4, scope: !5765)
!5770 = !DILocation(line: 98, column: 3, scope: !5765)
!5771 = !DILocation(line: 99, column: 31, scope: !5758)
!5772 = !DILocation(line: 99, column: 38, scope: !5758)
!5773 = !DILocation(line: 99, column: 9, scope: !5758)
!5774 = !DILocation(line: 99, column: 7, scope: !5758)
!5775 = !DILocation(line: 100, column: 7, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5758, file: !3, line: 100, column: 7)
!5777 = !DILocation(line: 100, column: 11, scope: !5776)
!5778 = !DILocation(line: 100, column: 7, scope: !5758)
!5779 = !DILocation(line: 101, column: 34, scope: !5776)
!5780 = !DILocation(line: 101, column: 30, scope: !5776)
!5781 = !DILocation(line: 101, column: 4, scope: !5776)
!5782 = !DILocation(line: 103, column: 4, scope: !5776)
!5783 = !DILocation(line: 104, column: 7, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5758, file: !3, line: 104, column: 7)
!5785 = !DILocation(line: 104, column: 11, scope: !5784)
!5786 = !DILocation(line: 104, column: 7, scope: !5758)
!5787 = !DILocation(line: 105, column: 4, scope: !5784)
!5788 = !DILocation(line: 106, column: 2, scope: !5758)
!5789 = !DILocation(line: 93, column: 21, scope: !5759)
!5790 = !DILocation(line: 93, column: 2, scope: !5759)
!5791 = distinct !{!5791, !5792, !5793}
!5792 = !DILocation(line: 93, column: 2, scope: !5754)
!5793 = !DILocation(line: 106, column: 2, scope: !5754)
!5794 = !DILocation(line: 107, column: 2, scope: !5742)
!5795 = !DILocation(line: 108, column: 1, scope: !5742)
!5796 = distinct !DISubprogram(name: "zl10353_single_write", scope: !3, file: !3, line: 39, type: !5797, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!5797 = !DISubroutineType(types: !5798)
!5798 = !{!349, !468, !341, !341}
!5799 = !DILocalVariable(name: "fe", arg: 1, scope: !5796, file: !3, line: 39, type: !468)
!5800 = !DILocation(line: 39, column: 54, scope: !5796)
!5801 = !DILocalVariable(name: "reg", arg: 2, scope: !5796, file: !3, line: 39, type: !341)
!5802 = !DILocation(line: 39, column: 61, scope: !5796)
!5803 = !DILocalVariable(name: "val", arg: 3, scope: !5796, file: !3, line: 39, type: !341)
!5804 = !DILocation(line: 39, column: 69, scope: !5796)
!5805 = !DILocalVariable(name: "state", scope: !5796, file: !3, line: 41, type: !4519)
!5806 = !DILocation(line: 41, column: 24, scope: !5796)
!5807 = !DILocation(line: 41, column: 32, scope: !5796)
!5808 = !DILocation(line: 41, column: 36, scope: !5796)
!5809 = !DILocalVariable(name: "buf", scope: !5796, file: !3, line: 42, type: !5810)
!5810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 16, elements: !2029)
!5811 = !DILocation(line: 42, column: 5, scope: !5796)
!5812 = !DILocation(line: 42, column: 14, scope: !5796)
!5813 = !DILocation(line: 42, column: 16, scope: !5796)
!5814 = !DILocation(line: 42, column: 21, scope: !5796)
!5815 = !DILocalVariable(name: "msg", scope: !5796, file: !3, line: 43, type: !4408)
!5816 = !DILocation(line: 43, column: 17, scope: !5796)
!5817 = !DILocation(line: 43, column: 23, scope: !5796)
!5818 = !DILocation(line: 43, column: 33, scope: !5796)
!5819 = !DILocation(line: 43, column: 40, scope: !5796)
!5820 = !DILocation(line: 43, column: 47, scope: !5796)
!5821 = !DILocation(line: 44, column: 18, scope: !5796)
!5822 = !DILocalVariable(name: "err", scope: !5796, file: !3, line: 45, type: !349)
!5823 = !DILocation(line: 45, column: 6, scope: !5796)
!5824 = !DILocation(line: 45, column: 25, scope: !5796)
!5825 = !DILocation(line: 45, column: 32, scope: !5796)
!5826 = !DILocation(line: 45, column: 12, scope: !5796)
!5827 = !DILocation(line: 46, column: 6, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5796, file: !3, line: 46, column: 6)
!5829 = !DILocation(line: 46, column: 10, scope: !5828)
!5830 = !DILocation(line: 46, column: 6, scope: !5796)
!5831 = !DILocation(line: 47, column: 59, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 46, column: 16)
!5833 = !DILocation(line: 47, column: 64, scope: !5832)
!5834 = !DILocation(line: 47, column: 3, scope: !5832)
!5835 = !DILocation(line: 48, column: 10, scope: !5832)
!5836 = !DILocation(line: 48, column: 3, scope: !5832)
!5837 = !DILocation(line: 50, column: 2, scope: !5796)
!5838 = !DILocation(line: 51, column: 1, scope: !5796)
!5839 = distinct !DISubprogram(name: "zl10353_calc_nominal_rate", scope: !3, file: !3, line: 110, type: !5840, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!5840 = !DISubroutineType(types: !5841)
!5841 = !{null, !468, !496, !642}
!5842 = !DILocalVariable(name: "fe", arg: 1, scope: !5839, file: !3, line: 110, type: !468)
!5843 = !DILocation(line: 110, column: 60, scope: !5839)
!5844 = !DILocalVariable(name: "bandwidth", arg: 2, scope: !5839, file: !3, line: 111, type: !496)
!5845 = !DILocation(line: 111, column: 15, scope: !5839)
!5846 = !DILocalVariable(name: "nominal_rate", arg: 3, scope: !5839, file: !3, line: 112, type: !642)
!5847 = !DILocation(line: 112, column: 16, scope: !5839)
!5848 = !DILocalVariable(name: "state", scope: !5839, file: !3, line: 114, type: !4519)
!5849 = !DILocation(line: 114, column: 24, scope: !5839)
!5850 = !DILocation(line: 114, column: 32, scope: !5839)
!5851 = !DILocation(line: 114, column: 36, scope: !5839)
!5852 = !DILocalVariable(name: "adc_clock", scope: !5839, file: !3, line: 115, type: !496)
!5853 = !DILocation(line: 115, column: 6, scope: !5839)
!5854 = !DILocalVariable(name: "value", scope: !5839, file: !3, line: 116, type: !346)
!5855 = !DILocation(line: 116, column: 6, scope: !5839)
!5856 = !DILocalVariable(name: "bw", scope: !5839, file: !3, line: 117, type: !341)
!5857 = !DILocation(line: 117, column: 5, scope: !5839)
!5858 = !DILocation(line: 117, column: 10, scope: !5839)
!5859 = !DILocation(line: 117, column: 20, scope: !5839)
!5860 = !DILocation(line: 119, column: 6, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 119, column: 6)
!5862 = !DILocation(line: 119, column: 13, scope: !5861)
!5863 = !DILocation(line: 119, column: 20, scope: !5861)
!5864 = !DILocation(line: 119, column: 6, scope: !5839)
!5865 = !DILocation(line: 120, column: 15, scope: !5861)
!5866 = !DILocation(line: 120, column: 22, scope: !5861)
!5867 = !DILocation(line: 120, column: 29, scope: !5861)
!5868 = !DILocation(line: 120, column: 13, scope: !5861)
!5869 = !DILocation(line: 120, column: 3, scope: !5861)
!5870 = !DILocation(line: 122, column: 8, scope: !5839)
!5871 = !DILocation(line: 123, column: 11, scope: !5839)
!5872 = !DILocation(line: 123, column: 16, scope: !5839)
!5873 = !DILocation(line: 123, column: 14, scope: !5839)
!5874 = !DILocation(line: 123, column: 25, scope: !5839)
!5875 = !DILocation(line: 123, column: 35, scope: !5839)
!5876 = !DILocation(line: 123, column: 23, scope: !5839)
!5877 = !DILocation(line: 123, column: 8, scope: !5839)
!5878 = !DILocation(line: 124, column: 26, scope: !5839)
!5879 = !DILocation(line: 124, column: 33, scope: !5839)
!5880 = !DILocation(line: 124, column: 18, scope: !5839)
!5881 = !DILocation(line: 124, column: 3, scope: !5839)
!5882 = !DILocation(line: 124, column: 16, scope: !5839)
!5883 = !DILocation(line: 126, column: 2, scope: !5839)
!5884 = !DILocation(line: 126, column: 2, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 126, column: 2)
!5886 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 126, column: 2)
!5887 = !DILocation(line: 126, column: 2, scope: !5886)
!5888 = !DILocation(line: 128, column: 1, scope: !5839)
!5889 = distinct !DISubprogram(name: "zl10353_calc_input_freq", scope: !3, file: !3, line: 130, type: !5890, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!5890 = !DISubroutineType(types: !5891)
!5891 = !{null, !468, !642}
!5892 = !DILocalVariable(name: "fe", arg: 1, scope: !5889, file: !3, line: 130, type: !468)
!5893 = !DILocation(line: 130, column: 58, scope: !5889)
!5894 = !DILocalVariable(name: "input_freq", arg: 2, scope: !5889, file: !3, line: 131, type: !642)
!5895 = !DILocation(line: 131, column: 14, scope: !5889)
!5896 = !DILocalVariable(name: "state", scope: !5889, file: !3, line: 133, type: !4519)
!5897 = !DILocation(line: 133, column: 24, scope: !5889)
!5898 = !DILocation(line: 133, column: 32, scope: !5889)
!5899 = !DILocation(line: 133, column: 36, scope: !5889)
!5900 = !DILocalVariable(name: "adc_clock", scope: !5889, file: !3, line: 134, type: !496)
!5901 = !DILocation(line: 134, column: 6, scope: !5889)
!5902 = !DILocalVariable(name: "if2", scope: !5889, file: !3, line: 135, type: !349)
!5903 = !DILocation(line: 135, column: 6, scope: !5889)
!5904 = !DILocalVariable(name: "ife", scope: !5889, file: !3, line: 136, type: !349)
!5905 = !DILocation(line: 136, column: 6, scope: !5889)
!5906 = !DILocalVariable(name: "value", scope: !5889, file: !3, line: 137, type: !346)
!5907 = !DILocation(line: 137, column: 6, scope: !5889)
!5908 = !DILocation(line: 139, column: 6, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 139, column: 6)
!5910 = !DILocation(line: 139, column: 13, scope: !5909)
!5911 = !DILocation(line: 139, column: 20, scope: !5909)
!5912 = !DILocation(line: 139, column: 6, scope: !5889)
!5913 = !DILocation(line: 140, column: 15, scope: !5909)
!5914 = !DILocation(line: 140, column: 22, scope: !5909)
!5915 = !DILocation(line: 140, column: 29, scope: !5909)
!5916 = !DILocation(line: 140, column: 13, scope: !5909)
!5917 = !DILocation(line: 140, column: 3, scope: !5909)
!5918 = !DILocation(line: 141, column: 6, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 141, column: 6)
!5920 = !DILocation(line: 141, column: 13, scope: !5919)
!5921 = !DILocation(line: 141, column: 20, scope: !5919)
!5922 = !DILocation(line: 141, column: 6, scope: !5889)
!5923 = !DILocation(line: 142, column: 9, scope: !5919)
!5924 = !DILocation(line: 142, column: 16, scope: !5919)
!5925 = !DILocation(line: 142, column: 23, scope: !5919)
!5926 = !DILocation(line: 142, column: 7, scope: !5919)
!5927 = !DILocation(line: 142, column: 3, scope: !5919)
!5928 = !DILocation(line: 144, column: 6, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 144, column: 6)
!5930 = !DILocation(line: 144, column: 19, scope: !5929)
!5931 = !DILocation(line: 144, column: 23, scope: !5929)
!5932 = !DILocation(line: 144, column: 16, scope: !5929)
!5933 = !DILocation(line: 144, column: 6, scope: !5889)
!5934 = !DILocation(line: 145, column: 9, scope: !5929)
!5935 = !DILocation(line: 145, column: 7, scope: !5929)
!5936 = !DILocation(line: 145, column: 3, scope: !5929)
!5937 = !DILocation(line: 147, column: 9, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 146, column: 7)
!5939 = !DILocation(line: 147, column: 22, scope: !5938)
!5940 = !DILocation(line: 147, column: 28, scope: !5938)
!5941 = !DILocation(line: 147, column: 26, scope: !5938)
!5942 = !DILocation(line: 147, column: 19, scope: !5938)
!5943 = !DILocation(line: 147, column: 7, scope: !5938)
!5944 = !DILocation(line: 148, column: 7, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5938, file: !3, line: 148, column: 7)
!5946 = !DILocation(line: 148, column: 13, scope: !5945)
!5947 = !DILocation(line: 148, column: 23, scope: !5945)
!5948 = !DILocation(line: 148, column: 11, scope: !5945)
!5949 = !DILocation(line: 148, column: 7, scope: !5938)
!5950 = !DILocation(line: 149, column: 10, scope: !5945)
!5951 = !DILocation(line: 149, column: 22, scope: !5945)
!5952 = !DILocation(line: 149, column: 20, scope: !5945)
!5953 = !DILocation(line: 149, column: 8, scope: !5945)
!5954 = !DILocation(line: 149, column: 4, scope: !5945)
!5955 = !DILocation(line: 151, column: 31, scope: !5889)
!5956 = !DILocation(line: 151, column: 29, scope: !5889)
!5957 = !DILocation(line: 151, column: 37, scope: !5889)
!5958 = !DILocation(line: 151, column: 47, scope: !5889)
!5959 = !DILocation(line: 151, column: 35, scope: !5889)
!5960 = !DILocation(line: 151, column: 52, scope: !5889)
!5961 = !DILocation(line: 151, column: 10, scope: !5889)
!5962 = !DILocation(line: 151, column: 8, scope: !5889)
!5963 = !DILocation(line: 152, column: 17, scope: !5889)
!5964 = !DILocation(line: 152, column: 16, scope: !5889)
!5965 = !DILocation(line: 152, column: 3, scope: !5889)
!5966 = !DILocation(line: 152, column: 14, scope: !5889)
!5967 = !DILocation(line: 154, column: 2, scope: !5889)
!5968 = !DILocation(line: 154, column: 2, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 154, column: 2)
!5970 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 154, column: 2)
!5971 = !DILocation(line: 154, column: 2, scope: !5970)
!5972 = !DILocation(line: 156, column: 1, scope: !5889)
!5973 = distinct !DISubprogram(name: "div_u64", scope: !5974, file: !5974, line: 124, type: !5975, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!5974 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/lizy2001/genbc/linux")
!5975 = !DISubroutineType(types: !5976)
!5976 = !{!346, !346, !496}
!5977 = !DILocalVariable(name: "dividend", arg: 1, scope: !5973, file: !5974, line: 124, type: !346)
!5978 = !DILocation(line: 124, column: 31, scope: !5973)
!5979 = !DILocalVariable(name: "divisor", arg: 2, scope: !5973, file: !5974, line: 124, type: !496)
!5980 = !DILocation(line: 124, column: 45, scope: !5973)
!5981 = !DILocalVariable(name: "remainder", scope: !5973, file: !5974, line: 126, type: !496)
!5982 = !DILocation(line: 126, column: 6, scope: !5973)
!5983 = !DILocation(line: 127, column: 21, scope: !5973)
!5984 = !DILocation(line: 127, column: 31, scope: !5973)
!5985 = !DILocation(line: 127, column: 9, scope: !5973)
!5986 = !DILocation(line: 127, column: 2, scope: !5973)
!5987 = distinct !DISubprogram(name: "div_u64_rem", scope: !5974, file: !5974, line: 25, type: !5988, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!5988 = !DISubroutineType(types: !5989)
!5989 = !{!346, !346, !496, !637}
!5990 = !DILocalVariable(name: "dividend", arg: 1, scope: !5987, file: !5974, line: 25, type: !346)
!5991 = !DILocation(line: 25, column: 35, scope: !5987)
!5992 = !DILocalVariable(name: "divisor", arg: 2, scope: !5987, file: !5974, line: 25, type: !496)
!5993 = !DILocation(line: 25, column: 49, scope: !5987)
!5994 = !DILocalVariable(name: "remainder", arg: 3, scope: !5987, file: !5974, line: 25, type: !637)
!5995 = !DILocation(line: 25, column: 63, scope: !5987)
!5996 = !DILocation(line: 27, column: 15, scope: !5987)
!5997 = !DILocation(line: 27, column: 26, scope: !5987)
!5998 = !DILocation(line: 27, column: 24, scope: !5987)
!5999 = !DILocation(line: 27, column: 3, scope: !5987)
!6000 = !DILocation(line: 27, column: 13, scope: !5987)
!6001 = !DILocation(line: 28, column: 9, scope: !5987)
!6002 = !DILocation(line: 28, column: 20, scope: !5987)
!6003 = !DILocation(line: 28, column: 18, scope: !5987)
!6004 = !DILocation(line: 28, column: 2, scope: !5987)
