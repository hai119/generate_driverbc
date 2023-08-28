; ModuleID = '../bcout/drivers/media/dvb-frontends/mt352.llvm.bc'
source_filename = "drivers/media/dvb-frontends/mt352.c"
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
%struct.mt352_config = type { i8, i32, i32, i32, i32 (%struct.dvb_frontend*)* }
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
%struct.mt352_state = type { %struct.i2c_adapter*, %struct.dvb_frontend, %struct.mt352_config }

@mt352_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Zarlink MT352 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 -1071960402 }, [8 x i8] c"\03\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @mt352_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @mt352_init, i32 (%struct.dvb_frontend*)* @mt352_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* @_mt352_write, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @mt352_set_parameters, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @mt352_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @mt352_get_parameters, i32 (%struct.dvb_frontend*, i32*)* @mt352_read_status, i32 (%struct.dvb_frontend*, i32*)* @mt352_read_ber, i32 (%struct.dvb_frontend*, i16*)* @mt352_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @mt352_read_snr, i32 (%struct.dvb_frontend*, i32*)* @mt352_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !0
@__param_str_debug = internal constant [12 x i8] c"mt352.debug\00", align 1, !dbg !4396
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !480
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !378
@__UNIQUE_ID_debugtype220 = internal constant [25 x i8] c"mt352.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !450
@__UNIQUE_ID_debug221 = internal constant [63 x i8] c"mt352.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1, !dbg !455
@__UNIQUE_ID_description222 = internal constant [57 x i8] c"mt352.description=Zarlink MT352 DVB-T Demodulator driver\00", section ".modinfo", align 1, !dbg !460
@__UNIQUE_ID_author223 = internal constant [60 x i8] c"mt352.author=Holger Waechtler, Daniel Mack, Antonio Mancuso\00", section ".modinfo", align 1, !dbg !465
@__UNIQUE_ID_file224 = internal constant [45 x i8] c"mt352.file=drivers/media/dvb-frontends/mt352\00", section ".modinfo", align 1, !dbg !470
@__UNIQUE_ID_license225 = internal constant [18 x i8] c"mt352.license=GPL\00", section ".modinfo", align 1, !dbg !475
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: readreg error (reg=%d, ret==%i)\0A\00", align 1
@__func__.mt352_read_register = private unnamed_addr constant [20 x i8] c"mt352_read_register\00", align 1
@mt352_init.mt352_reset_attach = internal global [2 x i8] c"P\C0", align 1, !dbg !482
@.str.2 = private unnamed_addr constant [20 x i8] c"\017mt352: %s: hello\0A\00", align 1
@__func__.mt352_init = private unnamed_addr constant [11 x i8] c"mt352_init\00", align 1
@mt352_sleep.mt352_softdown = internal global [3 x i8] c"\89 \08", align 1, !dbg !4382
@.str.3 = private unnamed_addr constant [44 x i8] c"mt352_write() to reg %x failed (err = %d)!\0A\00", align 1
@mt352_set_parameters.tuner_go = internal global [2 x i8] c"]\01", align 1, !dbg !4386
@mt352_set_parameters.fsm_go = internal global [2 x i8] c"^\01", align 1, !dbg !4390
@.str.4 = private unnamed_addr constant [42 x i8] c"\017mt352: %s: bw %d, adc_clock %d => 0x%x\0A\00", align 1
@__func__.mt352_calc_nominal_rate = private unnamed_addr constant [24 x i8] c"mt352_calc_nominal_rate\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"\017mt352: %s: if2 %d, ife %d, adc_clock %d => %d / 0x%x\0A\00", align 1
@__func__.mt352_calc_input_freq = private unnamed_addr constant [22 x i8] c"mt352_calc_input_freq\00", align 1
@mt352_get_parameters.tps_fec_to_api = internal constant [8 x i8] c"\01\02\03\05\07\09\09\09", align 1, !dbg !4392
@llvm.used = appending global [7 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__UNIQUE_ID_author223, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_file224, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__UNIQUE_ID_license225, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @mt352_attach(%struct.mt352_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4405 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.mt352_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.mt352_state*, align 8
  store %struct.mt352_config* %config, %struct.mt352_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mt352_config** %config.addr, metadata !4540, metadata !DIExpression()), !dbg !4541
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4542, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.declare(metadata %struct.mt352_state** %state, metadata !4544, metadata !DIExpression()), !dbg !4551
  store %struct.mt352_state* null, %struct.mt352_state** %state, align 8, !dbg !4551
  %call = call i8* @kzalloc(i64 1312, i32 3264) #8, !dbg !4552
  %0 = bitcast i8* %call to %struct.mt352_state*, !dbg !4552
  store %struct.mt352_state* %0, %struct.mt352_state** %state, align 8, !dbg !4553
  %1 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !4554
  %cmp = icmp eq %struct.mt352_state* %1, null, !dbg !4556
  br i1 %cmp, label %if.then, label %if.end, !dbg !4557

if.then:                                          ; preds = %entry
  br label %error, !dbg !4558

if.end:                                           ; preds = %entry
  %2 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4559
  %3 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !4560
  %i2c1 = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %3, i32 0, i32 0, !dbg !4561
  store %struct.i2c_adapter* %2, %struct.i2c_adapter** %i2c1, align 8, !dbg !4562
  %4 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !4563
  %config2 = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %4, i32 0, i32 2, !dbg !4564
  %5 = bitcast %struct.mt352_config* %config2 to i8*, !dbg !4565
  %6 = load %struct.mt352_config*, %struct.mt352_config** %config.addr, align 8, !dbg !4566
  %7 = bitcast %struct.mt352_config* %6 to i8*, !dbg !4565
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %7, i64 24, i1 false), !dbg !4565
  %8 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !4567
  %call3 = call i32 @mt352_read_register(%struct.mt352_state* %8, i8 zeroext 127) #8, !dbg !4569
  %cmp4 = icmp ne i32 %call3, 19, !dbg !4570
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4571

if.then5:                                         ; preds = %if.end
  br label %error, !dbg !4572

if.end6:                                          ; preds = %if.end
  %9 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !4573
  %frontend = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %9, i32 0, i32 1, !dbg !4574
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4575
  %10 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4576
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @mt352_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4576
  %11 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !4577
  %12 = bitcast %struct.mt352_state* %11 to i8*, !dbg !4577
  %13 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !4578
  %frontend7 = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %13, i32 0, i32 1, !dbg !4579
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend7, i32 0, i32 3, !dbg !4580
  store i8* %12, i8** %demodulator_priv, align 8, !dbg !4581
  %14 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !4582
  %frontend8 = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %14, i32 0, i32 1, !dbg !4583
  store %struct.dvb_frontend* %frontend8, %struct.dvb_frontend** %retval, align 8, !dbg !4584
  br label %return, !dbg !4584

error:                                            ; preds = %if.then5, %if.then
  call void @llvm.dbg.label(metadata !4585), !dbg !4586
  %15 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !4587
  %16 = bitcast %struct.mt352_state* %15 to i8*, !dbg !4587
  call void @kfree(i8* %16) #8, !dbg !4588
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4589
  br label %return, !dbg !4589

return:                                           ; preds = %error, %if.end6
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4590
  ret %struct.dvb_frontend* %17, !dbg !4590
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4591 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4594, metadata !DIExpression()), !dbg !4598
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4604, metadata !DIExpression()), !dbg !4605
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4606, metadata !DIExpression()), !dbg !4607
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4608, metadata !DIExpression()), !dbg !4609
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4610, metadata !DIExpression()), !dbg !4614
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4616, metadata !DIExpression()), !dbg !4620
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4622, metadata !DIExpression()), !dbg !4626
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4631, metadata !DIExpression()), !dbg !4632
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4633, metadata !DIExpression()), !dbg !4634
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4635, metadata !DIExpression()), !dbg !4636
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4637, metadata !DIExpression()), !dbg !4638
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4639, metadata !DIExpression()), !dbg !4640
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4641, metadata !DIExpression()), !dbg !4642
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4643, metadata !DIExpression()), !dbg !4644
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4645, metadata !DIExpression()), !dbg !4646
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4647, metadata !DIExpression()), !dbg !4648
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4649, metadata !DIExpression()), !dbg !4650
  %0 = load i64, i64* %size.addr, align 8, !dbg !4651
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4652
  %or = or i32 %1, 256, !dbg !4653
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4654
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4655
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4656

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4657
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4658
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4659

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4660
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4661
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4662
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4663
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4640
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4664
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4665
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4666
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4667
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4668
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4669
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4670
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4670
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4670
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4670
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4670
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4671
  br label %kmalloc.exit, !dbg !4671

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4672
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4673
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4673
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4675

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4676
  br label %kmalloc_index.exit.i, !dbg !4676

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4677
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4679
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4680

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4681
  br label %kmalloc_index.exit.i, !dbg !4681

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4682
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4684
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4685

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4686
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4687
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4688

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4689
  br label %kmalloc_index.exit.i, !dbg !4689

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4690
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4692
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4693

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4694
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4695
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4696

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4697
  br label %kmalloc_index.exit.i, !dbg !4697

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4698
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4700
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4701

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4702
  br label %kmalloc_index.exit.i, !dbg !4702

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4703
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4705
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4706

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4707
  br label %kmalloc_index.exit.i, !dbg !4707

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4708
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4710
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4711

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4712
  br label %kmalloc_index.exit.i, !dbg !4712

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4713
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4715
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4716

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4717
  br label %kmalloc_index.exit.i, !dbg !4717

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4718
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4720
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4721

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4722
  br label %kmalloc_index.exit.i, !dbg !4722

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4723
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4725
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4726

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4727
  br label %kmalloc_index.exit.i, !dbg !4727

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4728
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4730
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4731

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4732
  br label %kmalloc_index.exit.i, !dbg !4732

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4733
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4735
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4736

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4737
  br label %kmalloc_index.exit.i, !dbg !4737

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4738
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4740
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4741

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4742
  br label %kmalloc_index.exit.i, !dbg !4742

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4743
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4745
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4746

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4747
  br label %kmalloc_index.exit.i, !dbg !4747

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4748
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4750
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4751

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4752
  br label %kmalloc_index.exit.i, !dbg !4752

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4753
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4755
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4756

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4757
  br label %kmalloc_index.exit.i, !dbg !4757

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4758
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4760
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4761

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4762
  br label %kmalloc_index.exit.i, !dbg !4762

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4763
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4765
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4766

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4767
  br label %kmalloc_index.exit.i, !dbg !4767

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4768
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4770
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4771

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4772
  br label %kmalloc_index.exit.i, !dbg !4772

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4773
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4775
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4776

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4777
  br label %kmalloc_index.exit.i, !dbg !4777

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4778
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4780
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4781

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4782
  br label %kmalloc_index.exit.i, !dbg !4782

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4783
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4785
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4786

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4787
  br label %kmalloc_index.exit.i, !dbg !4787

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4788
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4790
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4791

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4792
  br label %kmalloc_index.exit.i, !dbg !4792

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4793
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4795
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4796

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4797
  br label %kmalloc_index.exit.i, !dbg !4797

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4798
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4800
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4801

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4802
  br label %kmalloc_index.exit.i, !dbg !4802

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4803
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4805
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4806

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4807
  br label %kmalloc_index.exit.i, !dbg !4807

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4808
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4810
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4811

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4812
  br label %kmalloc_index.exit.i, !dbg !4812

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4813
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4815
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4816

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4817
  br label %kmalloc_index.exit.i, !dbg !4817

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4818, !srcloc !4821
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #9, !dbg !4822, !srcloc !4825
  unreachable, !dbg !4826

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4827
  store i32 %45, i32* %index.i, align 4, !dbg !4828
  %46 = load i32, i32* %index.i, align 4, !dbg !4829
  %tobool.i = icmp ne i32 %46, 0, !dbg !4829
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4831

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4832
  br label %kmalloc.exit, !dbg !4832

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4833
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4834
  %and.i.i = and i32 %48, 17, !dbg !4834
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4834
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4834
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4834
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4834
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4836

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4837
  br label %kmalloc_type.exit.i, !dbg !4837

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4838
  %and2.i.i = and i32 %49, 1, !dbg !4839
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4838
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4838
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4838
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4840
  br label %kmalloc_type.exit.i, !dbg !4840

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4841
  %idxprom.i = zext i32 %51 to i64, !dbg !4842
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4842
  %52 = load i32, i32* %index.i, align 4, !dbg !4843
  %idxprom6.i = zext i32 %52 to i64, !dbg !4842
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4842
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4842
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4844
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4845
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4846
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4847
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4848
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4848
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4848
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4848
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4848
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4609
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4849
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4850
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4851
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4852
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4853
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4854
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4855
  store i8* %62, i8** %retval.i, align 8, !dbg !4856
  br label %kmalloc.exit, !dbg !4856

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4857
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4858
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4859
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4859
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4859
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4859
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4859
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4860
  br label %kmalloc.exit, !dbg !4860

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4861
  ret i8* %65, !dbg !4862
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt352_read_register(%struct.mt352_state* %state, i8 zeroext %reg) #0 !dbg !4863 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.mt352_state*, align 8
  %reg.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.mt352_state* %state, %struct.mt352_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mt352_state** %state.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4868, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4870, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.declare(metadata [1 x i8]* %b0, metadata !4872, metadata !DIExpression()), !dbg !4874
  %arrayinit.begin = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4875
  %0 = load i8, i8* %reg.addr, align 1, !dbg !4876
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !4875
  call void @llvm.dbg.declare(metadata [1 x i8]* %b1, metadata !4877, metadata !DIExpression()), !dbg !4878
  %1 = bitcast [1 x i8]* %b1 to i8*, !dbg !4878
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 1, i1 false), !dbg !4878
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !4879, metadata !DIExpression()), !dbg !4881
  %arrayinit.begin1 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4882
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 0, !dbg !4883
  %2 = load %struct.mt352_state*, %struct.mt352_state** %state.addr, align 8, !dbg !4884
  %config = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %2, i32 0, i32 2, !dbg !4885
  %demod_address = getelementptr inbounds %struct.mt352_config, %struct.mt352_config* %config, i32 0, i32 0, !dbg !4886
  %3 = load i8, i8* %demod_address, align 8, !dbg !4886
  %conv = zext i8 %3 to i16, !dbg !4884
  store i16 %conv, i16* %addr, align 16, !dbg !4883
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 1, !dbg !4883
  store i16 0, i16* %flags, align 2, !dbg !4883
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 2, !dbg !4883
  store i16 1, i16* %len, align 4, !dbg !4883
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 3, !dbg !4883
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4887
  store i8* %arraydecay, i8** %buf, align 8, !dbg !4883
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i64 1, !dbg !4882
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4888
  %4 = load %struct.mt352_state*, %struct.mt352_state** %state.addr, align 8, !dbg !4889
  %config3 = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %4, i32 0, i32 2, !dbg !4890
  %demod_address4 = getelementptr inbounds %struct.mt352_config, %struct.mt352_config* %config3, i32 0, i32 0, !dbg !4891
  %5 = load i8, i8* %demod_address4, align 8, !dbg !4891
  %conv5 = zext i8 %5 to i16, !dbg !4889
  store i16 %conv5, i16* %addr2, align 16, !dbg !4888
  %flags6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4888
  store i16 1, i16* %flags6, align 2, !dbg !4888
  %len7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4888
  store i16 1, i16* %len7, align 4, !dbg !4888
  %buf8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4888
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4892
  store i8* %arraydecay9, i8** %buf8, align 8, !dbg !4888
  %6 = load %struct.mt352_state*, %struct.mt352_state** %state.addr, align 8, !dbg !4893
  %i2c = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %6, i32 0, i32 0, !dbg !4894
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4894
  %arraydecay10 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4895
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %7, %struct.i2c_msg* %arraydecay10, i32 2) #8, !dbg !4896
  store i32 %call, i32* %ret, align 4, !dbg !4897
  %8 = load i32, i32* %ret, align 4, !dbg !4898
  %cmp = icmp ne i32 %8, 2, !dbg !4900
  br i1 %cmp, label %if.then, label %if.end, !dbg !4901

if.then:                                          ; preds = %entry
  %9 = load i8, i8* %reg.addr, align 1, !dbg !4902
  %conv12 = zext i8 %9 to i32, !dbg !4902
  %10 = load i32, i32* %ret, align 4, !dbg !4904
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.mt352_read_register, i64 0, i64 0), i32 %conv12, i32 %10) #12, !dbg !4905
  %11 = load i32, i32* %ret, align 4, !dbg !4906
  store i32 %11, i32* %retval, align 4, !dbg !4907
  br label %return, !dbg !4907

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4908
  %12 = load i8, i8* %arrayidx, align 1, !dbg !4908
  %conv14 = zext i8 %12 to i32, !dbg !4908
  store i32 %conv14, i32* %retval, align 4, !dbg !4909
  br label %return, !dbg !4909

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !4910
  ret i32 %13, !dbg !4910
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
define internal i32 @get_order(i64 %size) #6 !dbg !4911 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4915, metadata !DIExpression()), !dbg !4920
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4922, metadata !DIExpression()), !dbg !4923
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4924, metadata !DIExpression()), !dbg !4925
  %0 = load i64, i64* %size.addr, align 8, !dbg !4926
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4928
  br i1 %1, label %if.then, label %if.end447, !dbg !4929

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4930
  %tobool = icmp ne i64 %2, 0, !dbg !4930
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4933

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4934
  br label %return, !dbg !4934

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4935
  %cmp = icmp ult i64 %3, 4096, !dbg !4937
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4938

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4939
  br label %return, !dbg !4939

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub = sub i64 %4, 1, !dbg !4940
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4940
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4940

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub4 = sub i64 %6, 1, !dbg !4940
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4940
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4940

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub6 = sub i64 %8, 1, !dbg !4940
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4940
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4940

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4940

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub9 = sub i64 %9, 1, !dbg !4940
  %and = and i64 %sub9, -9223372036854775808, !dbg !4940
  %tobool10 = icmp ne i64 %and, 0, !dbg !4940
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4940

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4940

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub13 = sub i64 %10, 1, !dbg !4940
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4940
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4940
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4940

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4940

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub18 = sub i64 %11, 1, !dbg !4940
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4940
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4940
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4940

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4940

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub23 = sub i64 %12, 1, !dbg !4940
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4940
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4940
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4940

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4940

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub28 = sub i64 %13, 1, !dbg !4940
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4940
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4940
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4940

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4940

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub33 = sub i64 %14, 1, !dbg !4940
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4940
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4940
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4940

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4940

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub38 = sub i64 %15, 1, !dbg !4940
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4940
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4940
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4940

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4940

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub43 = sub i64 %16, 1, !dbg !4940
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4940
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4940
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4940

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4940

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub48 = sub i64 %17, 1, !dbg !4940
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4940
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4940
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4940

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4940

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub53 = sub i64 %18, 1, !dbg !4940
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4940
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4940
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4940

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4940

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub58 = sub i64 %19, 1, !dbg !4940
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4940
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4940
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4940

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4940

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub63 = sub i64 %20, 1, !dbg !4940
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4940
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4940
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4940

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4940

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub68 = sub i64 %21, 1, !dbg !4940
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4940
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4940
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4940

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4940

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub73 = sub i64 %22, 1, !dbg !4940
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4940
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4940
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4940

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4940

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub78 = sub i64 %23, 1, !dbg !4940
  %and79 = and i64 %sub78, 562949953421312, !dbg !4940
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4940
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4940

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4940

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub83 = sub i64 %24, 1, !dbg !4940
  %and84 = and i64 %sub83, 281474976710656, !dbg !4940
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4940
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4940

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4940

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub88 = sub i64 %25, 1, !dbg !4940
  %and89 = and i64 %sub88, 140737488355328, !dbg !4940
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4940
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4940

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4940

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub93 = sub i64 %26, 1, !dbg !4940
  %and94 = and i64 %sub93, 70368744177664, !dbg !4940
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4940
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4940

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4940

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub98 = sub i64 %27, 1, !dbg !4940
  %and99 = and i64 %sub98, 35184372088832, !dbg !4940
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4940
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4940

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4940

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub103 = sub i64 %28, 1, !dbg !4940
  %and104 = and i64 %sub103, 17592186044416, !dbg !4940
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4940
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4940

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4940

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub108 = sub i64 %29, 1, !dbg !4940
  %and109 = and i64 %sub108, 8796093022208, !dbg !4940
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4940
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4940

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4940

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub113 = sub i64 %30, 1, !dbg !4940
  %and114 = and i64 %sub113, 4398046511104, !dbg !4940
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4940
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4940

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4940

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub118 = sub i64 %31, 1, !dbg !4940
  %and119 = and i64 %sub118, 2199023255552, !dbg !4940
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4940
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4940

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4940

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub123 = sub i64 %32, 1, !dbg !4940
  %and124 = and i64 %sub123, 1099511627776, !dbg !4940
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4940
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4940

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4940

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub128 = sub i64 %33, 1, !dbg !4940
  %and129 = and i64 %sub128, 549755813888, !dbg !4940
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4940
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4940

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4940

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub133 = sub i64 %34, 1, !dbg !4940
  %and134 = and i64 %sub133, 274877906944, !dbg !4940
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4940
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4940

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4940

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub138 = sub i64 %35, 1, !dbg !4940
  %and139 = and i64 %sub138, 137438953472, !dbg !4940
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4940
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4940

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4940

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub143 = sub i64 %36, 1, !dbg !4940
  %and144 = and i64 %sub143, 68719476736, !dbg !4940
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4940
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4940

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4940

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub148 = sub i64 %37, 1, !dbg !4940
  %and149 = and i64 %sub148, 34359738368, !dbg !4940
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4940
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4940

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4940

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub153 = sub i64 %38, 1, !dbg !4940
  %and154 = and i64 %sub153, 17179869184, !dbg !4940
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4940
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4940

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4940

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub158 = sub i64 %39, 1, !dbg !4940
  %and159 = and i64 %sub158, 8589934592, !dbg !4940
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4940
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4940

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4940

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub163 = sub i64 %40, 1, !dbg !4940
  %and164 = and i64 %sub163, 4294967296, !dbg !4940
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4940
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4940

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4940

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub168 = sub i64 %41, 1, !dbg !4940
  %and169 = and i64 %sub168, 2147483648, !dbg !4940
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4940
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4940

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4940

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub173 = sub i64 %42, 1, !dbg !4940
  %and174 = and i64 %sub173, 1073741824, !dbg !4940
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4940
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4940

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4940

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub178 = sub i64 %43, 1, !dbg !4940
  %and179 = and i64 %sub178, 536870912, !dbg !4940
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4940
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4940

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4940

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub183 = sub i64 %44, 1, !dbg !4940
  %and184 = and i64 %sub183, 268435456, !dbg !4940
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4940
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4940

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4940

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub188 = sub i64 %45, 1, !dbg !4940
  %and189 = and i64 %sub188, 134217728, !dbg !4940
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4940
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4940

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4940

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub193 = sub i64 %46, 1, !dbg !4940
  %and194 = and i64 %sub193, 67108864, !dbg !4940
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4940
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4940

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4940

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub198 = sub i64 %47, 1, !dbg !4940
  %and199 = and i64 %sub198, 33554432, !dbg !4940
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4940
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4940

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4940

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub203 = sub i64 %48, 1, !dbg !4940
  %and204 = and i64 %sub203, 16777216, !dbg !4940
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4940
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4940

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4940

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub208 = sub i64 %49, 1, !dbg !4940
  %and209 = and i64 %sub208, 8388608, !dbg !4940
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4940
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4940

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4940

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub213 = sub i64 %50, 1, !dbg !4940
  %and214 = and i64 %sub213, 4194304, !dbg !4940
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4940
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4940

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4940

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub218 = sub i64 %51, 1, !dbg !4940
  %and219 = and i64 %sub218, 2097152, !dbg !4940
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4940
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4940

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4940

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub223 = sub i64 %52, 1, !dbg !4940
  %and224 = and i64 %sub223, 1048576, !dbg !4940
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4940
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4940

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4940

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub228 = sub i64 %53, 1, !dbg !4940
  %and229 = and i64 %sub228, 524288, !dbg !4940
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4940
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4940

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4940

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub233 = sub i64 %54, 1, !dbg !4940
  %and234 = and i64 %sub233, 262144, !dbg !4940
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4940
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4940

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4940

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub238 = sub i64 %55, 1, !dbg !4940
  %and239 = and i64 %sub238, 131072, !dbg !4940
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4940
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4940

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4940

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub243 = sub i64 %56, 1, !dbg !4940
  %and244 = and i64 %sub243, 65536, !dbg !4940
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4940
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4940

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4940

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub248 = sub i64 %57, 1, !dbg !4940
  %and249 = and i64 %sub248, 32768, !dbg !4940
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4940
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4940

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4940

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub253 = sub i64 %58, 1, !dbg !4940
  %and254 = and i64 %sub253, 16384, !dbg !4940
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4940
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4940

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4940

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub258 = sub i64 %59, 1, !dbg !4940
  %and259 = and i64 %sub258, 8192, !dbg !4940
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4940
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4940

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4940

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub263 = sub i64 %60, 1, !dbg !4940
  %and264 = and i64 %sub263, 4096, !dbg !4940
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4940
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4940

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4940

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub268 = sub i64 %61, 1, !dbg !4940
  %and269 = and i64 %sub268, 2048, !dbg !4940
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4940
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4940

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4940

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub273 = sub i64 %62, 1, !dbg !4940
  %and274 = and i64 %sub273, 1024, !dbg !4940
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4940
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4940

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4940

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub278 = sub i64 %63, 1, !dbg !4940
  %and279 = and i64 %sub278, 512, !dbg !4940
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4940
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4940

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4940

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub283 = sub i64 %64, 1, !dbg !4940
  %and284 = and i64 %sub283, 256, !dbg !4940
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4940
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4940

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4940

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub288 = sub i64 %65, 1, !dbg !4940
  %and289 = and i64 %sub288, 128, !dbg !4940
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4940
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4940

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4940

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub293 = sub i64 %66, 1, !dbg !4940
  %and294 = and i64 %sub293, 64, !dbg !4940
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4940
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4940

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4940

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub298 = sub i64 %67, 1, !dbg !4940
  %and299 = and i64 %sub298, 32, !dbg !4940
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4940
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4940

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4940

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub303 = sub i64 %68, 1, !dbg !4940
  %and304 = and i64 %sub303, 16, !dbg !4940
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4940
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4940

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4940

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub308 = sub i64 %69, 1, !dbg !4940
  %and309 = and i64 %sub308, 8, !dbg !4940
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4940
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4940

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4940

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub313 = sub i64 %70, 1, !dbg !4940
  %and314 = and i64 %sub313, 4, !dbg !4940
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4940
  %71 = zext i1 %tobool315 to i64, !dbg !4940
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4940
  br label %cond.end, !dbg !4940

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4940
  br label %cond.end317, !dbg !4940

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4940
  br label %cond.end319, !dbg !4940

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4940
  br label %cond.end321, !dbg !4940

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4940
  br label %cond.end323, !dbg !4940

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4940
  br label %cond.end325, !dbg !4940

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4940
  br label %cond.end327, !dbg !4940

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4940
  br label %cond.end329, !dbg !4940

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4940
  br label %cond.end331, !dbg !4940

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4940
  br label %cond.end333, !dbg !4940

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4940
  br label %cond.end335, !dbg !4940

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4940
  br label %cond.end337, !dbg !4940

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4940
  br label %cond.end339, !dbg !4940

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4940
  br label %cond.end341, !dbg !4940

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4940
  br label %cond.end343, !dbg !4940

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4940
  br label %cond.end345, !dbg !4940

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4940
  br label %cond.end347, !dbg !4940

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4940
  br label %cond.end349, !dbg !4940

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4940
  br label %cond.end351, !dbg !4940

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4940
  br label %cond.end353, !dbg !4940

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4940
  br label %cond.end355, !dbg !4940

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4940
  br label %cond.end357, !dbg !4940

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4940
  br label %cond.end359, !dbg !4940

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4940
  br label %cond.end361, !dbg !4940

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4940
  br label %cond.end363, !dbg !4940

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4940
  br label %cond.end365, !dbg !4940

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4940
  br label %cond.end367, !dbg !4940

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4940
  br label %cond.end369, !dbg !4940

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4940
  br label %cond.end371, !dbg !4940

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4940
  br label %cond.end373, !dbg !4940

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4940
  br label %cond.end375, !dbg !4940

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4940
  br label %cond.end377, !dbg !4940

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4940
  br label %cond.end379, !dbg !4940

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4940
  br label %cond.end381, !dbg !4940

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4940
  br label %cond.end383, !dbg !4940

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4940
  br label %cond.end385, !dbg !4940

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4940
  br label %cond.end387, !dbg !4940

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4940
  br label %cond.end389, !dbg !4940

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4940
  br label %cond.end391, !dbg !4940

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4940
  br label %cond.end393, !dbg !4940

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4940
  br label %cond.end395, !dbg !4940

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4940
  br label %cond.end397, !dbg !4940

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4940
  br label %cond.end399, !dbg !4940

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4940
  br label %cond.end401, !dbg !4940

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4940
  br label %cond.end403, !dbg !4940

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4940
  br label %cond.end405, !dbg !4940

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4940
  br label %cond.end407, !dbg !4940

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4940
  br label %cond.end409, !dbg !4940

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4940
  br label %cond.end411, !dbg !4940

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4940
  br label %cond.end413, !dbg !4940

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4940
  br label %cond.end415, !dbg !4940

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4940
  br label %cond.end417, !dbg !4940

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4940
  br label %cond.end419, !dbg !4940

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4940
  br label %cond.end421, !dbg !4940

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4940
  br label %cond.end423, !dbg !4940

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4940
  br label %cond.end425, !dbg !4940

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4940
  br label %cond.end427, !dbg !4940

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4940
  br label %cond.end429, !dbg !4940

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4940
  br label %cond.end431, !dbg !4940

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4940
  br label %cond.end433, !dbg !4940

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4940
  br label %cond.end435, !dbg !4940

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4940
  br label %cond.end437, !dbg !4940

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4940
  br label %cond.end440, !dbg !4940

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4940

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4940
  br label %cond.end444, !dbg !4940

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4940
  %sub443 = sub i64 %72, 1, !dbg !4940
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4940
  br label %cond.end444, !dbg !4940

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4940
  %sub446 = sub i32 %cond445, 12, !dbg !4941
  %add = add i32 %sub446, 1, !dbg !4942
  store i32 %add, i32* %retval, align 4, !dbg !4943
  br label %return, !dbg !4943

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4944
  %dec = add i64 %73, -1, !dbg !4944
  store i64 %dec, i64* %size.addr, align 8, !dbg !4944
  %74 = load i64, i64* %size.addr, align 8, !dbg !4945
  %shr = lshr i64 %74, 12, !dbg !4945
  store i64 %shr, i64* %size.addr, align 8, !dbg !4945
  %75 = load i64, i64* %size.addr, align 8, !dbg !4946
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4923
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4947
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4948
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4947, !srcloc !4949
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4947
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4950
  %add.i = add i32 %79, 1, !dbg !4951
  store i32 %add.i, i32* %retval, align 4, !dbg !4952
  br label %return, !dbg !4952

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4953
  ret i32 %80, !dbg !4953
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4954 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4915, metadata !DIExpression()), !dbg !4958
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4922, metadata !DIExpression()), !dbg !4960
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4961, metadata !DIExpression()), !dbg !4962
  %0 = load i64, i64* %n.addr, align 8, !dbg !4963
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4960
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4964
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4965
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4964, !srcloc !4949
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4964
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4966
  %add.i = add i32 %4, 1, !dbg !4967
  %sub = sub i32 %add.i, 1, !dbg !4968
  ret i32 %sub, !dbg !4969
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4970 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4974, metadata !DIExpression()), !dbg !4975
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4976, metadata !DIExpression()), !dbg !4977
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4978, metadata !DIExpression()), !dbg !4979
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4980, metadata !DIExpression()), !dbg !4981
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4982
  ret i8* %0, !dbg !4983
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mt352_release(%struct.dvb_frontend* %fe) #0 !dbg !4984 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.mt352_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4985, metadata !DIExpression()), !dbg !4986
  call void @llvm.dbg.declare(metadata %struct.mt352_state** %state, metadata !4987, metadata !DIExpression()), !dbg !4988
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4989
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4990
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4990
  %2 = bitcast i8* %1 to %struct.mt352_state*, !dbg !4989
  store %struct.mt352_state* %2, %struct.mt352_state** %state, align 8, !dbg !4988
  %3 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !4991
  %4 = bitcast %struct.mt352_state* %3 to i8*, !dbg !4991
  call void @kfree(i8* %4) #8, !dbg !4992
  ret void, !dbg !4993
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt352_init(%struct.dvb_frontend* %fe) #0 !dbg !484 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.mt352_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4994, metadata !DIExpression()), !dbg !4995
  call void @llvm.dbg.declare(metadata %struct.mt352_state** %state, metadata !4996, metadata !DIExpression()), !dbg !4997
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4998
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4999
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4999
  %2 = bitcast i8* %1 to %struct.mt352_state*, !dbg !4998
  store %struct.mt352_state* %2, %struct.mt352_state** %state, align 8, !dbg !4997
  br label %do.body, !dbg !5000

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5001
  %tobool = icmp ne i32 %3, 0, !dbg !5001
  br i1 %tobool, label %if.then, label %if.end, !dbg !5004

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.mt352_init, i64 0, i64 0)) #12, !dbg !5001
  br label %if.end, !dbg !5001

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5004

do.end:                                           ; preds = %if.end
  %4 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5005
  %call1 = call i32 @mt352_read_register(%struct.mt352_state* %4, i8 zeroext -119) #8, !dbg !5007
  %and = and i32 %call1, 16, !dbg !5008
  %cmp = icmp eq i32 %and, 0, !dbg !5009
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !5010

lor.lhs.false:                                    ; preds = %do.end
  %5 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5011
  %call2 = call i32 @mt352_read_register(%struct.mt352_state* %5, i8 zeroext -118) #8, !dbg !5012
  %and3 = and i32 %call2, 32, !dbg !5013
  %cmp4 = icmp eq i32 %and3, 0, !dbg !5014
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !5015

if.then5:                                         ; preds = %lor.lhs.false, %do.end
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5016
  %call6 = call i32 @_mt352_write(%struct.dvb_frontend* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @mt352_init.mt352_reset_attach, i64 0, i64 0), i32 2) #8, !dbg !5018
  %7 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5019
  %config = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %7, i32 0, i32 2, !dbg !5020
  %demod_init = getelementptr inbounds %struct.mt352_config, %struct.mt352_config* %config, i32 0, i32 4, !dbg !5021
  %8 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %demod_init, align 8, !dbg !5021
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5022
  %call7 = call i32 %8(%struct.dvb_frontend* %9) #8, !dbg !5019
  store i32 %call7, i32* %retval, align 4, !dbg !5023
  br label %return, !dbg !5023

if.end8:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !5024
  br label %return, !dbg !5024

return:                                           ; preds = %if.end8, %if.then5
  %10 = load i32, i32* %retval, align 4, !dbg !5025
  ret i32 %10, !dbg !5025
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt352_sleep(%struct.dvb_frontend* %fe) #0 !dbg !4384 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5026, metadata !DIExpression()), !dbg !5027
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5028
  %call = call i32 @_mt352_write(%struct.dvb_frontend* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mt352_sleep.mt352_softdown, i64 0, i64 0), i32 3) #8, !dbg !5029
  ret i32 0, !dbg !5030
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_mt352_write(%struct.dvb_frontend* %fe, i8* %ibuf, i32 %ilen) #0 !dbg !5031 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ibuf.addr = alloca i8*, align 8
  %ilen.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5032, metadata !DIExpression()), !dbg !5033
  store i8* %ibuf, i8** %ibuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ibuf.addr, metadata !5034, metadata !DIExpression()), !dbg !5035
  store i32 %ilen, i32* %ilen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ilen.addr, metadata !5036, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5038, metadata !DIExpression()), !dbg !5039
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5040, metadata !DIExpression()), !dbg !5041
  store i32 0, i32* %i, align 4, !dbg !5042
  br label %for.cond, !dbg !5044

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5045
  %1 = load i32, i32* %ilen.addr, align 4, !dbg !5047
  %sub = sub i32 %1, 1, !dbg !5048
  %cmp = icmp slt i32 %0, %sub, !dbg !5049
  br i1 %cmp, label %for.body, label %for.end, !dbg !5050

for.body:                                         ; preds = %for.cond
  %2 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5051
  %3 = load i8*, i8** %ibuf.addr, align 8, !dbg !5053
  %arrayidx = getelementptr i8, i8* %3, i64 0, !dbg !5053
  %4 = load i8, i8* %arrayidx, align 1, !dbg !5053
  %conv = zext i8 %4 to i32, !dbg !5053
  %5 = load i32, i32* %i, align 4, !dbg !5054
  %add = add i32 %conv, %5, !dbg !5055
  %conv1 = trunc i32 %add to i8, !dbg !5053
  %6 = load i8*, i8** %ibuf.addr, align 8, !dbg !5056
  %7 = load i32, i32* %i, align 4, !dbg !5057
  %add2 = add i32 %7, 1, !dbg !5058
  %idxprom = sext i32 %add2 to i64, !dbg !5056
  %arrayidx3 = getelementptr i8, i8* %6, i64 %idxprom, !dbg !5056
  %8 = load i8, i8* %arrayidx3, align 1, !dbg !5056
  %call = call i32 @mt352_single_write(%struct.dvb_frontend* %2, i8 zeroext %conv1, i8 zeroext %8) #8, !dbg !5059
  store i32 %call, i32* %err, align 4, !dbg !5060
  %tobool = icmp ne i32 %call, 0, !dbg !5060
  br i1 %tobool, label %if.then, label %if.end, !dbg !5061

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %err, align 4, !dbg !5062
  store i32 %9, i32* %retval, align 4, !dbg !5063
  br label %return, !dbg !5063

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5064

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !dbg !5065
  %inc = add i32 %10, 1, !dbg !5065
  store i32 %inc, i32* %i, align 4, !dbg !5065
  br label %for.cond, !dbg !5066, !llvm.loop !5067

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5069
  br label %return, !dbg !5069

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5070
  ret i32 %11, !dbg !5070
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt352_set_parameters(%struct.dvb_frontend* %fe) #0 !dbg !4388 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %op = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.mt352_state*, align 8
  %buf = alloca [13 x i8], align 1
  %tps = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5071, metadata !DIExpression()), !dbg !5072
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %op, metadata !5073, metadata !DIExpression()), !dbg !5074
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5075
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5076
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %op, align 8, !dbg !5074
  call void @llvm.dbg.declare(metadata %struct.mt352_state** %state, metadata !5077, metadata !DIExpression()), !dbg !5078
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5079
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 3, !dbg !5080
  %2 = load i8*, i8** %demodulator_priv, align 8, !dbg !5080
  %3 = bitcast i8* %2 to %struct.mt352_state*, !dbg !5079
  store %struct.mt352_state* %3, %struct.mt352_state** %state, align 8, !dbg !5078
  call void @llvm.dbg.declare(metadata [13 x i8]* %buf, metadata !5081, metadata !DIExpression()), !dbg !5085
  call void @llvm.dbg.declare(metadata i32* %tps, metadata !5086, metadata !DIExpression()), !dbg !5087
  store i32 0, i32* %tps, align 4, !dbg !5087
  %4 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op, align 8, !dbg !5088
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %4, i32 0, i32 11, !dbg !5089
  %5 = load i32, i32* %code_rate_HP, align 4, !dbg !5089
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 5, label %sw.bb3
    i32 7, label %sw.bb5
    i32 1, label %sw.bb7
    i32 9, label %sw.bb7
  ], !dbg !5090

sw.bb:                                            ; preds = %entry
  %6 = load i32, i32* %tps, align 4, !dbg !5091
  %or = or i32 %6, 128, !dbg !5091
  store i32 %or, i32* %tps, align 4, !dbg !5091
  br label %sw.epilog, !dbg !5093

sw.bb1:                                           ; preds = %entry
  %7 = load i32, i32* %tps, align 4, !dbg !5094
  %or2 = or i32 %7, 256, !dbg !5094
  store i32 %or2, i32* %tps, align 4, !dbg !5094
  br label %sw.epilog, !dbg !5095

sw.bb3:                                           ; preds = %entry
  %8 = load i32, i32* %tps, align 4, !dbg !5096
  %or4 = or i32 %8, 384, !dbg !5096
  store i32 %or4, i32* %tps, align 4, !dbg !5096
  br label %sw.epilog, !dbg !5097

sw.bb5:                                           ; preds = %entry
  %9 = load i32, i32* %tps, align 4, !dbg !5098
  %or6 = or i32 %9, 512, !dbg !5098
  store i32 %or6, i32* %tps, align 4, !dbg !5098
  br label %sw.epilog, !dbg !5099

sw.bb7:                                           ; preds = %entry, %entry
  br label %sw.epilog, !dbg !5100

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5101
  br label %return, !dbg !5101

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %10 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op, align 8, !dbg !5102
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %10, i32 0, i32 12, !dbg !5103
  %11 = load i32, i32* %code_rate_LP, align 4, !dbg !5103
  switch i32 %11, label %sw.default20 [
    i32 2, label %sw.bb8
    i32 3, label %sw.bb10
    i32 5, label %sw.bb12
    i32 7, label %sw.bb14
    i32 1, label %sw.bb16
    i32 9, label %sw.bb16
    i32 0, label %sw.bb17
  ], !dbg !5104

sw.bb8:                                           ; preds = %sw.epilog
  %12 = load i32, i32* %tps, align 4, !dbg !5105
  %or9 = or i32 %12, 16, !dbg !5105
  store i32 %or9, i32* %tps, align 4, !dbg !5105
  br label %sw.epilog21, !dbg !5107

sw.bb10:                                          ; preds = %sw.epilog
  %13 = load i32, i32* %tps, align 4, !dbg !5108
  %or11 = or i32 %13, 32, !dbg !5108
  store i32 %or11, i32* %tps, align 4, !dbg !5108
  br label %sw.epilog21, !dbg !5109

sw.bb12:                                          ; preds = %sw.epilog
  %14 = load i32, i32* %tps, align 4, !dbg !5110
  %or13 = or i32 %14, 48, !dbg !5110
  store i32 %or13, i32* %tps, align 4, !dbg !5110
  br label %sw.epilog21, !dbg !5111

sw.bb14:                                          ; preds = %sw.epilog
  %15 = load i32, i32* %tps, align 4, !dbg !5112
  %or15 = or i32 %15, 64, !dbg !5112
  store i32 %or15, i32* %tps, align 4, !dbg !5112
  br label %sw.epilog21, !dbg !5113

sw.bb16:                                          ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog21, !dbg !5114

sw.bb17:                                          ; preds = %sw.epilog
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op, align 8, !dbg !5115
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 9, !dbg !5117
  %17 = load i32, i32* %hierarchy, align 4, !dbg !5117
  %cmp = icmp eq i32 %17, 4, !dbg !5118
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5119

lor.lhs.false:                                    ; preds = %sw.bb17
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op, align 8, !dbg !5120
  %hierarchy18 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 9, !dbg !5121
  %19 = load i32, i32* %hierarchy18, align 4, !dbg !5121
  %cmp19 = icmp eq i32 %19, 0, !dbg !5122
  br i1 %cmp19, label %if.then, label %if.end, !dbg !5123

if.then:                                          ; preds = %lor.lhs.false, %sw.bb17
  br label %sw.epilog21, !dbg !5124

if.end:                                           ; preds = %lor.lhs.false
  br label %sw.default20, !dbg !5125

sw.default20:                                     ; preds = %sw.epilog, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5126
  br label %return, !dbg !5126

sw.epilog21:                                      ; preds = %if.then, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op, align 8, !dbg !5127
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 1, !dbg !5128
  %21 = load i32, i32* %modulation, align 4, !dbg !5128
  switch i32 %21, label %sw.default27 [
    i32 0, label %sw.bb22
    i32 6, label %sw.bb23
    i32 1, label %sw.bb23
    i32 3, label %sw.bb25
  ], !dbg !5129

sw.bb22:                                          ; preds = %sw.epilog21
  br label %sw.epilog28, !dbg !5130

sw.bb23:                                          ; preds = %sw.epilog21, %sw.epilog21
  %22 = load i32, i32* %tps, align 4, !dbg !5132
  %or24 = or i32 %22, 8192, !dbg !5132
  store i32 %or24, i32* %tps, align 4, !dbg !5132
  br label %sw.epilog28, !dbg !5133

sw.bb25:                                          ; preds = %sw.epilog21
  %23 = load i32, i32* %tps, align 4, !dbg !5134
  %or26 = or i32 %23, 16384, !dbg !5134
  store i32 %or26, i32* %tps, align 4, !dbg !5134
  br label %sw.epilog28, !dbg !5135

sw.default27:                                     ; preds = %sw.epilog21
  store i32 -22, i32* %retval, align 4, !dbg !5136
  br label %return, !dbg !5136

sw.epilog28:                                      ; preds = %sw.bb25, %sw.bb23, %sw.bb22
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op, align 8, !dbg !5137
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 6, !dbg !5138
  %25 = load i32, i32* %transmission_mode, align 4, !dbg !5138
  switch i32 %25, label %sw.default32 [
    i32 0, label %sw.bb29
    i32 2, label %sw.bb29
    i32 1, label %sw.bb30
  ], !dbg !5139

sw.bb29:                                          ; preds = %sw.epilog28, %sw.epilog28
  br label %sw.epilog33, !dbg !5140

sw.bb30:                                          ; preds = %sw.epilog28
  %26 = load i32, i32* %tps, align 4, !dbg !5142
  %or31 = or i32 %26, 1, !dbg !5142
  store i32 %or31, i32* %tps, align 4, !dbg !5142
  br label %sw.epilog33, !dbg !5143

sw.default32:                                     ; preds = %sw.epilog28
  store i32 -22, i32* %retval, align 4, !dbg !5144
  br label %return, !dbg !5144

sw.epilog33:                                      ; preds = %sw.bb30, %sw.bb29
  %27 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op, align 8, !dbg !5145
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %27, i32 0, i32 8, !dbg !5146
  %28 = load i32, i32* %guard_interval, align 4, !dbg !5146
  switch i32 %28, label %sw.default41 [
    i32 0, label %sw.bb34
    i32 4, label %sw.bb34
    i32 1, label %sw.bb35
    i32 2, label %sw.bb37
    i32 3, label %sw.bb39
  ], !dbg !5147

sw.bb34:                                          ; preds = %sw.epilog33, %sw.epilog33
  br label %sw.epilog42, !dbg !5148

sw.bb35:                                          ; preds = %sw.epilog33
  %29 = load i32, i32* %tps, align 4, !dbg !5150
  %or36 = or i32 %29, 4, !dbg !5150
  store i32 %or36, i32* %tps, align 4, !dbg !5150
  br label %sw.epilog42, !dbg !5151

sw.bb37:                                          ; preds = %sw.epilog33
  %30 = load i32, i32* %tps, align 4, !dbg !5152
  %or38 = or i32 %30, 8, !dbg !5152
  store i32 %or38, i32* %tps, align 4, !dbg !5152
  br label %sw.epilog42, !dbg !5153

sw.bb39:                                          ; preds = %sw.epilog33
  %31 = load i32, i32* %tps, align 4, !dbg !5154
  %or40 = or i32 %31, 12, !dbg !5154
  store i32 %or40, i32* %tps, align 4, !dbg !5154
  br label %sw.epilog42, !dbg !5155

sw.default41:                                     ; preds = %sw.epilog33
  store i32 -22, i32* %retval, align 4, !dbg !5156
  br label %return, !dbg !5156

sw.epilog42:                                      ; preds = %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb34
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op, align 8, !dbg !5157
  %hierarchy43 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 9, !dbg !5158
  %33 = load i32, i32* %hierarchy43, align 4, !dbg !5158
  switch i32 %33, label %sw.default51 [
    i32 4, label %sw.bb44
    i32 0, label %sw.bb44
    i32 1, label %sw.bb45
    i32 2, label %sw.bb47
    i32 3, label %sw.bb49
  ], !dbg !5159

sw.bb44:                                          ; preds = %sw.epilog42, %sw.epilog42
  br label %sw.epilog52, !dbg !5160

sw.bb45:                                          ; preds = %sw.epilog42
  %34 = load i32, i32* %tps, align 4, !dbg !5162
  %or46 = or i32 %34, 1024, !dbg !5162
  store i32 %or46, i32* %tps, align 4, !dbg !5162
  br label %sw.epilog52, !dbg !5163

sw.bb47:                                          ; preds = %sw.epilog42
  %35 = load i32, i32* %tps, align 4, !dbg !5164
  %or48 = or i32 %35, 2048, !dbg !5164
  store i32 %or48, i32* %tps, align 4, !dbg !5164
  br label %sw.epilog52, !dbg !5165

sw.bb49:                                          ; preds = %sw.epilog42
  %36 = load i32, i32* %tps, align 4, !dbg !5166
  %or50 = or i32 %36, 3072, !dbg !5166
  store i32 %or50, i32* %tps, align 4, !dbg !5166
  br label %sw.epilog52, !dbg !5167

sw.default51:                                     ; preds = %sw.epilog42
  store i32 -22, i32* %retval, align 4, !dbg !5168
  br label %return, !dbg !5168

sw.epilog52:                                      ; preds = %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb44
  %arrayidx = getelementptr [13 x i8], [13 x i8]* %buf, i64 0, i64 0, !dbg !5169
  store i8 81, i8* %arrayidx, align 1, !dbg !5170
  %37 = load i32, i32* %tps, align 4, !dbg !5171
  %shr = lshr i32 %37, 8, !dbg !5171
  %and = and i32 %shr, 255, !dbg !5171
  %conv = trunc i32 %and to i8, !dbg !5171
  %arrayidx53 = getelementptr [13 x i8], [13 x i8]* %buf, i64 0, i64 1, !dbg !5172
  store i8 %conv, i8* %arrayidx53, align 1, !dbg !5173
  %38 = load i32, i32* %tps, align 4, !dbg !5174
  %and54 = and i32 %38, 255, !dbg !5174
  %conv55 = trunc i32 %and54 to i8, !dbg !5174
  %arrayidx56 = getelementptr [13 x i8], [13 x i8]* %buf, i64 0, i64 2, !dbg !5175
  store i8 %conv55, i8* %arrayidx56, align 1, !dbg !5176
  %arrayidx57 = getelementptr [13 x i8], [13 x i8]* %buf, i64 0, i64 3, !dbg !5177
  store i8 80, i8* %arrayidx57, align 1, !dbg !5178
  %39 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5179
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op, align 8, !dbg !5180
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 7, !dbg !5181
  %41 = load i32, i32* %bandwidth_hz, align 4, !dbg !5181
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i64 0, i64 0, !dbg !5182
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 4, !dbg !5183
  call void @mt352_calc_nominal_rate(%struct.mt352_state* %39, i32 %41, i8* %add.ptr) #8, !dbg !5184
  %42 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5185
  %arraydecay58 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i64 0, i64 0, !dbg !5186
  %add.ptr59 = getelementptr i8, i8* %arraydecay58, i64 6, !dbg !5187
  call void @mt352_calc_input_freq(%struct.mt352_state* %42, i8* %add.ptr59) #8, !dbg !5188
  %43 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5189
  %config = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %43, i32 0, i32 2, !dbg !5191
  %no_tuner = getelementptr inbounds %struct.mt352_config, %struct.mt352_config* %config, i32 0, i32 3, !dbg !5192
  %44 = load i32, i32* %no_tuner, align 4, !dbg !5192
  %tobool = icmp ne i32 %44, 0, !dbg !5189
  br i1 %tobool, label %if.then60, label %if.else, !dbg !5193

if.then60:                                        ; preds = %sw.epilog52
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5194
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %45, i32 0, i32 1, !dbg !5197
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5198
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5199
  %46 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5199
  %tobool61 = icmp ne i32 (%struct.dvb_frontend*)* %46, null, !dbg !5194
  br i1 %tobool61, label %if.then62, label %if.end73, !dbg !5200

if.then62:                                        ; preds = %if.then60
  %47 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5201
  %ops63 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %47, i32 0, i32 1, !dbg !5203
  %tuner_ops64 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops63, i32 0, i32 30, !dbg !5204
  %set_params65 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops64, i32 0, i32 6, !dbg !5205
  %48 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params65, align 8, !dbg !5205
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5206
  %call = call i32 %48(%struct.dvb_frontend* %49) #8, !dbg !5201
  %50 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5207
  %ops66 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %50, i32 0, i32 1, !dbg !5209
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops66, i32 0, i32 26, !dbg !5210
  %51 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5210
  %tobool67 = icmp ne i32 (%struct.dvb_frontend*, i32)* %51, null, !dbg !5207
  br i1 %tobool67, label %if.then68, label %if.end72, !dbg !5211

if.then68:                                        ; preds = %if.then62
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5212
  %ops69 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %52, i32 0, i32 1, !dbg !5213
  %i2c_gate_ctrl70 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops69, i32 0, i32 26, !dbg !5214
  %53 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl70, align 8, !dbg !5214
  %54 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5215
  %call71 = call i32 %53(%struct.dvb_frontend* %54, i32 0) #8, !dbg !5212
  br label %if.end72, !dbg !5212

if.end72:                                         ; preds = %if.then68, %if.then62
  br label %if.end73, !dbg !5216

if.end73:                                         ; preds = %if.end72, %if.then60
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5217
  %arraydecay74 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i64 0, i64 0, !dbg !5218
  %call75 = call i32 @_mt352_write(%struct.dvb_frontend* %55, i8* %arraydecay74, i32 8) #8, !dbg !5219
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5220
  %call76 = call i32 @_mt352_write(%struct.dvb_frontend* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @mt352_set_parameters.fsm_go, i64 0, i64 0), i32 2) #8, !dbg !5221
  br label %if.end94, !dbg !5222

if.else:                                          ; preds = %sw.epilog52
  %57 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5223
  %ops77 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %57, i32 0, i32 1, !dbg !5226
  %tuner_ops78 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops77, i32 0, i32 30, !dbg !5227
  %calc_regs = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops78, i32 0, i32 15, !dbg !5228
  %58 = load i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i8*, i32)** %calc_regs, align 8, !dbg !5228
  %tobool79 = icmp ne i32 (%struct.dvb_frontend*, i8*, i32)* %58, null, !dbg !5223
  br i1 %tobool79, label %if.then80, label %if.end93, !dbg !5229

if.then80:                                        ; preds = %if.else
  %59 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5230
  %ops81 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %59, i32 0, i32 1, !dbg !5232
  %tuner_ops82 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops81, i32 0, i32 30, !dbg !5233
  %calc_regs83 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops82, i32 0, i32 15, !dbg !5234
  %60 = load i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i8*, i32)** %calc_regs83, align 8, !dbg !5234
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5235
  %arraydecay84 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i64 0, i64 0, !dbg !5236
  %add.ptr85 = getelementptr i8, i8* %arraydecay84, i64 8, !dbg !5237
  %call86 = call i32 %60(%struct.dvb_frontend* %61, i8* %add.ptr85, i32 5) #8, !dbg !5230
  %arrayidx87 = getelementptr [13 x i8], [13 x i8]* %buf, i64 0, i64 8, !dbg !5238
  %62 = load i8, i8* %arrayidx87, align 1, !dbg !5239
  %conv88 = zext i8 %62 to i32, !dbg !5239
  %shl = shl i32 %conv88, 1, !dbg !5239
  %conv89 = trunc i32 %shl to i8, !dbg !5239
  store i8 %conv89, i8* %arrayidx87, align 1, !dbg !5239
  %63 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5240
  %arraydecay90 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i64 0, i64 0, !dbg !5241
  %call91 = call i32 @_mt352_write(%struct.dvb_frontend* %63, i8* %arraydecay90, i32 13) #8, !dbg !5242
  %64 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5243
  %call92 = call i32 @_mt352_write(%struct.dvb_frontend* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @mt352_set_parameters.tuner_go, i64 0, i64 0), i32 2) #8, !dbg !5244
  br label %if.end93, !dbg !5245

if.end93:                                         ; preds = %if.then80, %if.else
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.end73
  store i32 0, i32* %retval, align 4, !dbg !5246
  br label %return, !dbg !5246

return:                                           ; preds = %if.end94, %sw.default51, %sw.default41, %sw.default32, %sw.default27, %sw.default20, %sw.default
  %65 = load i32, i32* %retval, align 4, !dbg !5247
  ret i32 %65, !dbg !5247
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt352_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %fe_tune_settings) #0 !dbg !5248 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fe_tune_settings.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5249, metadata !DIExpression()), !dbg !5250
  store %struct.dvb_frontend_tune_settings* %fe_tune_settings, %struct.dvb_frontend_tune_settings** %fe_tune_settings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %fe_tune_settings.addr, metadata !5251, metadata !DIExpression()), !dbg !5252
  %0 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fe_tune_settings.addr, align 8, !dbg !5253
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %0, i32 0, i32 0, !dbg !5254
  store i32 800, i32* %min_delay_ms, align 4, !dbg !5255
  %1 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fe_tune_settings.addr, align 8, !dbg !5256
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %1, i32 0, i32 1, !dbg !5257
  store i32 0, i32* %step_size, align 4, !dbg !5258
  %2 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fe_tune_settings.addr, align 8, !dbg !5259
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %2, i32 0, i32 2, !dbg !5260
  store i32 0, i32* %max_drift, align 4, !dbg !5261
  ret i32 0, !dbg !5262
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt352_get_parameters(%struct.dvb_frontend* %fe, %struct.dtv_frontend_properties* %op) #0 !dbg !4394 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %op.addr = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.mt352_state*, align 8
  %tps = alloca i16, align 2
  %div = alloca i16, align 2
  %trl = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5263, metadata !DIExpression()), !dbg !5264
  store %struct.dtv_frontend_properties* %op, %struct.dtv_frontend_properties** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %op.addr, metadata !5265, metadata !DIExpression()), !dbg !5266
  call void @llvm.dbg.declare(metadata %struct.mt352_state** %state, metadata !5267, metadata !DIExpression()), !dbg !5268
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5269
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5270
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5270
  %2 = bitcast i8* %1 to %struct.mt352_state*, !dbg !5269
  store %struct.mt352_state* %2, %struct.mt352_state** %state, align 8, !dbg !5268
  call void @llvm.dbg.declare(metadata i16* %tps, metadata !5271, metadata !DIExpression()), !dbg !5272
  call void @llvm.dbg.declare(metadata i16* %div, metadata !5273, metadata !DIExpression()), !dbg !5274
  call void @llvm.dbg.declare(metadata i8* %trl, metadata !5275, metadata !DIExpression()), !dbg !5276
  %3 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5277
  %call = call i32 @mt352_read_register(%struct.mt352_state* %3, i8 zeroext 0) #8, !dbg !5279
  %and = and i32 %call, 192, !dbg !5280
  %cmp = icmp ne i32 %and, 192, !dbg !5281
  br i1 %cmp, label %if.then, label %if.end, !dbg !5282

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5283
  br label %return, !dbg !5283

if.end:                                           ; preds = %entry
  %4 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5284
  %call1 = call i32 @mt352_read_register(%struct.mt352_state* %4, i8 zeroext 30) #8, !dbg !5285
  %shl = shl i32 %call1, 8, !dbg !5286
  %5 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5287
  %call2 = call i32 @mt352_read_register(%struct.mt352_state* %5, i8 zeroext 31) #8, !dbg !5288
  %or = or i32 %shl, %call2, !dbg !5289
  %conv = trunc i32 %or to i16, !dbg !5290
  store i16 %conv, i16* %tps, align 2, !dbg !5291
  %6 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5292
  %call3 = call i32 @mt352_read_register(%struct.mt352_state* %6, i8 zeroext 89) #8, !dbg !5293
  %shl4 = shl i32 %call3, 8, !dbg !5294
  %7 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5295
  %call5 = call i32 @mt352_read_register(%struct.mt352_state* %7, i8 zeroext 90) #8, !dbg !5296
  %or6 = or i32 %shl4, %call5, !dbg !5297
  %conv7 = trunc i32 %or6 to i16, !dbg !5298
  store i16 %conv7, i16* %div, align 2, !dbg !5299
  %8 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5300
  %call8 = call i32 @mt352_read_register(%struct.mt352_state* %8, i8 zeroext 84) #8, !dbg !5301
  %conv9 = trunc i32 %call8 to i8, !dbg !5301
  store i8 %conv9, i8* %trl, align 1, !dbg !5302
  %9 = load i16, i16* %tps, align 2, !dbg !5303
  %conv10 = zext i16 %9 to i32, !dbg !5303
  %shr = ashr i32 %conv10, 7, !dbg !5304
  %and11 = and i32 %shr, 7, !dbg !5305
  %idxprom = sext i32 %and11 to i64, !dbg !5306
  %arrayidx = getelementptr [8 x i8], [8 x i8]* @mt352_get_parameters.tps_fec_to_api, i64 0, i64 %idxprom, !dbg !5306
  %10 = load i8, i8* %arrayidx, align 1, !dbg !5306
  %conv12 = zext i8 %10 to i32, !dbg !5306
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5307
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %11, i32 0, i32 11, !dbg !5308
  store i32 %conv12, i32* %code_rate_HP, align 4, !dbg !5309
  %12 = load i16, i16* %tps, align 2, !dbg !5310
  %conv13 = zext i16 %12 to i32, !dbg !5310
  %shr14 = ashr i32 %conv13, 4, !dbg !5311
  %and15 = and i32 %shr14, 7, !dbg !5312
  %idxprom16 = sext i32 %and15 to i64, !dbg !5313
  %arrayidx17 = getelementptr [8 x i8], [8 x i8]* @mt352_get_parameters.tps_fec_to_api, i64 0, i64 %idxprom16, !dbg !5313
  %13 = load i8, i8* %arrayidx17, align 1, !dbg !5313
  %conv18 = zext i8 %13 to i32, !dbg !5313
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5314
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %14, i32 0, i32 12, !dbg !5315
  store i32 %conv18, i32* %code_rate_LP, align 4, !dbg !5316
  %15 = load i16, i16* %tps, align 2, !dbg !5317
  %conv19 = zext i16 %15 to i32, !dbg !5317
  %shr20 = ashr i32 %conv19, 13, !dbg !5318
  %and21 = and i32 %shr20, 3, !dbg !5319
  switch i32 %and21, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb22
    i32 2, label %sw.bb24
  ], !dbg !5320

sw.bb:                                            ; preds = %if.end
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5321
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 1, !dbg !5323
  store i32 0, i32* %modulation, align 4, !dbg !5324
  br label %sw.epilog, !dbg !5325

sw.bb22:                                          ; preds = %if.end
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5326
  %modulation23 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 1, !dbg !5327
  store i32 1, i32* %modulation23, align 4, !dbg !5328
  br label %sw.epilog, !dbg !5329

sw.bb24:                                          ; preds = %if.end
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5330
  %modulation25 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 1, !dbg !5331
  store i32 3, i32* %modulation25, align 4, !dbg !5332
  br label %sw.epilog, !dbg !5333

sw.default:                                       ; preds = %if.end
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5334
  %modulation26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 1, !dbg !5335
  store i32 6, i32* %modulation26, align 4, !dbg !5336
  br label %sw.epilog, !dbg !5337

sw.epilog:                                        ; preds = %sw.default, %sw.bb24, %sw.bb22, %sw.bb
  %20 = load i16, i16* %tps, align 2, !dbg !5338
  %conv27 = zext i16 %20 to i32, !dbg !5338
  %and28 = and i32 %conv27, 1, !dbg !5339
  %tobool = icmp ne i32 %and28, 0, !dbg !5340
  %21 = zext i1 %tobool to i64, !dbg !5340
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !5340
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5341
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 6, !dbg !5342
  store i32 %cond, i32* %transmission_mode, align 4, !dbg !5343
  %23 = load i16, i16* %tps, align 2, !dbg !5344
  %conv29 = zext i16 %23 to i32, !dbg !5344
  %shr30 = ashr i32 %conv29, 2, !dbg !5345
  %and31 = and i32 %shr30, 3, !dbg !5346
  switch i32 %and31, label %sw.default39 [
    i32 0, label %sw.bb32
    i32 1, label %sw.bb33
    i32 2, label %sw.bb35
    i32 3, label %sw.bb37
  ], !dbg !5347

sw.bb32:                                          ; preds = %sw.epilog
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5348
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 8, !dbg !5350
  store i32 0, i32* %guard_interval, align 4, !dbg !5351
  br label %sw.epilog41, !dbg !5352

sw.bb33:                                          ; preds = %sw.epilog
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5353
  %guard_interval34 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 8, !dbg !5354
  store i32 1, i32* %guard_interval34, align 4, !dbg !5355
  br label %sw.epilog41, !dbg !5356

sw.bb35:                                          ; preds = %sw.epilog
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5357
  %guard_interval36 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 8, !dbg !5358
  store i32 2, i32* %guard_interval36, align 4, !dbg !5359
  br label %sw.epilog41, !dbg !5360

sw.bb37:                                          ; preds = %sw.epilog
  %27 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5361
  %guard_interval38 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %27, i32 0, i32 8, !dbg !5362
  store i32 3, i32* %guard_interval38, align 4, !dbg !5363
  br label %sw.epilog41, !dbg !5364

sw.default39:                                     ; preds = %sw.epilog
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5365
  %guard_interval40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 8, !dbg !5366
  store i32 4, i32* %guard_interval40, align 4, !dbg !5367
  br label %sw.epilog41, !dbg !5368

sw.epilog41:                                      ; preds = %sw.default39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb32
  %29 = load i16, i16* %tps, align 2, !dbg !5369
  %conv42 = zext i16 %29 to i32, !dbg !5369
  %shr43 = ashr i32 %conv42, 10, !dbg !5370
  %and44 = and i32 %shr43, 7, !dbg !5371
  switch i32 %and44, label %sw.default52 [
    i32 0, label %sw.bb45
    i32 1, label %sw.bb46
    i32 2, label %sw.bb48
    i32 3, label %sw.bb50
  ], !dbg !5372

sw.bb45:                                          ; preds = %sw.epilog41
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5373
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 9, !dbg !5375
  store i32 0, i32* %hierarchy, align 4, !dbg !5376
  br label %sw.epilog54, !dbg !5377

sw.bb46:                                          ; preds = %sw.epilog41
  %31 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5378
  %hierarchy47 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %31, i32 0, i32 9, !dbg !5379
  store i32 1, i32* %hierarchy47, align 4, !dbg !5380
  br label %sw.epilog54, !dbg !5381

sw.bb48:                                          ; preds = %sw.epilog41
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5382
  %hierarchy49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 9, !dbg !5383
  store i32 2, i32* %hierarchy49, align 4, !dbg !5384
  br label %sw.epilog54, !dbg !5385

sw.bb50:                                          ; preds = %sw.epilog41
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5386
  %hierarchy51 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 9, !dbg !5387
  store i32 3, i32* %hierarchy51, align 4, !dbg !5388
  br label %sw.epilog54, !dbg !5389

sw.default52:                                     ; preds = %sw.epilog41
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5390
  %hierarchy53 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 9, !dbg !5391
  store i32 4, i32* %hierarchy53, align 4, !dbg !5392
  br label %sw.epilog54, !dbg !5393

sw.epilog54:                                      ; preds = %sw.default52, %sw.bb50, %sw.bb48, %sw.bb46, %sw.bb45
  %35 = load i16, i16* %div, align 2, !dbg !5394
  %conv55 = zext i16 %35 to i32, !dbg !5394
  %sub = sub i32 %conv55, 217, !dbg !5395
  %mul = mul i32 500, %sub, !dbg !5396
  %div56 = sdiv i32 %mul, 3, !dbg !5397
  %mul57 = mul i32 %div56, 1000, !dbg !5398
  %36 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5399
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %36, i32 0, i32 0, !dbg !5400
  store i32 %mul57, i32* %frequency, align 4, !dbg !5401
  %37 = load i8, i8* %trl, align 1, !dbg !5402
  %conv58 = zext i8 %37 to i32, !dbg !5402
  %cmp59 = icmp eq i32 %conv58, 114, !dbg !5404
  br i1 %cmp59, label %if.then61, label %if.else, !dbg !5405

if.then61:                                        ; preds = %sw.epilog54
  %38 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5406
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %38, i32 0, i32 7, !dbg !5407
  store i32 8000000, i32* %bandwidth_hz, align 4, !dbg !5408
  br label %if.end70, !dbg !5406

if.else:                                          ; preds = %sw.epilog54
  %39 = load i8, i8* %trl, align 1, !dbg !5409
  %conv62 = zext i8 %39 to i32, !dbg !5409
  %cmp63 = icmp eq i32 %conv62, 100, !dbg !5411
  br i1 %cmp63, label %if.then65, label %if.else67, !dbg !5412

if.then65:                                        ; preds = %if.else
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5413
  %bandwidth_hz66 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 7, !dbg !5414
  store i32 7000000, i32* %bandwidth_hz66, align 4, !dbg !5415
  br label %if.end69, !dbg !5413

if.else67:                                        ; preds = %if.else
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5416
  %bandwidth_hz68 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 7, !dbg !5417
  store i32 6000000, i32* %bandwidth_hz68, align 4, !dbg !5418
  br label %if.end69

if.end69:                                         ; preds = %if.else67, %if.then65
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then61
  %42 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5419
  %call71 = call i32 @mt352_read_register(%struct.mt352_state* %42, i8 zeroext 2) #8, !dbg !5421
  %and72 = and i32 %call71, 2, !dbg !5422
  %tobool73 = icmp ne i32 %and72, 0, !dbg !5422
  br i1 %tobool73, label %if.then74, label %if.else75, !dbg !5423

if.then74:                                        ; preds = %if.end70
  %43 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5424
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %43, i32 0, i32 4, !dbg !5425
  store i32 0, i32* %inversion, align 4, !dbg !5426
  br label %if.end77, !dbg !5424

if.else75:                                        ; preds = %if.end70
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %op.addr, align 8, !dbg !5427
  %inversion76 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 4, !dbg !5428
  store i32 1, i32* %inversion76, align 4, !dbg !5429
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.then74
  store i32 0, i32* %retval, align 4, !dbg !5430
  br label %return, !dbg !5430

return:                                           ; preds = %if.end77, %if.then
  %45 = load i32, i32* %retval, align 4, !dbg !5431
  ret i32 %45, !dbg !5431
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt352_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !5432 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.mt352_state*, align 8
  %s0 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s3 = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5433, metadata !DIExpression()), !dbg !5434
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5435, metadata !DIExpression()), !dbg !5436
  call void @llvm.dbg.declare(metadata %struct.mt352_state** %state, metadata !5437, metadata !DIExpression()), !dbg !5438
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5439
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5440
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5440
  %2 = bitcast i8* %1 to %struct.mt352_state*, !dbg !5439
  store %struct.mt352_state* %2, %struct.mt352_state** %state, align 8, !dbg !5438
  call void @llvm.dbg.declare(metadata i32* %s0, metadata !5441, metadata !DIExpression()), !dbg !5442
  call void @llvm.dbg.declare(metadata i32* %s1, metadata !5443, metadata !DIExpression()), !dbg !5444
  call void @llvm.dbg.declare(metadata i32* %s3, metadata !5445, metadata !DIExpression()), !dbg !5446
  %3 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5447
  %call = call i32 @mt352_read_register(%struct.mt352_state* %3, i8 zeroext 0) #8, !dbg !5449
  store i32 %call, i32* %s0, align 4, !dbg !5450
  %cmp = icmp slt i32 %call, 0, !dbg !5451
  br i1 %cmp, label %if.then, label %if.end, !dbg !5452

if.then:                                          ; preds = %entry
  store i32 -121, i32* %retval, align 4, !dbg !5453
  br label %return, !dbg !5453

if.end:                                           ; preds = %entry
  %4 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5454
  %call1 = call i32 @mt352_read_register(%struct.mt352_state* %4, i8 zeroext 1) #8, !dbg !5456
  store i32 %call1, i32* %s1, align 4, !dbg !5457
  %cmp2 = icmp slt i32 %call1, 0, !dbg !5458
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5459

if.then3:                                         ; preds = %if.end
  store i32 -121, i32* %retval, align 4, !dbg !5460
  br label %return, !dbg !5460

if.end4:                                          ; preds = %if.end
  %5 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5461
  %call5 = call i32 @mt352_read_register(%struct.mt352_state* %5, i8 zeroext 3) #8, !dbg !5463
  store i32 %call5, i32* %s3, align 4, !dbg !5464
  %cmp6 = icmp slt i32 %call5, 0, !dbg !5465
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5466

if.then7:                                         ; preds = %if.end4
  store i32 -121, i32* %retval, align 4, !dbg !5467
  br label %return, !dbg !5467

if.end8:                                          ; preds = %if.end4
  %6 = load i32*, i32** %status.addr, align 8, !dbg !5468
  store i32 0, i32* %6, align 4, !dbg !5469
  %7 = load i32, i32* %s0, align 4, !dbg !5470
  %and = and i32 %7, 16, !dbg !5472
  %tobool = icmp ne i32 %and, 0, !dbg !5472
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !5473

if.then9:                                         ; preds = %if.end8
  %8 = load i32*, i32** %status.addr, align 8, !dbg !5474
  %9 = load i32, i32* %8, align 4, !dbg !5475
  %or = or i32 %9, 2, !dbg !5475
  store i32 %or, i32* %8, align 4, !dbg !5475
  br label %if.end10, !dbg !5476

if.end10:                                         ; preds = %if.then9, %if.end8
  %10 = load i32, i32* %s0, align 4, !dbg !5477
  %and11 = and i32 %10, 2, !dbg !5479
  %tobool12 = icmp ne i32 %and11, 0, !dbg !5479
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !5480

if.then13:                                        ; preds = %if.end10
  %11 = load i32*, i32** %status.addr, align 8, !dbg !5481
  %12 = load i32, i32* %11, align 4, !dbg !5482
  %or14 = or i32 %12, 4, !dbg !5482
  store i32 %or14, i32* %11, align 4, !dbg !5482
  br label %if.end15, !dbg !5483

if.end15:                                         ; preds = %if.then13, %if.end10
  %13 = load i32, i32* %s0, align 4, !dbg !5484
  %and16 = and i32 %13, 32, !dbg !5486
  %tobool17 = icmp ne i32 %and16, 0, !dbg !5486
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !5487

if.then18:                                        ; preds = %if.end15
  %14 = load i32*, i32** %status.addr, align 8, !dbg !5488
  %15 = load i32, i32* %14, align 4, !dbg !5489
  %or19 = or i32 %15, 16, !dbg !5489
  store i32 %or19, i32* %14, align 4, !dbg !5489
  br label %if.end20, !dbg !5490

if.end20:                                         ; preds = %if.then18, %if.end15
  %16 = load i32, i32* %s1, align 4, !dbg !5491
  %and21 = and i32 %16, 2, !dbg !5493
  %tobool22 = icmp ne i32 %and21, 0, !dbg !5493
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !5494

if.then23:                                        ; preds = %if.end20
  %17 = load i32*, i32** %status.addr, align 8, !dbg !5495
  %18 = load i32, i32* %17, align 4, !dbg !5496
  %or24 = or i32 %18, 8, !dbg !5496
  store i32 %or24, i32* %17, align 4, !dbg !5496
  br label %if.end25, !dbg !5497

if.end25:                                         ; preds = %if.then23, %if.end20
  %19 = load i32, i32* %s3, align 4, !dbg !5498
  %and26 = and i32 %19, 64, !dbg !5500
  %tobool27 = icmp ne i32 %and26, 0, !dbg !5500
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !5501

if.then28:                                        ; preds = %if.end25
  %20 = load i32*, i32** %status.addr, align 8, !dbg !5502
  %21 = load i32, i32* %20, align 4, !dbg !5503
  %or29 = or i32 %21, 1, !dbg !5503
  store i32 %or29, i32* %20, align 4, !dbg !5503
  br label %if.end30, !dbg !5504

if.end30:                                         ; preds = %if.then28, %if.end25
  %22 = load i32*, i32** %status.addr, align 8, !dbg !5505
  %23 = load i32, i32* %22, align 4, !dbg !5507
  %and31 = and i32 %23, 14, !dbg !5508
  %cmp32 = icmp ne i32 %and31, 14, !dbg !5509
  br i1 %cmp32, label %if.then33, label %if.end35, !dbg !5510

if.then33:                                        ; preds = %if.end30
  %24 = load i32*, i32** %status.addr, align 8, !dbg !5511
  %25 = load i32, i32* %24, align 4, !dbg !5512
  %and34 = and i32 %25, -17, !dbg !5512
  store i32 %and34, i32* %24, align 4, !dbg !5512
  br label %if.end35, !dbg !5513

if.end35:                                         ; preds = %if.then33, %if.end30
  store i32 0, i32* %retval, align 4, !dbg !5514
  br label %return, !dbg !5514

return:                                           ; preds = %if.end35, %if.then7, %if.then3, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !5515
  ret i32 %26, !dbg !5515
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt352_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5516 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %state = alloca %struct.mt352_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5519, metadata !DIExpression()), !dbg !5520
  call void @llvm.dbg.declare(metadata %struct.mt352_state** %state, metadata !5521, metadata !DIExpression()), !dbg !5522
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5523
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5524
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5524
  %2 = bitcast i8* %1 to %struct.mt352_state*, !dbg !5523
  store %struct.mt352_state* %2, %struct.mt352_state** %state, align 8, !dbg !5522
  %3 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5525
  %call = call i32 @mt352_read_register(%struct.mt352_state* %3, i8 zeroext 13) #8, !dbg !5526
  %shl = shl i32 %call, 16, !dbg !5527
  %4 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5528
  %call1 = call i32 @mt352_read_register(%struct.mt352_state* %4, i8 zeroext 14) #8, !dbg !5529
  %shl2 = shl i32 %call1, 8, !dbg !5530
  %or = or i32 %shl, %shl2, !dbg !5531
  %5 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5532
  %call3 = call i32 @mt352_read_register(%struct.mt352_state* %5, i8 zeroext 15) #8, !dbg !5533
  %or4 = or i32 %or, %call3, !dbg !5534
  %6 = load i32*, i32** %ber.addr, align 8, !dbg !5535
  store i32 %or4, i32* %6, align 4, !dbg !5536
  ret i32 0, !dbg !5537
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt352_read_signal_strength(%struct.dvb_frontend* %fe, i16* %strength) #0 !dbg !5538 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %strength.addr = alloca i16*, align 8
  %state = alloca %struct.mt352_state*, align 8
  %signal = alloca i16, align 2
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5539, metadata !DIExpression()), !dbg !5540
  store i16* %strength, i16** %strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %strength.addr, metadata !5541, metadata !DIExpression()), !dbg !5542
  call void @llvm.dbg.declare(metadata %struct.mt352_state** %state, metadata !5543, metadata !DIExpression()), !dbg !5544
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5545
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5546
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5546
  %2 = bitcast i8* %1 to %struct.mt352_state*, !dbg !5545
  store %struct.mt352_state* %2, %struct.mt352_state** %state, align 8, !dbg !5544
  call void @llvm.dbg.declare(metadata i16* %signal, metadata !5547, metadata !DIExpression()), !dbg !5548
  %3 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5549
  %call = call i32 @mt352_read_register(%struct.mt352_state* %3, i8 zeroext 20) #8, !dbg !5550
  %and = and i32 %call, 15, !dbg !5551
  %shl = shl i32 %and, 12, !dbg !5552
  %4 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5553
  %call1 = call i32 @mt352_read_register(%struct.mt352_state* %4, i8 zeroext 21) #8, !dbg !5554
  %shl2 = shl i32 %call1, 4, !dbg !5555
  %or = or i32 %shl, %shl2, !dbg !5556
  %conv = trunc i32 %or to i16, !dbg !5557
  store i16 %conv, i16* %signal, align 2, !dbg !5548
  %5 = load i16, i16* %signal, align 2, !dbg !5558
  %conv3 = zext i16 %5 to i32, !dbg !5558
  %neg = xor i32 %conv3, -1, !dbg !5559
  %conv4 = trunc i32 %neg to i16, !dbg !5559
  %6 = load i16*, i16** %strength.addr, align 8, !dbg !5560
  store i16 %conv4, i16* %6, align 2, !dbg !5561
  ret i32 0, !dbg !5562
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt352_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5563 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %state = alloca %struct.mt352_state*, align 8
  %_snr = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5564, metadata !DIExpression()), !dbg !5565
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5566, metadata !DIExpression()), !dbg !5567
  call void @llvm.dbg.declare(metadata %struct.mt352_state** %state, metadata !5568, metadata !DIExpression()), !dbg !5569
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5570
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5571
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5571
  %2 = bitcast i8* %1 to %struct.mt352_state*, !dbg !5570
  store %struct.mt352_state* %2, %struct.mt352_state** %state, align 8, !dbg !5569
  call void @llvm.dbg.declare(metadata i8* %_snr, metadata !5572, metadata !DIExpression()), !dbg !5573
  %3 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5574
  %call = call i32 @mt352_read_register(%struct.mt352_state* %3, i8 zeroext 9) #8, !dbg !5575
  %conv = trunc i32 %call to i8, !dbg !5575
  store i8 %conv, i8* %_snr, align 1, !dbg !5573
  %4 = load i8, i8* %_snr, align 1, !dbg !5576
  %conv1 = zext i8 %4 to i32, !dbg !5576
  %shl = shl i32 %conv1, 8, !dbg !5577
  %5 = load i8, i8* %_snr, align 1, !dbg !5578
  %conv2 = zext i8 %5 to i32, !dbg !5578
  %or = or i32 %shl, %conv2, !dbg !5579
  %conv3 = trunc i32 %or to i16, !dbg !5580
  %6 = load i16*, i16** %snr.addr, align 8, !dbg !5581
  store i16 %conv3, i16* %6, align 2, !dbg !5582
  ret i32 0, !dbg !5583
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt352_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !5584 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  %state = alloca %struct.mt352_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5585, metadata !DIExpression()), !dbg !5586
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !5587, metadata !DIExpression()), !dbg !5588
  call void @llvm.dbg.declare(metadata %struct.mt352_state** %state, metadata !5589, metadata !DIExpression()), !dbg !5590
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5591
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5592
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5592
  %2 = bitcast i8* %1 to %struct.mt352_state*, !dbg !5591
  store %struct.mt352_state* %2, %struct.mt352_state** %state, align 8, !dbg !5590
  %3 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5593
  %call = call i32 @mt352_read_register(%struct.mt352_state* %3, i8 zeroext 16) #8, !dbg !5594
  %shl = shl i32 %call, 8, !dbg !5595
  %4 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5596
  %call1 = call i32 @mt352_read_register(%struct.mt352_state* %4, i8 zeroext 17) #8, !dbg !5597
  %or = or i32 %shl, %call1, !dbg !5598
  %5 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5599
  store i32 %or, i32* %5, align 4, !dbg !5600
  ret i32 0, !dbg !5601
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt352_single_write(%struct.dvb_frontend* %fe, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !5602 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  %state = alloca %struct.mt352_state*, align 8
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  %err = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5605, metadata !DIExpression()), !dbg !5606
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5607, metadata !DIExpression()), !dbg !5608
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !5609, metadata !DIExpression()), !dbg !5610
  call void @llvm.dbg.declare(metadata %struct.mt352_state** %state, metadata !5611, metadata !DIExpression()), !dbg !5612
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5613
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5614
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5614
  %2 = bitcast i8* %1 to %struct.mt352_state*, !dbg !5613
  store %struct.mt352_state* %2, %struct.mt352_state** %state, align 8, !dbg !5612
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !5615, metadata !DIExpression()), !dbg !5616
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5617
  %3 = load i8, i8* %reg.addr, align 1, !dbg !5618
  store i8 %3, i8* %arrayinit.begin, align 1, !dbg !5617
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !5617
  %4 = load i8, i8* %val.addr, align 1, !dbg !5619
  store i8 %4, i8* %arrayinit.element, align 1, !dbg !5617
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5620, metadata !DIExpression()), !dbg !5621
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5622
  %5 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5623
  %config = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %5, i32 0, i32 2, !dbg !5624
  %demod_address = getelementptr inbounds %struct.mt352_config, %struct.mt352_config* %config, i32 0, i32 0, !dbg !5625
  %6 = load i8, i8* %demod_address, align 8, !dbg !5625
  %conv = zext i8 %6 to i16, !dbg !5623
  store i16 %conv, i16* %addr, align 8, !dbg !5622
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5622
  store i16 0, i16* %flags, align 2, !dbg !5622
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5622
  store i16 2, i16* %len, align 4, !dbg !5622
  %buf1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5622
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5626
  store i8* %arraydecay, i8** %buf1, align 8, !dbg !5622
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5627, metadata !DIExpression()), !dbg !5628
  %7 = load %struct.mt352_state*, %struct.mt352_state** %state, align 8, !dbg !5629
  %i2c = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %7, i32 0, i32 0, !dbg !5630
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5630
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %8, %struct.i2c_msg* %msg, i32 1) #8, !dbg !5631
  store i32 %call, i32* %err, align 4, !dbg !5628
  %9 = load i32, i32* %err, align 4, !dbg !5632
  %cmp = icmp ne i32 %9, 1, !dbg !5634
  br i1 %cmp, label %if.then, label %if.end, !dbg !5635

if.then:                                          ; preds = %entry
  %10 = load i8, i8* %reg.addr, align 1, !dbg !5636
  %conv3 = zext i8 %10 to i32, !dbg !5636
  %11 = load i32, i32* %err, align 4, !dbg !5638
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %conv3, i32 %11) #12, !dbg !5639
  %12 = load i32, i32* %err, align 4, !dbg !5640
  store i32 %12, i32* %retval, align 4, !dbg !5641
  br label %return, !dbg !5641

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5642
  br label %return, !dbg !5642

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !5643
  ret i32 %13, !dbg !5643
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mt352_calc_nominal_rate(%struct.mt352_state* %state, i32 %bandwidth, i8* %buf) #0 !dbg !5644 {
entry:
  %state.addr = alloca %struct.mt352_state*, align 8
  %bandwidth.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %adc_clock = alloca i32, align 4
  %bw = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct.mt352_state* %state, %struct.mt352_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mt352_state** %state.addr, metadata !5648, metadata !DIExpression()), !dbg !5649
  store i32 %bandwidth, i32* %bandwidth.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bandwidth.addr, metadata !5650, metadata !DIExpression()), !dbg !5651
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5652, metadata !DIExpression()), !dbg !5653
  call void @llvm.dbg.declare(metadata i32* %adc_clock, metadata !5654, metadata !DIExpression()), !dbg !5655
  store i32 20480, i32* %adc_clock, align 4, !dbg !5655
  call void @llvm.dbg.declare(metadata i32* %bw, metadata !5656, metadata !DIExpression()), !dbg !5657
  call void @llvm.dbg.declare(metadata i32* %value, metadata !5658, metadata !DIExpression()), !dbg !5659
  %0 = load i32, i32* %bandwidth.addr, align 4, !dbg !5660
  switch i32 %0, label %sw.default [
    i32 6000000, label %sw.bb
    i32 7000000, label %sw.bb1
    i32 8000000, label %sw.bb2
  ], !dbg !5661

sw.bb:                                            ; preds = %entry
  store i32 6, i32* %bw, align 4, !dbg !5662
  br label %sw.epilog, !dbg !5664

sw.bb1:                                           ; preds = %entry
  store i32 7, i32* %bw, align 4, !dbg !5665
  br label %sw.epilog, !dbg !5666

sw.bb2:                                           ; preds = %entry
  br label %sw.default, !dbg !5666

sw.default:                                       ; preds = %entry, %sw.bb2
  store i32 8, i32* %bw, align 4, !dbg !5667
  br label %sw.epilog, !dbg !5668

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %1 = load %struct.mt352_state*, %struct.mt352_state** %state.addr, align 8, !dbg !5669
  %config = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %1, i32 0, i32 2, !dbg !5671
  %adc_clock3 = getelementptr inbounds %struct.mt352_config, %struct.mt352_config* %config, i32 0, i32 1, !dbg !5672
  %2 = load i32, i32* %adc_clock3, align 4, !dbg !5672
  %tobool = icmp ne i32 %2, 0, !dbg !5669
  br i1 %tobool, label %if.then, label %if.end, !dbg !5673

if.then:                                          ; preds = %sw.epilog
  %3 = load %struct.mt352_state*, %struct.mt352_state** %state.addr, align 8, !dbg !5674
  %config4 = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %3, i32 0, i32 2, !dbg !5675
  %adc_clock5 = getelementptr inbounds %struct.mt352_config, %struct.mt352_config* %config4, i32 0, i32 1, !dbg !5676
  %4 = load i32, i32* %adc_clock5, align 4, !dbg !5676
  store i32 %4, i32* %adc_clock, align 4, !dbg !5677
  br label %if.end, !dbg !5678

if.end:                                           ; preds = %if.then, %sw.epilog
  %5 = load i32, i32* %bw, align 4, !dbg !5679
  %mul = mul i32 64, %5, !dbg !5680
  %mul6 = mul i32 %mul, 65536, !dbg !5681
  %div = udiv i32 %mul6, 56, !dbg !5682
  store i32 %div, i32* %value, align 4, !dbg !5683
  %6 = load i32, i32* %value, align 4, !dbg !5684
  %mul7 = mul i32 %6, 1000, !dbg !5685
  %7 = load i32, i32* %adc_clock, align 4, !dbg !5686
  %div8 = udiv i32 %mul7, %7, !dbg !5687
  store i32 %div8, i32* %value, align 4, !dbg !5688
  br label %do.body, !dbg !5689

do.body:                                          ; preds = %if.end
  %8 = load i32, i32* @debug, align 4, !dbg !5690
  %tobool9 = icmp ne i32 %8, 0, !dbg !5690
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5693

if.then10:                                        ; preds = %do.body
  %9 = load i32, i32* %bw, align 4, !dbg !5690
  %10 = load i32, i32* %adc_clock, align 4, !dbg !5690
  %11 = load i32, i32* %value, align 4, !dbg !5690
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.mt352_calc_nominal_rate, i64 0, i64 0), i32 %9, i32 %10, i32 %11) #12, !dbg !5690
  br label %if.end11, !dbg !5690

if.end11:                                         ; preds = %if.then10, %do.body
  br label %do.end, !dbg !5693

do.end:                                           ; preds = %if.end11
  %12 = load i32, i32* %value, align 4, !dbg !5694
  %shr = lshr i32 %12, 8, !dbg !5694
  %and = and i32 %shr, 255, !dbg !5694
  %conv = trunc i32 %and to i8, !dbg !5694
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !5695
  %arrayidx = getelementptr i8, i8* %13, i64 0, !dbg !5695
  store i8 %conv, i8* %arrayidx, align 1, !dbg !5696
  %14 = load i32, i32* %value, align 4, !dbg !5697
  %and12 = and i32 %14, 255, !dbg !5697
  %conv13 = trunc i32 %and12 to i8, !dbg !5697
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !5698
  %arrayidx14 = getelementptr i8, i8* %15, i64 1, !dbg !5698
  store i8 %conv13, i8* %arrayidx14, align 1, !dbg !5699
  ret void, !dbg !5700
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mt352_calc_input_freq(%struct.mt352_state* %state, i8* %buf) #0 !dbg !5701 {
entry:
  %state.addr = alloca %struct.mt352_state*, align 8
  %buf.addr = alloca i8*, align 8
  %adc_clock = alloca i32, align 4
  %if2 = alloca i32, align 4
  %ife = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct.mt352_state* %state, %struct.mt352_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mt352_state** %state.addr, metadata !5704, metadata !DIExpression()), !dbg !5705
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5706, metadata !DIExpression()), !dbg !5707
  call void @llvm.dbg.declare(metadata i32* %adc_clock, metadata !5708, metadata !DIExpression()), !dbg !5709
  store i32 20480, i32* %adc_clock, align 4, !dbg !5709
  call void @llvm.dbg.declare(metadata i32* %if2, metadata !5710, metadata !DIExpression()), !dbg !5711
  store i32 36167, i32* %if2, align 4, !dbg !5711
  call void @llvm.dbg.declare(metadata i32* %ife, metadata !5712, metadata !DIExpression()), !dbg !5713
  call void @llvm.dbg.declare(metadata i32* %value, metadata !5714, metadata !DIExpression()), !dbg !5715
  %0 = load %struct.mt352_state*, %struct.mt352_state** %state.addr, align 8, !dbg !5716
  %config = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %0, i32 0, i32 2, !dbg !5718
  %adc_clock1 = getelementptr inbounds %struct.mt352_config, %struct.mt352_config* %config, i32 0, i32 1, !dbg !5719
  %1 = load i32, i32* %adc_clock1, align 4, !dbg !5719
  %tobool = icmp ne i32 %1, 0, !dbg !5716
  br i1 %tobool, label %if.then, label %if.end, !dbg !5720

if.then:                                          ; preds = %entry
  %2 = load %struct.mt352_state*, %struct.mt352_state** %state.addr, align 8, !dbg !5721
  %config2 = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %2, i32 0, i32 2, !dbg !5722
  %adc_clock3 = getelementptr inbounds %struct.mt352_config, %struct.mt352_config* %config2, i32 0, i32 1, !dbg !5723
  %3 = load i32, i32* %adc_clock3, align 4, !dbg !5723
  store i32 %3, i32* %adc_clock, align 4, !dbg !5724
  br label %if.end, !dbg !5725

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.mt352_state*, %struct.mt352_state** %state.addr, align 8, !dbg !5726
  %config4 = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %4, i32 0, i32 2, !dbg !5728
  %if25 = getelementptr inbounds %struct.mt352_config, %struct.mt352_config* %config4, i32 0, i32 2, !dbg !5729
  %5 = load i32, i32* %if25, align 8, !dbg !5729
  %tobool6 = icmp ne i32 %5, 0, !dbg !5726
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !5730

if.then7:                                         ; preds = %if.end
  %6 = load %struct.mt352_state*, %struct.mt352_state** %state.addr, align 8, !dbg !5731
  %config8 = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %6, i32 0, i32 2, !dbg !5732
  %if29 = getelementptr inbounds %struct.mt352_config, %struct.mt352_config* %config8, i32 0, i32 2, !dbg !5733
  %7 = load i32, i32* %if29, align 8, !dbg !5733
  store i32 %7, i32* %if2, align 4, !dbg !5734
  br label %if.end10, !dbg !5735

if.end10:                                         ; preds = %if.then7, %if.end
  %8 = load i32, i32* %adc_clock, align 4, !dbg !5736
  %9 = load i32, i32* %if2, align 4, !dbg !5738
  %mul = mul i32 %9, 2, !dbg !5739
  %cmp = icmp sge i32 %8, %mul, !dbg !5740
  br i1 %cmp, label %if.then11, label %if.else, !dbg !5741

if.then11:                                        ; preds = %if.end10
  %10 = load i32, i32* %if2, align 4, !dbg !5742
  store i32 %10, i32* %ife, align 4, !dbg !5743
  br label %if.end16, !dbg !5744

if.else:                                          ; preds = %if.end10
  %11 = load i32, i32* %adc_clock, align 4, !dbg !5745
  %12 = load i32, i32* %if2, align 4, !dbg !5747
  %13 = load i32, i32* %adc_clock, align 4, !dbg !5748
  %rem = srem i32 %12, %13, !dbg !5749
  %sub = sub i32 %11, %rem, !dbg !5750
  store i32 %sub, i32* %ife, align 4, !dbg !5751
  %14 = load i32, i32* %ife, align 4, !dbg !5752
  %15 = load i32, i32* %adc_clock, align 4, !dbg !5754
  %div = sdiv i32 %15, 2, !dbg !5755
  %cmp12 = icmp sgt i32 %14, %div, !dbg !5756
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !5757

if.then13:                                        ; preds = %if.else
  %16 = load i32, i32* %adc_clock, align 4, !dbg !5758
  %17 = load i32, i32* %ife, align 4, !dbg !5759
  %sub14 = sub i32 %16, %17, !dbg !5760
  store i32 %sub14, i32* %ife, align 4, !dbg !5761
  br label %if.end15, !dbg !5762

if.end15:                                         ; preds = %if.then13, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then11
  %18 = load i32, i32* %ife, align 4, !dbg !5763
  %mul17 = mul i32 -16374, %18, !dbg !5764
  %19 = load i32, i32* %adc_clock, align 4, !dbg !5765
  %div18 = sdiv i32 %mul17, %19, !dbg !5766
  store i32 %div18, i32* %value, align 4, !dbg !5767
  br label %do.body, !dbg !5768

do.body:                                          ; preds = %if.end16
  %20 = load i32, i32* @debug, align 4, !dbg !5769
  %tobool19 = icmp ne i32 %20, 0, !dbg !5769
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5772

if.then20:                                        ; preds = %do.body
  %21 = load i32, i32* %if2, align 4, !dbg !5769
  %22 = load i32, i32* %ife, align 4, !dbg !5769
  %23 = load i32, i32* %adc_clock, align 4, !dbg !5769
  %24 = load i32, i32* %value, align 4, !dbg !5769
  %25 = load i32, i32* %value, align 4, !dbg !5769
  %and = and i32 %25, 16383, !dbg !5769
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.mt352_calc_input_freq, i64 0, i64 0), i32 %21, i32 %22, i32 %23, i32 %24, i32 %and) #12, !dbg !5769
  br label %if.end21, !dbg !5769

if.end21:                                         ; preds = %if.then20, %do.body
  br label %do.end, !dbg !5772

do.end:                                           ; preds = %if.end21
  %26 = load i32, i32* %value, align 4, !dbg !5773
  %shr = ashr i32 %26, 8, !dbg !5773
  %and22 = and i32 %shr, 255, !dbg !5773
  %conv = trunc i32 %and22 to i8, !dbg !5773
  %27 = load i8*, i8** %buf.addr, align 8, !dbg !5774
  %arrayidx = getelementptr i8, i8* %27, i64 0, !dbg !5774
  store i8 %conv, i8* %arrayidx, align 1, !dbg !5775
  %28 = load i32, i32* %value, align 4, !dbg !5776
  %and23 = and i32 %28, 255, !dbg !5776
  %conv24 = trunc i32 %and23 to i8, !dbg !5776
  %29 = load i8*, i8** %buf.addr, align 8, !dbg !5777
  %arrayidx25 = getelementptr i8, i8* %29, i64 1, !dbg !5777
  store i8 %conv24, i8* %arrayidx25, align 1, !dbg !5778
  ret void, !dbg !5779
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
!llvm.module.flags = !{!4400, !4401, !4402, !4403}
!llvm.ident = !{!4404}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mt352_ops", scope: !2, file: !3, line: 556, type: !4399, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !373, globals: !377, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/mt352.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !40, !50, !57, !73, !78, !82, !87, !102, !113, !126, !133, !138, !144, !165, !171, !175, !183, !190, !195, !201, !207, !216, !224, !230, !236, !243, !251, !257, !271, !283, !366}
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
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mt352_reg_addr", file: !284, line: 27, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "drivers/media/dvb-frontends/mt352_priv.h", directory: "/home/lizy2001/genbc/linux")
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365}
!286 = !DIEnumerator(name: "STATUS_0", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "STATUS_1", value: 1, isUnsigned: true)
!288 = !DIEnumerator(name: "STATUS_2", value: 2, isUnsigned: true)
!289 = !DIEnumerator(name: "STATUS_3", value: 3, isUnsigned: true)
!290 = !DIEnumerator(name: "STATUS_4", value: 4, isUnsigned: true)
!291 = !DIEnumerator(name: "INTERRUPT_0", value: 5, isUnsigned: true)
!292 = !DIEnumerator(name: "INTERRUPT_1", value: 6, isUnsigned: true)
!293 = !DIEnumerator(name: "INTERRUPT_2", value: 7, isUnsigned: true)
!294 = !DIEnumerator(name: "INTERRUPT_3", value: 8, isUnsigned: true)
!295 = !DIEnumerator(name: "SNR", value: 9, isUnsigned: true)
!296 = !DIEnumerator(name: "VIT_ERR_CNT_2", value: 10, isUnsigned: true)
!297 = !DIEnumerator(name: "VIT_ERR_CNT_1", value: 11, isUnsigned: true)
!298 = !DIEnumerator(name: "VIT_ERR_CNT_0", value: 12, isUnsigned: true)
!299 = !DIEnumerator(name: "RS_ERR_CNT_2", value: 13, isUnsigned: true)
!300 = !DIEnumerator(name: "RS_ERR_CNT_1", value: 14, isUnsigned: true)
!301 = !DIEnumerator(name: "RS_ERR_CNT_0", value: 15, isUnsigned: true)
!302 = !DIEnumerator(name: "RS_UBC_1", value: 16, isUnsigned: true)
!303 = !DIEnumerator(name: "RS_UBC_0", value: 17, isUnsigned: true)
!304 = !DIEnumerator(name: "AGC_GAIN_3", value: 18, isUnsigned: true)
!305 = !DIEnumerator(name: "AGC_GAIN_2", value: 19, isUnsigned: true)
!306 = !DIEnumerator(name: "AGC_GAIN_1", value: 20, isUnsigned: true)
!307 = !DIEnumerator(name: "AGC_GAIN_0", value: 21, isUnsigned: true)
!308 = !DIEnumerator(name: "FREQ_OFFSET_2", value: 23, isUnsigned: true)
!309 = !DIEnumerator(name: "FREQ_OFFSET_1", value: 24, isUnsigned: true)
!310 = !DIEnumerator(name: "FREQ_OFFSET_0", value: 25, isUnsigned: true)
!311 = !DIEnumerator(name: "TIMING_OFFSET_1", value: 26, isUnsigned: true)
!312 = !DIEnumerator(name: "TIMING_OFFSET_0", value: 27, isUnsigned: true)
!313 = !DIEnumerator(name: "CHAN_FREQ_1", value: 28, isUnsigned: true)
!314 = !DIEnumerator(name: "CHAN_FREQ_0", value: 29, isUnsigned: true)
!315 = !DIEnumerator(name: "TPS_RECEIVED_1", value: 30, isUnsigned: true)
!316 = !DIEnumerator(name: "TPS_RECEIVED_0", value: 31, isUnsigned: true)
!317 = !DIEnumerator(name: "TPS_CURRENT_1", value: 32, isUnsigned: true)
!318 = !DIEnumerator(name: "TPS_CURRENT_0", value: 33, isUnsigned: true)
!319 = !DIEnumerator(name: "TPS_CELL_ID_1", value: 34, isUnsigned: true)
!320 = !DIEnumerator(name: "TPS_CELL_ID_0", value: 35, isUnsigned: true)
!321 = !DIEnumerator(name: "TPS_MISC_DATA_2", value: 36, isUnsigned: true)
!322 = !DIEnumerator(name: "TPS_MISC_DATA_1", value: 37, isUnsigned: true)
!323 = !DIEnumerator(name: "TPS_MISC_DATA_0", value: 38, isUnsigned: true)
!324 = !DIEnumerator(name: "RESET", value: 80, isUnsigned: true)
!325 = !DIEnumerator(name: "TPS_GIVEN_1", value: 81, isUnsigned: true)
!326 = !DIEnumerator(name: "TPS_GIVEN_0", value: 82, isUnsigned: true)
!327 = !DIEnumerator(name: "ACQ_CTL", value: 83, isUnsigned: true)
!328 = !DIEnumerator(name: "TRL_NOMINAL_RATE_1", value: 84, isUnsigned: true)
!329 = !DIEnumerator(name: "TRL_NOMINAL_RATE_0", value: 85, isUnsigned: true)
!330 = !DIEnumerator(name: "INPUT_FREQ_1", value: 86, isUnsigned: true)
!331 = !DIEnumerator(name: "INPUT_FREQ_0", value: 87, isUnsigned: true)
!332 = !DIEnumerator(name: "TUNER_ADDR", value: 88, isUnsigned: true)
!333 = !DIEnumerator(name: "CHAN_START_1", value: 89, isUnsigned: true)
!334 = !DIEnumerator(name: "CHAN_START_0", value: 90, isUnsigned: true)
!335 = !DIEnumerator(name: "CONT_1", value: 91, isUnsigned: true)
!336 = !DIEnumerator(name: "CONT_0", value: 92, isUnsigned: true)
!337 = !DIEnumerator(name: "TUNER_GO", value: 93, isUnsigned: true)
!338 = !DIEnumerator(name: "STATUS_EN_0", value: 95, isUnsigned: true)
!339 = !DIEnumerator(name: "STATUS_EN_1", value: 96, isUnsigned: true)
!340 = !DIEnumerator(name: "INTERRUPT_EN_0", value: 97, isUnsigned: true)
!341 = !DIEnumerator(name: "INTERRUPT_EN_1", value: 98, isUnsigned: true)
!342 = !DIEnumerator(name: "INTERRUPT_EN_2", value: 99, isUnsigned: true)
!343 = !DIEnumerator(name: "INTERRUPT_EN_3", value: 100, isUnsigned: true)
!344 = !DIEnumerator(name: "AGC_TARGET", value: 103, isUnsigned: true)
!345 = !DIEnumerator(name: "AGC_CTL", value: 104, isUnsigned: true)
!346 = !DIEnumerator(name: "CAPT_RANGE", value: 117, isUnsigned: true)
!347 = !DIEnumerator(name: "SNR_SELECT_1", value: 121, isUnsigned: true)
!348 = !DIEnumerator(name: "SNR_SELECT_0", value: 122, isUnsigned: true)
!349 = !DIEnumerator(name: "RS_ERR_PER_1", value: 124, isUnsigned: true)
!350 = !DIEnumerator(name: "RS_ERR_PER_0", value: 125, isUnsigned: true)
!351 = !DIEnumerator(name: "CHIP_ID", value: 127, isUnsigned: true)
!352 = !DIEnumerator(name: "CHAN_STOP_1", value: 128, isUnsigned: true)
!353 = !DIEnumerator(name: "CHAN_STOP_0", value: 129, isUnsigned: true)
!354 = !DIEnumerator(name: "CHAN_STEP_1", value: 130, isUnsigned: true)
!355 = !DIEnumerator(name: "CHAN_STEP_0", value: 131, isUnsigned: true)
!356 = !DIEnumerator(name: "FEC_LOCK_TIME", value: 133, isUnsigned: true)
!357 = !DIEnumerator(name: "OFDM_LOCK_TIME", value: 134, isUnsigned: true)
!358 = !DIEnumerator(name: "ACQ_DELAY", value: 135, isUnsigned: true)
!359 = !DIEnumerator(name: "SCAN_CTL", value: 136, isUnsigned: true)
!360 = !DIEnumerator(name: "CLOCK_CTL", value: 137, isUnsigned: true)
!361 = !DIEnumerator(name: "CONFIG", value: 138, isUnsigned: true)
!362 = !DIEnumerator(name: "MCLK_RATIO", value: 139, isUnsigned: true)
!363 = !DIEnumerator(name: "GPP_CTL", value: 140, isUnsigned: true)
!364 = !DIEnumerator(name: "ADC_CTL_1", value: 142, isUnsigned: true)
!365 = !DIEnumerator(name: "ADC_CTL_0", value: 143, isUnsigned: true)
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !367, line: 305, baseType: !7, size: 32, elements: !368)
!367 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!368 = !{!369, !370, !371, !372}
!369 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!370 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!371 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!372 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!373 = !{!374, !376}
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !375, line: 148, baseType: !7)
!375 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!377 = !{!378, !450, !455, !460, !465, !470, !475, !480, !0, !482, !4382, !4386, !4390, !4392, !4396}
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 589, type: !380, isLocal: true, isDefinition: true, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !382, line: 69, size: 320, elements: !383)
!382 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!383 = !{!384, !388, !392, !413, !420, !424, !428}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !381, file: !382, line: 70, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!387 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !381, file: !382, line: 71, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !391, line: 76, flags: DIFlagFwdDecl)
!391 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !381, file: !382, line: 72, baseType: !393, size: 64, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !382, line: 47, size: 256, elements: !396)
!396 = !{!397, !398, !404, !409}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !395, file: !382, line: 49, baseType: !7, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !395, file: !382, line: 51, baseType: !399, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!402, !385, !403}
!402 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !395, file: !382, line: 53, baseType: !405, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!402, !408, !403}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !395, file: !382, line: 55, baseType: !410, size: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !376}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !381, file: !382, line: 73, baseType: !414, size: 16, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !416, line: 19, baseType: !417)
!416 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !418, line: 24, baseType: !419)
!418 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!419 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !381, file: !382, line: 74, baseType: !421, size: 8, offset: 208)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !416, line: 16, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !418, line: 20, baseType: !423)
!423 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !381, file: !382, line: 75, baseType: !425, size: 8, offset: 216)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !416, line: 17, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !418, line: 21, baseType: !427)
!427 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!428 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !382, line: 76, baseType: !429, size: 64, offset: 256)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !382, line: 76, size: 64, elements: !430)
!430 = !{!431, !432, !439}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !429, file: !382, line: 77, baseType: !376, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !429, file: !382, line: 78, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !382, line: 86, size: 128, elements: !436)
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !435, file: !382, line: 87, baseType: !7, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !435, file: !382, line: 88, baseType: !408, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !429, file: !382, line: 79, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !382, line: 92, size: 256, elements: !443)
!443 = !{!444, !445, !446, !448, !449}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !442, file: !382, line: 94, baseType: !7, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !442, file: !382, line: 95, baseType: !7, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !442, file: !382, line: 96, baseType: !447, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !442, file: !382, line: 97, baseType: !393, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !442, file: !382, line: 98, baseType: !376, size: 64, offset: 192)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 589, type: !452, isLocal: true, isDefinition: true, align: 8)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 200, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 25)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 590, type: !457, isLocal: true, isDefinition: true, align: 8)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 504, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 63)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 592, type: !462, isLocal: true, isDefinition: true, align: 8)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 456, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 57)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author223", scope: !2, file: !3, line: 593, type: !467, isLocal: true, isDefinition: true, align: 8)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 480, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 60)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file224", scope: !2, file: !3, line: 594, type: !472, isLocal: true, isDefinition: true, align: 8)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 360, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 45)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license225", scope: !2, file: !3, line: 594, type: !477, isLocal: true, isDefinition: true, align: 8)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 144, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 18)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 38, type: !402, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(name: "mt352_reset_attach", scope: !484, file: !3, line: 507, type: !4381, isLocal: true, isDefinition: true)
!484 = distinct !DISubprogram(name: "mt352_init", scope: !3, file: !3, line: 503, type: !485, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!485 = !DISubroutineType(types: !486)
!486 = !{!402, !487}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !489)
!489 = !{!490, !504, !797, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4379, !4380}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !488, file: !51, line: 687, baseType: !491, size: 32)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !492, line: 19, size: 32, elements: !493)
!492 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !491, file: !492, line: 20, baseType: !495, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !496, line: 113, baseType: !497)
!496 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !496, line: 111, size: 32, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !497, file: !496, line: 112, baseType: !500, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !375, line: 168, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !375, line: 166, size: 32, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !501, file: !375, line: 167, baseType: !402, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !488, file: !51, line: 688, baseType: !505, size: 6016, offset: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !506)
!506 = !{!507, !524, !528, !532, !533, !534, !536, !537, !543, !550, !554, !555, !565, !650, !654, !659, !664, !665, !666, !667, !679, !690, !694, !698, !702, !707, !712, !716, !717, !718, !722, !779}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !505, file: !51, line: 436, baseType: !508, size: 1280)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !509)
!509 = !{!510, !514, !517, !518, !519, !520, !521, !522, !523}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !508, file: !51, line: 339, baseType: !511, size: 1024)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 1024, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !508, file: !51, line: 340, baseType: !515, size: 32, offset: 1024)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !416, line: 21, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !418, line: 27, baseType: !7)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !508, file: !51, line: 341, baseType: !515, size: 32, offset: 1056)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !508, file: !51, line: 342, baseType: !515, size: 32, offset: 1088)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !508, file: !51, line: 343, baseType: !515, size: 32, offset: 1120)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !508, file: !51, line: 344, baseType: !515, size: 32, offset: 1152)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !508, file: !51, line: 345, baseType: !515, size: 32, offset: 1184)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !508, file: !51, line: 346, baseType: !515, size: 32, offset: 1216)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !508, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !505, file: !51, line: 438, baseType: !525, size: 64, offset: 1280)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 64, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 8)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !505, file: !51, line: 440, baseType: !529, size: 64, offset: 1344)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !487}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !505, file: !51, line: 441, baseType: !529, size: 64, offset: 1408)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !505, file: !51, line: 442, baseType: !529, size: 64, offset: 1472)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !505, file: !51, line: 444, baseType: !535, size: 64, offset: 1536)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !505, file: !51, line: 445, baseType: !535, size: 64, offset: 1600)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !505, file: !51, line: 447, baseType: !538, size: 64, offset: 1664)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!402, !487, !541, !402}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !505, file: !51, line: 450, baseType: !544, size: 64, offset: 1728)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!402, !487, !547, !7, !447, !549}
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !375, line: 30, baseType: !548)
!548 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !505, file: !51, line: 457, baseType: !551, size: 64, offset: 1792)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!50, !487}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !505, file: !51, line: 460, baseType: !535, size: 64, offset: 1856)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !505, file: !51, line: 461, baseType: !556, size: 64, offset: 1920)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!402, !487, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !561)
!561 = !{!562, !563, !564}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !560, file: !51, line: 70, baseType: !402, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !560, file: !51, line: 71, baseType: !402, size: 32, offset: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !560, file: !51, line: 72, baseType: !402, size: 32, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !505, file: !51, line: 463, baseType: !566, size: 64, offset: 1984)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!402, !487, !569}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !643, !644, !645, !646, !647, !648, !649}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !570, file: !51, line: 587, baseType: !515, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !570, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !570, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !570, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !570, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !570, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !570, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !570, file: !51, line: 595, baseType: !515, size: 32, offset: 224)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !570, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !570, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !570, file: !51, line: 598, baseType: !515, size: 32, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !570, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !570, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !570, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !570, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !570, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !570, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !570, file: !51, line: 610, baseType: !425, size: 8, offset: 544)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !570, file: !51, line: 611, baseType: !425, size: 8, offset: 552)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !570, file: !51, line: 612, baseType: !425, size: 8, offset: 560)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !570, file: !51, line: 613, baseType: !515, size: 32, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !570, file: !51, line: 614, baseType: !515, size: 32, offset: 608)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !570, file: !51, line: 615, baseType: !425, size: 8, offset: 640)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !570, file: !51, line: 621, baseType: !596, size: 384, offset: 672)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, size: 384, elements: !603)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !570, file: !51, line: 616, size: 128, elements: !598)
!598 = !{!599, !600, !601, !602}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !597, file: !51, line: 617, baseType: !425, size: 8)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !597, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !597, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !597, file: !51, line: 620, baseType: !425, size: 8, offset: 96)
!603 = !{!604}
!604 = !DISubrange(count: 3)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !570, file: !51, line: 624, baseType: !515, size: 32, offset: 1056)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !570, file: !51, line: 627, baseType: !515, size: 32, offset: 1088)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !570, file: !51, line: 630, baseType: !425, size: 8, offset: 1120)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !570, file: !51, line: 631, baseType: !425, size: 8, offset: 1128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !570, file: !51, line: 632, baseType: !425, size: 8, offset: 1136)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !570, file: !51, line: 633, baseType: !425, size: 8, offset: 1144)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !570, file: !51, line: 634, baseType: !425, size: 8, offset: 1152)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !570, file: !51, line: 635, baseType: !425, size: 8, offset: 1160)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !570, file: !51, line: 637, baseType: !425, size: 8, offset: 1168)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !570, file: !51, line: 638, baseType: !425, size: 8, offset: 1176)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !570, file: !51, line: 639, baseType: !425, size: 8, offset: 1184)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !570, file: !51, line: 640, baseType: !425, size: 8, offset: 1192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !570, file: !51, line: 641, baseType: !425, size: 8, offset: 1200)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !570, file: !51, line: 642, baseType: !425, size: 8, offset: 1208)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !570, file: !51, line: 643, baseType: !425, size: 8, offset: 1216)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !570, file: !51, line: 644, baseType: !425, size: 8, offset: 1224)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !570, file: !51, line: 645, baseType: !425, size: 8, offset: 1232)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !570, file: !51, line: 647, baseType: !515, size: 32, offset: 1248)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !570, file: !51, line: 650, baseType: !624, size: 296, offset: 1280)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !624, file: !6, line: 826, baseType: !426, size: 8)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !624, file: !6, line: 827, baseType: !628, size: 288, offset: 8)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 288, elements: !641)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !629, file: !6, line: 804, baseType: !426, size: 8)
!632 = !DIDerivedType(tag: DW_TAG_member, scope: !629, file: !6, line: 805, baseType: !633, size: 64, offset: 8)
!633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !629, file: !6, line: 805, size: 64, elements: !634)
!634 = !{!635, !638}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !633, file: !6, line: 806, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !418, line: 31, baseType: !637)
!637 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !633, file: !6, line: 807, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !418, line: 30, baseType: !640)
!640 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!641 = !{!642}
!642 = !DISubrange(count: 4)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !570, file: !51, line: 651, baseType: !624, size: 296, offset: 1576)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !570, file: !51, line: 652, baseType: !624, size: 296, offset: 1872)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !570, file: !51, line: 653, baseType: !624, size: 296, offset: 2168)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !570, file: !51, line: 654, baseType: !624, size: 296, offset: 2464)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !570, file: !51, line: 655, baseType: !624, size: 296, offset: 2760)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !570, file: !51, line: 656, baseType: !624, size: 296, offset: 3056)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !570, file: !51, line: 657, baseType: !624, size: 296, offset: 3352)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !505, file: !51, line: 466, baseType: !651, size: 64, offset: 2048)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!402, !487, !549}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !505, file: !51, line: 467, baseType: !655, size: 64, offset: 2112)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!402, !487, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !505, file: !51, line: 468, baseType: !660, size: 64, offset: 2176)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!402, !487, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !505, file: !51, line: 469, baseType: !660, size: 64, offset: 2240)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !505, file: !51, line: 470, baseType: !655, size: 64, offset: 2304)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !505, file: !51, line: 472, baseType: !535, size: 64, offset: 2368)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !505, file: !51, line: 473, baseType: !668, size: 64, offset: 2432)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!402, !487, !671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !673)
!673 = !{!674, !678}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !672, file: !6, line: 174, baseType: !675, size: 48)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 48, elements: !676)
!676 = !{!677}
!677 = !DISubrange(count: 6)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !672, file: !6, line: 175, baseType: !426, size: 8, offset: 48)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !505, file: !51, line: 474, baseType: !680, size: 64, offset: 2496)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!402, !487, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !685)
!685 = !{!686, !688, !689}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !684, file: !6, line: 196, baseType: !687, size: 32)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 32, elements: !641)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !684, file: !6, line: 197, baseType: !426, size: 8, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !684, file: !6, line: 198, baseType: !402, size: 32, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !505, file: !51, line: 475, baseType: !691, size: 64, offset: 2560)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!402, !487, !171}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !505, file: !51, line: 477, baseType: !695, size: 64, offset: 2624)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!402, !487, !78}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !505, file: !51, line: 478, baseType: !699, size: 64, offset: 2688)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!402, !487, !73}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !505, file: !51, line: 480, baseType: !703, size: 64, offset: 2752)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!402, !487, !706}
!706 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !505, file: !51, line: 481, baseType: !708, size: 64, offset: 2816)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!402, !487, !711}
!711 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !505, file: !51, line: 482, baseType: !713, size: 64, offset: 2880)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!402, !487, !402}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !505, file: !51, line: 483, baseType: !713, size: 64, offset: 2944)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !505, file: !51, line: 484, baseType: !535, size: 64, offset: 3008)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !505, file: !51, line: 490, baseType: !719, size: 64, offset: 3072)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!175, !487}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !505, file: !51, line: 492, baseType: !723, size: 2304, offset: 3136)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !724)
!724 = !{!725, !735, !736, !737, !738, !739, !740, !741, !753, !757, !758, !759, !760, !761, !762, !769, !774, !778}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !723, file: !51, line: 228, baseType: !726, size: 1216)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !727)
!727 = !{!728, !729, !730, !731, !732, !733, !734}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !726, file: !51, line: 89, baseType: !511, size: 1024)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !726, file: !51, line: 91, baseType: !515, size: 32, offset: 1024)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !726, file: !51, line: 92, baseType: !515, size: 32, offset: 1056)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !726, file: !51, line: 93, baseType: !515, size: 32, offset: 1088)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !726, file: !51, line: 95, baseType: !515, size: 32, offset: 1120)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !726, file: !51, line: 96, baseType: !515, size: 32, offset: 1152)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !726, file: !51, line: 97, baseType: !515, size: 32, offset: 1184)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !723, file: !51, line: 230, baseType: !529, size: 64, offset: 1216)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !723, file: !51, line: 231, baseType: !535, size: 64, offset: 1280)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !723, file: !51, line: 232, baseType: !535, size: 64, offset: 1344)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !723, file: !51, line: 233, baseType: !535, size: 64, offset: 1408)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !723, file: !51, line: 234, baseType: !535, size: 64, offset: 1472)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !723, file: !51, line: 237, baseType: !535, size: 64, offset: 1536)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !723, file: !51, line: 238, baseType: !742, size: 64, offset: 1600)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!402, !487, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !747)
!747 = !{!748, !749, !750, !751}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !746, file: !51, line: 115, baseType: !7, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !746, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !746, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !746, file: !51, line: 118, baseType: !752, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !416, line: 23, baseType: !636)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !723, file: !51, line: 240, baseType: !754, size: 64, offset: 1664)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!402, !487, !376}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !723, file: !51, line: 242, baseType: !655, size: 64, offset: 1728)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !723, file: !51, line: 243, baseType: !655, size: 64, offset: 1792)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !723, file: !51, line: 244, baseType: !655, size: 64, offset: 1856)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !723, file: !51, line: 248, baseType: !655, size: 64, offset: 1920)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !723, file: !51, line: 249, baseType: !660, size: 64, offset: 1984)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !723, file: !51, line: 250, baseType: !763, size: 64, offset: 2048)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!402, !487, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !416, line: 20, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !418, line: 26, baseType: !402)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !723, file: !51, line: 258, baseType: !770, size: 64, offset: 2112)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!402, !487, !773, !402}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !723, file: !51, line: 267, baseType: !775, size: 64, offset: 2176)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!402, !487, !515}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !723, file: !51, line: 268, baseType: !775, size: 64, offset: 2240)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !505, file: !51, line: 493, baseType: !780, size: 576, offset: 5440)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !781)
!781 = !{!782, !786, !790, !791, !792, !793, !794, !795, !796}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !780, file: !51, line: 304, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !784)
!784 = !{!785}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !783, file: !51, line: 277, baseType: !408, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !780, file: !51, line: 306, baseType: !787, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !487, !745}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !780, file: !51, line: 308, baseType: !660, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !780, file: !51, line: 309, baseType: !763, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !780, file: !51, line: 310, baseType: !529, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !780, file: !51, line: 311, baseType: !529, size: 64, offset: 320)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !780, file: !51, line: 312, baseType: !529, size: 64, offset: 384)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !780, file: !51, line: 313, baseType: !713, size: 64, offset: 448)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !780, file: !51, line: 316, baseType: !754, size: 64, offset: 512)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !488, file: !51, line: 689, baseType: !798, size: 64, offset: 6080)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !800)
!800 = !{!801, !802, !808, !809, !810, !812, !813, !4347, !4348, !4349, !4368}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !799, file: !272, line: 102, baseType: !402, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !799, file: !272, line: 103, baseType: !803, size: 128, offset: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !375, line: 178, size: 128, elements: !804)
!804 = !{!805, !807}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !803, file: !375, line: 179, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !803, file: !375, line: 179, baseType: !806, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !799, file: !272, line: 104, baseType: !803, size: 128, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !799, file: !272, line: 105, baseType: !385, size: 64, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !799, file: !272, line: 106, baseType: !811, size: 48, offset: 384)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 48, elements: !676)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !799, file: !272, line: 107, baseType: !376, size: 64, offset: 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !799, file: !272, line: 109, baseType: !814, size: 64, offset: 512)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !816)
!816 = !{!817, !3804, !3805, !3808, !3809, !3860, !3948, !3949, !3950, !3951, !3952, !3961, !4066, !4079, !4274, !4275, !4279, !4281, !4282, !4283, !4287, !4293, !4294, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4335, !4336, !4337, !4340, !4343, !4344, !4345, !4346}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !815, file: !237, line: 462, baseType: !818, size: 512)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !819, line: 64, size: 512, elements: !820)
!819 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!820 = !{!821, !822, !823, !825, !882, !3659, !3798, !3799, !3800, !3801, !3802, !3803}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !818, file: !819, line: 65, baseType: !385, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !818, file: !819, line: 66, baseType: !803, size: 128, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !818, file: !819, line: 67, baseType: !824, size: 64, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !818, file: !819, line: 68, baseType: !826, size: 64, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !819, line: 192, size: 704, elements: !828)
!828 = !{!829, !830, !846, !847}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !827, file: !819, line: 193, baseType: !803, size: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !827, file: !819, line: 194, baseType: !831, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !832, line: 83, baseType: !833)
!832 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !832, line: 71, elements: !834)
!834 = !{!835}
!835 = !DIDerivedType(tag: DW_TAG_member, scope: !833, file: !832, line: 72, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !833, file: !832, line: 72, elements: !837)
!837 = !{!838}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !836, file: !832, line: 73, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !832, line: 20, elements: !840)
!840 = !{!841}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !839, file: !832, line: 21, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !843, line: 25, baseType: !844)
!843 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !843, line: 25, elements: !845)
!845 = !{}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !827, file: !819, line: 195, baseType: !818, size: 512, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !827, file: !819, line: 196, baseType: !848, size: 64, offset: 640)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !819, line: 156, size: 192, elements: !851)
!851 = !{!852, !857, !862}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !850, file: !819, line: 157, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!402, !826, !824}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !850, file: !819, line: 158, baseType: !858, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!385, !826, !824}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !850, file: !819, line: 159, baseType: !863, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!402, !826, !824, !867}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !819, line: 148, size: 20736, elements: !869)
!869 = !{!870, !872, !876, !877, !881}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !868, file: !819, line: 149, baseType: !871, size: 192)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 192, elements: !603)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !868, file: !819, line: 150, baseType: !873, size: 4096, offset: 192)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 4096, elements: !874)
!874 = !{!875}
!875 = !DISubrange(count: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !868, file: !819, line: 151, baseType: !402, size: 32, offset: 4288)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !868, file: !819, line: 152, baseType: !878, size: 16384, offset: 4320)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 16384, elements: !879)
!879 = !{!880}
!880 = !DISubrange(count: 2048)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !868, file: !819, line: 153, baseType: !402, size: 32, offset: 20704)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !818, file: !819, line: 69, baseType: !883, size: 64, offset: 320)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !819, line: 138, size: 448, elements: !885)
!885 = !{!886, !890, !917, !919, !3621, !3649, !3653}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !884, file: !819, line: 139, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !824}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !884, file: !819, line: 140, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !893)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !894, line: 230, size: 128, elements: !895)
!894 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!895 = !{!896, !910}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !893, file: !894, line: 231, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!900, !824, !904, !408}
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !375, line: 60, baseType: !901)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !902, line: 73, baseType: !903)
!902 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !902, line: 15, baseType: !706)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !894, line: 30, size: 128, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !905, file: !894, line: 31, baseType: !385, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !905, file: !894, line: 32, baseType: !909, size: 16, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !375, line: 19, baseType: !419)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !893, file: !894, line: 232, baseType: !911, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!900, !824, !904, !385, !914}
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !375, line: 55, baseType: !915)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !902, line: 72, baseType: !916)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !902, line: 16, baseType: !711)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !884, file: !819, line: 141, baseType: !918, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !884, file: !819, line: 142, baseType: !920, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !923)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !894, line: 84, size: 320, elements: !924)
!924 = !{!925, !926, !930, !3618, !3619}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !923, file: !894, line: 85, baseType: !385, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !923, file: !894, line: 86, baseType: !927, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!909, !824, !904, !402}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !923, file: !894, line: 88, baseType: !931, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!909, !824, !934, !402}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !894, line: 168, size: 448, elements: !936)
!936 = !{!937, !938, !939, !940, !3613, !3614}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !935, file: !894, line: 169, baseType: !905, size: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !935, file: !894, line: 170, baseType: !914, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !935, file: !894, line: 171, baseType: !376, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !935, file: !894, line: 172, baseType: !941, size: 64, offset: 256)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!900, !944, !824, !934, !408, !1110, !914}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !946)
!946 = !{!947, !965, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3596, !3597, !3606, !3607, !3608, !3609, !3610, !3611, !3612}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !945, file: !208, line: 920, baseType: !948, size: 128)
!948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !945, file: !208, line: 917, size: 128, elements: !949)
!949 = !{!950, !956}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !948, file: !208, line: 918, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !952, line: 58, size: 64, elements: !953)
!952 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!953 = !{!954}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !951, file: !952, line: 59, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !948, file: !208, line: 919, baseType: !957, size: 128, align: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !375, line: 216, size: 128, align: 64, elements: !958)
!958 = !{!959, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !957, file: !375, line: 217, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !957, file: !375, line: 218, baseType: !962, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{null, !960}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !945, file: !208, line: 921, baseType: !966, size: 128, offset: 128)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !967, line: 8, size: 128, elements: !968)
!967 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!968 = !{!969, !973}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !966, file: !967, line: 9, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !972, line: 18, flags: DIFlagFwdDecl)
!972 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!973 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !966, file: !967, line: 10, baseType: !974, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !972, line: 89, size: 1536, elements: !976)
!976 = !{!977, !978, !988, !996, !997, !1012, !3547, !3549, !3561, !3562, !3563, !3564, !3565, !3570, !3571, !3572}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !975, file: !972, line: 91, baseType: !7, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !975, file: !972, line: 92, baseType: !979, size: 32, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !980, line: 277, baseType: !981)
!980 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !980, line: 277, size: 32, elements: !982)
!982 = !{!983}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !981, file: !980, line: 277, baseType: !984, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !980, line: 70, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !980, line: 65, size: 32, elements: !986)
!986 = !{!987}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !985, file: !980, line: 66, baseType: !7, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !975, file: !972, line: 93, baseType: !989, size: 128, offset: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !990, line: 38, size: 128, elements: !991)
!990 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!991 = !{!992, !994}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !989, file: !990, line: 39, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !989, file: !990, line: 39, baseType: !995, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !975, file: !972, line: 94, baseType: !974, size: 64, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !975, file: !972, line: 95, baseType: !998, size: 128, offset: 256)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !972, line: 47, size: 128, elements: !999)
!999 = !{!1000, !1009}
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !972, line: 48, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !998, file: !972, line: 48, size: 64, elements: !1002)
!1002 = !{!1003, !1008}
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !972, line: 49, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !972, line: 49, size: 64, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1004, file: !972, line: 50, baseType: !515, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1004, file: !972, line: 50, baseType: !515, size: 32, offset: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1001, file: !972, line: 52, baseType: !752, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !998, file: !972, line: 54, baseType: !1010, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !975, file: !972, line: 96, baseType: !1013, size: 64, offset: 384)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !1015)
!1015 = !{!1016, !1017, !1018, !1026, !1033, !1034, !1175, !3241, !3242, !3243, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3515, !3523, !3524, !3525, !3543, !3544, !3545, !3546}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1014, file: !208, line: 611, baseType: !909, size: 16)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1014, file: !208, line: 612, baseType: !419, size: 16, offset: 16)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1014, file: !208, line: 613, baseType: !1019, size: 32, offset: 32)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1020, line: 23, baseType: !1021)
!1020 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1020, line: 21, size: 32, elements: !1022)
!1022 = !{!1023}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1021, file: !1020, line: 22, baseType: !1024, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !375, line: 32, baseType: !1025)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !902, line: 49, baseType: !7)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1014, file: !208, line: 614, baseType: !1027, size: 32, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1020, line: 28, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1020, line: 26, size: 32, elements: !1029)
!1029 = !{!1030}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1028, file: !1020, line: 27, baseType: !1031, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !375, line: 33, baseType: !1032)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !902, line: 50, baseType: !7)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1014, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1014, file: !208, line: 622, baseType: !1035, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1037)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !1038)
!1038 = !{!1039, !1043, !1053, !1057, !1063, !1067, !1071, !1075, !1079, !1083, !1087, !1088, !1094, !1098, !1122, !1151, !1155, !1161, !1166, !1170, !1171}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1037, file: !208, line: 1865, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!974, !1013, !974, !7}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1037, file: !208, line: 1866, baseType: !1044, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!385, !974, !1013, !1047}
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1049, line: 10, size: 128, elements: !1050)
!1049 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1048, file: !1049, line: 11, baseType: !410, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1048, file: !1049, line: 12, baseType: !376, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1037, file: !208, line: 1867, baseType: !1054, size: 64, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!402, !1013, !402}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1037, file: !208, line: 1868, baseType: !1058, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!1061, !1013, !402}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1037, file: !208, line: 1870, baseType: !1064, size: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!402, !974, !408, !402}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1037, file: !208, line: 1872, baseType: !1068, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!402, !1013, !974, !909, !547}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1037, file: !208, line: 1873, baseType: !1072, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!402, !974, !1013, !974}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1037, file: !208, line: 1874, baseType: !1076, size: 64, offset: 448)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!402, !1013, !974}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1037, file: !208, line: 1875, baseType: !1080, size: 64, offset: 512)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!402, !1013, !974, !385}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1037, file: !208, line: 1876, baseType: !1084, size: 64, offset: 576)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!402, !1013, !974, !909}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1037, file: !208, line: 1877, baseType: !1076, size: 64, offset: 640)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1037, file: !208, line: 1878, baseType: !1089, size: 64, offset: 704)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!402, !1013, !974, !909, !1092}
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !375, line: 16, baseType: !1093)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !375, line: 13, baseType: !515)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1037, file: !208, line: 1879, baseType: !1095, size: 64, offset: 768)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!402, !1013, !974, !1013, !974, !7}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1037, file: !208, line: 1881, baseType: !1099, size: 64, offset: 832)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!402, !974, !1102}
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1112, !1119, !1120, !1121}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1103, file: !208, line: 220, baseType: !7, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1103, file: !208, line: 221, baseType: !909, size: 16, offset: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1103, file: !208, line: 222, baseType: !1019, size: 32, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1103, file: !208, line: 223, baseType: !1027, size: 32, offset: 96)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1103, file: !208, line: 224, baseType: !1110, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !375, line: 46, baseType: !1111)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !902, line: 88, baseType: !640)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1103, file: !208, line: 225, baseType: !1113, size: 128, offset: 192)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1114, line: 13, size: 128, elements: !1115)
!1114 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1115 = !{!1116, !1118}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1113, file: !1114, line: 14, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1114, line: 8, baseType: !639)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1113, file: !1114, line: 15, baseType: !706, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1103, file: !208, line: 226, baseType: !1113, size: 128, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1103, file: !208, line: 227, baseType: !1113, size: 128, offset: 448)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1103, file: !208, line: 234, baseType: !944, size: 64, offset: 576)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1037, file: !208, line: 1882, baseType: !1123, size: 64, offset: 896)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!402, !1126, !1128, !515, !7}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !966)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1130, line: 22, size: 1152, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!1131 = !{!1132, !1133, !1134, !1135, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1129, file: !1130, line: 23, baseType: !515, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1129, file: !1130, line: 24, baseType: !909, size: 16, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1129, file: !1130, line: 25, baseType: !7, size: 32, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1129, file: !1130, line: 26, baseType: !1136, size: 32, offset: 96)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !375, line: 104, baseType: !515)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1129, file: !1130, line: 27, baseType: !752, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1129, file: !1130, line: 28, baseType: !752, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1129, file: !1130, line: 37, baseType: !752, size: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1129, file: !1130, line: 38, baseType: !1092, size: 32, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1129, file: !1130, line: 39, baseType: !1092, size: 32, offset: 352)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1129, file: !1130, line: 40, baseType: !1019, size: 32, offset: 384)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1129, file: !1130, line: 41, baseType: !1027, size: 32, offset: 416)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1129, file: !1130, line: 42, baseType: !1110, size: 64, offset: 448)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1129, file: !1130, line: 43, baseType: !1113, size: 128, offset: 512)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1129, file: !1130, line: 44, baseType: !1113, size: 128, offset: 640)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1129, file: !1130, line: 45, baseType: !1113, size: 128, offset: 768)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1129, file: !1130, line: 46, baseType: !1113, size: 128, offset: 896)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1129, file: !1130, line: 47, baseType: !752, size: 64, offset: 1024)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1129, file: !1130, line: 48, baseType: !752, size: 64, offset: 1088)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1037, file: !208, line: 1883, baseType: !1152, size: 64, offset: 960)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!900, !974, !408, !914}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1037, file: !208, line: 1884, baseType: !1156, size: 64, offset: 1024)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!402, !1013, !1159, !752, !752}
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1037, file: !208, line: 1886, baseType: !1162, size: 64, offset: 1088)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!402, !1013, !1165, !402}
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1037, file: !208, line: 1887, baseType: !1167, size: 64, offset: 1152)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!402, !1013, !974, !944, !7, !909}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1037, file: !208, line: 1890, baseType: !1084, size: 64, offset: 1216)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1037, file: !208, line: 1891, baseType: !1172, size: 64, offset: 1280)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!402, !1013, !1061, !402}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1014, file: !208, line: 623, baseType: !1176, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !1178)
!1178 = !{!1179, !1180, !1181, !1182, !1183, !1184, !1231, !2849, !2931, !3014, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3030, !3034, !3035, !3038, !3039, !3042, !3043, !3044, !3085, !3111, !3112, !3113, !3114, !3115, !3116, !3119, !3121, !3128, !3129, !3131, !3132, !3133, !3192, !3193, !3208, !3209, !3210, !3211, !3212, !3215, !3216, !3217, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1177, file: !208, line: 1417, baseType: !803, size: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1177, file: !208, line: 1418, baseType: !1092, size: 32, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1177, file: !208, line: 1419, baseType: !427, size: 8, offset: 160)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1177, file: !208, line: 1420, baseType: !711, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1177, file: !208, line: 1421, baseType: !1110, size: 64, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1177, file: !208, line: 1422, baseType: !1185, size: 64, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1197, !1201, !1205, !1209, !1210, !1211, !1221, !1224, !1225, !1226, !1228, !1229, !1230}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1186, file: !208, line: 2229, baseType: !385, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1186, file: !208, line: 2230, baseType: !402, size: 32, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1186, file: !208, line: 2238, baseType: !1191, size: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!402, !1194}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1196, line: 28, flags: DIFlagFwdDecl)
!1196 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1186, file: !208, line: 2239, baseType: !1198, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1200)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1186, file: !208, line: 2240, baseType: !1202, size: 64, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!974, !1185, !402, !385, !376}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1186, file: !208, line: 2242, baseType: !1206, size: 64, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{null, !1176}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1186, file: !208, line: 2243, baseType: !389, size: 64, offset: 384)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1186, file: !208, line: 2244, baseType: !1185, size: 64, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1186, file: !208, line: 2245, baseType: !1212, size: 64, offset: 512)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !375, line: 182, size: 64, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1212, file: !375, line: 183, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !375, line: 186, size: 128, elements: !1217)
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1216, file: !375, line: 187, baseType: !1215, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1216, file: !375, line: 187, baseType: !1220, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1186, file: !208, line: 2247, baseType: !1222, offset: 576)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1223, line: 187, elements: !845)
!1223 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1186, file: !208, line: 2248, baseType: !1222, offset: 576)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1186, file: !208, line: 2249, baseType: !1222, offset: 576)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1186, file: !208, line: 2250, baseType: !1227, offset: 576)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1222, elements: !603)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1186, file: !208, line: 2252, baseType: !1222, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1186, file: !208, line: 2253, baseType: !1222, offset: 576)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1186, file: !208, line: 2254, baseType: !1222, offset: 576)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1177, file: !208, line: 1423, baseType: !1232, size: 64, offset: 384)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1234)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !1235)
!1235 = !{!1236, !1240, !1244, !1245, !1249, !1255, !1259, !1260, !1261, !1265, !1269, !1270, !1271, !1272, !1278, !1283, !1284, !1291, !1292, !1293, !1294, !2833, !2848}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1234, file: !208, line: 1936, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1013, !1176}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1234, file: !208, line: 1937, baseType: !1241, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !1013}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1234, file: !208, line: 1938, baseType: !1241, size: 64, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1234, file: !208, line: 1940, baseType: !1246, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !1013, !402}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1234, file: !208, line: 1941, baseType: !1250, size: 64, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!402, !1013, !1253}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1234, file: !208, line: 1942, baseType: !1256, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!402, !1013}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1234, file: !208, line: 1943, baseType: !1241, size: 64, offset: 384)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1234, file: !208, line: 1944, baseType: !1206, size: 64, offset: 448)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1234, file: !208, line: 1945, baseType: !1262, size: 64, offset: 512)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!402, !1176, !402}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1234, file: !208, line: 1946, baseType: !1266, size: 64, offset: 576)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!402, !1176}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1234, file: !208, line: 1947, baseType: !1266, size: 64, offset: 640)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1234, file: !208, line: 1948, baseType: !1266, size: 64, offset: 704)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1234, file: !208, line: 1949, baseType: !1266, size: 64, offset: 768)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1234, file: !208, line: 1950, baseType: !1273, size: 64, offset: 832)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!402, !974, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1234, file: !208, line: 1951, baseType: !1279, size: 64, offset: 896)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!402, !1176, !1282, !408}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1234, file: !208, line: 1952, baseType: !1206, size: 64, offset: 960)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1234, file: !208, line: 1954, baseType: !1285, size: 64, offset: 1024)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!402, !1288, !974}
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1290, line: 539, flags: DIFlagFwdDecl)
!1290 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1234, file: !208, line: 1955, baseType: !1285, size: 64, offset: 1088)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1234, file: !208, line: 1956, baseType: !1285, size: 64, offset: 1152)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1234, file: !208, line: 1957, baseType: !1285, size: 64, offset: 1216)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1234, file: !208, line: 1963, baseType: !1295, size: 64, offset: 1280)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!402, !1176, !1298, !374}
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1300, line: 68, size: 512, align: 128, elements: !1301)
!1300 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1301 = !{!1302, !1303, !2825, !2832}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1299, file: !1300, line: 69, baseType: !711, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !1300, line: 77, baseType: !1304, size: 320, offset: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1299, file: !1300, line: 77, size: 320, elements: !1305)
!1305 = !{!1306, !1487, !1492, !1520, !1528, !1534, !2817, !2824}
!1306 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !1300, line: 78, baseType: !1307, size: 320)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !1300, line: 78, size: 320, elements: !1308)
!1308 = !{!1309, !1310, !1485, !1486}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1307, file: !1300, line: 84, baseType: !803, size: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1307, file: !1300, line: 86, baseType: !1311, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !1313)
!1313 = !{!1314, !1315, !1322, !1323, !1324, !1339, !1355, !1356, !1357, !1358, !1478, !1479, !1482, !1483, !1484}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1312, file: !208, line: 452, baseType: !1013, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1312, file: !208, line: 453, baseType: !1316, size: 128, offset: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1317, line: 292, size: 128, elements: !1318)
!1317 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1318 = !{!1319, !1320, !1321}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1316, file: !1317, line: 293, baseType: !831)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1316, file: !1317, line: 295, baseType: !374, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1316, file: !1317, line: 296, baseType: !376, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1312, file: !208, line: 454, baseType: !374, size: 32, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1312, file: !208, line: 455, baseType: !500, size: 32, offset: 224)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1312, file: !208, line: 460, baseType: !1325, size: 128, offset: 256)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1326, line: 125, size: 128, elements: !1327)
!1326 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!1327 = !{!1328, !1338}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1325, file: !1326, line: 126, baseType: !1329, size: 64)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1326, line: 31, size: 64, elements: !1330)
!1330 = !{!1331}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1329, file: !1326, line: 32, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1326, line: 24, size: 192, align: 64, elements: !1334)
!1334 = !{!1335, !1336, !1337}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1333, file: !1326, line: 25, baseType: !711, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1333, file: !1326, line: 26, baseType: !1332, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1333, file: !1326, line: 27, baseType: !1332, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1325, file: !1326, line: 127, baseType: !1332, size: 64, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1312, file: !208, line: 461, baseType: !1340, size: 256, offset: 384)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1341, line: 35, size: 256, elements: !1342)
!1341 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1342 = !{!1343, !1351, !1352, !1354}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1340, file: !1341, line: 36, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1345, line: 13, baseType: !1346)
!1345 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !375, line: 175, baseType: !1347)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !375, line: 173, size: 64, elements: !1348)
!1348 = !{!1349}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1347, file: !375, line: 174, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !416, line: 22, baseType: !639)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1340, file: !1341, line: 42, baseType: !1344, size: 64, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1340, file: !1341, line: 46, baseType: !1353, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !832, line: 29, baseType: !839)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1340, file: !1341, line: 47, baseType: !803, size: 128, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1312, file: !208, line: 462, baseType: !711, size: 64, offset: 640)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1312, file: !208, line: 463, baseType: !711, size: 64, offset: 704)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1312, file: !208, line: 464, baseType: !711, size: 64, offset: 768)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1312, file: !208, line: 465, baseType: !1359, size: 64, offset: 832)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1361)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1362)
!1362 = !{!1363, !1367, !1371, !1375, !1379, !1383, !1389, !1395, !1399, !1404, !1408, !1412, !1416, !1442, !1446, !1452, !1453, !1454, !1458, !1463, !1467, !1474}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1361, file: !208, line: 368, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!402, !1298, !1253}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1361, file: !208, line: 369, baseType: !1368, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!402, !944, !1298}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1361, file: !208, line: 372, baseType: !1372, size: 64, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!402, !1311, !1253}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1361, file: !208, line: 375, baseType: !1376, size: 64, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!402, !1298}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1361, file: !208, line: 381, baseType: !1380, size: 64, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!402, !944, !1311, !806, !7}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1361, file: !208, line: 383, baseType: !1384, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !1387}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1361, file: !208, line: 385, baseType: !1390, size: 64, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!402, !944, !1311, !1110, !7, !7, !1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1361, file: !208, line: 388, baseType: !1396, size: 64, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!402, !944, !1311, !1110, !7, !7, !1298, !376}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1361, file: !208, line: 393, baseType: !1400, size: 64, offset: 512)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!1403, !1311, !1403}
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !375, line: 125, baseType: !752)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1361, file: !208, line: 394, baseType: !1405, size: 64, offset: 576)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !1298, !7, !7}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1361, file: !208, line: 395, baseType: !1409, size: 64, offset: 640)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!402, !1298, !374}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1361, file: !208, line: 396, baseType: !1413, size: 64, offset: 704)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{null, !1298}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1361, file: !208, line: 397, baseType: !1417, size: 64, offset: 768)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!900, !1420, !1440}
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1422)
!1422 = !{!1423, !1424, !1425, !1429, !1430, !1431, !1432, !1433}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1421, file: !208, line: 321, baseType: !944, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1421, file: !208, line: 326, baseType: !1110, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1421, file: !208, line: 327, baseType: !1426, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{null, !1420, !706, !706}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1421, file: !208, line: 328, baseType: !376, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1421, file: !208, line: 329, baseType: !402, size: 32, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1421, file: !208, line: 330, baseType: !415, size: 16, offset: 288)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1421, file: !208, line: 331, baseType: !415, size: 16, offset: 304)
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1421, file: !208, line: 332, baseType: !1434, size: 64, offset: 320)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1421, file: !208, line: 332, size: 64, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1434, file: !208, line: 333, baseType: !7, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1434, file: !208, line: 334, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1361, file: !208, line: 402, baseType: !1443, size: 64, offset: 832)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!402, !1311, !1298, !1298, !183}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1361, file: !208, line: 404, baseType: !1447, size: 64, offset: 896)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!547, !1298, !1450}
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1451, line: 305, baseType: !7)
!1451 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1361, file: !208, line: 405, baseType: !1413, size: 64, offset: 960)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1361, file: !208, line: 406, baseType: !1376, size: 64, offset: 1024)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1361, file: !208, line: 407, baseType: !1455, size: 64, offset: 1088)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!402, !1298, !711, !711}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1361, file: !208, line: 409, baseType: !1459, size: 64, offset: 1152)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{null, !1298, !1462, !1462}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1361, file: !208, line: 410, baseType: !1464, size: 64, offset: 1216)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!402, !1311, !1298}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1361, file: !208, line: 413, baseType: !1468, size: 64, offset: 1280)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!402, !1471, !944, !1473}
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1361, file: !208, line: 415, baseType: !1475, size: 64, offset: 1344)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !944}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1312, file: !208, line: 466, baseType: !711, size: 64, offset: 896)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1312, file: !208, line: 467, baseType: !1480, size: 32, offset: 960)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1481, line: 8, baseType: !515)
!1481 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1312, file: !208, line: 468, baseType: !831, offset: 992)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1312, file: !208, line: 469, baseType: !803, size: 128, offset: 1024)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1312, file: !208, line: 470, baseType: !376, size: 64, offset: 1152)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1307, file: !1300, line: 87, baseType: !711, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1307, file: !1300, line: 94, baseType: !711, size: 64, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !1300, line: 96, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !1300, line: 96, size: 64, elements: !1489)
!1489 = !{!1490}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1488, file: !1300, line: 101, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !375, line: 143, baseType: !752)
!1492 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !1300, line: 103, baseType: !1493, size: 320)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !1300, line: 103, size: 320, elements: !1494)
!1494 = !{!1495, !1505, !1508, !1509}
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1300, line: 104, baseType: !1496, size: 128)
!1496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1493, file: !1300, line: 104, size: 128, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1496, file: !1300, line: 105, baseType: !803, size: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !1300, line: 106, baseType: !1500, size: 128)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1496, file: !1300, line: 106, size: 128, elements: !1501)
!1501 = !{!1502, !1503, !1504}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1500, file: !1300, line: 107, baseType: !1298, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1500, file: !1300, line: 109, baseType: !402, size: 32, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1500, file: !1300, line: 110, baseType: !402, size: 32, offset: 96)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1493, file: !1300, line: 117, baseType: !1506, size: 64, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1300, line: 117, flags: DIFlagFwdDecl)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1493, file: !1300, line: 119, baseType: !376, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1300, line: 120, baseType: !1510, size: 64, offset: 256)
!1510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1493, file: !1300, line: 120, size: 64, elements: !1511)
!1511 = !{!1512, !1513, !1514}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1510, file: !1300, line: 121, baseType: !376, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1510, file: !1300, line: 122, baseType: !711, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1510, file: !1300, line: 123, baseType: !1515, size: 32)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1510, file: !1300, line: 123, size: 32, elements: !1516)
!1516 = !{!1517, !1518, !1519}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1515, file: !1300, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1515, file: !1300, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1515, file: !1300, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1520 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !1300, line: 130, baseType: !1521, size: 192)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !1300, line: 130, size: 192, elements: !1522)
!1522 = !{!1523, !1524, !1525, !1526, !1527}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1521, file: !1300, line: 131, baseType: !711, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1521, file: !1300, line: 134, baseType: !427, size: 8, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1521, file: !1300, line: 135, baseType: !427, size: 8, offset: 72)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1521, file: !1300, line: 136, baseType: !500, size: 32, offset: 96)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1521, file: !1300, line: 137, baseType: !7, size: 32, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !1300, line: 139, baseType: !1529, size: 256)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !1300, line: 139, size: 256, elements: !1530)
!1530 = !{!1531, !1532, !1533}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1529, file: !1300, line: 140, baseType: !711, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1529, file: !1300, line: 141, baseType: !500, size: 32, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1529, file: !1300, line: 143, baseType: !803, size: 128, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !1300, line: 145, baseType: !1535, size: 256)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !1300, line: 145, size: 256, elements: !1536)
!1536 = !{!1537, !1538, !1540, !1541, !2816}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1535, file: !1300, line: 146, baseType: !711, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1535, file: !1300, line: 147, baseType: !1539, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1290, line: 509, baseType: !1298)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1535, file: !1300, line: 148, baseType: !711, size: 64, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, scope: !1535, file: !1300, line: 149, baseType: !1542, size: 64, offset: 192)
!1542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1535, file: !1300, line: 149, size: 64, elements: !1543)
!1543 = !{!1544, !2815}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1542, file: !1300, line: 150, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1300, line: 388, size: 7296, elements: !1547)
!1547 = !{!1548, !2811}
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1300, line: 389, baseType: !1549, size: 7296)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1546, file: !1300, line: 389, size: 7296, elements: !1550)
!1550 = !{!1551, !1589, !1590, !1591, !1595, !1596, !1597, !1598, !1599, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1640, !1646, !1649, !1695, !1696, !2795, !2796, !2799, !2800, !2801, !2804, !2805, !2806, !2809, !2810}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1549, file: !1300, line: 390, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1300, line: 305, size: 1472, elements: !1554)
!1554 = !{!1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1569, !1570, !1575, !1576, !1579, !1583, !1584, !1585, !1586, !1587}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1553, file: !1300, line: 308, baseType: !711, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1553, file: !1300, line: 309, baseType: !711, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1553, file: !1300, line: 313, baseType: !1552, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1553, file: !1300, line: 313, baseType: !1552, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1553, file: !1300, line: 315, baseType: !1333, size: 192, align: 64, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1553, file: !1300, line: 323, baseType: !711, size: 64, offset: 448)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1553, file: !1300, line: 327, baseType: !1545, size: 64, offset: 512)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1553, file: !1300, line: 333, baseType: !1563, size: 64, offset: 576)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1290, line: 284, baseType: !1564)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1290, line: 284, size: 64, elements: !1565)
!1565 = !{!1566}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1564, file: !1290, line: 284, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1568, line: 19, baseType: !711)
!1568 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1553, file: !1300, line: 334, baseType: !711, size: 64, offset: 640)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1553, file: !1300, line: 343, baseType: !1571, size: 256, offset: 704)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1553, file: !1300, line: 340, size: 256, elements: !1572)
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1571, file: !1300, line: 341, baseType: !1333, size: 192, align: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1571, file: !1300, line: 342, baseType: !711, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1553, file: !1300, line: 351, baseType: !803, size: 128, offset: 960)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1553, file: !1300, line: 353, baseType: !1577, size: 64, offset: 1088)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1300, line: 353, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1553, file: !1300, line: 356, baseType: !1580, size: 64, offset: 1152)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1582)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1300, line: 356, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1553, file: !1300, line: 359, baseType: !711, size: 64, offset: 1216)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1553, file: !1300, line: 361, baseType: !944, size: 64, offset: 1280)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1553, file: !1300, line: 362, baseType: !376, size: 64, offset: 1344)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1553, file: !1300, line: 365, baseType: !1344, size: 64, offset: 1408)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1553, file: !1300, line: 373, baseType: !1588, offset: 1472)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1300, line: 296, elements: !845)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1549, file: !1300, line: 391, baseType: !1329, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1549, file: !1300, line: 392, baseType: !752, size: 64, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1549, file: !1300, line: 394, baseType: !1592, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!711, !944, !711, !711, !711, !711}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1549, file: !1300, line: 398, baseType: !711, size: 64, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1549, file: !1300, line: 399, baseType: !711, size: 64, offset: 320)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1549, file: !1300, line: 405, baseType: !711, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1549, file: !1300, line: 406, baseType: !711, size: 64, offset: 448)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1549, file: !1300, line: 407, baseType: !1600, size: 64, offset: 512)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1290, line: 286, baseType: !1602)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1290, line: 286, size: 64, elements: !1603)
!1603 = !{!1604}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1602, file: !1290, line: 286, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1568, line: 18, baseType: !711)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1549, file: !1300, line: 416, baseType: !500, size: 32, offset: 576)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1549, file: !1300, line: 428, baseType: !500, size: 32, offset: 608)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1549, file: !1300, line: 437, baseType: !500, size: 32, offset: 640)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1549, file: !1300, line: 447, baseType: !500, size: 32, offset: 672)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1549, file: !1300, line: 450, baseType: !1344, size: 64, offset: 704)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1549, file: !1300, line: 452, baseType: !402, size: 32, offset: 768)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1549, file: !1300, line: 454, baseType: !831, offset: 800)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1549, file: !1300, line: 457, baseType: !1340, size: 256, offset: 832)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1549, file: !1300, line: 459, baseType: !803, size: 128, offset: 1088)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1549, file: !1300, line: 466, baseType: !711, size: 64, offset: 1216)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1549, file: !1300, line: 467, baseType: !711, size: 64, offset: 1280)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1549, file: !1300, line: 469, baseType: !711, size: 64, offset: 1344)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1549, file: !1300, line: 470, baseType: !711, size: 64, offset: 1408)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1549, file: !1300, line: 471, baseType: !1346, size: 64, offset: 1472)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1549, file: !1300, line: 472, baseType: !711, size: 64, offset: 1536)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1549, file: !1300, line: 473, baseType: !711, size: 64, offset: 1600)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1549, file: !1300, line: 474, baseType: !711, size: 64, offset: 1664)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1549, file: !1300, line: 475, baseType: !711, size: 64, offset: 1728)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1549, file: !1300, line: 477, baseType: !831, offset: 1792)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1549, file: !1300, line: 478, baseType: !711, size: 64, offset: 1792)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1549, file: !1300, line: 478, baseType: !711, size: 64, offset: 1856)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1549, file: !1300, line: 478, baseType: !711, size: 64, offset: 1920)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1549, file: !1300, line: 478, baseType: !711, size: 64, offset: 1984)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1549, file: !1300, line: 479, baseType: !711, size: 64, offset: 2048)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1549, file: !1300, line: 479, baseType: !711, size: 64, offset: 2112)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1549, file: !1300, line: 479, baseType: !711, size: 64, offset: 2176)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1549, file: !1300, line: 480, baseType: !711, size: 64, offset: 2240)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1549, file: !1300, line: 480, baseType: !711, size: 64, offset: 2304)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1549, file: !1300, line: 480, baseType: !711, size: 64, offset: 2368)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1549, file: !1300, line: 480, baseType: !711, size: 64, offset: 2432)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1549, file: !1300, line: 482, baseType: !1637, size: 2816, offset: 2496)
!1637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 2816, elements: !1638)
!1638 = !{!1639}
!1639 = !DISubrange(count: 44)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1549, file: !1300, line: 488, baseType: !1641, size: 256, offset: 5312)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1642, line: 60, size: 256, elements: !1643)
!1642 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1643 = !{!1644}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1641, file: !1642, line: 61, baseType: !1645, size: 256)
!1645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1344, size: 256, elements: !641)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1549, file: !1300, line: 490, baseType: !1647, size: 64, offset: 5568)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1300, line: 490, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1549, file: !1300, line: 493, baseType: !1650, size: 896, offset: 5632)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1651, line: 53, baseType: !1652)
!1651 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1651, line: 13, size: 896, elements: !1653)
!1653 = !{!1654, !1655, !1656, !1657, !1660, !1661, !1668, !1669, !1689, !1690, !1691}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1652, file: !1651, line: 18, baseType: !752, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1652, file: !1651, line: 28, baseType: !1346, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1652, file: !1651, line: 31, baseType: !1340, size: 256, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1652, file: !1651, line: 32, baseType: !1658, size: 64, offset: 384)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1651, line: 32, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1652, file: !1651, line: 37, baseType: !419, size: 16, offset: 448)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1652, file: !1651, line: 40, baseType: !1662, size: 192, offset: 512)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1663, line: 53, size: 192, elements: !1664)
!1663 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1664 = !{!1665, !1666, !1667}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1662, file: !1663, line: 54, baseType: !1344, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1662, file: !1663, line: 55, baseType: !831, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1662, file: !1663, line: 59, baseType: !803, size: 128, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1652, file: !1651, line: 41, baseType: !376, size: 64, offset: 704)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1652, file: !1651, line: 42, baseType: !1670, size: 64, offset: 768)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1672)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1673, line: 13, size: 896, elements: !1674)
!1673 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1672, file: !1673, line: 14, baseType: !376, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1672, file: !1673, line: 15, baseType: !711, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1672, file: !1673, line: 17, baseType: !711, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1672, file: !1673, line: 17, baseType: !711, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1672, file: !1673, line: 19, baseType: !706, size: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1672, file: !1673, line: 21, baseType: !706, size: 64, offset: 320)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1672, file: !1673, line: 22, baseType: !706, size: 64, offset: 384)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1672, file: !1673, line: 23, baseType: !706, size: 64, offset: 448)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1672, file: !1673, line: 24, baseType: !706, size: 64, offset: 512)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1672, file: !1673, line: 25, baseType: !706, size: 64, offset: 576)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1672, file: !1673, line: 26, baseType: !706, size: 64, offset: 640)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1672, file: !1673, line: 27, baseType: !706, size: 64, offset: 704)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1672, file: !1673, line: 28, baseType: !706, size: 64, offset: 768)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1672, file: !1673, line: 29, baseType: !706, size: 64, offset: 832)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1652, file: !1651, line: 44, baseType: !500, size: 32, offset: 832)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1652, file: !1651, line: 50, baseType: !415, size: 16, offset: 864)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1652, file: !1651, line: 51, baseType: !1692, size: 16, offset: 880)
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !416, line: 18, baseType: !1693)
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !418, line: 23, baseType: !1694)
!1694 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1549, file: !1300, line: 495, baseType: !711, size: 64, offset: 6528)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1549, file: !1300, line: 497, baseType: !1697, size: 64, offset: 6592)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1300, line: 381, size: 384, elements: !1699)
!1699 = !{!1700, !1701, !2794}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1698, file: !1300, line: 382, baseType: !500, size: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1698, file: !1300, line: 383, baseType: !1702, size: 128, offset: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1300, line: 376, size: 128, elements: !1703)
!1703 = !{!1704, !2792}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1702, file: !1300, line: 377, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1707, line: 640, size: 48640, elements: !1708)
!1707 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1708 = !{!1709, !1715, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1730, !1748, !1759, !1840, !1841, !1842, !1853, !1854, !1856, !1857, !1858, !1859, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1940, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1978, !1980, !1981, !1982, !1994, !1995, !1996, !1997, !1998, !1999, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2023, !2028, !2210, !2211, !2212, !2213, !2217, !2220, !2223, !2226, !2229, !2233, !2334, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2380, !2381, !2382, !2383, !2384, !2389, !2390, !2391, !2394, !2395, !2398, !2401, !2404, !2407, !2450, !2453, !2454, !2533, !2534, !2537, !2538, !2541, !2542, !2543, !2547, !2548, !2549, !2562, !2563, !2564, !2574, !2579, !2582, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1706, file: !1707, line: 646, baseType: !1710, size: 128)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1711, line: 56, size: 128, elements: !1712)
!1711 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1712 = !{!1713, !1714}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1710, file: !1711, line: 57, baseType: !711, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1710, file: !1711, line: 58, baseType: !515, size: 32, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1706, file: !1707, line: 649, baseType: !1716, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !706)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1706, file: !1707, line: 657, baseType: !376, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1706, file: !1707, line: 658, baseType: !495, size: 32, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1706, file: !1707, line: 660, baseType: !7, size: 32, offset: 288)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1706, file: !1707, line: 661, baseType: !7, size: 32, offset: 320)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1706, file: !1707, line: 684, baseType: !402, size: 32, offset: 352)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1706, file: !1707, line: 686, baseType: !402, size: 32, offset: 384)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1706, file: !1707, line: 687, baseType: !402, size: 32, offset: 416)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1706, file: !1707, line: 688, baseType: !402, size: 32, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1706, file: !1707, line: 689, baseType: !7, size: 32, offset: 480)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1706, file: !1707, line: 691, baseType: !1727, size: 64, offset: 512)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1729)
!1729 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1707, line: 691, flags: DIFlagFwdDecl)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1706, file: !1707, line: 692, baseType: !1731, size: 832, offset: 576)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1707, line: 451, size: 832, elements: !1732)
!1732 = !{!1733, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1731, file: !1707, line: 453, baseType: !1734, size: 128)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1707, line: 325, size: 128, elements: !1735)
!1735 = !{!1736, !1737}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1734, file: !1707, line: 326, baseType: !711, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1734, file: !1707, line: 327, baseType: !515, size: 32, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1731, file: !1707, line: 454, baseType: !1333, size: 192, align: 64, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1731, file: !1707, line: 455, baseType: !803, size: 128, offset: 320)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1731, file: !1707, line: 456, baseType: !7, size: 32, offset: 448)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1731, file: !1707, line: 458, baseType: !752, size: 64, offset: 512)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1731, file: !1707, line: 459, baseType: !752, size: 64, offset: 576)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1731, file: !1707, line: 460, baseType: !752, size: 64, offset: 640)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1731, file: !1707, line: 461, baseType: !752, size: 64, offset: 704)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1731, file: !1707, line: 463, baseType: !752, size: 64, offset: 768)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1731, file: !1707, line: 465, baseType: !1747, offset: 832)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1707, line: 415, elements: !845)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1706, file: !1707, line: 693, baseType: !1749, size: 384, offset: 1408)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1707, line: 489, size: 384, elements: !1750)
!1750 = !{!1751, !1752, !1753, !1754, !1755, !1756, !1757}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1749, file: !1707, line: 490, baseType: !803, size: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1749, file: !1707, line: 491, baseType: !711, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1749, file: !1707, line: 492, baseType: !711, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1749, file: !1707, line: 493, baseType: !7, size: 32, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1749, file: !1707, line: 494, baseType: !419, size: 16, offset: 288)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1749, file: !1707, line: 495, baseType: !419, size: 16, offset: 304)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1749, file: !1707, line: 497, baseType: !1758, size: 64, offset: 320)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1706, file: !1707, line: 697, baseType: !1760, size: 1792, offset: 1792)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1707, line: 507, size: 1792, elements: !1761)
!1761 = !{!1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1837, !1838}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1760, file: !1707, line: 508, baseType: !1333, size: 192, align: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1760, file: !1707, line: 515, baseType: !752, size: 64, offset: 192)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1760, file: !1707, line: 516, baseType: !752, size: 64, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1760, file: !1707, line: 517, baseType: !752, size: 64, offset: 320)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1760, file: !1707, line: 518, baseType: !752, size: 64, offset: 384)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1760, file: !1707, line: 519, baseType: !752, size: 64, offset: 448)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1760, file: !1707, line: 526, baseType: !1350, size: 64, offset: 512)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1760, file: !1707, line: 527, baseType: !752, size: 64, offset: 576)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1760, file: !1707, line: 528, baseType: !7, size: 32, offset: 640)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1760, file: !1707, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1760, file: !1707, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1760, file: !1707, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1760, file: !1707, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1760, file: !1707, line: 563, baseType: !1776, size: 512, offset: 704)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !1777)
!1777 = !{!1778, !1786, !1787, !1792, !1833, !1834, !1835, !1836}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1776, file: !191, line: 119, baseType: !1779, size: 256)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1780, line: 9, size: 256, elements: !1781)
!1780 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1781 = !{!1782, !1783}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1779, file: !1780, line: 10, baseType: !1333, size: 192, align: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1779, file: !1780, line: 11, baseType: !1784, size: 64, offset: 192)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1785, line: 29, baseType: !1350)
!1785 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1776, file: !191, line: 120, baseType: !1784, size: 64, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1776, file: !191, line: 121, baseType: !1788, size: 64, offset: 320)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!190, !1791}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1776, file: !191, line: 122, baseType: !1793, size: 64, offset: 384)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !1795)
!1795 = !{!1796, !1814, !1815, !1818, !1823, !1824, !1828, !1832}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1794, file: !191, line: 160, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !1799)
!1799 = !{!1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1798, file: !191, line: 215, baseType: !1353)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1798, file: !191, line: 216, baseType: !7, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1798, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1798, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1798, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1798, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1798, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1798, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1798, file: !191, line: 233, baseType: !1784, size: 64, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1798, file: !191, line: 234, baseType: !1791, size: 64, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1798, file: !191, line: 235, baseType: !1784, size: 64, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1798, file: !191, line: 236, baseType: !1791, size: 64, offset: 320)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1798, file: !191, line: 237, baseType: !1813, size: 4096, offset: 512)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1794, size: 4096, elements: !526)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1794, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1794, file: !191, line: 162, baseType: !1816, size: 32, offset: 96)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !375, line: 27, baseType: !1817)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !902, line: 96, baseType: !402)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1794, file: !191, line: 163, baseType: !1819, size: 32, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !980, line: 276, baseType: !1820)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !980, line: 276, size: 32, elements: !1821)
!1821 = !{!1822}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1820, file: !980, line: 276, baseType: !984, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1794, file: !191, line: 164, baseType: !1791, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1794, file: !191, line: 165, baseType: !1825, size: 128, offset: 256)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1780, line: 14, size: 128, elements: !1826)
!1826 = !{!1827}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1825, file: !1780, line: 15, baseType: !1325, size: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1794, file: !191, line: 166, baseType: !1829, size: 64, offset: 384)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!1784}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1794, file: !191, line: 167, baseType: !1784, size: 64, offset: 448)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1776, file: !191, line: 123, baseType: !425, size: 8, offset: 448)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1776, file: !191, line: 124, baseType: !425, size: 8, offset: 456)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1776, file: !191, line: 125, baseType: !425, size: 8, offset: 464)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1776, file: !191, line: 126, baseType: !425, size: 8, offset: 472)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1760, file: !1707, line: 572, baseType: !1776, size: 512, offset: 1216)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1760, file: !1707, line: 580, baseType: !1839, size: 64, offset: 1728)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1706, file: !1707, line: 721, baseType: !7, size: 32, offset: 3584)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1706, file: !1707, line: 722, baseType: !402, size: 32, offset: 3616)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1706, file: !1707, line: 723, baseType: !1843, size: 64, offset: 3648)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1845)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1846, line: 17, baseType: !1847)
!1846 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1846, line: 17, size: 64, elements: !1848)
!1848 = !{!1849}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1847, file: !1846, line: 17, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 64, elements: !1851)
!1851 = !{!1852}
!1852 = !DISubrange(count: 1)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1706, file: !1707, line: 724, baseType: !1845, size: 64, offset: 3712)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1706, file: !1707, line: 749, baseType: !1855, offset: 3776)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1707, line: 290, elements: !845)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1706, file: !1707, line: 751, baseType: !803, size: 128, offset: 3776)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1706, file: !1707, line: 757, baseType: !1545, size: 64, offset: 3904)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1706, file: !1707, line: 758, baseType: !1545, size: 64, offset: 3968)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1706, file: !1707, line: 761, baseType: !1860, size: 320, offset: 4032)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1642, line: 34, size: 320, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1860, file: !1642, line: 35, baseType: !752, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1860, file: !1642, line: 36, baseType: !1864, size: 256, offset: 64)
!1864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1552, size: 256, elements: !641)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1706, file: !1707, line: 766, baseType: !402, size: 32, offset: 4352)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1706, file: !1707, line: 767, baseType: !402, size: 32, offset: 4384)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1706, file: !1707, line: 768, baseType: !402, size: 32, offset: 4416)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1706, file: !1707, line: 770, baseType: !402, size: 32, offset: 4448)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1706, file: !1707, line: 772, baseType: !711, size: 64, offset: 4480)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1706, file: !1707, line: 775, baseType: !7, size: 32, offset: 4544)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1706, file: !1707, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1706, file: !1707, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1706, file: !1707, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1706, file: !1707, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1706, file: !1707, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1706, file: !1707, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1706, file: !1707, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1706, file: !1707, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1706, file: !1707, line: 831, baseType: !711, size: 64, offset: 4672)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1706, file: !1707, line: 833, baseType: !1881, size: 384, offset: 4736)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !1882)
!1882 = !{!1883, !1888}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1881, file: !196, line: 26, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!706, !1887}
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, scope: !1881, file: !196, line: 27, baseType: !1889, size: 320, offset: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1881, file: !196, line: 27, size: 320, elements: !1890)
!1890 = !{!1891, !1900, !1925}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1889, file: !196, line: 36, baseType: !1892, size: 320)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1889, file: !196, line: 29, size: 320, elements: !1893)
!1893 = !{!1894, !1895, !1896, !1897, !1898, !1899}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1892, file: !196, line: 30, baseType: !658, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1892, file: !196, line: 31, baseType: !515, size: 32, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1892, file: !196, line: 32, baseType: !515, size: 32, offset: 96)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1892, file: !196, line: 33, baseType: !515, size: 32, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1892, file: !196, line: 34, baseType: !752, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1892, file: !196, line: 35, baseType: !658, size: 64, offset: 256)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1889, file: !196, line: 46, baseType: !1901, size: 192)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1889, file: !196, line: 38, size: 192, elements: !1902)
!1902 = !{!1903, !1904, !1905, !1924}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1901, file: !196, line: 39, baseType: !1816, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1901, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, scope: !1901, file: !196, line: 41, baseType: !1906, size: 64, offset: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1901, file: !196, line: 41, size: 64, elements: !1907)
!1907 = !{!1908, !1916}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1906, file: !196, line: 42, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1911, line: 7, size: 128, elements: !1912)
!1911 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1912 = !{!1913, !1915}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1910, file: !1911, line: 8, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !902, line: 93, baseType: !640)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1910, file: !1911, line: 9, baseType: !640, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1906, file: !196, line: 43, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1919, line: 7, size: 64, elements: !1920)
!1919 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1920 = !{!1921, !1923}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1918, file: !1919, line: 8, baseType: !1922, size: 32)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1919, line: 5, baseType: !767)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1918, file: !1919, line: 9, baseType: !767, size: 32, offset: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1901, file: !196, line: 45, baseType: !752, size: 64, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1889, file: !196, line: 54, baseType: !1926, size: 256)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1889, file: !196, line: 48, size: 256, elements: !1927)
!1927 = !{!1928, !1936, !1937, !1938, !1939}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1926, file: !196, line: 49, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1931, line: 36, size: 64, elements: !1932)
!1931 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1932 = !{!1933, !1934, !1935}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1930, file: !1931, line: 37, baseType: !402, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1930, file: !1931, line: 38, baseType: !1694, size: 16, offset: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1930, file: !1931, line: 39, baseType: !1694, size: 16, offset: 48)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1926, file: !196, line: 50, baseType: !402, size: 32, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1926, file: !196, line: 51, baseType: !402, size: 32, offset: 96)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1926, file: !196, line: 52, baseType: !711, size: 64, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1926, file: !196, line: 53, baseType: !711, size: 64, offset: 192)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1706, file: !1707, line: 835, baseType: !1941, size: 32, offset: 5120)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !375, line: 22, baseType: !1942)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !902, line: 28, baseType: !402)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1706, file: !1707, line: 836, baseType: !1941, size: 32, offset: 5152)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1706, file: !1707, line: 840, baseType: !711, size: 64, offset: 5184)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1706, file: !1707, line: 849, baseType: !1705, size: 64, offset: 5248)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1706, file: !1707, line: 852, baseType: !1705, size: 64, offset: 5312)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1706, file: !1707, line: 857, baseType: !803, size: 128, offset: 5376)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1706, file: !1707, line: 858, baseType: !803, size: 128, offset: 5504)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1706, file: !1707, line: 859, baseType: !1705, size: 64, offset: 5632)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1706, file: !1707, line: 867, baseType: !803, size: 128, offset: 5696)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1706, file: !1707, line: 868, baseType: !803, size: 128, offset: 5824)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1706, file: !1707, line: 871, baseType: !1953, size: 64, offset: 5952)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !1955)
!1955 = !{!1956, !1957, !1958, !1959, !1961, !1962, !1969, !1970}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1954, file: !217, line: 61, baseType: !495, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1954, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1954, file: !217, line: 63, baseType: !831, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1954, file: !217, line: 65, baseType: !1960, size: 256, offset: 64)
!1960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1212, size: 256, elements: !641)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1954, file: !217, line: 66, baseType: !1212, size: 64, offset: 320)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1954, file: !217, line: 68, baseType: !1963, size: 128, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1964, line: 40, baseType: !1965)
!1964 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1964, line: 36, size: 128, elements: !1966)
!1966 = !{!1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1965, file: !1964, line: 37, baseType: !831)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1965, file: !1964, line: 38, baseType: !803, size: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1954, file: !217, line: 69, baseType: !957, size: 128, align: 64, offset: 512)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1954, file: !217, line: 70, baseType: !1971, size: 128, offset: 640)
!1971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1972, size: 128, elements: !1851)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !1973)
!1973 = !{!1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1972, file: !217, line: 55, baseType: !402, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1972, file: !217, line: 56, baseType: !1976, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1706, file: !1707, line: 872, baseType: !1979, size: 512, offset: 6016)
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1216, size: 512, elements: !641)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1706, file: !1707, line: 873, baseType: !803, size: 128, offset: 6528)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1706, file: !1707, line: 874, baseType: !803, size: 128, offset: 6656)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1706, file: !1707, line: 876, baseType: !1983, size: 64, offset: 6784)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1985, line: 26, size: 192, elements: !1986)
!1985 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1986 = !{!1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1984, file: !1985, line: 27, baseType: !7, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1984, file: !1985, line: 28, baseType: !1989, size: 128, offset: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1990, line: 43, size: 128, elements: !1991)
!1990 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1989, file: !1990, line: 44, baseType: !1353)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1989, file: !1990, line: 45, baseType: !803, size: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1706, file: !1707, line: 879, baseType: !1282, size: 64, offset: 6848)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1706, file: !1707, line: 882, baseType: !1282, size: 64, offset: 6912)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1706, file: !1707, line: 884, baseType: !752, size: 64, offset: 6976)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1706, file: !1707, line: 885, baseType: !752, size: 64, offset: 7040)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1706, file: !1707, line: 890, baseType: !752, size: 64, offset: 7104)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1706, file: !1707, line: 891, baseType: !2000, size: 128, offset: 7168)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1707, line: 242, size: 128, elements: !2001)
!2001 = !{!2002, !2003, !2004}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2000, file: !1707, line: 244, baseType: !752, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2000, file: !1707, line: 245, baseType: !752, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2000, file: !1707, line: 246, baseType: !1353, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1706, file: !1707, line: 900, baseType: !711, size: 64, offset: 7296)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1706, file: !1707, line: 901, baseType: !711, size: 64, offset: 7360)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1706, file: !1707, line: 904, baseType: !752, size: 64, offset: 7424)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1706, file: !1707, line: 907, baseType: !752, size: 64, offset: 7488)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1706, file: !1707, line: 910, baseType: !711, size: 64, offset: 7552)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1706, file: !1707, line: 911, baseType: !711, size: 64, offset: 7616)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1706, file: !1707, line: 914, baseType: !2012, size: 640, offset: 7680)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2013, line: 123, size: 640, elements: !2014)
!2013 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2014 = !{!2015, !2021, !2022}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2012, file: !2013, line: 124, baseType: !2016, size: 576)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2017, size: 576, elements: !603)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2013, line: 108, size: 192, elements: !2018)
!2018 = !{!2019, !2020}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2017, file: !2013, line: 109, baseType: !752, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2017, file: !2013, line: 110, baseType: !1825, size: 128, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2012, file: !2013, line: 125, baseType: !7, size: 32, offset: 576)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2012, file: !2013, line: 126, baseType: !7, size: 32, offset: 608)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1706, file: !1707, line: 917, baseType: !2024, size: 192, offset: 8320)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2013, line: 134, size: 192, elements: !2025)
!2025 = !{!2026, !2027}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2024, file: !2013, line: 135, baseType: !957, size: 128, align: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2024, file: !2013, line: 136, baseType: !7, size: 32, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1706, file: !1707, line: 923, baseType: !2029, size: 64, offset: 8512)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2031)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2032, line: 111, size: 1280, elements: !2033)
!2032 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2033 = !{!2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2053, !2054, !2055, !2056, !2057, !2058, !2163, !2164, !2165, !2166, !2192, !2195, !2205}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2031, file: !2032, line: 112, baseType: !500, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2031, file: !2032, line: 120, baseType: !1019, size: 32, offset: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2031, file: !2032, line: 121, baseType: !1027, size: 32, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2031, file: !2032, line: 122, baseType: !1019, size: 32, offset: 96)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2031, file: !2032, line: 123, baseType: !1027, size: 32, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2031, file: !2032, line: 124, baseType: !1019, size: 32, offset: 160)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2031, file: !2032, line: 125, baseType: !1027, size: 32, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2031, file: !2032, line: 126, baseType: !1019, size: 32, offset: 224)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2031, file: !2032, line: 127, baseType: !1027, size: 32, offset: 256)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2031, file: !2032, line: 128, baseType: !7, size: 32, offset: 288)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2031, file: !2032, line: 129, baseType: !2045, size: 64, offset: 320)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2046, line: 26, baseType: !2047)
!2046 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2046, line: 24, size: 64, elements: !2048)
!2048 = !{!2049}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2047, file: !2046, line: 25, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 64, elements: !2051)
!2051 = !{!2052}
!2052 = !DISubrange(count: 2)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2031, file: !2032, line: 130, baseType: !2045, size: 64, offset: 384)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2031, file: !2032, line: 131, baseType: !2045, size: 64, offset: 448)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2031, file: !2032, line: 132, baseType: !2045, size: 64, offset: 512)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2031, file: !2032, line: 133, baseType: !2045, size: 64, offset: 576)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2031, file: !2032, line: 135, baseType: !427, size: 8, offset: 640)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2031, file: !2032, line: 137, baseType: !2059, size: 64, offset: 704)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2061, line: 189, size: 1664, elements: !2062)
!2061 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2062 = !{!2063, !2064, !2067, !2072, !2073, !2076, !2077, !2082, !2083, !2084, !2085, !2087, !2088, !2089, !2090, !2091, !2127, !2148}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2060, file: !2061, line: 190, baseType: !495, size: 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2060, file: !2061, line: 191, baseType: !2065, size: 32, offset: 32)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2061, line: 28, baseType: !2066)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !375, line: 98, baseType: !767)
!2067 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !2061, line: 192, baseType: !2068, size: 192, offset: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !2061, line: 192, size: 192, elements: !2069)
!2069 = !{!2070, !2071}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2068, file: !2061, line: 193, baseType: !803, size: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2068, file: !2061, line: 194, baseType: !1333, size: 192, align: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2060, file: !2061, line: 199, baseType: !1340, size: 256, offset: 256)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2060, file: !2061, line: 200, baseType: !2074, size: 64, offset: 512)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2061, line: 200, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2060, file: !2061, line: 201, baseType: !376, size: 64, offset: 576)
!2077 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !2061, line: 202, baseType: !2078, size: 64, offset: 640)
!2078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !2061, line: 202, size: 64, elements: !2079)
!2079 = !{!2080, !2081}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2078, file: !2061, line: 203, baseType: !1117, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2078, file: !2061, line: 204, baseType: !1117, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2060, file: !2061, line: 206, baseType: !1117, size: 64, offset: 704)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2060, file: !2061, line: 207, baseType: !1019, size: 32, offset: 768)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2060, file: !2061, line: 208, baseType: !1027, size: 32, offset: 800)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2060, file: !2061, line: 209, baseType: !2086, size: 32, offset: 832)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2061, line: 31, baseType: !1136)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2060, file: !2061, line: 210, baseType: !419, size: 16, offset: 864)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2060, file: !2061, line: 211, baseType: !419, size: 16, offset: 880)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2060, file: !2061, line: 215, baseType: !1694, size: 16, offset: 896)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2060, file: !2061, line: 222, baseType: !711, size: 64, offset: 960)
!2091 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !2061, line: 239, baseType: !2092, size: 320, offset: 1024)
!2092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !2061, line: 239, size: 320, elements: !2093)
!2093 = !{!2094, !2119}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2092, file: !2061, line: 240, baseType: !2095, size: 320)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2061, line: 108, size: 320, elements: !2096)
!2096 = !{!2097, !2098, !2108, !2111, !2118}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2095, file: !2061, line: 110, baseType: !711, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, scope: !2095, file: !2061, line: 111, baseType: !2099, size: 64, offset: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2095, file: !2061, line: 111, size: 64, elements: !2100)
!2100 = !{!2101, !2107}
!2101 = !DIDerivedType(tag: DW_TAG_member, scope: !2099, file: !2061, line: 112, baseType: !2102, size: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2099, file: !2061, line: 112, size: 64, elements: !2103)
!2103 = !{!2104, !2105}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2102, file: !2061, line: 114, baseType: !415, size: 16)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2102, file: !2061, line: 115, baseType: !2106, size: 48, offset: 16)
!2106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 48, elements: !676)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2099, file: !2061, line: 121, baseType: !711, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2095, file: !2061, line: 123, baseType: !2109, size: 64, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2061, line: 96, flags: DIFlagFwdDecl)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2095, file: !2061, line: 124, baseType: !2112, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2061, line: 102, size: 192, elements: !2114)
!2114 = !{!2115, !2116, !2117}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2113, file: !2061, line: 103, baseType: !957, size: 128, align: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2113, file: !2061, line: 104, baseType: !495, size: 32, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2113, file: !2061, line: 105, baseType: !547, size: 8, offset: 160)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2095, file: !2061, line: 125, baseType: !385, size: 64, offset: 256)
!2119 = !DIDerivedType(tag: DW_TAG_member, scope: !2092, file: !2061, line: 241, baseType: !2120, size: 320)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2092, file: !2061, line: 241, size: 320, elements: !2121)
!2121 = !{!2122, !2123, !2124, !2125, !2126}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2120, file: !2061, line: 242, baseType: !711, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2120, file: !2061, line: 243, baseType: !711, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2120, file: !2061, line: 244, baseType: !2109, size: 64, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2120, file: !2061, line: 245, baseType: !2112, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2120, file: !2061, line: 246, baseType: !408, size: 64, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !2061, line: 254, baseType: !2128, size: 256, offset: 1344)
!2128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !2061, line: 254, size: 256, elements: !2129)
!2129 = !{!2130, !2136}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2128, file: !2061, line: 255, baseType: !2131, size: 256)
!2131 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2061, line: 128, size: 256, elements: !2132)
!2132 = !{!2133, !2134}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2131, file: !2061, line: 129, baseType: !376, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2131, file: !2061, line: 130, baseType: !2135, size: 256)
!2135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 256, elements: !641)
!2136 = !DIDerivedType(tag: DW_TAG_member, scope: !2128, file: !2061, line: 256, baseType: !2137, size: 256)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2128, file: !2061, line: 256, size: 256, elements: !2138)
!2138 = !{!2139, !2140}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2137, file: !2061, line: 258, baseType: !803, size: 128)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2137, file: !2061, line: 259, baseType: !2141, size: 128, offset: 128)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2142, line: 22, size: 128, elements: !2143)
!2142 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2143 = !{!2144, !2147}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2141, file: !2142, line: 23, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2142, line: 23, flags: DIFlagFwdDecl)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2141, file: !2142, line: 24, baseType: !711, size: 64, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2060, file: !2061, line: 274, baseType: !2149, size: 64, offset: 1600)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2061, line: 170, size: 192, elements: !2151)
!2151 = !{!2152, !2161, !2162}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2150, file: !2061, line: 171, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2061, line: 165, baseType: !2154)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!402, !2059, !2157, !2159, !2059}
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2110)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2131)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2150, file: !2061, line: 172, baseType: !2059, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2150, file: !2061, line: 173, baseType: !2109, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2031, file: !2032, line: 138, baseType: !2059, size: 64, offset: 768)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2031, file: !2032, line: 139, baseType: !2059, size: 64, offset: 832)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2031, file: !2032, line: 140, baseType: !2059, size: 64, offset: 896)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2031, file: !2032, line: 145, baseType: !2167, size: 64, offset: 960)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2169, line: 13, size: 896, elements: !2170)
!2169 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2170 = !{!2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2168, file: !2169, line: 14, baseType: !495, size: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2168, file: !2169, line: 15, baseType: !500, size: 32, offset: 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2168, file: !2169, line: 16, baseType: !500, size: 32, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2168, file: !2169, line: 21, baseType: !1344, size: 64, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2168, file: !2169, line: 27, baseType: !711, size: 64, offset: 192)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2168, file: !2169, line: 28, baseType: !711, size: 64, offset: 256)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2168, file: !2169, line: 29, baseType: !1344, size: 64, offset: 320)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2168, file: !2169, line: 32, baseType: !1216, size: 128, offset: 384)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2168, file: !2169, line: 33, baseType: !1019, size: 32, offset: 512)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2168, file: !2169, line: 37, baseType: !1344, size: 64, offset: 576)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2168, file: !2169, line: 44, baseType: !2182, size: 256, offset: 640)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2183, line: 15, size: 256, elements: !2184)
!2183 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2184 = !{!2185, !2186, !2187, !2188, !2189, !2190, !2191}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2182, file: !2183, line: 16, baseType: !1353)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2182, file: !2183, line: 18, baseType: !402, size: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2182, file: !2183, line: 19, baseType: !402, size: 32, offset: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2182, file: !2183, line: 20, baseType: !402, size: 32, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2182, file: !2183, line: 21, baseType: !402, size: 32, offset: 96)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2182, file: !2183, line: 22, baseType: !711, size: 64, offset: 128)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2182, file: !2183, line: 23, baseType: !711, size: 64, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2031, file: !2032, line: 146, baseType: !2193, size: 64, offset: 1024)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1020, line: 18, flags: DIFlagFwdDecl)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2031, file: !2032, line: 147, baseType: !2196, size: 64, offset: 1088)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2032, line: 25, size: 64, elements: !2198)
!2198 = !{!2199, !2200, !2201}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2197, file: !2032, line: 26, baseType: !500, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2197, file: !2032, line: 27, baseType: !402, size: 32, offset: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2197, file: !2032, line: 28, baseType: !2202, offset: 64)
!2202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1027, elements: !2203)
!2203 = !{!2204}
!2204 = !DISubrange(count: 0)
!2205 = !DIDerivedType(tag: DW_TAG_member, scope: !2031, file: !2032, line: 149, baseType: !2206, size: 128, offset: 1152)
!2206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2031, file: !2032, line: 149, size: 128, elements: !2207)
!2207 = !{!2208, !2209}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2206, file: !2032, line: 150, baseType: !402, size: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2206, file: !2032, line: 151, baseType: !957, size: 128, align: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1706, file: !1707, line: 926, baseType: !2029, size: 64, offset: 8576)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1706, file: !1707, line: 929, baseType: !2029, size: 64, offset: 8640)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1706, file: !1707, line: 933, baseType: !2059, size: 64, offset: 8704)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1706, file: !1707, line: 943, baseType: !2214, size: 128, offset: 8768)
!2214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 128, elements: !2215)
!2215 = !{!2216}
!2216 = !DISubrange(count: 16)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1706, file: !1707, line: 945, baseType: !2218, size: 64, offset: 8896)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1707, line: 49, flags: DIFlagFwdDecl)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1706, file: !1707, line: 956, baseType: !2221, size: 64, offset: 8960)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1707, line: 45, flags: DIFlagFwdDecl)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1706, file: !1707, line: 959, baseType: !2224, size: 64, offset: 9024)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1707, line: 959, flags: DIFlagFwdDecl)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1706, file: !1707, line: 962, baseType: !2227, size: 64, offset: 9088)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1707, line: 66, flags: DIFlagFwdDecl)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1706, file: !1707, line: 966, baseType: !2230, size: 64, offset: 9152)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2232, line: 35, flags: DIFlagFwdDecl)
!2232 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1706, file: !1707, line: 969, baseType: !2234, size: 64, offset: 9216)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2236, line: 82, size: 7296, elements: !2237)
!2236 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2237 = !{!2238, !2239, !2240, !2241, !2242, !2243, !2244, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2273, !2282, !2283, !2285, !2286, !2287, !2290, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2320, !2321, !2328, !2329, !2330, !2331, !2332, !2333}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2235, file: !2236, line: 83, baseType: !495, size: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2235, file: !2236, line: 84, baseType: !500, size: 32, offset: 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2235, file: !2236, line: 85, baseType: !402, size: 32, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2235, file: !2236, line: 86, baseType: !803, size: 128, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2235, file: !2236, line: 88, baseType: !1963, size: 128, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2235, file: !2236, line: 91, baseType: !1705, size: 64, offset: 384)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2235, file: !2236, line: 94, baseType: !2245, size: 192, offset: 448)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2246, line: 30, size: 192, elements: !2247)
!2246 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2247 = !{!2248, !2249}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2245, file: !2246, line: 31, baseType: !803, size: 128)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2245, file: !2246, line: 32, baseType: !2250, size: 64, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2251, line: 25, baseType: !2252)
!2251 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2251, line: 23, size: 64, elements: !2253)
!2253 = !{!2254}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2252, file: !2251, line: 24, baseType: !1850, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2235, file: !2236, line: 97, baseType: !1212, size: 64, offset: 640)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2235, file: !2236, line: 100, baseType: !402, size: 32, offset: 704)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2235, file: !2236, line: 106, baseType: !402, size: 32, offset: 736)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2235, file: !2236, line: 107, baseType: !1705, size: 64, offset: 768)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2235, file: !2236, line: 110, baseType: !402, size: 32, offset: 832)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2235, file: !2236, line: 111, baseType: !7, size: 32, offset: 864)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2235, file: !2236, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2235, file: !2236, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2235, file: !2236, line: 128, baseType: !402, size: 32, offset: 928)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2235, file: !2236, line: 129, baseType: !803, size: 128, offset: 960)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2235, file: !2236, line: 132, baseType: !1776, size: 512, offset: 1088)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2235, file: !2236, line: 133, baseType: !1784, size: 64, offset: 1600)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2235, file: !2236, line: 140, baseType: !2268, size: 256, offset: 1664)
!2268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2269, size: 256, elements: !2051)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2236, line: 38, size: 128, elements: !2270)
!2270 = !{!2271, !2272}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2269, file: !2236, line: 39, baseType: !752, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2269, file: !2236, line: 40, baseType: !752, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2235, file: !2236, line: 146, baseType: !2274, size: 192, offset: 1920)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2236, line: 66, size: 192, elements: !2275)
!2275 = !{!2276}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2274, file: !2236, line: 67, baseType: !2277, size: 192)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2236, line: 47, size: 192, elements: !2278)
!2278 = !{!2279, !2280, !2281}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2277, file: !2236, line: 48, baseType: !1346, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2277, file: !2236, line: 49, baseType: !1346, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2277, file: !2236, line: 50, baseType: !1346, size: 64, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2235, file: !2236, line: 150, baseType: !2012, size: 640, offset: 2112)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2235, file: !2236, line: 153, baseType: !2284, size: 256, offset: 2752)
!2284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1953, size: 256, elements: !641)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2235, file: !2236, line: 159, baseType: !1953, size: 64, offset: 3008)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2235, file: !2236, line: 162, baseType: !402, size: 32, offset: 3072)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2235, file: !2236, line: 164, baseType: !2288, size: 64, offset: 3136)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2236, line: 164, flags: DIFlagFwdDecl)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2235, file: !2236, line: 175, baseType: !2291, size: 32, offset: 3200)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !980, line: 805, baseType: !2292)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !980, line: 798, size: 32, elements: !2293)
!2293 = !{!2294, !2295}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2292, file: !980, line: 803, baseType: !979, size: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2292, file: !980, line: 804, baseType: !831, offset: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2235, file: !2236, line: 176, baseType: !752, size: 64, offset: 3264)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2235, file: !2236, line: 176, baseType: !752, size: 64, offset: 3328)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2235, file: !2236, line: 176, baseType: !752, size: 64, offset: 3392)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2235, file: !2236, line: 176, baseType: !752, size: 64, offset: 3456)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2235, file: !2236, line: 177, baseType: !752, size: 64, offset: 3520)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2235, file: !2236, line: 178, baseType: !752, size: 64, offset: 3584)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2235, file: !2236, line: 179, baseType: !2000, size: 128, offset: 3648)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2235, file: !2236, line: 180, baseType: !711, size: 64, offset: 3776)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2235, file: !2236, line: 180, baseType: !711, size: 64, offset: 3840)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2235, file: !2236, line: 180, baseType: !711, size: 64, offset: 3904)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2235, file: !2236, line: 180, baseType: !711, size: 64, offset: 3968)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2235, file: !2236, line: 181, baseType: !711, size: 64, offset: 4032)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2235, file: !2236, line: 181, baseType: !711, size: 64, offset: 4096)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2235, file: !2236, line: 181, baseType: !711, size: 64, offset: 4160)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2235, file: !2236, line: 181, baseType: !711, size: 64, offset: 4224)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2235, file: !2236, line: 182, baseType: !711, size: 64, offset: 4288)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2235, file: !2236, line: 182, baseType: !711, size: 64, offset: 4352)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2235, file: !2236, line: 182, baseType: !711, size: 64, offset: 4416)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2235, file: !2236, line: 182, baseType: !711, size: 64, offset: 4480)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2235, file: !2236, line: 183, baseType: !711, size: 64, offset: 4544)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2235, file: !2236, line: 183, baseType: !711, size: 64, offset: 4608)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2235, file: !2236, line: 184, baseType: !2318, offset: 4672)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2319, line: 12, elements: !845)
!2319 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2235, file: !2236, line: 192, baseType: !637, size: 64, offset: 4672)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2235, file: !2236, line: 203, baseType: !2322, size: 2048, offset: 4736)
!2322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2323, size: 2048, elements: !2215)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2324, line: 43, size: 128, elements: !2325)
!2324 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2325 = !{!2326, !2327}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2323, file: !2324, line: 44, baseType: !916, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2323, file: !2324, line: 45, baseType: !916, size: 64, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2235, file: !2236, line: 220, baseType: !547, size: 8, offset: 6784)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2235, file: !2236, line: 221, baseType: !1694, size: 16, offset: 6800)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2235, file: !2236, line: 222, baseType: !1694, size: 16, offset: 6816)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2235, file: !2236, line: 224, baseType: !1545, size: 64, offset: 6848)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2235, file: !2236, line: 227, baseType: !1662, size: 192, offset: 6912)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2235, file: !2236, line: 233, baseType: !1662, size: 192, offset: 7104)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1706, file: !1707, line: 970, baseType: !2335, size: 64, offset: 9280)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2236, line: 20, size: 16576, elements: !2337)
!2337 = !{!2338, !2339, !2340, !2341}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2336, file: !2236, line: 21, baseType: !831)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2336, file: !2236, line: 22, baseType: !495, size: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2336, file: !2236, line: 23, baseType: !1963, size: 128, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2336, file: !2236, line: 24, baseType: !2342, size: 16384, offset: 192)
!2342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2343, size: 16384, elements: !874)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2246, line: 49, size: 256, elements: !2344)
!2344 = !{!2345}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2343, file: !2246, line: 50, baseType: !2346, size: 256)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2246, line: 35, size: 256, elements: !2347)
!2347 = !{!2348, !2355, !2356, !2362}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2346, file: !2246, line: 37, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2350, line: 19, baseType: !2351)
!2350 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2350, line: 18, baseType: !2353)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{null, !402}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2346, file: !2246, line: 38, baseType: !711, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2346, file: !2246, line: 44, baseType: !2357, size: 64, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2350, line: 22, baseType: !2358)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2350, line: 21, baseType: !2360)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{null}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2346, file: !2246, line: 46, baseType: !2250, size: 64, offset: 192)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1706, file: !1707, line: 971, baseType: !2250, size: 64, offset: 9344)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1706, file: !1707, line: 972, baseType: !2250, size: 64, offset: 9408)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1706, file: !1707, line: 974, baseType: !2250, size: 64, offset: 9472)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1706, file: !1707, line: 975, baseType: !2245, size: 192, offset: 9536)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1706, file: !1707, line: 976, baseType: !711, size: 64, offset: 9728)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1706, file: !1707, line: 977, baseType: !914, size: 64, offset: 9792)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1706, file: !1707, line: 978, baseType: !7, size: 32, offset: 9856)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1706, file: !1707, line: 980, baseType: !960, size: 64, offset: 9920)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1706, file: !1707, line: 989, baseType: !2372, size: 128, offset: 9984)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2373, line: 35, size: 128, elements: !2374)
!2373 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2374 = !{!2375, !2376, !2377}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2372, file: !2373, line: 36, baseType: !402, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2372, file: !2373, line: 37, baseType: !500, size: 32, offset: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2372, file: !2373, line: 38, baseType: !2378, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2373, line: 23, flags: DIFlagFwdDecl)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1706, file: !1707, line: 992, baseType: !752, size: 64, offset: 10112)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1706, file: !1707, line: 993, baseType: !752, size: 64, offset: 10176)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1706, file: !1707, line: 996, baseType: !831, offset: 10240)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1706, file: !1707, line: 999, baseType: !1353, offset: 10240)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1706, file: !1707, line: 1001, baseType: !2385, size: 64, offset: 10240)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1707, line: 636, size: 64, elements: !2386)
!2386 = !{!2387}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2385, file: !1707, line: 637, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1706, file: !1707, line: 1005, baseType: !1325, size: 128, offset: 10304)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1706, file: !1707, line: 1007, baseType: !1705, size: 64, offset: 10432)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1706, file: !1707, line: 1009, baseType: !2392, size: 64, offset: 10496)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1707, line: 1009, flags: DIFlagFwdDecl)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1706, file: !1707, line: 1043, baseType: !376, size: 64, offset: 10560)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1706, file: !1707, line: 1046, baseType: !2396, size: 64, offset: 10624)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1707, line: 41, flags: DIFlagFwdDecl)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1706, file: !1707, line: 1050, baseType: !2399, size: 64, offset: 10688)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1707, line: 42, flags: DIFlagFwdDecl)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1706, file: !1707, line: 1054, baseType: !2402, size: 64, offset: 10752)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1707, line: 55, flags: DIFlagFwdDecl)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1706, file: !1707, line: 1056, baseType: !2405, size: 64, offset: 10816)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1707, line: 40, flags: DIFlagFwdDecl)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1706, file: !1707, line: 1058, baseType: !2408, size: 64, offset: 10880)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2410, line: 99, size: 704, elements: !2411)
!2410 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2417, !2418, !2437, !2438}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2409, file: !2410, line: 100, baseType: !1344, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2409, file: !2410, line: 101, baseType: !500, size: 32, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2409, file: !2410, line: 102, baseType: !500, size: 32, offset: 96)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2409, file: !2410, line: 105, baseType: !831, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2409, file: !2410, line: 107, baseType: !419, size: 16, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2409, file: !2410, line: 109, baseType: !1316, size: 128, offset: 192)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2409, file: !2410, line: 110, baseType: !2419, size: 64, offset: 320)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2410, line: 73, size: 448, elements: !2421)
!2421 = !{!2422, !2425, !2426, !2431, !2436}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2420, file: !2410, line: 74, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2410, line: 74, flags: DIFlagFwdDecl)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2420, file: !2410, line: 75, baseType: !2408, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, scope: !2420, file: !2410, line: 83, baseType: !2427, size: 128, offset: 128)
!2427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2420, file: !2410, line: 83, size: 128, elements: !2428)
!2428 = !{!2429, !2430}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2427, file: !2410, line: 84, baseType: !803, size: 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2427, file: !2410, line: 85, baseType: !1506, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, scope: !2420, file: !2410, line: 87, baseType: !2432, size: 128, offset: 256)
!2432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2420, file: !2410, line: 87, size: 128, elements: !2433)
!2433 = !{!2434, !2435}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2432, file: !2410, line: 88, baseType: !1216, size: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2432, file: !2410, line: 89, baseType: !957, size: 128, align: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2420, file: !2410, line: 92, baseType: !7, size: 32, offset: 384)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2409, file: !2410, line: 111, baseType: !1212, size: 64, offset: 384)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2409, file: !2410, line: 113, baseType: !2439, size: 256, offset: 448)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2440, line: 102, size: 256, elements: !2441)
!2440 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2441 = !{!2442, !2443, !2444}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2439, file: !2440, line: 103, baseType: !1344, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2439, file: !2440, line: 104, baseType: !803, size: 128, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2439, file: !2440, line: 105, baseType: !2445, size: 64, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2440, line: 21, baseType: !2446)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{null, !2449}
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1706, file: !1707, line: 1061, baseType: !2451, size: 64, offset: 10944)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1707, line: 43, flags: DIFlagFwdDecl)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1706, file: !1707, line: 1064, baseType: !711, size: 64, offset: 11008)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1706, file: !1707, line: 1065, baseType: !2455, size: 64, offset: 11072)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2246, line: 14, baseType: !2457)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2246, line: 12, size: 384, elements: !2458)
!2458 = !{!2459}
!2459 = !DIDerivedType(tag: DW_TAG_member, scope: !2457, file: !2246, line: 13, baseType: !2460, size: 384)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2457, file: !2246, line: 13, size: 384, elements: !2461)
!2461 = !{!2462, !2463, !2464, !2465}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2460, file: !2246, line: 13, baseType: !402, size: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2460, file: !2246, line: 13, baseType: !402, size: 32, offset: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2460, file: !2246, line: 13, baseType: !402, size: 32, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2460, file: !2246, line: 13, baseType: !2466, size: 256, offset: 128)
!2466 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2467, line: 32, size: 256, elements: !2468)
!2467 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2468 = !{!2469, !2474, !2487, !2493, !2502, !2522, !2527}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2466, file: !2467, line: 37, baseType: !2470, size: 64)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !2467, line: 34, size: 64, elements: !2471)
!2471 = !{!2472, !2473}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2470, file: !2467, line: 35, baseType: !1942, size: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2470, file: !2467, line: 36, baseType: !1025, size: 32, offset: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2466, file: !2467, line: 45, baseType: !2475, size: 192)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !2467, line: 40, size: 192, elements: !2476)
!2476 = !{!2477, !2479, !2480, !2486}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2475, file: !2467, line: 41, baseType: !2478, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !902, line: 95, baseType: !402)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2475, file: !2467, line: 42, baseType: !402, size: 32, offset: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2475, file: !2467, line: 43, baseType: !2481, size: 64, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2467, line: 11, baseType: !2482)
!2482 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2467, line: 8, size: 64, elements: !2483)
!2483 = !{!2484, !2485}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2482, file: !2467, line: 9, baseType: !402, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2482, file: !2467, line: 10, baseType: !376, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2475, file: !2467, line: 44, baseType: !402, size: 32, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2466, file: !2467, line: 52, baseType: !2488, size: 128)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !2467, line: 48, size: 128, elements: !2489)
!2489 = !{!2490, !2491, !2492}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2488, file: !2467, line: 49, baseType: !1942, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2488, file: !2467, line: 50, baseType: !1025, size: 32, offset: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2488, file: !2467, line: 51, baseType: !2481, size: 64, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2466, file: !2467, line: 61, baseType: !2494, size: 256)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !2467, line: 55, size: 256, elements: !2495)
!2495 = !{!2496, !2497, !2498, !2499, !2501}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2494, file: !2467, line: 56, baseType: !1942, size: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2494, file: !2467, line: 57, baseType: !1025, size: 32, offset: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2494, file: !2467, line: 58, baseType: !402, size: 32, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2494, file: !2467, line: 59, baseType: !2500, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !902, line: 94, baseType: !903)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2494, file: !2467, line: 60, baseType: !2500, size: 64, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2466, file: !2467, line: 95, baseType: !2503, size: 256)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !2467, line: 64, size: 256, elements: !2504)
!2504 = !{!2505, !2506}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2503, file: !2467, line: 65, baseType: !376, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, scope: !2503, file: !2467, line: 77, baseType: !2507, size: 192, offset: 64)
!2507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2503, file: !2467, line: 77, size: 192, elements: !2508)
!2508 = !{!2509, !2510, !2517}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2507, file: !2467, line: 82, baseType: !1694, size: 16)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2507, file: !2467, line: 88, baseType: !2511, size: 192)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2507, file: !2467, line: 84, size: 192, elements: !2512)
!2512 = !{!2513, !2515, !2516}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2511, file: !2467, line: 85, baseType: !2514, size: 64)
!2514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 64, elements: !526)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2511, file: !2467, line: 86, baseType: !376, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2511, file: !2467, line: 87, baseType: !376, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2507, file: !2467, line: 93, baseType: !2518, size: 96)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2507, file: !2467, line: 90, size: 96, elements: !2519)
!2519 = !{!2520, !2521}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2518, file: !2467, line: 91, baseType: !2514, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2518, file: !2467, line: 92, baseType: !516, size: 32, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2466, file: !2467, line: 101, baseType: !2523, size: 128)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !2467, line: 98, size: 128, elements: !2524)
!2524 = !{!2525, !2526}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2523, file: !2467, line: 99, baseType: !706, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2523, file: !2467, line: 100, baseType: !402, size: 32, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2466, file: !2467, line: 108, baseType: !2528, size: 128)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !2467, line: 104, size: 128, elements: !2529)
!2529 = !{!2530, !2531, !2532}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2528, file: !2467, line: 105, baseType: !376, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2528, file: !2467, line: 106, baseType: !402, size: 32, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2528, file: !2467, line: 107, baseType: !7, size: 32, offset: 96)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1706, file: !1707, line: 1067, baseType: !2318, offset: 11136)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1706, file: !1707, line: 1099, baseType: !2535, size: 64, offset: 11136)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1707, line: 56, flags: DIFlagFwdDecl)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1706, file: !1707, line: 1103, baseType: !803, size: 128, offset: 11200)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1706, file: !1707, line: 1104, baseType: !2539, size: 64, offset: 11328)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1707, line: 46, flags: DIFlagFwdDecl)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1706, file: !1707, line: 1105, baseType: !1662, size: 192, offset: 11392)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1706, file: !1707, line: 1106, baseType: !7, size: 32, offset: 11584)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1706, file: !1707, line: 1109, baseType: !2544, size: 128, offset: 11648)
!2544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2545, size: 128, elements: !2051)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1707, line: 51, flags: DIFlagFwdDecl)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1706, file: !1707, line: 1110, baseType: !1662, size: 192, offset: 11776)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1706, file: !1707, line: 1111, baseType: !803, size: 128, offset: 11968)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1706, file: !1707, line: 1173, baseType: !2550, size: 64, offset: 12096)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2552, line: 62, size: 256, align: 256, elements: !2553)
!2552 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2553 = !{!2554, !2555, !2556, !2561}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2551, file: !2552, line: 75, baseType: !516, size: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2551, file: !2552, line: 90, baseType: !516, size: 32, offset: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2551, file: !2552, line: 124, baseType: !2557, size: 64, offset: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2551, file: !2552, line: 109, size: 64, elements: !2558)
!2558 = !{!2559, !2560}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2557, file: !2552, line: 110, baseType: !636, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2557, file: !2552, line: 112, baseType: !636, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2551, file: !2552, line: 144, baseType: !516, size: 32, offset: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1706, file: !1707, line: 1174, baseType: !515, size: 32, offset: 12160)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1706, file: !1707, line: 1179, baseType: !711, size: 64, offset: 12224)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1706, file: !1707, line: 1182, baseType: !2565, size: 128, offset: 12288)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1642, line: 76, size: 128, elements: !2566)
!2566 = !{!2567, !2572, !2573}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2565, file: !1642, line: 85, baseType: !2568, size: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2569, line: 7, size: 64, elements: !2570)
!2569 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2570 = !{!2571}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2568, file: !2569, line: 12, baseType: !1847, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2565, file: !1642, line: 88, baseType: !547, size: 8, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2565, file: !1642, line: 95, baseType: !547, size: 8, offset: 72)
!2574 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !1707, line: 1184, baseType: !2575, size: 128, offset: 12416)
!2575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1706, file: !1707, line: 1184, size: 128, elements: !2576)
!2576 = !{!2577, !2578}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2575, file: !1707, line: 1185, baseType: !495, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2575, file: !1707, line: 1186, baseType: !957, size: 128, align: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1706, file: !1707, line: 1190, baseType: !2580, size: 64, offset: 12544)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1707, line: 53, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1706, file: !1707, line: 1192, baseType: !2583, size: 128, offset: 12608)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1642, line: 64, size: 128, elements: !2584)
!2584 = !{!2585, !2586, !2587}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2583, file: !1642, line: 65, baseType: !1298, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2583, file: !1642, line: 67, baseType: !516, size: 32, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2583, file: !1642, line: 68, baseType: !516, size: 32, offset: 96)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1706, file: !1707, line: 1206, baseType: !402, size: 32, offset: 12736)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1706, file: !1707, line: 1207, baseType: !402, size: 32, offset: 12768)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1706, file: !1707, line: 1209, baseType: !711, size: 64, offset: 12800)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1706, file: !1707, line: 1219, baseType: !752, size: 64, offset: 12864)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1706, file: !1707, line: 1220, baseType: !752, size: 64, offset: 12928)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1706, file: !1707, line: 1317, baseType: !402, size: 32, offset: 12992)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1706, file: !1707, line: 1319, baseType: !1705, size: 64, offset: 13056)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1706, file: !1707, line: 1322, baseType: !2596, size: 64, offset: 13120)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2598, line: 56, size: 512, elements: !2599)
!2598 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2599 = !{!2600, !2601, !2602, !2603, !2604, !2605, !2606, !2608}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2597, file: !2598, line: 57, baseType: !2596, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2597, file: !2598, line: 58, baseType: !376, size: 64, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2597, file: !2598, line: 59, baseType: !711, size: 64, offset: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2597, file: !2598, line: 60, baseType: !711, size: 64, offset: 192)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2597, file: !2598, line: 61, baseType: !1393, size: 64, offset: 256)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2597, file: !2598, line: 62, baseType: !7, size: 32, offset: 320)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2597, file: !2598, line: 63, baseType: !2607, size: 64, offset: 384)
!2607 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !375, line: 153, baseType: !752)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2597, file: !2598, line: 64, baseType: !2609, size: 64, offset: 448)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1706, file: !1707, line: 1326, baseType: !495, size: 32, offset: 13184)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1706, file: !1707, line: 1342, baseType: !376, size: 64, offset: 13248)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1706, file: !1707, line: 1343, baseType: !636, size: 64, offset: 13312)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1706, file: !1707, line: 1344, baseType: !752, size: 64, offset: 13376)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1706, file: !1707, line: 1345, baseType: !636, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1706, file: !1707, line: 1346, baseType: !636, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1706, file: !1707, line: 1347, baseType: !636, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1706, file: !1707, line: 1348, baseType: !957, size: 128, align: 64, offset: 13504)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1706, file: !1707, line: 1358, baseType: !2620, size: 34816, offset: 13824)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2621, line: 485, size: 34816, elements: !2622)
!2621 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2622 = !{!2623, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2652, !2653, !2654, !2655, !2656, !2657, !2660, !2661, !2662}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2620, file: !2621, line: 487, baseType: !2624, size: 192)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2625, size: 192, elements: !603)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2626, line: 16, size: 64, elements: !2627)
!2626 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2627 = !{!2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2625, file: !2626, line: 17, baseType: !415, size: 16)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2625, file: !2626, line: 18, baseType: !415, size: 16, offset: 16)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2625, file: !2626, line: 19, baseType: !415, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2625, file: !2626, line: 19, baseType: !415, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2625, file: !2626, line: 19, baseType: !415, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2625, file: !2626, line: 19, baseType: !415, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2625, file: !2626, line: 19, baseType: !415, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2625, file: !2626, line: 20, baseType: !415, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2625, file: !2626, line: 20, baseType: !415, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2625, file: !2626, line: 20, baseType: !415, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2625, file: !2626, line: 20, baseType: !415, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2625, file: !2626, line: 20, baseType: !415, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2625, file: !2626, line: 20, baseType: !415, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2620, file: !2621, line: 491, baseType: !711, size: 64, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2620, file: !2621, line: 495, baseType: !419, size: 16, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2620, file: !2621, line: 496, baseType: !419, size: 16, offset: 272)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2620, file: !2621, line: 497, baseType: !419, size: 16, offset: 288)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2620, file: !2621, line: 498, baseType: !419, size: 16, offset: 304)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2620, file: !2621, line: 502, baseType: !711, size: 64, offset: 320)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2620, file: !2621, line: 503, baseType: !711, size: 64, offset: 384)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2620, file: !2621, line: 514, baseType: !2649, size: 256, offset: 448)
!2649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2650, size: 256, elements: !641)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2621, line: 483, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2620, file: !2621, line: 516, baseType: !711, size: 64, offset: 704)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2620, file: !2621, line: 518, baseType: !711, size: 64, offset: 768)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2620, file: !2621, line: 520, baseType: !711, size: 64, offset: 832)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2620, file: !2621, line: 521, baseType: !711, size: 64, offset: 896)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2620, file: !2621, line: 522, baseType: !711, size: 64, offset: 960)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2620, file: !2621, line: 528, baseType: !2658, size: 64, offset: 1024)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2621, line: 10, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2620, file: !2621, line: 535, baseType: !711, size: 64, offset: 1088)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2620, file: !2621, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2620, file: !2621, line: 540, baseType: !2663, size: 33280, offset: 1536)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2664, line: 317, size: 33280, elements: !2665)
!2664 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2665 = !{!2666, !2667, !2668}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2663, file: !2664, line: 330, baseType: !7, size: 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2663, file: !2664, line: 337, baseType: !711, size: 64, offset: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2663, file: !2664, line: 348, baseType: !2669, size: 32768, offset: 512)
!2669 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2664, line: 304, size: 32768, elements: !2670)
!2670 = !{!2671, !2686, !2725, !2775, !2788}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2669, file: !2664, line: 305, baseType: !2672, size: 896)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2664, line: 12, size: 896, elements: !2673)
!2673 = !{!2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2685}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2672, file: !2664, line: 13, baseType: !515, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2672, file: !2664, line: 14, baseType: !515, size: 32, offset: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2672, file: !2664, line: 15, baseType: !515, size: 32, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2672, file: !2664, line: 16, baseType: !515, size: 32, offset: 96)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2672, file: !2664, line: 17, baseType: !515, size: 32, offset: 128)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2672, file: !2664, line: 18, baseType: !515, size: 32, offset: 160)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2672, file: !2664, line: 19, baseType: !515, size: 32, offset: 192)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2672, file: !2664, line: 22, baseType: !2682, size: 640, offset: 224)
!2682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 640, elements: !2683)
!2683 = !{!2684}
!2684 = !DISubrange(count: 20)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2672, file: !2664, line: 25, baseType: !515, size: 32, offset: 864)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2669, file: !2664, line: 306, baseType: !2687, size: 4096, align: 128)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2664, line: 34, size: 4096, align: 128, elements: !2688)
!2688 = !{!2689, !2690, !2691, !2692, !2693, !2708, !2709, !2710, !2714, !2716, !2720}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2687, file: !2664, line: 35, baseType: !415, size: 16)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2687, file: !2664, line: 36, baseType: !415, size: 16, offset: 16)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2687, file: !2664, line: 37, baseType: !415, size: 16, offset: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2687, file: !2664, line: 38, baseType: !415, size: 16, offset: 48)
!2693 = !DIDerivedType(tag: DW_TAG_member, scope: !2687, file: !2664, line: 39, baseType: !2694, size: 128, offset: 64)
!2694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2687, file: !2664, line: 39, size: 128, elements: !2695)
!2695 = !{!2696, !2701}
!2696 = !DIDerivedType(tag: DW_TAG_member, scope: !2694, file: !2664, line: 40, baseType: !2697, size: 128)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2694, file: !2664, line: 40, size: 128, elements: !2698)
!2698 = !{!2699, !2700}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2697, file: !2664, line: 41, baseType: !752, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2697, file: !2664, line: 42, baseType: !752, size: 64, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, scope: !2694, file: !2664, line: 44, baseType: !2702, size: 128)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2694, file: !2664, line: 44, size: 128, elements: !2703)
!2703 = !{!2704, !2705, !2706, !2707}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2702, file: !2664, line: 45, baseType: !515, size: 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2702, file: !2664, line: 46, baseType: !515, size: 32, offset: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2702, file: !2664, line: 47, baseType: !515, size: 32, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2702, file: !2664, line: 48, baseType: !515, size: 32, offset: 96)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2687, file: !2664, line: 51, baseType: !515, size: 32, offset: 192)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2687, file: !2664, line: 52, baseType: !515, size: 32, offset: 224)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2687, file: !2664, line: 55, baseType: !2711, size: 1024, offset: 256)
!2711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 1024, elements: !2712)
!2712 = !{!2713}
!2713 = !DISubrange(count: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2687, file: !2664, line: 58, baseType: !2715, size: 2048, offset: 1280)
!2715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 2048, elements: !874)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2687, file: !2664, line: 60, baseType: !2717, size: 384, offset: 3328)
!2717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 384, elements: !2718)
!2718 = !{!2719}
!2719 = !DISubrange(count: 12)
!2720 = !DIDerivedType(tag: DW_TAG_member, scope: !2687, file: !2664, line: 62, baseType: !2721, size: 384, offset: 3712)
!2721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2687, file: !2664, line: 62, size: 384, elements: !2722)
!2722 = !{!2723, !2724}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2721, file: !2664, line: 63, baseType: !2717, size: 384)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2721, file: !2664, line: 64, baseType: !2717, size: 384)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2669, file: !2664, line: 307, baseType: !2726, size: 1088)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2664, line: 79, size: 1088, elements: !2727)
!2727 = !{!2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2774}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2726, file: !2664, line: 80, baseType: !515, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2726, file: !2664, line: 81, baseType: !515, size: 32, offset: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2726, file: !2664, line: 82, baseType: !515, size: 32, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2726, file: !2664, line: 83, baseType: !515, size: 32, offset: 96)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2726, file: !2664, line: 84, baseType: !515, size: 32, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2726, file: !2664, line: 85, baseType: !515, size: 32, offset: 160)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2726, file: !2664, line: 86, baseType: !515, size: 32, offset: 192)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2726, file: !2664, line: 88, baseType: !2682, size: 640, offset: 224)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2726, file: !2664, line: 89, baseType: !425, size: 8, offset: 864)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2726, file: !2664, line: 90, baseType: !425, size: 8, offset: 872)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2726, file: !2664, line: 91, baseType: !425, size: 8, offset: 880)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2726, file: !2664, line: 92, baseType: !425, size: 8, offset: 888)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2726, file: !2664, line: 93, baseType: !425, size: 8, offset: 896)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2726, file: !2664, line: 94, baseType: !425, size: 8, offset: 904)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2726, file: !2664, line: 95, baseType: !2743, size: 64, offset: 960)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2745, line: 11, size: 128, elements: !2746)
!2745 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2746 = !{!2747, !2748}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2744, file: !2745, line: 12, baseType: !706, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2744, file: !2745, line: 13, baseType: !2749, size: 64, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2751, line: 56, size: 1344, elements: !2752)
!2751 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2752 = !{!2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2750, file: !2751, line: 61, baseType: !711, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2750, file: !2751, line: 62, baseType: !711, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2750, file: !2751, line: 63, baseType: !711, size: 64, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2750, file: !2751, line: 64, baseType: !711, size: 64, offset: 192)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2750, file: !2751, line: 65, baseType: !711, size: 64, offset: 256)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2750, file: !2751, line: 66, baseType: !711, size: 64, offset: 320)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2750, file: !2751, line: 68, baseType: !711, size: 64, offset: 384)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2750, file: !2751, line: 69, baseType: !711, size: 64, offset: 448)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2750, file: !2751, line: 70, baseType: !711, size: 64, offset: 512)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2750, file: !2751, line: 71, baseType: !711, size: 64, offset: 576)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2750, file: !2751, line: 72, baseType: !711, size: 64, offset: 640)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2750, file: !2751, line: 73, baseType: !711, size: 64, offset: 704)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2750, file: !2751, line: 74, baseType: !711, size: 64, offset: 768)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2750, file: !2751, line: 75, baseType: !711, size: 64, offset: 832)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2750, file: !2751, line: 76, baseType: !711, size: 64, offset: 896)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2750, file: !2751, line: 81, baseType: !711, size: 64, offset: 960)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2750, file: !2751, line: 83, baseType: !711, size: 64, offset: 1024)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2750, file: !2751, line: 84, baseType: !711, size: 64, offset: 1088)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2750, file: !2751, line: 85, baseType: !711, size: 64, offset: 1152)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2750, file: !2751, line: 86, baseType: !711, size: 64, offset: 1216)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2750, file: !2751, line: 87, baseType: !711, size: 64, offset: 1280)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2726, file: !2664, line: 96, baseType: !515, size: 32, offset: 1024)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2669, file: !2664, line: 308, baseType: !2776, size: 4608, align: 512)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2664, line: 289, size: 4608, align: 512, elements: !2777)
!2777 = !{!2778, !2779, !2786}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2776, file: !2664, line: 290, baseType: !2687, size: 4096, align: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2776, file: !2664, line: 291, baseType: !2780, size: 512, offset: 4096)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2664, line: 268, size: 512, elements: !2781)
!2781 = !{!2782, !2783, !2784}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2780, file: !2664, line: 269, baseType: !752, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2780, file: !2664, line: 270, baseType: !752, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2780, file: !2664, line: 271, baseType: !2785, size: 384, offset: 128)
!2785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !752, size: 384, elements: !676)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2776, file: !2664, line: 292, baseType: !2787, offset: 4608)
!2787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, elements: !2203)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2669, file: !2664, line: 309, baseType: !2789, size: 32768)
!2789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 32768, elements: !2790)
!2790 = !{!2791}
!2791 = !DISubrange(count: 4096)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1702, file: !1300, line: 378, baseType: !2793, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1698, file: !1300, line: 384, baseType: !1984, size: 192, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1549, file: !1300, line: 500, baseType: !831, offset: 6656)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1549, file: !1300, line: 501, baseType: !2797, size: 64, offset: 6656)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1300, line: 387, flags: DIFlagFwdDecl)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1549, file: !1300, line: 516, baseType: !2193, size: 64, offset: 6720)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1549, file: !1300, line: 519, baseType: !944, size: 64, offset: 6784)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1549, file: !1300, line: 521, baseType: !2802, size: 64, offset: 6848)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1300, line: 521, flags: DIFlagFwdDecl)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1549, file: !1300, line: 545, baseType: !500, size: 32, offset: 6912)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1549, file: !1300, line: 548, baseType: !547, size: 8, offset: 6944)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1549, file: !1300, line: 550, baseType: !2807, offset: 6952)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2808, line: 142, elements: !845)
!2808 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1549, file: !1300, line: 554, baseType: !2439, size: 256, offset: 6976)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1549, file: !1300, line: 557, baseType: !515, size: 32, offset: 7232)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1546, file: !1300, line: 565, baseType: !2812, offset: 7296)
!2812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, elements: !2813)
!2813 = !{!2814}
!2814 = !DISubrange(count: -1)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1542, file: !1300, line: 151, baseType: !500, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1535, file: !1300, line: 156, baseType: !831, offset: 256)
!2817 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !1300, line: 159, baseType: !2818, size: 128)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !1300, line: 159, size: 128, elements: !2819)
!2819 = !{!2820, !2823}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2818, file: !1300, line: 161, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1300, line: 161, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2818, file: !1300, line: 162, baseType: !376, size: 64, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1304, file: !1300, line: 176, baseType: !957, size: 128, align: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !1300, line: 179, baseType: !2826, size: 32, offset: 384)
!2826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1299, file: !1300, line: 179, size: 32, elements: !2827)
!2827 = !{!2828, !2829, !2830, !2831}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2826, file: !1300, line: 184, baseType: !500, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2826, file: !1300, line: 192, baseType: !7, size: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2826, file: !1300, line: 194, baseType: !7, size: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2826, file: !1300, line: 195, baseType: !402, size: 32)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1299, file: !1300, line: 199, baseType: !500, size: 32, offset: 416)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1234, file: !208, line: 1964, baseType: !2834, size: 64, offset: 1344)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!706, !1176, !2837}
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2839, line: 12, size: 256, elements: !2840)
!2839 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2840 = !{!2841, !2842, !2843, !2844, !2845}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2838, file: !2839, line: 13, baseType: !374, size: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2838, file: !2839, line: 16, baseType: !402, size: 32, offset: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2838, file: !2839, line: 23, baseType: !711, size: 64, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2838, file: !2839, line: 30, baseType: !711, size: 64, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2838, file: !2839, line: 33, baseType: !2846, size: 64, offset: 192)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1300, line: 27, flags: DIFlagFwdDecl)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1234, file: !208, line: 1966, baseType: !2834, size: 64, offset: 1408)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1177, file: !208, line: 1424, baseType: !2850, size: 64, offset: 448)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2852)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !2853)
!2853 = !{!2854, !2900, !2904, !2908, !2909, !2910, !2911, !2912, !2917, !2922, !2926}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2852, file: !202, line: 323, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!402, !2858}
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !2860)
!2860 = !{!2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2885, !2886, !2887}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2859, file: !202, line: 295, baseType: !1216, size: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2859, file: !202, line: 296, baseType: !803, size: 128, offset: 128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2859, file: !202, line: 297, baseType: !803, size: 128, offset: 256)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2859, file: !202, line: 298, baseType: !803, size: 128, offset: 384)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2859, file: !202, line: 299, baseType: !1662, size: 192, offset: 512)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2859, file: !202, line: 300, baseType: !831, offset: 704)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2859, file: !202, line: 301, baseType: !500, size: 32, offset: 704)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2859, file: !202, line: 302, baseType: !1176, size: 64, offset: 768)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2859, file: !202, line: 303, baseType: !2870, size: 64, offset: 832)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !2871)
!2871 = !{!2872, !2884}
!2872 = !DIDerivedType(tag: DW_TAG_member, scope: !2870, file: !202, line: 69, baseType: !2873, size: 32)
!2873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2870, file: !202, line: 69, size: 32, elements: !2874)
!2874 = !{!2875, !2876, !2877}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2873, file: !202, line: 70, baseType: !1019, size: 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2873, file: !202, line: 71, baseType: !1027, size: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2873, file: !202, line: 72, baseType: !2878, size: 32)
!2878 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2879, line: 24, baseType: !2880)
!2879 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2879, line: 22, size: 32, elements: !2881)
!2881 = !{!2882}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2880, file: !2879, line: 23, baseType: !2883, size: 32)
!2883 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2879, line: 20, baseType: !1025)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2870, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2859, file: !202, line: 304, baseType: !1110, size: 64, offset: 896)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2859, file: !202, line: 305, baseType: !711, size: 64, offset: 960)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2859, file: !202, line: 306, baseType: !2888, size: 576, offset: 1024)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !2889)
!2889 = !{!2890, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2888, file: !202, line: 206, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !640)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2888, file: !202, line: 207, baseType: !2891, size: 64, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2888, file: !202, line: 208, baseType: !2891, size: 64, offset: 128)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2888, file: !202, line: 209, baseType: !2891, size: 64, offset: 192)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2888, file: !202, line: 210, baseType: !2891, size: 64, offset: 256)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2888, file: !202, line: 211, baseType: !2891, size: 64, offset: 320)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2888, file: !202, line: 212, baseType: !2891, size: 64, offset: 384)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2888, file: !202, line: 213, baseType: !1117, size: 64, offset: 448)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2888, file: !202, line: 214, baseType: !1117, size: 64, offset: 512)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2852, file: !202, line: 324, baseType: !2901, size: 64, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!2858, !1176, !402}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2852, file: !202, line: 325, baseType: !2905, size: 64, offset: 128)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{null, !2858}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2852, file: !202, line: 326, baseType: !2855, size: 64, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2852, file: !202, line: 327, baseType: !2855, size: 64, offset: 256)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2852, file: !202, line: 328, baseType: !2855, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2852, file: !202, line: 329, baseType: !1262, size: 64, offset: 384)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2852, file: !202, line: 332, baseType: !2913, size: 64, offset: 448)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!2916, !1013}
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2852, file: !202, line: 333, baseType: !2918, size: 64, offset: 512)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!402, !1013, !2921}
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2852, file: !202, line: 335, baseType: !2923, size: 64, offset: 576)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!402, !1013, !2916}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2852, file: !202, line: 337, baseType: !2927, size: 64, offset: 640)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!402, !1176, !2930}
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1177, file: !208, line: 1425, baseType: !2932, size: 64, offset: 512)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2934)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !2935)
!2935 = !{!2936, !2940, !2941, !2945, !2946, !2947, !2962, !2985, !2989, !2990, !3013}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2934, file: !202, line: 429, baseType: !2937, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!402, !1176, !402, !402, !1126}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2934, file: !202, line: 430, baseType: !1262, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2934, file: !202, line: 431, baseType: !2942, size: 64, offset: 128)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!402, !1176, !7}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2934, file: !202, line: 432, baseType: !2942, size: 64, offset: 192)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2934, file: !202, line: 433, baseType: !1262, size: 64, offset: 256)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2934, file: !202, line: 434, baseType: !2948, size: 64, offset: 320)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!402, !1176, !402, !2951}
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !2953)
!2953 = !{!2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2952, file: !202, line: 416, baseType: !402, size: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2952, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2952, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2952, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2952, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2952, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2952, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2952, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2934, file: !202, line: 435, baseType: !2963, size: 64, offset: 384)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!402, !1176, !2870, !2966}
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !2968)
!2968 = !{!2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2967, file: !202, line: 344, baseType: !402, size: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2967, file: !202, line: 345, baseType: !752, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2967, file: !202, line: 346, baseType: !752, size: 64, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2967, file: !202, line: 347, baseType: !752, size: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2967, file: !202, line: 348, baseType: !752, size: 64, offset: 256)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2967, file: !202, line: 349, baseType: !752, size: 64, offset: 320)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2967, file: !202, line: 350, baseType: !752, size: 64, offset: 384)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2967, file: !202, line: 351, baseType: !1350, size: 64, offset: 448)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2967, file: !202, line: 353, baseType: !1350, size: 64, offset: 512)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2967, file: !202, line: 354, baseType: !402, size: 32, offset: 576)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2967, file: !202, line: 355, baseType: !402, size: 32, offset: 608)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2967, file: !202, line: 356, baseType: !752, size: 64, offset: 640)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2967, file: !202, line: 357, baseType: !752, size: 64, offset: 704)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2967, file: !202, line: 358, baseType: !752, size: 64, offset: 768)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2967, file: !202, line: 359, baseType: !1350, size: 64, offset: 832)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2967, file: !202, line: 360, baseType: !402, size: 32, offset: 896)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2934, file: !202, line: 436, baseType: !2986, size: 64, offset: 448)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!402, !1176, !2930, !2966}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2934, file: !202, line: 438, baseType: !2963, size: 64, offset: 512)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2934, file: !202, line: 439, baseType: !2991, size: 64, offset: 576)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!402, !1176, !2994}
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !2996)
!2996 = !{!2997, !2998}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2995, file: !202, line: 410, baseType: !7, size: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2995, file: !202, line: 411, baseType: !2999, size: 1344, offset: 64)
!2999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3000, size: 1344, elements: !603)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !3001)
!3001 = !{!3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3012}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3000, file: !202, line: 396, baseType: !7, size: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3000, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3000, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3000, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3000, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3000, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3000, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3000, file: !202, line: 404, baseType: !637, size: 64, offset: 256)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3000, file: !202, line: 405, baseType: !3011, size: 64, offset: 320)
!3011 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !375, line: 126, baseType: !752)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3000, file: !202, line: 406, baseType: !3011, size: 64, offset: 384)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2934, file: !202, line: 440, baseType: !2942, size: 64, offset: 640)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1177, file: !208, line: 1426, baseType: !3015, size: 64, offset: 576)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3017)
!3017 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1177, file: !208, line: 1427, baseType: !711, size: 64, offset: 640)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1177, file: !208, line: 1428, baseType: !711, size: 64, offset: 704)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1177, file: !208, line: 1429, baseType: !711, size: 64, offset: 768)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1177, file: !208, line: 1430, baseType: !974, size: 64, offset: 832)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1177, file: !208, line: 1431, baseType: !1340, size: 256, offset: 896)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1177, file: !208, line: 1432, baseType: !402, size: 32, offset: 1152)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1177, file: !208, line: 1433, baseType: !500, size: 32, offset: 1184)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1177, file: !208, line: 1437, baseType: !3026, size: 64, offset: 1216)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3029)
!3029 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1177, file: !208, line: 1449, baseType: !3031, size: 64, offset: 1280)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !990, line: 34, size: 64, elements: !3032)
!3032 = !{!3033}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3031, file: !990, line: 35, baseType: !993, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1177, file: !208, line: 1450, baseType: !803, size: 128, offset: 1344)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1177, file: !208, line: 1451, baseType: !3036, size: 64, offset: 1472)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1177, file: !208, line: 1452, baseType: !2405, size: 64, offset: 1536)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1177, file: !208, line: 1453, baseType: !3040, size: 64, offset: 1600)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1177, file: !208, line: 1454, baseType: !1216, size: 128, offset: 1664)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1177, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1177, file: !208, line: 1456, baseType: !3045, size: 2432, offset: 1856)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !3046)
!3046 = !{!3047, !3048, !3049, !3051, !3083}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3045, file: !202, line: 519, baseType: !7, size: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3045, file: !202, line: 520, baseType: !1340, size: 256, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3045, file: !202, line: 521, baseType: !3050, size: 192, offset: 320)
!3050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1013, size: 192, elements: !603)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3045, file: !202, line: 522, baseType: !3052, size: 1728, offset: 512)
!3052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3053, size: 1728, elements: !603)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !3054)
!3054 = !{!3055, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3053, file: !202, line: 223, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !3058)
!3058 = !{!3059, !3060, !3073, !3074}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3057, file: !202, line: 444, baseType: !402, size: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3057, file: !202, line: 445, baseType: !3061, size: 64, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3063)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !3064)
!3064 = !{!3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3063, file: !202, line: 311, baseType: !1262, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3063, file: !202, line: 312, baseType: !1262, size: 64, offset: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3063, file: !202, line: 313, baseType: !1262, size: 64, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3063, file: !202, line: 314, baseType: !1262, size: 64, offset: 192)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3063, file: !202, line: 315, baseType: !2855, size: 64, offset: 256)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3063, file: !202, line: 316, baseType: !2855, size: 64, offset: 320)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3063, file: !202, line: 317, baseType: !2855, size: 64, offset: 384)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3063, file: !202, line: 318, baseType: !2927, size: 64, offset: 448)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3057, file: !202, line: 446, baseType: !389, size: 64, offset: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3057, file: !202, line: 447, baseType: !3056, size: 64, offset: 192)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3053, file: !202, line: 224, baseType: !402, size: 32, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3053, file: !202, line: 226, baseType: !803, size: 128, offset: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3053, file: !202, line: 227, baseType: !711, size: 64, offset: 256)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3053, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3053, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3053, file: !202, line: 230, baseType: !2891, size: 64, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3053, file: !202, line: 231, baseType: !2891, size: 64, offset: 448)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3053, file: !202, line: 232, baseType: !376, size: 64, offset: 512)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3045, file: !202, line: 523, baseType: !3084, size: 192, offset: 2240)
!3084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3061, size: 192, elements: !603)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1177, file: !208, line: 1458, baseType: !3086, size: 2112, offset: 4288)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !3087)
!3087 = !{!3088, !3089, !3090}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3086, file: !208, line: 1411, baseType: !402, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3086, file: !208, line: 1412, baseType: !1963, size: 128, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3086, file: !208, line: 1413, baseType: !3091, size: 1920, offset: 192)
!3091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3092, size: 1920, elements: !603)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3093, line: 12, size: 640, elements: !3094)
!3093 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3094 = !{!3095, !3103, !3104, !3109, !3110}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3092, file: !3093, line: 13, baseType: !3096, size: 320)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3097, line: 17, size: 320, elements: !3098)
!3097 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3098 = !{!3099, !3100, !3101, !3102}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3096, file: !3097, line: 18, baseType: !402, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3096, file: !3097, line: 19, baseType: !402, size: 32, offset: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3096, file: !3097, line: 20, baseType: !1963, size: 128, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3096, file: !3097, line: 22, baseType: !957, size: 128, align: 64, offset: 192)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3092, file: !3093, line: 14, baseType: !447, size: 64, offset: 320)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3092, file: !3093, line: 15, baseType: !3105, size: 64, offset: 384)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3106, line: 16, size: 64, elements: !3107)
!3106 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3107 = !{!3108}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3105, file: !3106, line: 17, baseType: !1705, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3092, file: !3093, line: 16, baseType: !1963, size: 128, offset: 448)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3092, file: !3093, line: 17, baseType: !500, size: 32, offset: 576)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1177, file: !208, line: 1465, baseType: !376, size: 64, offset: 6400)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1177, file: !208, line: 1468, baseType: !515, size: 32, offset: 6464)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1177, file: !208, line: 1470, baseType: !1117, size: 64, offset: 6528)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1177, file: !208, line: 1471, baseType: !1117, size: 64, offset: 6592)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1177, file: !208, line: 1473, baseType: !516, size: 32, offset: 6656)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1177, file: !208, line: 1474, baseType: !3117, size: 64, offset: 6720)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1177, file: !208, line: 1477, baseType: !3120, size: 256, offset: 6784)
!3120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 256, elements: !2712)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1177, file: !208, line: 1478, baseType: !3122, size: 128, offset: 7040)
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3123, line: 18, baseType: !3124)
!3123 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3123, line: 16, size: 128, elements: !3125)
!3125 = !{!3126}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3124, file: !3123, line: 17, baseType: !3127, size: 128)
!3127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 128, elements: !2215)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1177, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !1177, file: !208, line: 1481, baseType: !3130, size: 32, offset: 7200)
!3130 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !375, line: 150, baseType: !7)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1177, file: !208, line: 1487, baseType: !1662, size: 192, offset: 7232)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1177, file: !208, line: 1493, baseType: !385, size: 64, offset: 7424)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1177, file: !208, line: 1495, baseType: !3134, size: 64, offset: 7488)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3136)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !972, line: 135, size: 1024, align: 512, elements: !3137)
!3137 = !{!3138, !3142, !3143, !3150, !3156, !3160, !3164, !3168, !3169, !3173, !3177, !3182, !3186}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3136, file: !972, line: 136, baseType: !3139, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!402, !974, !7}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3136, file: !972, line: 137, baseType: !3139, size: 64, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3136, file: !972, line: 138, baseType: !3144, size: 64, offset: 128)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!402, !3147, !3149}
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !975)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3136, file: !972, line: 139, baseType: !3151, size: 64, offset: 192)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!402, !3147, !7, !385, !3154}
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !998)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3136, file: !972, line: 141, baseType: !3157, size: 64, offset: 256)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!402, !3147}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3136, file: !972, line: 142, baseType: !3161, size: 64, offset: 320)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!402, !974}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3136, file: !972, line: 143, baseType: !3165, size: 64, offset: 384)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{null, !974}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3136, file: !972, line: 144, baseType: !3165, size: 64, offset: 448)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3136, file: !972, line: 145, baseType: !3170, size: 64, offset: 512)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{null, !974, !1013}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3136, file: !972, line: 146, baseType: !3174, size: 64, offset: 576)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!408, !974, !408, !402}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3136, file: !972, line: 147, baseType: !3178, size: 64, offset: 640)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!970, !3181}
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3136, file: !972, line: 148, baseType: !3183, size: 64, offset: 704)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!402, !1126, !547}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3136, file: !972, line: 149, baseType: !3187, size: 64, offset: 768)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!974, !974, !3190}
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1014)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !1177, file: !208, line: 1500, baseType: !402, size: 32, offset: 7552)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1177, file: !208, line: 1502, baseType: !3194, size: 448, offset: 7616)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2839, line: 60, size: 448, elements: !3195)
!3195 = !{!3196, !3201, !3202, !3203, !3204, !3205, !3206}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3194, file: !2839, line: 61, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!711, !3200, !2837}
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3194, file: !2839, line: 63, baseType: !3197, size: 64, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3194, file: !2839, line: 66, baseType: !706, size: 64, offset: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3194, file: !2839, line: 67, baseType: !402, size: 32, offset: 192)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3194, file: !2839, line: 68, baseType: !7, size: 32, offset: 224)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3194, file: !2839, line: 71, baseType: !803, size: 128, offset: 256)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3194, file: !2839, line: 77, baseType: !3207, size: 64, offset: 384)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1177, file: !208, line: 1505, baseType: !1344, size: 64, offset: 8064)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !1177, file: !208, line: 1508, baseType: !1344, size: 64, offset: 8128)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1177, file: !208, line: 1511, baseType: !402, size: 32, offset: 8192)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1177, file: !208, line: 1514, baseType: !1480, size: 32, offset: 8224)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1177, file: !208, line: 1517, baseType: !3213, size: 64, offset: 8256)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2440, line: 18, flags: DIFlagFwdDecl)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1177, file: !208, line: 1518, baseType: !1212, size: 64, offset: 8320)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1177, file: !208, line: 1525, baseType: !2193, size: 64, offset: 8384)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1177, file: !208, line: 1532, baseType: !3218, size: 64, offset: 8448)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3219, line: 52, size: 64, elements: !3220)
!3219 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3220 = !{!3221}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3218, file: !3219, line: 53, baseType: !3222, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3219, line: 40, size: 256, elements: !3224)
!3224 = !{!3225, !3226, !3231}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3223, file: !3219, line: 42, baseType: !831)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3223, file: !3219, line: 44, baseType: !3227, size: 192)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3219, line: 28, size: 192, elements: !3228)
!3228 = !{!3229, !3230}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3227, file: !3219, line: 29, baseType: !803, size: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3227, file: !3219, line: 31, baseType: !706, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3223, file: !3219, line: 49, baseType: !706, size: 64, offset: 192)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1177, file: !208, line: 1533, baseType: !3218, size: 64, offset: 8512)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1177, file: !208, line: 1534, baseType: !957, size: 128, align: 64, offset: 8576)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1177, file: !208, line: 1535, baseType: !2439, size: 256, offset: 8704)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1177, file: !208, line: 1537, baseType: !1662, size: 192, offset: 8960)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1177, file: !208, line: 1542, baseType: !402, size: 32, offset: 9152)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1177, file: !208, line: 1545, baseType: !831, offset: 9184)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1177, file: !208, line: 1546, baseType: !803, size: 128, offset: 9216)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1177, file: !208, line: 1548, baseType: !831, offset: 9344)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1177, file: !208, line: 1549, baseType: !803, size: 128, offset: 9344)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1014, file: !208, line: 624, baseType: !1311, size: 64, offset: 256)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1014, file: !208, line: 631, baseType: !711, size: 64, offset: 320)
!3243 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !208, line: 639, baseType: !3244, size: 32, offset: 384)
!3244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !208, line: 639, size: 32, elements: !3245)
!3245 = !{!3246, !3248}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3244, file: !208, line: 640, baseType: !3247, size: 32)
!3247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3244, file: !208, line: 641, baseType: !7, size: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1014, file: !208, line: 643, baseType: !1092, size: 32, offset: 416)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1014, file: !208, line: 644, baseType: !1110, size: 64, offset: 448)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1014, file: !208, line: 645, baseType: !1113, size: 128, offset: 512)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1014, file: !208, line: 646, baseType: !1113, size: 128, offset: 640)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !1014, file: !208, line: 647, baseType: !1113, size: 128, offset: 768)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1014, file: !208, line: 648, baseType: !831, offset: 896)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1014, file: !208, line: 649, baseType: !419, size: 16, offset: 896)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1014, file: !208, line: 650, baseType: !425, size: 8, offset: 912)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1014, file: !208, line: 651, baseType: !425, size: 8, offset: 920)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1014, file: !208, line: 652, baseType: !3011, size: 64, offset: 960)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1014, file: !208, line: 659, baseType: !711, size: 64, offset: 1024)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1014, file: !208, line: 660, baseType: !1340, size: 256, offset: 1088)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1014, file: !208, line: 662, baseType: !711, size: 64, offset: 1344)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1014, file: !208, line: 663, baseType: !711, size: 64, offset: 1408)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1014, file: !208, line: 665, baseType: !1216, size: 128, offset: 1472)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1014, file: !208, line: 666, baseType: !803, size: 128, offset: 1600)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1014, file: !208, line: 675, baseType: !803, size: 128, offset: 1728)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1014, file: !208, line: 676, baseType: !803, size: 128, offset: 1856)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1014, file: !208, line: 677, baseType: !803, size: 128, offset: 1984)
!3268 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !208, line: 678, baseType: !3269, size: 128, offset: 2112)
!3269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !208, line: 678, size: 128, elements: !3270)
!3270 = !{!3271, !3272}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3269, file: !208, line: 679, baseType: !1212, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3269, file: !208, line: 680, baseType: !957, size: 128, align: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1014, file: !208, line: 682, baseType: !1346, size: 64, offset: 2240)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1014, file: !208, line: 683, baseType: !1346, size: 64, offset: 2304)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1014, file: !208, line: 684, baseType: !500, size: 32, offset: 2368)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1014, file: !208, line: 685, baseType: !500, size: 32, offset: 2400)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1014, file: !208, line: 686, baseType: !500, size: 32, offset: 2432)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1014, file: !208, line: 688, baseType: !500, size: 32, offset: 2464)
!3279 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !208, line: 690, baseType: !3280, size: 64, offset: 2496)
!3280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !208, line: 690, size: 64, elements: !3281)
!3281 = !{!3282, !3514}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3280, file: !208, line: 691, baseType: !3283, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3285)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !3286)
!3286 = !{!3287, !3288, !3292, !3297, !3301, !3302, !3303, !3307, !3320, !3321, !3338, !3342, !3343, !3347, !3348, !3352, !3357, !3358, !3362, !3366, !3474, !3478, !3479, !3483, !3484, !3488, !3492, !3497, !3501, !3505, !3509, !3513}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3285, file: !208, line: 1823, baseType: !389, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3285, file: !208, line: 1824, baseType: !3289, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!1110, !944, !1110, !402}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3285, file: !208, line: 1825, baseType: !3293, size: 64, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!900, !944, !408, !914, !3296}
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3285, file: !208, line: 1826, baseType: !3298, size: 64, offset: 192)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!900, !944, !385, !914, !3296}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3285, file: !208, line: 1827, baseType: !1417, size: 64, offset: 256)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3285, file: !208, line: 1828, baseType: !1417, size: 64, offset: 320)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3285, file: !208, line: 1829, baseType: !3304, size: 64, offset: 384)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!402, !1420, !547}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3285, file: !208, line: 1830, baseType: !3308, size: 64, offset: 448)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!402, !944, !3311}
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !3313)
!3313 = !{!3314, !3319}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3312, file: !208, line: 1777, baseType: !3315, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !3316)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!402, !3311, !385, !402, !1110, !752, !7}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3312, file: !208, line: 1778, baseType: !1110, size: 64, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3285, file: !208, line: 1831, baseType: !3308, size: 64, offset: 512)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3285, file: !208, line: 1832, baseType: !3322, size: 64, offset: 576)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!3325, !944, !3327}
!3325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3326, line: 52, baseType: !7)
!3326 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3329, line: 43, size: 128, elements: !3330)
!3329 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!3330 = !{!3331, !3337}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3328, file: !3329, line: 44, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3329, line: 37, baseType: !3333)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{null, !944, !3336, !3327}
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3328, file: !3329, line: 45, baseType: !3325, size: 32, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3285, file: !208, line: 1833, baseType: !3339, size: 64, offset: 640)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!706, !944, !7, !711}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3285, file: !208, line: 1834, baseType: !3339, size: 64, offset: 704)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3285, file: !208, line: 1835, baseType: !3344, size: 64, offset: 768)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!402, !944, !1552}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3285, file: !208, line: 1836, baseType: !711, size: 64, offset: 832)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3285, file: !208, line: 1837, baseType: !3349, size: 64, offset: 896)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!402, !1013, !944}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3285, file: !208, line: 1838, baseType: !3353, size: 64, offset: 960)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!402, !944, !3356}
!3356 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !376)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3285, file: !208, line: 1839, baseType: !3349, size: 64, offset: 1024)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3285, file: !208, line: 1840, baseType: !3359, size: 64, offset: 1088)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!402, !944, !1110, !1110, !402}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3285, file: !208, line: 1841, baseType: !3363, size: 64, offset: 1152)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!402, !402, !944, !402}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3285, file: !208, line: 1842, baseType: !3367, size: 64, offset: 1216)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!402, !944, !402, !3370}
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !3372)
!3372 = !{!3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3404, !3405, !3406, !3419, !3450}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3371, file: !208, line: 1063, baseType: !3370, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3371, file: !208, line: 1064, baseType: !803, size: 128, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3371, file: !208, line: 1065, baseType: !1216, size: 128, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3371, file: !208, line: 1066, baseType: !803, size: 128, offset: 320)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3371, file: !208, line: 1069, baseType: !803, size: 128, offset: 448)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3371, file: !208, line: 1072, baseType: !3356, size: 64, offset: 576)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3371, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3371, file: !208, line: 1074, baseType: !427, size: 8, offset: 672)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3371, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3371, file: !208, line: 1076, baseType: !402, size: 32, offset: 736)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3371, file: !208, line: 1077, baseType: !1963, size: 128, offset: 768)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3371, file: !208, line: 1078, baseType: !944, size: 64, offset: 896)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3371, file: !208, line: 1079, baseType: !1110, size: 64, offset: 960)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3371, file: !208, line: 1080, baseType: !1110, size: 64, offset: 1024)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3371, file: !208, line: 1082, baseType: !3388, size: 64, offset: 1088)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !3390)
!3390 = !{!3391, !3399, !3400, !3401, !3402, !3403}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3389, file: !208, line: 1315, baseType: !3392)
!3392 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3393, line: 20, baseType: !3394)
!3393 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3393, line: 11, elements: !3395)
!3395 = !{!3396}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3394, file: !3393, line: 12, baseType: !3397)
!3397 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !843, line: 33, baseType: !3398)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !843, line: 31, elements: !845)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3389, file: !208, line: 1316, baseType: !402, size: 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3389, file: !208, line: 1317, baseType: !402, size: 32, offset: 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3389, file: !208, line: 1318, baseType: !3388, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3389, file: !208, line: 1319, baseType: !944, size: 64, offset: 128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3389, file: !208, line: 1320, baseType: !957, size: 128, align: 64, offset: 192)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3371, file: !208, line: 1084, baseType: !711, size: 64, offset: 1152)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3371, file: !208, line: 1085, baseType: !711, size: 64, offset: 1216)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3371, file: !208, line: 1087, baseType: !3407, size: 64, offset: 1280)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3409)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !3410)
!3410 = !{!3411, !3415}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3409, file: !208, line: 1012, baseType: !3412, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{null, !3370, !3370}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3409, file: !208, line: 1013, baseType: !3416, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{null, !3370}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3371, file: !208, line: 1088, baseType: !3420, size: 64, offset: 1344)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3422)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !3423)
!3423 = !{!3424, !3428, !3432, !3433, !3437, !3441, !3445, !3449}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3422, file: !208, line: 1017, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!3356, !3356}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3422, file: !208, line: 1018, baseType: !3429, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{null, !3356}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3422, file: !208, line: 1019, baseType: !3416, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3422, file: !208, line: 1020, baseType: !3434, size: 64, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!402, !3370, !402}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3422, file: !208, line: 1021, baseType: !3438, size: 64, offset: 256)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!547, !3370}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3422, file: !208, line: 1022, baseType: !3442, size: 64, offset: 320)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!402, !3370, !402, !806}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3422, file: !208, line: 1023, baseType: !3446, size: 64, offset: 384)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{null, !3370, !1394}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3422, file: !208, line: 1024, baseType: !3438, size: 64, offset: 448)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3371, file: !208, line: 1097, baseType: !3451, size: 256, offset: 1408)
!3451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3371, file: !208, line: 1089, size: 256, elements: !3452)
!3452 = !{!3453, !3462, !3468}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3451, file: !208, line: 1090, baseType: !3454, size: 256)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3455, line: 10, size: 256, elements: !3456)
!3455 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3456 = !{!3457, !3458, !3461}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3454, file: !3455, line: 11, baseType: !515, size: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3454, file: !3455, line: 12, baseType: !3459, size: 64, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3455, line: 5, flags: DIFlagFwdDecl)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3454, file: !3455, line: 13, baseType: !803, size: 128, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3451, file: !208, line: 1091, baseType: !3463, size: 64)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3455, line: 17, size: 64, elements: !3464)
!3464 = !{!3465}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3463, file: !3455, line: 18, baseType: !3466, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3455, line: 16, flags: DIFlagFwdDecl)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3451, file: !208, line: 1096, baseType: !3469, size: 192)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3451, file: !208, line: 1092, size: 192, elements: !3470)
!3470 = !{!3471, !3472, !3473}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3469, file: !208, line: 1093, baseType: !803, size: 128)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3469, file: !208, line: 1094, baseType: !402, size: 32, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3469, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3285, file: !208, line: 1843, baseType: !3475, size: 64, offset: 1280)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!900, !944, !1298, !402, !914, !3296, !402}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3285, file: !208, line: 1844, baseType: !1592, size: 64, offset: 1344)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3285, file: !208, line: 1845, baseType: !3480, size: 64, offset: 1408)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!402, !402}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3285, file: !208, line: 1846, baseType: !3367, size: 64, offset: 1472)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3285, file: !208, line: 1847, baseType: !3485, size: 64, offset: 1536)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!900, !2580, !944, !3296, !914, !7}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3285, file: !208, line: 1848, baseType: !3489, size: 64, offset: 1600)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!900, !944, !3296, !2580, !914, !7}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3285, file: !208, line: 1849, baseType: !3493, size: 64, offset: 1664)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!402, !944, !706, !3496, !1394}
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3285, file: !208, line: 1850, baseType: !3498, size: 64, offset: 1728)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!706, !944, !402, !1110, !1110}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3285, file: !208, line: 1852, baseType: !3502, size: 64, offset: 1792)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{null, !1288, !944}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3285, file: !208, line: 1856, baseType: !3506, size: 64, offset: 1856)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!900, !944, !1110, !944, !1110, !914, !7}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3285, file: !208, line: 1858, baseType: !3510, size: 64, offset: 1920)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!1110, !944, !1110, !944, !1110, !1110, !7}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3285, file: !208, line: 1861, baseType: !3359, size: 64, offset: 1984)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3280, file: !208, line: 692, baseType: !1241, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1014, file: !208, line: 694, baseType: !3516, size: 64, offset: 2560)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !3518)
!3518 = !{!3519, !3520, !3521, !3522}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3517, file: !208, line: 1101, baseType: !831)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3517, file: !208, line: 1102, baseType: !803, size: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3517, file: !208, line: 1103, baseType: !803, size: 128, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3517, file: !208, line: 1104, baseType: !803, size: 128, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1014, file: !208, line: 695, baseType: !1312, size: 1216, align: 64, offset: 2624)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1014, file: !208, line: 696, baseType: !803, size: 128, offset: 3840)
!3525 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !208, line: 697, baseType: !3526, size: 64, offset: 3968)
!3526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !208, line: 697, size: 64, elements: !3527)
!3527 = !{!3528, !3529, !3530, !3541, !3542}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3526, file: !208, line: 698, baseType: !2580, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3526, file: !208, line: 699, baseType: !3036, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3526, file: !208, line: 700, baseType: !3531, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3533, line: 14, size: 832, elements: !3534)
!3533 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3534 = !{!3535, !3536, !3537, !3538, !3539, !3540}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3532, file: !3533, line: 15, baseType: !818, size: 512)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3532, file: !3533, line: 16, baseType: !389, size: 64, offset: 512)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3532, file: !3533, line: 17, baseType: !3283, size: 64, offset: 576)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3532, file: !3533, line: 18, baseType: !803, size: 128, offset: 640)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3532, file: !3533, line: 19, baseType: !1092, size: 32, offset: 768)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3532, file: !3533, line: 20, baseType: !7, size: 32, offset: 800)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3526, file: !208, line: 701, baseType: !408, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3526, file: !208, line: 702, baseType: !7, size: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1014, file: !208, line: 705, baseType: !516, size: 32, offset: 4032)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1014, file: !208, line: 708, baseType: !516, size: 32, offset: 4064)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1014, file: !208, line: 709, baseType: !3117, size: 64, offset: 4096)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1014, file: !208, line: 720, baseType: !376, size: 64, offset: 4160)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !975, file: !972, line: 98, baseType: !3548, size: 256, offset: 448)
!3548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 256, elements: !2712)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !975, file: !972, line: 101, baseType: !3550, size: 32, offset: 704)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3551, line: 25, size: 32, elements: !3552)
!3551 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3552 = !{!3553}
!3553 = !DIDerivedType(tag: DW_TAG_member, scope: !3550, file: !3551, line: 26, baseType: !3554, size: 32)
!3554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3550, file: !3551, line: 26, size: 32, elements: !3555)
!3555 = !{!3556}
!3556 = !DIDerivedType(tag: DW_TAG_member, scope: !3554, file: !3551, line: 30, baseType: !3557, size: 32)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3554, file: !3551, line: 30, size: 32, elements: !3558)
!3558 = !{!3559, !3560}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3557, file: !3551, line: 31, baseType: !831)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3557, file: !3551, line: 32, baseType: !402, size: 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !975, file: !972, line: 102, baseType: !3134, size: 64, offset: 768)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !975, file: !972, line: 103, baseType: !1176, size: 64, offset: 832)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !975, file: !972, line: 104, baseType: !711, size: 64, offset: 896)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !975, file: !972, line: 105, baseType: !376, size: 64, offset: 960)
!3565 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !972, line: 107, baseType: !3566, size: 128, offset: 1024)
!3566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !972, line: 107, size: 128, elements: !3567)
!3567 = !{!3568, !3569}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3566, file: !972, line: 108, baseType: !803, size: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3566, file: !972, line: 109, baseType: !3336, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !975, file: !972, line: 111, baseType: !803, size: 128, offset: 1152)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !975, file: !972, line: 112, baseType: !803, size: 128, offset: 1280)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !975, file: !972, line: 120, baseType: !3573, size: 128, offset: 1408)
!3573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !972, line: 116, size: 128, elements: !3574)
!3574 = !{!3575, !3576, !3577}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3573, file: !972, line: 117, baseType: !1216, size: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3573, file: !972, line: 118, baseType: !989, size: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3573, file: !972, line: 119, baseType: !957, size: 128, align: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !945, file: !208, line: 922, baseType: !1013, size: 64, offset: 256)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !945, file: !208, line: 923, baseType: !3283, size: 64, offset: 320)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !945, file: !208, line: 929, baseType: !831, offset: 384)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !945, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !945, file: !208, line: 931, baseType: !1344, size: 64, offset: 448)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !945, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !945, file: !208, line: 933, baseType: !3130, size: 32, offset: 544)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !945, file: !208, line: 934, baseType: !1662, size: 192, offset: 576)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !945, file: !208, line: 935, baseType: !1110, size: 64, offset: 768)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !945, file: !208, line: 936, baseType: !3588, size: 192, offset: 832)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !3589)
!3589 = !{!3590, !3591, !3592, !3593, !3594, !3595}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3588, file: !208, line: 886, baseType: !3392)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3588, file: !208, line: 887, baseType: !1953, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3588, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3588, file: !208, line: 889, baseType: !1019, size: 32, offset: 96)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3588, file: !208, line: 889, baseType: !1019, size: 32, offset: 128)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3588, file: !208, line: 890, baseType: !402, size: 32, offset: 160)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !945, file: !208, line: 937, baseType: !2029, size: 64, offset: 1024)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !945, file: !208, line: 938, baseType: !3598, size: 256, offset: 1088)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !3599)
!3599 = !{!3600, !3601, !3602, !3603, !3604, !3605}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3598, file: !208, line: 897, baseType: !711, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3598, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3598, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3598, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3598, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3598, file: !208, line: 904, baseType: !1110, size: 64, offset: 192)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !945, file: !208, line: 940, baseType: !752, size: 64, offset: 1344)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !945, file: !208, line: 945, baseType: !376, size: 64, offset: 1408)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !945, file: !208, line: 949, baseType: !803, size: 128, offset: 1472)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !945, file: !208, line: 950, baseType: !803, size: 128, offset: 1600)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !945, file: !208, line: 952, baseType: !1311, size: 64, offset: 1728)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !945, file: !208, line: 953, baseType: !1480, size: 32, offset: 1792)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !945, file: !208, line: 954, baseType: !1480, size: 32, offset: 1824)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !935, file: !894, line: 174, baseType: !941, size: 64, offset: 320)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !935, file: !894, line: 176, baseType: !3615, size: 64, offset: 384)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!402, !944, !824, !934, !1552}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !923, file: !894, line: 90, baseType: !918, size: 64, offset: 192)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !923, file: !894, line: 91, baseType: !3620, size: 64, offset: 256)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !884, file: !819, line: 143, baseType: !3622, size: 64, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!3625, !824}
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3627)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !3628)
!3628 = !{!3629, !3630, !3634, !3638, !3644, !3648}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3627, file: !225, line: 40, baseType: !224, size: 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3627, file: !225, line: 41, baseType: !3631, size: 64, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!547}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3627, file: !225, line: 42, baseType: !3635, size: 64, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!376}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3627, file: !225, line: 43, baseType: !3639, size: 64, offset: 192)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!2609, !3642}
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3627, file: !225, line: 44, baseType: !3645, size: 64, offset: 256)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!2609}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3627, file: !225, line: 45, baseType: !410, size: 64, offset: 320)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !884, file: !819, line: 144, baseType: !3650, size: 64, offset: 320)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!2609, !824}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !884, file: !819, line: 145, baseType: !3654, size: 64, offset: 384)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{null, !824, !3657, !3658}
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !818, file: !819, line: 70, baseType: !3660, size: 64, offset: 384)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1196, line: 123, size: 1024, elements: !3662)
!3662 = !{!3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3791, !3792, !3793, !3794, !3795}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3661, file: !1196, line: 124, baseType: !500, size: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3661, file: !1196, line: 125, baseType: !500, size: 32, offset: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3661, file: !1196, line: 135, baseType: !3660, size: 64, offset: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3661, file: !1196, line: 136, baseType: !385, size: 64, offset: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3661, file: !1196, line: 138, baseType: !1333, size: 192, align: 64, offset: 192)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3661, file: !1196, line: 140, baseType: !2609, size: 64, offset: 384)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3661, file: !1196, line: 141, baseType: !7, size: 32, offset: 448)
!3670 = !DIDerivedType(tag: DW_TAG_member, scope: !3661, file: !1196, line: 142, baseType: !3671, size: 256, offset: 512)
!3671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3661, file: !1196, line: 142, size: 256, elements: !3672)
!3672 = !{!3673, !3719, !3723}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3671, file: !1196, line: 143, baseType: !3674, size: 192)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1196, line: 91, size: 192, elements: !3675)
!3675 = !{!3676, !3677, !3678}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3674, file: !1196, line: 92, baseType: !711, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3674, file: !1196, line: 94, baseType: !1329, size: 64, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3674, file: !1196, line: 100, baseType: !3679, size: 64, offset: 128)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1196, line: 180, size: 704, elements: !3681)
!3681 = !{!3682, !3683, !3684, !3691, !3692, !3693, !3717, !3718}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3680, file: !1196, line: 182, baseType: !3660, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3680, file: !1196, line: 183, baseType: !7, size: 32, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3680, file: !1196, line: 186, baseType: !3685, size: 192, offset: 128)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3686, line: 19, size: 192, elements: !3687)
!3686 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3687 = !{!3688, !3689, !3690}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3685, file: !3686, line: 20, baseType: !1316, size: 128)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3685, file: !3686, line: 21, baseType: !7, size: 32, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3685, file: !3686, line: 22, baseType: !7, size: 32, offset: 160)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3680, file: !1196, line: 187, baseType: !515, size: 32, offset: 320)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3680, file: !1196, line: 188, baseType: !515, size: 32, offset: 352)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3680, file: !1196, line: 189, baseType: !3694, size: 64, offset: 384)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1196, line: 168, size: 320, elements: !3696)
!3696 = !{!3697, !3701, !3705, !3709, !3713}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3695, file: !1196, line: 169, baseType: !3698, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!402, !1288, !3679}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3695, file: !1196, line: 171, baseType: !3702, size: 64, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!402, !3660, !385, !909}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3695, file: !1196, line: 173, baseType: !3706, size: 64, offset: 128)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!402, !3660}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3695, file: !1196, line: 174, baseType: !3710, size: 64, offset: 192)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!402, !3660, !3660, !385}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3695, file: !1196, line: 176, baseType: !3714, size: 64, offset: 256)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!402, !1288, !3660, !3679}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3680, file: !1196, line: 192, baseType: !803, size: 128, offset: 448)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3680, file: !1196, line: 194, baseType: !1963, size: 128, offset: 576)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3671, file: !1196, line: 144, baseType: !3720, size: 64)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1196, line: 103, size: 64, elements: !3721)
!3721 = !{!3722}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3720, file: !1196, line: 104, baseType: !3660, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3671, file: !1196, line: 145, baseType: !3724, size: 256)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1196, line: 107, size: 256, elements: !3725)
!3725 = !{!3726, !3786, !3789, !3790}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3724, file: !1196, line: 108, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3729)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1196, line: 217, size: 768, elements: !3730)
!3730 = !{!3731, !3751, !3755, !3759, !3763, !3767, !3771, !3775, !3776, !3777, !3778, !3782}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3729, file: !1196, line: 222, baseType: !3732, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!402, !3735}
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1196, line: 197, size: 1088, elements: !3737)
!3737 = !{!3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3736, file: !1196, line: 199, baseType: !3660, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3736, file: !1196, line: 200, baseType: !944, size: 64, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3736, file: !1196, line: 201, baseType: !1288, size: 64, offset: 128)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3736, file: !1196, line: 202, baseType: !376, size: 64, offset: 192)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3736, file: !1196, line: 205, baseType: !1662, size: 192, offset: 256)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3736, file: !1196, line: 206, baseType: !1662, size: 192, offset: 448)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3736, file: !1196, line: 207, baseType: !402, size: 32, offset: 640)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3736, file: !1196, line: 208, baseType: !803, size: 128, offset: 704)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3736, file: !1196, line: 209, baseType: !408, size: 64, offset: 832)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3736, file: !1196, line: 211, baseType: !914, size: 64, offset: 896)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3736, file: !1196, line: 212, baseType: !547, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3736, file: !1196, line: 213, baseType: !547, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3736, file: !1196, line: 214, baseType: !1580, size: 64, offset: 1024)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3729, file: !1196, line: 223, baseType: !3752, size: 64, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{null, !3735}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3729, file: !1196, line: 236, baseType: !3756, size: 64, offset: 128)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!402, !1288, !376}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3729, file: !1196, line: 238, baseType: !3760, size: 64, offset: 192)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!376, !1288, !3296}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3729, file: !1196, line: 239, baseType: !3764, size: 64, offset: 256)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!376, !1288, !376, !3296}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3729, file: !1196, line: 240, baseType: !3768, size: 64, offset: 320)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{null, !1288, !376}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3729, file: !1196, line: 242, baseType: !3772, size: 64, offset: 384)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!900, !3735, !408, !914, !1110}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3729, file: !1196, line: 252, baseType: !914, size: 64, offset: 448)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3729, file: !1196, line: 259, baseType: !547, size: 8, offset: 512)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3729, file: !1196, line: 260, baseType: !3772, size: 64, offset: 576)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3729, file: !1196, line: 263, baseType: !3779, size: 64, offset: 640)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!3325, !3735, !3327}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3729, file: !1196, line: 266, baseType: !3783, size: 64, offset: 704)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!402, !3735, !1552}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3724, file: !1196, line: 109, baseType: !3787, size: 64, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1196, line: 31, flags: DIFlagFwdDecl)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3724, file: !1196, line: 110, baseType: !1110, size: 64, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3724, file: !1196, line: 111, baseType: !3660, size: 64, offset: 192)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3661, file: !1196, line: 148, baseType: !376, size: 64, offset: 768)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3661, file: !1196, line: 154, baseType: !752, size: 64, offset: 832)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3661, file: !1196, line: 156, baseType: !419, size: 16, offset: 896)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3661, file: !1196, line: 157, baseType: !909, size: 16, offset: 912)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3661, file: !1196, line: 158, baseType: !3796, size: 64, offset: 960)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1196, line: 32, flags: DIFlagFwdDecl)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !818, file: !819, line: 71, baseType: !491, size: 32, offset: 448)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !818, file: !819, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !818, file: !819, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !818, file: !819, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !818, file: !819, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !818, file: !819, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !815, file: !237, line: 463, baseType: !814, size: 64, offset: 512)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !815, file: !237, line: 465, baseType: !3806, size: 64, offset: 576)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !815, file: !237, line: 467, baseType: !385, size: 64, offset: 640)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !815, file: !237, line: 468, baseType: !3810, size: 64, offset: 704)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3812)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3813)
!3813 = !{!3814, !3815, !3816, !3820, !3825, !3829}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3812, file: !237, line: 88, baseType: !385, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3812, file: !237, line: 89, baseType: !920, size: 64, offset: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3812, file: !237, line: 90, baseType: !3817, size: 64, offset: 128)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!402, !814, !867}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3812, file: !237, line: 91, baseType: !3821, size: 64, offset: 192)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!408, !814, !3824, !3657, !3658}
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3812, file: !237, line: 93, baseType: !3826, size: 64, offset: 256)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{null, !814}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3812, file: !237, line: 95, baseType: !3830, size: 64, offset: 320)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3832)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3833)
!3833 = !{!3834, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3832, file: !244, line: 279, baseType: !3835, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!402, !814}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3832, file: !244, line: 280, baseType: !3826, size: 64, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3832, file: !244, line: 281, baseType: !3835, size: 64, offset: 128)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3832, file: !244, line: 282, baseType: !3835, size: 64, offset: 192)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3832, file: !244, line: 283, baseType: !3835, size: 64, offset: 256)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3832, file: !244, line: 284, baseType: !3835, size: 64, offset: 320)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3832, file: !244, line: 285, baseType: !3835, size: 64, offset: 384)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3832, file: !244, line: 286, baseType: !3835, size: 64, offset: 448)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3832, file: !244, line: 287, baseType: !3835, size: 64, offset: 512)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3832, file: !244, line: 288, baseType: !3835, size: 64, offset: 576)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3832, file: !244, line: 289, baseType: !3835, size: 64, offset: 640)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3832, file: !244, line: 290, baseType: !3835, size: 64, offset: 704)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3832, file: !244, line: 291, baseType: !3835, size: 64, offset: 768)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3832, file: !244, line: 292, baseType: !3835, size: 64, offset: 832)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3832, file: !244, line: 293, baseType: !3835, size: 64, offset: 896)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3832, file: !244, line: 294, baseType: !3835, size: 64, offset: 960)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3832, file: !244, line: 295, baseType: !3835, size: 64, offset: 1024)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3832, file: !244, line: 296, baseType: !3835, size: 64, offset: 1088)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3832, file: !244, line: 297, baseType: !3835, size: 64, offset: 1152)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3832, file: !244, line: 298, baseType: !3835, size: 64, offset: 1216)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3832, file: !244, line: 299, baseType: !3835, size: 64, offset: 1280)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3832, file: !244, line: 300, baseType: !3835, size: 64, offset: 1344)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3832, file: !244, line: 301, baseType: !3835, size: 64, offset: 1408)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !815, file: !237, line: 470, baseType: !3861, size: 64, offset: 768)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3863, line: 82, size: 1408, elements: !3864)
!3863 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3864 = !{!3865, !3866, !3867, !3868, !3869, !3870, !3871, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3943, !3946, !3947}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3862, file: !3863, line: 83, baseType: !385, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3862, file: !3863, line: 84, baseType: !385, size: 64, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3862, file: !3863, line: 85, baseType: !814, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3862, file: !3863, line: 86, baseType: !920, size: 64, offset: 192)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3862, file: !3863, line: 87, baseType: !920, size: 64, offset: 256)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3862, file: !3863, line: 88, baseType: !920, size: 64, offset: 320)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3862, file: !3863, line: 90, baseType: !3872, size: 64, offset: 384)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!402, !814, !3875}
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3877)
!3877 = !{!3878, !3879, !3880, !3881, !3882, !3883, !3884, !3894, !3907, !3908, !3909, !3910, !3911, !3919, !3920, !3921, !3922, !3923, !3924}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3876, file: !231, line: 96, baseType: !385, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3876, file: !231, line: 97, baseType: !3861, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3876, file: !231, line: 99, baseType: !389, size: 64, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3876, file: !231, line: 100, baseType: !385, size: 64, offset: 192)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3876, file: !231, line: 102, baseType: !547, size: 8, offset: 256)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3876, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3876, file: !231, line: 105, baseType: !3885, size: 64, offset: 320)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3887)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3888, line: 262, size: 1600, elements: !3889)
!3888 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3889 = !{!3890, !3891, !3892, !3893}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3887, file: !3888, line: 263, baseType: !3120, size: 256)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3887, file: !3888, line: 264, baseType: !3120, size: 256, offset: 256)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3887, file: !3888, line: 265, baseType: !511, size: 1024, offset: 512)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3887, file: !3888, line: 266, baseType: !2609, size: 64, offset: 1536)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3876, file: !231, line: 106, baseType: !3895, size: 64, offset: 384)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3897)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3888, line: 210, size: 256, elements: !3898)
!3898 = !{!3899, !3903, !3905, !3906}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3897, file: !3888, line: 211, baseType: !3900, size: 72)
!3900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 72, elements: !3901)
!3901 = !{!3902}
!3902 = !DISubrange(count: 9)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3897, file: !3888, line: 212, baseType: !3904, size: 64, offset: 128)
!3904 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3888, line: 14, baseType: !711)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3897, file: !3888, line: 213, baseType: !516, size: 32, offset: 192)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3897, file: !3888, line: 214, baseType: !516, size: 32, offset: 224)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3876, file: !231, line: 108, baseType: !3835, size: 64, offset: 448)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3876, file: !231, line: 109, baseType: !3826, size: 64, offset: 512)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3876, file: !231, line: 110, baseType: !3835, size: 64, offset: 576)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3876, file: !231, line: 111, baseType: !3826, size: 64, offset: 640)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3876, file: !231, line: 112, baseType: !3912, size: 64, offset: 704)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!402, !814, !3915}
!3915 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3916)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3917)
!3917 = !{!3918}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3916, file: !244, line: 51, baseType: !402, size: 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3876, file: !231, line: 113, baseType: !3835, size: 64, offset: 768)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3876, file: !231, line: 114, baseType: !920, size: 64, offset: 832)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3876, file: !231, line: 115, baseType: !920, size: 64, offset: 896)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3876, file: !231, line: 117, baseType: !3830, size: 64, offset: 960)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3876, file: !231, line: 118, baseType: !3826, size: 64, offset: 1024)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3876, file: !231, line: 120, baseType: !3925, size: 64, offset: 1088)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3862, file: !3863, line: 91, baseType: !3817, size: 64, offset: 448)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3862, file: !3863, line: 92, baseType: !3835, size: 64, offset: 512)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3862, file: !3863, line: 93, baseType: !3826, size: 64, offset: 576)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3862, file: !3863, line: 94, baseType: !3835, size: 64, offset: 640)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3862, file: !3863, line: 95, baseType: !3826, size: 64, offset: 704)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3862, file: !3863, line: 97, baseType: !3835, size: 64, offset: 768)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3862, file: !3863, line: 98, baseType: !3835, size: 64, offset: 832)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3862, file: !3863, line: 100, baseType: !3912, size: 64, offset: 896)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3862, file: !3863, line: 101, baseType: !3835, size: 64, offset: 960)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3862, file: !3863, line: 103, baseType: !3835, size: 64, offset: 1024)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3862, file: !3863, line: 105, baseType: !3835, size: 64, offset: 1088)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3862, file: !3863, line: 107, baseType: !3830, size: 64, offset: 1152)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3862, file: !3863, line: 109, baseType: !3940, size: 64, offset: 1216)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3942)
!3942 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3863, line: 109, flags: DIFlagFwdDecl)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3862, file: !3863, line: 111, baseType: !3944, size: 64, offset: 1280)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3863, line: 111, flags: DIFlagFwdDecl)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3862, file: !3863, line: 112, baseType: !1222, offset: 1344)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3862, file: !3863, line: 114, baseType: !547, size: 8, offset: 1344)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !815, file: !237, line: 471, baseType: !3875, size: 64, offset: 832)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !815, file: !237, line: 473, baseType: !376, size: 64, offset: 896)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !815, file: !237, line: 475, baseType: !376, size: 64, offset: 960)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !815, file: !237, line: 480, baseType: !1662, size: 192, offset: 1024)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !815, file: !237, line: 484, baseType: !3953, size: 576, offset: 1216)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3954)
!3954 = !{!3955, !3956, !3957, !3958, !3959, !3960}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3953, file: !237, line: 362, baseType: !803, size: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3953, file: !237, line: 363, baseType: !803, size: 128, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3953, file: !237, line: 364, baseType: !803, size: 128, offset: 256)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3953, file: !237, line: 365, baseType: !803, size: 128, offset: 384)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3953, file: !237, line: 366, baseType: !547, size: 8, offset: 512)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3953, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !815, file: !237, line: 485, baseType: !3962, size: 2304, offset: 1792)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3963)
!3963 = !{!3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4059, !4063}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3962, file: !244, line: 566, baseType: !3915, size: 32)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3962, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3962, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3962, file: !244, line: 569, baseType: !547, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3962, file: !244, line: 570, baseType: !547, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3962, file: !244, line: 571, baseType: !547, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3962, file: !244, line: 572, baseType: !547, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3962, file: !244, line: 573, baseType: !547, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3962, file: !244, line: 574, baseType: !547, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3962, file: !244, line: 575, baseType: !547, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3962, file: !244, line: 576, baseType: !547, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3962, file: !244, line: 577, baseType: !515, size: 32, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3962, file: !244, line: 578, baseType: !831, offset: 96)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3962, file: !244, line: 580, baseType: !803, size: 128, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3962, file: !244, line: 581, baseType: !1984, size: 192, offset: 256)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3962, file: !244, line: 582, baseType: !3980, size: 64, offset: 448)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3982, line: 43, size: 1472, elements: !3983)
!3982 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3983 = !{!3984, !3985, !3986, !3987, !3988, !3991, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3981, file: !3982, line: 44, baseType: !385, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3981, file: !3982, line: 45, baseType: !402, size: 32, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3981, file: !3982, line: 46, baseType: !803, size: 128, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3981, file: !3982, line: 47, baseType: !831, offset: 256)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3981, file: !3982, line: 48, baseType: !3989, size: 64, offset: 256)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3981, file: !3982, line: 49, baseType: !3992, size: 320, offset: 320)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3993, line: 11, size: 320, elements: !3994)
!3993 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3994 = !{!3995, !3996, !3997, !4002}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3992, file: !3993, line: 16, baseType: !1216, size: 128)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3992, file: !3993, line: 17, baseType: !711, size: 64, offset: 128)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3992, file: !3993, line: 18, baseType: !3998, size: 64, offset: 192)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{null, !4001}
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3992, file: !3993, line: 19, baseType: !515, size: 32, offset: 256)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3981, file: !3982, line: 50, baseType: !711, size: 64, offset: 640)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3981, file: !3982, line: 51, baseType: !1784, size: 64, offset: 704)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3981, file: !3982, line: 52, baseType: !1784, size: 64, offset: 768)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3981, file: !3982, line: 53, baseType: !1784, size: 64, offset: 832)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3981, file: !3982, line: 54, baseType: !1784, size: 64, offset: 896)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3981, file: !3982, line: 55, baseType: !1784, size: 64, offset: 960)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3981, file: !3982, line: 56, baseType: !711, size: 64, offset: 1024)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3981, file: !3982, line: 57, baseType: !711, size: 64, offset: 1088)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3981, file: !3982, line: 58, baseType: !711, size: 64, offset: 1152)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3981, file: !3982, line: 59, baseType: !711, size: 64, offset: 1216)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3981, file: !3982, line: 60, baseType: !711, size: 64, offset: 1280)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3981, file: !3982, line: 61, baseType: !814, size: 64, offset: 1344)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3981, file: !3982, line: 62, baseType: !547, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3981, file: !3982, line: 63, baseType: !547, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3962, file: !244, line: 583, baseType: !547, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3962, file: !244, line: 584, baseType: !547, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3962, file: !244, line: 585, baseType: !547, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3962, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3962, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3962, file: !244, line: 592, baseType: !1776, size: 512, offset: 576)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3962, file: !244, line: 593, baseType: !752, size: 64, offset: 1088)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3962, file: !244, line: 594, baseType: !2439, size: 256, offset: 1152)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3962, file: !244, line: 595, baseType: !1963, size: 128, offset: 1408)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3962, file: !244, line: 596, baseType: !3989, size: 64, offset: 1536)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3962, file: !244, line: 597, baseType: !500, size: 32, offset: 1600)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3962, file: !244, line: 598, baseType: !500, size: 32, offset: 1632)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3962, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3962, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3962, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3962, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3962, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3962, file: !244, line: 604, baseType: !547, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3962, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3962, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3962, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3962, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3962, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3962, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3962, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3962, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3962, file: !244, line: 613, baseType: !402, size: 32, offset: 1792)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3962, file: !244, line: 614, baseType: !402, size: 32, offset: 1824)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3962, file: !244, line: 615, baseType: !752, size: 64, offset: 1856)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3962, file: !244, line: 616, baseType: !752, size: 64, offset: 1920)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3962, file: !244, line: 617, baseType: !752, size: 64, offset: 1984)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3962, file: !244, line: 618, baseType: !752, size: 64, offset: 2048)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3962, file: !244, line: 620, baseType: !4050, size: 64, offset: 2112)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !4052)
!4052 = !{!4053, !4054, !4055, !4056}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4051, file: !244, line: 537, baseType: !831)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4051, file: !244, line: 538, baseType: !7, size: 32)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !4051, file: !244, line: 540, baseType: !803, size: 128, offset: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !4051, file: !244, line: 543, baseType: !4057, size: 64, offset: 192)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3962, file: !244, line: 621, baseType: !4060, size: 64, offset: 2176)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !814, !767}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3962, file: !244, line: 622, baseType: !4064, size: 64, offset: 2240)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !815, file: !237, line: 486, baseType: !4067, size: 64, offset: 4096)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !4069)
!4069 = !{!4070, !4071, !4072, !4076, !4077, !4078}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4068, file: !244, line: 643, baseType: !3832, size: 1472)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4068, file: !244, line: 644, baseType: !3835, size: 64, offset: 1472)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4068, file: !244, line: 645, baseType: !4073, size: 64, offset: 1536)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{null, !814, !547}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4068, file: !244, line: 646, baseType: !3835, size: 64, offset: 1600)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4068, file: !244, line: 647, baseType: !3826, size: 64, offset: 1664)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4068, file: !244, line: 648, baseType: !3826, size: 64, offset: 1728)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !815, file: !237, line: 493, baseType: !4080, size: 64, offset: 4160)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !4082)
!4082 = !{!4083, !4084, !4085, !4258, !4259, !4260, !4261, !4262, !4263, !4266, !4267, !4268, !4269, !4270, !4271, !4272}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4081, file: !258, line: 163, baseType: !803, size: 128)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4081, file: !258, line: 164, baseType: !385, size: 64, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4081, file: !258, line: 165, baseType: !4086, size: 64, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4088)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !4089)
!4089 = !{!4090, !4208, !4219, !4224, !4228, !4235, !4239, !4243, !4250, !4254}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4088, file: !258, line: 106, baseType: !4091, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!402, !4080, !4094, !257}
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4096, line: 51, size: 1344, elements: !4097)
!4096 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!4097 = !{!4098, !4099, !4101, !4102, !4192, !4201, !4202, !4203, !4204, !4205, !4206, !4207}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4095, file: !4096, line: 52, baseType: !385, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4095, file: !4096, line: 53, baseType: !4100, size: 32, offset: 64)
!4100 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4096, line: 28, baseType: !515)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4095, file: !4096, line: 54, baseType: !385, size: 64, offset: 128)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4095, file: !4096, line: 55, baseType: !4103, size: 192, offset: 192)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4104, line: 17, size: 192, elements: !4105)
!4104 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!4105 = !{!4106, !4108, !4191}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4103, file: !4104, line: 18, baseType: !4107, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4103, file: !4104, line: 19, baseType: !4109, size: 64, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4111)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4104, line: 110, size: 1152, elements: !4112)
!4112 = !{!4113, !4117, !4121, !4127, !4133, !4137, !4141, !4146, !4150, !4151, !4155, !4159, !4163, !4174, !4175, !4176, !4177, !4187}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4111, file: !4104, line: 111, baseType: !4114, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!4107, !4107}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4111, file: !4104, line: 112, baseType: !4118, size: 64, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{null, !4107}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4111, file: !4104, line: 113, baseType: !4122, size: 64, offset: 128)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!547, !4125}
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4103)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4111, file: !4104, line: 114, baseType: !4128, size: 64, offset: 192)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!2609, !4125, !4131}
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !815)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4111, file: !4104, line: 116, baseType: !4134, size: 64, offset: 256)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!547, !4125, !385}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4111, file: !4104, line: 118, baseType: !4138, size: 64, offset: 320)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!402, !4125, !385, !7, !376, !914}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4111, file: !4104, line: 123, baseType: !4142, size: 64, offset: 384)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!402, !4125, !385, !4145, !914}
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4111, file: !4104, line: 126, baseType: !4147, size: 64, offset: 448)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!385, !4125}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4111, file: !4104, line: 127, baseType: !4147, size: 64, offset: 512)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4111, file: !4104, line: 128, baseType: !4152, size: 64, offset: 576)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!4107, !4125}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4111, file: !4104, line: 130, baseType: !4156, size: 64, offset: 640)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!4107, !4125, !4107}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4111, file: !4104, line: 133, baseType: !4160, size: 64, offset: 704)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!4107, !4125, !385}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4111, file: !4104, line: 135, baseType: !4164, size: 64, offset: 768)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!402, !4125, !385, !385, !7, !7, !4167}
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4104, line: 43, size: 640, elements: !4169)
!4169 = !{!4170, !4171, !4172}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4168, file: !4104, line: 44, baseType: !4107, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4168, file: !4104, line: 45, baseType: !7, size: 32, offset: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4168, file: !4104, line: 46, baseType: !4173, size: 512, offset: 128)
!4173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !752, size: 512, elements: !526)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4111, file: !4104, line: 140, baseType: !4156, size: 64, offset: 832)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4111, file: !4104, line: 143, baseType: !4152, size: 64, offset: 896)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4111, file: !4104, line: 145, baseType: !4114, size: 64, offset: 960)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4111, file: !4104, line: 146, baseType: !4178, size: 64, offset: 1024)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!402, !4125, !4181}
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4104, line: 29, size: 128, elements: !4183)
!4183 = !{!4184, !4185, !4186}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4182, file: !4104, line: 30, baseType: !7, size: 32)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4182, file: !4104, line: 31, baseType: !7, size: 32, offset: 32)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4182, file: !4104, line: 32, baseType: !4125, size: 64, offset: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4111, file: !4104, line: 148, baseType: !4188, size: 64, offset: 1088)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!402, !4125, !814}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4103, file: !4104, line: 20, baseType: !814, size: 64, offset: 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4095, file: !4096, line: 57, baseType: !4193, size: 64, offset: 384)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4096, line: 31, size: 704, elements: !4195)
!4195 = !{!4196, !4197, !4198, !4199, !4200}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4194, file: !4096, line: 32, baseType: !408, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4194, file: !4096, line: 33, baseType: !402, size: 32, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4194, file: !4096, line: 34, baseType: !376, size: 64, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4194, file: !4096, line: 35, baseType: !4193, size: 64, offset: 192)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4194, file: !4096, line: 43, baseType: !935, size: 448, offset: 256)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4095, file: !4096, line: 58, baseType: !4193, size: 64, offset: 448)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4095, file: !4096, line: 59, baseType: !4094, size: 64, offset: 512)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4095, file: !4096, line: 60, baseType: !4094, size: 64, offset: 576)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4095, file: !4096, line: 61, baseType: !4094, size: 64, offset: 640)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4095, file: !4096, line: 63, baseType: !818, size: 512, offset: 704)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4095, file: !4096, line: 65, baseType: !711, size: 64, offset: 1216)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4095, file: !4096, line: 66, baseType: !376, size: 64, offset: 1280)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !4088, file: !258, line: 108, baseType: !4209, size: 64, offset: 64)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!402, !4080, !4212, !257}
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !4214)
!4214 = !{!4215, !4216, !4217}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4213, file: !258, line: 64, baseType: !4107, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4213, file: !258, line: 65, baseType: !402, size: 32, offset: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4213, file: !258, line: 66, baseType: !4218, size: 512, offset: 96)
!4218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 512, elements: !2215)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4088, file: !258, line: 110, baseType: !4220, size: 64, offset: 128)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!402, !4080, !7, !4223}
!4223 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !375, line: 164, baseType: !711)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4088, file: !258, line: 111, baseType: !4225, size: 64, offset: 192)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{null, !4080, !7}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !4088, file: !258, line: 112, baseType: !4229, size: 64, offset: 256)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!402, !4080, !4094, !4232, !7, !4234, !447}
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4088, file: !258, line: 117, baseType: !4236, size: 64, offset: 320)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!402, !4080, !7, !7, !376}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4088, file: !258, line: 119, baseType: !4240, size: 64, offset: 384)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{null, !4080, !7, !7}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4088, file: !258, line: 121, baseType: !4244, size: 64, offset: 448)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!402, !4080, !4247, !547}
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4249, line: 11, flags: DIFlagFwdDecl)
!4249 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4088, file: !258, line: 122, baseType: !4251, size: 64, offset: 512)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{null, !4080, !4247}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !4088, file: !258, line: 123, baseType: !4255, size: 64, offset: 576)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!402, !4080, !4212, !4234, !447}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !4081, file: !258, line: 166, baseType: !376, size: 64, offset: 256)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4081, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !4081, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4081, file: !258, line: 171, baseType: !4107, size: 64, offset: 384)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !4081, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4081, file: !258, line: 173, baseType: !4264, size: 64, offset: 512)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4081, file: !258, line: 175, baseType: !4080, size: 64, offset: 576)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !4081, file: !258, line: 182, baseType: !4223, size: 64, offset: 640)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !4081, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !4081, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !4081, file: !258, line: 185, baseType: !1316, size: 128, offset: 768)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !4081, file: !258, line: 186, baseType: !1662, size: 192, offset: 896)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !4081, file: !258, line: 187, baseType: !4273, offset: 1088)
!4273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2813)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !815, file: !237, line: 499, baseType: !803, size: 128, offset: 4224)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !815, file: !237, line: 502, baseType: !4276, size: 64, offset: 4352)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4278)
!4278 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !815, file: !237, line: 504, baseType: !4280, size: 64, offset: 4416)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !815, file: !237, line: 505, baseType: !752, size: 64, offset: 4480)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !815, file: !237, line: 510, baseType: !752, size: 64, offset: 4544)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !815, file: !237, line: 511, baseType: !4284, size: 64, offset: 4608)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4286)
!4286 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !815, file: !237, line: 513, baseType: !4288, size: 64, offset: 4672)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !4290)
!4290 = !{!4291, !4292}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4289, file: !237, line: 293, baseType: !7, size: 32)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4289, file: !237, line: 294, baseType: !711, size: 64, offset: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !815, file: !237, line: 515, baseType: !803, size: 128, offset: 4736)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !815, file: !237, line: 526, baseType: !4295, offset: 4864)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4296, line: 5, elements: !845)
!4296 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !815, file: !237, line: 528, baseType: !4094, size: 64, offset: 4864)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !815, file: !237, line: 529, baseType: !4107, size: 64, offset: 4928)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !815, file: !237, line: 534, baseType: !1092, size: 32, offset: 4992)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !815, file: !237, line: 535, baseType: !515, size: 32, offset: 5024)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !815, file: !237, line: 537, baseType: !831, offset: 5056)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !815, file: !237, line: 538, baseType: !803, size: 128, offset: 5056)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !815, file: !237, line: 540, baseType: !4304, size: 64, offset: 5184)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4306, line: 54, size: 960, elements: !4307)
!4306 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4307 = !{!4308, !4309, !4310, !4311, !4312, !4313, !4314, !4318, !4322, !4323, !4324, !4325, !4329, !4333, !4334}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4305, file: !4306, line: 55, baseType: !385, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4305, file: !4306, line: 56, baseType: !389, size: 64, offset: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4305, file: !4306, line: 58, baseType: !920, size: 64, offset: 128)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4305, file: !4306, line: 59, baseType: !920, size: 64, offset: 192)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4305, file: !4306, line: 60, baseType: !824, size: 64, offset: 256)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4305, file: !4306, line: 62, baseType: !3817, size: 64, offset: 320)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4305, file: !4306, line: 63, baseType: !4315, size: 64, offset: 384)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!408, !814, !3824}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4305, file: !4306, line: 65, baseType: !4319, size: 64, offset: 448)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{null, !4304}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4305, file: !4306, line: 66, baseType: !3826, size: 64, offset: 512)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4305, file: !4306, line: 68, baseType: !3835, size: 64, offset: 576)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4305, file: !4306, line: 70, baseType: !3625, size: 64, offset: 640)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4305, file: !4306, line: 71, baseType: !4326, size: 64, offset: 704)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!2609, !814}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4305, file: !4306, line: 73, baseType: !4330, size: 64, offset: 768)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{null, !814, !3657, !3658}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4305, file: !4306, line: 75, baseType: !3830, size: 64, offset: 832)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4305, file: !4306, line: 77, baseType: !3944, size: 64, offset: 896)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !815, file: !237, line: 541, baseType: !920, size: 64, offset: 5248)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !815, file: !237, line: 543, baseType: !3826, size: 64, offset: 5312)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !815, file: !237, line: 544, baseType: !4338, size: 64, offset: 5376)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !815, file: !237, line: 545, baseType: !4341, size: 64, offset: 5440)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !815, file: !237, line: 547, baseType: !547, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !815, file: !237, line: 548, baseType: !547, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !815, file: !237, line: 549, baseType: !547, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !815, file: !237, line: 550, baseType: !547, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !799, file: !272, line: 111, baseType: !389, size: 64, offset: 576)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !799, file: !272, line: 113, baseType: !402, size: 32, offset: 640)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !799, file: !272, line: 114, baseType: !4350, size: 64, offset: 704)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4352)
!4352 = !{!4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4367}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4351, file: !272, line: 158, baseType: !803, size: 128)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4351, file: !272, line: 159, baseType: !3283, size: 64, offset: 128)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4351, file: !272, line: 160, baseType: !798, size: 64, offset: 192)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4351, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4351, file: !272, line: 162, baseType: !402, size: 32, offset: 288)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4351, file: !272, line: 163, baseType: !515, size: 32, offset: 320)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4351, file: !272, line: 167, baseType: !402, size: 32, offset: 352)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4351, file: !272, line: 168, baseType: !402, size: 32, offset: 384)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4351, file: !272, line: 169, baseType: !402, size: 32, offset: 416)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4351, file: !272, line: 171, baseType: !1963, size: 128, offset: 448)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4351, file: !272, line: 173, baseType: !4364, size: 64, offset: 576)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!402, !944, !7, !376}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4351, file: !272, line: 187, baseType: !376, size: 64, offset: 640)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !799, file: !272, line: 115, baseType: !1662, size: 192, offset: 768)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !488, file: !51, line: 690, baseType: !376, size: 64, offset: 6144)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !488, file: !51, line: 691, baseType: !376, size: 64, offset: 6208)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !488, file: !51, line: 692, baseType: !376, size: 64, offset: 6272)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !488, file: !51, line: 693, baseType: !376, size: 64, offset: 6336)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !488, file: !51, line: 694, baseType: !376, size: 64, offset: 6400)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !488, file: !51, line: 695, baseType: !570, size: 3648, offset: 6464)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !488, file: !51, line: 698, baseType: !4376, size: 64, offset: 10112)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!402, !376, !402, !402, !402}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !488, file: !51, line: 699, baseType: !402, size: 32, offset: 10176)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !488, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 16, elements: !2051)
!4382 = !DIGlobalVariableExpression(var: !4383, expr: !DIExpression())
!4383 = distinct !DIGlobalVariable(name: "mt352_softdown", scope: !4384, file: !3, line: 93, type: !4385, isLocal: true, isDefinition: true)
!4384 = distinct !DISubprogram(name: "mt352_sleep", scope: !3, file: !3, line: 91, type: !485, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!4385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 24, elements: !603)
!4386 = !DIGlobalVariableExpression(var: !4387, expr: !DIExpression())
!4387 = distinct !DIGlobalVariable(name: "tuner_go", scope: !4388, file: !3, line: 160, type: !4389, isLocal: true, isDefinition: true)
!4388 = distinct !DISubprogram(name: "mt352_set_parameters", scope: !3, file: !3, line: 155, type: !485, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!4389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 16, elements: !2051)
!4390 = !DIGlobalVariableExpression(var: !4391, expr: !DIExpression())
!4391 = distinct !DIGlobalVariable(name: "fsm_go", scope: !4388, file: !3, line: 161, type: !4389, isLocal: true, isDefinition: true)
!4392 = !DIGlobalVariableExpression(var: !4393, expr: !DIExpression())
!4393 = distinct !DIGlobalVariable(name: "tps_fec_to_api", scope: !4394, file: !3, line: 308, type: !4395, isLocal: true, isDefinition: true)
!4394 = distinct !DISubprogram(name: "mt352_get_parameters", scope: !3, file: !3, line: 301, type: !567, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!4395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 64, elements: !526)
!4396 = !DIGlobalVariableExpression(var: !4397, expr: !DIExpression())
!4397 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 589, type: !4398, isLocal: true, isDefinition: true)
!4398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 96, elements: !2718)
!4399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!4400 = !{i32 7, !"Dwarf Version", i32 4}
!4401 = !{i32 2, !"Debug Info Version", i32 3}
!4402 = !{i32 1, !"wchar_size", i32 2}
!4403 = !{i32 1, !"Code Model", i32 2}
!4404 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4405 = distinct !DISubprogram(name: "mt352_attach", scope: !3, file: !3, line: 530, type: !4406, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !845)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!487, !4408, !4418}
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4410)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mt352_config", file: !4411, line: 24, size: 192, elements: !4412)
!4411 = !DIFile(filename: "drivers/media/dvb-frontends/mt352.h", directory: "/home/lizy2001/genbc/linux")
!4412 = !{!4413, !4414, !4415, !4416, !4417}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4410, file: !4411, line: 27, baseType: !425, size: 8)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "adc_clock", scope: !4410, file: !4411, line: 30, baseType: !402, size: 32, offset: 32)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "if2", scope: !4410, file: !4411, line: 31, baseType: !402, size: 32, offset: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "no_tuner", scope: !4410, file: !4411, line: 34, baseType: !402, size: 32, offset: 96)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "demod_init", scope: !4410, file: !4411, line: 37, baseType: !535, size: 64, offset: 128)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4420, line: 695, size: 7552, elements: !4421)
!4420 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4421 = !{!4422, !4423, !4424, !4461, !4462, !4476, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4493, !4494, !4495, !4496, !4528, !4539}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4419, file: !4420, line: 696, baseType: !389, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4419, file: !4420, line: 697, baseType: !7, size: 32, offset: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4419, file: !4420, line: 698, baseType: !4425, size: 64, offset: 128)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4427)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4420, line: 519, size: 320, elements: !4428)
!4428 = !{!4429, !4442, !4443, !4456, !4457}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4427, file: !4420, line: 529, baseType: !4430, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!402, !4418, !4433, !402}
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4435, line: 69, size: 128, elements: !4436)
!4435 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4436 = !{!4437, !4438, !4439, !4440}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4434, file: !4435, line: 70, baseType: !417, size: 16)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4434, file: !4435, line: 71, baseType: !417, size: 16, offset: 16)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4434, file: !4435, line: 84, baseType: !417, size: 16, offset: 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4434, file: !4435, line: 85, baseType: !4441, size: 64, offset: 64)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4427, file: !4420, line: 531, baseType: !4430, size: 64, offset: 64)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4427, file: !4420, line: 533, baseType: !4444, size: 64, offset: 128)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!402, !4418, !415, !419, !387, !425, !402, !4447}
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4435, line: 135, size: 272, elements: !4449)
!4449 = !{!4450, !4451, !4452}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4448, file: !4435, line: 136, baseType: !426, size: 8)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4448, file: !4435, line: 137, baseType: !417, size: 16)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4448, file: !4435, line: 138, baseType: !4453, size: 272)
!4453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 272, elements: !4454)
!4454 = !{!4455}
!4455 = !DISubrange(count: 34)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4427, file: !4420, line: 536, baseType: !4444, size: 64, offset: 192)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4427, file: !4420, line: 541, baseType: !4458, size: 64, offset: 256)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!515, !4418}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4419, file: !4420, line: 699, baseType: !376, size: 64, offset: 192)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4419, file: !4420, line: 702, baseType: !4463, size: 64, offset: 256)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4465)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4420, line: 557, size: 192, elements: !4466)
!4466 = !{!4467, !4471, !4475}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4465, file: !4420, line: 558, baseType: !4468, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{null, !4418, !7}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4465, file: !4420, line: 559, baseType: !4472, size: 64, offset: 64)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!402, !4418, !7}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4465, file: !4420, line: 560, baseType: !4468, size: 64, offset: 128)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4419, file: !4420, line: 703, baseType: !4477, size: 192, offset: 320)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4478, line: 30, size: 192, elements: !4479)
!4478 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4479 = !{!4480, !4481, !4482}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4477, file: !4478, line: 31, baseType: !1353)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4477, file: !4478, line: 32, baseType: !1325, size: 128)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4477, file: !4478, line: 33, baseType: !1705, size: 64, offset: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4419, file: !4420, line: 704, baseType: !4477, size: 192, offset: 512)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4419, file: !4420, line: 706, baseType: !402, size: 32, offset: 704)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4419, file: !4420, line: 707, baseType: !402, size: 32, offset: 736)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4419, file: !4420, line: 708, baseType: !815, size: 5568, offset: 768)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4419, file: !4420, line: 709, baseType: !711, size: 64, offset: 6336)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4419, file: !4420, line: 713, baseType: !402, size: 32, offset: 6400)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4419, file: !4420, line: 714, baseType: !4490, size: 384, offset: 6432)
!4490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 384, elements: !4491)
!4491 = !{!4492}
!4492 = !DISubrange(count: 48)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4419, file: !4420, line: 715, baseType: !1984, size: 192, offset: 6848)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4419, file: !4420, line: 717, baseType: !1662, size: 192, offset: 7040)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4419, file: !4420, line: 718, baseType: !803, size: 128, offset: 7232)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4419, file: !4420, line: 720, baseType: !4497, size: 64, offset: 7360)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4420, line: 618, size: 832, elements: !4499)
!4499 = !{!4500, !4504, !4505, !4509, !4510, !4511, !4512, !4516, !4517, !4520, !4521, !4524, !4527}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4498, file: !4420, line: 619, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!402, !4418}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4498, file: !4420, line: 621, baseType: !4501, size: 64, offset: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4498, file: !4420, line: 622, baseType: !4506, size: 64, offset: 128)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{null, !4418, !402}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4498, file: !4420, line: 623, baseType: !4501, size: 64, offset: 192)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4498, file: !4420, line: 624, baseType: !4506, size: 64, offset: 256)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4498, file: !4420, line: 625, baseType: !4501, size: 64, offset: 320)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4498, file: !4420, line: 627, baseType: !4513, size: 64, offset: 384)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{null, !4418}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4498, file: !4420, line: 628, baseType: !4513, size: 64, offset: 448)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4498, file: !4420, line: 631, baseType: !4518, size: 64, offset: 512)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4420, line: 631, flags: DIFlagFwdDecl)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4498, file: !4420, line: 632, baseType: !4518, size: 64, offset: 576)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4498, file: !4420, line: 633, baseType: !4522, size: 64, offset: 640)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4420, line: 633, flags: DIFlagFwdDecl)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4498, file: !4420, line: 634, baseType: !4525, size: 64, offset: 704)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4420, line: 634, flags: DIFlagFwdDecl)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4498, file: !4420, line: 635, baseType: !4525, size: 64, offset: 768)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4419, file: !4420, line: 721, baseType: !4529, size: 64, offset: 7424)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4531)
!4531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4420, line: 664, size: 192, elements: !4532)
!4532 = !{!4533, !4534, !4535, !4536, !4537, !4538}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4531, file: !4420, line: 665, baseType: !752, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4531, file: !4420, line: 666, baseType: !402, size: 32, offset: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4531, file: !4420, line: 667, baseType: !415, size: 16, offset: 96)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4531, file: !4420, line: 668, baseType: !415, size: 16, offset: 112)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4531, file: !4420, line: 669, baseType: !415, size: 16, offset: 128)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4531, file: !4420, line: 670, baseType: !415, size: 16, offset: 144)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4419, file: !4420, line: 723, baseType: !4080, size: 64, offset: 7488)
!4540 = !DILocalVariable(name: "config", arg: 1, scope: !4405, file: !3, line: 530, type: !4408)
!4541 = !DILocation(line: 530, column: 62, scope: !4405)
!4542 = !DILocalVariable(name: "i2c", arg: 2, scope: !4405, file: !3, line: 531, type: !4418)
!4543 = !DILocation(line: 531, column: 27, scope: !4405)
!4544 = !DILocalVariable(name: "state", scope: !4405, file: !3, line: 533, type: !4545)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mt352_state", file: !3, line: 30, size: 10496, elements: !4547)
!4547 = !{!4548, !4549, !4550}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4546, file: !3, line: 31, baseType: !4418, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4546, file: !3, line: 32, baseType: !488, size: 10240, offset: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4546, file: !3, line: 35, baseType: !4410, size: 192, offset: 10304)
!4551 = !DILocation(line: 533, column: 22, scope: !4405)
!4552 = !DILocation(line: 536, column: 10, scope: !4405)
!4553 = !DILocation(line: 536, column: 8, scope: !4405)
!4554 = !DILocation(line: 537, column: 6, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 537, column: 6)
!4556 = !DILocation(line: 537, column: 12, scope: !4555)
!4557 = !DILocation(line: 537, column: 6, scope: !4405)
!4558 = !DILocation(line: 537, column: 21, scope: !4555)
!4559 = !DILocation(line: 540, column: 15, scope: !4405)
!4560 = !DILocation(line: 540, column: 2, scope: !4405)
!4561 = !DILocation(line: 540, column: 9, scope: !4405)
!4562 = !DILocation(line: 540, column: 13, scope: !4405)
!4563 = !DILocation(line: 541, column: 10, scope: !4405)
!4564 = !DILocation(line: 541, column: 17, scope: !4405)
!4565 = !DILocation(line: 541, column: 2, scope: !4405)
!4566 = !DILocation(line: 541, column: 24, scope: !4405)
!4567 = !DILocation(line: 544, column: 26, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 544, column: 6)
!4569 = !DILocation(line: 544, column: 6, scope: !4568)
!4570 = !DILocation(line: 544, column: 42, scope: !4568)
!4571 = !DILocation(line: 544, column: 6, scope: !4405)
!4572 = !DILocation(line: 544, column: 55, scope: !4568)
!4573 = !DILocation(line: 547, column: 10, scope: !4405)
!4574 = !DILocation(line: 547, column: 17, scope: !4405)
!4575 = !DILocation(line: 547, column: 26, scope: !4405)
!4576 = !DILocation(line: 547, column: 2, scope: !4405)
!4577 = !DILocation(line: 548, column: 37, scope: !4405)
!4578 = !DILocation(line: 548, column: 2, scope: !4405)
!4579 = !DILocation(line: 548, column: 9, scope: !4405)
!4580 = !DILocation(line: 548, column: 18, scope: !4405)
!4581 = !DILocation(line: 548, column: 35, scope: !4405)
!4582 = !DILocation(line: 549, column: 10, scope: !4405)
!4583 = !DILocation(line: 549, column: 17, scope: !4405)
!4584 = !DILocation(line: 549, column: 2, scope: !4405)
!4585 = !DILabel(scope: !4405, name: "error", file: !3, line: 551)
!4586 = !DILocation(line: 551, column: 1, scope: !4405)
!4587 = !DILocation(line: 552, column: 8, scope: !4405)
!4588 = !DILocation(line: 552, column: 2, scope: !4405)
!4589 = !DILocation(line: 553, column: 2, scope: !4405)
!4590 = !DILocation(line: 554, column: 1, scope: !4405)
!4591 = distinct !DISubprogram(name: "kzalloc", scope: !367, file: !367, line: 662, type: !4592, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!376, !914, !374}
!4594 = !DILocalVariable(name: "s", arg: 1, scope: !4595, file: !367, line: 445, type: !1506)
!4595 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !367, file: !367, line: 445, type: !4596, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!376, !1506, !374, !914}
!4598 = !DILocation(line: 445, column: 72, scope: !4595, inlinedAt: !4599)
!4599 = distinct !DILocation(line: 552, column: 10, scope: !4600, inlinedAt: !4603)
!4600 = distinct !DILexicalBlock(scope: !4601, file: !367, line: 540, column: 34)
!4601 = distinct !DILexicalBlock(scope: !4602, file: !367, line: 540, column: 6)
!4602 = distinct !DISubprogram(name: "kmalloc", scope: !367, file: !367, line: 538, type: !4592, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!4603 = distinct !DILocation(line: 664, column: 9, scope: !4591)
!4604 = !DILocalVariable(name: "flags", arg: 2, scope: !4595, file: !367, line: 446, type: !374)
!4605 = !DILocation(line: 446, column: 9, scope: !4595, inlinedAt: !4599)
!4606 = !DILocalVariable(name: "size", arg: 3, scope: !4595, file: !367, line: 446, type: !914)
!4607 = !DILocation(line: 446, column: 23, scope: !4595, inlinedAt: !4599)
!4608 = !DILocalVariable(name: "ret", scope: !4595, file: !367, line: 448, type: !376)
!4609 = !DILocation(line: 448, column: 8, scope: !4595, inlinedAt: !4599)
!4610 = !DILocalVariable(name: "flags", arg: 1, scope: !4611, file: !367, line: 318, type: !374)
!4611 = distinct !DISubprogram(name: "kmalloc_type", scope: !367, file: !367, line: 318, type: !4612, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!366, !374}
!4614 = !DILocation(line: 318, column: 67, scope: !4611, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 553, column: 20, scope: !4600, inlinedAt: !4603)
!4616 = !DILocalVariable(name: "size", arg: 1, scope: !4617, file: !367, line: 346, type: !914)
!4617 = distinct !DISubprogram(name: "kmalloc_index", scope: !367, file: !367, line: 346, type: !4618, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!7, !914}
!4620 = !DILocation(line: 346, column: 58, scope: !4617, inlinedAt: !4621)
!4621 = distinct !DILocation(line: 547, column: 11, scope: !4600, inlinedAt: !4603)
!4622 = !DILocalVariable(name: "size", arg: 1, scope: !4623, file: !367, line: 472, type: !914)
!4623 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !367, file: !367, line: 472, type: !4624, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!376, !914, !374, !7}
!4626 = !DILocation(line: 472, column: 28, scope: !4623, inlinedAt: !4627)
!4627 = distinct !DILocation(line: 481, column: 9, scope: !4628, inlinedAt: !4629)
!4628 = distinct !DISubprogram(name: "kmalloc_large", scope: !367, file: !367, line: 478, type: !4592, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!4629 = distinct !DILocation(line: 545, column: 11, scope: !4630, inlinedAt: !4603)
!4630 = distinct !DILexicalBlock(scope: !4600, file: !367, line: 544, column: 7)
!4631 = !DILocalVariable(name: "flags", arg: 2, scope: !4623, file: !367, line: 472, type: !374)
!4632 = !DILocation(line: 472, column: 40, scope: !4623, inlinedAt: !4627)
!4633 = !DILocalVariable(name: "order", arg: 3, scope: !4623, file: !367, line: 472, type: !7)
!4634 = !DILocation(line: 472, column: 60, scope: !4623, inlinedAt: !4627)
!4635 = !DILocalVariable(name: "size", arg: 1, scope: !4628, file: !367, line: 478, type: !914)
!4636 = !DILocation(line: 478, column: 51, scope: !4628, inlinedAt: !4629)
!4637 = !DILocalVariable(name: "flags", arg: 2, scope: !4628, file: !367, line: 478, type: !374)
!4638 = !DILocation(line: 478, column: 63, scope: !4628, inlinedAt: !4629)
!4639 = !DILocalVariable(name: "order", scope: !4628, file: !367, line: 480, type: !7)
!4640 = !DILocation(line: 480, column: 15, scope: !4628, inlinedAt: !4629)
!4641 = !DILocalVariable(name: "size", arg: 1, scope: !4602, file: !367, line: 538, type: !914)
!4642 = !DILocation(line: 538, column: 45, scope: !4602, inlinedAt: !4603)
!4643 = !DILocalVariable(name: "flags", arg: 2, scope: !4602, file: !367, line: 538, type: !374)
!4644 = !DILocation(line: 538, column: 57, scope: !4602, inlinedAt: !4603)
!4645 = !DILocalVariable(name: "index", scope: !4600, file: !367, line: 542, type: !7)
!4646 = !DILocation(line: 542, column: 16, scope: !4600, inlinedAt: !4603)
!4647 = !DILocalVariable(name: "size", arg: 1, scope: !4591, file: !367, line: 662, type: !914)
!4648 = !DILocation(line: 662, column: 36, scope: !4591)
!4649 = !DILocalVariable(name: "flags", arg: 2, scope: !4591, file: !367, line: 662, type: !374)
!4650 = !DILocation(line: 662, column: 48, scope: !4591)
!4651 = !DILocation(line: 664, column: 17, scope: !4591)
!4652 = !DILocation(line: 664, column: 23, scope: !4591)
!4653 = !DILocation(line: 664, column: 29, scope: !4591)
!4654 = !DILocation(line: 540, column: 27, scope: !4601, inlinedAt: !4603)
!4655 = !DILocation(line: 540, column: 6, scope: !4601, inlinedAt: !4603)
!4656 = !DILocation(line: 540, column: 6, scope: !4602, inlinedAt: !4603)
!4657 = !DILocation(line: 544, column: 7, scope: !4630, inlinedAt: !4603)
!4658 = !DILocation(line: 544, column: 12, scope: !4630, inlinedAt: !4603)
!4659 = !DILocation(line: 544, column: 7, scope: !4600, inlinedAt: !4603)
!4660 = !DILocation(line: 545, column: 25, scope: !4630, inlinedAt: !4603)
!4661 = !DILocation(line: 545, column: 31, scope: !4630, inlinedAt: !4603)
!4662 = !DILocation(line: 480, column: 33, scope: !4628, inlinedAt: !4629)
!4663 = !DILocation(line: 480, column: 23, scope: !4628, inlinedAt: !4629)
!4664 = !DILocation(line: 481, column: 29, scope: !4628, inlinedAt: !4629)
!4665 = !DILocation(line: 481, column: 35, scope: !4628, inlinedAt: !4629)
!4666 = !DILocation(line: 481, column: 42, scope: !4628, inlinedAt: !4629)
!4667 = !DILocation(line: 474, column: 23, scope: !4623, inlinedAt: !4627)
!4668 = !DILocation(line: 474, column: 29, scope: !4623, inlinedAt: !4627)
!4669 = !DILocation(line: 474, column: 36, scope: !4623, inlinedAt: !4627)
!4670 = !DILocation(line: 474, column: 9, scope: !4623, inlinedAt: !4627)
!4671 = !DILocation(line: 545, column: 4, scope: !4630, inlinedAt: !4603)
!4672 = !DILocation(line: 547, column: 25, scope: !4600, inlinedAt: !4603)
!4673 = !DILocation(line: 348, column: 7, scope: !4674, inlinedAt: !4621)
!4674 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 348, column: 6)
!4675 = !DILocation(line: 348, column: 6, scope: !4617, inlinedAt: !4621)
!4676 = !DILocation(line: 349, column: 3, scope: !4674, inlinedAt: !4621)
!4677 = !DILocation(line: 351, column: 6, scope: !4678, inlinedAt: !4621)
!4678 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 351, column: 6)
!4679 = !DILocation(line: 351, column: 11, scope: !4678, inlinedAt: !4621)
!4680 = !DILocation(line: 351, column: 6, scope: !4617, inlinedAt: !4621)
!4681 = !DILocation(line: 352, column: 3, scope: !4678, inlinedAt: !4621)
!4682 = !DILocation(line: 354, column: 32, scope: !4683, inlinedAt: !4621)
!4683 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 354, column: 6)
!4684 = !DILocation(line: 354, column: 37, scope: !4683, inlinedAt: !4621)
!4685 = !DILocation(line: 354, column: 42, scope: !4683, inlinedAt: !4621)
!4686 = !DILocation(line: 354, column: 45, scope: !4683, inlinedAt: !4621)
!4687 = !DILocation(line: 354, column: 50, scope: !4683, inlinedAt: !4621)
!4688 = !DILocation(line: 354, column: 6, scope: !4617, inlinedAt: !4621)
!4689 = !DILocation(line: 355, column: 3, scope: !4683, inlinedAt: !4621)
!4690 = !DILocation(line: 356, column: 32, scope: !4691, inlinedAt: !4621)
!4691 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 356, column: 6)
!4692 = !DILocation(line: 356, column: 37, scope: !4691, inlinedAt: !4621)
!4693 = !DILocation(line: 356, column: 43, scope: !4691, inlinedAt: !4621)
!4694 = !DILocation(line: 356, column: 46, scope: !4691, inlinedAt: !4621)
!4695 = !DILocation(line: 356, column: 51, scope: !4691, inlinedAt: !4621)
!4696 = !DILocation(line: 356, column: 6, scope: !4617, inlinedAt: !4621)
!4697 = !DILocation(line: 357, column: 3, scope: !4691, inlinedAt: !4621)
!4698 = !DILocation(line: 358, column: 6, scope: !4699, inlinedAt: !4621)
!4699 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 358, column: 6)
!4700 = !DILocation(line: 358, column: 11, scope: !4699, inlinedAt: !4621)
!4701 = !DILocation(line: 358, column: 6, scope: !4617, inlinedAt: !4621)
!4702 = !DILocation(line: 358, column: 26, scope: !4699, inlinedAt: !4621)
!4703 = !DILocation(line: 359, column: 6, scope: !4704, inlinedAt: !4621)
!4704 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 359, column: 6)
!4705 = !DILocation(line: 359, column: 11, scope: !4704, inlinedAt: !4621)
!4706 = !DILocation(line: 359, column: 6, scope: !4617, inlinedAt: !4621)
!4707 = !DILocation(line: 359, column: 26, scope: !4704, inlinedAt: !4621)
!4708 = !DILocation(line: 360, column: 6, scope: !4709, inlinedAt: !4621)
!4709 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 360, column: 6)
!4710 = !DILocation(line: 360, column: 11, scope: !4709, inlinedAt: !4621)
!4711 = !DILocation(line: 360, column: 6, scope: !4617, inlinedAt: !4621)
!4712 = !DILocation(line: 360, column: 26, scope: !4709, inlinedAt: !4621)
!4713 = !DILocation(line: 361, column: 6, scope: !4714, inlinedAt: !4621)
!4714 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 361, column: 6)
!4715 = !DILocation(line: 361, column: 11, scope: !4714, inlinedAt: !4621)
!4716 = !DILocation(line: 361, column: 6, scope: !4617, inlinedAt: !4621)
!4717 = !DILocation(line: 361, column: 26, scope: !4714, inlinedAt: !4621)
!4718 = !DILocation(line: 362, column: 6, scope: !4719, inlinedAt: !4621)
!4719 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 362, column: 6)
!4720 = !DILocation(line: 362, column: 11, scope: !4719, inlinedAt: !4621)
!4721 = !DILocation(line: 362, column: 6, scope: !4617, inlinedAt: !4621)
!4722 = !DILocation(line: 362, column: 26, scope: !4719, inlinedAt: !4621)
!4723 = !DILocation(line: 363, column: 6, scope: !4724, inlinedAt: !4621)
!4724 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 363, column: 6)
!4725 = !DILocation(line: 363, column: 11, scope: !4724, inlinedAt: !4621)
!4726 = !DILocation(line: 363, column: 6, scope: !4617, inlinedAt: !4621)
!4727 = !DILocation(line: 363, column: 26, scope: !4724, inlinedAt: !4621)
!4728 = !DILocation(line: 364, column: 6, scope: !4729, inlinedAt: !4621)
!4729 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 364, column: 6)
!4730 = !DILocation(line: 364, column: 11, scope: !4729, inlinedAt: !4621)
!4731 = !DILocation(line: 364, column: 6, scope: !4617, inlinedAt: !4621)
!4732 = !DILocation(line: 364, column: 26, scope: !4729, inlinedAt: !4621)
!4733 = !DILocation(line: 365, column: 6, scope: !4734, inlinedAt: !4621)
!4734 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 365, column: 6)
!4735 = !DILocation(line: 365, column: 11, scope: !4734, inlinedAt: !4621)
!4736 = !DILocation(line: 365, column: 6, scope: !4617, inlinedAt: !4621)
!4737 = !DILocation(line: 365, column: 26, scope: !4734, inlinedAt: !4621)
!4738 = !DILocation(line: 366, column: 6, scope: !4739, inlinedAt: !4621)
!4739 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 366, column: 6)
!4740 = !DILocation(line: 366, column: 11, scope: !4739, inlinedAt: !4621)
!4741 = !DILocation(line: 366, column: 6, scope: !4617, inlinedAt: !4621)
!4742 = !DILocation(line: 366, column: 26, scope: !4739, inlinedAt: !4621)
!4743 = !DILocation(line: 367, column: 6, scope: !4744, inlinedAt: !4621)
!4744 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 367, column: 6)
!4745 = !DILocation(line: 367, column: 11, scope: !4744, inlinedAt: !4621)
!4746 = !DILocation(line: 367, column: 6, scope: !4617, inlinedAt: !4621)
!4747 = !DILocation(line: 367, column: 26, scope: !4744, inlinedAt: !4621)
!4748 = !DILocation(line: 368, column: 6, scope: !4749, inlinedAt: !4621)
!4749 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 368, column: 6)
!4750 = !DILocation(line: 368, column: 11, scope: !4749, inlinedAt: !4621)
!4751 = !DILocation(line: 368, column: 6, scope: !4617, inlinedAt: !4621)
!4752 = !DILocation(line: 368, column: 26, scope: !4749, inlinedAt: !4621)
!4753 = !DILocation(line: 369, column: 6, scope: !4754, inlinedAt: !4621)
!4754 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 369, column: 6)
!4755 = !DILocation(line: 369, column: 11, scope: !4754, inlinedAt: !4621)
!4756 = !DILocation(line: 369, column: 6, scope: !4617, inlinedAt: !4621)
!4757 = !DILocation(line: 369, column: 26, scope: !4754, inlinedAt: !4621)
!4758 = !DILocation(line: 370, column: 6, scope: !4759, inlinedAt: !4621)
!4759 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 370, column: 6)
!4760 = !DILocation(line: 370, column: 11, scope: !4759, inlinedAt: !4621)
!4761 = !DILocation(line: 370, column: 6, scope: !4617, inlinedAt: !4621)
!4762 = !DILocation(line: 370, column: 26, scope: !4759, inlinedAt: !4621)
!4763 = !DILocation(line: 371, column: 6, scope: !4764, inlinedAt: !4621)
!4764 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 371, column: 6)
!4765 = !DILocation(line: 371, column: 11, scope: !4764, inlinedAt: !4621)
!4766 = !DILocation(line: 371, column: 6, scope: !4617, inlinedAt: !4621)
!4767 = !DILocation(line: 371, column: 26, scope: !4764, inlinedAt: !4621)
!4768 = !DILocation(line: 372, column: 6, scope: !4769, inlinedAt: !4621)
!4769 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 372, column: 6)
!4770 = !DILocation(line: 372, column: 11, scope: !4769, inlinedAt: !4621)
!4771 = !DILocation(line: 372, column: 6, scope: !4617, inlinedAt: !4621)
!4772 = !DILocation(line: 372, column: 26, scope: !4769, inlinedAt: !4621)
!4773 = !DILocation(line: 373, column: 6, scope: !4774, inlinedAt: !4621)
!4774 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 373, column: 6)
!4775 = !DILocation(line: 373, column: 11, scope: !4774, inlinedAt: !4621)
!4776 = !DILocation(line: 373, column: 6, scope: !4617, inlinedAt: !4621)
!4777 = !DILocation(line: 373, column: 26, scope: !4774, inlinedAt: !4621)
!4778 = !DILocation(line: 374, column: 6, scope: !4779, inlinedAt: !4621)
!4779 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 374, column: 6)
!4780 = !DILocation(line: 374, column: 11, scope: !4779, inlinedAt: !4621)
!4781 = !DILocation(line: 374, column: 6, scope: !4617, inlinedAt: !4621)
!4782 = !DILocation(line: 374, column: 26, scope: !4779, inlinedAt: !4621)
!4783 = !DILocation(line: 375, column: 6, scope: !4784, inlinedAt: !4621)
!4784 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 375, column: 6)
!4785 = !DILocation(line: 375, column: 11, scope: !4784, inlinedAt: !4621)
!4786 = !DILocation(line: 375, column: 6, scope: !4617, inlinedAt: !4621)
!4787 = !DILocation(line: 375, column: 27, scope: !4784, inlinedAt: !4621)
!4788 = !DILocation(line: 376, column: 6, scope: !4789, inlinedAt: !4621)
!4789 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 376, column: 6)
!4790 = !DILocation(line: 376, column: 11, scope: !4789, inlinedAt: !4621)
!4791 = !DILocation(line: 376, column: 6, scope: !4617, inlinedAt: !4621)
!4792 = !DILocation(line: 376, column: 32, scope: !4789, inlinedAt: !4621)
!4793 = !DILocation(line: 377, column: 6, scope: !4794, inlinedAt: !4621)
!4794 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 377, column: 6)
!4795 = !DILocation(line: 377, column: 11, scope: !4794, inlinedAt: !4621)
!4796 = !DILocation(line: 377, column: 6, scope: !4617, inlinedAt: !4621)
!4797 = !DILocation(line: 377, column: 32, scope: !4794, inlinedAt: !4621)
!4798 = !DILocation(line: 378, column: 6, scope: !4799, inlinedAt: !4621)
!4799 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 378, column: 6)
!4800 = !DILocation(line: 378, column: 11, scope: !4799, inlinedAt: !4621)
!4801 = !DILocation(line: 378, column: 6, scope: !4617, inlinedAt: !4621)
!4802 = !DILocation(line: 378, column: 32, scope: !4799, inlinedAt: !4621)
!4803 = !DILocation(line: 379, column: 6, scope: !4804, inlinedAt: !4621)
!4804 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 379, column: 6)
!4805 = !DILocation(line: 379, column: 11, scope: !4804, inlinedAt: !4621)
!4806 = !DILocation(line: 379, column: 6, scope: !4617, inlinedAt: !4621)
!4807 = !DILocation(line: 379, column: 33, scope: !4804, inlinedAt: !4621)
!4808 = !DILocation(line: 380, column: 6, scope: !4809, inlinedAt: !4621)
!4809 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 380, column: 6)
!4810 = !DILocation(line: 380, column: 11, scope: !4809, inlinedAt: !4621)
!4811 = !DILocation(line: 380, column: 6, scope: !4617, inlinedAt: !4621)
!4812 = !DILocation(line: 380, column: 33, scope: !4809, inlinedAt: !4621)
!4813 = !DILocation(line: 381, column: 6, scope: !4814, inlinedAt: !4621)
!4814 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 381, column: 6)
!4815 = !DILocation(line: 381, column: 11, scope: !4814, inlinedAt: !4621)
!4816 = !DILocation(line: 381, column: 6, scope: !4617, inlinedAt: !4621)
!4817 = !DILocation(line: 381, column: 33, scope: !4814, inlinedAt: !4621)
!4818 = !DILocation(line: 382, column: 2, scope: !4819, inlinedAt: !4621)
!4819 = distinct !DILexicalBlock(scope: !4820, file: !367, line: 382, column: 2)
!4820 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 382, column: 2)
!4821 = !{i32 -2144229558, i32 -2144229529, i32 -2144229483, i32 -2144229425, i32 -2144229371, i32 -2144229317, i32 -2144229262, i32 -2144229231}
!4822 = !DILocation(line: 382, column: 2, scope: !4823, inlinedAt: !4621)
!4823 = distinct !DILexicalBlock(scope: !4824, file: !367, line: 382, column: 2)
!4824 = distinct !DILexicalBlock(scope: !4820, file: !367, line: 382, column: 2)
!4825 = !{i32 -2144228788, i32 -2144228781, i32 -2144228727, i32 -2144228696, i32 -2144228666}
!4826 = !DILocation(line: 382, column: 2, scope: !4824, inlinedAt: !4621)
!4827 = !DILocation(line: 386, column: 1, scope: !4617, inlinedAt: !4621)
!4828 = !DILocation(line: 547, column: 9, scope: !4600, inlinedAt: !4603)
!4829 = !DILocation(line: 549, column: 8, scope: !4830, inlinedAt: !4603)
!4830 = distinct !DILexicalBlock(scope: !4600, file: !367, line: 549, column: 7)
!4831 = !DILocation(line: 549, column: 7, scope: !4600, inlinedAt: !4603)
!4832 = !DILocation(line: 550, column: 4, scope: !4830, inlinedAt: !4603)
!4833 = !DILocation(line: 553, column: 33, scope: !4600, inlinedAt: !4603)
!4834 = !DILocation(line: 325, column: 6, scope: !4835, inlinedAt: !4615)
!4835 = distinct !DILexicalBlock(scope: !4611, file: !367, line: 325, column: 6)
!4836 = !DILocation(line: 325, column: 6, scope: !4611, inlinedAt: !4615)
!4837 = !DILocation(line: 326, column: 3, scope: !4835, inlinedAt: !4615)
!4838 = !DILocation(line: 332, column: 9, scope: !4611, inlinedAt: !4615)
!4839 = !DILocation(line: 332, column: 15, scope: !4611, inlinedAt: !4615)
!4840 = !DILocation(line: 332, column: 2, scope: !4611, inlinedAt: !4615)
!4841 = !DILocation(line: 336, column: 1, scope: !4611, inlinedAt: !4615)
!4842 = !DILocation(line: 553, column: 5, scope: !4600, inlinedAt: !4603)
!4843 = !DILocation(line: 553, column: 41, scope: !4600, inlinedAt: !4603)
!4844 = !DILocation(line: 554, column: 5, scope: !4600, inlinedAt: !4603)
!4845 = !DILocation(line: 554, column: 12, scope: !4600, inlinedAt: !4603)
!4846 = !DILocation(line: 448, column: 31, scope: !4595, inlinedAt: !4599)
!4847 = !DILocation(line: 448, column: 34, scope: !4595, inlinedAt: !4599)
!4848 = !DILocation(line: 448, column: 14, scope: !4595, inlinedAt: !4599)
!4849 = !DILocation(line: 450, column: 22, scope: !4595, inlinedAt: !4599)
!4850 = !DILocation(line: 450, column: 25, scope: !4595, inlinedAt: !4599)
!4851 = !DILocation(line: 450, column: 30, scope: !4595, inlinedAt: !4599)
!4852 = !DILocation(line: 450, column: 36, scope: !4595, inlinedAt: !4599)
!4853 = !DILocation(line: 450, column: 8, scope: !4595, inlinedAt: !4599)
!4854 = !DILocation(line: 450, column: 6, scope: !4595, inlinedAt: !4599)
!4855 = !DILocation(line: 451, column: 9, scope: !4595, inlinedAt: !4599)
!4856 = !DILocation(line: 552, column: 3, scope: !4600, inlinedAt: !4603)
!4857 = !DILocation(line: 557, column: 19, scope: !4602, inlinedAt: !4603)
!4858 = !DILocation(line: 557, column: 25, scope: !4602, inlinedAt: !4603)
!4859 = !DILocation(line: 557, column: 9, scope: !4602, inlinedAt: !4603)
!4860 = !DILocation(line: 557, column: 2, scope: !4602, inlinedAt: !4603)
!4861 = !DILocation(line: 558, column: 1, scope: !4602, inlinedAt: !4603)
!4862 = !DILocation(line: 664, column: 2, scope: !4591)
!4863 = distinct !DISubprogram(name: "mt352_read_register", scope: !3, file: !3, line: 68, type: !4864, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!402, !4545, !425}
!4866 = !DILocalVariable(name: "state", arg: 1, scope: !4863, file: !3, line: 68, type: !4545)
!4867 = !DILocation(line: 68, column: 52, scope: !4863)
!4868 = !DILocalVariable(name: "reg", arg: 2, scope: !4863, file: !3, line: 68, type: !425)
!4869 = !DILocation(line: 68, column: 62, scope: !4863)
!4870 = !DILocalVariable(name: "ret", scope: !4863, file: !3, line: 70, type: !402)
!4871 = !DILocation(line: 70, column: 6, scope: !4863)
!4872 = !DILocalVariable(name: "b0", scope: !4863, file: !3, line: 71, type: !4873)
!4873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 8, elements: !1851)
!4874 = !DILocation(line: 71, column: 5, scope: !4863)
!4875 = !DILocation(line: 71, column: 13, scope: !4863)
!4876 = !DILocation(line: 71, column: 15, scope: !4863)
!4877 = !DILocalVariable(name: "b1", scope: !4863, file: !3, line: 72, type: !4873)
!4878 = !DILocation(line: 72, column: 5, scope: !4863)
!4879 = !DILocalVariable(name: "msg", scope: !4863, file: !3, line: 73, type: !4880)
!4880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4434, size: 256, elements: !2051)
!4881 = !DILocation(line: 73, column: 17, scope: !4863)
!4882 = !DILocation(line: 73, column: 26, scope: !4863)
!4883 = !DILocation(line: 73, column: 28, scope: !4863)
!4884 = !DILocation(line: 73, column: 38, scope: !4863)
!4885 = !DILocation(line: 73, column: 45, scope: !4863)
!4886 = !DILocation(line: 73, column: 52, scope: !4863)
!4887 = !DILocation(line: 75, column: 16, scope: !4863)
!4888 = !DILocation(line: 76, column: 7, scope: !4863)
!4889 = !DILocation(line: 76, column: 17, scope: !4863)
!4890 = !DILocation(line: 76, column: 24, scope: !4863)
!4891 = !DILocation(line: 76, column: 31, scope: !4863)
!4892 = !DILocation(line: 78, column: 16, scope: !4863)
!4893 = !DILocation(line: 80, column: 21, scope: !4863)
!4894 = !DILocation(line: 80, column: 28, scope: !4863)
!4895 = !DILocation(line: 80, column: 33, scope: !4863)
!4896 = !DILocation(line: 80, column: 8, scope: !4863)
!4897 = !DILocation(line: 80, column: 6, scope: !4863)
!4898 = !DILocation(line: 82, column: 6, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 82, column: 6)
!4900 = !DILocation(line: 82, column: 10, scope: !4899)
!4901 = !DILocation(line: 82, column: 6, scope: !4863)
!4902 = !DILocation(line: 84, column: 20, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 82, column: 16)
!4904 = !DILocation(line: 84, column: 25, scope: !4903)
!4905 = !DILocation(line: 83, column: 3, scope: !4903)
!4906 = !DILocation(line: 85, column: 10, scope: !4903)
!4907 = !DILocation(line: 85, column: 3, scope: !4903)
!4908 = !DILocation(line: 88, column: 9, scope: !4863)
!4909 = !DILocation(line: 88, column: 2, scope: !4863)
!4910 = !DILocation(line: 89, column: 1, scope: !4863)
!4911 = distinct !DISubprogram(name: "get_order", scope: !4912, file: !4912, line: 29, type: !4913, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!4912 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!402, !711}
!4915 = !DILocalVariable(name: "x", arg: 1, scope: !4916, file: !4917, line: 366, type: !636)
!4916 = distinct !DISubprogram(name: "fls64", scope: !4917, file: !4917, line: 366, type: !4918, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!4917 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4918 = !DISubroutineType(types: !4919)
!4919 = !{!402, !636}
!4920 = !DILocation(line: 366, column: 40, scope: !4916, inlinedAt: !4921)
!4921 = distinct !DILocation(line: 46, column: 9, scope: !4911)
!4922 = !DILocalVariable(name: "bitpos", scope: !4916, file: !4917, line: 368, type: !402)
!4923 = !DILocation(line: 368, column: 6, scope: !4916, inlinedAt: !4921)
!4924 = !DILocalVariable(name: "size", arg: 1, scope: !4911, file: !4912, line: 29, type: !711)
!4925 = !DILocation(line: 29, column: 63, scope: !4911)
!4926 = !DILocation(line: 31, column: 27, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4911, file: !4912, line: 31, column: 6)
!4928 = !DILocation(line: 31, column: 6, scope: !4927)
!4929 = !DILocation(line: 31, column: 6, scope: !4911)
!4930 = !DILocation(line: 32, column: 8, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4932, file: !4912, line: 32, column: 7)
!4932 = distinct !DILexicalBlock(scope: !4927, file: !4912, line: 31, column: 34)
!4933 = !DILocation(line: 32, column: 7, scope: !4932)
!4934 = !DILocation(line: 33, column: 4, scope: !4931)
!4935 = !DILocation(line: 35, column: 7, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4932, file: !4912, line: 35, column: 7)
!4937 = !DILocation(line: 35, column: 12, scope: !4936)
!4938 = !DILocation(line: 35, column: 7, scope: !4932)
!4939 = !DILocation(line: 36, column: 4, scope: !4936)
!4940 = !DILocation(line: 38, column: 10, scope: !4932)
!4941 = !DILocation(line: 38, column: 28, scope: !4932)
!4942 = !DILocation(line: 38, column: 41, scope: !4932)
!4943 = !DILocation(line: 38, column: 3, scope: !4932)
!4944 = !DILocation(line: 41, column: 6, scope: !4911)
!4945 = !DILocation(line: 42, column: 7, scope: !4911)
!4946 = !DILocation(line: 46, column: 15, scope: !4911)
!4947 = !DILocation(line: 374, column: 2, scope: !4916, inlinedAt: !4921)
!4948 = !DILocation(line: 376, column: 14, scope: !4916, inlinedAt: !4921)
!4949 = !{i32 252658}
!4950 = !DILocation(line: 377, column: 9, scope: !4916, inlinedAt: !4921)
!4951 = !DILocation(line: 377, column: 16, scope: !4916, inlinedAt: !4921)
!4952 = !DILocation(line: 46, column: 2, scope: !4911)
!4953 = !DILocation(line: 48, column: 1, scope: !4911)
!4954 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4955, file: !4955, line: 30, type: !4956, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!4955 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!402, !752}
!4958 = !DILocation(line: 366, column: 40, scope: !4916, inlinedAt: !4959)
!4959 = distinct !DILocation(line: 32, column: 9, scope: !4954)
!4960 = !DILocation(line: 368, column: 6, scope: !4916, inlinedAt: !4959)
!4961 = !DILocalVariable(name: "n", arg: 1, scope: !4954, file: !4955, line: 30, type: !752)
!4962 = !DILocation(line: 30, column: 21, scope: !4954)
!4963 = !DILocation(line: 32, column: 15, scope: !4954)
!4964 = !DILocation(line: 374, column: 2, scope: !4916, inlinedAt: !4959)
!4965 = !DILocation(line: 376, column: 14, scope: !4916, inlinedAt: !4959)
!4966 = !DILocation(line: 377, column: 9, scope: !4916, inlinedAt: !4959)
!4967 = !DILocation(line: 377, column: 16, scope: !4916, inlinedAt: !4959)
!4968 = !DILocation(line: 32, column: 18, scope: !4954)
!4969 = !DILocation(line: 32, column: 2, scope: !4954)
!4970 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4971, file: !4971, line: 137, type: !4972, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!4971 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!376, !1506, !2609, !914, !374}
!4974 = !DILocalVariable(name: "s", arg: 1, scope: !4970, file: !4971, line: 137, type: !1506)
!4975 = !DILocation(line: 137, column: 54, scope: !4970)
!4976 = !DILocalVariable(name: "object", arg: 2, scope: !4970, file: !4971, line: 137, type: !2609)
!4977 = !DILocation(line: 137, column: 69, scope: !4970)
!4978 = !DILocalVariable(name: "size", arg: 3, scope: !4970, file: !4971, line: 138, type: !914)
!4979 = !DILocation(line: 138, column: 12, scope: !4970)
!4980 = !DILocalVariable(name: "flags", arg: 4, scope: !4970, file: !4971, line: 138, type: !374)
!4981 = !DILocation(line: 138, column: 24, scope: !4970)
!4982 = !DILocation(line: 140, column: 17, scope: !4970)
!4983 = !DILocation(line: 140, column: 2, scope: !4970)
!4984 = distinct !DISubprogram(name: "mt352_release", scope: !3, file: !3, line: 522, type: !530, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!4985 = !DILocalVariable(name: "fe", arg: 1, scope: !4984, file: !3, line: 522, type: !487)
!4986 = !DILocation(line: 522, column: 48, scope: !4984)
!4987 = !DILocalVariable(name: "state", scope: !4984, file: !3, line: 524, type: !4545)
!4988 = !DILocation(line: 524, column: 22, scope: !4984)
!4989 = !DILocation(line: 524, column: 30, scope: !4984)
!4990 = !DILocation(line: 524, column: 34, scope: !4984)
!4991 = !DILocation(line: 525, column: 8, scope: !4984)
!4992 = !DILocation(line: 525, column: 2, scope: !4984)
!4993 = !DILocation(line: 526, column: 1, scope: !4984)
!4994 = !DILocalVariable(name: "fe", arg: 1, scope: !484, file: !3, line: 503, type: !487)
!4995 = !DILocation(line: 503, column: 44, scope: !484)
!4996 = !DILocalVariable(name: "state", scope: !484, file: !3, line: 505, type: !4545)
!4997 = !DILocation(line: 505, column: 22, scope: !484)
!4998 = !DILocation(line: 505, column: 30, scope: !484)
!4999 = !DILocation(line: 505, column: 34, scope: !484)
!5000 = !DILocation(line: 509, column: 2, scope: !484)
!5001 = !DILocation(line: 509, column: 2, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !5003, file: !3, line: 509, column: 2)
!5003 = distinct !DILexicalBlock(scope: !484, file: !3, line: 509, column: 2)
!5004 = !DILocation(line: 509, column: 2, scope: !5003)
!5005 = !DILocation(line: 511, column: 27, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !484, file: !3, line: 511, column: 6)
!5007 = !DILocation(line: 511, column: 7, scope: !5006)
!5008 = !DILocation(line: 511, column: 45, scope: !5006)
!5009 = !DILocation(line: 511, column: 53, scope: !5006)
!5010 = !DILocation(line: 511, column: 58, scope: !5006)
!5011 = !DILocation(line: 512, column: 27, scope: !5006)
!5012 = !DILocation(line: 512, column: 7, scope: !5006)
!5013 = !DILocation(line: 512, column: 42, scope: !5006)
!5014 = !DILocation(line: 512, column: 50, scope: !5006)
!5015 = !DILocation(line: 511, column: 6, scope: !484)
!5016 = !DILocation(line: 515, column: 16, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 512, column: 56)
!5018 = !DILocation(line: 515, column: 3, scope: !5017)
!5019 = !DILocation(line: 516, column: 10, scope: !5017)
!5020 = !DILocation(line: 516, column: 17, scope: !5017)
!5021 = !DILocation(line: 516, column: 24, scope: !5017)
!5022 = !DILocation(line: 516, column: 35, scope: !5017)
!5023 = !DILocation(line: 516, column: 3, scope: !5017)
!5024 = !DILocation(line: 519, column: 2, scope: !484)
!5025 = !DILocation(line: 520, column: 1, scope: !484)
!5026 = !DILocalVariable(name: "fe", arg: 1, scope: !4384, file: !3, line: 91, type: !487)
!5027 = !DILocation(line: 91, column: 45, scope: !4384)
!5028 = !DILocation(line: 95, column: 15, scope: !4384)
!5029 = !DILocation(line: 95, column: 2, scope: !4384)
!5030 = !DILocation(line: 96, column: 2, scope: !4384)
!5031 = distinct !DISubprogram(name: "_mt352_write", scope: !3, file: !3, line: 58, type: !539, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!5032 = !DILocalVariable(name: "fe", arg: 1, scope: !5031, file: !3, line: 58, type: !487)
!5033 = !DILocation(line: 58, column: 46, scope: !5031)
!5034 = !DILocalVariable(name: "ibuf", arg: 2, scope: !5031, file: !3, line: 58, type: !541)
!5035 = !DILocation(line: 58, column: 59, scope: !5031)
!5036 = !DILocalVariable(name: "ilen", arg: 3, scope: !5031, file: !3, line: 58, type: !402)
!5037 = !DILocation(line: 58, column: 71, scope: !5031)
!5038 = !DILocalVariable(name: "err", scope: !5031, file: !3, line: 60, type: !402)
!5039 = !DILocation(line: 60, column: 6, scope: !5031)
!5040 = !DILocalVariable(name: "i", scope: !5031, file: !3, line: 60, type: !402)
!5041 = !DILocation(line: 60, column: 10, scope: !5031)
!5042 = !DILocation(line: 61, column: 8, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 61, column: 2)
!5044 = !DILocation(line: 61, column: 7, scope: !5043)
!5045 = !DILocation(line: 61, column: 12, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5043, file: !3, line: 61, column: 2)
!5047 = !DILocation(line: 61, column: 16, scope: !5046)
!5048 = !DILocation(line: 61, column: 20, scope: !5046)
!5049 = !DILocation(line: 61, column: 14, scope: !5046)
!5050 = !DILocation(line: 61, column: 2, scope: !5043)
!5051 = !DILocation(line: 62, column: 33, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5046, file: !3, line: 62, column: 7)
!5053 = !DILocation(line: 62, column: 36, scope: !5052)
!5054 = !DILocation(line: 62, column: 44, scope: !5052)
!5055 = !DILocation(line: 62, column: 43, scope: !5052)
!5056 = !DILocation(line: 62, column: 46, scope: !5052)
!5057 = !DILocation(line: 62, column: 51, scope: !5052)
!5058 = !DILocation(line: 62, column: 52, scope: !5052)
!5059 = !DILocation(line: 62, column: 14, scope: !5052)
!5060 = !DILocation(line: 62, column: 12, scope: !5052)
!5061 = !DILocation(line: 62, column: 7, scope: !5046)
!5062 = !DILocation(line: 63, column: 11, scope: !5052)
!5063 = !DILocation(line: 63, column: 4, scope: !5052)
!5064 = !DILocation(line: 62, column: 56, scope: !5052)
!5065 = !DILocation(line: 61, column: 25, scope: !5046)
!5066 = !DILocation(line: 61, column: 2, scope: !5046)
!5067 = distinct !{!5067, !5050, !5068}
!5068 = !DILocation(line: 63, column: 11, scope: !5043)
!5069 = !DILocation(line: 65, column: 2, scope: !5031)
!5070 = !DILocation(line: 66, column: 1, scope: !5031)
!5071 = !DILocalVariable(name: "fe", arg: 1, scope: !4388, file: !3, line: 155, type: !487)
!5072 = !DILocation(line: 155, column: 54, scope: !4388)
!5073 = !DILocalVariable(name: "op", scope: !4388, file: !3, line: 157, type: !569)
!5074 = !DILocation(line: 157, column: 34, scope: !4388)
!5075 = !DILocation(line: 157, column: 40, scope: !4388)
!5076 = !DILocation(line: 157, column: 44, scope: !4388)
!5077 = !DILocalVariable(name: "state", scope: !4388, file: !3, line: 158, type: !4545)
!5078 = !DILocation(line: 158, column: 22, scope: !4388)
!5079 = !DILocation(line: 158, column: 30, scope: !4388)
!5080 = !DILocation(line: 158, column: 34, scope: !4388)
!5081 = !DILocalVariable(name: "buf", scope: !4388, file: !3, line: 159, type: !5082)
!5082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 104, elements: !5083)
!5083 = !{!5084}
!5084 = !DISubrange(count: 13)
!5085 = !DILocation(line: 159, column: 16, scope: !4388)
!5086 = !DILocalVariable(name: "tps", scope: !4388, file: !3, line: 162, type: !7)
!5087 = !DILocation(line: 162, column: 15, scope: !4388)
!5088 = !DILocation(line: 164, column: 10, scope: !4388)
!5089 = !DILocation(line: 164, column: 14, scope: !4388)
!5090 = !DILocation(line: 164, column: 2, scope: !4388)
!5091 = !DILocation(line: 166, column: 8, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 164, column: 28)
!5093 = !DILocation(line: 167, column: 4, scope: !5092)
!5094 = !DILocation(line: 169, column: 8, scope: !5092)
!5095 = !DILocation(line: 170, column: 4, scope: !5092)
!5096 = !DILocation(line: 172, column: 8, scope: !5092)
!5097 = !DILocation(line: 173, column: 4, scope: !5092)
!5098 = !DILocation(line: 175, column: 8, scope: !5092)
!5099 = !DILocation(line: 176, column: 4, scope: !5092)
!5100 = !DILocation(line: 179, column: 4, scope: !5092)
!5101 = !DILocation(line: 181, column: 4, scope: !5092)
!5102 = !DILocation(line: 184, column: 10, scope: !4388)
!5103 = !DILocation(line: 184, column: 14, scope: !4388)
!5104 = !DILocation(line: 184, column: 2, scope: !4388)
!5105 = !DILocation(line: 186, column: 8, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 184, column: 28)
!5107 = !DILocation(line: 187, column: 4, scope: !5106)
!5108 = !DILocation(line: 189, column: 8, scope: !5106)
!5109 = !DILocation(line: 190, column: 4, scope: !5106)
!5110 = !DILocation(line: 192, column: 8, scope: !5106)
!5111 = !DILocation(line: 193, column: 4, scope: !5106)
!5112 = !DILocation(line: 195, column: 8, scope: !5106)
!5113 = !DILocation(line: 196, column: 4, scope: !5106)
!5114 = !DILocation(line: 199, column: 4, scope: !5106)
!5115 = !DILocation(line: 201, column: 8, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 201, column: 8)
!5117 = !DILocation(line: 201, column: 12, scope: !5116)
!5118 = !DILocation(line: 201, column: 22, scope: !5116)
!5119 = !DILocation(line: 201, column: 40, scope: !5116)
!5120 = !DILocation(line: 202, column: 8, scope: !5116)
!5121 = !DILocation(line: 202, column: 12, scope: !5116)
!5122 = !DILocation(line: 202, column: 22, scope: !5116)
!5123 = !DILocation(line: 201, column: 8, scope: !5106)
!5124 = !DILocation(line: 203, column: 5, scope: !5116)
!5125 = !DILocation(line: 202, column: 25, scope: !5116)
!5126 = !DILocation(line: 206, column: 4, scope: !5106)
!5127 = !DILocation(line: 209, column: 10, scope: !4388)
!5128 = !DILocation(line: 209, column: 14, scope: !4388)
!5129 = !DILocation(line: 209, column: 2, scope: !4388)
!5130 = !DILocation(line: 211, column: 4, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 209, column: 26)
!5132 = !DILocation(line: 214, column: 8, scope: !5131)
!5133 = !DILocation(line: 215, column: 4, scope: !5131)
!5134 = !DILocation(line: 217, column: 8, scope: !5131)
!5135 = !DILocation(line: 218, column: 4, scope: !5131)
!5136 = !DILocation(line: 220, column: 4, scope: !5131)
!5137 = !DILocation(line: 223, column: 10, scope: !4388)
!5138 = !DILocation(line: 223, column: 14, scope: !4388)
!5139 = !DILocation(line: 223, column: 2, scope: !4388)
!5140 = !DILocation(line: 226, column: 4, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 223, column: 33)
!5142 = !DILocation(line: 228, column: 8, scope: !5141)
!5143 = !DILocation(line: 229, column: 4, scope: !5141)
!5144 = !DILocation(line: 231, column: 4, scope: !5141)
!5145 = !DILocation(line: 234, column: 10, scope: !4388)
!5146 = !DILocation(line: 234, column: 14, scope: !4388)
!5147 = !DILocation(line: 234, column: 2, scope: !4388)
!5148 = !DILocation(line: 237, column: 4, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 234, column: 30)
!5150 = !DILocation(line: 239, column: 8, scope: !5149)
!5151 = !DILocation(line: 240, column: 4, scope: !5149)
!5152 = !DILocation(line: 242, column: 8, scope: !5149)
!5153 = !DILocation(line: 243, column: 4, scope: !5149)
!5154 = !DILocation(line: 245, column: 8, scope: !5149)
!5155 = !DILocation(line: 246, column: 4, scope: !5149)
!5156 = !DILocation(line: 248, column: 4, scope: !5149)
!5157 = !DILocation(line: 251, column: 10, scope: !4388)
!5158 = !DILocation(line: 251, column: 14, scope: !4388)
!5159 = !DILocation(line: 251, column: 2, scope: !4388)
!5160 = !DILocation(line: 254, column: 4, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 251, column: 25)
!5162 = !DILocation(line: 256, column: 8, scope: !5161)
!5163 = !DILocation(line: 257, column: 4, scope: !5161)
!5164 = !DILocation(line: 259, column: 8, scope: !5161)
!5165 = !DILocation(line: 260, column: 4, scope: !5161)
!5166 = !DILocation(line: 262, column: 8, scope: !5161)
!5167 = !DILocation(line: 263, column: 4, scope: !5161)
!5168 = !DILocation(line: 265, column: 4, scope: !5161)
!5169 = !DILocation(line: 269, column: 2, scope: !4388)
!5170 = !DILocation(line: 269, column: 9, scope: !4388)
!5171 = !DILocation(line: 271, column: 11, scope: !4388)
!5172 = !DILocation(line: 271, column: 2, scope: !4388)
!5173 = !DILocation(line: 271, column: 9, scope: !4388)
!5174 = !DILocation(line: 272, column: 11, scope: !4388)
!5175 = !DILocation(line: 272, column: 2, scope: !4388)
!5176 = !DILocation(line: 272, column: 9, scope: !4388)
!5177 = !DILocation(line: 274, column: 2, scope: !4388)
!5178 = !DILocation(line: 274, column: 9, scope: !4388)
!5179 = !DILocation(line: 277, column: 26, scope: !4388)
!5180 = !DILocation(line: 277, column: 33, scope: !4388)
!5181 = !DILocation(line: 277, column: 37, scope: !4388)
!5182 = !DILocation(line: 277, column: 51, scope: !4388)
!5183 = !DILocation(line: 277, column: 54, scope: !4388)
!5184 = !DILocation(line: 277, column: 2, scope: !4388)
!5185 = !DILocation(line: 278, column: 24, scope: !4388)
!5186 = !DILocation(line: 278, column: 31, scope: !4388)
!5187 = !DILocation(line: 278, column: 34, scope: !4388)
!5188 = !DILocation(line: 278, column: 2, scope: !4388)
!5189 = !DILocation(line: 280, column: 6, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 280, column: 6)
!5191 = !DILocation(line: 280, column: 13, scope: !5190)
!5192 = !DILocation(line: 280, column: 20, scope: !5190)
!5193 = !DILocation(line: 280, column: 6, scope: !4388)
!5194 = !DILocation(line: 281, column: 7, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 281, column: 7)
!5196 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 280, column: 30)
!5197 = !DILocation(line: 281, column: 11, scope: !5195)
!5198 = !DILocation(line: 281, column: 15, scope: !5195)
!5199 = !DILocation(line: 281, column: 25, scope: !5195)
!5200 = !DILocation(line: 281, column: 7, scope: !5196)
!5201 = !DILocation(line: 282, column: 4, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5195, file: !3, line: 281, column: 37)
!5203 = !DILocation(line: 282, column: 8, scope: !5202)
!5204 = !DILocation(line: 282, column: 12, scope: !5202)
!5205 = !DILocation(line: 282, column: 22, scope: !5202)
!5206 = !DILocation(line: 282, column: 33, scope: !5202)
!5207 = !DILocation(line: 283, column: 8, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 283, column: 8)
!5209 = !DILocation(line: 283, column: 12, scope: !5208)
!5210 = !DILocation(line: 283, column: 16, scope: !5208)
!5211 = !DILocation(line: 283, column: 8, scope: !5202)
!5212 = !DILocation(line: 284, column: 5, scope: !5208)
!5213 = !DILocation(line: 284, column: 9, scope: !5208)
!5214 = !DILocation(line: 284, column: 13, scope: !5208)
!5215 = !DILocation(line: 284, column: 27, scope: !5208)
!5216 = !DILocation(line: 285, column: 3, scope: !5202)
!5217 = !DILocation(line: 287, column: 16, scope: !5196)
!5218 = !DILocation(line: 287, column: 20, scope: !5196)
!5219 = !DILocation(line: 287, column: 3, scope: !5196)
!5220 = !DILocation(line: 288, column: 16, scope: !5196)
!5221 = !DILocation(line: 288, column: 3, scope: !5196)
!5222 = !DILocation(line: 289, column: 2, scope: !5196)
!5223 = !DILocation(line: 290, column: 7, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 290, column: 7)
!5225 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 289, column: 9)
!5226 = !DILocation(line: 290, column: 11, scope: !5224)
!5227 = !DILocation(line: 290, column: 15, scope: !5224)
!5228 = !DILocation(line: 290, column: 25, scope: !5224)
!5229 = !DILocation(line: 290, column: 7, scope: !5225)
!5230 = !DILocation(line: 291, column: 4, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 290, column: 36)
!5232 = !DILocation(line: 291, column: 8, scope: !5231)
!5233 = !DILocation(line: 291, column: 12, scope: !5231)
!5234 = !DILocation(line: 291, column: 22, scope: !5231)
!5235 = !DILocation(line: 291, column: 32, scope: !5231)
!5236 = !DILocation(line: 291, column: 36, scope: !5231)
!5237 = !DILocation(line: 291, column: 39, scope: !5231)
!5238 = !DILocation(line: 292, column: 4, scope: !5231)
!5239 = !DILocation(line: 292, column: 11, scope: !5231)
!5240 = !DILocation(line: 293, column: 17, scope: !5231)
!5241 = !DILocation(line: 293, column: 21, scope: !5231)
!5242 = !DILocation(line: 293, column: 4, scope: !5231)
!5243 = !DILocation(line: 294, column: 17, scope: !5231)
!5244 = !DILocation(line: 294, column: 4, scope: !5231)
!5245 = !DILocation(line: 295, column: 3, scope: !5231)
!5246 = !DILocation(line: 298, column: 2, scope: !4388)
!5247 = !DILocation(line: 299, column: 1, scope: !4388)
!5248 = distinct !DISubprogram(name: "mt352_get_tune_settings", scope: !3, file: !3, line: 494, type: !557, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!5249 = !DILocalVariable(name: "fe", arg: 1, scope: !5248, file: !3, line: 494, type: !487)
!5250 = !DILocation(line: 494, column: 57, scope: !5248)
!5251 = !DILocalVariable(name: "fe_tune_settings", arg: 2, scope: !5248, file: !3, line: 494, type: !559)
!5252 = !DILocation(line: 494, column: 96, scope: !5248)
!5253 = !DILocation(line: 496, column: 2, scope: !5248)
!5254 = !DILocation(line: 496, column: 20, scope: !5248)
!5255 = !DILocation(line: 496, column: 33, scope: !5248)
!5256 = !DILocation(line: 497, column: 2, scope: !5248)
!5257 = !DILocation(line: 497, column: 20, scope: !5248)
!5258 = !DILocation(line: 497, column: 30, scope: !5248)
!5259 = !DILocation(line: 498, column: 2, scope: !5248)
!5260 = !DILocation(line: 498, column: 20, scope: !5248)
!5261 = !DILocation(line: 498, column: 30, scope: !5248)
!5262 = !DILocation(line: 500, column: 2, scope: !5248)
!5263 = !DILocalVariable(name: "fe", arg: 1, scope: !4394, file: !3, line: 301, type: !487)
!5264 = !DILocation(line: 301, column: 54, scope: !4394)
!5265 = !DILocalVariable(name: "op", arg: 2, scope: !4394, file: !3, line: 302, type: !569)
!5266 = !DILocation(line: 302, column: 37, scope: !4394)
!5267 = !DILocalVariable(name: "state", scope: !4394, file: !3, line: 304, type: !4545)
!5268 = !DILocation(line: 304, column: 22, scope: !4394)
!5269 = !DILocation(line: 304, column: 30, scope: !4394)
!5270 = !DILocation(line: 304, column: 34, scope: !4394)
!5271 = !DILocalVariable(name: "tps", scope: !4394, file: !3, line: 305, type: !415)
!5272 = !DILocation(line: 305, column: 6, scope: !4394)
!5273 = !DILocalVariable(name: "div", scope: !4394, file: !3, line: 306, type: !415)
!5274 = !DILocation(line: 306, column: 6, scope: !4394)
!5275 = !DILocalVariable(name: "trl", scope: !4394, file: !3, line: 307, type: !425)
!5276 = !DILocation(line: 307, column: 5, scope: !4394)
!5277 = !DILocation(line: 320, column: 28, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 320, column: 7)
!5279 = !DILocation(line: 320, column: 8, scope: !5278)
!5280 = !DILocation(line: 320, column: 40, scope: !5278)
!5281 = !DILocation(line: 320, column: 48, scope: !5278)
!5282 = !DILocation(line: 320, column: 7, scope: !4394)
!5283 = !DILocation(line: 321, column: 3, scope: !5278)
!5284 = !DILocation(line: 326, column: 29, scope: !4394)
!5285 = !DILocation(line: 326, column: 9, scope: !4394)
!5286 = !DILocation(line: 326, column: 52, scope: !4394)
!5287 = !DILocation(line: 326, column: 80, scope: !4394)
!5288 = !DILocation(line: 326, column: 60, scope: !4394)
!5289 = !DILocation(line: 326, column: 58, scope: !4394)
!5290 = !DILocation(line: 326, column: 8, scope: !4394)
!5291 = !DILocation(line: 326, column: 6, scope: !4394)
!5292 = !DILocation(line: 327, column: 29, scope: !4394)
!5293 = !DILocation(line: 327, column: 9, scope: !4394)
!5294 = !DILocation(line: 327, column: 50, scope: !4394)
!5295 = !DILocation(line: 327, column: 78, scope: !4394)
!5296 = !DILocation(line: 327, column: 58, scope: !4394)
!5297 = !DILocation(line: 327, column: 56, scope: !4394)
!5298 = !DILocation(line: 327, column: 8, scope: !4394)
!5299 = !DILocation(line: 327, column: 6, scope: !4394)
!5300 = !DILocation(line: 328, column: 28, scope: !4394)
!5301 = !DILocation(line: 328, column: 8, scope: !4394)
!5302 = !DILocation(line: 328, column: 6, scope: !4394)
!5303 = !DILocation(line: 330, column: 37, scope: !4394)
!5304 = !DILocation(line: 330, column: 41, scope: !4394)
!5305 = !DILocation(line: 330, column: 47, scope: !4394)
!5306 = !DILocation(line: 330, column: 21, scope: !4394)
!5307 = !DILocation(line: 330, column: 2, scope: !4394)
!5308 = !DILocation(line: 330, column: 6, scope: !4394)
!5309 = !DILocation(line: 330, column: 19, scope: !4394)
!5310 = !DILocation(line: 331, column: 37, scope: !4394)
!5311 = !DILocation(line: 331, column: 41, scope: !4394)
!5312 = !DILocation(line: 331, column: 47, scope: !4394)
!5313 = !DILocation(line: 331, column: 21, scope: !4394)
!5314 = !DILocation(line: 331, column: 2, scope: !4394)
!5315 = !DILocation(line: 331, column: 6, scope: !4394)
!5316 = !DILocation(line: 331, column: 19, scope: !4394)
!5317 = !DILocation(line: 333, column: 12, scope: !4394)
!5318 = !DILocation(line: 333, column: 16, scope: !4394)
!5319 = !DILocation(line: 333, column: 23, scope: !4394)
!5320 = !DILocation(line: 333, column: 2, scope: !4394)
!5321 = !DILocation(line: 336, column: 4, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 334, column: 2)
!5323 = !DILocation(line: 336, column: 8, scope: !5322)
!5324 = !DILocation(line: 336, column: 19, scope: !5322)
!5325 = !DILocation(line: 337, column: 4, scope: !5322)
!5326 = !DILocation(line: 339, column: 4, scope: !5322)
!5327 = !DILocation(line: 339, column: 8, scope: !5322)
!5328 = !DILocation(line: 339, column: 19, scope: !5322)
!5329 = !DILocation(line: 340, column: 4, scope: !5322)
!5330 = !DILocation(line: 342, column: 4, scope: !5322)
!5331 = !DILocation(line: 342, column: 8, scope: !5322)
!5332 = !DILocation(line: 342, column: 19, scope: !5322)
!5333 = !DILocation(line: 343, column: 4, scope: !5322)
!5334 = !DILocation(line: 345, column: 4, scope: !5322)
!5335 = !DILocation(line: 345, column: 8, scope: !5322)
!5336 = !DILocation(line: 345, column: 19, scope: !5322)
!5337 = !DILocation(line: 346, column: 4, scope: !5322)
!5338 = !DILocation(line: 349, column: 27, scope: !4394)
!5339 = !DILocation(line: 349, column: 31, scope: !4394)
!5340 = !DILocation(line: 349, column: 26, scope: !4394)
!5341 = !DILocation(line: 349, column: 2, scope: !4394)
!5342 = !DILocation(line: 349, column: 6, scope: !4394)
!5343 = !DILocation(line: 349, column: 24, scope: !4394)
!5344 = !DILocation(line: 351, column: 12, scope: !4394)
!5345 = !DILocation(line: 351, column: 16, scope: !4394)
!5346 = !DILocation(line: 351, column: 22, scope: !4394)
!5347 = !DILocation(line: 351, column: 2, scope: !4394)
!5348 = !DILocation(line: 354, column: 4, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 352, column: 2)
!5350 = !DILocation(line: 354, column: 8, scope: !5349)
!5351 = !DILocation(line: 354, column: 23, scope: !5349)
!5352 = !DILocation(line: 355, column: 4, scope: !5349)
!5353 = !DILocation(line: 357, column: 4, scope: !5349)
!5354 = !DILocation(line: 357, column: 8, scope: !5349)
!5355 = !DILocation(line: 357, column: 23, scope: !5349)
!5356 = !DILocation(line: 358, column: 4, scope: !5349)
!5357 = !DILocation(line: 360, column: 4, scope: !5349)
!5358 = !DILocation(line: 360, column: 8, scope: !5349)
!5359 = !DILocation(line: 360, column: 23, scope: !5349)
!5360 = !DILocation(line: 361, column: 4, scope: !5349)
!5361 = !DILocation(line: 363, column: 4, scope: !5349)
!5362 = !DILocation(line: 363, column: 8, scope: !5349)
!5363 = !DILocation(line: 363, column: 23, scope: !5349)
!5364 = !DILocation(line: 364, column: 4, scope: !5349)
!5365 = !DILocation(line: 366, column: 4, scope: !5349)
!5366 = !DILocation(line: 366, column: 8, scope: !5349)
!5367 = !DILocation(line: 366, column: 23, scope: !5349)
!5368 = !DILocation(line: 367, column: 4, scope: !5349)
!5369 = !DILocation(line: 370, column: 12, scope: !4394)
!5370 = !DILocation(line: 370, column: 16, scope: !4394)
!5371 = !DILocation(line: 370, column: 23, scope: !4394)
!5372 = !DILocation(line: 370, column: 2, scope: !4394)
!5373 = !DILocation(line: 373, column: 4, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 371, column: 2)
!5375 = !DILocation(line: 373, column: 8, scope: !5374)
!5376 = !DILocation(line: 373, column: 18, scope: !5374)
!5377 = !DILocation(line: 374, column: 4, scope: !5374)
!5378 = !DILocation(line: 376, column: 4, scope: !5374)
!5379 = !DILocation(line: 376, column: 8, scope: !5374)
!5380 = !DILocation(line: 376, column: 18, scope: !5374)
!5381 = !DILocation(line: 377, column: 4, scope: !5374)
!5382 = !DILocation(line: 379, column: 4, scope: !5374)
!5383 = !DILocation(line: 379, column: 8, scope: !5374)
!5384 = !DILocation(line: 379, column: 18, scope: !5374)
!5385 = !DILocation(line: 380, column: 4, scope: !5374)
!5386 = !DILocation(line: 382, column: 4, scope: !5374)
!5387 = !DILocation(line: 382, column: 8, scope: !5374)
!5388 = !DILocation(line: 382, column: 18, scope: !5374)
!5389 = !DILocation(line: 383, column: 4, scope: !5374)
!5390 = !DILocation(line: 385, column: 4, scope: !5374)
!5391 = !DILocation(line: 385, column: 8, scope: !5374)
!5392 = !DILocation(line: 385, column: 18, scope: !5374)
!5393 = !DILocation(line: 386, column: 4, scope: !5374)
!5394 = !DILocation(line: 389, column: 26, scope: !4394)
!5395 = !DILocation(line: 389, column: 30, scope: !4394)
!5396 = !DILocation(line: 389, column: 23, scope: !4394)
!5397 = !DILocation(line: 389, column: 49, scope: !4394)
!5398 = !DILocation(line: 389, column: 53, scope: !4394)
!5399 = !DILocation(line: 389, column: 2, scope: !4394)
!5400 = !DILocation(line: 389, column: 6, scope: !4394)
!5401 = !DILocation(line: 389, column: 16, scope: !4394)
!5402 = !DILocation(line: 391, column: 6, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 391, column: 6)
!5404 = !DILocation(line: 391, column: 10, scope: !5403)
!5405 = !DILocation(line: 391, column: 6, scope: !4394)
!5406 = !DILocation(line: 392, column: 3, scope: !5403)
!5407 = !DILocation(line: 392, column: 7, scope: !5403)
!5408 = !DILocation(line: 392, column: 20, scope: !5403)
!5409 = !DILocation(line: 393, column: 11, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 393, column: 11)
!5411 = !DILocation(line: 393, column: 15, scope: !5410)
!5412 = !DILocation(line: 393, column: 11, scope: !5403)
!5413 = !DILocation(line: 394, column: 3, scope: !5410)
!5414 = !DILocation(line: 394, column: 7, scope: !5410)
!5415 = !DILocation(line: 394, column: 20, scope: !5410)
!5416 = !DILocation(line: 396, column: 3, scope: !5410)
!5417 = !DILocation(line: 396, column: 7, scope: !5410)
!5418 = !DILocation(line: 396, column: 20, scope: !5410)
!5419 = !DILocation(line: 399, column: 26, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 399, column: 6)
!5421 = !DILocation(line: 399, column: 6, scope: !5420)
!5422 = !DILocation(line: 399, column: 43, scope: !5420)
!5423 = !DILocation(line: 399, column: 6, scope: !4394)
!5424 = !DILocation(line: 400, column: 3, scope: !5420)
!5425 = !DILocation(line: 400, column: 7, scope: !5420)
!5426 = !DILocation(line: 400, column: 17, scope: !5420)
!5427 = !DILocation(line: 402, column: 3, scope: !5420)
!5428 = !DILocation(line: 402, column: 7, scope: !5420)
!5429 = !DILocation(line: 402, column: 17, scope: !5420)
!5430 = !DILocation(line: 404, column: 2, scope: !4394)
!5431 = !DILocation(line: 405, column: 1, scope: !4394)
!5432 = distinct !DISubprogram(name: "mt352_read_status", scope: !3, file: !3, line: 407, type: !652, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!5433 = !DILocalVariable(name: "fe", arg: 1, scope: !5432, file: !3, line: 407, type: !487)
!5434 = !DILocation(line: 407, column: 51, scope: !5432)
!5435 = !DILocalVariable(name: "status", arg: 2, scope: !5432, file: !3, line: 407, type: !549)
!5436 = !DILocation(line: 407, column: 71, scope: !5432)
!5437 = !DILocalVariable(name: "state", scope: !5432, file: !3, line: 409, type: !4545)
!5438 = !DILocation(line: 409, column: 22, scope: !5432)
!5439 = !DILocation(line: 409, column: 30, scope: !5432)
!5440 = !DILocation(line: 409, column: 34, scope: !5432)
!5441 = !DILocalVariable(name: "s0", scope: !5432, file: !3, line: 410, type: !402)
!5442 = !DILocation(line: 410, column: 6, scope: !5432)
!5443 = !DILocalVariable(name: "s1", scope: !5432, file: !3, line: 410, type: !402)
!5444 = !DILocation(line: 410, column: 10, scope: !5432)
!5445 = !DILocalVariable(name: "s3", scope: !5432, file: !3, line: 410, type: !402)
!5446 = !DILocation(line: 410, column: 14, scope: !5432)
!5447 = !DILocation(line: 424, column: 32, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 424, column: 6)
!5449 = !DILocation(line: 424, column: 12, scope: !5448)
!5450 = !DILocation(line: 424, column: 10, scope: !5448)
!5451 = !DILocation(line: 424, column: 50, scope: !5448)
!5452 = !DILocation(line: 424, column: 6, scope: !5432)
!5453 = !DILocation(line: 425, column: 3, scope: !5448)
!5454 = !DILocation(line: 426, column: 32, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 426, column: 6)
!5456 = !DILocation(line: 426, column: 12, scope: !5455)
!5457 = !DILocation(line: 426, column: 10, scope: !5455)
!5458 = !DILocation(line: 426, column: 50, scope: !5455)
!5459 = !DILocation(line: 426, column: 6, scope: !5432)
!5460 = !DILocation(line: 427, column: 3, scope: !5455)
!5461 = !DILocation(line: 428, column: 32, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 428, column: 6)
!5463 = !DILocation(line: 428, column: 12, scope: !5462)
!5464 = !DILocation(line: 428, column: 10, scope: !5462)
!5465 = !DILocation(line: 428, column: 50, scope: !5462)
!5466 = !DILocation(line: 428, column: 6, scope: !5432)
!5467 = !DILocation(line: 429, column: 3, scope: !5462)
!5468 = !DILocation(line: 431, column: 3, scope: !5432)
!5469 = !DILocation(line: 431, column: 10, scope: !5432)
!5470 = !DILocation(line: 432, column: 6, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 432, column: 6)
!5472 = !DILocation(line: 432, column: 9, scope: !5471)
!5473 = !DILocation(line: 432, column: 6, scope: !5432)
!5474 = !DILocation(line: 433, column: 4, scope: !5471)
!5475 = !DILocation(line: 433, column: 11, scope: !5471)
!5476 = !DILocation(line: 433, column: 3, scope: !5471)
!5477 = !DILocation(line: 434, column: 6, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 434, column: 6)
!5479 = !DILocation(line: 434, column: 9, scope: !5478)
!5480 = !DILocation(line: 434, column: 6, scope: !5432)
!5481 = !DILocation(line: 435, column: 4, scope: !5478)
!5482 = !DILocation(line: 435, column: 11, scope: !5478)
!5483 = !DILocation(line: 435, column: 3, scope: !5478)
!5484 = !DILocation(line: 436, column: 6, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 436, column: 6)
!5486 = !DILocation(line: 436, column: 9, scope: !5485)
!5487 = !DILocation(line: 436, column: 6, scope: !5432)
!5488 = !DILocation(line: 437, column: 4, scope: !5485)
!5489 = !DILocation(line: 437, column: 11, scope: !5485)
!5490 = !DILocation(line: 437, column: 3, scope: !5485)
!5491 = !DILocation(line: 438, column: 6, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 438, column: 6)
!5493 = !DILocation(line: 438, column: 9, scope: !5492)
!5494 = !DILocation(line: 438, column: 6, scope: !5432)
!5495 = !DILocation(line: 439, column: 4, scope: !5492)
!5496 = !DILocation(line: 439, column: 11, scope: !5492)
!5497 = !DILocation(line: 439, column: 3, scope: !5492)
!5498 = !DILocation(line: 440, column: 6, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 440, column: 6)
!5500 = !DILocation(line: 440, column: 9, scope: !5499)
!5501 = !DILocation(line: 440, column: 6, scope: !5432)
!5502 = !DILocation(line: 441, column: 4, scope: !5499)
!5503 = !DILocation(line: 441, column: 11, scope: !5499)
!5504 = !DILocation(line: 441, column: 3, scope: !5499)
!5505 = !DILocation(line: 443, column: 8, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 443, column: 6)
!5507 = !DILocation(line: 443, column: 7, scope: !5506)
!5508 = !DILocation(line: 443, column: 15, scope: !5506)
!5509 = !DILocation(line: 443, column: 66, scope: !5506)
!5510 = !DILocation(line: 443, column: 6, scope: !5432)
!5511 = !DILocation(line: 445, column: 4, scope: !5506)
!5512 = !DILocation(line: 445, column: 11, scope: !5506)
!5513 = !DILocation(line: 445, column: 3, scope: !5506)
!5514 = !DILocation(line: 447, column: 2, scope: !5432)
!5515 = !DILocation(line: 448, column: 1, scope: !5432)
!5516 = distinct !DISubprogram(name: "mt352_read_ber", scope: !3, file: !3, line: 450, type: !656, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!5517 = !DILocalVariable(name: "fe", arg: 1, scope: !5516, file: !3, line: 450, type: !487)
!5518 = !DILocation(line: 450, column: 48, scope: !5516)
!5519 = !DILocalVariable(name: "ber", arg: 2, scope: !5516, file: !3, line: 450, type: !658)
!5520 = !DILocation(line: 450, column: 57, scope: !5516)
!5521 = !DILocalVariable(name: "state", scope: !5516, file: !3, line: 452, type: !4545)
!5522 = !DILocation(line: 452, column: 22, scope: !5516)
!5523 = !DILocation(line: 452, column: 30, scope: !5516)
!5524 = !DILocation(line: 452, column: 34, scope: !5516)
!5525 = !DILocation(line: 454, column: 31, scope: !5516)
!5526 = !DILocation(line: 454, column: 10, scope: !5516)
!5527 = !DILocation(line: 454, column: 52, scope: !5516)
!5528 = !DILocation(line: 455, column: 31, scope: !5516)
!5529 = !DILocation(line: 455, column: 10, scope: !5516)
!5530 = !DILocation(line: 455, column: 52, scope: !5516)
!5531 = !DILocation(line: 454, column: 59, scope: !5516)
!5532 = !DILocation(line: 456, column: 31, scope: !5516)
!5533 = !DILocation(line: 456, column: 10, scope: !5516)
!5534 = !DILocation(line: 455, column: 58, scope: !5516)
!5535 = !DILocation(line: 454, column: 3, scope: !5516)
!5536 = !DILocation(line: 454, column: 7, scope: !5516)
!5537 = !DILocation(line: 458, column: 2, scope: !5516)
!5538 = distinct !DISubprogram(name: "mt352_read_signal_strength", scope: !3, file: !3, line: 461, type: !661, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!5539 = !DILocalVariable(name: "fe", arg: 1, scope: !5538, file: !3, line: 461, type: !487)
!5540 = !DILocation(line: 461, column: 60, scope: !5538)
!5541 = !DILocalVariable(name: "strength", arg: 2, scope: !5538, file: !3, line: 461, type: !663)
!5542 = !DILocation(line: 461, column: 69, scope: !5538)
!5543 = !DILocalVariable(name: "state", scope: !5538, file: !3, line: 463, type: !4545)
!5544 = !DILocation(line: 463, column: 22, scope: !5538)
!5545 = !DILocation(line: 463, column: 30, scope: !5538)
!5546 = !DILocation(line: 463, column: 34, scope: !5538)
!5547 = !DILocalVariable(name: "signal", scope: !5538, file: !3, line: 466, type: !415)
!5548 = !DILocation(line: 466, column: 6, scope: !5538)
!5549 = !DILocation(line: 466, column: 37, scope: !5538)
!5550 = !DILocation(line: 466, column: 17, scope: !5538)
!5551 = !DILocation(line: 466, column: 56, scope: !5538)
!5552 = !DILocation(line: 466, column: 64, scope: !5538)
!5553 = !DILocation(line: 467, column: 24, scope: !5538)
!5554 = !DILocation(line: 467, column: 4, scope: !5538)
!5555 = !DILocation(line: 467, column: 43, scope: !5538)
!5556 = !DILocation(line: 466, column: 71, scope: !5538)
!5557 = !DILocation(line: 466, column: 15, scope: !5538)
!5558 = !DILocation(line: 470, column: 15, scope: !5538)
!5559 = !DILocation(line: 470, column: 14, scope: !5538)
!5560 = !DILocation(line: 470, column: 3, scope: !5538)
!5561 = !DILocation(line: 470, column: 12, scope: !5538)
!5562 = !DILocation(line: 471, column: 2, scope: !5538)
!5563 = distinct !DISubprogram(name: "mt352_read_snr", scope: !3, file: !3, line: 474, type: !661, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!5564 = !DILocalVariable(name: "fe", arg: 1, scope: !5563, file: !3, line: 474, type: !487)
!5565 = !DILocation(line: 474, column: 48, scope: !5563)
!5566 = !DILocalVariable(name: "snr", arg: 2, scope: !5563, file: !3, line: 474, type: !663)
!5567 = !DILocation(line: 474, column: 57, scope: !5563)
!5568 = !DILocalVariable(name: "state", scope: !5563, file: !3, line: 476, type: !4545)
!5569 = !DILocation(line: 476, column: 22, scope: !5563)
!5570 = !DILocation(line: 476, column: 30, scope: !5563)
!5571 = !DILocation(line: 476, column: 34, scope: !5563)
!5572 = !DILocalVariable(name: "_snr", scope: !5563, file: !3, line: 478, type: !425)
!5573 = !DILocation(line: 478, column: 5, scope: !5563)
!5574 = !DILocation(line: 478, column: 33, scope: !5563)
!5575 = !DILocation(line: 478, column: 12, scope: !5563)
!5576 = !DILocation(line: 479, column: 10, scope: !5563)
!5577 = !DILocation(line: 479, column: 15, scope: !5563)
!5578 = !DILocation(line: 479, column: 23, scope: !5563)
!5579 = !DILocation(line: 479, column: 21, scope: !5563)
!5580 = !DILocation(line: 479, column: 9, scope: !5563)
!5581 = !DILocation(line: 479, column: 3, scope: !5563)
!5582 = !DILocation(line: 479, column: 7, scope: !5563)
!5583 = !DILocation(line: 481, column: 2, scope: !5563)
!5584 = distinct !DISubprogram(name: "mt352_read_ucblocks", scope: !3, file: !3, line: 484, type: !656, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!5585 = !DILocalVariable(name: "fe", arg: 1, scope: !5584, file: !3, line: 484, type: !487)
!5586 = !DILocation(line: 484, column: 53, scope: !5584)
!5587 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !5584, file: !3, line: 484, type: !658)
!5588 = !DILocation(line: 484, column: 62, scope: !5584)
!5589 = !DILocalVariable(name: "state", scope: !5584, file: !3, line: 486, type: !4545)
!5590 = !DILocation(line: 486, column: 22, scope: !5584)
!5591 = !DILocation(line: 486, column: 30, scope: !5584)
!5592 = !DILocation(line: 486, column: 34, scope: !5584)
!5593 = !DILocation(line: 488, column: 36, scope: !5584)
!5594 = !DILocation(line: 488, column: 15, scope: !5584)
!5595 = !DILocation(line: 488, column: 54, scope: !5584)
!5596 = !DILocation(line: 489, column: 29, scope: !5584)
!5597 = !DILocation(line: 489, column: 8, scope: !5584)
!5598 = !DILocation(line: 488, column: 60, scope: !5584)
!5599 = !DILocation(line: 488, column: 3, scope: !5584)
!5600 = !DILocation(line: 488, column: 12, scope: !5584)
!5601 = !DILocation(line: 491, column: 2, scope: !5584)
!5602 = distinct !DISubprogram(name: "mt352_single_write", scope: !3, file: !3, line: 44, type: !5603, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!5603 = !DISubroutineType(types: !5604)
!5604 = !{!402, !487, !425, !425}
!5605 = !DILocalVariable(name: "fe", arg: 1, scope: !5602, file: !3, line: 44, type: !487)
!5606 = !DILocation(line: 44, column: 52, scope: !5602)
!5607 = !DILocalVariable(name: "reg", arg: 2, scope: !5602, file: !3, line: 44, type: !425)
!5608 = !DILocation(line: 44, column: 59, scope: !5602)
!5609 = !DILocalVariable(name: "val", arg: 3, scope: !5602, file: !3, line: 44, type: !425)
!5610 = !DILocation(line: 44, column: 67, scope: !5602)
!5611 = !DILocalVariable(name: "state", scope: !5602, file: !3, line: 46, type: !4545)
!5612 = !DILocation(line: 46, column: 22, scope: !5602)
!5613 = !DILocation(line: 46, column: 30, scope: !5602)
!5614 = !DILocation(line: 46, column: 34, scope: !5602)
!5615 = !DILocalVariable(name: "buf", scope: !5602, file: !3, line: 47, type: !4381)
!5616 = !DILocation(line: 47, column: 5, scope: !5602)
!5617 = !DILocation(line: 47, column: 14, scope: !5602)
!5618 = !DILocation(line: 47, column: 16, scope: !5602)
!5619 = !DILocation(line: 47, column: 21, scope: !5602)
!5620 = !DILocalVariable(name: "msg", scope: !5602, file: !3, line: 48, type: !4434)
!5621 = !DILocation(line: 48, column: 17, scope: !5602)
!5622 = !DILocation(line: 48, column: 23, scope: !5602)
!5623 = !DILocation(line: 48, column: 33, scope: !5602)
!5624 = !DILocation(line: 48, column: 40, scope: !5602)
!5625 = !DILocation(line: 48, column: 47, scope: !5602)
!5626 = !DILocation(line: 49, column: 18, scope: !5602)
!5627 = !DILocalVariable(name: "err", scope: !5602, file: !3, line: 50, type: !402)
!5628 = !DILocation(line: 50, column: 6, scope: !5602)
!5629 = !DILocation(line: 50, column: 25, scope: !5602)
!5630 = !DILocation(line: 50, column: 32, scope: !5602)
!5631 = !DILocation(line: 50, column: 12, scope: !5602)
!5632 = !DILocation(line: 51, column: 6, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 51, column: 6)
!5634 = !DILocation(line: 51, column: 10, scope: !5633)
!5635 = !DILocation(line: 51, column: 6, scope: !5602)
!5636 = !DILocation(line: 52, column: 58, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 51, column: 16)
!5638 = !DILocation(line: 52, column: 63, scope: !5637)
!5639 = !DILocation(line: 52, column: 3, scope: !5637)
!5640 = !DILocation(line: 53, column: 10, scope: !5637)
!5641 = !DILocation(line: 53, column: 3, scope: !5637)
!5642 = !DILocation(line: 55, column: 2, scope: !5602)
!5643 = !DILocation(line: 56, column: 1, scope: !5602)
!5644 = distinct !DISubprogram(name: "mt352_calc_nominal_rate", scope: !3, file: !3, line: 99, type: !5645, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!5645 = !DISubroutineType(types: !5646)
!5646 = !{null, !4545, !515, !5647}
!5647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!5648 = !DILocalVariable(name: "state", arg: 1, scope: !5644, file: !3, line: 99, type: !4545)
!5649 = !DILocation(line: 99, column: 57, scope: !5644)
!5650 = !DILocalVariable(name: "bandwidth", arg: 2, scope: !5644, file: !3, line: 100, type: !515)
!5651 = !DILocation(line: 100, column: 13, scope: !5644)
!5652 = !DILocalVariable(name: "buf", arg: 3, scope: !5644, file: !3, line: 101, type: !5647)
!5653 = !DILocation(line: 101, column: 24, scope: !5644)
!5654 = !DILocalVariable(name: "adc_clock", scope: !5644, file: !3, line: 103, type: !515)
!5655 = !DILocation(line: 103, column: 6, scope: !5644)
!5656 = !DILocalVariable(name: "bw", scope: !5644, file: !3, line: 104, type: !515)
!5657 = !DILocation(line: 104, column: 6, scope: !5644)
!5658 = !DILocalVariable(name: "value", scope: !5644, file: !3, line: 104, type: !515)
!5659 = !DILocation(line: 104, column: 9, scope: !5644)
!5660 = !DILocation(line: 106, column: 10, scope: !5644)
!5661 = !DILocation(line: 106, column: 2, scope: !5644)
!5662 = !DILocation(line: 108, column: 6, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 106, column: 21)
!5664 = !DILocation(line: 109, column: 3, scope: !5663)
!5665 = !DILocation(line: 111, column: 6, scope: !5663)
!5666 = !DILocation(line: 112, column: 3, scope: !5663)
!5667 = !DILocation(line: 115, column: 6, scope: !5663)
!5668 = !DILocation(line: 116, column: 3, scope: !5663)
!5669 = !DILocation(line: 118, column: 6, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 118, column: 6)
!5671 = !DILocation(line: 118, column: 13, scope: !5670)
!5672 = !DILocation(line: 118, column: 20, scope: !5670)
!5673 = !DILocation(line: 118, column: 6, scope: !5644)
!5674 = !DILocation(line: 119, column: 15, scope: !5670)
!5675 = !DILocation(line: 119, column: 22, scope: !5670)
!5676 = !DILocation(line: 119, column: 29, scope: !5670)
!5677 = !DILocation(line: 119, column: 13, scope: !5670)
!5678 = !DILocation(line: 119, column: 3, scope: !5670)
!5679 = !DILocation(line: 121, column: 15, scope: !5644)
!5680 = !DILocation(line: 121, column: 13, scope: !5644)
!5681 = !DILocation(line: 121, column: 18, scope: !5644)
!5682 = !DILocation(line: 121, column: 28, scope: !5644)
!5683 = !DILocation(line: 121, column: 8, scope: !5644)
!5684 = !DILocation(line: 122, column: 10, scope: !5644)
!5685 = !DILocation(line: 122, column: 16, scope: !5644)
!5686 = !DILocation(line: 122, column: 25, scope: !5644)
!5687 = !DILocation(line: 122, column: 23, scope: !5644)
!5688 = !DILocation(line: 122, column: 8, scope: !5644)
!5689 = !DILocation(line: 123, column: 2, scope: !5644)
!5690 = !DILocation(line: 123, column: 2, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 123, column: 2)
!5692 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 123, column: 2)
!5693 = !DILocation(line: 123, column: 2, scope: !5692)
!5694 = !DILocation(line: 125, column: 11, scope: !5644)
!5695 = !DILocation(line: 125, column: 2, scope: !5644)
!5696 = !DILocation(line: 125, column: 9, scope: !5644)
!5697 = !DILocation(line: 126, column: 11, scope: !5644)
!5698 = !DILocation(line: 126, column: 2, scope: !5644)
!5699 = !DILocation(line: 126, column: 9, scope: !5644)
!5700 = !DILocation(line: 127, column: 1, scope: !5644)
!5701 = distinct !DISubprogram(name: "mt352_calc_input_freq", scope: !3, file: !3, line: 129, type: !5702, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !845)
!5702 = !DISubroutineType(types: !5703)
!5703 = !{null, !4545, !5647}
!5704 = !DILocalVariable(name: "state", arg: 1, scope: !5701, file: !3, line: 129, type: !4545)
!5705 = !DILocation(line: 129, column: 55, scope: !5701)
!5706 = !DILocalVariable(name: "buf", arg: 2, scope: !5701, file: !3, line: 130, type: !5647)
!5707 = !DILocation(line: 130, column: 22, scope: !5701)
!5708 = !DILocalVariable(name: "adc_clock", scope: !5701, file: !3, line: 132, type: !402)
!5709 = !DILocation(line: 132, column: 6, scope: !5701)
!5710 = !DILocalVariable(name: "if2", scope: !5701, file: !3, line: 133, type: !402)
!5711 = !DILocation(line: 133, column: 6, scope: !5701)
!5712 = !DILocalVariable(name: "ife", scope: !5701, file: !3, line: 134, type: !402)
!5713 = !DILocation(line: 134, column: 6, scope: !5701)
!5714 = !DILocalVariable(name: "value", scope: !5701, file: !3, line: 134, type: !402)
!5715 = !DILocation(line: 134, column: 10, scope: !5701)
!5716 = !DILocation(line: 136, column: 6, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 136, column: 6)
!5718 = !DILocation(line: 136, column: 13, scope: !5717)
!5719 = !DILocation(line: 136, column: 20, scope: !5717)
!5720 = !DILocation(line: 136, column: 6, scope: !5701)
!5721 = !DILocation(line: 137, column: 15, scope: !5717)
!5722 = !DILocation(line: 137, column: 22, scope: !5717)
!5723 = !DILocation(line: 137, column: 29, scope: !5717)
!5724 = !DILocation(line: 137, column: 13, scope: !5717)
!5725 = !DILocation(line: 137, column: 3, scope: !5717)
!5726 = !DILocation(line: 138, column: 6, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 138, column: 6)
!5728 = !DILocation(line: 138, column: 13, scope: !5727)
!5729 = !DILocation(line: 138, column: 20, scope: !5727)
!5730 = !DILocation(line: 138, column: 6, scope: !5701)
!5731 = !DILocation(line: 139, column: 9, scope: !5727)
!5732 = !DILocation(line: 139, column: 16, scope: !5727)
!5733 = !DILocation(line: 139, column: 23, scope: !5727)
!5734 = !DILocation(line: 139, column: 7, scope: !5727)
!5735 = !DILocation(line: 139, column: 3, scope: !5727)
!5736 = !DILocation(line: 141, column: 6, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 141, column: 6)
!5738 = !DILocation(line: 141, column: 19, scope: !5737)
!5739 = !DILocation(line: 141, column: 23, scope: !5737)
!5740 = !DILocation(line: 141, column: 16, scope: !5737)
!5741 = !DILocation(line: 141, column: 6, scope: !5701)
!5742 = !DILocation(line: 142, column: 9, scope: !5737)
!5743 = !DILocation(line: 142, column: 7, scope: !5737)
!5744 = !DILocation(line: 142, column: 3, scope: !5737)
!5745 = !DILocation(line: 144, column: 9, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5737, file: !3, line: 143, column: 7)
!5747 = !DILocation(line: 144, column: 22, scope: !5746)
!5748 = !DILocation(line: 144, column: 28, scope: !5746)
!5749 = !DILocation(line: 144, column: 26, scope: !5746)
!5750 = !DILocation(line: 144, column: 19, scope: !5746)
!5751 = !DILocation(line: 144, column: 7, scope: !5746)
!5752 = !DILocation(line: 145, column: 7, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5746, file: !3, line: 145, column: 7)
!5754 = !DILocation(line: 145, column: 13, scope: !5753)
!5755 = !DILocation(line: 145, column: 23, scope: !5753)
!5756 = !DILocation(line: 145, column: 11, scope: !5753)
!5757 = !DILocation(line: 145, column: 7, scope: !5746)
!5758 = !DILocation(line: 146, column: 10, scope: !5753)
!5759 = !DILocation(line: 146, column: 22, scope: !5753)
!5760 = !DILocation(line: 146, column: 20, scope: !5753)
!5761 = !DILocation(line: 146, column: 8, scope: !5753)
!5762 = !DILocation(line: 146, column: 4, scope: !5753)
!5763 = !DILocation(line: 148, column: 19, scope: !5701)
!5764 = !DILocation(line: 148, column: 17, scope: !5701)
!5765 = !DILocation(line: 148, column: 25, scope: !5701)
!5766 = !DILocation(line: 148, column: 23, scope: !5701)
!5767 = !DILocation(line: 148, column: 8, scope: !5701)
!5768 = !DILocation(line: 149, column: 2, scope: !5701)
!5769 = !DILocation(line: 149, column: 2, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !5771, file: !3, line: 149, column: 2)
!5771 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 149, column: 2)
!5772 = !DILocation(line: 149, column: 2, scope: !5771)
!5773 = !DILocation(line: 151, column: 11, scope: !5701)
!5774 = !DILocation(line: 151, column: 2, scope: !5701)
!5775 = !DILocation(line: 151, column: 9, scope: !5701)
!5776 = !DILocation(line: 152, column: 11, scope: !5701)
!5777 = !DILocation(line: 152, column: 2, scope: !5701)
!5778 = !DILocation(line: 152, column: 9, scope: !5701)
!5779 = !DILocation(line: 153, column: 1, scope: !5701)
