; ModuleID = '../bcout/drivers/media/dvb-frontends/ds3000.llvm.bc'
source_filename = "drivers/media/dvb-frontends/ds3000.c"
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
%struct.ds3000_config = type { i8, i8, i32 (%struct.dvb_frontend*, i32)*, void (%struct.dvb_frontend*, i32)* }
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
%struct.ds3000_state = type { %struct.i2c_adapter*, %struct.ds3000_config*, %struct.dvb_frontend, i16 }
%struct.firmware = type { i64, i8*, i8* }

@debug = internal global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__func__.ds3000_attach = private unnamed_addr constant [14 x i8] c"ds3000_attach\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\013Invalid probe, probably not a DS3000\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"\016DS3000 chip version: %d.%d attached.\0A\00", align 1
@ds3000_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Montage Technology DS3000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1011000, i32 5000000, i32 1000000, i32 45000000, i32 0, i32 1342179071 }, [8 x i8] c"\05\06\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @ds3000_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @ds3000_initfe, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* @ds3000_tune, i32 (%struct.dvb_frontend*)* @ds3000_get_algo, i32 (%struct.dvb_frontend*)* @ds3000_set_frontend, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* null, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* null, i32 (%struct.dvb_frontend*, i32*)* @ds3000_read_status, i32 (%struct.dvb_frontend*, i32*)* @ds3000_read_ber, i32 (%struct.dvb_frontend*, i16*)* @ds3000_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @ds3000_read_snr, i32 (%struct.dvb_frontend*, i32*)* @ds3000_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @ds3000_send_diseqc_msg, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* @ds3000_diseqc_send_burst, i32 (%struct.dvb_frontend*, i32)* @ds3000_set_tone, i32 (%struct.dvb_frontend*, i32)* @ds3000_set_voltage, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* @ds3000_i2c_gate_ctrl, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !402
@__param_str_debug = internal constant [13 x i8] c"ds3000.debug\00", align 1, !dbg !4320
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !295
@__UNIQUE_ID_debugtype220 = internal constant [26 x i8] c"ds3000.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !367
@__UNIQUE_ID_debug221 = internal constant [59 x i8] c"ds3000.parm=debug:Activates frontend debugging (default:0)\00", section ".modinfo", align 1, !dbg !372
@__UNIQUE_ID_description222 = internal constant [78 x i8] c"ds3000.description=DVB Frontend module for Montage Technology DS3000 hardware\00", section ".modinfo", align 1, !dbg !377
@__UNIQUE_ID_author223 = internal constant [61 x i8] c"ds3000.author=Konstantin Dimitrov <kosio.dimitrov@gmail.com>\00", section ".modinfo", align 1, !dbg !382
@__UNIQUE_ID_file224 = internal constant [47 x i8] c"ds3000.file=drivers/media/dvb-frontends/ds3000\00", section ".modinfo", align 1, !dbg !387
@__UNIQUE_ID_license225 = internal constant [19 x i8] c"ds3000.license=GPL\00", section ".modinfo", align 1, !dbg !392
@__UNIQUE_ID_firmware226 = internal constant [33 x i8] c"ds3000.firmware=dvb-fe-ds3000.fw\00", section ".modinfo", align 1, !dbg !397
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"\013%s: reg=0x%x(error=%d)\0A\00", align 1
@__func__.ds3000_readreg = private unnamed_addr constant [15 x i8] c"ds3000_readreg\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"%s: read reg 0x%02x, value 0x%02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%s(%d)\0A\00", align 1
@__func__.ds3000_set_voltage = private unnamed_addr constant [19 x i8] c"ds3000_set_voltage\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"%s: write reg 0x%02x, value 0x%02x\0A\00", align 1
@__func__.ds3000_writereg = private unnamed_addr constant [16 x i8] c"ds3000_writereg\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"\013%s: writereg error(err == %i, reg == 0x%02x, value == 0x%02x)\0A\00", align 1
@__func__.ds3000_release = private unnamed_addr constant [15 x i8] c"ds3000_release\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s()\0A\00", align 1
@__func__.ds3000_initfe = private unnamed_addr constant [14 x i8] c"ds3000_initfe\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"\013%s: Unable initialize firmware\0A\00", align 1
@__func__.ds3000_firmware_ondemand = private unnamed_addr constant [25 x i8] c"ds3000_firmware_ondemand\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"\016%s: Waiting for firmware upload (%s)...\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"dvb-fe-ds3000.fw\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"\016%s: Waiting for firmware upload(2)...\0A\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"\013%s: No firmware uploaded (timeout or file not found?)\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"%s: Writing firmware to device failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"%s: Firmware upload %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"complete\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@__func__.ds3000_load_firmware = private unnamed_addr constant [21 x i8] c"ds3000_load_firmware\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"Firmware is %zu bytes (%02x %02x .. %02x %02x)\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"%s: write reg 0x%02x, len = %d\0A\00", align 1
@__func__.ds3000_writeFW = private unnamed_addr constant [15 x i8] c"ds3000_writeFW\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"\013%s: write error(err == %i, reg == 0x%02x\0A\00", align 1
@__func__.ds3000_get_algo = private unnamed_addr constant [16 x i8] c"ds3000_get_algo\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%s() \00", align 1
@__func__.ds3000_set_frontend = private unnamed_addr constant [20 x i8] c"ds3000_set_frontend\00", align 1
@ds3000_dvbs_init_tab = internal global [162 x i8] c"#\05\08\03\0C\00!T%\82'10\081@22355\FF:\007\108\109\02B`J@K\04M\91]\C8PwQwR6S6V\01cCd0e@h&iLp qpr\04s\00p@qpr\04s\00p`qpr\04s\00p\80qpr\04s\00p\A0qpr\04s\00p\1Fv\00w\D1x\0Cy\80\7F\04|\00\80\86\81\A6\85\04\CD\F4\903\A0D\C0\18\C3\10\C4\08\C5\80\C6\80\C7\0A\C8\1A\C9\80\FE\92\E0\F8\E6\8B\D0@\F8 \FA\0F\FD \AD \AE\07\B8\00", align 16, !dbg !4301
@ds3000_dvbs2_init_tab = internal global [192 x i8] c"#\0F\08\07\0C\00!T%\82'10\081222355\FF:\007\108\109\02B`J\80K\04M\81]\88P6Q6R6S6c`d\10e\10h\04i)p qpr\04s\00p@qpr\04s\00p`qpr\04s\00p\80qpr\04s\00p\A0qpr\04s\00p\1F\A0D\C0\08\C1\10\C2\08\C3\10\C4\08\C5\F0\C6\F0\C7\0A\C8\1A\C9\80\CA#\CB$\CEt\90\03v\80wBx\0Ay\80\AD@\AE\07\7F\D4|\00\80\A8\81\DA|\01\80\DA\81\EC|\02\80\CA\81\EB|\03\80\BA\81\DB\85\08\86\00\87\02\89\80\8BD\8C\AA\8A\10\BA\00\F5\04\FED\D22\B8\00", align 16, !dbg !4306
@.str.23 = private unnamed_addr constant [46 x i8] c"%s() symbol_rate %u out of range (%u ... %u)\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"%s: status = 0x%02x\0A\00", align 1
@__func__.ds3000_read_status = private unnamed_addr constant [19 x i8] c"ds3000_read_status\00", align 1
@__func__.ds3000_read_ber = private unnamed_addr constant [16 x i8] c"ds3000_read_ber\00", align 1
@ds3000_read_snr.dvbs_snr_tab = internal constant [20 x i16] [i16 0, i16 6931, i16 10986, i16 13863, i16 16094, i16 17918, i16 19459, i16 20794, i16 21972, i16 23026, i16 23979, i16 24849, i16 25649, i16 26391, i16 27081, i16 27726, i16 28332, i16 28904, i16 29444, i16 29957], align 16, !dbg !4311
@ds3000_read_snr.dvbs2_snr_tab = internal constant [80 x i16] [i16 0, i16 3010, i16 4771, i16 6021, i16 6990, i16 7781, i16 8451, i16 9031, i16 9542, i16 10000, i16 10414, i16 10792, i16 11139, i16 11461, i16 11761, i16 12041, i16 12304, i16 12553, i16 12788, i16 13010, i16 13222, i16 13424, i16 13617, i16 13802, i16 13979, i16 14150, i16 14314, i16 14472, i16 14624, i16 14771, i16 14914, i16 15052, i16 15185, i16 15315, i16 15441, i16 15563, i16 15682, i16 15798, i16 15911, i16 16021, i16 16128, i16 16232, i16 16335, i16 16435, i16 16532, i16 16628, i16 16721, i16 16812, i16 16902, i16 16990, i16 17076, i16 17160, i16 17243, i16 17324, i16 17404, i16 17482, i16 17559, i16 17634, i16 17709, i16 17782, i16 17853, i16 17924, i16 17993, i16 18062, i16 18129, i16 18195, i16 18261, i16 18325, i16 18388, i16 18451, i16 18513, i16 18573, i16 18633, i16 18692, i16 18751, i16 18808, i16 18865, i16 18921, i16 18976, i16 19031], align 16, !dbg !4315
@__func__.ds3000_read_snr = private unnamed_addr constant [16 x i8] c"ds3000_read_snr\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"%s: raw / cooked = 0x%02x / 0x%04x\0A\00", align 1
@__func__.ds3000_read_ucblocks = private unnamed_addr constant [21 x i8] c"ds3000_read_ucblocks\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%s(\00", align 1
@__func__.ds3000_send_diseqc_msg = private unnamed_addr constant [23 x i8] c"ds3000_send_diseqc_msg\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c", \00", align 1
@__func__.ds3000_diseqc_send_burst = private unnamed_addr constant [25 x i8] c"ds3000_diseqc_send_burst\00", align 1
@__func__.ds3000_set_tone = private unnamed_addr constant [16 x i8] c"ds3000_set_tone\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"\013%s: Invalid, tone=%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"%s: setting tone on\0A\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"%s: setting tone off\0A\00", align 1
@llvm.used = appending global [8 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__UNIQUE_ID_author223, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__UNIQUE_ID_file224, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license225, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__UNIQUE_ID_firmware226, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @ds3000_attach(%struct.ds3000_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4330 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.ds3000_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.ds3000_state*, align 8
  %ret = alloca i32, align 4
  store %struct.ds3000_config* %config, %struct.ds3000_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds3000_config** %config.addr, metadata !4467, metadata !DIExpression()), !dbg !4468
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4469, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state, metadata !4471, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4480, metadata !DIExpression()), !dbg !4481
  br label %do.body, !dbg !4482

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !4483
  %tobool = icmp ne i32 %0, 0, !dbg !4483
  br i1 %tobool, label %if.then, label %if.end, !dbg !4486

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ds3000_attach, i64 0, i64 0)) #8, !dbg !4483
  br label %if.end, !dbg !4483

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4486

do.end:                                           ; preds = %if.end
  %call1 = call i8* @kzalloc(i64 1304, i32 3264) #9, !dbg !4487
  %1 = bitcast i8* %call1 to %struct.ds3000_state*, !dbg !4487
  store %struct.ds3000_state* %1, %struct.ds3000_state** %state, align 8, !dbg !4488
  %2 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !4489
  %tobool2 = icmp ne %struct.ds3000_state* %2, null, !dbg !4489
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4491

if.then3:                                         ; preds = %do.end
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4492
  br label %return, !dbg !4492

if.end4:                                          ; preds = %do.end
  %3 = load %struct.ds3000_config*, %struct.ds3000_config** %config.addr, align 8, !dbg !4493
  %4 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !4494
  %config5 = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %4, i32 0, i32 1, !dbg !4495
  store %struct.ds3000_config* %3, %struct.ds3000_config** %config5, align 8, !dbg !4496
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4497
  %6 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !4498
  %i2c6 = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %6, i32 0, i32 0, !dbg !4499
  store %struct.i2c_adapter* %5, %struct.i2c_adapter** %i2c6, align 8, !dbg !4500
  %7 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !4501
  %prevUCBS2 = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %7, i32 0, i32 3, !dbg !4502
  store i16 0, i16* %prevUCBS2, align 8, !dbg !4503
  %8 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !4504
  %call7 = call i32 @ds3000_readreg(%struct.ds3000_state* %8, i8 zeroext 0) #9, !dbg !4505
  %and = and i32 %call7, 254, !dbg !4506
  store i32 %and, i32* %ret, align 4, !dbg !4507
  %9 = load i32, i32* %ret, align 4, !dbg !4508
  %cmp = icmp ne i32 %9, 224, !dbg !4510
  br i1 %cmp, label %if.then8, label %if.end10, !dbg !4511

if.then8:                                         ; preds = %if.end4
  %10 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !4512
  %11 = bitcast %struct.ds3000_state* %10 to i8*, !dbg !4512
  call void @kfree(i8* %11) #9, !dbg !4514
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !4515
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4516
  br label %return, !dbg !4516

if.end10:                                         ; preds = %if.end4
  %12 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !4517
  %call11 = call i32 @ds3000_readreg(%struct.ds3000_state* %12, i8 zeroext 2) #9, !dbg !4518
  %13 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !4519
  %call12 = call i32 @ds3000_readreg(%struct.ds3000_state* %13, i8 zeroext 1) #9, !dbg !4520
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %call11, i32 %call12) #8, !dbg !4521
  %14 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !4522
  %frontend = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %14, i32 0, i32 2, !dbg !4523
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4524
  %15 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4525
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @ds3000_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4525
  %16 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !4526
  %17 = bitcast %struct.ds3000_state* %16 to i8*, !dbg !4526
  %18 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !4527
  %frontend14 = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %18, i32 0, i32 2, !dbg !4528
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend14, i32 0, i32 3, !dbg !4529
  store i8* %17, i8** %demodulator_priv, align 8, !dbg !4530
  %19 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !4531
  %frontend15 = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %19, i32 0, i32 2, !dbg !4532
  %call16 = call i32 @ds3000_set_voltage(%struct.dvb_frontend* %frontend15, i32 2) #9, !dbg !4533
  %20 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !4534
  %frontend17 = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %20, i32 0, i32 2, !dbg !4535
  store %struct.dvb_frontend* %frontend17, %struct.dvb_frontend** %retval, align 8, !dbg !4536
  br label %return, !dbg !4536

return:                                           ; preds = %if.end10, %if.then8, %if.then3
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4537
  ret %struct.dvb_frontend* %21, !dbg !4537
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4538 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4541, metadata !DIExpression()), !dbg !4545
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4551, metadata !DIExpression()), !dbg !4552
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4553, metadata !DIExpression()), !dbg !4554
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4555, metadata !DIExpression()), !dbg !4556
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4557, metadata !DIExpression()), !dbg !4561
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4563, metadata !DIExpression()), !dbg !4567
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4569, metadata !DIExpression()), !dbg !4573
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4578, metadata !DIExpression()), !dbg !4579
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4580, metadata !DIExpression()), !dbg !4581
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4582, metadata !DIExpression()), !dbg !4583
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4584, metadata !DIExpression()), !dbg !4585
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4586, metadata !DIExpression()), !dbg !4587
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4588, metadata !DIExpression()), !dbg !4589
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4590, metadata !DIExpression()), !dbg !4591
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4592, metadata !DIExpression()), !dbg !4593
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4594, metadata !DIExpression()), !dbg !4595
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4596, metadata !DIExpression()), !dbg !4597
  %0 = load i64, i64* %size.addr, align 8, !dbg !4598
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4599
  %or = or i32 %1, 256, !dbg !4600
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4601
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4602
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4603

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4604
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4605
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4606

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4607
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4608
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4609
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4610
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4587
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4611
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4612
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4613
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4614
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4615
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4616
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4617
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4617
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4617
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4617
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4617
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4618
  br label %kmalloc.exit, !dbg !4618

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4619
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4620
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4620
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4622

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4623
  br label %kmalloc_index.exit.i, !dbg !4623

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4624
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4626
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4627

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4628
  br label %kmalloc_index.exit.i, !dbg !4628

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4629
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4631
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4632

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4633
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4634
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4635

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4636
  br label %kmalloc_index.exit.i, !dbg !4636

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4637
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4639
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4640

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4641
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4642
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4643

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4644
  br label %kmalloc_index.exit.i, !dbg !4644

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4645
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4647
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4648

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4649
  br label %kmalloc_index.exit.i, !dbg !4649

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4650
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4652
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4653

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4654
  br label %kmalloc_index.exit.i, !dbg !4654

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4655
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4657
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4658

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4659
  br label %kmalloc_index.exit.i, !dbg !4659

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4660
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4662
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4663

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4664
  br label %kmalloc_index.exit.i, !dbg !4664

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4665
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4667
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4668

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4669
  br label %kmalloc_index.exit.i, !dbg !4669

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4670
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4672
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4673

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4674
  br label %kmalloc_index.exit.i, !dbg !4674

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4675
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4677
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4678

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4679
  br label %kmalloc_index.exit.i, !dbg !4679

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4680
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4682
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4683

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4684
  br label %kmalloc_index.exit.i, !dbg !4684

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4685
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4687
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4688

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4689
  br label %kmalloc_index.exit.i, !dbg !4689

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4690
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4692
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4693

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4694
  br label %kmalloc_index.exit.i, !dbg !4694

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4695
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4697
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4698

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4699
  br label %kmalloc_index.exit.i, !dbg !4699

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4700
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4702
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4703

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4704
  br label %kmalloc_index.exit.i, !dbg !4704

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4705
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4707
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4708

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4709
  br label %kmalloc_index.exit.i, !dbg !4709

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4710
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4712
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4713

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4714
  br label %kmalloc_index.exit.i, !dbg !4714

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4715
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4717
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4718

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4719
  br label %kmalloc_index.exit.i, !dbg !4719

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4720
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4722
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4723

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4724
  br label %kmalloc_index.exit.i, !dbg !4724

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4725
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4727
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4728

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4729
  br label %kmalloc_index.exit.i, !dbg !4729

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4730
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4732
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4733

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4734
  br label %kmalloc_index.exit.i, !dbg !4734

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4735
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4737
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4738

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4739
  br label %kmalloc_index.exit.i, !dbg !4739

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4740
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4742
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4743

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4744
  br label %kmalloc_index.exit.i, !dbg !4744

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4745
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4747
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4748

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4749
  br label %kmalloc_index.exit.i, !dbg !4749

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4750
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4752
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4753

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4754
  br label %kmalloc_index.exit.i, !dbg !4754

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4755
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4757
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4758

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4759
  br label %kmalloc_index.exit.i, !dbg !4759

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4760
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4762
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4763

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4764
  br label %kmalloc_index.exit.i, !dbg !4764

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4765, !srcloc !4768
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !4769, !srcloc !4772
  unreachable, !dbg !4773

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4774
  store i32 %45, i32* %index.i, align 4, !dbg !4775
  %46 = load i32, i32* %index.i, align 4, !dbg !4776
  %tobool.i = icmp ne i32 %46, 0, !dbg !4776
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4778

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4779
  br label %kmalloc.exit, !dbg !4779

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4780
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4781
  %and.i.i = and i32 %48, 17, !dbg !4781
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4781
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4781
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4781
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4781
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4783

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4784
  br label %kmalloc_type.exit.i, !dbg !4784

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4785
  %and2.i.i = and i32 %49, 1, !dbg !4786
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4785
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4785
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4785
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4787
  br label %kmalloc_type.exit.i, !dbg !4787

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4788
  %idxprom.i = zext i32 %51 to i64, !dbg !4789
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4789
  %52 = load i32, i32* %index.i, align 4, !dbg !4790
  %idxprom6.i = zext i32 %52 to i64, !dbg !4789
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4789
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4789
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4791
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4792
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4793
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4794
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4795
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4795
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4795
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4795
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4795
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4556
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4796
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4797
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4798
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4799
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4800
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4801
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4802
  store i8* %62, i8** %retval.i, align 8, !dbg !4803
  br label %kmalloc.exit, !dbg !4803

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4804
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4805
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4806
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4806
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4806
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4806
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4806
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4807
  br label %kmalloc.exit, !dbg !4807

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4808
  ret i8* %65, !dbg !4809
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_readreg(%struct.ds3000_state* %state, i8 zeroext %reg) #0 !dbg !4810 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.ds3000_state*, align 8
  %reg.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.ds3000_state* %state, %struct.ds3000_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state.addr, metadata !4813, metadata !DIExpression()), !dbg !4814
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4815, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4817, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.declare(metadata [1 x i8]* %b0, metadata !4819, metadata !DIExpression()), !dbg !4821
  %arrayinit.begin = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4822
  %0 = load i8, i8* %reg.addr, align 1, !dbg !4823
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !4822
  call void @llvm.dbg.declare(metadata [1 x i8]* %b1, metadata !4824, metadata !DIExpression()), !dbg !4825
  %1 = bitcast [1 x i8]* %b1 to i8*, !dbg !4825
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 1, i1 false), !dbg !4825
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !4826, metadata !DIExpression()), !dbg !4828
  %arrayinit.begin1 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4829
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 0, !dbg !4830
  %2 = load %struct.ds3000_state*, %struct.ds3000_state** %state.addr, align 8, !dbg !4831
  %config = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %2, i32 0, i32 1, !dbg !4832
  %3 = load %struct.ds3000_config*, %struct.ds3000_config** %config, align 8, !dbg !4832
  %demod_address = getelementptr inbounds %struct.ds3000_config, %struct.ds3000_config* %3, i32 0, i32 0, !dbg !4833
  %4 = load i8, i8* %demod_address, align 8, !dbg !4833
  %conv = zext i8 %4 to i16, !dbg !4831
  store i16 %conv, i16* %addr, align 16, !dbg !4830
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 1, !dbg !4830
  store i16 0, i16* %flags, align 2, !dbg !4830
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 2, !dbg !4830
  store i16 1, i16* %len, align 4, !dbg !4830
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 3, !dbg !4830
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4834
  store i8* %arraydecay, i8** %buf, align 8, !dbg !4830
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i64 1, !dbg !4829
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4835
  %5 = load %struct.ds3000_state*, %struct.ds3000_state** %state.addr, align 8, !dbg !4836
  %config3 = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %5, i32 0, i32 1, !dbg !4837
  %6 = load %struct.ds3000_config*, %struct.ds3000_config** %config3, align 8, !dbg !4837
  %demod_address4 = getelementptr inbounds %struct.ds3000_config, %struct.ds3000_config* %6, i32 0, i32 0, !dbg !4838
  %7 = load i8, i8* %demod_address4, align 8, !dbg !4838
  %conv5 = zext i8 %7 to i16, !dbg !4836
  store i16 %conv5, i16* %addr2, align 16, !dbg !4835
  %flags6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4835
  store i16 1, i16* %flags6, align 2, !dbg !4835
  %len7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4835
  store i16 1, i16* %len7, align 4, !dbg !4835
  %buf8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4835
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4839
  store i8* %arraydecay9, i8** %buf8, align 8, !dbg !4835
  %8 = load %struct.ds3000_state*, %struct.ds3000_state** %state.addr, align 8, !dbg !4840
  %i2c = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %8, i32 0, i32 0, !dbg !4841
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4841
  %arraydecay10 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4842
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %9, %struct.i2c_msg* %arraydecay10, i32 2) #9, !dbg !4843
  store i32 %call, i32* %ret, align 4, !dbg !4844
  %10 = load i32, i32* %ret, align 4, !dbg !4845
  %cmp = icmp ne i32 %10, 2, !dbg !4847
  br i1 %cmp, label %if.then, label %if.end, !dbg !4848

if.then:                                          ; preds = %entry
  %11 = load i8, i8* %reg.addr, align 1, !dbg !4849
  %conv12 = zext i8 %11 to i32, !dbg !4849
  %12 = load i32, i32* %ret, align 4, !dbg !4851
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.ds3000_readreg, i64 0, i64 0), i32 %conv12, i32 %12) #8, !dbg !4852
  %13 = load i32, i32* %ret, align 4, !dbg !4853
  store i32 %13, i32* %retval, align 4, !dbg !4854
  br label %return, !dbg !4854

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4855

do.body:                                          ; preds = %if.end
  %14 = load i32, i32* @debug, align 4, !dbg !4856
  %tobool = icmp ne i32 %14, 0, !dbg !4856
  br i1 %tobool, label %if.then14, label %if.end18, !dbg !4859

if.then14:                                        ; preds = %do.body
  %15 = load i8, i8* %reg.addr, align 1, !dbg !4856
  %conv15 = zext i8 %15 to i32, !dbg !4856
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4856
  %16 = load i8, i8* %arrayidx, align 1, !dbg !4856
  %conv16 = zext i8 %16 to i32, !dbg !4856
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.ds3000_readreg, i64 0, i64 0), i32 %conv15, i32 %conv16) #8, !dbg !4856
  br label %if.end18, !dbg !4856

if.end18:                                         ; preds = %if.then14, %do.body
  br label %do.end, !dbg !4859

do.end:                                           ; preds = %if.end18
  %arrayidx19 = getelementptr [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4860
  %17 = load i8, i8* %arrayidx19, align 1, !dbg !4860
  %conv20 = zext i8 %17 to i32, !dbg !4860
  store i32 %conv20, i32* %retval, align 4, !dbg !4861
  br label %return, !dbg !4861

return:                                           ; preds = %do.end, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !4862
  ret i32 %18, !dbg !4862
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_set_voltage(%struct.dvb_frontend* %fe, i32 %voltage) #0 !dbg !4863 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %voltage.addr = alloca i32, align 4
  %state = alloca %struct.ds3000_state*, align 8
  %data = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4864, metadata !DIExpression()), !dbg !4865
  store i32 %voltage, i32* %voltage.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %voltage.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state, metadata !4868, metadata !DIExpression()), !dbg !4869
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4870
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4871
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4871
  %2 = bitcast i8* %1 to %struct.ds3000_state*, !dbg !4870
  store %struct.ds3000_state* %2, %struct.ds3000_state** %state, align 8, !dbg !4869
  call void @llvm.dbg.declare(metadata i8* %data, metadata !4872, metadata !DIExpression()), !dbg !4873
  br label %do.body, !dbg !4874

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !4875
  %tobool = icmp ne i32 %3, 0, !dbg !4875
  br i1 %tobool, label %if.then, label %if.end, !dbg !4878

if.then:                                          ; preds = %do.body
  %4 = load i32, i32* %voltage.addr, align 4, !dbg !4875
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ds3000_set_voltage, i64 0, i64 0), i32 %4) #8, !dbg !4875
  br label %if.end, !dbg !4875

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4878

do.end:                                           ; preds = %if.end
  %5 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !4879
  %call1 = call i32 @ds3000_readreg(%struct.ds3000_state* %5, i8 zeroext -94) #9, !dbg !4880
  %conv = trunc i32 %call1 to i8, !dbg !4880
  store i8 %conv, i8* %data, align 1, !dbg !4881
  %6 = load i8, i8* %data, align 1, !dbg !4882
  %conv2 = zext i8 %6 to i32, !dbg !4882
  %or = or i32 %conv2, 3, !dbg !4882
  %conv3 = trunc i32 %or to i8, !dbg !4882
  store i8 %conv3, i8* %data, align 1, !dbg !4882
  %7 = load i32, i32* %voltage.addr, align 4, !dbg !4883
  switch i32 %7, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb6
    i32 2, label %sw.bb13
  ], !dbg !4884

sw.bb:                                            ; preds = %do.end
  %8 = load i8, i8* %data, align 1, !dbg !4885
  %conv4 = zext i8 %8 to i32, !dbg !4885
  %and = and i32 %conv4, -4, !dbg !4885
  %conv5 = trunc i32 %and to i8, !dbg !4885
  store i8 %conv5, i8* %data, align 1, !dbg !4885
  br label %sw.epilog, !dbg !4887

sw.bb6:                                           ; preds = %do.end
  %9 = load i8, i8* %data, align 1, !dbg !4888
  %conv7 = zext i8 %9 to i32, !dbg !4888
  %and8 = and i32 %conv7, -4, !dbg !4888
  %conv9 = trunc i32 %and8 to i8, !dbg !4888
  store i8 %conv9, i8* %data, align 1, !dbg !4888
  %10 = load i8, i8* %data, align 1, !dbg !4889
  %conv10 = zext i8 %10 to i32, !dbg !4889
  %or11 = or i32 %conv10, 1, !dbg !4889
  %conv12 = trunc i32 %or11 to i8, !dbg !4889
  store i8 %conv12, i8* %data, align 1, !dbg !4889
  br label %sw.epilog, !dbg !4890

sw.bb13:                                          ; preds = %do.end
  br label %sw.epilog, !dbg !4891

sw.epilog:                                        ; preds = %do.end, %sw.bb13, %sw.bb6, %sw.bb
  %11 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !4892
  %12 = load i8, i8* %data, align 1, !dbg !4893
  %conv14 = zext i8 %12 to i32, !dbg !4893
  %call15 = call i32 @ds3000_writereg(%struct.ds3000_state* %11, i32 162, i32 %conv14) #9, !dbg !4894
  ret i32 0, !dbg !4895
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4896 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4900, metadata !DIExpression()), !dbg !4905
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4907, metadata !DIExpression()), !dbg !4908
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4909, metadata !DIExpression()), !dbg !4910
  %0 = load i64, i64* %size.addr, align 8, !dbg !4911
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4913
  br i1 %1, label %if.then, label %if.end447, !dbg !4914

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4915
  %tobool = icmp ne i64 %2, 0, !dbg !4915
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4918

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4919
  br label %return, !dbg !4919

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4920
  %cmp = icmp ult i64 %3, 4096, !dbg !4922
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4923

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4924
  br label %return, !dbg !4924

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub = sub i64 %4, 1, !dbg !4925
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4925
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4925

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub4 = sub i64 %6, 1, !dbg !4925
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4925
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4925

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub6 = sub i64 %8, 1, !dbg !4925
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4925
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4925

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4925

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub9 = sub i64 %9, 1, !dbg !4925
  %and = and i64 %sub9, -9223372036854775808, !dbg !4925
  %tobool10 = icmp ne i64 %and, 0, !dbg !4925
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4925

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4925

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub13 = sub i64 %10, 1, !dbg !4925
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4925
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4925
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4925

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4925

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub18 = sub i64 %11, 1, !dbg !4925
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4925
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4925
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4925

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4925

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub23 = sub i64 %12, 1, !dbg !4925
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4925
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4925
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4925

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4925

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub28 = sub i64 %13, 1, !dbg !4925
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4925
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4925
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4925

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4925

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub33 = sub i64 %14, 1, !dbg !4925
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4925
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4925
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4925

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4925

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub38 = sub i64 %15, 1, !dbg !4925
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4925
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4925
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4925

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4925

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub43 = sub i64 %16, 1, !dbg !4925
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4925
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4925
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4925

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4925

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub48 = sub i64 %17, 1, !dbg !4925
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4925
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4925
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4925

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4925

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub53 = sub i64 %18, 1, !dbg !4925
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4925
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4925
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4925

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4925

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub58 = sub i64 %19, 1, !dbg !4925
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4925
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4925
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4925

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4925

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub63 = sub i64 %20, 1, !dbg !4925
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4925
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4925
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4925

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4925

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub68 = sub i64 %21, 1, !dbg !4925
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4925
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4925
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4925

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4925

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub73 = sub i64 %22, 1, !dbg !4925
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4925
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4925
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4925

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4925

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub78 = sub i64 %23, 1, !dbg !4925
  %and79 = and i64 %sub78, 562949953421312, !dbg !4925
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4925
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4925

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4925

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub83 = sub i64 %24, 1, !dbg !4925
  %and84 = and i64 %sub83, 281474976710656, !dbg !4925
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4925
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4925

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4925

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub88 = sub i64 %25, 1, !dbg !4925
  %and89 = and i64 %sub88, 140737488355328, !dbg !4925
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4925
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4925

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4925

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub93 = sub i64 %26, 1, !dbg !4925
  %and94 = and i64 %sub93, 70368744177664, !dbg !4925
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4925
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4925

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4925

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub98 = sub i64 %27, 1, !dbg !4925
  %and99 = and i64 %sub98, 35184372088832, !dbg !4925
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4925
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4925

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4925

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub103 = sub i64 %28, 1, !dbg !4925
  %and104 = and i64 %sub103, 17592186044416, !dbg !4925
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4925
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4925

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4925

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub108 = sub i64 %29, 1, !dbg !4925
  %and109 = and i64 %sub108, 8796093022208, !dbg !4925
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4925
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4925

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4925

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub113 = sub i64 %30, 1, !dbg !4925
  %and114 = and i64 %sub113, 4398046511104, !dbg !4925
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4925
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4925

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4925

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub118 = sub i64 %31, 1, !dbg !4925
  %and119 = and i64 %sub118, 2199023255552, !dbg !4925
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4925
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4925

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4925

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub123 = sub i64 %32, 1, !dbg !4925
  %and124 = and i64 %sub123, 1099511627776, !dbg !4925
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4925
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4925

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4925

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub128 = sub i64 %33, 1, !dbg !4925
  %and129 = and i64 %sub128, 549755813888, !dbg !4925
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4925
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4925

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4925

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub133 = sub i64 %34, 1, !dbg !4925
  %and134 = and i64 %sub133, 274877906944, !dbg !4925
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4925
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4925

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4925

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub138 = sub i64 %35, 1, !dbg !4925
  %and139 = and i64 %sub138, 137438953472, !dbg !4925
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4925
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4925

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4925

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub143 = sub i64 %36, 1, !dbg !4925
  %and144 = and i64 %sub143, 68719476736, !dbg !4925
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4925
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4925

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4925

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub148 = sub i64 %37, 1, !dbg !4925
  %and149 = and i64 %sub148, 34359738368, !dbg !4925
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4925
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4925

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4925

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub153 = sub i64 %38, 1, !dbg !4925
  %and154 = and i64 %sub153, 17179869184, !dbg !4925
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4925
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4925

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4925

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub158 = sub i64 %39, 1, !dbg !4925
  %and159 = and i64 %sub158, 8589934592, !dbg !4925
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4925
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4925

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4925

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub163 = sub i64 %40, 1, !dbg !4925
  %and164 = and i64 %sub163, 4294967296, !dbg !4925
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4925
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4925

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4925

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub168 = sub i64 %41, 1, !dbg !4925
  %and169 = and i64 %sub168, 2147483648, !dbg !4925
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4925
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4925

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4925

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub173 = sub i64 %42, 1, !dbg !4925
  %and174 = and i64 %sub173, 1073741824, !dbg !4925
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4925
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4925

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4925

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub178 = sub i64 %43, 1, !dbg !4925
  %and179 = and i64 %sub178, 536870912, !dbg !4925
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4925
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4925

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4925

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub183 = sub i64 %44, 1, !dbg !4925
  %and184 = and i64 %sub183, 268435456, !dbg !4925
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4925
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4925

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4925

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub188 = sub i64 %45, 1, !dbg !4925
  %and189 = and i64 %sub188, 134217728, !dbg !4925
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4925
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4925

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4925

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub193 = sub i64 %46, 1, !dbg !4925
  %and194 = and i64 %sub193, 67108864, !dbg !4925
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4925
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4925

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4925

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub198 = sub i64 %47, 1, !dbg !4925
  %and199 = and i64 %sub198, 33554432, !dbg !4925
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4925
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4925

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4925

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub203 = sub i64 %48, 1, !dbg !4925
  %and204 = and i64 %sub203, 16777216, !dbg !4925
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4925
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4925

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4925

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub208 = sub i64 %49, 1, !dbg !4925
  %and209 = and i64 %sub208, 8388608, !dbg !4925
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4925
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4925

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4925

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub213 = sub i64 %50, 1, !dbg !4925
  %and214 = and i64 %sub213, 4194304, !dbg !4925
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4925
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4925

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4925

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub218 = sub i64 %51, 1, !dbg !4925
  %and219 = and i64 %sub218, 2097152, !dbg !4925
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4925
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4925

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4925

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub223 = sub i64 %52, 1, !dbg !4925
  %and224 = and i64 %sub223, 1048576, !dbg !4925
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4925
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4925

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4925

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub228 = sub i64 %53, 1, !dbg !4925
  %and229 = and i64 %sub228, 524288, !dbg !4925
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4925
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4925

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4925

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub233 = sub i64 %54, 1, !dbg !4925
  %and234 = and i64 %sub233, 262144, !dbg !4925
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4925
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4925

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4925

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub238 = sub i64 %55, 1, !dbg !4925
  %and239 = and i64 %sub238, 131072, !dbg !4925
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4925
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4925

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4925

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub243 = sub i64 %56, 1, !dbg !4925
  %and244 = and i64 %sub243, 65536, !dbg !4925
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4925
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4925

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4925

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub248 = sub i64 %57, 1, !dbg !4925
  %and249 = and i64 %sub248, 32768, !dbg !4925
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4925
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4925

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4925

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub253 = sub i64 %58, 1, !dbg !4925
  %and254 = and i64 %sub253, 16384, !dbg !4925
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4925
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4925

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4925

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub258 = sub i64 %59, 1, !dbg !4925
  %and259 = and i64 %sub258, 8192, !dbg !4925
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4925
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4925

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4925

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub263 = sub i64 %60, 1, !dbg !4925
  %and264 = and i64 %sub263, 4096, !dbg !4925
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4925
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4925

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4925

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub268 = sub i64 %61, 1, !dbg !4925
  %and269 = and i64 %sub268, 2048, !dbg !4925
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4925
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4925

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4925

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub273 = sub i64 %62, 1, !dbg !4925
  %and274 = and i64 %sub273, 1024, !dbg !4925
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4925
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4925

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4925

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub278 = sub i64 %63, 1, !dbg !4925
  %and279 = and i64 %sub278, 512, !dbg !4925
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4925
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4925

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4925

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub283 = sub i64 %64, 1, !dbg !4925
  %and284 = and i64 %sub283, 256, !dbg !4925
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4925
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4925

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4925

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub288 = sub i64 %65, 1, !dbg !4925
  %and289 = and i64 %sub288, 128, !dbg !4925
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4925
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4925

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4925

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub293 = sub i64 %66, 1, !dbg !4925
  %and294 = and i64 %sub293, 64, !dbg !4925
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4925
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4925

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4925

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub298 = sub i64 %67, 1, !dbg !4925
  %and299 = and i64 %sub298, 32, !dbg !4925
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4925
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4925

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4925

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub303 = sub i64 %68, 1, !dbg !4925
  %and304 = and i64 %sub303, 16, !dbg !4925
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4925
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4925

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4925

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub308 = sub i64 %69, 1, !dbg !4925
  %and309 = and i64 %sub308, 8, !dbg !4925
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4925
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4925

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4925

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub313 = sub i64 %70, 1, !dbg !4925
  %and314 = and i64 %sub313, 4, !dbg !4925
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4925
  %71 = zext i1 %tobool315 to i64, !dbg !4925
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4925
  br label %cond.end, !dbg !4925

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4925
  br label %cond.end317, !dbg !4925

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4925
  br label %cond.end319, !dbg !4925

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4925
  br label %cond.end321, !dbg !4925

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4925
  br label %cond.end323, !dbg !4925

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4925
  br label %cond.end325, !dbg !4925

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4925
  br label %cond.end327, !dbg !4925

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4925
  br label %cond.end329, !dbg !4925

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4925
  br label %cond.end331, !dbg !4925

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4925
  br label %cond.end333, !dbg !4925

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4925
  br label %cond.end335, !dbg !4925

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4925
  br label %cond.end337, !dbg !4925

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4925
  br label %cond.end339, !dbg !4925

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4925
  br label %cond.end341, !dbg !4925

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4925
  br label %cond.end343, !dbg !4925

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4925
  br label %cond.end345, !dbg !4925

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4925
  br label %cond.end347, !dbg !4925

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4925
  br label %cond.end349, !dbg !4925

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4925
  br label %cond.end351, !dbg !4925

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4925
  br label %cond.end353, !dbg !4925

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4925
  br label %cond.end355, !dbg !4925

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4925
  br label %cond.end357, !dbg !4925

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4925
  br label %cond.end359, !dbg !4925

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4925
  br label %cond.end361, !dbg !4925

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4925
  br label %cond.end363, !dbg !4925

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4925
  br label %cond.end365, !dbg !4925

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4925
  br label %cond.end367, !dbg !4925

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4925
  br label %cond.end369, !dbg !4925

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4925
  br label %cond.end371, !dbg !4925

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4925
  br label %cond.end373, !dbg !4925

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4925
  br label %cond.end375, !dbg !4925

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4925
  br label %cond.end377, !dbg !4925

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4925
  br label %cond.end379, !dbg !4925

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4925
  br label %cond.end381, !dbg !4925

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4925
  br label %cond.end383, !dbg !4925

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4925
  br label %cond.end385, !dbg !4925

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4925
  br label %cond.end387, !dbg !4925

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4925
  br label %cond.end389, !dbg !4925

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4925
  br label %cond.end391, !dbg !4925

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4925
  br label %cond.end393, !dbg !4925

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4925
  br label %cond.end395, !dbg !4925

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4925
  br label %cond.end397, !dbg !4925

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4925
  br label %cond.end399, !dbg !4925

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4925
  br label %cond.end401, !dbg !4925

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4925
  br label %cond.end403, !dbg !4925

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4925
  br label %cond.end405, !dbg !4925

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4925
  br label %cond.end407, !dbg !4925

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4925
  br label %cond.end409, !dbg !4925

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4925
  br label %cond.end411, !dbg !4925

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4925
  br label %cond.end413, !dbg !4925

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4925
  br label %cond.end415, !dbg !4925

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4925
  br label %cond.end417, !dbg !4925

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4925
  br label %cond.end419, !dbg !4925

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4925
  br label %cond.end421, !dbg !4925

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4925
  br label %cond.end423, !dbg !4925

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4925
  br label %cond.end425, !dbg !4925

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4925
  br label %cond.end427, !dbg !4925

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4925
  br label %cond.end429, !dbg !4925

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4925
  br label %cond.end431, !dbg !4925

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4925
  br label %cond.end433, !dbg !4925

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4925
  br label %cond.end435, !dbg !4925

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4925
  br label %cond.end437, !dbg !4925

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4925
  br label %cond.end440, !dbg !4925

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4925

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4925
  br label %cond.end444, !dbg !4925

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4925
  %sub443 = sub i64 %72, 1, !dbg !4925
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4925
  br label %cond.end444, !dbg !4925

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4925
  %sub446 = sub i32 %cond445, 12, !dbg !4926
  %add = add i32 %sub446, 1, !dbg !4927
  store i32 %add, i32* %retval, align 4, !dbg !4928
  br label %return, !dbg !4928

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4929
  %dec = add i64 %73, -1, !dbg !4929
  store i64 %dec, i64* %size.addr, align 8, !dbg !4929
  %74 = load i64, i64* %size.addr, align 8, !dbg !4930
  %shr = lshr i64 %74, 12, !dbg !4930
  store i64 %shr, i64* %size.addr, align 8, !dbg !4930
  %75 = load i64, i64* %size.addr, align 8, !dbg !4931
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4908
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4932
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4933
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4932, !srcloc !4934
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4932
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4935
  %add.i = add i32 %79, 1, !dbg !4936
  store i32 %add.i, i32* %retval, align 4, !dbg !4937
  br label %return, !dbg !4937

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4938
  ret i32 %80, !dbg !4938
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4939 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4900, metadata !DIExpression()), !dbg !4943
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4907, metadata !DIExpression()), !dbg !4945
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4946, metadata !DIExpression()), !dbg !4947
  %0 = load i64, i64* %n.addr, align 8, !dbg !4948
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4945
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4949
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4950
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4949, !srcloc !4934
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4949
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4951
  %add.i = add i32 %4, 1, !dbg !4952
  %sub = sub i32 %add.i, 1, !dbg !4953
  ret i32 %sub, !dbg !4954
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4955 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4959, metadata !DIExpression()), !dbg !4960
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4961, metadata !DIExpression()), !dbg !4962
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4963, metadata !DIExpression()), !dbg !4964
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4965, metadata !DIExpression()), !dbg !4966
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4967
  ret i8* %0, !dbg !4968
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_writereg(%struct.ds3000_state* %state, i32 %reg, i32 %data) #0 !dbg !4969 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.ds3000_state*, align 8
  %reg.addr = alloca i32, align 4
  %data.addr = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  %err = alloca i32, align 4
  store %struct.ds3000_state* %state, %struct.ds3000_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state.addr, metadata !4972, metadata !DIExpression()), !dbg !4973
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !4974, metadata !DIExpression()), !dbg !4975
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !4976, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !4978, metadata !DIExpression()), !dbg !4980
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !4981
  %0 = load i32, i32* %reg.addr, align 4, !dbg !4982
  %conv = trunc i32 %0 to i8, !dbg !4982
  store i8 %conv, i8* %arrayinit.begin, align 1, !dbg !4981
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !4981
  %1 = load i32, i32* %data.addr, align 4, !dbg !4983
  %conv1 = trunc i32 %1 to i8, !dbg !4983
  store i8 %conv1, i8* %arrayinit.element, align 1, !dbg !4981
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !4984, metadata !DIExpression()), !dbg !4985
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !4986
  %2 = load %struct.ds3000_state*, %struct.ds3000_state** %state.addr, align 8, !dbg !4987
  %config = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %2, i32 0, i32 1, !dbg !4988
  %3 = load %struct.ds3000_config*, %struct.ds3000_config** %config, align 8, !dbg !4988
  %demod_address = getelementptr inbounds %struct.ds3000_config, %struct.ds3000_config* %3, i32 0, i32 0, !dbg !4989
  %4 = load i8, i8* %demod_address, align 8, !dbg !4989
  %conv2 = zext i8 %4 to i16, !dbg !4987
  store i16 %conv2, i16* %addr, align 8, !dbg !4986
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !4986
  store i16 0, i16* %flags, align 2, !dbg !4986
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !4986
  store i16 2, i16* %len, align 4, !dbg !4986
  %buf3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !4986
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !4990
  store i8* %arraydecay, i8** %buf3, align 8, !dbg !4986
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4991, metadata !DIExpression()), !dbg !4992
  br label %do.body, !dbg !4993

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @debug, align 4, !dbg !4994
  %tobool = icmp ne i32 %5, 0, !dbg !4994
  br i1 %tobool, label %if.then, label %if.end, !dbg !4997

if.then:                                          ; preds = %do.body
  %6 = load i32, i32* %reg.addr, align 4, !dbg !4994
  %7 = load i32, i32* %data.addr, align 4, !dbg !4994
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ds3000_writereg, i64 0, i64 0), i32 %6, i32 %7) #8, !dbg !4994
  br label %if.end, !dbg !4994

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4997

do.end:                                           ; preds = %if.end
  %8 = load %struct.ds3000_state*, %struct.ds3000_state** %state.addr, align 8, !dbg !4998
  %i2c = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %8, i32 0, i32 0, !dbg !4999
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4999
  %call4 = call i32 @i2c_transfer(%struct.i2c_adapter* %9, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5000
  store i32 %call4, i32* %err, align 4, !dbg !5001
  %10 = load i32, i32* %err, align 4, !dbg !5002
  %cmp = icmp ne i32 %10, 1, !dbg !5004
  br i1 %cmp, label %if.then6, label %if.end8, !dbg !5005

if.then6:                                         ; preds = %do.end
  %11 = load i32, i32* %err, align 4, !dbg !5006
  %12 = load i32, i32* %reg.addr, align 4, !dbg !5008
  %13 = load i32, i32* %data.addr, align 4, !dbg !5009
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ds3000_writereg, i64 0, i64 0), i32 %11, i32 %12, i32 %13) #8, !dbg !5010
  store i32 -121, i32* %retval, align 4, !dbg !5011
  br label %return, !dbg !5011

if.end8:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !5012
  br label %return, !dbg !5012

return:                                           ; preds = %if.end8, %if.then6
  %14 = load i32, i32* %retval, align 4, !dbg !5013
  ret i32 %14, !dbg !5013
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ds3000_release(%struct.dvb_frontend* %fe) #0 !dbg !5014 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.ds3000_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5015, metadata !DIExpression()), !dbg !5016
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state, metadata !5017, metadata !DIExpression()), !dbg !5018
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5019
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5020
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5020
  %2 = bitcast i8* %1 to %struct.ds3000_state*, !dbg !5019
  store %struct.ds3000_state* %2, %struct.ds3000_state** %state, align 8, !dbg !5018
  %3 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5021
  %config = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %3, i32 0, i32 1, !dbg !5023
  %4 = load %struct.ds3000_config*, %struct.ds3000_config** %config, align 8, !dbg !5023
  %set_lock_led = getelementptr inbounds %struct.ds3000_config, %struct.ds3000_config* %4, i32 0, i32 3, !dbg !5024
  %5 = load void (%struct.dvb_frontend*, i32)*, void (%struct.dvb_frontend*, i32)** %set_lock_led, align 8, !dbg !5024
  %tobool = icmp ne void (%struct.dvb_frontend*, i32)* %5, null, !dbg !5021
  br i1 %tobool, label %if.then, label %if.end, !dbg !5025

if.then:                                          ; preds = %entry
  %6 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5026
  %config1 = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %6, i32 0, i32 1, !dbg !5027
  %7 = load %struct.ds3000_config*, %struct.ds3000_config** %config1, align 8, !dbg !5027
  %set_lock_led2 = getelementptr inbounds %struct.ds3000_config, %struct.ds3000_config* %7, i32 0, i32 3, !dbg !5028
  %8 = load void (%struct.dvb_frontend*, i32)*, void (%struct.dvb_frontend*, i32)** %set_lock_led2, align 8, !dbg !5028
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5029
  call void %8(%struct.dvb_frontend* %9, i32 0) #9, !dbg !5026
  br label %if.end, !dbg !5026

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !5030

do.body:                                          ; preds = %if.end
  %10 = load i32, i32* @debug, align 4, !dbg !5031
  %tobool3 = icmp ne i32 %10, 0, !dbg !5031
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5034

if.then4:                                         ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.ds3000_release, i64 0, i64 0)) #8, !dbg !5031
  br label %if.end5, !dbg !5031

if.end5:                                          ; preds = %if.then4, %do.body
  br label %do.end, !dbg !5034

do.end:                                           ; preds = %if.end5
  %11 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5035
  %12 = bitcast %struct.ds3000_state* %11 to i8*, !dbg !5035
  call void @kfree(i8* %12) #9, !dbg !5036
  ret void, !dbg !5037
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_initfe(%struct.dvb_frontend* %fe) #0 !dbg !5038 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.ds3000_state*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5039, metadata !DIExpression()), !dbg !5040
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state, metadata !5041, metadata !DIExpression()), !dbg !5042
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5043
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5044
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5044
  %2 = bitcast i8* %1 to %struct.ds3000_state*, !dbg !5043
  store %struct.ds3000_state* %2, %struct.ds3000_state** %state, align 8, !dbg !5042
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5045, metadata !DIExpression()), !dbg !5046
  br label %do.body, !dbg !5047

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5048
  %tobool = icmp ne i32 %3, 0, !dbg !5048
  br i1 %tobool, label %if.then, label %if.end, !dbg !5051

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ds3000_initfe, i64 0, i64 0)) #8, !dbg !5048
  br label %if.end, !dbg !5048

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5051

do.end:                                           ; preds = %if.end
  %4 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5052
  %5 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5053
  %call1 = call i32 @ds3000_readreg(%struct.ds3000_state* %5, i8 zeroext 8) #9, !dbg !5054
  %or = or i32 1, %call1, !dbg !5055
  %call2 = call i32 @ds3000_writereg(%struct.ds3000_state* %4, i32 8, i32 %or) #9, !dbg !5056
  call void @msleep(i32 1) #9, !dbg !5057
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5058
  %call3 = call i32 @ds3000_firmware_ondemand(%struct.dvb_frontend* %6) #9, !dbg !5059
  store i32 %call3, i32* %ret, align 4, !dbg !5060
  %7 = load i32, i32* %ret, align 4, !dbg !5061
  %cmp = icmp ne i32 %7, 0, !dbg !5063
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !5064

if.then4:                                         ; preds = %do.end
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ds3000_initfe, i64 0, i64 0)) #8, !dbg !5065
  %8 = load i32, i32* %ret, align 4, !dbg !5067
  store i32 %8, i32* %retval, align 4, !dbg !5068
  br label %return, !dbg !5068

if.end6:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !5069
  br label %return, !dbg !5069

return:                                           ; preds = %if.end6, %if.then4
  %9 = load i32, i32* %retval, align 4, !dbg !5070
  ret i32 %9, !dbg !5070
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_tune(%struct.dvb_frontend* %fe, i1 zeroext %re_tune, i32 %mode_flags, i32* %delay, i32* %status) #0 !dbg !5071 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %re_tune.addr = alloca i8, align 1
  %mode_flags.addr = alloca i32, align 4
  %delay.addr = alloca i32*, align 8
  %status.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5072, metadata !DIExpression()), !dbg !5073
  %frombool = zext i1 %re_tune to i8
  store i8 %frombool, i8* %re_tune.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %re_tune.addr, metadata !5074, metadata !DIExpression()), !dbg !5075
  store i32 %mode_flags, i32* %mode_flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode_flags.addr, metadata !5076, metadata !DIExpression()), !dbg !5077
  store i32* %delay, i32** %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %delay.addr, metadata !5078, metadata !DIExpression()), !dbg !5079
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5080, metadata !DIExpression()), !dbg !5081
  %0 = load i8, i8* %re_tune.addr, align 1, !dbg !5082
  %tobool = trunc i8 %0 to i1, !dbg !5082
  br i1 %tobool, label %if.then, label %if.end3, !dbg !5084

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5085, metadata !DIExpression()), !dbg !5087
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5088
  %call = call i32 @ds3000_set_frontend(%struct.dvb_frontend* %1) #9, !dbg !5089
  store i32 %call, i32* %ret, align 4, !dbg !5087
  %2 = load i32, i32* %ret, align 4, !dbg !5090
  %tobool1 = icmp ne i32 %2, 0, !dbg !5090
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !5092

if.then2:                                         ; preds = %if.then
  %3 = load i32, i32* %ret, align 4, !dbg !5093
  store i32 %3, i32* %retval, align 4, !dbg !5094
  br label %return, !dbg !5094

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !5095

if.end3:                                          ; preds = %if.end, %entry
  %4 = load i32*, i32** %delay.addr, align 8, !dbg !5096
  store i32 50, i32* %4, align 4, !dbg !5097
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5098
  %6 = load i32*, i32** %status.addr, align 8, !dbg !5099
  %call4 = call i32 @ds3000_read_status(%struct.dvb_frontend* %5, i32* %6) #9, !dbg !5100
  store i32 %call4, i32* %retval, align 4, !dbg !5101
  br label %return, !dbg !5101

return:                                           ; preds = %if.end3, %if.then2
  %7 = load i32, i32* %retval, align 4, !dbg !5102
  ret i32 %7, !dbg !5102
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_get_algo(%struct.dvb_frontend* %fe) #0 !dbg !5103 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.ds3000_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5104, metadata !DIExpression()), !dbg !5105
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state, metadata !5106, metadata !DIExpression()), !dbg !5107
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5108
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5109
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5109
  %2 = bitcast i8* %1 to %struct.ds3000_state*, !dbg !5108
  store %struct.ds3000_state* %2, %struct.ds3000_state** %state, align 8, !dbg !5107
  %3 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5110
  %config = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %3, i32 0, i32 1, !dbg !5112
  %4 = load %struct.ds3000_config*, %struct.ds3000_config** %config, align 8, !dbg !5112
  %set_lock_led = getelementptr inbounds %struct.ds3000_config, %struct.ds3000_config* %4, i32 0, i32 3, !dbg !5113
  %5 = load void (%struct.dvb_frontend*, i32)*, void (%struct.dvb_frontend*, i32)** %set_lock_led, align 8, !dbg !5113
  %tobool = icmp ne void (%struct.dvb_frontend*, i32)* %5, null, !dbg !5110
  br i1 %tobool, label %if.then, label %if.end, !dbg !5114

if.then:                                          ; preds = %entry
  %6 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5115
  %config1 = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %6, i32 0, i32 1, !dbg !5116
  %7 = load %struct.ds3000_config*, %struct.ds3000_config** %config1, align 8, !dbg !5116
  %set_lock_led2 = getelementptr inbounds %struct.ds3000_config, %struct.ds3000_config* %7, i32 0, i32 3, !dbg !5117
  %8 = load void (%struct.dvb_frontend*, i32)*, void (%struct.dvb_frontend*, i32)** %set_lock_led2, align 8, !dbg !5117
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5118
  call void %8(%struct.dvb_frontend* %9, i32 0) #9, !dbg !5115
  br label %if.end, !dbg !5115

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !5119

do.body:                                          ; preds = %if.end
  %10 = load i32, i32* @debug, align 4, !dbg !5120
  %tobool3 = icmp ne i32 %10, 0, !dbg !5120
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5123

if.then4:                                         ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ds3000_get_algo, i64 0, i64 0)) #8, !dbg !5120
  br label %if.end5, !dbg !5120

if.end5:                                          ; preds = %if.then4, %do.body
  br label %do.end, !dbg !5123

do.end:                                           ; preds = %if.end5
  ret i32 1, !dbg !5124
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_set_frontend(%struct.dvb_frontend* %fe) #0 !dbg !5125 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.ds3000_state*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %offset_khz = alloca i32, align 4
  %frequency = alloca i32, align 4
  %value = alloca i16, align 2
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5126, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state, metadata !5128, metadata !DIExpression()), !dbg !5129
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5130
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5131
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5131
  %2 = bitcast i8* %1 to %struct.ds3000_state*, !dbg !5130
  store %struct.ds3000_state* %2, %struct.ds3000_state** %state, align 8, !dbg !5129
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5132, metadata !DIExpression()), !dbg !5133
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5134
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 8, !dbg !5135
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5133
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5136, metadata !DIExpression()), !dbg !5137
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5138, metadata !DIExpression()), !dbg !5139
  call void @llvm.dbg.declare(metadata i32* %offset_khz, metadata !5140, metadata !DIExpression()), !dbg !5141
  call void @llvm.dbg.declare(metadata i32* %frequency, metadata !5142, metadata !DIExpression()), !dbg !5143
  call void @llvm.dbg.declare(metadata i16* %value, metadata !5144, metadata !DIExpression()), !dbg !5145
  br label %do.body, !dbg !5146

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @debug, align 4, !dbg !5147
  %tobool = icmp ne i32 %4, 0, !dbg !5147
  br i1 %tobool, label %if.then, label %if.end, !dbg !5150

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ds3000_set_frontend, i64 0, i64 0)) #8, !dbg !5147
  br label %if.end, !dbg !5147

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5150

do.end:                                           ; preds = %if.end
  %5 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5151
  %config = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %5, i32 0, i32 1, !dbg !5153
  %6 = load %struct.ds3000_config*, %struct.ds3000_config** %config, align 8, !dbg !5153
  %set_ts_params = getelementptr inbounds %struct.ds3000_config, %struct.ds3000_config* %6, i32 0, i32 2, !dbg !5154
  %7 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %set_ts_params, align 8, !dbg !5154
  %tobool1 = icmp ne i32 (%struct.dvb_frontend*, i32)* %7, null, !dbg !5151
  br i1 %tobool1, label %if.then2, label %if.end6, !dbg !5155

if.then2:                                         ; preds = %do.end
  %8 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5156
  %config3 = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %8, i32 0, i32 1, !dbg !5157
  %9 = load %struct.ds3000_config*, %struct.ds3000_config** %config3, align 8, !dbg !5157
  %set_ts_params4 = getelementptr inbounds %struct.ds3000_config, %struct.ds3000_config* %9, i32 0, i32 2, !dbg !5158
  %10 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %set_ts_params4, align 8, !dbg !5158
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5159
  %call5 = call i32 %10(%struct.dvb_frontend* %11, i32 0) #9, !dbg !5156
  br label %if.end6, !dbg !5156

if.end6:                                          ; preds = %if.then2, %do.end
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5160
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1, !dbg !5162
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5163
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5164
  %13 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5164
  %tobool7 = icmp ne i32 (%struct.dvb_frontend*)* %13, null, !dbg !5160
  br i1 %tobool7, label %if.then8, label %if.end13, !dbg !5165

if.then8:                                         ; preds = %if.end6
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5166
  %ops9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 1, !dbg !5167
  %tuner_ops10 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops9, i32 0, i32 30, !dbg !5168
  %set_params11 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops10, i32 0, i32 6, !dbg !5169
  %15 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params11, align 8, !dbg !5169
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5170
  %call12 = call i32 %15(%struct.dvb_frontend* %16) #9, !dbg !5166
  br label %if.end13, !dbg !5166

if.end13:                                         ; preds = %if.then8, %if.end6
  %17 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5171
  %call14 = call i32 @ds3000_writereg(%struct.ds3000_state* %17, i32 7, i32 128) #9, !dbg !5172
  %18 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5173
  %call15 = call i32 @ds3000_writereg(%struct.ds3000_state* %18, i32 7, i32 0) #9, !dbg !5174
  %19 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5175
  %call16 = call i32 @ds3000_writereg(%struct.ds3000_state* %19, i32 178, i32 1) #9, !dbg !5176
  %20 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5177
  %call17 = call i32 @ds3000_writereg(%struct.ds3000_state* %20, i32 0, i32 1) #9, !dbg !5178
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5179
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 15, !dbg !5180
  %22 = load i32, i32* %delivery_system, align 4, !dbg !5180
  switch i32 %22, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb33
  ], !dbg !5181

sw.bb:                                            ; preds = %if.end13
  store i32 0, i32* %i, align 4, !dbg !5182
  br label %for.cond, !dbg !5185

for.cond:                                         ; preds = %for.inc, %sw.bb
  %23 = load i32, i32* %i, align 4, !dbg !5186
  %conv = sext i32 %23 to i64, !dbg !5186
  %cmp = icmp ult i64 %conv, 162, !dbg !5188
  br i1 %cmp, label %for.body, label %for.end, !dbg !5189

for.body:                                         ; preds = %for.cond
  %24 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5190
  %25 = load i32, i32* %i, align 4, !dbg !5191
  %idxprom = sext i32 %25 to i64, !dbg !5192
  %arrayidx = getelementptr [162 x i8], [162 x i8]* @ds3000_dvbs_init_tab, i64 0, i64 %idxprom, !dbg !5192
  %26 = load i8, i8* %arrayidx, align 1, !dbg !5192
  %conv19 = zext i8 %26 to i32, !dbg !5192
  %27 = load i32, i32* %i, align 4, !dbg !5193
  %add = add i32 %27, 1, !dbg !5194
  %idxprom20 = sext i32 %add to i64, !dbg !5195
  %arrayidx21 = getelementptr [162 x i8], [162 x i8]* @ds3000_dvbs_init_tab, i64 0, i64 %idxprom20, !dbg !5195
  %28 = load i8, i8* %arrayidx21, align 1, !dbg !5195
  %conv22 = zext i8 %28 to i32, !dbg !5195
  %call23 = call i32 @ds3000_writereg(%struct.ds3000_state* %24, i32 %conv19, i32 %conv22) #9, !dbg !5196
  br label %for.inc, !dbg !5196

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !5197
  %add24 = add i32 %29, 2, !dbg !5197
  store i32 %add24, i32* %i, align 4, !dbg !5197
  br label %for.cond, !dbg !5198, !llvm.loop !5199

for.end:                                          ; preds = %for.cond
  %30 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5201
  %call25 = call i32 @ds3000_readreg(%struct.ds3000_state* %30, i8 zeroext -2) #9, !dbg !5202
  %conv26 = trunc i32 %call25 to i16, !dbg !5202
  store i16 %conv26, i16* %value, align 2, !dbg !5203
  %31 = load i16, i16* %value, align 2, !dbg !5204
  %conv27 = zext i16 %31 to i32, !dbg !5204
  %and = and i32 %conv27, 192, !dbg !5204
  %conv28 = trunc i32 %and to i16, !dbg !5204
  store i16 %conv28, i16* %value, align 2, !dbg !5204
  %32 = load i16, i16* %value, align 2, !dbg !5205
  %conv29 = zext i16 %32 to i32, !dbg !5205
  %or = or i32 %conv29, 27, !dbg !5205
  %conv30 = trunc i32 %or to i16, !dbg !5205
  store i16 %conv30, i16* %value, align 2, !dbg !5205
  %33 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5206
  %34 = load i16, i16* %value, align 2, !dbg !5207
  %conv31 = zext i16 %34 to i32, !dbg !5207
  %call32 = call i32 @ds3000_writereg(%struct.ds3000_state* %33, i32 254, i32 %conv31) #9, !dbg !5208
  br label %sw.epilog, !dbg !5209

sw.bb33:                                          ; preds = %if.end13
  store i32 0, i32* %i, align 4, !dbg !5210
  br label %for.cond34, !dbg !5212

for.cond34:                                       ; preds = %for.inc47, %sw.bb33
  %35 = load i32, i32* %i, align 4, !dbg !5213
  %conv35 = sext i32 %35 to i64, !dbg !5213
  %cmp36 = icmp ult i64 %conv35, 192, !dbg !5215
  br i1 %cmp36, label %for.body38, label %for.end49, !dbg !5216

for.body38:                                       ; preds = %for.cond34
  %36 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5217
  %37 = load i32, i32* %i, align 4, !dbg !5218
  %idxprom39 = sext i32 %37 to i64, !dbg !5219
  %arrayidx40 = getelementptr [192 x i8], [192 x i8]* @ds3000_dvbs2_init_tab, i64 0, i64 %idxprom39, !dbg !5219
  %38 = load i8, i8* %arrayidx40, align 1, !dbg !5219
  %conv41 = zext i8 %38 to i32, !dbg !5219
  %39 = load i32, i32* %i, align 4, !dbg !5220
  %add42 = add i32 %39, 1, !dbg !5221
  %idxprom43 = sext i32 %add42 to i64, !dbg !5222
  %arrayidx44 = getelementptr [192 x i8], [192 x i8]* @ds3000_dvbs2_init_tab, i64 0, i64 %idxprom43, !dbg !5222
  %40 = load i8, i8* %arrayidx44, align 1, !dbg !5222
  %conv45 = zext i8 %40 to i32, !dbg !5222
  %call46 = call i32 @ds3000_writereg(%struct.ds3000_state* %36, i32 %conv41, i32 %conv45) #9, !dbg !5223
  br label %for.inc47, !dbg !5223

for.inc47:                                        ; preds = %for.body38
  %41 = load i32, i32* %i, align 4, !dbg !5224
  %add48 = add i32 %41, 2, !dbg !5224
  store i32 %add48, i32* %i, align 4, !dbg !5224
  br label %for.cond34, !dbg !5225, !llvm.loop !5226

for.end49:                                        ; preds = %for.cond34
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5228
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 10, !dbg !5230
  %43 = load i32, i32* %symbol_rate, align 4, !dbg !5230
  %cmp50 = icmp uge i32 %43, 30000000, !dbg !5231
  br i1 %cmp50, label %if.then52, label %if.else, !dbg !5232

if.then52:                                        ; preds = %for.end49
  %44 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5233
  %call53 = call i32 @ds3000_writereg(%struct.ds3000_state* %44, i32 254, i32 84) #9, !dbg !5234
  br label %if.end55, !dbg !5234

if.else:                                          ; preds = %for.end49
  %45 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5235
  %call54 = call i32 @ds3000_writereg(%struct.ds3000_state* %45, i32 254, i32 152) #9, !dbg !5236
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then52
  br label %sw.epilog, !dbg !5237

sw.default:                                       ; preds = %if.end13
  store i32 -22, i32* %retval, align 4, !dbg !5238
  br label %return, !dbg !5238

sw.epilog:                                        ; preds = %if.end55, %for.end
  %46 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5239
  %call56 = call i32 @ds3000_writereg(%struct.ds3000_state* %46, i32 41, i32 128) #9, !dbg !5240
  %47 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5241
  %call57 = call i32 @ds3000_writereg(%struct.ds3000_state* %47, i32 37, i32 138) #9, !dbg !5242
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5243
  %symbol_rate58 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 10, !dbg !5245
  %49 = load i32, i32* %symbol_rate58, align 4, !dbg !5245
  %50 = load i32, i32* getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @ds3000_ops, i32 0, i32 0, i32 5), align 8, !dbg !5246
  %cmp59 = icmp ult i32 %49, %50, !dbg !5247
  br i1 %cmp59, label %if.then64, label %lor.lhs.false, !dbg !5248

lor.lhs.false:                                    ; preds = %sw.epilog
  %51 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5249
  %symbol_rate61 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %51, i32 0, i32 10, !dbg !5250
  %52 = load i32, i32* %symbol_rate61, align 4, !dbg !5250
  %53 = load i32, i32* getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @ds3000_ops, i32 0, i32 0, i32 6), align 4, !dbg !5251
  %cmp62 = icmp ugt i32 %52, %53, !dbg !5252
  br i1 %cmp62, label %if.then64, label %if.end72, !dbg !5253

if.then64:                                        ; preds = %lor.lhs.false, %sw.epilog
  br label %do.body65, !dbg !5254

do.body65:                                        ; preds = %if.then64
  %54 = load i32, i32* @debug, align 4, !dbg !5256
  %tobool66 = icmp ne i32 %54, 0, !dbg !5256
  br i1 %tobool66, label %if.then67, label %if.end70, !dbg !5259

if.then67:                                        ; preds = %do.body65
  %55 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5256
  %symbol_rate68 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %55, i32 0, i32 10, !dbg !5256
  %56 = load i32, i32* %symbol_rate68, align 4, !dbg !5256
  %57 = load i32, i32* getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @ds3000_ops, i32 0, i32 0, i32 5), align 8, !dbg !5256
  %58 = load i32, i32* getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @ds3000_ops, i32 0, i32 0, i32 6), align 4, !dbg !5256
  %call69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ds3000_set_frontend, i64 0, i64 0), i32 %56, i32 %57, i32 %58) #8, !dbg !5256
  br label %if.end70, !dbg !5256

if.end70:                                         ; preds = %if.then67, %do.body65
  br label %do.end71, !dbg !5259

do.end71:                                         ; preds = %if.end70
  store i32 -22, i32* %retval, align 4, !dbg !5260
  br label %return, !dbg !5260

if.end72:                                         ; preds = %lor.lhs.false
  %59 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5261
  %symbol_rate73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %59, i32 0, i32 10, !dbg !5263
  %60 = load i32, i32* %symbol_rate73, align 4, !dbg !5263
  %div = udiv i32 %60, 1000, !dbg !5264
  %cmp74 = icmp ule i32 %div, 5000, !dbg !5265
  br i1 %cmp74, label %if.then76, label %if.else92, !dbg !5266

if.then76:                                        ; preds = %if.end72
  %61 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5267
  %symbol_rate77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %61, i32 0, i32 10, !dbg !5269
  %62 = load i32, i32* %symbol_rate77, align 4, !dbg !5269
  %div78 = udiv i32 %62, 1000, !dbg !5270
  %div79 = udiv i32 29777, %div78, !dbg !5271
  %add80 = add i32 %div79, 1, !dbg !5272
  %conv81 = trunc i32 %add80 to i16, !dbg !5273
  store i16 %conv81, i16* %value, align 2, !dbg !5274
  %63 = load i16, i16* %value, align 2, !dbg !5275
  %conv82 = zext i16 %63 to i32, !dbg !5275
  %rem = srem i32 %conv82, 2, !dbg !5277
  %cmp83 = icmp ne i32 %rem, 0, !dbg !5278
  br i1 %cmp83, label %if.then85, label %if.end86, !dbg !5279

if.then85:                                        ; preds = %if.then76
  %64 = load i16, i16* %value, align 2, !dbg !5280
  %inc = add i16 %64, 1, !dbg !5280
  store i16 %inc, i16* %value, align 2, !dbg !5280
  br label %if.end86, !dbg !5281

if.end86:                                         ; preds = %if.then85, %if.then76
  %65 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5282
  %call87 = call i32 @ds3000_writereg(%struct.ds3000_state* %65, i32 195, i32 13) #9, !dbg !5283
  %66 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5284
  %67 = load i16, i16* %value, align 2, !dbg !5285
  %conv88 = zext i16 %67 to i32, !dbg !5285
  %call89 = call i32 @ds3000_writereg(%struct.ds3000_state* %66, i32 200, i32 %conv88) #9, !dbg !5286
  %68 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5287
  %call90 = call i32 @ds3000_writereg(%struct.ds3000_state* %68, i32 196, i32 16) #9, !dbg !5288
  %69 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5289
  %call91 = call i32 @ds3000_writereg(%struct.ds3000_state* %69, i32 199, i32 14) #9, !dbg !5290
  br label %if.end144, !dbg !5291

if.else92:                                        ; preds = %if.end72
  %70 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5292
  %symbol_rate93 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %70, i32 0, i32 10, !dbg !5294
  %71 = load i32, i32* %symbol_rate93, align 4, !dbg !5294
  %div94 = udiv i32 %71, 1000, !dbg !5295
  %cmp95 = icmp ule i32 %div94, 10000, !dbg !5296
  br i1 %cmp95, label %if.then97, label %if.else115, !dbg !5297

if.then97:                                        ; preds = %if.else92
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5298
  %symbol_rate98 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 10, !dbg !5300
  %73 = load i32, i32* %symbol_rate98, align 4, !dbg !5300
  %div99 = udiv i32 %73, 1000, !dbg !5301
  %div100 = udiv i32 92166, %div99, !dbg !5302
  %add101 = add i32 %div100, 1, !dbg !5303
  %conv102 = trunc i32 %add101 to i16, !dbg !5304
  store i16 %conv102, i16* %value, align 2, !dbg !5305
  %74 = load i16, i16* %value, align 2, !dbg !5306
  %conv103 = zext i16 %74 to i32, !dbg !5306
  %rem104 = srem i32 %conv103, 2, !dbg !5308
  %cmp105 = icmp ne i32 %rem104, 0, !dbg !5309
  br i1 %cmp105, label %if.then107, label %if.end109, !dbg !5310

if.then107:                                       ; preds = %if.then97
  %75 = load i16, i16* %value, align 2, !dbg !5311
  %inc108 = add i16 %75, 1, !dbg !5311
  store i16 %inc108, i16* %value, align 2, !dbg !5311
  br label %if.end109, !dbg !5312

if.end109:                                        ; preds = %if.then107, %if.then97
  %76 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5313
  %call110 = call i32 @ds3000_writereg(%struct.ds3000_state* %76, i32 195, i32 7) #9, !dbg !5314
  %77 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5315
  %78 = load i16, i16* %value, align 2, !dbg !5316
  %conv111 = zext i16 %78 to i32, !dbg !5316
  %call112 = call i32 @ds3000_writereg(%struct.ds3000_state* %77, i32 200, i32 %conv111) #9, !dbg !5317
  %79 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5318
  %call113 = call i32 @ds3000_writereg(%struct.ds3000_state* %79, i32 196, i32 9) #9, !dbg !5319
  %80 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5320
  %call114 = call i32 @ds3000_writereg(%struct.ds3000_state* %80, i32 199, i32 18) #9, !dbg !5321
  br label %if.end143, !dbg !5322

if.else115:                                       ; preds = %if.else92
  %81 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5323
  %symbol_rate116 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %81, i32 0, i32 10, !dbg !5325
  %82 = load i32, i32* %symbol_rate116, align 4, !dbg !5325
  %div117 = udiv i32 %82, 1000, !dbg !5326
  %cmp118 = icmp ule i32 %div117, 20000, !dbg !5327
  br i1 %cmp118, label %if.then120, label %if.else131, !dbg !5328

if.then120:                                       ; preds = %if.else115
  %83 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5329
  %symbol_rate121 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %83, i32 0, i32 10, !dbg !5331
  %84 = load i32, i32* %symbol_rate121, align 4, !dbg !5331
  %div122 = udiv i32 %84, 1000, !dbg !5332
  %div123 = udiv i32 64516, %div122, !dbg !5333
  %add124 = add i32 %div123, 1, !dbg !5334
  %conv125 = trunc i32 %add124 to i16, !dbg !5335
  store i16 %conv125, i16* %value, align 2, !dbg !5336
  %85 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5337
  %86 = load i16, i16* %value, align 2, !dbg !5338
  %conv126 = zext i16 %86 to i32, !dbg !5338
  %call127 = call i32 @ds3000_writereg(%struct.ds3000_state* %85, i32 195, i32 %conv126) #9, !dbg !5339
  %87 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5340
  %call128 = call i32 @ds3000_writereg(%struct.ds3000_state* %87, i32 200, i32 14) #9, !dbg !5341
  %88 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5342
  %call129 = call i32 @ds3000_writereg(%struct.ds3000_state* %88, i32 196, i32 7) #9, !dbg !5343
  %89 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5344
  %call130 = call i32 @ds3000_writereg(%struct.ds3000_state* %89, i32 199, i32 24) #9, !dbg !5345
  br label %if.end142, !dbg !5346

if.else131:                                       ; preds = %if.else115
  %90 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5347
  %symbol_rate132 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %90, i32 0, i32 10, !dbg !5349
  %91 = load i32, i32* %symbol_rate132, align 4, !dbg !5349
  %div133 = udiv i32 %91, 1000, !dbg !5350
  %div134 = udiv i32 129032, %div133, !dbg !5351
  %add135 = add i32 %div134, 1, !dbg !5352
  %conv136 = trunc i32 %add135 to i16, !dbg !5353
  store i16 %conv136, i16* %value, align 2, !dbg !5354
  %92 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5355
  %93 = load i16, i16* %value, align 2, !dbg !5356
  %conv137 = zext i16 %93 to i32, !dbg !5356
  %call138 = call i32 @ds3000_writereg(%struct.ds3000_state* %92, i32 195, i32 %conv137) #9, !dbg !5357
  %94 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5358
  %call139 = call i32 @ds3000_writereg(%struct.ds3000_state* %94, i32 200, i32 10) #9, !dbg !5359
  %95 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5360
  %call140 = call i32 @ds3000_writereg(%struct.ds3000_state* %95, i32 196, i32 5) #9, !dbg !5361
  %96 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5362
  %call141 = call i32 @ds3000_writereg(%struct.ds3000_state* %96, i32 199, i32 36) #9, !dbg !5363
  br label %if.end142

if.end142:                                        ; preds = %if.else131, %if.then120
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end109
  br label %if.end144

if.end144:                                        ; preds = %if.end143, %if.end86
  %97 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5364
  %symbol_rate145 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %97, i32 0, i32 10, !dbg !5365
  %98 = load i32, i32* %symbol_rate145, align 4, !dbg !5365
  %div146 = udiv i32 %98, 1000, !dbg !5366
  %shl = shl i32 %div146, 16, !dbg !5367
  %add147 = add i32 %shl, 48000, !dbg !5368
  %div148 = udiv i32 %add147, 96000, !dbg !5369
  %conv149 = trunc i32 %div148 to i16, !dbg !5370
  store i16 %conv149, i16* %value, align 2, !dbg !5371
  %99 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5372
  %100 = load i16, i16* %value, align 2, !dbg !5373
  %conv150 = zext i16 %100 to i32, !dbg !5373
  %and151 = and i32 %conv150, 255, !dbg !5374
  %call152 = call i32 @ds3000_writereg(%struct.ds3000_state* %99, i32 97, i32 %and151) #9, !dbg !5375
  %101 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5376
  %102 = load i16, i16* %value, align 2, !dbg !5377
  %conv153 = zext i16 %102 to i32, !dbg !5377
  %and154 = and i32 %conv153, 65280, !dbg !5378
  %shr = ashr i32 %and154, 8, !dbg !5379
  %call155 = call i32 @ds3000_writereg(%struct.ds3000_state* %101, i32 98, i32 %shr) #9, !dbg !5380
  %103 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5381
  %call156 = call i32 @ds3000_writereg(%struct.ds3000_state* %103, i32 86, i32 0) #9, !dbg !5382
  %104 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5383
  %call157 = call i32 @ds3000_writereg(%struct.ds3000_state* %104, i32 118, i32 0) #9, !dbg !5384
  %105 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5385
  %config158 = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %105, i32 0, i32 1, !dbg !5387
  %106 = load %struct.ds3000_config*, %struct.ds3000_config** %config158, align 8, !dbg !5387
  %ci_mode = getelementptr inbounds %struct.ds3000_config, %struct.ds3000_config* %106, i32 0, i32 1, !dbg !5388
  %107 = load i8, i8* %ci_mode, align 1, !dbg !5388
  %tobool159 = icmp ne i8 %107, 0, !dbg !5385
  br i1 %tobool159, label %if.then160, label %if.end168, !dbg !5389

if.then160:                                       ; preds = %if.end144
  %108 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5390
  %delivery_system161 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %108, i32 0, i32 15, !dbg !5392
  %109 = load i32, i32* %delivery_system161, align 4, !dbg !5392
  switch i32 %109, label %sw.default163 [
    i32 5, label %sw.bb162
    i32 6, label %sw.bb165
  ], !dbg !5393

sw.bb162:                                         ; preds = %if.then160
  br label %sw.default163, !dbg !5394

sw.default163:                                    ; preds = %if.then160, %sw.bb162
  %110 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5395
  %call164 = call i32 @ds3000_writereg(%struct.ds3000_state* %110, i32 253, i32 128) #9, !dbg !5397
  br label %sw.epilog167, !dbg !5398

sw.bb165:                                         ; preds = %if.then160
  %111 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5399
  %call166 = call i32 @ds3000_writereg(%struct.ds3000_state* %111, i32 253, i32 1) #9, !dbg !5400
  br label %sw.epilog167, !dbg !5401

sw.epilog167:                                     ; preds = %sw.bb165, %sw.default163
  br label %if.end168, !dbg !5402

if.end168:                                        ; preds = %sw.epilog167, %if.end144
  %112 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5403
  %call169 = call i32 @ds3000_writereg(%struct.ds3000_state* %112, i32 0, i32 0) #9, !dbg !5404
  %113 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5405
  %call170 = call i32 @ds3000_writereg(%struct.ds3000_state* %113, i32 178, i32 0) #9, !dbg !5406
  %114 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5407
  %ops171 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %114, i32 0, i32 1, !dbg !5409
  %tuner_ops172 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops171, i32 0, i32 30, !dbg !5410
  %get_frequency = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops172, i32 0, i32 9, !dbg !5411
  %115 = load i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)** %get_frequency, align 8, !dbg !5411
  %tobool173 = icmp ne i32 (%struct.dvb_frontend*, i32*)* %115, null, !dbg !5407
  br i1 %tobool173, label %if.then174, label %if.end181, !dbg !5412

if.then174:                                       ; preds = %if.end168
  %116 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5413
  %ops175 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %116, i32 0, i32 1, !dbg !5415
  %tuner_ops176 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops175, i32 0, i32 30, !dbg !5416
  %get_frequency177 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops176, i32 0, i32 9, !dbg !5417
  %117 = load i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)** %get_frequency177, align 8, !dbg !5417
  %118 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5418
  %call178 = call i32 %117(%struct.dvb_frontend* %118, i32* %frequency) #9, !dbg !5413
  %119 = load i32, i32* %frequency, align 4, !dbg !5419
  %120 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5420
  %frequency179 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %120, i32 0, i32 0, !dbg !5421
  %121 = load i32, i32* %frequency179, align 4, !dbg !5421
  %sub = sub i32 %119, %121, !dbg !5422
  store i32 %sub, i32* %offset_khz, align 4, !dbg !5423
  %122 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5424
  %123 = load i32, i32* %offset_khz, align 4, !dbg !5425
  %call180 = call i32 @ds3000_set_carrier_offset(%struct.dvb_frontend* %122, i32 %123) #9, !dbg !5426
  br label %if.end181, !dbg !5427

if.end181:                                        ; preds = %if.then174, %if.end168
  store i32 0, i32* %i, align 4, !dbg !5428
  br label %for.cond182, !dbg !5430

for.cond182:                                      ; preds = %for.inc191, %if.end181
  %124 = load i32, i32* %i, align 4, !dbg !5431
  %cmp183 = icmp slt i32 %124, 30, !dbg !5433
  br i1 %cmp183, label %for.body185, label %for.end193, !dbg !5434

for.body185:                                      ; preds = %for.cond182
  %125 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5435
  %call186 = call i32 @ds3000_read_status(%struct.dvb_frontend* %125, i32* %status) #9, !dbg !5437
  %126 = load i32, i32* %status, align 4, !dbg !5438
  %and187 = and i32 %126, 16, !dbg !5440
  %tobool188 = icmp ne i32 %and187, 0, !dbg !5440
  br i1 %tobool188, label %if.then189, label %if.end190, !dbg !5441

if.then189:                                       ; preds = %for.body185
  br label %for.end193, !dbg !5442

if.end190:                                        ; preds = %for.body185
  call void @msleep(i32 10) #9, !dbg !5443
  br label %for.inc191, !dbg !5444

for.inc191:                                       ; preds = %if.end190
  %127 = load i32, i32* %i, align 4, !dbg !5445
  %inc192 = add i32 %127, 1, !dbg !5445
  store i32 %inc192, i32* %i, align 4, !dbg !5445
  br label %for.cond182, !dbg !5446, !llvm.loop !5447

for.end193:                                       ; preds = %if.then189, %for.cond182
  store i32 0, i32* %retval, align 4, !dbg !5449
  br label %return, !dbg !5449

return:                                           ; preds = %for.end193, %do.end71, %sw.default
  %128 = load i32, i32* %retval, align 4, !dbg !5450
  ret i32 %128, !dbg !5450
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !5451 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.ds3000_state*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %lock = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state, metadata !5456, metadata !DIExpression()), !dbg !5457
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5458
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5459
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5459
  %2 = bitcast i8* %1 to %struct.ds3000_state*, !dbg !5458
  store %struct.ds3000_state* %2, %struct.ds3000_state** %state, align 8, !dbg !5457
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5460, metadata !DIExpression()), !dbg !5461
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5462
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 8, !dbg !5463
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5461
  call void @llvm.dbg.declare(metadata i32* %lock, metadata !5464, metadata !DIExpression()), !dbg !5465
  %4 = load i32*, i32** %status.addr, align 8, !dbg !5466
  store i32 0, i32* %4, align 4, !dbg !5467
  %5 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5468
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 15, !dbg !5469
  %6 = load i32, i32* %delivery_system, align 4, !dbg !5469
  switch i32 %6, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb1
  ], !dbg !5470

sw.bb:                                            ; preds = %entry
  %7 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5471
  %call = call i32 @ds3000_readreg(%struct.ds3000_state* %7, i8 zeroext -47) #9, !dbg !5473
  store i32 %call, i32* %lock, align 4, !dbg !5474
  %8 = load i32, i32* %lock, align 4, !dbg !5475
  %and = and i32 %8, 7, !dbg !5477
  %cmp = icmp eq i32 %and, 7, !dbg !5478
  br i1 %cmp, label %if.then, label %if.end, !dbg !5479

if.then:                                          ; preds = %sw.bb
  %9 = load i32*, i32** %status.addr, align 8, !dbg !5480
  store i32 31, i32* %9, align 4, !dbg !5481
  br label %if.end, !dbg !5482

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog, !dbg !5483

sw.bb1:                                           ; preds = %entry
  %10 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5484
  %call2 = call i32 @ds3000_readreg(%struct.ds3000_state* %10, i8 zeroext 13) #9, !dbg !5485
  store i32 %call2, i32* %lock, align 4, !dbg !5486
  %11 = load i32, i32* %lock, align 4, !dbg !5487
  %and3 = and i32 %11, 143, !dbg !5489
  %cmp4 = icmp eq i32 %and3, 143, !dbg !5490
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5491

if.then5:                                         ; preds = %sw.bb1
  %12 = load i32*, i32** %status.addr, align 8, !dbg !5492
  store i32 31, i32* %12, align 4, !dbg !5493
  br label %if.end6, !dbg !5494

if.end6:                                          ; preds = %if.then5, %sw.bb1
  br label %sw.epilog, !dbg !5495

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5496
  br label %return, !dbg !5496

sw.epilog:                                        ; preds = %if.end6, %if.end
  %13 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5497
  %config = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %13, i32 0, i32 1, !dbg !5499
  %14 = load %struct.ds3000_config*, %struct.ds3000_config** %config, align 8, !dbg !5499
  %set_lock_led = getelementptr inbounds %struct.ds3000_config, %struct.ds3000_config* %14, i32 0, i32 3, !dbg !5500
  %15 = load void (%struct.dvb_frontend*, i32)*, void (%struct.dvb_frontend*, i32)** %set_lock_led, align 8, !dbg !5500
  %tobool = icmp ne void (%struct.dvb_frontend*, i32)* %15, null, !dbg !5497
  br i1 %tobool, label %if.then7, label %if.end11, !dbg !5501

if.then7:                                         ; preds = %sw.epilog
  %16 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5502
  %config8 = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %16, i32 0, i32 1, !dbg !5503
  %17 = load %struct.ds3000_config*, %struct.ds3000_config** %config8, align 8, !dbg !5503
  %set_lock_led9 = getelementptr inbounds %struct.ds3000_config, %struct.ds3000_config* %17, i32 0, i32 3, !dbg !5504
  %18 = load void (%struct.dvb_frontend*, i32)*, void (%struct.dvb_frontend*, i32)** %set_lock_led9, align 8, !dbg !5504
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5505
  %20 = load i32*, i32** %status.addr, align 8, !dbg !5506
  %21 = load i32, i32* %20, align 4, !dbg !5507
  %cmp10 = icmp eq i32 %21, 0, !dbg !5508
  %22 = zext i1 %cmp10 to i64, !dbg !5507
  %cond = select i1 %cmp10, i32 0, i32 1, !dbg !5507
  call void %18(%struct.dvb_frontend* %19, i32 %cond) #9, !dbg !5502
  br label %if.end11, !dbg !5502

if.end11:                                         ; preds = %if.then7, %sw.epilog
  br label %do.body, !dbg !5509

do.body:                                          ; preds = %if.end11
  %23 = load i32, i32* @debug, align 4, !dbg !5510
  %tobool12 = icmp ne i32 %23, 0, !dbg !5510
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !5513

if.then13:                                        ; preds = %do.body
  %24 = load i32, i32* %lock, align 4, !dbg !5510
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ds3000_read_status, i64 0, i64 0), i32 %24) #8, !dbg !5510
  br label %if.end15, !dbg !5510

if.end15:                                         ; preds = %if.then13, %do.body
  br label %do.end, !dbg !5513

do.end:                                           ; preds = %if.end15
  store i32 0, i32* %retval, align 4, !dbg !5514
  br label %return, !dbg !5514

return:                                           ; preds = %do.end, %sw.default
  %25 = load i32, i32* %retval, align 4, !dbg !5515
  ret i32 %25, !dbg !5515
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5516 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %state = alloca %struct.ds3000_state*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %data = alloca i8, align 1
  %ber_reading = alloca i32, align 4
  %lpdc_frames = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5519, metadata !DIExpression()), !dbg !5520
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state, metadata !5521, metadata !DIExpression()), !dbg !5522
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5523
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5524
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5524
  %2 = bitcast i8* %1 to %struct.ds3000_state*, !dbg !5523
  store %struct.ds3000_state* %2, %struct.ds3000_state** %state, align 8, !dbg !5522
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5525, metadata !DIExpression()), !dbg !5526
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5527
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 8, !dbg !5528
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5526
  call void @llvm.dbg.declare(metadata i8* %data, metadata !5529, metadata !DIExpression()), !dbg !5530
  call void @llvm.dbg.declare(metadata i32* %ber_reading, metadata !5531, metadata !DIExpression()), !dbg !5532
  call void @llvm.dbg.declare(metadata i32* %lpdc_frames, metadata !5533, metadata !DIExpression()), !dbg !5534
  br label %do.body, !dbg !5535

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @debug, align 4, !dbg !5536
  %tobool = icmp ne i32 %4, 0, !dbg !5536
  br i1 %tobool, label %if.then, label %if.end, !dbg !5539

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ds3000_read_ber, i64 0, i64 0)) #8, !dbg !5536
  br label %if.end, !dbg !5536

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5539

do.end:                                           ; preds = %if.end
  %5 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5540
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 15, !dbg !5541
  %6 = load i32, i32* %delivery_system, align 4, !dbg !5541
  switch i32 %6, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb16
  ], !dbg !5542

sw.bb:                                            ; preds = %do.end
  %7 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5543
  %call1 = call i32 @ds3000_writereg(%struct.ds3000_state* %7, i32 249, i32 4) #9, !dbg !5545
  %8 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5546
  %call2 = call i32 @ds3000_readreg(%struct.ds3000_state* %8, i8 zeroext -8) #9, !dbg !5547
  %conv = trunc i32 %call2 to i8, !dbg !5547
  store i8 %conv, i8* %data, align 1, !dbg !5548
  %9 = load i8, i8* %data, align 1, !dbg !5549
  %conv3 = zext i8 %9 to i32, !dbg !5549
  %and = and i32 %conv3, 16, !dbg !5551
  %cmp = icmp eq i32 %and, 0, !dbg !5552
  br i1 %cmp, label %if.then5, label %if.else, !dbg !5553

if.then5:                                         ; preds = %sw.bb
  %10 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5554
  %call6 = call i32 @ds3000_readreg(%struct.ds3000_state* %10, i8 zeroext -9) #9, !dbg !5556
  %shl = shl i32 %call6, 8, !dbg !5557
  %11 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5558
  %call7 = call i32 @ds3000_readreg(%struct.ds3000_state* %11, i8 zeroext -10) #9, !dbg !5559
  %or = or i32 %shl, %call7, !dbg !5560
  %12 = load i32*, i32** %ber.addr, align 8, !dbg !5561
  store i32 %or, i32* %12, align 4, !dbg !5562
  %13 = load i8, i8* %data, align 1, !dbg !5563
  %conv8 = zext i8 %13 to i32, !dbg !5563
  %or9 = or i32 %conv8, 16, !dbg !5563
  %conv10 = trunc i32 %or9 to i8, !dbg !5563
  store i8 %conv10, i8* %data, align 1, !dbg !5563
  %14 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5564
  %15 = load i8, i8* %data, align 1, !dbg !5565
  %conv11 = zext i8 %15 to i32, !dbg !5565
  %call12 = call i32 @ds3000_writereg(%struct.ds3000_state* %14, i32 248, i32 %conv11) #9, !dbg !5566
  %16 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5567
  %17 = load i8, i8* %data, align 1, !dbg !5568
  %conv13 = zext i8 %17 to i32, !dbg !5568
  %call14 = call i32 @ds3000_writereg(%struct.ds3000_state* %16, i32 248, i32 %conv13) #9, !dbg !5569
  br label %if.end15, !dbg !5570

if.else:                                          ; preds = %sw.bb
  %18 = load i32*, i32** %ber.addr, align 8, !dbg !5571
  store i32 -1, i32* %18, align 4, !dbg !5572
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then5
  br label %sw.epilog, !dbg !5573

sw.bb16:                                          ; preds = %do.end
  %19 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5574
  %call17 = call i32 @ds3000_readreg(%struct.ds3000_state* %19, i8 zeroext -41) #9, !dbg !5575
  %shl18 = shl i32 %call17, 16, !dbg !5576
  %20 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5577
  %call19 = call i32 @ds3000_readreg(%struct.ds3000_state* %20, i8 zeroext -42) #9, !dbg !5578
  %shl20 = shl i32 %call19, 8, !dbg !5579
  %or21 = or i32 %shl18, %shl20, !dbg !5580
  %21 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5581
  %call22 = call i32 @ds3000_readreg(%struct.ds3000_state* %21, i8 zeroext -43) #9, !dbg !5582
  %or23 = or i32 %or21, %call22, !dbg !5583
  store i32 %or23, i32* %lpdc_frames, align 4, !dbg !5584
  %22 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5585
  %call24 = call i32 @ds3000_readreg(%struct.ds3000_state* %22, i8 zeroext -8) #9, !dbg !5586
  %shl25 = shl i32 %call24, 8, !dbg !5587
  %23 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5588
  %call26 = call i32 @ds3000_readreg(%struct.ds3000_state* %23, i8 zeroext -9) #9, !dbg !5589
  %or27 = or i32 %shl25, %call26, !dbg !5590
  store i32 %or27, i32* %ber_reading, align 4, !dbg !5591
  %24 = load i32, i32* %lpdc_frames, align 4, !dbg !5592
  %cmp28 = icmp ugt i32 %24, 750, !dbg !5594
  br i1 %cmp28, label %if.then30, label %if.else35, !dbg !5595

if.then30:                                        ; preds = %sw.bb16
  %25 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5596
  %call31 = call i32 @ds3000_writereg(%struct.ds3000_state* %25, i32 209, i32 1) #9, !dbg !5598
  %26 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5599
  %call32 = call i32 @ds3000_writereg(%struct.ds3000_state* %26, i32 249, i32 1) #9, !dbg !5600
  %27 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5601
  %call33 = call i32 @ds3000_writereg(%struct.ds3000_state* %27, i32 249, i32 0) #9, !dbg !5602
  %28 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5603
  %call34 = call i32 @ds3000_writereg(%struct.ds3000_state* %28, i32 209, i32 0) #9, !dbg !5604
  %29 = load i32, i32* %ber_reading, align 4, !dbg !5605
  %30 = load i32*, i32** %ber.addr, align 8, !dbg !5606
  store i32 %29, i32* %30, align 4, !dbg !5607
  br label %if.end36, !dbg !5608

if.else35:                                        ; preds = %sw.bb16
  %31 = load i32*, i32** %ber.addr, align 8, !dbg !5609
  store i32 -1, i32* %31, align 4, !dbg !5610
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %if.then30
  br label %sw.epilog, !dbg !5611

sw.default:                                       ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !5612
  br label %return, !dbg !5612

sw.epilog:                                        ; preds = %if.end36, %if.end15
  store i32 0, i32* %retval, align 4, !dbg !5613
  br label %return, !dbg !5613

return:                                           ; preds = %sw.epilog, %sw.default
  %32 = load i32, i32* %retval, align 4, !dbg !5614
  ret i32 %32, !dbg !5614
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_read_signal_strength(%struct.dvb_frontend* %fe, i16* %signal_strength) #0 !dbg !5615 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %signal_strength.addr = alloca i16*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5616, metadata !DIExpression()), !dbg !5617
  store i16* %signal_strength, i16** %signal_strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %signal_strength.addr, metadata !5618, metadata !DIExpression()), !dbg !5619
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5620
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 1, !dbg !5622
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5623
  %get_rf_strength = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 13, !dbg !5624
  %1 = load i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)** %get_rf_strength, align 8, !dbg !5624
  %tobool = icmp ne i32 (%struct.dvb_frontend*, i16*)* %1, null, !dbg !5620
  br i1 %tobool, label %if.then, label %if.end, !dbg !5625

if.then:                                          ; preds = %entry
  %2 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5626
  %ops1 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %2, i32 0, i32 1, !dbg !5627
  %tuner_ops2 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops1, i32 0, i32 30, !dbg !5628
  %get_rf_strength3 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops2, i32 0, i32 13, !dbg !5629
  %3 = load i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)** %get_rf_strength3, align 8, !dbg !5629
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5630
  %5 = load i16*, i16** %signal_strength.addr, align 8, !dbg !5631
  %call = call i32 %3(%struct.dvb_frontend* %4, i16* %5) #9, !dbg !5626
  br label %if.end, !dbg !5626

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !5632
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !4313 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %state = alloca %struct.ds3000_state*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %snr_reading = alloca i8, align 1
  %snr_value = alloca i8, align 1
  %dvbs2_signal_reading = alloca i32, align 4
  %dvbs2_noise_reading = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5633, metadata !DIExpression()), !dbg !5634
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5635, metadata !DIExpression()), !dbg !5636
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state, metadata !5637, metadata !DIExpression()), !dbg !5638
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5639
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5640
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5640
  %2 = bitcast i8* %1 to %struct.ds3000_state*, !dbg !5639
  store %struct.ds3000_state* %2, %struct.ds3000_state** %state, align 8, !dbg !5638
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5641, metadata !DIExpression()), !dbg !5642
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5643
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 8, !dbg !5644
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5642
  call void @llvm.dbg.declare(metadata i8* %snr_reading, metadata !5645, metadata !DIExpression()), !dbg !5646
  call void @llvm.dbg.declare(metadata i8* %snr_value, metadata !5647, metadata !DIExpression()), !dbg !5648
  call void @llvm.dbg.declare(metadata i32* %dvbs2_signal_reading, metadata !5649, metadata !DIExpression()), !dbg !5650
  call void @llvm.dbg.declare(metadata i32* %dvbs2_noise_reading, metadata !5651, metadata !DIExpression()), !dbg !5652
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5653, metadata !DIExpression()), !dbg !5654
  br label %do.body, !dbg !5655

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @debug, align 4, !dbg !5656
  %tobool = icmp ne i32 %4, 0, !dbg !5656
  br i1 %tobool, label %if.then, label %if.end, !dbg !5659

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ds3000_read_snr, i64 0, i64 0)) #8, !dbg !5656
  br label %if.end, !dbg !5656

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5659

do.end:                                           ; preds = %if.end
  %5 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5660
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 15, !dbg !5661
  %6 = load i32, i32* %delivery_system, align 4, !dbg !5661
  switch i32 %6, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb29
  ], !dbg !5662

sw.bb:                                            ; preds = %do.end
  %7 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5663
  %call1 = call i32 @ds3000_readreg(%struct.ds3000_state* %7, i8 zeroext -1) #9, !dbg !5665
  %conv = trunc i32 %call1 to i8, !dbg !5665
  store i8 %conv, i8* %snr_reading, align 1, !dbg !5666
  %8 = load i8, i8* %snr_reading, align 1, !dbg !5667
  %conv2 = zext i8 %8 to i32, !dbg !5667
  %div = sdiv i32 %conv2, 8, !dbg !5667
  %conv3 = trunc i32 %div to i8, !dbg !5667
  store i8 %conv3, i8* %snr_reading, align 1, !dbg !5667
  %9 = load i8, i8* %snr_reading, align 1, !dbg !5668
  %conv4 = zext i8 %9 to i32, !dbg !5668
  %cmp = icmp eq i32 %conv4, 0, !dbg !5670
  br i1 %cmp, label %if.then6, label %if.else, !dbg !5671

if.then6:                                         ; preds = %sw.bb
  %10 = load i16*, i16** %snr.addr, align 8, !dbg !5672
  store i16 0, i16* %10, align 2, !dbg !5673
  br label %if.end20, !dbg !5674

if.else:                                          ; preds = %sw.bb
  %11 = load i8, i8* %snr_reading, align 1, !dbg !5675
  %conv7 = zext i8 %11 to i32, !dbg !5675
  %cmp8 = icmp sgt i32 %conv7, 20, !dbg !5678
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !5679

if.then10:                                        ; preds = %if.else
  store i8 20, i8* %snr_reading, align 1, !dbg !5680
  br label %if.end11, !dbg !5681

if.end11:                                         ; preds = %if.then10, %if.else
  %12 = load i8, i8* %snr_reading, align 1, !dbg !5682
  %conv12 = zext i8 %12 to i32, !dbg !5682
  %sub = sub i32 %conv12, 1, !dbg !5683
  %idxprom = sext i32 %sub to i64, !dbg !5684
  %arrayidx = getelementptr [20 x i16], [20 x i16]* @ds3000_read_snr.dvbs_snr_tab, i64 0, i64 %idxprom, !dbg !5684
  %13 = load i16, i16* %arrayidx, align 2, !dbg !5684
  %conv13 = zext i16 %13 to i32, !dbg !5684
  %mul = mul i32 %conv13, 10, !dbg !5685
  %div14 = sdiv i32 %mul, 23026, !dbg !5686
  %conv15 = trunc i32 %div14 to i8, !dbg !5684
  store i8 %conv15, i8* %snr_value, align 1, !dbg !5687
  %14 = load i8, i8* %snr_value, align 1, !dbg !5688
  %conv16 = zext i8 %14 to i32, !dbg !5688
  %mul17 = mul i32 %conv16, 8, !dbg !5689
  %mul18 = mul i32 %mul17, 655, !dbg !5690
  %conv19 = trunc i32 %mul18 to i16, !dbg !5688
  %15 = load i16*, i16** %snr.addr, align 8, !dbg !5691
  store i16 %conv19, i16* %15, align 2, !dbg !5692
  br label %if.end20

if.end20:                                         ; preds = %if.end11, %if.then6
  br label %do.body21, !dbg !5693

do.body21:                                        ; preds = %if.end20
  %16 = load i32, i32* @debug, align 4, !dbg !5694
  %tobool22 = icmp ne i32 %16, 0, !dbg !5694
  br i1 %tobool22, label %if.then23, label %if.end27, !dbg !5697

if.then23:                                        ; preds = %do.body21
  %17 = load i8, i8* %snr_reading, align 1, !dbg !5694
  %conv24 = zext i8 %17 to i32, !dbg !5694
  %18 = load i16*, i16** %snr.addr, align 8, !dbg !5694
  %19 = load i16, i16* %18, align 2, !dbg !5694
  %conv25 = zext i16 %19 to i32, !dbg !5694
  %call26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ds3000_read_snr, i64 0, i64 0), i32 %conv24, i32 %conv25) #8, !dbg !5694
  br label %if.end27, !dbg !5694

if.end27:                                         ; preds = %if.then23, %do.body21
  br label %do.end28, !dbg !5697

do.end28:                                         ; preds = %if.end27
  br label %sw.epilog, !dbg !5698

sw.bb29:                                          ; preds = %do.end
  %20 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5699
  %call30 = call i32 @ds3000_readreg(%struct.ds3000_state* %20, i8 zeroext -116) #9, !dbg !5700
  %and = and i32 %call30, 63, !dbg !5701
  %21 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5702
  %call31 = call i32 @ds3000_readreg(%struct.ds3000_state* %21, i8 zeroext -115) #9, !dbg !5703
  %shl = shl i32 %call31, 4, !dbg !5704
  %add = add i32 %and, %shl, !dbg !5705
  store i32 %add, i32* %dvbs2_noise_reading, align 4, !dbg !5706
  %22 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5707
  %call32 = call i32 @ds3000_readreg(%struct.ds3000_state* %22, i8 zeroext -114) #9, !dbg !5708
  store i32 %call32, i32* %dvbs2_signal_reading, align 4, !dbg !5709
  %23 = load i32, i32* %dvbs2_signal_reading, align 4, !dbg !5710
  %24 = load i32, i32* %dvbs2_signal_reading, align 4, !dbg !5711
  %mul33 = mul i32 %23, %24, !dbg !5712
  %shr = lshr i32 %mul33, 1, !dbg !5713
  store i32 %shr, i32* %tmp, align 4, !dbg !5714
  %25 = load i32, i32* %tmp, align 4, !dbg !5715
  %cmp34 = icmp eq i32 %25, 0, !dbg !5717
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !5718

if.then36:                                        ; preds = %sw.bb29
  %26 = load i16*, i16** %snr.addr, align 8, !dbg !5719
  store i16 0, i16* %26, align 2, !dbg !5721
  store i32 0, i32* %retval, align 4, !dbg !5722
  br label %return, !dbg !5722

if.end37:                                         ; preds = %sw.bb29
  %27 = load i32, i32* %dvbs2_noise_reading, align 4, !dbg !5723
  %cmp38 = icmp eq i32 %27, 0, !dbg !5725
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !5726

if.then40:                                        ; preds = %if.end37
  store i8 19, i8* %snr_value, align 1, !dbg !5727
  %28 = load i16*, i16** %snr.addr, align 8, !dbg !5729
  store i16 -1, i16* %28, align 2, !dbg !5730
  store i32 0, i32* %retval, align 4, !dbg !5731
  br label %return, !dbg !5731

if.end41:                                         ; preds = %if.end37
  %29 = load i32, i32* %tmp, align 4, !dbg !5732
  %30 = load i32, i32* %dvbs2_noise_reading, align 4, !dbg !5734
  %cmp42 = icmp ugt i32 %29, %30, !dbg !5735
  br i1 %cmp42, label %if.then44, label %if.else63, !dbg !5736

if.then44:                                        ; preds = %if.end41
  %31 = load i32, i32* %tmp, align 4, !dbg !5737
  %32 = load i32, i32* %dvbs2_noise_reading, align 4, !dbg !5739
  %div45 = udiv i32 %31, %32, !dbg !5740
  %conv46 = trunc i32 %div45 to i8, !dbg !5737
  store i8 %conv46, i8* %snr_reading, align 1, !dbg !5741
  %33 = load i8, i8* %snr_reading, align 1, !dbg !5742
  %conv47 = zext i8 %33 to i32, !dbg !5742
  %cmp48 = icmp sgt i32 %conv47, 80, !dbg !5744
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !5745

if.then50:                                        ; preds = %if.then44
  store i8 80, i8* %snr_reading, align 1, !dbg !5746
  br label %if.end51, !dbg !5747

if.end51:                                         ; preds = %if.then50, %if.then44
  %34 = load i8, i8* %snr_reading, align 1, !dbg !5748
  %conv52 = zext i8 %34 to i32, !dbg !5748
  %sub53 = sub i32 %conv52, 1, !dbg !5749
  %idxprom54 = sext i32 %sub53 to i64, !dbg !5750
  %arrayidx55 = getelementptr [80 x i16], [80 x i16]* @ds3000_read_snr.dvbs2_snr_tab, i64 0, i64 %idxprom54, !dbg !5750
  %35 = load i16, i16* %arrayidx55, align 2, !dbg !5750
  %conv56 = zext i16 %35 to i32, !dbg !5750
  %div57 = sdiv i32 %conv56, 1000, !dbg !5751
  %conv58 = trunc i32 %div57 to i8, !dbg !5750
  store i8 %conv58, i8* %snr_value, align 1, !dbg !5752
  %36 = load i8, i8* %snr_value, align 1, !dbg !5753
  %conv59 = zext i8 %36 to i32, !dbg !5753
  %mul60 = mul i32 %conv59, 5, !dbg !5754
  %mul61 = mul i32 %mul60, 655, !dbg !5755
  %conv62 = trunc i32 %mul61 to i16, !dbg !5753
  %37 = load i16*, i16** %snr.addr, align 8, !dbg !5756
  store i16 %conv62, i16* %37, align 2, !dbg !5757
  br label %if.end79, !dbg !5758

if.else63:                                        ; preds = %if.end41
  %38 = load i32, i32* %dvbs2_noise_reading, align 4, !dbg !5759
  %39 = load i32, i32* %tmp, align 4, !dbg !5761
  %div64 = udiv i32 %38, %39, !dbg !5762
  %conv65 = trunc i32 %div64 to i8, !dbg !5759
  store i8 %conv65, i8* %snr_reading, align 1, !dbg !5763
  %40 = load i8, i8* %snr_reading, align 1, !dbg !5764
  %conv66 = zext i8 %40 to i32, !dbg !5764
  %cmp67 = icmp sgt i32 %conv66, 80, !dbg !5766
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !5767

if.then69:                                        ; preds = %if.else63
  store i8 80, i8* %snr_reading, align 1, !dbg !5768
  br label %if.end70, !dbg !5769

if.end70:                                         ; preds = %if.then69, %if.else63
  %41 = load i8, i8* %snr_reading, align 1, !dbg !5770
  %conv71 = zext i8 %41 to i32, !dbg !5770
  %sub72 = sub i32 %conv71, 1, !dbg !5771
  %idxprom73 = sext i32 %sub72 to i64, !dbg !5772
  %arrayidx74 = getelementptr [80 x i16], [80 x i16]* @ds3000_read_snr.dvbs2_snr_tab, i64 0, i64 %idxprom73, !dbg !5772
  %42 = load i16, i16* %arrayidx74, align 2, !dbg !5772
  %conv75 = zext i16 %42 to i32, !dbg !5772
  %div76 = sdiv i32 %conv75, 1000, !dbg !5773
  %sub77 = sub i32 0, %div76, !dbg !5774
  %conv78 = trunc i32 %sub77 to i16, !dbg !5774
  %43 = load i16*, i16** %snr.addr, align 8, !dbg !5775
  store i16 %conv78, i16* %43, align 2, !dbg !5776
  br label %if.end79

if.end79:                                         ; preds = %if.end70, %if.end51
  br label %do.body80, !dbg !5777

do.body80:                                        ; preds = %if.end79
  %44 = load i32, i32* @debug, align 4, !dbg !5778
  %tobool81 = icmp ne i32 %44, 0, !dbg !5778
  br i1 %tobool81, label %if.then82, label %if.end86, !dbg !5781

if.then82:                                        ; preds = %do.body80
  %45 = load i8, i8* %snr_reading, align 1, !dbg !5778
  %conv83 = zext i8 %45 to i32, !dbg !5778
  %46 = load i16*, i16** %snr.addr, align 8, !dbg !5778
  %47 = load i16, i16* %46, align 2, !dbg !5778
  %conv84 = zext i16 %47 to i32, !dbg !5778
  %call85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ds3000_read_snr, i64 0, i64 0), i32 %conv83, i32 %conv84) #8, !dbg !5778
  br label %if.end86, !dbg !5778

if.end86:                                         ; preds = %if.then82, %do.body80
  br label %do.end87, !dbg !5781

do.end87:                                         ; preds = %if.end86
  br label %sw.epilog, !dbg !5782

sw.default:                                       ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !5783
  br label %return, !dbg !5783

sw.epilog:                                        ; preds = %do.end87, %do.end28
  store i32 0, i32* %retval, align 4, !dbg !5784
  br label %return, !dbg !5784

return:                                           ; preds = %sw.epilog, %sw.default, %if.then40, %if.then36
  %48 = load i32, i32* %retval, align 4, !dbg !5785
  ret i32 %48, !dbg !5785
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !5786 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  %state = alloca %struct.ds3000_state*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %data = alloca i8, align 1
  %_ucblocks = alloca i16, align 2
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5787, metadata !DIExpression()), !dbg !5788
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !5789, metadata !DIExpression()), !dbg !5790
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state, metadata !5791, metadata !DIExpression()), !dbg !5792
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5793
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5794
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5794
  %2 = bitcast i8* %1 to %struct.ds3000_state*, !dbg !5793
  store %struct.ds3000_state* %2, %struct.ds3000_state** %state, align 8, !dbg !5792
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5795, metadata !DIExpression()), !dbg !5796
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5797
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 8, !dbg !5798
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5796
  call void @llvm.dbg.declare(metadata i8* %data, metadata !5799, metadata !DIExpression()), !dbg !5800
  call void @llvm.dbg.declare(metadata i16* %_ucblocks, metadata !5801, metadata !DIExpression()), !dbg !5802
  br label %do.body, !dbg !5803

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @debug, align 4, !dbg !5804
  %tobool = icmp ne i32 %4, 0, !dbg !5804
  br i1 %tobool, label %if.then, label %if.end, !dbg !5807

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ds3000_read_ucblocks, i64 0, i64 0)) #8, !dbg !5804
  br label %if.end, !dbg !5804

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5807

do.end:                                           ; preds = %if.end
  %5 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5808
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 15, !dbg !5809
  %6 = load i32, i32* %delivery_system, align 4, !dbg !5809
  switch i32 %6, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb13
  ], !dbg !5810

sw.bb:                                            ; preds = %do.end
  %7 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5811
  %call1 = call i32 @ds3000_readreg(%struct.ds3000_state* %7, i8 zeroext -11) #9, !dbg !5813
  %shl = shl i32 %call1, 8, !dbg !5814
  %8 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5815
  %call2 = call i32 @ds3000_readreg(%struct.ds3000_state* %8, i8 zeroext -12) #9, !dbg !5816
  %or = or i32 %shl, %call2, !dbg !5817
  %9 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5818
  store i32 %or, i32* %9, align 4, !dbg !5819
  %10 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5820
  %call3 = call i32 @ds3000_readreg(%struct.ds3000_state* %10, i8 zeroext -8) #9, !dbg !5821
  %conv = trunc i32 %call3 to i8, !dbg !5821
  store i8 %conv, i8* %data, align 1, !dbg !5822
  %11 = load i8, i8* %data, align 1, !dbg !5823
  %conv4 = zext i8 %11 to i32, !dbg !5823
  %and = and i32 %conv4, -33, !dbg !5823
  %conv5 = trunc i32 %and to i8, !dbg !5823
  store i8 %conv5, i8* %data, align 1, !dbg !5823
  %12 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5824
  %13 = load i8, i8* %data, align 1, !dbg !5825
  %conv6 = zext i8 %13 to i32, !dbg !5825
  %call7 = call i32 @ds3000_writereg(%struct.ds3000_state* %12, i32 248, i32 %conv6) #9, !dbg !5826
  %14 = load i8, i8* %data, align 1, !dbg !5827
  %conv8 = zext i8 %14 to i32, !dbg !5827
  %or9 = or i32 %conv8, 32, !dbg !5827
  %conv10 = trunc i32 %or9 to i8, !dbg !5827
  store i8 %conv10, i8* %data, align 1, !dbg !5827
  %15 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5828
  %16 = load i8, i8* %data, align 1, !dbg !5829
  %conv11 = zext i8 %16 to i32, !dbg !5829
  %call12 = call i32 @ds3000_writereg(%struct.ds3000_state* %15, i32 248, i32 %conv11) #9, !dbg !5830
  br label %sw.epilog, !dbg !5831

sw.bb13:                                          ; preds = %do.end
  %17 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5832
  %call14 = call i32 @ds3000_readreg(%struct.ds3000_state* %17, i8 zeroext -30) #9, !dbg !5833
  %shl15 = shl i32 %call14, 8, !dbg !5834
  %18 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5835
  %call16 = call i32 @ds3000_readreg(%struct.ds3000_state* %18, i8 zeroext -31) #9, !dbg !5836
  %or17 = or i32 %shl15, %call16, !dbg !5837
  %conv18 = trunc i32 %or17 to i16, !dbg !5838
  store i16 %conv18, i16* %_ucblocks, align 2, !dbg !5839
  %19 = load i16, i16* %_ucblocks, align 2, !dbg !5840
  %conv19 = zext i16 %19 to i32, !dbg !5840
  %20 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5842
  %prevUCBS2 = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %20, i32 0, i32 3, !dbg !5843
  %21 = load i16, i16* %prevUCBS2, align 8, !dbg !5843
  %conv20 = zext i16 %21 to i32, !dbg !5842
  %cmp = icmp sgt i32 %conv19, %conv20, !dbg !5844
  br i1 %cmp, label %if.then22, label %if.else, !dbg !5845

if.then22:                                        ; preds = %sw.bb13
  %22 = load i16, i16* %_ucblocks, align 2, !dbg !5846
  %conv23 = zext i16 %22 to i32, !dbg !5846
  %23 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5847
  %prevUCBS224 = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %23, i32 0, i32 3, !dbg !5848
  %24 = load i16, i16* %prevUCBS224, align 8, !dbg !5848
  %conv25 = zext i16 %24 to i32, !dbg !5847
  %sub = sub i32 %conv23, %conv25, !dbg !5849
  %25 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5850
  store i32 %sub, i32* %25, align 4, !dbg !5851
  br label %if.end30, !dbg !5852

if.else:                                          ; preds = %sw.bb13
  %26 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5853
  %prevUCBS226 = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %26, i32 0, i32 3, !dbg !5854
  %27 = load i16, i16* %prevUCBS226, align 8, !dbg !5854
  %conv27 = zext i16 %27 to i32, !dbg !5853
  %28 = load i16, i16* %_ucblocks, align 2, !dbg !5855
  %conv28 = zext i16 %28 to i32, !dbg !5855
  %sub29 = sub i32 %conv27, %conv28, !dbg !5856
  %29 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5857
  store i32 %sub29, i32* %29, align 4, !dbg !5858
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then22
  %30 = load i16, i16* %_ucblocks, align 2, !dbg !5859
  %31 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5860
  %prevUCBS231 = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %31, i32 0, i32 3, !dbg !5861
  store i16 %30, i16* %prevUCBS231, align 8, !dbg !5862
  br label %sw.epilog, !dbg !5863

sw.default:                                       ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !5864
  br label %return, !dbg !5864

sw.epilog:                                        ; preds = %if.end30, %sw.bb
  store i32 0, i32* %retval, align 4, !dbg !5865
  br label %return, !dbg !5865

return:                                           ; preds = %sw.epilog, %sw.default
  %32 = load i32, i32* %retval, align 4, !dbg !5866
  ret i32 %32, !dbg !5866
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_send_diseqc_msg(%struct.dvb_frontend* %fe, %struct.dvb_diseqc_master_cmd* %d) #0 !dbg !5867 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %d.addr = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %state = alloca %struct.ds3000_state*, align 8
  %i = alloca i32, align 4
  %data = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5868, metadata !DIExpression()), !dbg !5869
  store %struct.dvb_diseqc_master_cmd* %d, %struct.dvb_diseqc_master_cmd** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_diseqc_master_cmd** %d.addr, metadata !5870, metadata !DIExpression()), !dbg !5871
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state, metadata !5872, metadata !DIExpression()), !dbg !5873
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5874
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5875
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5875
  %2 = bitcast i8* %1 to %struct.ds3000_state*, !dbg !5874
  store %struct.ds3000_state* %2, %struct.ds3000_state** %state, align 8, !dbg !5873
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5876, metadata !DIExpression()), !dbg !5877
  call void @llvm.dbg.declare(metadata i8* %data, metadata !5878, metadata !DIExpression()), !dbg !5879
  br label %do.body, !dbg !5880

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5881
  %tobool = icmp ne i32 %3, 0, !dbg !5881
  br i1 %tobool, label %if.then, label %if.end, !dbg !5884

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ds3000_send_diseqc_msg, i64 0, i64 0)) #8, !dbg !5881
  br label %if.end, !dbg !5881

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5884

do.end:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5885
  br label %for.cond, !dbg !5887

for.cond:                                         ; preds = %if.end20, %do.end
  %4 = load i32, i32* %i, align 4, !dbg !5888
  %5 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %d.addr, align 8, !dbg !5890
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %5, i32 0, i32 1, !dbg !5891
  %6 = load i8, i8* %msg_len, align 1, !dbg !5891
  %conv = zext i8 %6 to i32, !dbg !5890
  %cmp = icmp slt i32 %4, %conv, !dbg !5892
  br i1 %cmp, label %for.body, label %for.end, !dbg !5893

for.body:                                         ; preds = %for.cond
  br label %do.body2, !dbg !5894

do.body2:                                         ; preds = %for.body
  %7 = load i32, i32* @debug, align 4, !dbg !5896
  %tobool3 = icmp ne i32 %7, 0, !dbg !5896
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !5899

if.then4:                                         ; preds = %do.body2
  %8 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %d.addr, align 8, !dbg !5896
  %msg = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %8, i32 0, i32 0, !dbg !5896
  %9 = load i32, i32* %i, align 4, !dbg !5896
  %idxprom = sext i32 %9 to i64, !dbg !5896
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %msg, i64 0, i64 %idxprom, !dbg !5896
  %10 = load i8, i8* %arrayidx, align 1, !dbg !5896
  %conv5 = zext i8 %10 to i32, !dbg !5896
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i32 %conv5) #8, !dbg !5896
  br label %if.end7, !dbg !5896

if.end7:                                          ; preds = %if.then4, %do.body2
  br label %do.end8, !dbg !5899

do.end8:                                          ; preds = %if.end7
  %11 = load i32, i32* %i, align 4, !dbg !5900
  %inc = add i32 %11, 1, !dbg !5900
  store i32 %inc, i32* %i, align 4, !dbg !5900
  %12 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %d.addr, align 8, !dbg !5902
  %msg_len9 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %12, i32 0, i32 1, !dbg !5903
  %13 = load i8, i8* %msg_len9, align 1, !dbg !5903
  %conv10 = zext i8 %13 to i32, !dbg !5902
  %cmp11 = icmp slt i32 %inc, %conv10, !dbg !5904
  br i1 %cmp11, label %if.then13, label %if.end20, !dbg !5905

if.then13:                                        ; preds = %do.end8
  br label %do.body14, !dbg !5906

do.body14:                                        ; preds = %if.then13
  %14 = load i32, i32* @debug, align 4, !dbg !5907
  %tobool15 = icmp ne i32 %14, 0, !dbg !5907
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !5910

if.then16:                                        ; preds = %do.body14
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0)) #8, !dbg !5907
  br label %if.end18, !dbg !5907

if.end18:                                         ; preds = %if.then16, %do.body14
  br label %do.end19, !dbg !5910

do.end19:                                         ; preds = %if.end18
  br label %if.end20, !dbg !5910

if.end20:                                         ; preds = %do.end19, %do.end8
  br label %for.cond, !dbg !5911, !llvm.loop !5912

for.end:                                          ; preds = %for.cond
  %15 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5914
  %call21 = call i32 @ds3000_readreg(%struct.ds3000_state* %15, i8 zeroext -94) #9, !dbg !5915
  %conv22 = trunc i32 %call21 to i8, !dbg !5915
  store i8 %conv22, i8* %data, align 1, !dbg !5916
  %16 = load i8, i8* %data, align 1, !dbg !5917
  %conv23 = zext i8 %16 to i32, !dbg !5917
  %and = and i32 %conv23, -193, !dbg !5917
  %conv24 = trunc i32 %and to i8, !dbg !5917
  store i8 %conv24, i8* %data, align 1, !dbg !5917
  %17 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5918
  %18 = load i8, i8* %data, align 1, !dbg !5919
  %conv25 = zext i8 %18 to i32, !dbg !5919
  %call26 = call i32 @ds3000_writereg(%struct.ds3000_state* %17, i32 162, i32 %conv25) #9, !dbg !5920
  store i32 0, i32* %i, align 4, !dbg !5921
  br label %for.cond27, !dbg !5923

for.cond27:                                       ; preds = %for.inc, %for.end
  %19 = load i32, i32* %i, align 4, !dbg !5924
  %20 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %d.addr, align 8, !dbg !5926
  %msg_len28 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %20, i32 0, i32 1, !dbg !5927
  %21 = load i8, i8* %msg_len28, align 1, !dbg !5927
  %conv29 = zext i8 %21 to i32, !dbg !5926
  %cmp30 = icmp slt i32 %19, %conv29, !dbg !5928
  br i1 %cmp30, label %for.body32, label %for.end39, !dbg !5929

for.body32:                                       ; preds = %for.cond27
  %22 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5930
  %23 = load i32, i32* %i, align 4, !dbg !5931
  %add = add i32 163, %23, !dbg !5932
  %24 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %d.addr, align 8, !dbg !5933
  %msg33 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %24, i32 0, i32 0, !dbg !5934
  %25 = load i32, i32* %i, align 4, !dbg !5935
  %idxprom34 = sext i32 %25 to i64, !dbg !5933
  %arrayidx35 = getelementptr [6 x i8], [6 x i8]* %msg33, i64 0, i64 %idxprom34, !dbg !5933
  %26 = load i8, i8* %arrayidx35, align 1, !dbg !5933
  %conv36 = zext i8 %26 to i32, !dbg !5933
  %call37 = call i32 @ds3000_writereg(%struct.ds3000_state* %22, i32 %add, i32 %conv36) #9, !dbg !5936
  br label %for.inc, !dbg !5936

for.inc:                                          ; preds = %for.body32
  %27 = load i32, i32* %i, align 4, !dbg !5937
  %inc38 = add i32 %27, 1, !dbg !5937
  store i32 %inc38, i32* %i, align 4, !dbg !5937
  br label %for.cond27, !dbg !5938, !llvm.loop !5939

for.end39:                                        ; preds = %for.cond27
  %28 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5941
  %call40 = call i32 @ds3000_readreg(%struct.ds3000_state* %28, i8 zeroext -95) #9, !dbg !5942
  %conv41 = trunc i32 %call40 to i8, !dbg !5942
  store i8 %conv41, i8* %data, align 1, !dbg !5943
  %29 = load i8, i8* %data, align 1, !dbg !5944
  %conv42 = zext i8 %29 to i32, !dbg !5944
  %and43 = and i32 %conv42, -249, !dbg !5944
  %conv44 = trunc i32 %and43 to i8, !dbg !5944
  store i8 %conv44, i8* %data, align 1, !dbg !5944
  %30 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %d.addr, align 8, !dbg !5945
  %msg_len45 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %30, i32 0, i32 1, !dbg !5946
  %31 = load i8, i8* %msg_len45, align 1, !dbg !5946
  %conv46 = zext i8 %31 to i32, !dbg !5945
  %sub = sub i32 %conv46, 1, !dbg !5947
  %shl = shl i32 %sub, 3, !dbg !5948
  %or = or i32 %shl, 7, !dbg !5949
  %32 = load i8, i8* %data, align 1, !dbg !5950
  %conv47 = zext i8 %32 to i32, !dbg !5950
  %or48 = or i32 %conv47, %or, !dbg !5950
  %conv49 = trunc i32 %or48 to i8, !dbg !5950
  store i8 %conv49, i8* %data, align 1, !dbg !5950
  %33 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5951
  %34 = load i8, i8* %data, align 1, !dbg !5952
  %conv50 = zext i8 %34 to i32, !dbg !5952
  %call51 = call i32 @ds3000_writereg(%struct.ds3000_state* %33, i32 161, i32 %conv50) #9, !dbg !5953
  store i32 0, i32* %i, align 4, !dbg !5954
  br label %for.cond52, !dbg !5956

for.cond52:                                       ; preds = %for.inc64, %for.end39
  %35 = load i32, i32* %i, align 4, !dbg !5957
  %cmp53 = icmp slt i32 %35, 15, !dbg !5959
  br i1 %cmp53, label %for.body55, label %for.end66, !dbg !5960

for.body55:                                       ; preds = %for.cond52
  %36 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5961
  %call56 = call i32 @ds3000_readreg(%struct.ds3000_state* %36, i8 zeroext -95) #9, !dbg !5963
  %conv57 = trunc i32 %call56 to i8, !dbg !5963
  store i8 %conv57, i8* %data, align 1, !dbg !5964
  %37 = load i8, i8* %data, align 1, !dbg !5965
  %conv58 = zext i8 %37 to i32, !dbg !5965
  %and59 = and i32 %conv58, 64, !dbg !5967
  %cmp60 = icmp eq i32 %and59, 0, !dbg !5968
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !5969

if.then62:                                        ; preds = %for.body55
  br label %for.end66, !dbg !5970

if.end63:                                         ; preds = %for.body55
  call void @msleep(i32 10) #9, !dbg !5971
  br label %for.inc64, !dbg !5972

for.inc64:                                        ; preds = %if.end63
  %38 = load i32, i32* %i, align 4, !dbg !5973
  %inc65 = add i32 %38, 1, !dbg !5973
  store i32 %inc65, i32* %i, align 4, !dbg !5973
  br label %for.cond52, !dbg !5974, !llvm.loop !5975

for.end66:                                        ; preds = %if.then62, %for.cond52
  %39 = load i32, i32* %i, align 4, !dbg !5977
  %cmp67 = icmp eq i32 %39, 15, !dbg !5979
  br i1 %cmp67, label %if.then69, label %if.end90, !dbg !5980

if.then69:                                        ; preds = %for.end66
  %40 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5981
  %call70 = call i32 @ds3000_readreg(%struct.ds3000_state* %40, i8 zeroext -95) #9, !dbg !5983
  %conv71 = trunc i32 %call70 to i8, !dbg !5983
  store i8 %conv71, i8* %data, align 1, !dbg !5984
  %41 = load i8, i8* %data, align 1, !dbg !5985
  %conv72 = zext i8 %41 to i32, !dbg !5985
  %and73 = and i32 %conv72, -129, !dbg !5985
  %conv74 = trunc i32 %and73 to i8, !dbg !5985
  store i8 %conv74, i8* %data, align 1, !dbg !5985
  %42 = load i8, i8* %data, align 1, !dbg !5986
  %conv75 = zext i8 %42 to i32, !dbg !5986
  %or76 = or i32 %conv75, 64, !dbg !5986
  %conv77 = trunc i32 %or76 to i8, !dbg !5986
  store i8 %conv77, i8* %data, align 1, !dbg !5986
  %43 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5987
  %44 = load i8, i8* %data, align 1, !dbg !5988
  %conv78 = zext i8 %44 to i32, !dbg !5988
  %call79 = call i32 @ds3000_writereg(%struct.ds3000_state* %43, i32 161, i32 %conv78) #9, !dbg !5989
  %45 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5990
  %call80 = call i32 @ds3000_readreg(%struct.ds3000_state* %45, i8 zeroext -94) #9, !dbg !5991
  %conv81 = trunc i32 %call80 to i8, !dbg !5991
  store i8 %conv81, i8* %data, align 1, !dbg !5992
  %46 = load i8, i8* %data, align 1, !dbg !5993
  %conv82 = zext i8 %46 to i32, !dbg !5993
  %and83 = and i32 %conv82, -193, !dbg !5993
  %conv84 = trunc i32 %and83 to i8, !dbg !5993
  store i8 %conv84, i8* %data, align 1, !dbg !5993
  %47 = load i8, i8* %data, align 1, !dbg !5994
  %conv85 = zext i8 %47 to i32, !dbg !5994
  %or86 = or i32 %conv85, 128, !dbg !5994
  %conv87 = trunc i32 %or86 to i8, !dbg !5994
  store i8 %conv87, i8* %data, align 1, !dbg !5994
  %48 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5995
  %49 = load i8, i8* %data, align 1, !dbg !5996
  %conv88 = zext i8 %49 to i32, !dbg !5996
  %call89 = call i32 @ds3000_writereg(%struct.ds3000_state* %48, i32 162, i32 %conv88) #9, !dbg !5997
  store i32 -110, i32* %retval, align 4, !dbg !5998
  br label %return, !dbg !5998

if.end90:                                         ; preds = %for.end66
  %50 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !5999
  %call91 = call i32 @ds3000_readreg(%struct.ds3000_state* %50, i8 zeroext -94) #9, !dbg !6000
  %conv92 = trunc i32 %call91 to i8, !dbg !6000
  store i8 %conv92, i8* %data, align 1, !dbg !6001
  %51 = load i8, i8* %data, align 1, !dbg !6002
  %conv93 = zext i8 %51 to i32, !dbg !6002
  %and94 = and i32 %conv93, -193, !dbg !6002
  %conv95 = trunc i32 %and94 to i8, !dbg !6002
  store i8 %conv95, i8* %data, align 1, !dbg !6002
  %52 = load i8, i8* %data, align 1, !dbg !6003
  %conv96 = zext i8 %52 to i32, !dbg !6003
  %or97 = or i32 %conv96, 128, !dbg !6003
  %conv98 = trunc i32 %or97 to i8, !dbg !6003
  store i8 %conv98, i8* %data, align 1, !dbg !6003
  %53 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6004
  %54 = load i8, i8* %data, align 1, !dbg !6005
  %conv99 = zext i8 %54 to i32, !dbg !6005
  %call100 = call i32 @ds3000_writereg(%struct.ds3000_state* %53, i32 162, i32 %conv99) #9, !dbg !6006
  store i32 0, i32* %retval, align 4, !dbg !6007
  br label %return, !dbg !6007

return:                                           ; preds = %if.end90, %if.then69
  %55 = load i32, i32* %retval, align 4, !dbg !6008
  ret i32 %55, !dbg !6008
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_diseqc_send_burst(%struct.dvb_frontend* %fe, i32 %burst) #0 !dbg !6009 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %burst.addr = alloca i32, align 4
  %state = alloca %struct.ds3000_state*, align 8
  %i = alloca i32, align 4
  %data = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6010, metadata !DIExpression()), !dbg !6011
  store i32 %burst, i32* %burst.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %burst.addr, metadata !6012, metadata !DIExpression()), !dbg !6013
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state, metadata !6014, metadata !DIExpression()), !dbg !6015
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6016
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6017
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6017
  %2 = bitcast i8* %1 to %struct.ds3000_state*, !dbg !6016
  store %struct.ds3000_state* %2, %struct.ds3000_state** %state, align 8, !dbg !6015
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6018, metadata !DIExpression()), !dbg !6019
  call void @llvm.dbg.declare(metadata i8* %data, metadata !6020, metadata !DIExpression()), !dbg !6021
  br label %do.body, !dbg !6022

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !6023
  %tobool = icmp ne i32 %3, 0, !dbg !6023
  br i1 %tobool, label %if.then, label %if.end, !dbg !6026

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ds3000_diseqc_send_burst, i64 0, i64 0)) #8, !dbg !6023
  br label %if.end, !dbg !6023

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6026

do.end:                                           ; preds = %if.end
  %4 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6027
  %call1 = call i32 @ds3000_readreg(%struct.ds3000_state* %4, i8 zeroext -94) #9, !dbg !6028
  %conv = trunc i32 %call1 to i8, !dbg !6028
  store i8 %conv, i8* %data, align 1, !dbg !6029
  %5 = load i8, i8* %data, align 1, !dbg !6030
  %conv2 = zext i8 %5 to i32, !dbg !6030
  %and = and i32 %conv2, -193, !dbg !6030
  %conv3 = trunc i32 %and to i8, !dbg !6030
  store i8 %conv3, i8* %data, align 1, !dbg !6030
  %6 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6031
  %7 = load i8, i8* %data, align 1, !dbg !6032
  %conv4 = zext i8 %7 to i32, !dbg !6032
  %call5 = call i32 @ds3000_writereg(%struct.ds3000_state* %6, i32 162, i32 %conv4) #9, !dbg !6033
  %8 = load i32, i32* %burst.addr, align 4, !dbg !6034
  %cmp = icmp eq i32 %8, 0, !dbg !6036
  br i1 %cmp, label %if.then7, label %if.else, !dbg !6037

if.then7:                                         ; preds = %do.end
  %9 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6038
  %call8 = call i32 @ds3000_writereg(%struct.ds3000_state* %9, i32 161, i32 2) #9, !dbg !6039
  br label %if.end15, !dbg !6039

if.else:                                          ; preds = %do.end
  %10 = load i32, i32* %burst.addr, align 4, !dbg !6040
  %cmp9 = icmp eq i32 %10, 1, !dbg !6042
  br i1 %cmp9, label %if.then11, label %if.else13, !dbg !6043

if.then11:                                        ; preds = %if.else
  %11 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6044
  %call12 = call i32 @ds3000_writereg(%struct.ds3000_state* %11, i32 161, i32 1) #9, !dbg !6045
  br label %if.end14, !dbg !6045

if.else13:                                        ; preds = %if.else
  store i32 -22, i32* %retval, align 4, !dbg !6046
  br label %return, !dbg !6046

if.end14:                                         ; preds = %if.then11
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then7
  call void @msleep(i32 13) #9, !dbg !6047
  store i32 0, i32* %i, align 4, !dbg !6048
  br label %for.cond, !dbg !6050

for.cond:                                         ; preds = %for.inc, %if.end15
  %12 = load i32, i32* %i, align 4, !dbg !6051
  %cmp16 = icmp slt i32 %12, 5, !dbg !6053
  br i1 %cmp16, label %for.body, label %for.end, !dbg !6054

for.body:                                         ; preds = %for.cond
  %13 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6055
  %call18 = call i32 @ds3000_readreg(%struct.ds3000_state* %13, i8 zeroext -95) #9, !dbg !6057
  %conv19 = trunc i32 %call18 to i8, !dbg !6057
  store i8 %conv19, i8* %data, align 1, !dbg !6058
  %14 = load i8, i8* %data, align 1, !dbg !6059
  %conv20 = zext i8 %14 to i32, !dbg !6059
  %and21 = and i32 %conv20, 64, !dbg !6061
  %cmp22 = icmp eq i32 %and21, 0, !dbg !6062
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !6063

if.then24:                                        ; preds = %for.body
  br label %for.end, !dbg !6064

if.end25:                                         ; preds = %for.body
  call void @msleep(i32 1) #9, !dbg !6065
  br label %for.inc, !dbg !6066

for.inc:                                          ; preds = %if.end25
  %15 = load i32, i32* %i, align 4, !dbg !6067
  %inc = add i32 %15, 1, !dbg !6067
  store i32 %inc, i32* %i, align 4, !dbg !6067
  br label %for.cond, !dbg !6068, !llvm.loop !6069

for.end:                                          ; preds = %if.then24, %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !6071
  %cmp26 = icmp eq i32 %16, 5, !dbg !6073
  br i1 %cmp26, label %if.then28, label %if.end48, !dbg !6074

if.then28:                                        ; preds = %for.end
  %17 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6075
  %call29 = call i32 @ds3000_readreg(%struct.ds3000_state* %17, i8 zeroext -95) #9, !dbg !6077
  %conv30 = trunc i32 %call29 to i8, !dbg !6077
  store i8 %conv30, i8* %data, align 1, !dbg !6078
  %18 = load i8, i8* %data, align 1, !dbg !6079
  %conv31 = zext i8 %18 to i32, !dbg !6079
  %and32 = and i32 %conv31, -129, !dbg !6079
  %conv33 = trunc i32 %and32 to i8, !dbg !6079
  store i8 %conv33, i8* %data, align 1, !dbg !6079
  %19 = load i8, i8* %data, align 1, !dbg !6080
  %conv34 = zext i8 %19 to i32, !dbg !6080
  %or = or i32 %conv34, 64, !dbg !6080
  %conv35 = trunc i32 %or to i8, !dbg !6080
  store i8 %conv35, i8* %data, align 1, !dbg !6080
  %20 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6081
  %21 = load i8, i8* %data, align 1, !dbg !6082
  %conv36 = zext i8 %21 to i32, !dbg !6082
  %call37 = call i32 @ds3000_writereg(%struct.ds3000_state* %20, i32 161, i32 %conv36) #9, !dbg !6083
  %22 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6084
  %call38 = call i32 @ds3000_readreg(%struct.ds3000_state* %22, i8 zeroext -94) #9, !dbg !6085
  %conv39 = trunc i32 %call38 to i8, !dbg !6085
  store i8 %conv39, i8* %data, align 1, !dbg !6086
  %23 = load i8, i8* %data, align 1, !dbg !6087
  %conv40 = zext i8 %23 to i32, !dbg !6087
  %and41 = and i32 %conv40, -193, !dbg !6087
  %conv42 = trunc i32 %and41 to i8, !dbg !6087
  store i8 %conv42, i8* %data, align 1, !dbg !6087
  %24 = load i8, i8* %data, align 1, !dbg !6088
  %conv43 = zext i8 %24 to i32, !dbg !6088
  %or44 = or i32 %conv43, 128, !dbg !6088
  %conv45 = trunc i32 %or44 to i8, !dbg !6088
  store i8 %conv45, i8* %data, align 1, !dbg !6088
  %25 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6089
  %26 = load i8, i8* %data, align 1, !dbg !6090
  %conv46 = zext i8 %26 to i32, !dbg !6090
  %call47 = call i32 @ds3000_writereg(%struct.ds3000_state* %25, i32 162, i32 %conv46) #9, !dbg !6091
  store i32 -110, i32* %retval, align 4, !dbg !6092
  br label %return, !dbg !6092

if.end48:                                         ; preds = %for.end
  %27 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6093
  %call49 = call i32 @ds3000_readreg(%struct.ds3000_state* %27, i8 zeroext -94) #9, !dbg !6094
  %conv50 = trunc i32 %call49 to i8, !dbg !6094
  store i8 %conv50, i8* %data, align 1, !dbg !6095
  %28 = load i8, i8* %data, align 1, !dbg !6096
  %conv51 = zext i8 %28 to i32, !dbg !6096
  %and52 = and i32 %conv51, -193, !dbg !6096
  %conv53 = trunc i32 %and52 to i8, !dbg !6096
  store i8 %conv53, i8* %data, align 1, !dbg !6096
  %29 = load i8, i8* %data, align 1, !dbg !6097
  %conv54 = zext i8 %29 to i32, !dbg !6097
  %or55 = or i32 %conv54, 128, !dbg !6097
  %conv56 = trunc i32 %or55 to i8, !dbg !6097
  store i8 %conv56, i8* %data, align 1, !dbg !6097
  %30 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6098
  %31 = load i8, i8* %data, align 1, !dbg !6099
  %conv57 = zext i8 %31 to i32, !dbg !6099
  %call58 = call i32 @ds3000_writereg(%struct.ds3000_state* %30, i32 162, i32 %conv57) #9, !dbg !6100
  store i32 0, i32* %retval, align 4, !dbg !6101
  br label %return, !dbg !6101

return:                                           ; preds = %if.end48, %if.then28, %if.else13
  %32 = load i32, i32* %retval, align 4, !dbg !6102
  ret i32 %32, !dbg !6102
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_set_tone(%struct.dvb_frontend* %fe, i32 %tone) #0 !dbg !6103 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %tone.addr = alloca i32, align 4
  %state = alloca %struct.ds3000_state*, align 8
  %data = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6104, metadata !DIExpression()), !dbg !6105
  store i32 %tone, i32* %tone.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tone.addr, metadata !6106, metadata !DIExpression()), !dbg !6107
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state, metadata !6108, metadata !DIExpression()), !dbg !6109
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6110
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6111
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6111
  %2 = bitcast i8* %1 to %struct.ds3000_state*, !dbg !6110
  store %struct.ds3000_state* %2, %struct.ds3000_state** %state, align 8, !dbg !6109
  call void @llvm.dbg.declare(metadata i8* %data, metadata !6112, metadata !DIExpression()), !dbg !6113
  br label %do.body, !dbg !6114

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !6115
  %tobool = icmp ne i32 %3, 0, !dbg !6115
  br i1 %tobool, label %if.then, label %if.end, !dbg !6118

if.then:                                          ; preds = %do.body
  %4 = load i32, i32* %tone.addr, align 4, !dbg !6115
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ds3000_set_tone, i64 0, i64 0), i32 %4) #8, !dbg !6115
  br label %if.end, !dbg !6115

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6118

do.end:                                           ; preds = %if.end
  %5 = load i32, i32* %tone.addr, align 4, !dbg !6119
  %cmp = icmp ne i32 %5, 0, !dbg !6121
  br i1 %cmp, label %land.lhs.true, label %if.end4, !dbg !6122

land.lhs.true:                                    ; preds = %do.end
  %6 = load i32, i32* %tone.addr, align 4, !dbg !6123
  %cmp1 = icmp ne i32 %6, 1, !dbg !6124
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !6125

if.then2:                                         ; preds = %land.lhs.true
  %7 = load i32, i32* %tone.addr, align 4, !dbg !6126
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ds3000_set_tone, i64 0, i64 0), i32 %7) #8, !dbg !6128
  store i32 -22, i32* %retval, align 4, !dbg !6129
  br label %return, !dbg !6129

if.end4:                                          ; preds = %land.lhs.true, %do.end
  %8 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6130
  %call5 = call i32 @ds3000_readreg(%struct.ds3000_state* %8, i8 zeroext -94) #9, !dbg !6131
  %conv = trunc i32 %call5 to i8, !dbg !6131
  store i8 %conv, i8* %data, align 1, !dbg !6132
  %9 = load i8, i8* %data, align 1, !dbg !6133
  %conv6 = zext i8 %9 to i32, !dbg !6133
  %and = and i32 %conv6, -193, !dbg !6133
  %conv7 = trunc i32 %and to i8, !dbg !6133
  store i8 %conv7, i8* %data, align 1, !dbg !6133
  %10 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6134
  %11 = load i8, i8* %data, align 1, !dbg !6135
  %conv8 = zext i8 %11 to i32, !dbg !6135
  %call9 = call i32 @ds3000_writereg(%struct.ds3000_state* %10, i32 162, i32 %conv8) #9, !dbg !6136
  %12 = load i32, i32* %tone.addr, align 4, !dbg !6137
  switch i32 %12, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
  ], !dbg !6138

sw.bb:                                            ; preds = %if.end4
  br label %do.body10, !dbg !6139

do.body10:                                        ; preds = %sw.bb
  %13 = load i32, i32* @debug, align 4, !dbg !6141
  %tobool11 = icmp ne i32 %13, 0, !dbg !6141
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !6144

if.then12:                                        ; preds = %do.body10
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ds3000_set_tone, i64 0, i64 0)) #8, !dbg !6141
  br label %if.end14, !dbg !6141

if.end14:                                         ; preds = %if.then12, %do.body10
  br label %do.end15, !dbg !6144

do.end15:                                         ; preds = %if.end14
  %14 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6145
  %call16 = call i32 @ds3000_readreg(%struct.ds3000_state* %14, i8 zeroext -95) #9, !dbg !6146
  %conv17 = trunc i32 %call16 to i8, !dbg !6146
  store i8 %conv17, i8* %data, align 1, !dbg !6147
  %15 = load i8, i8* %data, align 1, !dbg !6148
  %conv18 = zext i8 %15 to i32, !dbg !6148
  %and19 = and i32 %conv18, -68, !dbg !6148
  %conv20 = trunc i32 %and19 to i8, !dbg !6148
  store i8 %conv20, i8* %data, align 1, !dbg !6148
  %16 = load i8, i8* %data, align 1, !dbg !6149
  %conv21 = zext i8 %16 to i32, !dbg !6149
  %or = or i32 %conv21, 4, !dbg !6149
  %conv22 = trunc i32 %or to i8, !dbg !6149
  store i8 %conv22, i8* %data, align 1, !dbg !6149
  %17 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6150
  %18 = load i8, i8* %data, align 1, !dbg !6151
  %conv23 = zext i8 %18 to i32, !dbg !6151
  %call24 = call i32 @ds3000_writereg(%struct.ds3000_state* %17, i32 161, i32 %conv23) #9, !dbg !6152
  br label %sw.epilog, !dbg !6153

sw.bb25:                                          ; preds = %if.end4
  br label %do.body26, !dbg !6154

do.body26:                                        ; preds = %sw.bb25
  %19 = load i32, i32* @debug, align 4, !dbg !6155
  %tobool27 = icmp ne i32 %19, 0, !dbg !6155
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !6158

if.then28:                                        ; preds = %do.body26
  %call29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ds3000_set_tone, i64 0, i64 0)) #8, !dbg !6155
  br label %if.end30, !dbg !6155

if.end30:                                         ; preds = %if.then28, %do.body26
  br label %do.end31, !dbg !6158

do.end31:                                         ; preds = %if.end30
  %20 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6159
  %call32 = call i32 @ds3000_readreg(%struct.ds3000_state* %20, i8 zeroext -94) #9, !dbg !6160
  %conv33 = trunc i32 %call32 to i8, !dbg !6160
  store i8 %conv33, i8* %data, align 1, !dbg !6161
  %21 = load i8, i8* %data, align 1, !dbg !6162
  %conv34 = zext i8 %21 to i32, !dbg !6162
  %or35 = or i32 %conv34, 128, !dbg !6162
  %conv36 = trunc i32 %or35 to i8, !dbg !6162
  store i8 %conv36, i8* %data, align 1, !dbg !6162
  %22 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6163
  %23 = load i8, i8* %data, align 1, !dbg !6164
  %conv37 = zext i8 %23 to i32, !dbg !6164
  %call38 = call i32 @ds3000_writereg(%struct.ds3000_state* %22, i32 162, i32 %conv37) #9, !dbg !6165
  br label %sw.epilog, !dbg !6166

sw.epilog:                                        ; preds = %if.end4, %do.end31, %do.end15
  store i32 0, i32* %retval, align 4, !dbg !6167
  br label %return, !dbg !6167

return:                                           ; preds = %sw.epilog, %if.then2
  %24 = load i32, i32* %retval, align 4, !dbg !6168
  ret i32 %24, !dbg !6168
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_i2c_gate_ctrl(%struct.dvb_frontend* %fe, i32 %enable) #0 !dbg !6169 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %enable.addr = alloca i32, align 4
  %state = alloca %struct.ds3000_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6170, metadata !DIExpression()), !dbg !6171
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !6172, metadata !DIExpression()), !dbg !6173
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state, metadata !6174, metadata !DIExpression()), !dbg !6175
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6176
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6177
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6177
  %2 = bitcast i8* %1 to %struct.ds3000_state*, !dbg !6176
  store %struct.ds3000_state* %2, %struct.ds3000_state** %state, align 8, !dbg !6175
  %3 = load i32, i32* %enable.addr, align 4, !dbg !6178
  %tobool = icmp ne i32 %3, 0, !dbg !6178
  br i1 %tobool, label %if.then, label %if.else, !dbg !6180

if.then:                                          ; preds = %entry
  %4 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6181
  %call = call i32 @ds3000_writereg(%struct.ds3000_state* %4, i32 3, i32 18) #9, !dbg !6182
  br label %if.end, !dbg !6182

if.else:                                          ; preds = %entry
  %5 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6183
  %call1 = call i32 @ds3000_writereg(%struct.ds3000_state* %5, i32 3, i32 2) #9, !dbg !6184
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !6185
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_firmware_ondemand(%struct.dvb_frontend* %fe) #0 !dbg !6186 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.ds3000_state*, align 8
  %fw = alloca %struct.firmware*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6187, metadata !DIExpression()), !dbg !6188
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state, metadata !6189, metadata !DIExpression()), !dbg !6190
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6191
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6192
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6192
  %2 = bitcast i8* %1 to %struct.ds3000_state*, !dbg !6191
  store %struct.ds3000_state* %2, %struct.ds3000_state** %state, align 8, !dbg !6190
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw, metadata !6193, metadata !DIExpression()), !dbg !6202
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6203, metadata !DIExpression()), !dbg !6204
  store i32 0, i32* %ret, align 4, !dbg !6204
  br label %do.body, !dbg !6205

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !6206
  %tobool = icmp ne i32 %3, 0, !dbg !6206
  br i1 %tobool, label %if.then, label %if.end, !dbg !6209

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ds3000_firmware_ondemand, i64 0, i64 0)) #8, !dbg !6206
  br label %if.end, !dbg !6206

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6209

do.end:                                           ; preds = %if.end
  %4 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6210
  %call1 = call i32 @ds3000_readreg(%struct.ds3000_state* %4, i8 zeroext -78) #9, !dbg !6211
  store i32 %call1, i32* %ret, align 4, !dbg !6212
  %5 = load i32, i32* %ret, align 4, !dbg !6213
  %cmp = icmp slt i32 %5, 0, !dbg !6215
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6216

if.then2:                                         ; preds = %do.end
  %6 = load i32, i32* %ret, align 4, !dbg !6217
  store i32 %6, i32* %retval, align 4, !dbg !6218
  br label %return, !dbg !6218

if.end3:                                          ; preds = %do.end
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ds3000_firmware_ondemand, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !6219
  %7 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6220
  %i2c = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %7, i32 0, i32 0, !dbg !6221
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !6221
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %8, i32 0, i32 9, !dbg !6222
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !6223
  %9 = load %struct.device*, %struct.device** %parent, align 8, !dbg !6223
  %call5 = call i32 @request_firmware(%struct.firmware** %fw, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), %struct.device* %9) #9, !dbg !6224
  store i32 %call5, i32* %ret, align 4, !dbg !6225
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ds3000_firmware_ondemand, i64 0, i64 0)) #8, !dbg !6226
  %10 = load i32, i32* %ret, align 4, !dbg !6227
  %tobool7 = icmp ne i32 %10, 0, !dbg !6227
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !6229

if.then8:                                         ; preds = %if.end3
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ds3000_firmware_ondemand, i64 0, i64 0)) #8, !dbg !6230
  %11 = load i32, i32* %ret, align 4, !dbg !6232
  store i32 %11, i32* %retval, align 4, !dbg !6233
  br label %return, !dbg !6233

if.end10:                                         ; preds = %if.end3
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6234
  %13 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !6235
  %call11 = call i32 @ds3000_load_firmware(%struct.dvb_frontend* %12, %struct.firmware* %13) #9, !dbg !6236
  store i32 %call11, i32* %ret, align 4, !dbg !6237
  %14 = load i32, i32* %ret, align 4, !dbg !6238
  %tobool12 = icmp ne i32 %14, 0, !dbg !6238
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !6240

if.then13:                                        ; preds = %if.end10
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ds3000_firmware_ondemand, i64 0, i64 0)) #8, !dbg !6241
  br label %if.end15, !dbg !6241

if.end15:                                         ; preds = %if.then13, %if.end10
  %15 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !6242
  call void @release_firmware(%struct.firmware* %15) #9, !dbg !6243
  br label %do.body16, !dbg !6244

do.body16:                                        ; preds = %if.end15
  %16 = load i32, i32* @debug, align 4, !dbg !6245
  %tobool17 = icmp ne i32 %16, 0, !dbg !6245
  br i1 %tobool17, label %if.then18, label %if.end21, !dbg !6248

if.then18:                                        ; preds = %do.body16
  %17 = load i32, i32* %ret, align 4, !dbg !6245
  %cmp19 = icmp eq i32 %17, 0, !dbg !6245
  %18 = zext i1 %cmp19 to i64, !dbg !6245
  %cond = select i1 %cmp19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), !dbg !6245
  %call20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ds3000_firmware_ondemand, i64 0, i64 0), i8* %cond) #8, !dbg !6245
  br label %if.end21, !dbg !6245

if.end21:                                         ; preds = %if.then18, %do.body16
  br label %do.end22, !dbg !6248

do.end22:                                         ; preds = %if.end21
  %19 = load i32, i32* %ret, align 4, !dbg !6249
  store i32 %19, i32* %retval, align 4, !dbg !6250
  br label %return, !dbg !6250

return:                                           ; preds = %do.end22, %if.then8, %if.then2
  %20 = load i32, i32* %retval, align 4, !dbg !6251
  ret i32 %20, !dbg !6251
}

; Function Attrs: noredzone
declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_load_firmware(%struct.dvb_frontend* %fe, %struct.firmware* %fw) #0 !dbg !6252 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fw.addr = alloca %struct.firmware*, align 8
  %state = alloca %struct.ds3000_state*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6255, metadata !DIExpression()), !dbg !6256
  store %struct.firmware* %fw, %struct.firmware** %fw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw.addr, metadata !6257, metadata !DIExpression()), !dbg !6258
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state, metadata !6259, metadata !DIExpression()), !dbg !6260
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6261
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6262
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6262
  %2 = bitcast i8* %1 to %struct.ds3000_state*, !dbg !6261
  store %struct.ds3000_state* %2, %struct.ds3000_state** %state, align 8, !dbg !6260
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6263, metadata !DIExpression()), !dbg !6264
  store i32 0, i32* %ret, align 4, !dbg !6264
  br label %do.body, !dbg !6265

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !6266
  %tobool = icmp ne i32 %3, 0, !dbg !6266
  br i1 %tobool, label %if.then, label %if.end, !dbg !6269

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ds3000_load_firmware, i64 0, i64 0)) #8, !dbg !6266
  br label %if.end, !dbg !6266

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6269

do.end:                                           ; preds = %if.end
  br label %do.body1, !dbg !6270

do.body1:                                         ; preds = %do.end
  %4 = load i32, i32* @debug, align 4, !dbg !6271
  %tobool2 = icmp ne i32 %4, 0, !dbg !6271
  br i1 %tobool2, label %if.then3, label %if.end17, !dbg !6274

if.then3:                                         ; preds = %do.body1
  %5 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6271
  %size = getelementptr inbounds %struct.firmware, %struct.firmware* %5, i32 0, i32 0, !dbg !6271
  %6 = load i64, i64* %size, align 8, !dbg !6271
  %7 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6271
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %7, i32 0, i32 1, !dbg !6271
  %8 = load i8*, i8** %data, align 8, !dbg !6271
  %arrayidx = getelementptr i8, i8* %8, i64 0, !dbg !6271
  %9 = load i8, i8* %arrayidx, align 1, !dbg !6271
  %conv = zext i8 %9 to i32, !dbg !6271
  %10 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6271
  %data4 = getelementptr inbounds %struct.firmware, %struct.firmware* %10, i32 0, i32 1, !dbg !6271
  %11 = load i8*, i8** %data4, align 8, !dbg !6271
  %arrayidx5 = getelementptr i8, i8* %11, i64 1, !dbg !6271
  %12 = load i8, i8* %arrayidx5, align 1, !dbg !6271
  %conv6 = zext i8 %12 to i32, !dbg !6271
  %13 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6271
  %data7 = getelementptr inbounds %struct.firmware, %struct.firmware* %13, i32 0, i32 1, !dbg !6271
  %14 = load i8*, i8** %data7, align 8, !dbg !6271
  %15 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6271
  %size8 = getelementptr inbounds %struct.firmware, %struct.firmware* %15, i32 0, i32 0, !dbg !6271
  %16 = load i64, i64* %size8, align 8, !dbg !6271
  %sub = sub i64 %16, 2, !dbg !6271
  %arrayidx9 = getelementptr i8, i8* %14, i64 %sub, !dbg !6271
  %17 = load i8, i8* %arrayidx9, align 1, !dbg !6271
  %conv10 = zext i8 %17 to i32, !dbg !6271
  %18 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6271
  %data11 = getelementptr inbounds %struct.firmware, %struct.firmware* %18, i32 0, i32 1, !dbg !6271
  %19 = load i8*, i8** %data11, align 8, !dbg !6271
  %20 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6271
  %size12 = getelementptr inbounds %struct.firmware, %struct.firmware* %20, i32 0, i32 0, !dbg !6271
  %21 = load i64, i64* %size12, align 8, !dbg !6271
  %sub13 = sub i64 %21, 1, !dbg !6271
  %arrayidx14 = getelementptr i8, i8* %19, i64 %sub13, !dbg !6271
  %22 = load i8, i8* %arrayidx14, align 1, !dbg !6271
  %conv15 = zext i8 %22 to i32, !dbg !6271
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0), i64 %6, i32 %conv, i32 %conv6, i32 %conv10, i32 %conv15) #8, !dbg !6271
  br label %if.end17, !dbg !6271

if.end17:                                         ; preds = %if.then3, %do.body1
  br label %do.end18, !dbg !6274

do.end18:                                         ; preds = %if.end17
  %23 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6275
  %call19 = call i32 @ds3000_writereg(%struct.ds3000_state* %23, i32 178, i32 1) #9, !dbg !6276
  %24 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6277
  %25 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6278
  %data20 = getelementptr inbounds %struct.firmware, %struct.firmware* %25, i32 0, i32 1, !dbg !6279
  %26 = load i8*, i8** %data20, align 8, !dbg !6279
  %27 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6280
  %size21 = getelementptr inbounds %struct.firmware, %struct.firmware* %27, i32 0, i32 0, !dbg !6281
  %28 = load i64, i64* %size21, align 8, !dbg !6281
  %conv22 = trunc i64 %28 to i16, !dbg !6280
  %call23 = call i32 @ds3000_writeFW(%struct.ds3000_state* %24, i32 176, i8* %26, i16 zeroext %conv22) #9, !dbg !6282
  store i32 %call23, i32* %ret, align 4, !dbg !6283
  %29 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6284
  %call24 = call i32 @ds3000_writereg(%struct.ds3000_state* %29, i32 178, i32 0) #9, !dbg !6285
  %30 = load i32, i32* %ret, align 4, !dbg !6286
  ret i32 %30, !dbg !6287
}

; Function Attrs: noredzone
declare dso_local void @release_firmware(%struct.firmware*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_writeFW(%struct.ds3000_state* %state, i32 %reg, i8* %data, i16 zeroext %len) #0 !dbg !6288 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4541, metadata !DIExpression()), !dbg !6291
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4551, metadata !DIExpression()), !dbg !6294
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4553, metadata !DIExpression()), !dbg !6295
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4555, metadata !DIExpression()), !dbg !6296
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4557, metadata !DIExpression()), !dbg !6297
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4563, metadata !DIExpression()), !dbg !6299
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4569, metadata !DIExpression()), !dbg !6301
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4578, metadata !DIExpression()), !dbg !6304
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4580, metadata !DIExpression()), !dbg !6305
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4582, metadata !DIExpression()), !dbg !6306
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4584, metadata !DIExpression()), !dbg !6307
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4586, metadata !DIExpression()), !dbg !6308
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4588, metadata !DIExpression()), !dbg !6309
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4590, metadata !DIExpression()), !dbg !6310
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4592, metadata !DIExpression()), !dbg !6311
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.ds3000_state*, align 8
  %reg.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i16, align 2
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %msg = alloca %struct.i2c_msg, align 8
  %buf = alloca i8*, align 8
  store %struct.ds3000_state* %state, %struct.ds3000_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state.addr, metadata !6312, metadata !DIExpression()), !dbg !6313
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !6314, metadata !DIExpression()), !dbg !6315
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6316, metadata !DIExpression()), !dbg !6317
  store i16 %len, i16* %len.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %len.addr, metadata !6318, metadata !DIExpression()), !dbg !6319
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6320, metadata !DIExpression()), !dbg !6321
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6322, metadata !DIExpression()), !dbg !6323
  store i32 0, i32* %ret, align 4, !dbg !6323
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !6324, metadata !DIExpression()), !dbg !6325
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !6326, metadata !DIExpression()), !dbg !6327
  store i64 33, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !6328
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #10, !dbg !6329
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !6330

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !6331
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !6332
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6333

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !6334
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !6335
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !6336
  %call.i.i = call i32 @get_order(i64 %5) #11, !dbg !6337
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !6308
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !6338
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6339
  %8 = load i32, i32* %order.i.i, align 4, !dbg !6340
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6341
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6342
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6343
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #12, !dbg !6344
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6344
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6344
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6344
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !6344
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6345
  br label %kmalloc.exit, !dbg !6345

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !6346
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6347
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !6347
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6348

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6349
  br label %kmalloc_index.exit.i, !dbg !6349

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6350
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !6351
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6352

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6353
  br label %kmalloc_index.exit.i, !dbg !6353

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6354
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !6355
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6356

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6357
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !6358
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6359

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6360
  br label %kmalloc_index.exit.i, !dbg !6360

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6361
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !6362
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6363

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6364
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !6365
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6366

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6367
  br label %kmalloc_index.exit.i, !dbg !6367

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6368
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !6369
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6370

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6371
  br label %kmalloc_index.exit.i, !dbg !6371

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6372
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !6373
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6374

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6375
  br label %kmalloc_index.exit.i, !dbg !6375

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6376
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !6377
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6378

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6379
  br label %kmalloc_index.exit.i, !dbg !6379

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6380
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !6381
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6382

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6383
  br label %kmalloc_index.exit.i, !dbg !6383

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6384
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !6385
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6386

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6387
  br label %kmalloc_index.exit.i, !dbg !6387

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6388
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !6389
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6390

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6391
  br label %kmalloc_index.exit.i, !dbg !6391

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6392
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !6393
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6394

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6395
  br label %kmalloc_index.exit.i, !dbg !6395

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6396
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !6397
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6398

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6399
  br label %kmalloc_index.exit.i, !dbg !6399

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6400
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !6401
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6402

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6403
  br label %kmalloc_index.exit.i, !dbg !6403

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6404
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !6405
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6406

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6407
  br label %kmalloc_index.exit.i, !dbg !6407

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6408
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !6409
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6410

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6411
  br label %kmalloc_index.exit.i, !dbg !6411

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6412
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !6413
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6414

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6415
  br label %kmalloc_index.exit.i, !dbg !6415

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6416
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !6417
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6418

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6419
  br label %kmalloc_index.exit.i, !dbg !6419

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6420
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !6421
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6422

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6423
  br label %kmalloc_index.exit.i, !dbg !6423

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6424
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !6425
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6426

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6427
  br label %kmalloc_index.exit.i, !dbg !6427

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6428
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !6429
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6430

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6431
  br label %kmalloc_index.exit.i, !dbg !6431

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6432
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !6433
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6434

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6435
  br label %kmalloc_index.exit.i, !dbg !6435

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6436
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !6437
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6438

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6439
  br label %kmalloc_index.exit.i, !dbg !6439

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6440
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !6441
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6442

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6443
  br label %kmalloc_index.exit.i, !dbg !6443

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6444
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !6445
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6446

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6447
  br label %kmalloc_index.exit.i, !dbg !6447

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6448
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !6449
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6450

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6451
  br label %kmalloc_index.exit.i, !dbg !6451

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6452
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !6453
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6454

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6455
  br label %kmalloc_index.exit.i, !dbg !6455

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6456
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !6457
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6458

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6459
  br label %kmalloc_index.exit.i, !dbg !6459

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6460
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !6461
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6462

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6463
  br label %kmalloc_index.exit.i, !dbg !6463

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !6464, !srcloc !4768
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !6465, !srcloc !4772
  unreachable, !dbg !6466

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !6467
  store i32 %43, i32* %index.i, align 4, !dbg !6468
  %44 = load i32, i32* %index.i, align 4, !dbg !6469
  %tobool.i = icmp ne i32 %44, 0, !dbg !6469
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6470

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6471
  br label %kmalloc.exit, !dbg !6471

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !6472
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6473
  %and.i.i = and i32 %46, 17, !dbg !6473
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6473
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6473
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6473
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6473
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6474

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6475
  br label %kmalloc_type.exit.i, !dbg !6475

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6476
  %and2.i.i = and i32 %47, 1, !dbg !6477
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6476
  %48 = zext i1 %tobool3.i.i to i64, !dbg !6476
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6476
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6478
  br label %kmalloc_type.exit.i, !dbg !6478

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !6479
  %idxprom.i = zext i32 %49 to i64, !dbg !6480
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6480
  %50 = load i32, i32* %index.i, align 4, !dbg !6481
  %idxprom6.i = zext i32 %50 to i64, !dbg !6480
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6480
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6480
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !6482
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !6483
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6484
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6485
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #12, !dbg !6486
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6486
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6486
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6486
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !6486
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !6296
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6487
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !6488
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6489
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6490
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #12, !dbg !6491
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6492
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !6493
  store i8* %60, i8** %retval.i, align 8, !dbg !6494
  br label %kmalloc.exit, !dbg !6494

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !6495
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !6496
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #12, !dbg !6497
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6497
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6497
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6497
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !6497
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6498
  br label %kmalloc.exit, !dbg !6498

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !6499
  store i8* %63, i8** %buf, align 8, !dbg !6500
  %64 = load i8*, i8** %buf, align 8, !dbg !6501
  %tobool = icmp ne i8* %64, null, !dbg !6501
  br i1 %tobool, label %if.end, label %if.then, !dbg !6503

if.then:                                          ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !6504
  br label %return, !dbg !6504

if.end:                                           ; preds = %kmalloc.exit
  %65 = load i32, i32* %reg.addr, align 4, !dbg !6505
  %conv = trunc i32 %65 to i8, !dbg !6505
  %66 = load i8*, i8** %buf, align 8, !dbg !6506
  store i8 %conv, i8* %66, align 1, !dbg !6507
  %67 = load %struct.ds3000_state*, %struct.ds3000_state** %state.addr, align 8, !dbg !6508
  %config = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %67, i32 0, i32 1, !dbg !6509
  %68 = load %struct.ds3000_config*, %struct.ds3000_config** %config, align 8, !dbg !6509
  %demod_address = getelementptr inbounds %struct.ds3000_config, %struct.ds3000_config* %68, i32 0, i32 0, !dbg !6510
  %69 = load i8, i8* %demod_address, align 8, !dbg !6510
  %conv1 = zext i8 %69 to i16, !dbg !6508
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !6511
  store i16 %conv1, i16* %addr, align 8, !dbg !6512
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !6513
  store i16 0, i16* %flags, align 2, !dbg !6514
  %70 = load i8*, i8** %buf, align 8, !dbg !6515
  %buf2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !6516
  store i8* %70, i8** %buf2, align 8, !dbg !6517
  %len3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !6518
  store i16 33, i16* %len3, align 4, !dbg !6519
  store i32 0, i32* %i, align 4, !dbg !6520
  br label %for.cond, !dbg !6522

for.cond:                                         ; preds = %for.inc, %if.end
  %71 = load i32, i32* %i, align 4, !dbg !6523
  %72 = load i16, i16* %len.addr, align 2, !dbg !6525
  %conv4 = zext i16 %72 to i32, !dbg !6525
  %cmp = icmp slt i32 %71, %conv4, !dbg !6526
  br i1 %cmp, label %for.body, label %for.end, !dbg !6527

for.body:                                         ; preds = %for.cond
  %73 = load i8*, i8** %buf, align 8, !dbg !6528
  %add.ptr = getelementptr i8, i8* %73, i64 1, !dbg !6530
  %74 = load i8*, i8** %data.addr, align 8, !dbg !6531
  %75 = load i32, i32* %i, align 4, !dbg !6532
  %idx.ext = sext i32 %75 to i64, !dbg !6533
  %add.ptr6 = getelementptr i8, i8* %74, i64 %idx.ext, !dbg !6533
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %add.ptr6, i64 32, i1 false), !dbg !6534
  br label %do.body, !dbg !6535

do.body:                                          ; preds = %for.body
  %76 = load i32, i32* @debug, align 4, !dbg !6536
  %tobool7 = icmp ne i32 %76, 0, !dbg !6536
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !6539

if.then8:                                         ; preds = %do.body
  %77 = load i32, i32* %reg.addr, align 4, !dbg !6536
  %78 = load i16, i16* %len.addr, align 2, !dbg !6536
  %conv9 = zext i16 %78 to i32, !dbg !6536
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.ds3000_writeFW, i64 0, i64 0), i32 %77, i32 %conv9) #8, !dbg !6536
  br label %if.end11, !dbg !6536

if.end11:                                         ; preds = %if.then8, %do.body
  br label %do.end, !dbg !6539

do.end:                                           ; preds = %if.end11
  %79 = load %struct.ds3000_state*, %struct.ds3000_state** %state.addr, align 8, !dbg !6540
  %i2c = getelementptr inbounds %struct.ds3000_state, %struct.ds3000_state* %79, i32 0, i32 0, !dbg !6541
  %80 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !6541
  %call12 = call i32 @i2c_transfer(%struct.i2c_adapter* %80, %struct.i2c_msg* %msg, i32 1) #9, !dbg !6542
  store i32 %call12, i32* %ret, align 4, !dbg !6543
  %81 = load i32, i32* %ret, align 4, !dbg !6544
  %cmp13 = icmp ne i32 %81, 1, !dbg !6546
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !6547

if.then15:                                        ; preds = %do.end
  %82 = load i32, i32* %ret, align 4, !dbg !6548
  %83 = load i32, i32* %reg.addr, align 4, !dbg !6550
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.ds3000_writeFW, i64 0, i64 0), i32 %82, i32 %83) #8, !dbg !6551
  store i32 -121, i32* %ret, align 4, !dbg !6552
  br label %error, !dbg !6553

if.end17:                                         ; preds = %do.end
  br label %for.inc, !dbg !6554

for.inc:                                          ; preds = %if.end17
  %84 = load i32, i32* %i, align 4, !dbg !6555
  %add = add i32 %84, 32, !dbg !6555
  store i32 %add, i32* %i, align 4, !dbg !6555
  br label %for.cond, !dbg !6556, !llvm.loop !6557

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ret, align 4, !dbg !6559
  br label %error, !dbg !6560

error:                                            ; preds = %for.end, %if.then15
  call void @llvm.dbg.label(metadata !6561), !dbg !6562
  %85 = load i8*, i8** %buf, align 8, !dbg !6563
  call void @kfree(i8* %85) #9, !dbg !6564
  %86 = load i32, i32* %ret, align 4, !dbg !6565
  store i32 %86, i32* %retval, align 4, !dbg !6566
  br label %return, !dbg !6566

return:                                           ; preds = %error, %if.then
  %87 = load i32, i32* %retval, align 4, !dbg !6567
  ret i32 %87, !dbg !6567
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds3000_set_carrier_offset(%struct.dvb_frontend* %fe, i32 %carrier_offset_khz) #0 !dbg !6568 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %carrier_offset_khz.addr = alloca i32, align 4
  %state = alloca %struct.ds3000_state*, align 8
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6571, metadata !DIExpression()), !dbg !6572
  store i32 %carrier_offset_khz, i32* %carrier_offset_khz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %carrier_offset_khz.addr, metadata !6573, metadata !DIExpression()), !dbg !6574
  call void @llvm.dbg.declare(metadata %struct.ds3000_state** %state, metadata !6575, metadata !DIExpression()), !dbg !6576
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6577
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6578
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6578
  %2 = bitcast i8* %1 to %struct.ds3000_state*, !dbg !6577
  store %struct.ds3000_state* %2, %struct.ds3000_state** %state, align 8, !dbg !6576
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !6579, metadata !DIExpression()), !dbg !6580
  %3 = load i32, i32* %carrier_offset_khz.addr, align 4, !dbg !6581
  store i32 %3, i32* %tmp, align 4, !dbg !6582
  %4 = load i32, i32* %tmp, align 4, !dbg !6583
  %mul = mul i32 %4, 65536, !dbg !6583
  store i32 %mul, i32* %tmp, align 4, !dbg !6583
  %5 = load i32, i32* %tmp, align 4, !dbg !6584
  %mul1 = mul i32 2, %5, !dbg !6585
  %add = add i32 %mul1, 96000, !dbg !6586
  %div = sdiv i32 %add, 192000, !dbg !6587
  store i32 %div, i32* %tmp, align 4, !dbg !6588
  %6 = load i32, i32* %tmp, align 4, !dbg !6589
  %cmp = icmp slt i32 %6, 0, !dbg !6591
  br i1 %cmp, label %if.then, label %if.end, !dbg !6592

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %tmp, align 4, !dbg !6593
  %add2 = add i32 %7, 65536, !dbg !6593
  store i32 %add2, i32* %tmp, align 4, !dbg !6593
  br label %if.end, !dbg !6594

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6595
  %9 = load i32, i32* %tmp, align 4, !dbg !6596
  %shr = ashr i32 %9, 8, !dbg !6597
  %call = call i32 @ds3000_writereg(%struct.ds3000_state* %8, i32 95, i32 %shr) #9, !dbg !6598
  %10 = load %struct.ds3000_state*, %struct.ds3000_state** %state, align 8, !dbg !6599
  %11 = load i32, i32* %tmp, align 4, !dbg !6600
  %and = and i32 %11, 255, !dbg !6601
  %call3 = call i32 @ds3000_writereg(%struct.ds3000_state* %10, i32 94, i32 %and) #9, !dbg !6602
  ret i32 0, !dbg !6603
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
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
!llvm.module.flags = !{!4325, !4326, !4327, !4328}
!llvm.ident = !{!4329}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 21, type: !319, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !290, globals: !294, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/ds3000.c", directory: "/home/lizy2001/genbc/linux")
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
!294 = !{!295, !367, !372, !377, !382, !387, !392, !397, !0, !402, !4301, !4306, !4311, !4315, !4320}
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 1124, type: !297, isLocal: true, isDefinition: true, align: 64)
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
!368 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 1124, type: !369, isLocal: true, isDefinition: true, align: 8)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 208, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 26)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 1125, type: !374, isLocal: true, isDefinition: true, align: 8)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 472, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 59)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 1127, type: !379, isLocal: true, isDefinition: true, align: 8)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 624, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 78)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author223", scope: !2, file: !3, line: 1128, type: !384, isLocal: true, isDefinition: true, align: 8)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 488, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 61)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file224", scope: !2, file: !3, line: 1129, type: !389, isLocal: true, isDefinition: true, align: 8)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 376, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 47)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license225", scope: !2, file: !3, line: 1129, type: !394, isLocal: true, isDefinition: true, align: 8)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 152, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 19)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_firmware226", scope: !2, file: !3, line: 1130, type: !399, isLocal: true, isDefinition: true, align: 8)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 264, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 33)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "ds3000_ops", scope: !2, file: !3, line: 1087, type: !404, isLocal: true, isDefinition: true)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !406)
!406 = !{!407, !424, !428, !4124, !4125, !4126, !4130, !4131, !4137, !4142, !4146, !4147, !4157, !4162, !4166, !4170, !4175, !4176, !4177, !4178, !4188, !4199, !4203, !4207, !4211, !4215, !4219, !4223, !4224, !4225, !4229, !4283}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !405, file: !51, line: 436, baseType: !408, size: 1280)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !409)
!409 = !{!410, !414, !417, !418, !419, !420, !421, !422, !423}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !408, file: !51, line: 339, baseType: !411, size: 1024)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 1024, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !408, file: !51, line: 340, baseType: !415, size: 32, offset: 1024)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !333, line: 21, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !335, line: 27, baseType: !7)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !408, file: !51, line: 341, baseType: !415, size: 32, offset: 1056)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !408, file: !51, line: 342, baseType: !415, size: 32, offset: 1088)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !408, file: !51, line: 343, baseType: !415, size: 32, offset: 1120)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !408, file: !51, line: 344, baseType: !415, size: 32, offset: 1152)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !408, file: !51, line: 345, baseType: !415, size: 32, offset: 1184)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !408, file: !51, line: 346, baseType: !415, size: 32, offset: 1216)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !408, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !405, file: !51, line: 438, baseType: !425, size: 64, offset: 1280)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 64, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 8)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !405, file: !51, line: 440, baseType: !429, size: 64, offset: 1344)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !434)
!434 = !{!435, !449, !450, !4040, !4041, !4042, !4043, !4044, !4045, !4118, !4122, !4123}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !433, file: !51, line: 687, baseType: !436, size: 32)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !437, line: 19, size: 32, elements: !438)
!437 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !436, file: !437, line: 20, baseType: !440, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !441, line: 113, baseType: !442)
!441 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !441, line: 111, size: 32, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !442, file: !441, line: 112, baseType: !445, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !292, line: 168, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 166, size: 32, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !446, file: !292, line: 167, baseType: !319, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !433, file: !51, line: 688, baseType: !405, size: 6016, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !433, file: !51, line: 689, baseType: !451, size: 64, offset: 6080)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !453)
!453 = !{!454, !455, !461, !462, !463, !467, !468, !4018, !4019, !4020, !4039}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !452, file: !272, line: 102, baseType: !319, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !452, file: !272, line: 103, baseType: !456, size: 128, offset: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !292, line: 178, size: 128, elements: !457)
!457 = !{!458, !460}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !456, file: !292, line: 179, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !456, file: !292, line: 179, baseType: !459, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !452, file: !272, line: 104, baseType: !456, size: 128, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !452, file: !272, line: 105, baseType: !302, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !452, file: !272, line: 106, baseType: !464, size: 48, offset: 384)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 48, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 6)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !452, file: !272, line: 107, baseType: !293, size: 64, offset: 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !452, file: !272, line: 109, baseType: !469, size: 64, offset: 512)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !471)
!471 = !{!472, !3475, !3476, !3479, !3480, !3531, !3619, !3620, !3621, !3622, !3623, !3632, !3737, !3750, !3945, !3946, !3950, !3952, !3953, !3954, !3958, !3964, !3965, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !4006, !4007, !4008, !4011, !4014, !4015, !4016, !4017}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !470, file: !237, line: 462, baseType: !473, size: 512)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !474, line: 64, size: 512, elements: !475)
!474 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!475 = !{!476, !477, !478, !480, !539, !3330, !3469, !3470, !3471, !3472, !3473, !3474}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !473, file: !474, line: 65, baseType: !302, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !473, file: !474, line: 66, baseType: !456, size: 128, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !473, file: !474, line: 67, baseType: !479, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !473, file: !474, line: 68, baseType: !481, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !474, line: 192, size: 704, elements: !483)
!483 = !{!484, !485, !501, !502}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !482, file: !474, line: 193, baseType: !456, size: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !482, file: !474, line: 194, baseType: !486, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !487, line: 83, baseType: !488)
!487 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !487, line: 71, elements: !489)
!489 = !{!490}
!490 = !DIDerivedType(tag: DW_TAG_member, scope: !488, file: !487, line: 72, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !488, file: !487, line: 72, elements: !492)
!492 = !{!493}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !491, file: !487, line: 73, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !487, line: 20, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !494, file: !487, line: 21, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !498, line: 25, baseType: !499)
!498 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !498, line: 25, elements: !500)
!500 = !{}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !482, file: !474, line: 195, baseType: !473, size: 512, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !482, file: !474, line: 196, baseType: !503, size: 64, offset: 640)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !474, line: 156, size: 192, elements: !506)
!506 = !{!507, !512, !517}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !505, file: !474, line: 157, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!319, !481, !479}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !505, file: !474, line: 158, baseType: !513, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!302, !481, !479}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !505, file: !474, line: 159, baseType: !518, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!319, !481, !479, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !474, line: 148, size: 20736, elements: !524)
!524 = !{!525, !529, !533, !534, !538}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !523, file: !474, line: 149, baseType: !526, size: 192)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 192, elements: !527)
!527 = !{!528}
!528 = !DISubrange(count: 3)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !523, file: !474, line: 150, baseType: !530, size: 4096, offset: 192)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 4096, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !523, file: !474, line: 151, baseType: !319, size: 32, offset: 4288)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !523, file: !474, line: 152, baseType: !535, size: 16384, offset: 4320)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 16384, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 2048)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !523, file: !474, line: 153, baseType: !319, size: 32, offset: 20704)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !473, file: !474, line: 69, baseType: !540, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !474, line: 138, size: 448, elements: !542)
!542 = !{!543, !547, !576, !578, !3292, !3320, !3324}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !541, file: !474, line: 139, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !479}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !541, file: !474, line: 140, baseType: !548, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !551, line: 230, size: 128, elements: !552)
!551 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!552 = !{!553, !568}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !550, file: !551, line: 231, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!557, !479, !562, !325}
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !292, line: 60, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !559, line: 73, baseType: !560)
!559 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !559, line: 15, baseType: !561)
!561 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !551, line: 30, size: 128, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !563, file: !551, line: 31, baseType: !302, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !563, file: !551, line: 32, baseType: !567, size: 16, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !292, line: 19, baseType: !336)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !550, file: !551, line: 232, baseType: !569, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!557, !479, !562, !302, !572}
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !292, line: 55, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !559, line: 72, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !559, line: 16, baseType: !575)
!575 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !541, file: !474, line: 141, baseType: !577, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !541, file: !474, line: 142, baseType: !579, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !551, line: 84, size: 320, elements: !583)
!583 = !{!584, !585, !589, !3289, !3290}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !582, file: !551, line: 85, baseType: !302, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !582, file: !551, line: 86, baseType: !586, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!567, !479, !562, !319}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !582, file: !551, line: 88, baseType: !590, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!567, !479, !593, !319}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !551, line: 168, size: 448, elements: !595)
!595 = !{!596, !597, !598, !599, !3284, !3285}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !594, file: !551, line: 169, baseType: !563, size: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !594, file: !551, line: 170, baseType: !572, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !594, file: !551, line: 171, baseType: !293, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !594, file: !551, line: 172, baseType: !600, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!557, !603, !479, !593, !325, !774, !572}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !605)
!605 = !{!606, !624, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3267, !3268, !3277, !3278, !3279, !3280, !3281, !3282, !3283}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !604, file: !208, line: 920, baseType: !607, size: 128)
!607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !604, file: !208, line: 917, size: 128, elements: !608)
!608 = !{!609, !615}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !607, file: !208, line: 918, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !611, line: 58, size: 64, elements: !612)
!611 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!612 = !{!613}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !610, file: !611, line: 59, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !607, file: !208, line: 919, baseType: !616, size: 128, align: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !292, line: 216, size: 128, align: 64, elements: !617)
!617 = !{!618, !620}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !616, file: !292, line: 217, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !616, file: !292, line: 218, baseType: !621, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !619}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !604, file: !208, line: 921, baseType: !625, size: 128, offset: 128)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !626, line: 8, size: 128, elements: !627)
!626 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!627 = !{!628, !632}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !625, file: !626, line: 9, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !631, line: 18, flags: DIFlagFwdDecl)
!631 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!632 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !625, file: !626, line: 10, baseType: !633, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !631, line: 89, size: 1536, elements: !635)
!635 = !{!636, !637, !647, !655, !656, !674, !3218, !3220, !3232, !3233, !3234, !3235, !3236, !3241, !3242, !3243}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !634, file: !631, line: 91, baseType: !7, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !634, file: !631, line: 92, baseType: !638, size: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !639, line: 277, baseType: !640)
!639 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !639, line: 277, size: 32, elements: !641)
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !640, file: !639, line: 277, baseType: !643, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !639, line: 70, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !639, line: 65, size: 32, elements: !645)
!645 = !{!646}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !644, file: !639, line: 66, baseType: !7, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !634, file: !631, line: 93, baseType: !648, size: 128, offset: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !649, line: 38, size: 128, elements: !650)
!649 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!650 = !{!651, !653}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !648, file: !649, line: 39, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !648, file: !649, line: 39, baseType: !654, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !634, file: !631, line: 94, baseType: !633, size: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !634, file: !631, line: 95, baseType: !657, size: 128, offset: 256)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !631, line: 47, size: 128, elements: !658)
!658 = !{!659, !671}
!659 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !631, line: 48, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !631, line: 48, size: 64, elements: !661)
!661 = !{!662, !667}
!662 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !631, line: 49, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !660, file: !631, line: 49, size: 64, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !663, file: !631, line: 50, baseType: !415, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !663, file: !631, line: 50, baseType: !415, size: 32, offset: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !660, file: !631, line: 52, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !333, line: 23, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !335, line: 31, baseType: !670)
!670 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !657, file: !631, line: 54, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !634, file: !631, line: 96, baseType: !675, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !677)
!677 = !{!678, !679, !680, !688, !695, !696, !841, !2912, !2913, !2914, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !3186, !3194, !3195, !3196, !3214, !3215, !3216, !3217}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !676, file: !208, line: 611, baseType: !567, size: 16)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !676, file: !208, line: 612, baseType: !336, size: 16, offset: 16)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !676, file: !208, line: 613, baseType: !681, size: 32, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !682, line: 23, baseType: !683)
!682 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !682, line: 21, size: 32, elements: !684)
!684 = !{!685}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !683, file: !682, line: 22, baseType: !686, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !292, line: 32, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !559, line: 49, baseType: !7)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !676, file: !208, line: 614, baseType: !689, size: 32, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !682, line: 28, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !682, line: 26, size: 32, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !690, file: !682, line: 27, baseType: !693, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !292, line: 33, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !559, line: 50, baseType: !7)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !676, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !676, file: !208, line: 622, baseType: !697, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !700)
!700 = !{!701, !705, !715, !719, !725, !729, !735, !739, !743, !747, !751, !752, !758, !762, !788, !817, !821, !827, !832, !836, !837}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !699, file: !208, line: 1865, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!633, !675, !633, !7}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !699, file: !208, line: 1866, baseType: !706, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!302, !633, !675, !709}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !711, line: 10, size: 128, elements: !712)
!711 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !710, file: !711, line: 11, baseType: !327, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !710, file: !711, line: 12, baseType: !293, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !699, file: !208, line: 1867, baseType: !716, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!319, !675, !319}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !699, file: !208, line: 1868, baseType: !720, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!723, !675, !319}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !699, file: !208, line: 1870, baseType: !726, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!319, !633, !325, !319}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !699, file: !208, line: 1872, baseType: !730, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!319, !675, !633, !567, !733}
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !292, line: 30, baseType: !734)
!734 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !699, file: !208, line: 1873, baseType: !736, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!319, !633, !675, !633}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !699, file: !208, line: 1874, baseType: !740, size: 64, offset: 448)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!319, !675, !633}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !699, file: !208, line: 1875, baseType: !744, size: 64, offset: 512)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!319, !675, !633, !302}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !699, file: !208, line: 1876, baseType: !748, size: 64, offset: 576)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!319, !675, !633, !567}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !699, file: !208, line: 1877, baseType: !740, size: 64, offset: 640)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !699, file: !208, line: 1878, baseType: !753, size: 64, offset: 704)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!319, !675, !633, !567, !756}
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !292, line: 16, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !292, line: 13, baseType: !415)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !699, file: !208, line: 1879, baseType: !759, size: 64, offset: 768)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!319, !675, !633, !675, !633, !7}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !699, file: !208, line: 1881, baseType: !763, size: 64, offset: 832)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!319, !633, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !777, !785, !786, !787}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !767, file: !208, line: 220, baseType: !7, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !767, file: !208, line: 221, baseType: !567, size: 16, offset: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !767, file: !208, line: 222, baseType: !681, size: 32, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !767, file: !208, line: 223, baseType: !689, size: 32, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !767, file: !208, line: 224, baseType: !774, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !292, line: 46, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !559, line: 88, baseType: !776)
!776 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !767, file: !208, line: 225, baseType: !778, size: 128, offset: 192)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !779, line: 13, size: 128, elements: !780)
!779 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!780 = !{!781, !784}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !778, file: !779, line: 14, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !779, line: 8, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !335, line: 30, baseType: !776)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !778, file: !779, line: 15, baseType: !561, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !767, file: !208, line: 226, baseType: !778, size: 128, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !767, file: !208, line: 227, baseType: !778, size: 128, offset: 448)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !767, file: !208, line: 234, baseType: !603, size: 64, offset: 576)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !699, file: !208, line: 1882, baseType: !789, size: 64, offset: 896)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!319, !792, !794, !415, !7}
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !796, line: 22, size: 1152, elements: !797)
!796 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!797 = !{!798, !799, !800, !801, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !795, file: !796, line: 23, baseType: !415, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !795, file: !796, line: 24, baseType: !567, size: 16, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !795, file: !796, line: 25, baseType: !7, size: 32, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !795, file: !796, line: 26, baseType: !802, size: 32, offset: 96)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !292, line: 104, baseType: !415)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !795, file: !796, line: 27, baseType: !668, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !795, file: !796, line: 28, baseType: !668, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !795, file: !796, line: 37, baseType: !668, size: 64, offset: 256)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !795, file: !796, line: 38, baseType: !756, size: 32, offset: 320)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !795, file: !796, line: 39, baseType: !756, size: 32, offset: 352)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !795, file: !796, line: 40, baseType: !681, size: 32, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !795, file: !796, line: 41, baseType: !689, size: 32, offset: 416)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !795, file: !796, line: 42, baseType: !774, size: 64, offset: 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !795, file: !796, line: 43, baseType: !778, size: 128, offset: 512)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !795, file: !796, line: 44, baseType: !778, size: 128, offset: 640)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !795, file: !796, line: 45, baseType: !778, size: 128, offset: 768)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !795, file: !796, line: 46, baseType: !778, size: 128, offset: 896)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !795, file: !796, line: 47, baseType: !668, size: 64, offset: 1024)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !795, file: !796, line: 48, baseType: !668, size: 64, offset: 1088)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !699, file: !208, line: 1883, baseType: !818, size: 64, offset: 960)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!557, !633, !325, !572}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !699, file: !208, line: 1884, baseType: !822, size: 64, offset: 1024)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!319, !675, !825, !668, !668}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !699, file: !208, line: 1886, baseType: !828, size: 64, offset: 1088)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!319, !675, !831, !319}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !699, file: !208, line: 1887, baseType: !833, size: 64, offset: 1152)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!319, !675, !633, !603, !7, !567}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !699, file: !208, line: 1890, baseType: !748, size: 64, offset: 1216)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !699, file: !208, line: 1891, baseType: !838, size: 64, offset: 1280)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!319, !675, !723, !319}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !676, file: !208, line: 623, baseType: !842, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !844)
!844 = !{!845, !846, !847, !848, !849, !850, !897, !2520, !2602, !2685, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2701, !2705, !2706, !2709, !2710, !2713, !2714, !2715, !2756, !2782, !2783, !2784, !2785, !2786, !2787, !2790, !2792, !2799, !2800, !2802, !2803, !2804, !2863, !2864, !2879, !2880, !2881, !2882, !2883, !2886, !2887, !2888, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !843, file: !208, line: 1417, baseType: !456, size: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !843, file: !208, line: 1418, baseType: !756, size: 32, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !843, file: !208, line: 1419, baseType: !344, size: 8, offset: 160)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !843, file: !208, line: 1420, baseType: !575, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !843, file: !208, line: 1421, baseType: !774, size: 64, offset: 256)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !843, file: !208, line: 1422, baseType: !851, size: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !853)
!853 = !{!854, !855, !856, !863, !867, !871, !875, !876, !877, !887, !890, !891, !892, !894, !895, !896}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !852, file: !208, line: 2229, baseType: !302, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !852, file: !208, line: 2230, baseType: !319, size: 32, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !852, file: !208, line: 2238, baseType: !857, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!319, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !862, line: 28, flags: DIFlagFwdDecl)
!862 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!863 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !852, file: !208, line: 2239, baseType: !864, size: 64, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !852, file: !208, line: 2240, baseType: !868, size: 64, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!633, !851, !319, !302, !293}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !852, file: !208, line: 2242, baseType: !872, size: 64, offset: 320)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !842}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !852, file: !208, line: 2243, baseType: !306, size: 64, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !852, file: !208, line: 2244, baseType: !851, size: 64, offset: 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !852, file: !208, line: 2245, baseType: !878, size: 64, offset: 512)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !292, line: 182, size: 64, elements: !879)
!879 = !{!880}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !878, file: !292, line: 183, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !292, line: 186, size: 128, elements: !883)
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !882, file: !292, line: 187, baseType: !881, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !882, file: !292, line: 187, baseType: !886, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !852, file: !208, line: 2247, baseType: !888, offset: 576)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !889, line: 187, elements: !500)
!889 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!890 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !852, file: !208, line: 2248, baseType: !888, offset: 576)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !852, file: !208, line: 2249, baseType: !888, offset: 576)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !852, file: !208, line: 2250, baseType: !893, offset: 576)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !888, elements: !527)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !852, file: !208, line: 2252, baseType: !888, offset: 576)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !852, file: !208, line: 2253, baseType: !888, offset: 576)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !852, file: !208, line: 2254, baseType: !888, offset: 576)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !843, file: !208, line: 1423, baseType: !898, size: 64, offset: 384)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !901)
!901 = !{!902, !906, !910, !911, !915, !921, !925, !926, !927, !931, !935, !936, !937, !938, !944, !949, !950, !957, !958, !959, !960, !2504, !2519}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !900, file: !208, line: 1936, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!675, !842}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !900, file: !208, line: 1937, baseType: !907, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !675}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !900, file: !208, line: 1938, baseType: !907, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !900, file: !208, line: 1940, baseType: !912, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{null, !675, !319}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !900, file: !208, line: 1941, baseType: !916, size: 64, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!319, !675, !919}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !900, file: !208, line: 1942, baseType: !922, size: 64, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!319, !675}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !900, file: !208, line: 1943, baseType: !907, size: 64, offset: 384)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !900, file: !208, line: 1944, baseType: !872, size: 64, offset: 448)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !900, file: !208, line: 1945, baseType: !928, size: 64, offset: 512)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!319, !842, !319}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !900, file: !208, line: 1946, baseType: !932, size: 64, offset: 576)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!319, !842}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !900, file: !208, line: 1947, baseType: !932, size: 64, offset: 640)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !900, file: !208, line: 1948, baseType: !932, size: 64, offset: 704)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !900, file: !208, line: 1949, baseType: !932, size: 64, offset: 768)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !900, file: !208, line: 1950, baseType: !939, size: 64, offset: 832)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!319, !633, !942}
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !900, file: !208, line: 1951, baseType: !945, size: 64, offset: 896)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!319, !842, !948, !325}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !900, file: !208, line: 1952, baseType: !872, size: 64, offset: 960)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !900, file: !208, line: 1954, baseType: !951, size: 64, offset: 1024)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!319, !954, !633}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !956, line: 539, flags: DIFlagFwdDecl)
!956 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!957 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !900, file: !208, line: 1955, baseType: !951, size: 64, offset: 1088)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !900, file: !208, line: 1956, baseType: !951, size: 64, offset: 1152)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !900, file: !208, line: 1957, baseType: !951, size: 64, offset: 1216)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !900, file: !208, line: 1963, baseType: !961, size: 64, offset: 1280)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!319, !842, !964, !291}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !966, line: 68, size: 512, align: 128, elements: !967)
!966 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!967 = !{!968, !969, !2496, !2503}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !965, file: !966, line: 69, baseType: !575, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !965, file: !966, line: 77, baseType: !970, size: 320, offset: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !965, file: !966, line: 77, size: 320, elements: !971)
!971 = !{!972, !1153, !1158, !1186, !1194, !1200, !2488, !2495}
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !966, line: 78, baseType: !973, size: 320)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !970, file: !966, line: 78, size: 320, elements: !974)
!974 = !{!975, !976, !1151, !1152}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !973, file: !966, line: 84, baseType: !456, size: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !973, file: !966, line: 86, baseType: !977, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !979)
!979 = !{!980, !981, !988, !989, !990, !1005, !1021, !1022, !1023, !1024, !1144, !1145, !1148, !1149, !1150}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !978, file: !208, line: 452, baseType: !675, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !978, file: !208, line: 453, baseType: !982, size: 128, offset: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !983, line: 292, size: 128, elements: !984)
!983 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!984 = !{!985, !986, !987}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !982, file: !983, line: 293, baseType: !486)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !982, file: !983, line: 295, baseType: !291, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !982, file: !983, line: 296, baseType: !293, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !978, file: !208, line: 454, baseType: !291, size: 32, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !978, file: !208, line: 455, baseType: !445, size: 32, offset: 224)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !978, file: !208, line: 460, baseType: !991, size: 128, offset: 256)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !992, line: 125, size: 128, elements: !993)
!992 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!993 = !{!994, !1004}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !991, file: !992, line: 126, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !992, line: 31, size: 64, elements: !996)
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !995, file: !992, line: 32, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !992, line: 24, size: 192, align: 64, elements: !1000)
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !999, file: !992, line: 25, baseType: !575, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !999, file: !992, line: 26, baseType: !998, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !999, file: !992, line: 27, baseType: !998, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !991, file: !992, line: 127, baseType: !998, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !978, file: !208, line: 461, baseType: !1006, size: 256, offset: 384)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1007, line: 35, size: 256, elements: !1008)
!1007 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1008 = !{!1009, !1017, !1018, !1020}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1006, file: !1007, line: 36, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1011, line: 13, baseType: !1012)
!1011 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !292, line: 175, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 173, size: 64, elements: !1014)
!1014 = !{!1015}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1013, file: !292, line: 174, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !333, line: 22, baseType: !783)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1006, file: !1007, line: 42, baseType: !1010, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1006, file: !1007, line: 46, baseType: !1019, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !487, line: 29, baseType: !494)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1006, file: !1007, line: 47, baseType: !456, size: 128, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !978, file: !208, line: 462, baseType: !575, size: 64, offset: 640)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !978, file: !208, line: 463, baseType: !575, size: 64, offset: 704)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !978, file: !208, line: 464, baseType: !575, size: 64, offset: 768)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !978, file: !208, line: 465, baseType: !1025, size: 64, offset: 832)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1027)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1028)
!1028 = !{!1029, !1033, !1037, !1041, !1045, !1049, !1055, !1061, !1065, !1070, !1074, !1078, !1082, !1108, !1112, !1118, !1119, !1120, !1124, !1129, !1133, !1140}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1027, file: !208, line: 368, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!319, !964, !919}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1027, file: !208, line: 369, baseType: !1034, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!319, !603, !964}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1027, file: !208, line: 372, baseType: !1038, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!319, !977, !919}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1027, file: !208, line: 375, baseType: !1042, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!319, !964}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1027, file: !208, line: 381, baseType: !1046, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!319, !603, !977, !459, !7}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1027, file: !208, line: 383, baseType: !1050, size: 64, offset: 320)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !1053}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1027, file: !208, line: 385, baseType: !1056, size: 64, offset: 384)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!319, !603, !977, !774, !7, !7, !1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1027, file: !208, line: 388, baseType: !1062, size: 64, offset: 448)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!319, !603, !977, !774, !7, !7, !964, !293}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1027, file: !208, line: 393, baseType: !1066, size: 64, offset: 512)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!1069, !977, !1069}
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !292, line: 125, baseType: !668)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1027, file: !208, line: 394, baseType: !1071, size: 64, offset: 576)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !964, !7, !7}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1027, file: !208, line: 395, baseType: !1075, size: 64, offset: 640)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!319, !964, !291}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1027, file: !208, line: 396, baseType: !1079, size: 64, offset: 704)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null, !964}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1027, file: !208, line: 397, baseType: !1083, size: 64, offset: 768)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!557, !1086, !1106}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1095, !1096, !1097, !1098, !1099}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1087, file: !208, line: 321, baseType: !603, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1087, file: !208, line: 326, baseType: !774, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1087, file: !208, line: 327, baseType: !1092, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !1086, !561, !561}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1087, file: !208, line: 328, baseType: !293, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1087, file: !208, line: 329, baseType: !319, size: 32, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1087, file: !208, line: 330, baseType: !332, size: 16, offset: 288)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1087, file: !208, line: 331, baseType: !332, size: 16, offset: 304)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !208, line: 332, baseType: !1100, size: 64, offset: 320)
!1100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !208, line: 332, size: 64, elements: !1101)
!1101 = !{!1102, !1103}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1100, file: !208, line: 333, baseType: !7, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1100, file: !208, line: 334, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1027, file: !208, line: 402, baseType: !1109, size: 64, offset: 832)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!319, !977, !964, !964, !183}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1027, file: !208, line: 404, baseType: !1113, size: 64, offset: 896)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!733, !964, !1116}
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1117, line: 305, baseType: !7)
!1117 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1027, file: !208, line: 405, baseType: !1079, size: 64, offset: 960)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1027, file: !208, line: 406, baseType: !1042, size: 64, offset: 1024)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1027, file: !208, line: 407, baseType: !1121, size: 64, offset: 1088)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!319, !964, !575, !575}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1027, file: !208, line: 409, baseType: !1125, size: 64, offset: 1152)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !964, !1128, !1128}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1027, file: !208, line: 410, baseType: !1130, size: 64, offset: 1216)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!319, !977, !964}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1027, file: !208, line: 413, baseType: !1134, size: 64, offset: 1280)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!319, !1137, !603, !1139}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1027, file: !208, line: 415, baseType: !1141, size: 64, offset: 1344)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{null, !603}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !978, file: !208, line: 466, baseType: !575, size: 64, offset: 896)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !978, file: !208, line: 467, baseType: !1146, size: 32, offset: 960)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1147, line: 8, baseType: !415)
!1147 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !978, file: !208, line: 468, baseType: !486, offset: 992)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !978, file: !208, line: 469, baseType: !456, size: 128, offset: 1024)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !978, file: !208, line: 470, baseType: !293, size: 64, offset: 1152)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !973, file: !966, line: 87, baseType: !575, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !973, file: !966, line: 94, baseType: !575, size: 64, offset: 256)
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !966, line: 96, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !970, file: !966, line: 96, size: 64, elements: !1155)
!1155 = !{!1156}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1154, file: !966, line: 101, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !292, line: 143, baseType: !668)
!1158 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !966, line: 103, baseType: !1159, size: 320)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !970, file: !966, line: 103, size: 320, elements: !1160)
!1160 = !{!1161, !1171, !1174, !1175}
!1161 = !DIDerivedType(tag: DW_TAG_member, scope: !1159, file: !966, line: 104, baseType: !1162, size: 128)
!1162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1159, file: !966, line: 104, size: 128, elements: !1163)
!1163 = !{!1164, !1165}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1162, file: !966, line: 105, baseType: !456, size: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1162, file: !966, line: 106, baseType: !1166, size: 128)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1162, file: !966, line: 106, size: 128, elements: !1167)
!1167 = !{!1168, !1169, !1170}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1166, file: !966, line: 107, baseType: !964, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1166, file: !966, line: 109, baseType: !319, size: 32, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1166, file: !966, line: 110, baseType: !319, size: 32, offset: 96)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1159, file: !966, line: 117, baseType: !1172, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !966, line: 117, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1159, file: !966, line: 119, baseType: !293, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, scope: !1159, file: !966, line: 120, baseType: !1176, size: 64, offset: 256)
!1176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1159, file: !966, line: 120, size: 64, elements: !1177)
!1177 = !{!1178, !1179, !1180}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1176, file: !966, line: 121, baseType: !293, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1176, file: !966, line: 122, baseType: !575, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !966, line: 123, baseType: !1181, size: 32)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1176, file: !966, line: 123, size: 32, elements: !1182)
!1182 = !{!1183, !1184, !1185}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1181, file: !966, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1181, file: !966, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1181, file: !966, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !966, line: 130, baseType: !1187, size: 192)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !970, file: !966, line: 130, size: 192, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1192, !1193}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1187, file: !966, line: 131, baseType: !575, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1187, file: !966, line: 134, baseType: !344, size: 8, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1187, file: !966, line: 135, baseType: !344, size: 8, offset: 72)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1187, file: !966, line: 136, baseType: !445, size: 32, offset: 96)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1187, file: !966, line: 137, baseType: !7, size: 32, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !966, line: 139, baseType: !1195, size: 256)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !970, file: !966, line: 139, size: 256, elements: !1196)
!1196 = !{!1197, !1198, !1199}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1195, file: !966, line: 140, baseType: !575, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1195, file: !966, line: 141, baseType: !445, size: 32, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1195, file: !966, line: 143, baseType: !456, size: 128, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !966, line: 145, baseType: !1201, size: 256)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !970, file: !966, line: 145, size: 256, elements: !1202)
!1202 = !{!1203, !1204, !1206, !1207, !2487}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1201, file: !966, line: 146, baseType: !575, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1201, file: !966, line: 147, baseType: !1205, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !956, line: 509, baseType: !964)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1201, file: !966, line: 148, baseType: !575, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !966, line: 149, baseType: !1208, size: 64, offset: 192)
!1208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !966, line: 149, size: 64, elements: !1209)
!1209 = !{!1210, !2486}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1208, file: !966, line: 150, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !966, line: 388, size: 7296, elements: !1213)
!1213 = !{!1214, !2482}
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !966, line: 389, baseType: !1215, size: 7296)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1212, file: !966, line: 389, size: 7296, elements: !1216)
!1216 = !{!1217, !1255, !1256, !1257, !1261, !1262, !1263, !1264, !1265, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1306, !1314, !1317, !1363, !1364, !2466, !2467, !2470, !2471, !2472, !2475, !2476, !2477, !2480, !2481}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1215, file: !966, line: 390, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !966, line: 305, size: 1472, elements: !1220)
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1235, !1236, !1241, !1242, !1245, !1249, !1250, !1251, !1252, !1253}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1219, file: !966, line: 308, baseType: !575, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1219, file: !966, line: 309, baseType: !575, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1219, file: !966, line: 313, baseType: !1218, size: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1219, file: !966, line: 313, baseType: !1218, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1219, file: !966, line: 315, baseType: !999, size: 192, align: 64, offset: 256)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1219, file: !966, line: 323, baseType: !575, size: 64, offset: 448)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1219, file: !966, line: 327, baseType: !1211, size: 64, offset: 512)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1219, file: !966, line: 333, baseType: !1229, size: 64, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !956, line: 284, baseType: !1230)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !956, line: 284, size: 64, elements: !1231)
!1231 = !{!1232}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1230, file: !956, line: 284, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1234, line: 19, baseType: !575)
!1234 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1219, file: !966, line: 334, baseType: !575, size: 64, offset: 640)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1219, file: !966, line: 343, baseType: !1237, size: 256, offset: 704)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1219, file: !966, line: 340, size: 256, elements: !1238)
!1238 = !{!1239, !1240}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1237, file: !966, line: 341, baseType: !999, size: 192, align: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1237, file: !966, line: 342, baseType: !575, size: 64, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1219, file: !966, line: 351, baseType: !456, size: 128, offset: 960)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1219, file: !966, line: 353, baseType: !1243, size: 64, offset: 1088)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !966, line: 353, flags: DIFlagFwdDecl)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1219, file: !966, line: 356, baseType: !1246, size: 64, offset: 1152)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1248)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !966, line: 356, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1219, file: !966, line: 359, baseType: !575, size: 64, offset: 1216)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1219, file: !966, line: 361, baseType: !603, size: 64, offset: 1280)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1219, file: !966, line: 362, baseType: !293, size: 64, offset: 1344)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1219, file: !966, line: 365, baseType: !1010, size: 64, offset: 1408)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1219, file: !966, line: 373, baseType: !1254, offset: 1472)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !966, line: 296, elements: !500)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1215, file: !966, line: 391, baseType: !995, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1215, file: !966, line: 392, baseType: !668, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1215, file: !966, line: 394, baseType: !1258, size: 64, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!575, !603, !575, !575, !575, !575}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1215, file: !966, line: 398, baseType: !575, size: 64, offset: 256)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1215, file: !966, line: 399, baseType: !575, size: 64, offset: 320)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1215, file: !966, line: 405, baseType: !575, size: 64, offset: 384)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1215, file: !966, line: 406, baseType: !575, size: 64, offset: 448)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1215, file: !966, line: 407, baseType: !1266, size: 64, offset: 512)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !956, line: 286, baseType: !1268)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !956, line: 286, size: 64, elements: !1269)
!1269 = !{!1270}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1268, file: !956, line: 286, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1234, line: 18, baseType: !575)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1215, file: !966, line: 416, baseType: !445, size: 32, offset: 576)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1215, file: !966, line: 428, baseType: !445, size: 32, offset: 608)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1215, file: !966, line: 437, baseType: !445, size: 32, offset: 640)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1215, file: !966, line: 447, baseType: !445, size: 32, offset: 672)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1215, file: !966, line: 450, baseType: !1010, size: 64, offset: 704)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1215, file: !966, line: 452, baseType: !319, size: 32, offset: 768)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1215, file: !966, line: 454, baseType: !486, offset: 800)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1215, file: !966, line: 457, baseType: !1006, size: 256, offset: 832)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1215, file: !966, line: 459, baseType: !456, size: 128, offset: 1088)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1215, file: !966, line: 466, baseType: !575, size: 64, offset: 1216)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1215, file: !966, line: 467, baseType: !575, size: 64, offset: 1280)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1215, file: !966, line: 469, baseType: !575, size: 64, offset: 1344)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1215, file: !966, line: 470, baseType: !575, size: 64, offset: 1408)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1215, file: !966, line: 471, baseType: !1012, size: 64, offset: 1472)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1215, file: !966, line: 472, baseType: !575, size: 64, offset: 1536)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1215, file: !966, line: 473, baseType: !575, size: 64, offset: 1600)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1215, file: !966, line: 474, baseType: !575, size: 64, offset: 1664)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1215, file: !966, line: 475, baseType: !575, size: 64, offset: 1728)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1215, file: !966, line: 477, baseType: !486, offset: 1792)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1215, file: !966, line: 478, baseType: !575, size: 64, offset: 1792)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1215, file: !966, line: 478, baseType: !575, size: 64, offset: 1856)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1215, file: !966, line: 478, baseType: !575, size: 64, offset: 1920)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1215, file: !966, line: 478, baseType: !575, size: 64, offset: 1984)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1215, file: !966, line: 479, baseType: !575, size: 64, offset: 2048)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1215, file: !966, line: 479, baseType: !575, size: 64, offset: 2112)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1215, file: !966, line: 479, baseType: !575, size: 64, offset: 2176)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1215, file: !966, line: 480, baseType: !575, size: 64, offset: 2240)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1215, file: !966, line: 480, baseType: !575, size: 64, offset: 2304)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1215, file: !966, line: 480, baseType: !575, size: 64, offset: 2368)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1215, file: !966, line: 480, baseType: !575, size: 64, offset: 2432)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1215, file: !966, line: 482, baseType: !1303, size: 2816, offset: 2496)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 2816, elements: !1304)
!1304 = !{!1305}
!1305 = !DISubrange(count: 44)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1215, file: !966, line: 488, baseType: !1307, size: 256, offset: 5312)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1308, line: 60, size: 256, elements: !1309)
!1308 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1309 = !{!1310}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1307, file: !1308, line: 61, baseType: !1311, size: 256)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1010, size: 256, elements: !1312)
!1312 = !{!1313}
!1313 = !DISubrange(count: 4)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1215, file: !966, line: 490, baseType: !1315, size: 64, offset: 5568)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !966, line: 490, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1215, file: !966, line: 493, baseType: !1318, size: 896, offset: 5632)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1319, line: 53, baseType: !1320)
!1319 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1319, line: 13, size: 896, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325, !1328, !1329, !1336, !1337, !1357, !1358, !1359}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1320, file: !1319, line: 18, baseType: !668, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1320, file: !1319, line: 28, baseType: !1012, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1320, file: !1319, line: 31, baseType: !1006, size: 256, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1320, file: !1319, line: 32, baseType: !1326, size: 64, offset: 384)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1319, line: 32, flags: DIFlagFwdDecl)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1320, file: !1319, line: 37, baseType: !336, size: 16, offset: 448)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1320, file: !1319, line: 40, baseType: !1330, size: 192, offset: 512)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1331, line: 53, size: 192, elements: !1332)
!1331 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1332 = !{!1333, !1334, !1335}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1330, file: !1331, line: 54, baseType: !1010, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1330, file: !1331, line: 55, baseType: !486, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1330, file: !1331, line: 59, baseType: !456, size: 128, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1320, file: !1319, line: 41, baseType: !293, size: 64, offset: 704)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1320, file: !1319, line: 42, baseType: !1338, size: 64, offset: 768)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1340)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1341, line: 13, size: 896, elements: !1342)
!1341 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1340, file: !1341, line: 14, baseType: !293, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1340, file: !1341, line: 15, baseType: !575, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1340, file: !1341, line: 17, baseType: !575, size: 64, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1340, file: !1341, line: 17, baseType: !575, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1340, file: !1341, line: 19, baseType: !561, size: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1340, file: !1341, line: 21, baseType: !561, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1340, file: !1341, line: 22, baseType: !561, size: 64, offset: 384)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1340, file: !1341, line: 23, baseType: !561, size: 64, offset: 448)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1340, file: !1341, line: 24, baseType: !561, size: 64, offset: 512)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1340, file: !1341, line: 25, baseType: !561, size: 64, offset: 576)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1340, file: !1341, line: 26, baseType: !561, size: 64, offset: 640)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1340, file: !1341, line: 27, baseType: !561, size: 64, offset: 704)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1340, file: !1341, line: 28, baseType: !561, size: 64, offset: 768)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1340, file: !1341, line: 29, baseType: !561, size: 64, offset: 832)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1320, file: !1319, line: 44, baseType: !445, size: 32, offset: 832)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1320, file: !1319, line: 50, baseType: !332, size: 16, offset: 864)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1320, file: !1319, line: 51, baseType: !1360, size: 16, offset: 880)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !333, line: 18, baseType: !1361)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !335, line: 23, baseType: !1362)
!1362 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1215, file: !966, line: 495, baseType: !575, size: 64, offset: 6528)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1215, file: !966, line: 497, baseType: !1365, size: 64, offset: 6592)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !966, line: 381, size: 384, elements: !1367)
!1367 = !{!1368, !1369, !2465}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1366, file: !966, line: 382, baseType: !445, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1366, file: !966, line: 383, baseType: !1370, size: 128, offset: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !966, line: 376, size: 128, elements: !1371)
!1371 = !{!1372, !2463}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1370, file: !966, line: 377, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1375, line: 640, size: 48640, elements: !1376)
!1375 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1376 = !{!1377, !1383, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1398, !1416, !1427, !1508, !1509, !1510, !1521, !1522, !1524, !1525, !1526, !1527, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1611, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1649, !1651, !1652, !1653, !1665, !1666, !1667, !1668, !1669, !1670, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1694, !1699, !1881, !1882, !1883, !1884, !1888, !1891, !1894, !1897, !1900, !1904, !2005, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2051, !2052, !2053, !2054, !2055, !2060, !2061, !2062, !2065, !2066, !2069, !2072, !2075, !2078, !2121, !2124, !2125, !2204, !2205, !2208, !2209, !2212, !2213, !2214, !2218, !2219, !2220, !2233, !2234, !2235, !2245, !2250, !2253, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1374, file: !1375, line: 646, baseType: !1378, size: 128)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1379, line: 56, size: 128, elements: !1380)
!1379 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1378, file: !1379, line: 57, baseType: !575, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1378, file: !1379, line: 58, baseType: !415, size: 32, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1374, file: !1375, line: 649, baseType: !1384, size: 64, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !561)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1374, file: !1375, line: 657, baseType: !293, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1374, file: !1375, line: 658, baseType: !440, size: 32, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1374, file: !1375, line: 660, baseType: !7, size: 32, offset: 288)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1374, file: !1375, line: 661, baseType: !7, size: 32, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1374, file: !1375, line: 684, baseType: !319, size: 32, offset: 352)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1374, file: !1375, line: 686, baseType: !319, size: 32, offset: 384)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1374, file: !1375, line: 687, baseType: !319, size: 32, offset: 416)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1374, file: !1375, line: 688, baseType: !319, size: 32, offset: 448)
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
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1402, file: !1375, line: 326, baseType: !575, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1402, file: !1375, line: 327, baseType: !415, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1399, file: !1375, line: 454, baseType: !999, size: 192, align: 64, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1399, file: !1375, line: 455, baseType: !456, size: 128, offset: 320)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1399, file: !1375, line: 456, baseType: !7, size: 32, offset: 448)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1399, file: !1375, line: 458, baseType: !668, size: 64, offset: 512)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1399, file: !1375, line: 459, baseType: !668, size: 64, offset: 576)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1399, file: !1375, line: 460, baseType: !668, size: 64, offset: 640)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1399, file: !1375, line: 461, baseType: !668, size: 64, offset: 704)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1399, file: !1375, line: 463, baseType: !668, size: 64, offset: 768)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1399, file: !1375, line: 465, baseType: !1415, offset: 832)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1375, line: 415, elements: !500)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1374, file: !1375, line: 693, baseType: !1417, size: 384, offset: 1408)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1375, line: 489, size: 384, elements: !1418)
!1418 = !{!1419, !1420, !1421, !1422, !1423, !1424, !1425}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1417, file: !1375, line: 490, baseType: !456, size: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1417, file: !1375, line: 491, baseType: !575, size: 64, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1417, file: !1375, line: 492, baseType: !575, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1417, file: !1375, line: 493, baseType: !7, size: 32, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1417, file: !1375, line: 494, baseType: !336, size: 16, offset: 288)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1417, file: !1375, line: 495, baseType: !336, size: 16, offset: 304)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1417, file: !1375, line: 497, baseType: !1426, size: 64, offset: 320)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1374, file: !1375, line: 697, baseType: !1428, size: 1792, offset: 1792)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1375, line: 507, size: 1792, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1505, !1506}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1428, file: !1375, line: 508, baseType: !999, size: 192, align: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1428, file: !1375, line: 515, baseType: !668, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1428, file: !1375, line: 516, baseType: !668, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1428, file: !1375, line: 517, baseType: !668, size: 64, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1428, file: !1375, line: 518, baseType: !668, size: 64, offset: 384)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1428, file: !1375, line: 519, baseType: !668, size: 64, offset: 448)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1428, file: !1375, line: 526, baseType: !1016, size: 64, offset: 512)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1428, file: !1375, line: 527, baseType: !668, size: 64, offset: 576)
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
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1447, file: !1448, line: 10, baseType: !999, size: 192, align: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1447, file: !1448, line: 11, baseType: !1452, size: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1453, line: 29, baseType: !1016)
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
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1466, file: !191, line: 215, baseType: !1019)
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
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1462, size: 4096, elements: !426)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1462, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1462, file: !191, line: 162, baseType: !1484, size: 32, offset: 96)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !292, line: 27, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !559, line: 96, baseType: !319)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1462, file: !191, line: 163, baseType: !1487, size: 32, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !639, line: 276, baseType: !1488)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !639, line: 276, size: 32, elements: !1489)
!1489 = !{!1490}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1488, file: !639, line: 276, baseType: !643, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1462, file: !191, line: 164, baseType: !1459, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1462, file: !191, line: 165, baseType: !1493, size: 128, offset: 256)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1448, line: 14, size: 128, elements: !1494)
!1494 = !{!1495}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1493, file: !1448, line: 15, baseType: !991, size: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1462, file: !191, line: 166, baseType: !1497, size: 64, offset: 384)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!1452}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1462, file: !191, line: 167, baseType: !1452, size: 64, offset: 448)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1444, file: !191, line: 123, baseType: !342, size: 8, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1444, file: !191, line: 124, baseType: !342, size: 8, offset: 456)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1444, file: !191, line: 125, baseType: !342, size: 8, offset: 464)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1444, file: !191, line: 126, baseType: !342, size: 8, offset: 472)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1428, file: !1375, line: 572, baseType: !1444, size: 512, offset: 1216)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1428, file: !1375, line: 580, baseType: !1507, size: 64, offset: 1728)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1374, file: !1375, line: 721, baseType: !7, size: 32, offset: 3584)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1374, file: !1375, line: 722, baseType: !319, size: 32, offset: 3616)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1374, file: !1375, line: 723, baseType: !1511, size: 64, offset: 3648)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1513)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1514, line: 17, baseType: !1515)
!1514 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1514, line: 17, size: 64, elements: !1516)
!1516 = !{!1517}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1515, file: !1514, line: 17, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 64, elements: !1519)
!1519 = !{!1520}
!1520 = !DISubrange(count: 1)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1374, file: !1375, line: 724, baseType: !1513, size: 64, offset: 3712)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1374, file: !1375, line: 749, baseType: !1523, offset: 3776)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1375, line: 290, elements: !500)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1374, file: !1375, line: 751, baseType: !456, size: 128, offset: 3776)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1374, file: !1375, line: 757, baseType: !1211, size: 64, offset: 3904)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1374, file: !1375, line: 758, baseType: !1211, size: 64, offset: 3968)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1374, file: !1375, line: 761, baseType: !1528, size: 320, offset: 4032)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1308, line: 34, size: 320, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1528, file: !1308, line: 35, baseType: !668, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1528, file: !1308, line: 36, baseType: !1532, size: 256, offset: 64)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1218, size: 256, elements: !1312)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1374, file: !1375, line: 766, baseType: !319, size: 32, offset: 4352)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1374, file: !1375, line: 767, baseType: !319, size: 32, offset: 4384)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1374, file: !1375, line: 768, baseType: !319, size: 32, offset: 4416)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1374, file: !1375, line: 770, baseType: !319, size: 32, offset: 4448)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1374, file: !1375, line: 772, baseType: !575, size: 64, offset: 4480)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1374, file: !1375, line: 775, baseType: !7, size: 32, offset: 4544)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1374, file: !1375, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1374, file: !1375, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1374, file: !1375, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1374, file: !1375, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1374, file: !1375, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1374, file: !1375, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1374, file: !1375, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1374, file: !1375, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1374, file: !1375, line: 831, baseType: !575, size: 64, offset: 4672)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1374, file: !1375, line: 833, baseType: !1549, size: 384, offset: 4736)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !1550)
!1550 = !{!1551, !1556}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1549, file: !196, line: 26, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!561, !1555}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !196, line: 27, baseType: !1557, size: 320, offset: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1549, file: !196, line: 27, size: 320, elements: !1558)
!1558 = !{!1559, !1569, !1596}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1557, file: !196, line: 36, baseType: !1560, size: 320)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1557, file: !196, line: 29, size: 320, elements: !1561)
!1561 = !{!1562, !1564, !1565, !1566, !1567, !1568}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1560, file: !196, line: 30, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1560, file: !196, line: 31, baseType: !415, size: 32, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1560, file: !196, line: 32, baseType: !415, size: 32, offset: 96)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1560, file: !196, line: 33, baseType: !415, size: 32, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1560, file: !196, line: 34, baseType: !668, size: 64, offset: 192)
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
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !559, line: 93, baseType: !776)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1579, file: !1580, line: 9, baseType: !776, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1575, file: !196, line: 43, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1588, line: 7, size: 64, elements: !1589)
!1588 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1589 = !{!1590, !1594}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1587, file: !1588, line: 8, baseType: !1591, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1588, line: 5, baseType: !1592)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !333, line: 20, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !335, line: 26, baseType: !319)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1587, file: !1588, line: 9, baseType: !1592, size: 32, offset: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1570, file: !196, line: 45, baseType: !668, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1557, file: !196, line: 54, baseType: !1597, size: 256)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1557, file: !196, line: 48, size: 256, elements: !1598)
!1598 = !{!1599, !1607, !1608, !1609, !1610}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1597, file: !196, line: 49, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1602, line: 36, size: 64, elements: !1603)
!1602 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1603 = !{!1604, !1605, !1606}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1601, file: !1602, line: 37, baseType: !319, size: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1601, file: !1602, line: 38, baseType: !1362, size: 16, offset: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1601, file: !1602, line: 39, baseType: !1362, size: 16, offset: 48)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1597, file: !196, line: 50, baseType: !319, size: 32, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1597, file: !196, line: 51, baseType: !319, size: 32, offset: 96)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1597, file: !196, line: 52, baseType: !575, size: 64, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1597, file: !196, line: 53, baseType: !575, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1374, file: !1375, line: 835, baseType: !1612, size: 32, offset: 5120)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !292, line: 22, baseType: !1613)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !559, line: 28, baseType: !319)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1374, file: !1375, line: 836, baseType: !1612, size: 32, offset: 5152)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1374, file: !1375, line: 840, baseType: !575, size: 64, offset: 5184)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1374, file: !1375, line: 849, baseType: !1373, size: 64, offset: 5248)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1374, file: !1375, line: 852, baseType: !1373, size: 64, offset: 5312)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1374, file: !1375, line: 857, baseType: !456, size: 128, offset: 5376)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1374, file: !1375, line: 858, baseType: !456, size: 128, offset: 5504)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1374, file: !1375, line: 859, baseType: !1373, size: 64, offset: 5632)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1374, file: !1375, line: 867, baseType: !456, size: 128, offset: 5696)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1374, file: !1375, line: 868, baseType: !456, size: 128, offset: 5824)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1374, file: !1375, line: 871, baseType: !1624, size: 64, offset: 5952)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !1626)
!1626 = !{!1627, !1628, !1629, !1630, !1632, !1633, !1640, !1641}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1625, file: !217, line: 61, baseType: !440, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1625, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1625, file: !217, line: 63, baseType: !486, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1625, file: !217, line: 65, baseType: !1631, size: 256, offset: 64)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 256, elements: !1312)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1625, file: !217, line: 66, baseType: !878, size: 64, offset: 320)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1625, file: !217, line: 68, baseType: !1634, size: 128, offset: 384)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1635, line: 40, baseType: !1636)
!1635 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1635, line: 36, size: 128, elements: !1637)
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1636, file: !1635, line: 37, baseType: !486)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1636, file: !1635, line: 38, baseType: !456, size: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1625, file: !217, line: 69, baseType: !616, size: 128, align: 64, offset: 512)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1625, file: !217, line: 70, baseType: !1642, size: 128, offset: 640)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1643, size: 128, elements: !1519)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !1644)
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1643, file: !217, line: 55, baseType: !319, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1643, file: !217, line: 56, baseType: !1647, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1374, file: !1375, line: 872, baseType: !1650, size: 512, offset: 6016)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !882, size: 512, elements: !1312)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1374, file: !1375, line: 873, baseType: !456, size: 128, offset: 6528)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1374, file: !1375, line: 874, baseType: !456, size: 128, offset: 6656)
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
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1660, file: !1661, line: 44, baseType: !1019)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1660, file: !1661, line: 45, baseType: !456, size: 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1374, file: !1375, line: 879, baseType: !948, size: 64, offset: 6848)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1374, file: !1375, line: 882, baseType: !948, size: 64, offset: 6912)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1374, file: !1375, line: 884, baseType: !668, size: 64, offset: 6976)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1374, file: !1375, line: 885, baseType: !668, size: 64, offset: 7040)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1374, file: !1375, line: 890, baseType: !668, size: 64, offset: 7104)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1374, file: !1375, line: 891, baseType: !1671, size: 128, offset: 7168)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1375, line: 242, size: 128, elements: !1672)
!1672 = !{!1673, !1674, !1675}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1671, file: !1375, line: 244, baseType: !668, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1671, file: !1375, line: 245, baseType: !668, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1671, file: !1375, line: 246, baseType: !1019, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1374, file: !1375, line: 900, baseType: !575, size: 64, offset: 7296)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1374, file: !1375, line: 901, baseType: !575, size: 64, offset: 7360)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1374, file: !1375, line: 904, baseType: !668, size: 64, offset: 7424)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1374, file: !1375, line: 907, baseType: !668, size: 64, offset: 7488)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1374, file: !1375, line: 910, baseType: !575, size: 64, offset: 7552)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1374, file: !1375, line: 911, baseType: !575, size: 64, offset: 7616)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1374, file: !1375, line: 914, baseType: !1683, size: 640, offset: 7680)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1684, line: 123, size: 640, elements: !1685)
!1684 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1685 = !{!1686, !1692, !1693}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1683, file: !1684, line: 124, baseType: !1687, size: 576)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1688, size: 576, elements: !527)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1684, line: 108, size: 192, elements: !1689)
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1688, file: !1684, line: 109, baseType: !668, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1688, file: !1684, line: 110, baseType: !1493, size: 128, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1683, file: !1684, line: 125, baseType: !7, size: 32, offset: 576)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1683, file: !1684, line: 126, baseType: !7, size: 32, offset: 608)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1374, file: !1375, line: 917, baseType: !1695, size: 192, offset: 8320)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1684, line: 134, size: 192, elements: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1695, file: !1684, line: 135, baseType: !616, size: 128, align: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1695, file: !1684, line: 136, baseType: !7, size: 32, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1374, file: !1375, line: 923, baseType: !1700, size: 64, offset: 8512)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1703, line: 111, size: 1280, elements: !1704)
!1703 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1724, !1725, !1726, !1727, !1728, !1729, !1834, !1835, !1836, !1837, !1863, !1866, !1876}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1702, file: !1703, line: 112, baseType: !445, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1702, file: !1703, line: 120, baseType: !681, size: 32, offset: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1702, file: !1703, line: 121, baseType: !689, size: 32, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1702, file: !1703, line: 122, baseType: !681, size: 32, offset: 96)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1702, file: !1703, line: 123, baseType: !689, size: 32, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1702, file: !1703, line: 124, baseType: !681, size: 32, offset: 160)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1702, file: !1703, line: 125, baseType: !689, size: 32, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1702, file: !1703, line: 126, baseType: !681, size: 32, offset: 224)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1702, file: !1703, line: 127, baseType: !689, size: 32, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1702, file: !1703, line: 128, baseType: !7, size: 32, offset: 288)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1702, file: !1703, line: 129, baseType: !1716, size: 64, offset: 320)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1717, line: 26, baseType: !1718)
!1717 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1717, line: 24, size: 64, elements: !1719)
!1719 = !{!1720}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1718, file: !1717, line: 25, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 64, elements: !1722)
!1722 = !{!1723}
!1723 = !DISubrange(count: 2)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1702, file: !1703, line: 130, baseType: !1716, size: 64, offset: 384)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1702, file: !1703, line: 131, baseType: !1716, size: 64, offset: 448)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1702, file: !1703, line: 132, baseType: !1716, size: 64, offset: 512)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1702, file: !1703, line: 133, baseType: !1716, size: 64, offset: 576)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1702, file: !1703, line: 135, baseType: !344, size: 8, offset: 640)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1702, file: !1703, line: 137, baseType: !1730, size: 64, offset: 704)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1732, line: 189, size: 1664, elements: !1733)
!1732 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !{!1734, !1735, !1738, !1743, !1744, !1747, !1748, !1753, !1754, !1755, !1756, !1758, !1759, !1760, !1761, !1762, !1798, !1819}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1731, file: !1732, line: 190, baseType: !440, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1731, file: !1732, line: 191, baseType: !1736, size: 32, offset: 32)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1732, line: 28, baseType: !1737)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !292, line: 98, baseType: !1592)
!1738 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !1732, line: 192, baseType: !1739, size: 192, offset: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !1732, line: 192, size: 192, elements: !1740)
!1740 = !{!1741, !1742}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1739, file: !1732, line: 193, baseType: !456, size: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1739, file: !1732, line: 194, baseType: !999, size: 192, align: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1731, file: !1732, line: 199, baseType: !1006, size: 256, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1731, file: !1732, line: 200, baseType: !1745, size: 64, offset: 512)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1732, line: 200, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1731, file: !1732, line: 201, baseType: !293, size: 64, offset: 576)
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !1732, line: 202, baseType: !1749, size: 64, offset: 640)
!1749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !1732, line: 202, size: 64, elements: !1750)
!1750 = !{!1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1749, file: !1732, line: 203, baseType: !782, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1749, file: !1732, line: 204, baseType: !782, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1731, file: !1732, line: 206, baseType: !782, size: 64, offset: 704)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1731, file: !1732, line: 207, baseType: !681, size: 32, offset: 768)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1731, file: !1732, line: 208, baseType: !689, size: 32, offset: 800)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1731, file: !1732, line: 209, baseType: !1757, size: 32, offset: 832)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1732, line: 31, baseType: !802)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1731, file: !1732, line: 210, baseType: !336, size: 16, offset: 864)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1731, file: !1732, line: 211, baseType: !336, size: 16, offset: 880)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1731, file: !1732, line: 215, baseType: !1362, size: 16, offset: 896)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1731, file: !1732, line: 222, baseType: !575, size: 64, offset: 960)
!1762 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !1732, line: 239, baseType: !1763, size: 320, offset: 1024)
!1763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !1732, line: 239, size: 320, elements: !1764)
!1764 = !{!1765, !1790}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1763, file: !1732, line: 240, baseType: !1766, size: 320)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1732, line: 108, size: 320, elements: !1767)
!1767 = !{!1768, !1769, !1779, !1782, !1789}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1766, file: !1732, line: 110, baseType: !575, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1766, file: !1732, line: 111, baseType: !1770, size: 64, offset: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1766, file: !1732, line: 111, size: 64, elements: !1771)
!1771 = !{!1772, !1778}
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !1732, line: 112, baseType: !1773, size: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1770, file: !1732, line: 112, size: 64, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1773, file: !1732, line: 114, baseType: !332, size: 16)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1773, file: !1732, line: 115, baseType: !1777, size: 48, offset: 16)
!1777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 48, elements: !465)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1770, file: !1732, line: 121, baseType: !575, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1766, file: !1732, line: 123, baseType: !1780, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1732, line: 96, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1766, file: !1732, line: 124, baseType: !1783, size: 64, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1732, line: 102, size: 192, elements: !1785)
!1785 = !{!1786, !1787, !1788}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1784, file: !1732, line: 103, baseType: !616, size: 128, align: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1784, file: !1732, line: 104, baseType: !440, size: 32, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1784, file: !1732, line: 105, baseType: !733, size: 8, offset: 160)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1766, file: !1732, line: 125, baseType: !302, size: 64, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_member, scope: !1763, file: !1732, line: 241, baseType: !1791, size: 320)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1763, file: !1732, line: 241, size: 320, elements: !1792)
!1792 = !{!1793, !1794, !1795, !1796, !1797}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1791, file: !1732, line: 242, baseType: !575, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1791, file: !1732, line: 243, baseType: !575, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1791, file: !1732, line: 244, baseType: !1780, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1791, file: !1732, line: 245, baseType: !1783, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1791, file: !1732, line: 246, baseType: !325, size: 64, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !1732, line: 254, baseType: !1799, size: 256, offset: 1344)
!1799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !1732, line: 254, size: 256, elements: !1800)
!1800 = !{!1801, !1807}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1799, file: !1732, line: 255, baseType: !1802, size: 256)
!1802 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1732, line: 128, size: 256, elements: !1803)
!1803 = !{!1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1802, file: !1732, line: 129, baseType: !293, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1802, file: !1732, line: 130, baseType: !1806, size: 256)
!1806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 256, elements: !1312)
!1807 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !1732, line: 256, baseType: !1808, size: 256)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1799, file: !1732, line: 256, size: 256, elements: !1809)
!1809 = !{!1810, !1811}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1808, file: !1732, line: 258, baseType: !456, size: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1808, file: !1732, line: 259, baseType: !1812, size: 128, offset: 128)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1813, line: 22, size: 128, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1814 = !{!1815, !1818}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1812, file: !1813, line: 23, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1813, line: 23, flags: DIFlagFwdDecl)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1812, file: !1813, line: 24, baseType: !575, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1731, file: !1732, line: 274, baseType: !1820, size: 64, offset: 1600)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1732, line: 170, size: 192, elements: !1822)
!1822 = !{!1823, !1832, !1833}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1821, file: !1732, line: 171, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1732, line: 165, baseType: !1825)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!319, !1730, !1828, !1830, !1730}
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
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1839, file: !1840, line: 14, baseType: !440, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1839, file: !1840, line: 15, baseType: !445, size: 32, offset: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1839, file: !1840, line: 16, baseType: !445, size: 32, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1839, file: !1840, line: 21, baseType: !1010, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1839, file: !1840, line: 27, baseType: !575, size: 64, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1839, file: !1840, line: 28, baseType: !575, size: 64, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1839, file: !1840, line: 29, baseType: !1010, size: 64, offset: 320)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1839, file: !1840, line: 32, baseType: !882, size: 128, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1839, file: !1840, line: 33, baseType: !681, size: 32, offset: 512)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1839, file: !1840, line: 37, baseType: !1010, size: 64, offset: 576)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1839, file: !1840, line: 44, baseType: !1853, size: 256, offset: 640)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1854, line: 15, size: 256, elements: !1855)
!1854 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1855 = !{!1856, !1857, !1858, !1859, !1860, !1861, !1862}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1853, file: !1854, line: 16, baseType: !1019)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1853, file: !1854, line: 18, baseType: !319, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1853, file: !1854, line: 19, baseType: !319, size: 32, offset: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1853, file: !1854, line: 20, baseType: !319, size: 32, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1853, file: !1854, line: 21, baseType: !319, size: 32, offset: 96)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1853, file: !1854, line: 22, baseType: !575, size: 64, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1853, file: !1854, line: 23, baseType: !575, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1702, file: !1703, line: 146, baseType: !1864, size: 64, offset: 1024)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !966, line: 516, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1702, file: !1703, line: 147, baseType: !1867, size: 64, offset: 1088)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1703, line: 25, size: 64, elements: !1869)
!1869 = !{!1870, !1871, !1872}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1868, file: !1703, line: 26, baseType: !445, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1868, file: !1703, line: 27, baseType: !319, size: 32, offset: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1868, file: !1703, line: 28, baseType: !1873, offset: 64)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, elements: !1874)
!1874 = !{!1875}
!1875 = !DISubrange(count: 0)
!1876 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !1703, line: 149, baseType: !1877, size: 128, offset: 1152)
!1877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1702, file: !1703, line: 149, size: 128, elements: !1878)
!1878 = !{!1879, !1880}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1877, file: !1703, line: 150, baseType: !319, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1877, file: !1703, line: 151, baseType: !616, size: 128, align: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1374, file: !1375, line: 926, baseType: !1700, size: 64, offset: 8576)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1374, file: !1375, line: 929, baseType: !1700, size: 64, offset: 8640)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1374, file: !1375, line: 933, baseType: !1730, size: 64, offset: 8704)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1374, file: !1375, line: 943, baseType: !1885, size: 128, offset: 8768)
!1885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 128, elements: !1886)
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
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1906, file: !1907, line: 83, baseType: !440, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1906, file: !1907, line: 84, baseType: !445, size: 32, offset: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1906, file: !1907, line: 85, baseType: !319, size: 32, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1906, file: !1907, line: 86, baseType: !456, size: 128, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1906, file: !1907, line: 88, baseType: !1634, size: 128, offset: 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1906, file: !1907, line: 91, baseType: !1373, size: 64, offset: 384)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1906, file: !1907, line: 94, baseType: !1916, size: 192, offset: 448)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1917, line: 30, size: 192, elements: !1918)
!1917 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1918 = !{!1919, !1920}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1916, file: !1917, line: 31, baseType: !456, size: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1916, file: !1917, line: 32, baseType: !1921, size: 64, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1922, line: 25, baseType: !1923)
!1922 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1922, line: 23, size: 64, elements: !1924)
!1924 = !{!1925}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1923, file: !1922, line: 24, baseType: !1518, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1906, file: !1907, line: 97, baseType: !878, size: 64, offset: 640)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1906, file: !1907, line: 100, baseType: !319, size: 32, offset: 704)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1906, file: !1907, line: 106, baseType: !319, size: 32, offset: 736)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1906, file: !1907, line: 107, baseType: !1373, size: 64, offset: 768)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1906, file: !1907, line: 110, baseType: !319, size: 32, offset: 832)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1906, file: !1907, line: 111, baseType: !7, size: 32, offset: 864)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1906, file: !1907, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1906, file: !1907, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1906, file: !1907, line: 128, baseType: !319, size: 32, offset: 928)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1906, file: !1907, line: 129, baseType: !456, size: 128, offset: 960)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1906, file: !1907, line: 132, baseType: !1444, size: 512, offset: 1088)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1906, file: !1907, line: 133, baseType: !1452, size: 64, offset: 1600)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1906, file: !1907, line: 140, baseType: !1939, size: 256, offset: 1664)
!1939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1940, size: 256, elements: !1722)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1907, line: 38, size: 128, elements: !1941)
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1940, file: !1907, line: 39, baseType: !668, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1940, file: !1907, line: 40, baseType: !668, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1906, file: !1907, line: 146, baseType: !1945, size: 192, offset: 1920)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1907, line: 66, size: 192, elements: !1946)
!1946 = !{!1947}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1945, file: !1907, line: 67, baseType: !1948, size: 192)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1907, line: 47, size: 192, elements: !1949)
!1949 = !{!1950, !1951, !1952}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1948, file: !1907, line: 48, baseType: !1012, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1948, file: !1907, line: 49, baseType: !1012, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1948, file: !1907, line: 50, baseType: !1012, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1906, file: !1907, line: 150, baseType: !1683, size: 640, offset: 2112)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1906, file: !1907, line: 153, baseType: !1955, size: 256, offset: 2752)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1624, size: 256, elements: !1312)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1906, file: !1907, line: 159, baseType: !1624, size: 64, offset: 3008)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1906, file: !1907, line: 162, baseType: !319, size: 32, offset: 3072)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1906, file: !1907, line: 164, baseType: !1959, size: 64, offset: 3136)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1907, line: 164, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1906, file: !1907, line: 175, baseType: !1962, size: 32, offset: 3200)
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !639, line: 805, baseType: !1963)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !639, line: 798, size: 32, elements: !1964)
!1964 = !{!1965, !1966}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1963, file: !639, line: 803, baseType: !638, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1963, file: !639, line: 804, baseType: !486, offset: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1906, file: !1907, line: 176, baseType: !668, size: 64, offset: 3264)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1906, file: !1907, line: 176, baseType: !668, size: 64, offset: 3328)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1906, file: !1907, line: 176, baseType: !668, size: 64, offset: 3392)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1906, file: !1907, line: 176, baseType: !668, size: 64, offset: 3456)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1906, file: !1907, line: 177, baseType: !668, size: 64, offset: 3520)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1906, file: !1907, line: 178, baseType: !668, size: 64, offset: 3584)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1906, file: !1907, line: 179, baseType: !1671, size: 128, offset: 3648)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1906, file: !1907, line: 180, baseType: !575, size: 64, offset: 3776)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1906, file: !1907, line: 180, baseType: !575, size: 64, offset: 3840)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1906, file: !1907, line: 180, baseType: !575, size: 64, offset: 3904)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1906, file: !1907, line: 180, baseType: !575, size: 64, offset: 3968)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1906, file: !1907, line: 181, baseType: !575, size: 64, offset: 4032)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1906, file: !1907, line: 181, baseType: !575, size: 64, offset: 4096)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1906, file: !1907, line: 181, baseType: !575, size: 64, offset: 4160)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1906, file: !1907, line: 181, baseType: !575, size: 64, offset: 4224)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1906, file: !1907, line: 182, baseType: !575, size: 64, offset: 4288)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1906, file: !1907, line: 182, baseType: !575, size: 64, offset: 4352)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1906, file: !1907, line: 182, baseType: !575, size: 64, offset: 4416)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1906, file: !1907, line: 182, baseType: !575, size: 64, offset: 4480)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1906, file: !1907, line: 183, baseType: !575, size: 64, offset: 4544)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1906, file: !1907, line: 183, baseType: !575, size: 64, offset: 4608)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1906, file: !1907, line: 184, baseType: !1989, offset: 4672)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1990, line: 12, elements: !500)
!1990 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1906, file: !1907, line: 192, baseType: !670, size: 64, offset: 4672)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1906, file: !1907, line: 203, baseType: !1993, size: 2048, offset: 4736)
!1993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1994, size: 2048, elements: !1886)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1995, line: 43, size: 128, elements: !1996)
!1995 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1994, file: !1995, line: 44, baseType: !574, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1994, file: !1995, line: 45, baseType: !574, size: 64, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1906, file: !1907, line: 220, baseType: !733, size: 8, offset: 6784)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1906, file: !1907, line: 221, baseType: !1362, size: 16, offset: 6800)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1906, file: !1907, line: 222, baseType: !1362, size: 16, offset: 6816)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1906, file: !1907, line: 224, baseType: !1211, size: 64, offset: 6848)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1906, file: !1907, line: 227, baseType: !1330, size: 192, offset: 6912)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1906, file: !1907, line: 233, baseType: !1330, size: 192, offset: 7104)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1374, file: !1375, line: 970, baseType: !2006, size: 64, offset: 9280)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1907, line: 20, size: 16576, elements: !2008)
!2008 = !{!2009, !2010, !2011, !2012}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2007, file: !1907, line: 21, baseType: !486)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2007, file: !1907, line: 22, baseType: !440, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2007, file: !1907, line: 23, baseType: !1634, size: 128, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2007, file: !1907, line: 24, baseType: !2013, size: 16384, offset: 192)
!2013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2014, size: 16384, elements: !531)
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
!2025 = !{null, !319}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2017, file: !1917, line: 38, baseType: !575, size: 64, offset: 64)
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
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1374, file: !1375, line: 976, baseType: !575, size: 64, offset: 9728)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1374, file: !1375, line: 977, baseType: !572, size: 64, offset: 9792)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1374, file: !1375, line: 978, baseType: !7, size: 32, offset: 9856)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1374, file: !1375, line: 980, baseType: !619, size: 64, offset: 9920)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1374, file: !1375, line: 989, baseType: !2043, size: 128, offset: 9984)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2044, line: 35, size: 128, elements: !2045)
!2044 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2045 = !{!2046, !2047, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2043, file: !2044, line: 36, baseType: !319, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2043, file: !2044, line: 37, baseType: !445, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2043, file: !2044, line: 38, baseType: !2049, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2044, line: 23, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1374, file: !1375, line: 992, baseType: !668, size: 64, offset: 10112)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1374, file: !1375, line: 993, baseType: !668, size: 64, offset: 10176)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1374, file: !1375, line: 996, baseType: !486, offset: 10240)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1374, file: !1375, line: 999, baseType: !1019, offset: 10240)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1374, file: !1375, line: 1001, baseType: !2056, size: 64, offset: 10240)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1375, line: 636, size: 64, elements: !2057)
!2057 = !{!2058}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2056, file: !1375, line: 637, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1374, file: !1375, line: 1005, baseType: !991, size: 128, offset: 10304)
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
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2080, file: !2081, line: 100, baseType: !1010, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2080, file: !2081, line: 101, baseType: !445, size: 32, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2080, file: !2081, line: 102, baseType: !445, size: 32, offset: 96)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2080, file: !2081, line: 105, baseType: !486, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2080, file: !2081, line: 107, baseType: !336, size: 16, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2080, file: !2081, line: 109, baseType: !982, size: 128, offset: 192)
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
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2098, file: !2081, line: 84, baseType: !456, size: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2098, file: !2081, line: 85, baseType: !1172, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, scope: !2091, file: !2081, line: 87, baseType: !2103, size: 128, offset: 256)
!2103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2091, file: !2081, line: 87, size: 128, elements: !2104)
!2104 = !{!2105, !2106}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2103, file: !2081, line: 88, baseType: !882, size: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2103, file: !2081, line: 89, baseType: !616, size: 128, align: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2091, file: !2081, line: 92, baseType: !7, size: 32, offset: 384)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2080, file: !2081, line: 111, baseType: !878, size: 64, offset: 384)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2080, file: !2081, line: 113, baseType: !2110, size: 256, offset: 448)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2111, line: 102, size: 256, elements: !2112)
!2111 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2112 = !{!2113, !2114, !2115}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2110, file: !2111, line: 103, baseType: !1010, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2110, file: !2111, line: 104, baseType: !456, size: 128, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2110, file: !2111, line: 105, baseType: !2116, size: 64, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2111, line: 21, baseType: !2117)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !2120}
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1374, file: !1375, line: 1061, baseType: !2122, size: 64, offset: 10944)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1375, line: 43, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1374, file: !1375, line: 1064, baseType: !575, size: 64, offset: 11008)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1374, file: !1375, line: 1065, baseType: !2126, size: 64, offset: 11072)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1917, line: 14, baseType: !2128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1917, line: 12, size: 384, elements: !2129)
!2129 = !{!2130}
!2130 = !DIDerivedType(tag: DW_TAG_member, scope: !2128, file: !1917, line: 13, baseType: !2131, size: 384)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2128, file: !1917, line: 13, size: 384, elements: !2132)
!2132 = !{!2133, !2134, !2135, !2136}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2131, file: !1917, line: 13, baseType: !319, size: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2131, file: !1917, line: 13, baseType: !319, size: 32, offset: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2131, file: !1917, line: 13, baseType: !319, size: 32, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2131, file: !1917, line: 13, baseType: !2137, size: 256, offset: 128)
!2137 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2138, line: 32, size: 256, elements: !2139)
!2138 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2139 = !{!2140, !2145, !2158, !2164, !2173, !2193, !2198}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2137, file: !2138, line: 37, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 34, size: 64, elements: !2142)
!2142 = !{!2143, !2144}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2141, file: !2138, line: 35, baseType: !1613, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2141, file: !2138, line: 36, baseType: !687, size: 32, offset: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2137, file: !2138, line: 45, baseType: !2146, size: 192)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 40, size: 192, elements: !2147)
!2147 = !{!2148, !2150, !2151, !2157}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2146, file: !2138, line: 41, baseType: !2149, size: 32)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !559, line: 95, baseType: !319)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2146, file: !2138, line: 42, baseType: !319, size: 32, offset: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2146, file: !2138, line: 43, baseType: !2152, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2138, line: 11, baseType: !2153)
!2153 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2138, line: 8, size: 64, elements: !2154)
!2154 = !{!2155, !2156}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2153, file: !2138, line: 9, baseType: !319, size: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2153, file: !2138, line: 10, baseType: !293, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2146, file: !2138, line: 44, baseType: !319, size: 32, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2137, file: !2138, line: 52, baseType: !2159, size: 128)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 48, size: 128, elements: !2160)
!2160 = !{!2161, !2162, !2163}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2159, file: !2138, line: 49, baseType: !1613, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2159, file: !2138, line: 50, baseType: !687, size: 32, offset: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2159, file: !2138, line: 51, baseType: !2152, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2137, file: !2138, line: 61, baseType: !2165, size: 256)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 55, size: 256, elements: !2166)
!2166 = !{!2167, !2168, !2169, !2170, !2172}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2165, file: !2138, line: 56, baseType: !1613, size: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2165, file: !2138, line: 57, baseType: !687, size: 32, offset: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2165, file: !2138, line: 58, baseType: !319, size: 32, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2165, file: !2138, line: 59, baseType: !2171, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !559, line: 94, baseType: !560)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2165, file: !2138, line: 60, baseType: !2171, size: 64, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2137, file: !2138, line: 95, baseType: !2174, size: 256)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 64, size: 256, elements: !2175)
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2174, file: !2138, line: 65, baseType: !293, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, scope: !2174, file: !2138, line: 77, baseType: !2178, size: 192, offset: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2174, file: !2138, line: 77, size: 192, elements: !2179)
!2179 = !{!2180, !2181, !2188}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2178, file: !2138, line: 82, baseType: !1362, size: 16)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2178, file: !2138, line: 88, baseType: !2182, size: 192)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !2138, line: 84, size: 192, elements: !2183)
!2183 = !{!2184, !2186, !2187}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2182, file: !2138, line: 85, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 64, elements: !426)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2182, file: !2138, line: 86, baseType: !293, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2182, file: !2138, line: 87, baseType: !293, size: 64, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2178, file: !2138, line: 93, baseType: !2189, size: 96)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !2138, line: 90, size: 96, elements: !2190)
!2190 = !{!2191, !2192}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2189, file: !2138, line: 91, baseType: !2185, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2189, file: !2138, line: 92, baseType: !416, size: 32, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2137, file: !2138, line: 101, baseType: !2194, size: 128)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 98, size: 128, elements: !2195)
!2195 = !{!2196, !2197}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2194, file: !2138, line: 99, baseType: !561, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2194, file: !2138, line: 100, baseType: !319, size: 32, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2137, file: !2138, line: 108, baseType: !2199, size: 128)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 104, size: 128, elements: !2200)
!2200 = !{!2201, !2202, !2203}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2199, file: !2138, line: 105, baseType: !293, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2199, file: !2138, line: 106, baseType: !319, size: 32, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2199, file: !2138, line: 107, baseType: !7, size: 32, offset: 96)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1374, file: !1375, line: 1067, baseType: !1989, offset: 11136)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1374, file: !1375, line: 1099, baseType: !2206, size: 64, offset: 11136)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1375, line: 56, flags: DIFlagFwdDecl)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1374, file: !1375, line: 1103, baseType: !456, size: 128, offset: 11200)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1374, file: !1375, line: 1104, baseType: !2210, size: 64, offset: 11328)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1375, line: 46, flags: DIFlagFwdDecl)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1374, file: !1375, line: 1105, baseType: !1330, size: 192, offset: 11392)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1374, file: !1375, line: 1106, baseType: !7, size: 32, offset: 11584)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1374, file: !1375, line: 1109, baseType: !2215, size: 128, offset: 11648)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2216, size: 128, elements: !1722)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1375, line: 51, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1374, file: !1375, line: 1110, baseType: !1330, size: 192, offset: 11776)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1374, file: !1375, line: 1111, baseType: !456, size: 128, offset: 11968)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1374, file: !1375, line: 1173, baseType: !2221, size: 64, offset: 12096)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2223, line: 62, size: 256, align: 256, elements: !2224)
!2223 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2224 = !{!2225, !2226, !2227, !2232}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2222, file: !2223, line: 75, baseType: !416, size: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2222, file: !2223, line: 90, baseType: !416, size: 32, offset: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2222, file: !2223, line: 124, baseType: !2228, size: 64, offset: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2222, file: !2223, line: 109, size: 64, elements: !2229)
!2229 = !{!2230, !2231}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2228, file: !2223, line: 110, baseType: !669, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2228, file: !2223, line: 112, baseType: !669, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2222, file: !2223, line: 144, baseType: !416, size: 32, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1374, file: !1375, line: 1174, baseType: !415, size: 32, offset: 12160)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1374, file: !1375, line: 1179, baseType: !575, size: 64, offset: 12224)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1374, file: !1375, line: 1182, baseType: !2236, size: 128, offset: 12288)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1308, line: 76, size: 128, elements: !2237)
!2237 = !{!2238, !2243, !2244}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2236, file: !1308, line: 85, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2240, line: 7, size: 64, elements: !2241)
!2240 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2241 = !{!2242}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2239, file: !2240, line: 12, baseType: !1515, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2236, file: !1308, line: 88, baseType: !733, size: 8, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2236, file: !1308, line: 95, baseType: !733, size: 8, offset: 72)
!2245 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !1375, line: 1184, baseType: !2246, size: 128, offset: 12416)
!2246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1374, file: !1375, line: 1184, size: 128, elements: !2247)
!2247 = !{!2248, !2249}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2246, file: !1375, line: 1185, baseType: !440, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2246, file: !1375, line: 1186, baseType: !616, size: 128, align: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1374, file: !1375, line: 1190, baseType: !2251, size: 64, offset: 12544)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1375, line: 53, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1374, file: !1375, line: 1192, baseType: !2254, size: 128, offset: 12608)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1308, line: 64, size: 128, elements: !2255)
!2255 = !{!2256, !2257, !2258}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2254, file: !1308, line: 65, baseType: !964, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2254, file: !1308, line: 67, baseType: !416, size: 32, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2254, file: !1308, line: 68, baseType: !416, size: 32, offset: 96)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1374, file: !1375, line: 1206, baseType: !319, size: 32, offset: 12736)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1374, file: !1375, line: 1207, baseType: !319, size: 32, offset: 12768)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1374, file: !1375, line: 1209, baseType: !575, size: 64, offset: 12800)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1374, file: !1375, line: 1219, baseType: !668, size: 64, offset: 12864)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1374, file: !1375, line: 1220, baseType: !668, size: 64, offset: 12928)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1374, file: !1375, line: 1317, baseType: !319, size: 32, offset: 12992)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1374, file: !1375, line: 1319, baseType: !1373, size: 64, offset: 13056)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1374, file: !1375, line: 1322, baseType: !2267, size: 64, offset: 13120)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2269, line: 56, size: 512, elements: !2270)
!2269 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2270 = !{!2271, !2272, !2273, !2274, !2275, !2276, !2277, !2279}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2268, file: !2269, line: 57, baseType: !2267, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2268, file: !2269, line: 58, baseType: !293, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2268, file: !2269, line: 59, baseType: !575, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2268, file: !2269, line: 60, baseType: !575, size: 64, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2268, file: !2269, line: 61, baseType: !1059, size: 64, offset: 256)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2268, file: !2269, line: 62, baseType: !7, size: 32, offset: 320)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2268, file: !2269, line: 63, baseType: !2278, size: 64, offset: 384)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !292, line: 153, baseType: !668)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2268, file: !2269, line: 64, baseType: !2280, size: 64, offset: 448)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1374, file: !1375, line: 1326, baseType: !440, size: 32, offset: 13184)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1374, file: !1375, line: 1342, baseType: !293, size: 64, offset: 13248)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1374, file: !1375, line: 1343, baseType: !669, size: 64, offset: 13312)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1374, file: !1375, line: 1344, baseType: !668, size: 64, offset: 13376)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1374, file: !1375, line: 1345, baseType: !669, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1374, file: !1375, line: 1346, baseType: !669, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1374, file: !1375, line: 1347, baseType: !669, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1374, file: !1375, line: 1348, baseType: !616, size: 128, align: 64, offset: 13504)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1374, file: !1375, line: 1358, baseType: !2291, size: 34816, offset: 13824)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2292, line: 485, size: 34816, elements: !2293)
!2292 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2293 = !{!2294, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2323, !2324, !2325, !2326, !2327, !2328, !2331, !2332, !2333}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2291, file: !2292, line: 487, baseType: !2295, size: 192)
!2295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2296, size: 192, elements: !527)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2297, line: 16, size: 64, elements: !2298)
!2297 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2298 = !{!2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2296, file: !2297, line: 17, baseType: !332, size: 16)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2296, file: !2297, line: 18, baseType: !332, size: 16, offset: 16)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2296, file: !2297, line: 19, baseType: !332, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2296, file: !2297, line: 19, baseType: !332, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2296, file: !2297, line: 19, baseType: !332, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2296, file: !2297, line: 19, baseType: !332, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2296, file: !2297, line: 19, baseType: !332, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2296, file: !2297, line: 20, baseType: !332, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2296, file: !2297, line: 20, baseType: !332, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2296, file: !2297, line: 20, baseType: !332, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2296, file: !2297, line: 20, baseType: !332, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2296, file: !2297, line: 20, baseType: !332, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2296, file: !2297, line: 20, baseType: !332, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2291, file: !2292, line: 491, baseType: !575, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2291, file: !2292, line: 495, baseType: !336, size: 16, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2291, file: !2292, line: 496, baseType: !336, size: 16, offset: 272)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2291, file: !2292, line: 497, baseType: !336, size: 16, offset: 288)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2291, file: !2292, line: 498, baseType: !336, size: 16, offset: 304)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2291, file: !2292, line: 502, baseType: !575, size: 64, offset: 320)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2291, file: !2292, line: 503, baseType: !575, size: 64, offset: 384)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2291, file: !2292, line: 514, baseType: !2320, size: 256, offset: 448)
!2320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2321, size: 256, elements: !1312)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2292, line: 483, flags: DIFlagFwdDecl)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2291, file: !2292, line: 516, baseType: !575, size: 64, offset: 704)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2291, file: !2292, line: 518, baseType: !575, size: 64, offset: 768)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2291, file: !2292, line: 520, baseType: !575, size: 64, offset: 832)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2291, file: !2292, line: 521, baseType: !575, size: 64, offset: 896)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2291, file: !2292, line: 522, baseType: !575, size: 64, offset: 960)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2291, file: !2292, line: 528, baseType: !2329, size: 64, offset: 1024)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2292, line: 10, flags: DIFlagFwdDecl)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2291, file: !2292, line: 535, baseType: !575, size: 64, offset: 1088)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2291, file: !2292, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2291, file: !2292, line: 540, baseType: !2334, size: 33280, offset: 1536)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2335, line: 317, size: 33280, elements: !2336)
!2335 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2336 = !{!2337, !2338, !2339}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2334, file: !2335, line: 330, baseType: !7, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2334, file: !2335, line: 337, baseType: !575, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2334, file: !2335, line: 348, baseType: !2340, size: 32768, offset: 512)
!2340 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2335, line: 304, size: 32768, elements: !2341)
!2341 = !{!2342, !2357, !2396, !2446, !2459}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2340, file: !2335, line: 305, baseType: !2343, size: 896)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2335, line: 12, size: 896, elements: !2344)
!2344 = !{!2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2356}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2343, file: !2335, line: 13, baseType: !415, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2343, file: !2335, line: 14, baseType: !415, size: 32, offset: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2343, file: !2335, line: 15, baseType: !415, size: 32, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2343, file: !2335, line: 16, baseType: !415, size: 32, offset: 96)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2343, file: !2335, line: 17, baseType: !415, size: 32, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2343, file: !2335, line: 18, baseType: !415, size: 32, offset: 160)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2343, file: !2335, line: 19, baseType: !415, size: 32, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2343, file: !2335, line: 22, baseType: !2353, size: 640, offset: 224)
!2353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 640, elements: !2354)
!2354 = !{!2355}
!2355 = !DISubrange(count: 20)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2343, file: !2335, line: 25, baseType: !415, size: 32, offset: 864)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2340, file: !2335, line: 306, baseType: !2358, size: 4096, align: 128)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2335, line: 34, size: 4096, align: 128, elements: !2359)
!2359 = !{!2360, !2361, !2362, !2363, !2364, !2379, !2380, !2381, !2385, !2387, !2391}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2358, file: !2335, line: 35, baseType: !332, size: 16)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2358, file: !2335, line: 36, baseType: !332, size: 16, offset: 16)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2358, file: !2335, line: 37, baseType: !332, size: 16, offset: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2358, file: !2335, line: 38, baseType: !332, size: 16, offset: 48)
!2364 = !DIDerivedType(tag: DW_TAG_member, scope: !2358, file: !2335, line: 39, baseType: !2365, size: 128, offset: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2358, file: !2335, line: 39, size: 128, elements: !2366)
!2366 = !{!2367, !2372}
!2367 = !DIDerivedType(tag: DW_TAG_member, scope: !2365, file: !2335, line: 40, baseType: !2368, size: 128)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2365, file: !2335, line: 40, size: 128, elements: !2369)
!2369 = !{!2370, !2371}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2368, file: !2335, line: 41, baseType: !668, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2368, file: !2335, line: 42, baseType: !668, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, scope: !2365, file: !2335, line: 44, baseType: !2373, size: 128)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2365, file: !2335, line: 44, size: 128, elements: !2374)
!2374 = !{!2375, !2376, !2377, !2378}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2373, file: !2335, line: 45, baseType: !415, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2373, file: !2335, line: 46, baseType: !415, size: 32, offset: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2373, file: !2335, line: 47, baseType: !415, size: 32, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2373, file: !2335, line: 48, baseType: !415, size: 32, offset: 96)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2358, file: !2335, line: 51, baseType: !415, size: 32, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2358, file: !2335, line: 52, baseType: !415, size: 32, offset: 224)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2358, file: !2335, line: 55, baseType: !2382, size: 1024, offset: 256)
!2382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 1024, elements: !2383)
!2383 = !{!2384}
!2384 = !DISubrange(count: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2358, file: !2335, line: 58, baseType: !2386, size: 2048, offset: 1280)
!2386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 2048, elements: !531)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2358, file: !2335, line: 60, baseType: !2388, size: 384, offset: 3328)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 384, elements: !2389)
!2389 = !{!2390}
!2390 = !DISubrange(count: 12)
!2391 = !DIDerivedType(tag: DW_TAG_member, scope: !2358, file: !2335, line: 62, baseType: !2392, size: 384, offset: 3712)
!2392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2358, file: !2335, line: 62, size: 384, elements: !2393)
!2393 = !{!2394, !2395}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2392, file: !2335, line: 63, baseType: !2388, size: 384)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2392, file: !2335, line: 64, baseType: !2388, size: 384)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2340, file: !2335, line: 307, baseType: !2397, size: 1088)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2335, line: 79, size: 1088, elements: !2398)
!2398 = !{!2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2445}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2397, file: !2335, line: 80, baseType: !415, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2397, file: !2335, line: 81, baseType: !415, size: 32, offset: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2397, file: !2335, line: 82, baseType: !415, size: 32, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2397, file: !2335, line: 83, baseType: !415, size: 32, offset: 96)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2397, file: !2335, line: 84, baseType: !415, size: 32, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2397, file: !2335, line: 85, baseType: !415, size: 32, offset: 160)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2397, file: !2335, line: 86, baseType: !415, size: 32, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2397, file: !2335, line: 88, baseType: !2353, size: 640, offset: 224)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2397, file: !2335, line: 89, baseType: !342, size: 8, offset: 864)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2397, file: !2335, line: 90, baseType: !342, size: 8, offset: 872)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2397, file: !2335, line: 91, baseType: !342, size: 8, offset: 880)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2397, file: !2335, line: 92, baseType: !342, size: 8, offset: 888)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2397, file: !2335, line: 93, baseType: !342, size: 8, offset: 896)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2397, file: !2335, line: 94, baseType: !342, size: 8, offset: 904)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2397, file: !2335, line: 95, baseType: !2414, size: 64, offset: 960)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2416, line: 11, size: 128, elements: !2417)
!2416 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2417 = !{!2418, !2419}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2415, file: !2416, line: 12, baseType: !561, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2415, file: !2416, line: 13, baseType: !2420, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2422, line: 56, size: 1344, elements: !2423)
!2422 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2423 = !{!2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2421, file: !2422, line: 61, baseType: !575, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2421, file: !2422, line: 62, baseType: !575, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2421, file: !2422, line: 63, baseType: !575, size: 64, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2421, file: !2422, line: 64, baseType: !575, size: 64, offset: 192)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2421, file: !2422, line: 65, baseType: !575, size: 64, offset: 256)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2421, file: !2422, line: 66, baseType: !575, size: 64, offset: 320)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2421, file: !2422, line: 68, baseType: !575, size: 64, offset: 384)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2421, file: !2422, line: 69, baseType: !575, size: 64, offset: 448)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2421, file: !2422, line: 70, baseType: !575, size: 64, offset: 512)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2421, file: !2422, line: 71, baseType: !575, size: 64, offset: 576)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2421, file: !2422, line: 72, baseType: !575, size: 64, offset: 640)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2421, file: !2422, line: 73, baseType: !575, size: 64, offset: 704)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2421, file: !2422, line: 74, baseType: !575, size: 64, offset: 768)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2421, file: !2422, line: 75, baseType: !575, size: 64, offset: 832)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2421, file: !2422, line: 76, baseType: !575, size: 64, offset: 896)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2421, file: !2422, line: 81, baseType: !575, size: 64, offset: 960)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2421, file: !2422, line: 83, baseType: !575, size: 64, offset: 1024)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2421, file: !2422, line: 84, baseType: !575, size: 64, offset: 1088)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2421, file: !2422, line: 85, baseType: !575, size: 64, offset: 1152)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2421, file: !2422, line: 86, baseType: !575, size: 64, offset: 1216)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2421, file: !2422, line: 87, baseType: !575, size: 64, offset: 1280)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2397, file: !2335, line: 96, baseType: !415, size: 32, offset: 1024)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2340, file: !2335, line: 308, baseType: !2447, size: 4608, align: 512)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2335, line: 289, size: 4608, align: 512, elements: !2448)
!2448 = !{!2449, !2450, !2457}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2447, file: !2335, line: 290, baseType: !2358, size: 4096, align: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2447, file: !2335, line: 291, baseType: !2451, size: 512, offset: 4096)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2335, line: 268, size: 512, elements: !2452)
!2452 = !{!2453, !2454, !2455}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2451, file: !2335, line: 269, baseType: !668, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2451, file: !2335, line: 270, baseType: !668, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2451, file: !2335, line: 271, baseType: !2456, size: 384, offset: 128)
!2456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 384, elements: !465)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2447, file: !2335, line: 292, baseType: !2458, offset: 4608)
!2458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, elements: !1874)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2340, file: !2335, line: 309, baseType: !2460, size: 32768)
!2460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 32768, elements: !2461)
!2461 = !{!2462}
!2462 = !DISubrange(count: 4096)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1370, file: !966, line: 378, baseType: !2464, size: 64, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1366, file: !966, line: 384, baseType: !1655, size: 192, offset: 192)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1215, file: !966, line: 500, baseType: !486, offset: 6656)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1215, file: !966, line: 501, baseType: !2468, size: 64, offset: 6656)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !966, line: 387, flags: DIFlagFwdDecl)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1215, file: !966, line: 516, baseType: !1864, size: 64, offset: 6720)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1215, file: !966, line: 519, baseType: !603, size: 64, offset: 6784)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1215, file: !966, line: 521, baseType: !2473, size: 64, offset: 6848)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !966, line: 521, flags: DIFlagFwdDecl)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1215, file: !966, line: 545, baseType: !445, size: 32, offset: 6912)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1215, file: !966, line: 548, baseType: !733, size: 8, offset: 6944)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1215, file: !966, line: 550, baseType: !2478, offset: 6952)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2479, line: 142, elements: !500)
!2479 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1215, file: !966, line: 554, baseType: !2110, size: 256, offset: 6976)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1215, file: !966, line: 557, baseType: !415, size: 32, offset: 7232)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1212, file: !966, line: 565, baseType: !2483, offset: 7296)
!2483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, elements: !2484)
!2484 = !{!2485}
!2485 = !DISubrange(count: -1)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1208, file: !966, line: 151, baseType: !445, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1201, file: !966, line: 156, baseType: !486, offset: 256)
!2488 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !966, line: 159, baseType: !2489, size: 128)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !970, file: !966, line: 159, size: 128, elements: !2490)
!2490 = !{!2491, !2494}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2489, file: !966, line: 161, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !966, line: 161, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2489, file: !966, line: 162, baseType: !293, size: 64, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !970, file: !966, line: 176, baseType: !616, size: 128, align: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, scope: !965, file: !966, line: 179, baseType: !2497, size: 32, offset: 384)
!2497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !965, file: !966, line: 179, size: 32, elements: !2498)
!2498 = !{!2499, !2500, !2501, !2502}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2497, file: !966, line: 184, baseType: !445, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2497, file: !966, line: 192, baseType: !7, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2497, file: !966, line: 194, baseType: !7, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2497, file: !966, line: 195, baseType: !319, size: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !965, file: !966, line: 199, baseType: !445, size: 32, offset: 416)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !900, file: !208, line: 1964, baseType: !2505, size: 64, offset: 1344)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!561, !842, !2508}
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2510, line: 12, size: 256, elements: !2511)
!2510 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2511 = !{!2512, !2513, !2514, !2515, !2516}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2509, file: !2510, line: 13, baseType: !291, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2509, file: !2510, line: 16, baseType: !319, size: 32, offset: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2509, file: !2510, line: 23, baseType: !575, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2509, file: !2510, line: 30, baseType: !575, size: 64, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2509, file: !2510, line: 33, baseType: !2517, size: 64, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !966, line: 27, flags: DIFlagFwdDecl)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !900, file: !208, line: 1966, baseType: !2505, size: 64, offset: 1408)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !843, file: !208, line: 1424, baseType: !2521, size: 64, offset: 448)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2523)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !2524)
!2524 = !{!2525, !2571, !2575, !2579, !2580, !2581, !2582, !2583, !2588, !2593, !2597}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2523, file: !202, line: 323, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!319, !2529}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !2531)
!2531 = !{!2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2556, !2557, !2558}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2530, file: !202, line: 295, baseType: !882, size: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2530, file: !202, line: 296, baseType: !456, size: 128, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2530, file: !202, line: 297, baseType: !456, size: 128, offset: 256)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2530, file: !202, line: 298, baseType: !456, size: 128, offset: 384)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2530, file: !202, line: 299, baseType: !1330, size: 192, offset: 512)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2530, file: !202, line: 300, baseType: !486, offset: 704)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2530, file: !202, line: 301, baseType: !445, size: 32, offset: 704)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2530, file: !202, line: 302, baseType: !842, size: 64, offset: 768)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2530, file: !202, line: 303, baseType: !2541, size: 64, offset: 832)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !2542)
!2542 = !{!2543, !2555}
!2543 = !DIDerivedType(tag: DW_TAG_member, scope: !2541, file: !202, line: 69, baseType: !2544, size: 32)
!2544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2541, file: !202, line: 69, size: 32, elements: !2545)
!2545 = !{!2546, !2547, !2548}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2544, file: !202, line: 70, baseType: !681, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2544, file: !202, line: 71, baseType: !689, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2544, file: !202, line: 72, baseType: !2549, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2550, line: 24, baseType: !2551)
!2550 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2550, line: 22, size: 32, elements: !2552)
!2552 = !{!2553}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2551, file: !2550, line: 23, baseType: !2554, size: 32)
!2554 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2550, line: 20, baseType: !687)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2541, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2530, file: !202, line: 304, baseType: !774, size: 64, offset: 896)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2530, file: !202, line: 305, baseType: !575, size: 64, offset: 960)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2530, file: !202, line: 306, baseType: !2559, size: 576, offset: 1024)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !2560)
!2560 = !{!2561, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2559, file: !202, line: 206, baseType: !2562, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !776)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2559, file: !202, line: 207, baseType: !2562, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2559, file: !202, line: 208, baseType: !2562, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2559, file: !202, line: 209, baseType: !2562, size: 64, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2559, file: !202, line: 210, baseType: !2562, size: 64, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2559, file: !202, line: 211, baseType: !2562, size: 64, offset: 320)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2559, file: !202, line: 212, baseType: !2562, size: 64, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2559, file: !202, line: 213, baseType: !782, size: 64, offset: 448)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2559, file: !202, line: 214, baseType: !782, size: 64, offset: 512)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2523, file: !202, line: 324, baseType: !2572, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!2529, !842, !319}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2523, file: !202, line: 325, baseType: !2576, size: 64, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{null, !2529}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2523, file: !202, line: 326, baseType: !2526, size: 64, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2523, file: !202, line: 327, baseType: !2526, size: 64, offset: 256)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2523, file: !202, line: 328, baseType: !2526, size: 64, offset: 320)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2523, file: !202, line: 329, baseType: !928, size: 64, offset: 384)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2523, file: !202, line: 332, baseType: !2584, size: 64, offset: 448)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!2587, !675}
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2523, file: !202, line: 333, baseType: !2589, size: 64, offset: 512)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!319, !675, !2592}
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2523, file: !202, line: 335, baseType: !2594, size: 64, offset: 576)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!319, !675, !2587}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2523, file: !202, line: 337, baseType: !2598, size: 64, offset: 640)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!319, !842, !2601}
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !843, file: !208, line: 1425, baseType: !2603, size: 64, offset: 512)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2605)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !2606)
!2606 = !{!2607, !2611, !2612, !2616, !2617, !2618, !2633, !2656, !2660, !2661, !2684}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2605, file: !202, line: 429, baseType: !2608, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!319, !842, !319, !319, !792}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2605, file: !202, line: 430, baseType: !928, size: 64, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2605, file: !202, line: 431, baseType: !2613, size: 64, offset: 128)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!319, !842, !7}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2605, file: !202, line: 432, baseType: !2613, size: 64, offset: 192)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2605, file: !202, line: 433, baseType: !928, size: 64, offset: 256)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2605, file: !202, line: 434, baseType: !2619, size: 64, offset: 320)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!319, !842, !319, !2622}
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !2624)
!2624 = !{!2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2623, file: !202, line: 416, baseType: !319, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2623, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2623, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2623, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2623, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2623, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2623, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2623, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2605, file: !202, line: 435, baseType: !2634, size: 64, offset: 384)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!319, !842, !2541, !2637}
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !2639)
!2639 = !{!2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2638, file: !202, line: 344, baseType: !319, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2638, file: !202, line: 345, baseType: !668, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2638, file: !202, line: 346, baseType: !668, size: 64, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2638, file: !202, line: 347, baseType: !668, size: 64, offset: 192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2638, file: !202, line: 348, baseType: !668, size: 64, offset: 256)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2638, file: !202, line: 349, baseType: !668, size: 64, offset: 320)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2638, file: !202, line: 350, baseType: !668, size: 64, offset: 384)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2638, file: !202, line: 351, baseType: !1016, size: 64, offset: 448)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2638, file: !202, line: 353, baseType: !1016, size: 64, offset: 512)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2638, file: !202, line: 354, baseType: !319, size: 32, offset: 576)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2638, file: !202, line: 355, baseType: !319, size: 32, offset: 608)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2638, file: !202, line: 356, baseType: !668, size: 64, offset: 640)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2638, file: !202, line: 357, baseType: !668, size: 64, offset: 704)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2638, file: !202, line: 358, baseType: !668, size: 64, offset: 768)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2638, file: !202, line: 359, baseType: !1016, size: 64, offset: 832)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2638, file: !202, line: 360, baseType: !319, size: 32, offset: 896)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2605, file: !202, line: 436, baseType: !2657, size: 64, offset: 448)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!319, !842, !2601, !2637}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2605, file: !202, line: 438, baseType: !2634, size: 64, offset: 512)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2605, file: !202, line: 439, baseType: !2662, size: 64, offset: 576)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!319, !842, !2665}
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !2667)
!2667 = !{!2668, !2669}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2666, file: !202, line: 410, baseType: !7, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2666, file: !202, line: 411, baseType: !2670, size: 1344, offset: 64)
!2670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2671, size: 1344, elements: !527)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !2672)
!2672 = !{!2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2683}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2671, file: !202, line: 396, baseType: !7, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2671, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2671, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2671, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2671, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2671, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2671, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2671, file: !202, line: 404, baseType: !670, size: 64, offset: 256)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2671, file: !202, line: 405, baseType: !2682, size: 64, offset: 320)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !292, line: 126, baseType: !668)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2671, file: !202, line: 406, baseType: !2682, size: 64, offset: 384)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2605, file: !202, line: 440, baseType: !2613, size: 64, offset: 640)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !843, file: !208, line: 1426, baseType: !2686, size: 64, offset: 576)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2688)
!2688 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !843, file: !208, line: 1427, baseType: !575, size: 64, offset: 640)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !843, file: !208, line: 1428, baseType: !575, size: 64, offset: 704)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !843, file: !208, line: 1429, baseType: !575, size: 64, offset: 768)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !843, file: !208, line: 1430, baseType: !633, size: 64, offset: 832)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !843, file: !208, line: 1431, baseType: !1006, size: 256, offset: 896)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !843, file: !208, line: 1432, baseType: !319, size: 32, offset: 1152)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !843, file: !208, line: 1433, baseType: !445, size: 32, offset: 1184)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !843, file: !208, line: 1437, baseType: !2697, size: 64, offset: 1216)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2700)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !843, file: !208, line: 1449, baseType: !2702, size: 64, offset: 1280)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !649, line: 34, size: 64, elements: !2703)
!2703 = !{!2704}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2702, file: !649, line: 35, baseType: !652, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !843, file: !208, line: 1450, baseType: !456, size: 128, offset: 1344)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !843, file: !208, line: 1451, baseType: !2707, size: 64, offset: 1472)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !843, file: !208, line: 1452, baseType: !2076, size: 64, offset: 1536)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !843, file: !208, line: 1453, baseType: !2711, size: 64, offset: 1600)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !843, file: !208, line: 1454, baseType: !882, size: 128, offset: 1664)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !843, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !843, file: !208, line: 1456, baseType: !2716, size: 2432, offset: 1856)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !2717)
!2717 = !{!2718, !2719, !2720, !2722, !2754}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2716, file: !202, line: 519, baseType: !7, size: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2716, file: !202, line: 520, baseType: !1006, size: 256, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2716, file: !202, line: 521, baseType: !2721, size: 192, offset: 320)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 192, elements: !527)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2716, file: !202, line: 522, baseType: !2723, size: 1728, offset: 512)
!2723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2724, size: 1728, elements: !527)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !2725)
!2725 = !{!2726, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2724, file: !202, line: 223, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !2729)
!2729 = !{!2730, !2731, !2744, !2745}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2728, file: !202, line: 444, baseType: !319, size: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2728, file: !202, line: 445, baseType: !2732, size: 64, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2734)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !2735)
!2735 = !{!2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2734, file: !202, line: 311, baseType: !928, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2734, file: !202, line: 312, baseType: !928, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2734, file: !202, line: 313, baseType: !928, size: 64, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2734, file: !202, line: 314, baseType: !928, size: 64, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2734, file: !202, line: 315, baseType: !2526, size: 64, offset: 256)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2734, file: !202, line: 316, baseType: !2526, size: 64, offset: 320)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2734, file: !202, line: 317, baseType: !2526, size: 64, offset: 384)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2734, file: !202, line: 318, baseType: !2598, size: 64, offset: 448)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2728, file: !202, line: 446, baseType: !306, size: 64, offset: 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2728, file: !202, line: 447, baseType: !2727, size: 64, offset: 192)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2724, file: !202, line: 224, baseType: !319, size: 32, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2724, file: !202, line: 226, baseType: !456, size: 128, offset: 128)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2724, file: !202, line: 227, baseType: !575, size: 64, offset: 256)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2724, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2724, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2724, file: !202, line: 230, baseType: !2562, size: 64, offset: 384)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2724, file: !202, line: 231, baseType: !2562, size: 64, offset: 448)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2724, file: !202, line: 232, baseType: !293, size: 64, offset: 512)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2716, file: !202, line: 523, baseType: !2755, size: 192, offset: 2240)
!2755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2732, size: 192, elements: !527)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !843, file: !208, line: 1458, baseType: !2757, size: 2112, offset: 4288)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !2758)
!2758 = !{!2759, !2760, !2761}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2757, file: !208, line: 1411, baseType: !319, size: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2757, file: !208, line: 1412, baseType: !1634, size: 128, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2757, file: !208, line: 1413, baseType: !2762, size: 1920, offset: 192)
!2762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2763, size: 1920, elements: !527)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2764, line: 12, size: 640, elements: !2765)
!2764 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2765 = !{!2766, !2774, !2775, !2780, !2781}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2763, file: !2764, line: 13, baseType: !2767, size: 320)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2768, line: 17, size: 320, elements: !2769)
!2768 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2769 = !{!2770, !2771, !2772, !2773}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2767, file: !2768, line: 18, baseType: !319, size: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2767, file: !2768, line: 19, baseType: !319, size: 32, offset: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2767, file: !2768, line: 20, baseType: !1634, size: 128, offset: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2767, file: !2768, line: 22, baseType: !616, size: 128, align: 64, offset: 192)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2763, file: !2764, line: 14, baseType: !364, size: 64, offset: 320)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2763, file: !2764, line: 15, baseType: !2776, size: 64, offset: 384)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2777, line: 16, size: 64, elements: !2778)
!2777 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2778 = !{!2779}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2776, file: !2777, line: 17, baseType: !1373, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2763, file: !2764, line: 16, baseType: !1634, size: 128, offset: 448)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2763, file: !2764, line: 17, baseType: !445, size: 32, offset: 576)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !843, file: !208, line: 1465, baseType: !293, size: 64, offset: 6400)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !843, file: !208, line: 1468, baseType: !415, size: 32, offset: 6464)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !843, file: !208, line: 1470, baseType: !782, size: 64, offset: 6528)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !843, file: !208, line: 1471, baseType: !782, size: 64, offset: 6592)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !843, file: !208, line: 1473, baseType: !416, size: 32, offset: 6656)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !843, file: !208, line: 1474, baseType: !2788, size: 64, offset: 6720)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !843, file: !208, line: 1477, baseType: !2791, size: 256, offset: 6784)
!2791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 256, elements: !2383)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !843, file: !208, line: 1478, baseType: !2793, size: 128, offset: 7040)
!2793 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2794, line: 18, baseType: !2795)
!2794 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2794, line: 16, size: 128, elements: !2796)
!2796 = !{!2797}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2795, file: !2794, line: 17, baseType: !2798, size: 128)
!2798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 128, elements: !1886)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !843, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !843, file: !208, line: 1481, baseType: !2801, size: 32, offset: 7200)
!2801 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !292, line: 150, baseType: !7)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !843, file: !208, line: 1487, baseType: !1330, size: 192, offset: 7232)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !843, file: !208, line: 1493, baseType: !302, size: 64, offset: 7424)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !843, file: !208, line: 1495, baseType: !2805, size: 64, offset: 7488)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2807)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !631, line: 135, size: 1024, align: 512, elements: !2808)
!2808 = !{!2809, !2813, !2814, !2821, !2827, !2831, !2835, !2839, !2840, !2844, !2848, !2853, !2857}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2807, file: !631, line: 136, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!319, !633, !7}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2807, file: !631, line: 137, baseType: !2810, size: 64, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2807, file: !631, line: 138, baseType: !2815, size: 64, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!319, !2818, !2820}
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2807, file: !631, line: 139, baseType: !2822, size: 64, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!319, !2818, !7, !302, !2825}
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2807, file: !631, line: 141, baseType: !2828, size: 64, offset: 256)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!319, !2818}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2807, file: !631, line: 142, baseType: !2832, size: 64, offset: 320)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!319, !633}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2807, file: !631, line: 143, baseType: !2836, size: 64, offset: 384)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{null, !633}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2807, file: !631, line: 144, baseType: !2836, size: 64, offset: 448)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2807, file: !631, line: 145, baseType: !2841, size: 64, offset: 512)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{null, !633, !675}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2807, file: !631, line: 146, baseType: !2845, size: 64, offset: 576)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!325, !633, !325, !319}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2807, file: !631, line: 147, baseType: !2849, size: 64, offset: 640)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!629, !2852}
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2807, file: !631, line: 148, baseType: !2854, size: 64, offset: 704)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!319, !792, !733}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2807, file: !631, line: 149, baseType: !2858, size: 64, offset: 768)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!633, !633, !2861}
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !843, file: !208, line: 1500, baseType: !319, size: 32, offset: 7552)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !843, file: !208, line: 1502, baseType: !2865, size: 448, offset: 7616)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2510, line: 60, size: 448, elements: !2866)
!2866 = !{!2867, !2872, !2873, !2874, !2875, !2876, !2877}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2865, file: !2510, line: 61, baseType: !2868, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!575, !2871, !2508}
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2865, file: !2510, line: 63, baseType: !2868, size: 64, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2865, file: !2510, line: 66, baseType: !561, size: 64, offset: 128)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2865, file: !2510, line: 67, baseType: !319, size: 32, offset: 192)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2865, file: !2510, line: 68, baseType: !7, size: 32, offset: 224)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2865, file: !2510, line: 71, baseType: !456, size: 128, offset: 256)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2865, file: !2510, line: 77, baseType: !2878, size: 64, offset: 384)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !843, file: !208, line: 1505, baseType: !1010, size: 64, offset: 8064)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !843, file: !208, line: 1508, baseType: !1010, size: 64, offset: 8128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !843, file: !208, line: 1511, baseType: !319, size: 32, offset: 8192)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !843, file: !208, line: 1514, baseType: !1146, size: 32, offset: 8224)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !843, file: !208, line: 1517, baseType: !2884, size: 64, offset: 8256)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2111, line: 18, flags: DIFlagFwdDecl)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !843, file: !208, line: 1518, baseType: !878, size: 64, offset: 8320)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !843, file: !208, line: 1525, baseType: !1864, size: 64, offset: 8384)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !843, file: !208, line: 1532, baseType: !2889, size: 64, offset: 8448)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2890, line: 52, size: 64, elements: !2891)
!2890 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2891 = !{!2892}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2889, file: !2890, line: 53, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2890, line: 40, size: 256, elements: !2895)
!2895 = !{!2896, !2897, !2902}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2894, file: !2890, line: 42, baseType: !486)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2894, file: !2890, line: 44, baseType: !2898, size: 192)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2890, line: 28, size: 192, elements: !2899)
!2899 = !{!2900, !2901}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2898, file: !2890, line: 29, baseType: !456, size: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2898, file: !2890, line: 31, baseType: !561, size: 64, offset: 128)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2894, file: !2890, line: 49, baseType: !561, size: 64, offset: 192)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !843, file: !208, line: 1533, baseType: !2889, size: 64, offset: 8512)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !843, file: !208, line: 1534, baseType: !616, size: 128, align: 64, offset: 8576)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !843, file: !208, line: 1535, baseType: !2110, size: 256, offset: 8704)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !843, file: !208, line: 1537, baseType: !1330, size: 192, offset: 8960)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !843, file: !208, line: 1542, baseType: !319, size: 32, offset: 9152)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !843, file: !208, line: 1545, baseType: !486, offset: 9184)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !843, file: !208, line: 1546, baseType: !456, size: 128, offset: 9216)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !843, file: !208, line: 1548, baseType: !486, offset: 9344)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !843, file: !208, line: 1549, baseType: !456, size: 128, offset: 9344)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !676, file: !208, line: 624, baseType: !977, size: 64, offset: 256)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !676, file: !208, line: 631, baseType: !575, size: 64, offset: 320)
!2914 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !208, line: 639, baseType: !2915, size: 32, offset: 384)
!2915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !676, file: !208, line: 639, size: 32, elements: !2916)
!2916 = !{!2917, !2919}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2915, file: !208, line: 640, baseType: !2918, size: 32)
!2918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2915, file: !208, line: 641, baseType: !7, size: 32)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !676, file: !208, line: 643, baseType: !756, size: 32, offset: 416)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !676, file: !208, line: 644, baseType: !774, size: 64, offset: 448)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !676, file: !208, line: 645, baseType: !778, size: 128, offset: 512)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !676, file: !208, line: 646, baseType: !778, size: 128, offset: 640)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !676, file: !208, line: 647, baseType: !778, size: 128, offset: 768)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !676, file: !208, line: 648, baseType: !486, offset: 896)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !676, file: !208, line: 649, baseType: !336, size: 16, offset: 896)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !676, file: !208, line: 650, baseType: !342, size: 8, offset: 912)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !676, file: !208, line: 651, baseType: !342, size: 8, offset: 920)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !676, file: !208, line: 652, baseType: !2682, size: 64, offset: 960)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !676, file: !208, line: 659, baseType: !575, size: 64, offset: 1024)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !676, file: !208, line: 660, baseType: !1006, size: 256, offset: 1088)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !676, file: !208, line: 662, baseType: !575, size: 64, offset: 1344)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !676, file: !208, line: 663, baseType: !575, size: 64, offset: 1408)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !676, file: !208, line: 665, baseType: !882, size: 128, offset: 1472)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !676, file: !208, line: 666, baseType: !456, size: 128, offset: 1600)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !676, file: !208, line: 675, baseType: !456, size: 128, offset: 1728)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !676, file: !208, line: 676, baseType: !456, size: 128, offset: 1856)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !676, file: !208, line: 677, baseType: !456, size: 128, offset: 1984)
!2939 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !208, line: 678, baseType: !2940, size: 128, offset: 2112)
!2940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !676, file: !208, line: 678, size: 128, elements: !2941)
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2940, file: !208, line: 679, baseType: !878, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2940, file: !208, line: 680, baseType: !616, size: 128, align: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !676, file: !208, line: 682, baseType: !1012, size: 64, offset: 2240)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !676, file: !208, line: 683, baseType: !1012, size: 64, offset: 2304)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !676, file: !208, line: 684, baseType: !445, size: 32, offset: 2368)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !676, file: !208, line: 685, baseType: !445, size: 32, offset: 2400)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !676, file: !208, line: 686, baseType: !445, size: 32, offset: 2432)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !676, file: !208, line: 688, baseType: !445, size: 32, offset: 2464)
!2950 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !208, line: 690, baseType: !2951, size: 64, offset: 2496)
!2951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !676, file: !208, line: 690, size: 64, elements: !2952)
!2952 = !{!2953, !3185}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2951, file: !208, line: 691, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2956)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !2957)
!2957 = !{!2958, !2959, !2963, !2968, !2972, !2973, !2974, !2978, !2991, !2992, !3009, !3013, !3014, !3018, !3019, !3023, !3028, !3029, !3033, !3037, !3145, !3149, !3150, !3154, !3155, !3159, !3163, !3168, !3172, !3176, !3180, !3184}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2956, file: !208, line: 1823, baseType: !306, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2956, file: !208, line: 1824, baseType: !2960, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!774, !603, !774, !319}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2956, file: !208, line: 1825, baseType: !2964, size: 64, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!557, !603, !325, !572, !2967}
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2956, file: !208, line: 1826, baseType: !2969, size: 64, offset: 192)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!557, !603, !302, !572, !2967}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2956, file: !208, line: 1827, baseType: !1083, size: 64, offset: 256)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2956, file: !208, line: 1828, baseType: !1083, size: 64, offset: 320)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2956, file: !208, line: 1829, baseType: !2975, size: 64, offset: 384)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!319, !1086, !733}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2956, file: !208, line: 1830, baseType: !2979, size: 64, offset: 448)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!319, !603, !2982}
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !2984)
!2984 = !{!2985, !2990}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2983, file: !208, line: 1777, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !2987)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!319, !2982, !302, !319, !774, !668, !7}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2983, file: !208, line: 1778, baseType: !774, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2956, file: !208, line: 1831, baseType: !2979, size: 64, offset: 512)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2956, file: !208, line: 1832, baseType: !2993, size: 64, offset: 576)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!2996, !603, !2998}
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2997, line: 52, baseType: !7)
!2997 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3000, line: 43, size: 128, elements: !3001)
!3000 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!3001 = !{!3002, !3008}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2999, file: !3000, line: 44, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3000, line: 37, baseType: !3004)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{null, !603, !3007, !2998}
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2999, file: !3000, line: 45, baseType: !2996, size: 32, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2956, file: !208, line: 1833, baseType: !3010, size: 64, offset: 640)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!561, !603, !7, !575}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2956, file: !208, line: 1834, baseType: !3010, size: 64, offset: 704)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2956, file: !208, line: 1835, baseType: !3015, size: 64, offset: 768)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!319, !603, !1218}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2956, file: !208, line: 1836, baseType: !575, size: 64, offset: 832)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2956, file: !208, line: 1837, baseType: !3020, size: 64, offset: 896)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!319, !675, !603}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2956, file: !208, line: 1838, baseType: !3024, size: 64, offset: 960)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!319, !603, !3027}
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !293)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2956, file: !208, line: 1839, baseType: !3020, size: 64, offset: 1024)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2956, file: !208, line: 1840, baseType: !3030, size: 64, offset: 1088)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!319, !603, !774, !774, !319}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2956, file: !208, line: 1841, baseType: !3034, size: 64, offset: 1152)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!319, !319, !603, !319}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2956, file: !208, line: 1842, baseType: !3038, size: 64, offset: 1216)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!319, !603, !319, !3041}
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !3043)
!3043 = !{!3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3075, !3076, !3077, !3090, !3121}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3042, file: !208, line: 1063, baseType: !3041, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3042, file: !208, line: 1064, baseType: !456, size: 128, offset: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3042, file: !208, line: 1065, baseType: !882, size: 128, offset: 192)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3042, file: !208, line: 1066, baseType: !456, size: 128, offset: 320)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3042, file: !208, line: 1069, baseType: !456, size: 128, offset: 448)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3042, file: !208, line: 1072, baseType: !3027, size: 64, offset: 576)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3042, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3042, file: !208, line: 1074, baseType: !344, size: 8, offset: 672)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3042, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3042, file: !208, line: 1076, baseType: !319, size: 32, offset: 736)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3042, file: !208, line: 1077, baseType: !1634, size: 128, offset: 768)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3042, file: !208, line: 1078, baseType: !603, size: 64, offset: 896)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3042, file: !208, line: 1079, baseType: !774, size: 64, offset: 960)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3042, file: !208, line: 1080, baseType: !774, size: 64, offset: 1024)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3042, file: !208, line: 1082, baseType: !3059, size: 64, offset: 1088)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !3061)
!3061 = !{!3062, !3070, !3071, !3072, !3073, !3074}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3060, file: !208, line: 1315, baseType: !3063)
!3063 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3064, line: 20, baseType: !3065)
!3064 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3064, line: 11, elements: !3066)
!3066 = !{!3067}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3065, file: !3064, line: 12, baseType: !3068)
!3068 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !498, line: 33, baseType: !3069)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !498, line: 31, elements: !500)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3060, file: !208, line: 1316, baseType: !319, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3060, file: !208, line: 1317, baseType: !319, size: 32, offset: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3060, file: !208, line: 1318, baseType: !3059, size: 64, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3060, file: !208, line: 1319, baseType: !603, size: 64, offset: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3060, file: !208, line: 1320, baseType: !616, size: 128, align: 64, offset: 192)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3042, file: !208, line: 1084, baseType: !575, size: 64, offset: 1152)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3042, file: !208, line: 1085, baseType: !575, size: 64, offset: 1216)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3042, file: !208, line: 1087, baseType: !3078, size: 64, offset: 1280)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3080)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !3081)
!3081 = !{!3082, !3086}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3080, file: !208, line: 1012, baseType: !3083, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{null, !3041, !3041}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3080, file: !208, line: 1013, baseType: !3087, size: 64, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{null, !3041}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3042, file: !208, line: 1088, baseType: !3091, size: 64, offset: 1344)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3093)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !3094)
!3094 = !{!3095, !3099, !3103, !3104, !3108, !3112, !3116, !3120}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3093, file: !208, line: 1017, baseType: !3096, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!3027, !3027}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3093, file: !208, line: 1018, baseType: !3100, size: 64, offset: 64)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{null, !3027}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3093, file: !208, line: 1019, baseType: !3087, size: 64, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3093, file: !208, line: 1020, baseType: !3105, size: 64, offset: 192)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!319, !3041, !319}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3093, file: !208, line: 1021, baseType: !3109, size: 64, offset: 256)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!733, !3041}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3093, file: !208, line: 1022, baseType: !3113, size: 64, offset: 320)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!319, !3041, !319, !459}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3093, file: !208, line: 1023, baseType: !3117, size: 64, offset: 384)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{null, !3041, !1060}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3093, file: !208, line: 1024, baseType: !3109, size: 64, offset: 448)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3042, file: !208, line: 1097, baseType: !3122, size: 256, offset: 1408)
!3122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3042, file: !208, line: 1089, size: 256, elements: !3123)
!3123 = !{!3124, !3133, !3139}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3122, file: !208, line: 1090, baseType: !3125, size: 256)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3126, line: 10, size: 256, elements: !3127)
!3126 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3127 = !{!3128, !3129, !3132}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3125, file: !3126, line: 11, baseType: !415, size: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3125, file: !3126, line: 12, baseType: !3130, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3126, line: 5, flags: DIFlagFwdDecl)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3125, file: !3126, line: 13, baseType: !456, size: 128, offset: 128)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3122, file: !208, line: 1091, baseType: !3134, size: 64)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3126, line: 17, size: 64, elements: !3135)
!3135 = !{!3136}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3134, file: !3126, line: 18, baseType: !3137, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3126, line: 16, flags: DIFlagFwdDecl)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3122, file: !208, line: 1096, baseType: !3140, size: 192)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3122, file: !208, line: 1092, size: 192, elements: !3141)
!3141 = !{!3142, !3143, !3144}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3140, file: !208, line: 1093, baseType: !456, size: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3140, file: !208, line: 1094, baseType: !319, size: 32, offset: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3140, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2956, file: !208, line: 1843, baseType: !3146, size: 64, offset: 1280)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!557, !603, !964, !319, !572, !2967, !319}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2956, file: !208, line: 1844, baseType: !1258, size: 64, offset: 1344)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2956, file: !208, line: 1845, baseType: !3151, size: 64, offset: 1408)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!319, !319}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2956, file: !208, line: 1846, baseType: !3038, size: 64, offset: 1472)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2956, file: !208, line: 1847, baseType: !3156, size: 64, offset: 1536)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!557, !2251, !603, !2967, !572, !7}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2956, file: !208, line: 1848, baseType: !3160, size: 64, offset: 1600)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!557, !603, !2967, !2251, !572, !7}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2956, file: !208, line: 1849, baseType: !3164, size: 64, offset: 1664)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!319, !603, !561, !3167, !1060}
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2956, file: !208, line: 1850, baseType: !3169, size: 64, offset: 1728)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!561, !603, !319, !774, !774}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2956, file: !208, line: 1852, baseType: !3173, size: 64, offset: 1792)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{null, !954, !603}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2956, file: !208, line: 1856, baseType: !3177, size: 64, offset: 1856)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!557, !603, !774, !603, !774, !572, !7}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2956, file: !208, line: 1858, baseType: !3181, size: 64, offset: 1920)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!774, !603, !774, !603, !774, !774, !7}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2956, file: !208, line: 1861, baseType: !3030, size: 64, offset: 1984)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2951, file: !208, line: 692, baseType: !907, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !676, file: !208, line: 694, baseType: !3187, size: 64, offset: 2560)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !3189)
!3189 = !{!3190, !3191, !3192, !3193}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3188, file: !208, line: 1101, baseType: !486)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3188, file: !208, line: 1102, baseType: !456, size: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3188, file: !208, line: 1103, baseType: !456, size: 128, offset: 128)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3188, file: !208, line: 1104, baseType: !456, size: 128, offset: 256)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !676, file: !208, line: 695, baseType: !978, size: 1216, align: 64, offset: 2624)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !676, file: !208, line: 696, baseType: !456, size: 128, offset: 3840)
!3196 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !208, line: 697, baseType: !3197, size: 64, offset: 3968)
!3197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !676, file: !208, line: 697, size: 64, elements: !3198)
!3198 = !{!3199, !3200, !3201, !3212, !3213}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3197, file: !208, line: 698, baseType: !2251, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3197, file: !208, line: 699, baseType: !2707, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3197, file: !208, line: 700, baseType: !3202, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3204, line: 14, size: 832, elements: !3205)
!3204 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3205 = !{!3206, !3207, !3208, !3209, !3210, !3211}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3203, file: !3204, line: 15, baseType: !473, size: 512)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3203, file: !3204, line: 16, baseType: !306, size: 64, offset: 512)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3203, file: !3204, line: 17, baseType: !2954, size: 64, offset: 576)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3203, file: !3204, line: 18, baseType: !456, size: 128, offset: 640)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3203, file: !3204, line: 19, baseType: !756, size: 32, offset: 768)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3203, file: !3204, line: 20, baseType: !7, size: 32, offset: 800)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3197, file: !208, line: 701, baseType: !325, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3197, file: !208, line: 702, baseType: !7, size: 32)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !676, file: !208, line: 705, baseType: !416, size: 32, offset: 4032)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !676, file: !208, line: 708, baseType: !416, size: 32, offset: 4064)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !676, file: !208, line: 709, baseType: !2788, size: 64, offset: 4096)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !676, file: !208, line: 720, baseType: !293, size: 64, offset: 4160)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !634, file: !631, line: 98, baseType: !3219, size: 256, offset: 448)
!3219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 256, elements: !2383)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !634, file: !631, line: 101, baseType: !3221, size: 32, offset: 704)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3222, line: 25, size: 32, elements: !3223)
!3222 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3223 = !{!3224}
!3224 = !DIDerivedType(tag: DW_TAG_member, scope: !3221, file: !3222, line: 26, baseType: !3225, size: 32)
!3225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3221, file: !3222, line: 26, size: 32, elements: !3226)
!3226 = !{!3227}
!3227 = !DIDerivedType(tag: DW_TAG_member, scope: !3225, file: !3222, line: 30, baseType: !3228, size: 32)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3225, file: !3222, line: 30, size: 32, elements: !3229)
!3229 = !{!3230, !3231}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3228, file: !3222, line: 31, baseType: !486)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3228, file: !3222, line: 32, baseType: !319, size: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !634, file: !631, line: 102, baseType: !2805, size: 64, offset: 768)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !634, file: !631, line: 103, baseType: !842, size: 64, offset: 832)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !634, file: !631, line: 104, baseType: !575, size: 64, offset: 896)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !634, file: !631, line: 105, baseType: !293, size: 64, offset: 960)
!3236 = !DIDerivedType(tag: DW_TAG_member, scope: !634, file: !631, line: 107, baseType: !3237, size: 128, offset: 1024)
!3237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !634, file: !631, line: 107, size: 128, elements: !3238)
!3238 = !{!3239, !3240}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3237, file: !631, line: 108, baseType: !456, size: 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3237, file: !631, line: 109, baseType: !3007, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !634, file: !631, line: 111, baseType: !456, size: 128, offset: 1152)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !634, file: !631, line: 112, baseType: !456, size: 128, offset: 1280)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !634, file: !631, line: 120, baseType: !3244, size: 128, offset: 1408)
!3244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !634, file: !631, line: 116, size: 128, elements: !3245)
!3245 = !{!3246, !3247, !3248}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3244, file: !631, line: 117, baseType: !882, size: 128)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3244, file: !631, line: 118, baseType: !648, size: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3244, file: !631, line: 119, baseType: !616, size: 128, align: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !604, file: !208, line: 922, baseType: !675, size: 64, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !604, file: !208, line: 923, baseType: !2954, size: 64, offset: 320)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !604, file: !208, line: 929, baseType: !486, offset: 384)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !604, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !604, file: !208, line: 931, baseType: !1010, size: 64, offset: 448)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !604, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !604, file: !208, line: 933, baseType: !2801, size: 32, offset: 544)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !604, file: !208, line: 934, baseType: !1330, size: 192, offset: 576)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !604, file: !208, line: 935, baseType: !774, size: 64, offset: 768)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !604, file: !208, line: 936, baseType: !3259, size: 192, offset: 832)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !3260)
!3260 = !{!3261, !3262, !3263, !3264, !3265, !3266}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3259, file: !208, line: 886, baseType: !3063)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3259, file: !208, line: 887, baseType: !1624, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3259, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3259, file: !208, line: 889, baseType: !681, size: 32, offset: 96)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3259, file: !208, line: 889, baseType: !681, size: 32, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3259, file: !208, line: 890, baseType: !319, size: 32, offset: 160)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !604, file: !208, line: 937, baseType: !1700, size: 64, offset: 1024)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !604, file: !208, line: 938, baseType: !3269, size: 256, offset: 1088)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !3270)
!3270 = !{!3271, !3272, !3273, !3274, !3275, !3276}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3269, file: !208, line: 897, baseType: !575, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3269, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3269, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3269, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3269, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3269, file: !208, line: 904, baseType: !774, size: 64, offset: 192)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !604, file: !208, line: 940, baseType: !668, size: 64, offset: 1344)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !604, file: !208, line: 945, baseType: !293, size: 64, offset: 1408)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !604, file: !208, line: 949, baseType: !456, size: 128, offset: 1472)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !604, file: !208, line: 950, baseType: !456, size: 128, offset: 1600)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !604, file: !208, line: 952, baseType: !977, size: 64, offset: 1728)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !604, file: !208, line: 953, baseType: !1146, size: 32, offset: 1792)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !604, file: !208, line: 954, baseType: !1146, size: 32, offset: 1824)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !594, file: !551, line: 174, baseType: !600, size: 64, offset: 320)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !594, file: !551, line: 176, baseType: !3286, size: 64, offset: 384)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!319, !603, !479, !593, !1218}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !582, file: !551, line: 90, baseType: !577, size: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !582, file: !551, line: 91, baseType: !3291, size: 64, offset: 256)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !541, file: !474, line: 143, baseType: !3293, size: 64, offset: 256)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!3296, !479}
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3298)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !3299)
!3299 = !{!3300, !3301, !3305, !3309, !3315, !3319}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3298, file: !225, line: 40, baseType: !224, size: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3298, file: !225, line: 41, baseType: !3302, size: 64, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!733}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3298, file: !225, line: 42, baseType: !3306, size: 64, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!293}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3298, file: !225, line: 43, baseType: !3310, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!2280, !3313}
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3298, file: !225, line: 44, baseType: !3316, size: 64, offset: 256)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!2280}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3298, file: !225, line: 45, baseType: !327, size: 64, offset: 320)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !541, file: !474, line: 144, baseType: !3321, size: 64, offset: 320)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!2280, !479}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !541, file: !474, line: 145, baseType: !3325, size: 64, offset: 384)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{null, !479, !3328, !3329}
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !473, file: !474, line: 70, baseType: !3331, size: 64, offset: 384)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !862, line: 123, size: 1024, elements: !3333)
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3462, !3463, !3464, !3465, !3466}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3332, file: !862, line: 124, baseType: !445, size: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3332, file: !862, line: 125, baseType: !445, size: 32, offset: 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3332, file: !862, line: 135, baseType: !3331, size: 64, offset: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3332, file: !862, line: 136, baseType: !302, size: 64, offset: 128)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3332, file: !862, line: 138, baseType: !999, size: 192, align: 64, offset: 192)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3332, file: !862, line: 140, baseType: !2280, size: 64, offset: 384)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3332, file: !862, line: 141, baseType: !7, size: 32, offset: 448)
!3341 = !DIDerivedType(tag: DW_TAG_member, scope: !3332, file: !862, line: 142, baseType: !3342, size: 256, offset: 512)
!3342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3332, file: !862, line: 142, size: 256, elements: !3343)
!3343 = !{!3344, !3390, !3394}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3342, file: !862, line: 143, baseType: !3345, size: 192)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !862, line: 91, size: 192, elements: !3346)
!3346 = !{!3347, !3348, !3349}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3345, file: !862, line: 92, baseType: !575, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3345, file: !862, line: 94, baseType: !995, size: 64, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3345, file: !862, line: 100, baseType: !3350, size: 64, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !862, line: 180, size: 704, elements: !3352)
!3352 = !{!3353, !3354, !3355, !3362, !3363, !3364, !3388, !3389}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3351, file: !862, line: 182, baseType: !3331, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3351, file: !862, line: 183, baseType: !7, size: 32, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3351, file: !862, line: 186, baseType: !3356, size: 192, offset: 128)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3357, line: 19, size: 192, elements: !3358)
!3357 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3358 = !{!3359, !3360, !3361}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3356, file: !3357, line: 20, baseType: !982, size: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3356, file: !3357, line: 21, baseType: !7, size: 32, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3356, file: !3357, line: 22, baseType: !7, size: 32, offset: 160)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3351, file: !862, line: 187, baseType: !415, size: 32, offset: 320)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3351, file: !862, line: 188, baseType: !415, size: 32, offset: 352)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3351, file: !862, line: 189, baseType: !3365, size: 64, offset: 384)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !862, line: 168, size: 320, elements: !3367)
!3367 = !{!3368, !3372, !3376, !3380, !3384}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3366, file: !862, line: 169, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!319, !954, !3350}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3366, file: !862, line: 171, baseType: !3373, size: 64, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!319, !3331, !302, !567}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3366, file: !862, line: 173, baseType: !3377, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!319, !3331}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3366, file: !862, line: 174, baseType: !3381, size: 64, offset: 192)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!319, !3331, !3331, !302}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3366, file: !862, line: 176, baseType: !3385, size: 64, offset: 256)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!319, !954, !3331, !3350}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3351, file: !862, line: 192, baseType: !456, size: 128, offset: 448)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3351, file: !862, line: 194, baseType: !1634, size: 128, offset: 576)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3342, file: !862, line: 144, baseType: !3391, size: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !862, line: 103, size: 64, elements: !3392)
!3392 = !{!3393}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3391, file: !862, line: 104, baseType: !3331, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3342, file: !862, line: 145, baseType: !3395, size: 256)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !862, line: 107, size: 256, elements: !3396)
!3396 = !{!3397, !3457, !3460, !3461}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3395, file: !862, line: 108, baseType: !3398, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3400)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !862, line: 217, size: 768, elements: !3401)
!3401 = !{!3402, !3422, !3426, !3430, !3434, !3438, !3442, !3446, !3447, !3448, !3449, !3453}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3400, file: !862, line: 222, baseType: !3403, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!319, !3406}
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !862, line: 197, size: 1088, elements: !3408)
!3408 = !{!3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3407, file: !862, line: 199, baseType: !3331, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3407, file: !862, line: 200, baseType: !603, size: 64, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3407, file: !862, line: 201, baseType: !954, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3407, file: !862, line: 202, baseType: !293, size: 64, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3407, file: !862, line: 205, baseType: !1330, size: 192, offset: 256)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3407, file: !862, line: 206, baseType: !1330, size: 192, offset: 448)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3407, file: !862, line: 207, baseType: !319, size: 32, offset: 640)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3407, file: !862, line: 208, baseType: !456, size: 128, offset: 704)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3407, file: !862, line: 209, baseType: !325, size: 64, offset: 832)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3407, file: !862, line: 211, baseType: !572, size: 64, offset: 896)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3407, file: !862, line: 212, baseType: !733, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3407, file: !862, line: 213, baseType: !733, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3407, file: !862, line: 214, baseType: !1246, size: 64, offset: 1024)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3400, file: !862, line: 223, baseType: !3423, size: 64, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{null, !3406}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3400, file: !862, line: 236, baseType: !3427, size: 64, offset: 128)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!319, !954, !293}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3400, file: !862, line: 238, baseType: !3431, size: 64, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!293, !954, !2967}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3400, file: !862, line: 239, baseType: !3435, size: 64, offset: 256)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!293, !954, !293, !2967}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3400, file: !862, line: 240, baseType: !3439, size: 64, offset: 320)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{null, !954, !293}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3400, file: !862, line: 242, baseType: !3443, size: 64, offset: 384)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!557, !3406, !325, !572, !774}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3400, file: !862, line: 252, baseType: !572, size: 64, offset: 448)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3400, file: !862, line: 259, baseType: !733, size: 8, offset: 512)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3400, file: !862, line: 260, baseType: !3443, size: 64, offset: 576)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3400, file: !862, line: 263, baseType: !3450, size: 64, offset: 640)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!2996, !3406, !2998}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3400, file: !862, line: 266, baseType: !3454, size: 64, offset: 704)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!319, !3406, !1218}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3395, file: !862, line: 109, baseType: !3458, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !862, line: 31, flags: DIFlagFwdDecl)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3395, file: !862, line: 110, baseType: !774, size: 64, offset: 128)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3395, file: !862, line: 111, baseType: !3331, size: 64, offset: 192)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3332, file: !862, line: 148, baseType: !293, size: 64, offset: 768)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3332, file: !862, line: 154, baseType: !668, size: 64, offset: 832)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3332, file: !862, line: 156, baseType: !336, size: 16, offset: 896)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3332, file: !862, line: 157, baseType: !567, size: 16, offset: 912)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3332, file: !862, line: 158, baseType: !3467, size: 64, offset: 960)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !862, line: 32, flags: DIFlagFwdDecl)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !473, file: !474, line: 71, baseType: !436, size: 32, offset: 448)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !473, file: !474, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !473, file: !474, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !473, file: !474, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !473, file: !474, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !473, file: !474, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !470, file: !237, line: 463, baseType: !469, size: 64, offset: 512)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !470, file: !237, line: 465, baseType: !3477, size: 64, offset: 576)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !470, file: !237, line: 467, baseType: !302, size: 64, offset: 640)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !470, file: !237, line: 468, baseType: !3481, size: 64, offset: 704)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3483)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3484)
!3484 = !{!3485, !3486, !3487, !3491, !3496, !3500}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3483, file: !237, line: 88, baseType: !302, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3483, file: !237, line: 89, baseType: !579, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3483, file: !237, line: 90, baseType: !3488, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!319, !469, !522}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3483, file: !237, line: 91, baseType: !3492, size: 64, offset: 192)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!325, !469, !3495, !3328, !3329}
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3483, file: !237, line: 93, baseType: !3497, size: 64, offset: 256)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{null, !469}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3483, file: !237, line: 95, baseType: !3501, size: 64, offset: 320)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3503)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3504)
!3504 = !{!3505, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3503, file: !244, line: 279, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!319, !469}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3503, file: !244, line: 280, baseType: !3497, size: 64, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3503, file: !244, line: 281, baseType: !3506, size: 64, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3503, file: !244, line: 282, baseType: !3506, size: 64, offset: 192)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3503, file: !244, line: 283, baseType: !3506, size: 64, offset: 256)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3503, file: !244, line: 284, baseType: !3506, size: 64, offset: 320)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3503, file: !244, line: 285, baseType: !3506, size: 64, offset: 384)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3503, file: !244, line: 286, baseType: !3506, size: 64, offset: 448)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3503, file: !244, line: 287, baseType: !3506, size: 64, offset: 512)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3503, file: !244, line: 288, baseType: !3506, size: 64, offset: 576)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3503, file: !244, line: 289, baseType: !3506, size: 64, offset: 640)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3503, file: !244, line: 290, baseType: !3506, size: 64, offset: 704)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3503, file: !244, line: 291, baseType: !3506, size: 64, offset: 768)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3503, file: !244, line: 292, baseType: !3506, size: 64, offset: 832)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3503, file: !244, line: 293, baseType: !3506, size: 64, offset: 896)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3503, file: !244, line: 294, baseType: !3506, size: 64, offset: 960)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3503, file: !244, line: 295, baseType: !3506, size: 64, offset: 1024)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3503, file: !244, line: 296, baseType: !3506, size: 64, offset: 1088)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3503, file: !244, line: 297, baseType: !3506, size: 64, offset: 1152)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3503, file: !244, line: 298, baseType: !3506, size: 64, offset: 1216)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3503, file: !244, line: 299, baseType: !3506, size: 64, offset: 1280)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3503, file: !244, line: 300, baseType: !3506, size: 64, offset: 1344)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3503, file: !244, line: 301, baseType: !3506, size: 64, offset: 1408)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !470, file: !237, line: 470, baseType: !3532, size: 64, offset: 768)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3534, line: 82, size: 1408, elements: !3535)
!3534 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3541, !3542, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3614, !3617, !3618}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3533, file: !3534, line: 83, baseType: !302, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3533, file: !3534, line: 84, baseType: !302, size: 64, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3533, file: !3534, line: 85, baseType: !469, size: 64, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3533, file: !3534, line: 86, baseType: !579, size: 64, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3533, file: !3534, line: 87, baseType: !579, size: 64, offset: 256)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3533, file: !3534, line: 88, baseType: !579, size: 64, offset: 320)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3533, file: !3534, line: 90, baseType: !3543, size: 64, offset: 384)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!319, !469, !3546}
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3548)
!3548 = !{!3549, !3550, !3551, !3552, !3553, !3554, !3555, !3565, !3578, !3579, !3580, !3581, !3582, !3590, !3591, !3592, !3593, !3594, !3595}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3547, file: !231, line: 96, baseType: !302, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3547, file: !231, line: 97, baseType: !3532, size: 64, offset: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3547, file: !231, line: 99, baseType: !306, size: 64, offset: 128)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3547, file: !231, line: 100, baseType: !302, size: 64, offset: 192)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3547, file: !231, line: 102, baseType: !733, size: 8, offset: 256)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3547, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3547, file: !231, line: 105, baseType: !3556, size: 64, offset: 320)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3558)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3559, line: 262, size: 1600, elements: !3560)
!3559 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3560 = !{!3561, !3562, !3563, !3564}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3558, file: !3559, line: 263, baseType: !2791, size: 256)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3558, file: !3559, line: 264, baseType: !2791, size: 256, offset: 256)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3558, file: !3559, line: 265, baseType: !411, size: 1024, offset: 512)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3558, file: !3559, line: 266, baseType: !2280, size: 64, offset: 1536)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3547, file: !231, line: 106, baseType: !3566, size: 64, offset: 384)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3568)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3559, line: 210, size: 256, elements: !3569)
!3569 = !{!3570, !3574, !3576, !3577}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3568, file: !3559, line: 211, baseType: !3571, size: 72)
!3571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 72, elements: !3572)
!3572 = !{!3573}
!3573 = !DISubrange(count: 9)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3568, file: !3559, line: 212, baseType: !3575, size: 64, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3559, line: 14, baseType: !575)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3568, file: !3559, line: 213, baseType: !416, size: 32, offset: 192)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3568, file: !3559, line: 214, baseType: !416, size: 32, offset: 224)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3547, file: !231, line: 108, baseType: !3506, size: 64, offset: 448)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3547, file: !231, line: 109, baseType: !3497, size: 64, offset: 512)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3547, file: !231, line: 110, baseType: !3506, size: 64, offset: 576)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3547, file: !231, line: 111, baseType: !3497, size: 64, offset: 640)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3547, file: !231, line: 112, baseType: !3583, size: 64, offset: 704)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!319, !469, !3586}
!3586 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3587)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3588)
!3588 = !{!3589}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3587, file: !244, line: 51, baseType: !319, size: 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3547, file: !231, line: 113, baseType: !3506, size: 64, offset: 768)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3547, file: !231, line: 114, baseType: !579, size: 64, offset: 832)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3547, file: !231, line: 115, baseType: !579, size: 64, offset: 896)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3547, file: !231, line: 117, baseType: !3501, size: 64, offset: 960)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3547, file: !231, line: 118, baseType: !3497, size: 64, offset: 1024)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3547, file: !231, line: 120, baseType: !3596, size: 64, offset: 1088)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3533, file: !3534, line: 91, baseType: !3488, size: 64, offset: 448)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3533, file: !3534, line: 92, baseType: !3506, size: 64, offset: 512)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3533, file: !3534, line: 93, baseType: !3497, size: 64, offset: 576)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3533, file: !3534, line: 94, baseType: !3506, size: 64, offset: 640)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3533, file: !3534, line: 95, baseType: !3497, size: 64, offset: 704)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3533, file: !3534, line: 97, baseType: !3506, size: 64, offset: 768)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3533, file: !3534, line: 98, baseType: !3506, size: 64, offset: 832)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3533, file: !3534, line: 100, baseType: !3583, size: 64, offset: 896)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3533, file: !3534, line: 101, baseType: !3506, size: 64, offset: 960)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3533, file: !3534, line: 103, baseType: !3506, size: 64, offset: 1024)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3533, file: !3534, line: 105, baseType: !3506, size: 64, offset: 1088)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3533, file: !3534, line: 107, baseType: !3501, size: 64, offset: 1152)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3533, file: !3534, line: 109, baseType: !3611, size: 64, offset: 1216)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3613)
!3613 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3534, line: 109, flags: DIFlagFwdDecl)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3533, file: !3534, line: 111, baseType: !3615, size: 64, offset: 1280)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3534, line: 111, flags: DIFlagFwdDecl)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3533, file: !3534, line: 112, baseType: !888, offset: 1344)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3533, file: !3534, line: 114, baseType: !733, size: 8, offset: 1344)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !470, file: !237, line: 471, baseType: !3546, size: 64, offset: 832)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !470, file: !237, line: 473, baseType: !293, size: 64, offset: 896)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !470, file: !237, line: 475, baseType: !293, size: 64, offset: 960)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !470, file: !237, line: 480, baseType: !1330, size: 192, offset: 1024)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !470, file: !237, line: 484, baseType: !3624, size: 576, offset: 1216)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629, !3630, !3631}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3624, file: !237, line: 362, baseType: !456, size: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3624, file: !237, line: 363, baseType: !456, size: 128, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3624, file: !237, line: 364, baseType: !456, size: 128, offset: 256)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3624, file: !237, line: 365, baseType: !456, size: 128, offset: 384)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3624, file: !237, line: 366, baseType: !733, size: 8, offset: 512)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3624, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !470, file: !237, line: 485, baseType: !3633, size: 2304, offset: 1792)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3634)
!3634 = !{!3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3730, !3734}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3633, file: !244, line: 566, baseType: !3586, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3633, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3633, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3633, file: !244, line: 569, baseType: !733, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3633, file: !244, line: 570, baseType: !733, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3633, file: !244, line: 571, baseType: !733, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3633, file: !244, line: 572, baseType: !733, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3633, file: !244, line: 573, baseType: !733, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3633, file: !244, line: 574, baseType: !733, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3633, file: !244, line: 575, baseType: !733, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3633, file: !244, line: 576, baseType: !733, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3633, file: !244, line: 577, baseType: !415, size: 32, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3633, file: !244, line: 578, baseType: !486, offset: 96)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3633, file: !244, line: 580, baseType: !456, size: 128, offset: 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3633, file: !244, line: 581, baseType: !1655, size: 192, offset: 256)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3633, file: !244, line: 582, baseType: !3651, size: 64, offset: 448)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3653, line: 43, size: 1472, elements: !3654)
!3653 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3654 = !{!3655, !3656, !3657, !3658, !3659, !3662, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3652, file: !3653, line: 44, baseType: !302, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3652, file: !3653, line: 45, baseType: !319, size: 32, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3652, file: !3653, line: 46, baseType: !456, size: 128, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3652, file: !3653, line: 47, baseType: !486, offset: 256)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3652, file: !3653, line: 48, baseType: !3660, size: 64, offset: 256)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3652, file: !3653, line: 49, baseType: !3663, size: 320, offset: 320)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3664, line: 11, size: 320, elements: !3665)
!3664 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3665 = !{!3666, !3667, !3668, !3673}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3663, file: !3664, line: 16, baseType: !882, size: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3663, file: !3664, line: 17, baseType: !575, size: 64, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3663, file: !3664, line: 18, baseType: !3669, size: 64, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{null, !3672}
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3663, file: !3664, line: 19, baseType: !415, size: 32, offset: 256)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3652, file: !3653, line: 50, baseType: !575, size: 64, offset: 640)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3652, file: !3653, line: 51, baseType: !1452, size: 64, offset: 704)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3652, file: !3653, line: 52, baseType: !1452, size: 64, offset: 768)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3652, file: !3653, line: 53, baseType: !1452, size: 64, offset: 832)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3652, file: !3653, line: 54, baseType: !1452, size: 64, offset: 896)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3652, file: !3653, line: 55, baseType: !1452, size: 64, offset: 960)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3652, file: !3653, line: 56, baseType: !575, size: 64, offset: 1024)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3652, file: !3653, line: 57, baseType: !575, size: 64, offset: 1088)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3652, file: !3653, line: 58, baseType: !575, size: 64, offset: 1152)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3652, file: !3653, line: 59, baseType: !575, size: 64, offset: 1216)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3652, file: !3653, line: 60, baseType: !575, size: 64, offset: 1280)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3652, file: !3653, line: 61, baseType: !469, size: 64, offset: 1344)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3652, file: !3653, line: 62, baseType: !733, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3652, file: !3653, line: 63, baseType: !733, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3633, file: !244, line: 583, baseType: !733, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3633, file: !244, line: 584, baseType: !733, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3633, file: !244, line: 585, baseType: !733, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3633, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3633, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3633, file: !244, line: 592, baseType: !1444, size: 512, offset: 576)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3633, file: !244, line: 593, baseType: !668, size: 64, offset: 1088)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3633, file: !244, line: 594, baseType: !2110, size: 256, offset: 1152)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3633, file: !244, line: 595, baseType: !1634, size: 128, offset: 1408)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3633, file: !244, line: 596, baseType: !3660, size: 64, offset: 1536)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3633, file: !244, line: 597, baseType: !445, size: 32, offset: 1600)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3633, file: !244, line: 598, baseType: !445, size: 32, offset: 1632)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3633, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3633, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3633, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3633, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3633, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3633, file: !244, line: 604, baseType: !733, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3633, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3633, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3633, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3633, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3633, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3633, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3633, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3633, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3633, file: !244, line: 613, baseType: !319, size: 32, offset: 1792)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3633, file: !244, line: 614, baseType: !319, size: 32, offset: 1824)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3633, file: !244, line: 615, baseType: !668, size: 64, offset: 1856)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3633, file: !244, line: 616, baseType: !668, size: 64, offset: 1920)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3633, file: !244, line: 617, baseType: !668, size: 64, offset: 1984)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3633, file: !244, line: 618, baseType: !668, size: 64, offset: 2048)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3633, file: !244, line: 620, baseType: !3721, size: 64, offset: 2112)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3723)
!3723 = !{!3724, !3725, !3726, !3727}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3722, file: !244, line: 537, baseType: !486)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3722, file: !244, line: 538, baseType: !7, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3722, file: !244, line: 540, baseType: !456, size: 128, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3722, file: !244, line: 543, baseType: !3728, size: 64, offset: 192)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3633, file: !244, line: 621, baseType: !3731, size: 64, offset: 2176)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{null, !469, !1592}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3633, file: !244, line: 622, baseType: !3735, size: 64, offset: 2240)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !470, file: !237, line: 486, baseType: !3738, size: 64, offset: 4096)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3740)
!3740 = !{!3741, !3742, !3743, !3747, !3748, !3749}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3739, file: !244, line: 643, baseType: !3503, size: 1472)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3739, file: !244, line: 644, baseType: !3506, size: 64, offset: 1472)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3739, file: !244, line: 645, baseType: !3744, size: 64, offset: 1536)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{null, !469, !733}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3739, file: !244, line: 646, baseType: !3506, size: 64, offset: 1600)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3739, file: !244, line: 647, baseType: !3497, size: 64, offset: 1664)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3739, file: !244, line: 648, baseType: !3497, size: 64, offset: 1728)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !470, file: !237, line: 493, baseType: !3751, size: 64, offset: 4160)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3753)
!3753 = !{!3754, !3755, !3756, !3929, !3930, !3931, !3932, !3933, !3934, !3937, !3938, !3939, !3940, !3941, !3942, !3943}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3752, file: !258, line: 163, baseType: !456, size: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3752, file: !258, line: 164, baseType: !302, size: 64, offset: 128)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3752, file: !258, line: 165, baseType: !3757, size: 64, offset: 192)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3759)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3760)
!3760 = !{!3761, !3879, !3890, !3895, !3899, !3906, !3910, !3914, !3921, !3925}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3759, file: !258, line: 106, baseType: !3762, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!319, !3751, !3765, !257}
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3767, line: 51, size: 1344, elements: !3768)
!3767 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3768 = !{!3769, !3770, !3772, !3773, !3863, !3872, !3873, !3874, !3875, !3876, !3877, !3878}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3766, file: !3767, line: 52, baseType: !302, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3766, file: !3767, line: 53, baseType: !3771, size: 32, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3767, line: 28, baseType: !415)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3766, file: !3767, line: 54, baseType: !302, size: 64, offset: 128)
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
!3795 = !{!733, !3796}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3774)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3782, file: !3775, line: 114, baseType: !3799, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!2280, !3796, !3802}
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3782, file: !3775, line: 116, baseType: !3805, size: 64, offset: 256)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!733, !3796, !302}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3782, file: !3775, line: 118, baseType: !3809, size: 64, offset: 320)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!319, !3796, !302, !7, !293, !572}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3782, file: !3775, line: 123, baseType: !3813, size: 64, offset: 384)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!319, !3796, !302, !3816, !572}
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3782, file: !3775, line: 126, baseType: !3818, size: 64, offset: 448)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!302, !3796}
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
!3833 = !{!3778, !3796, !302}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3782, file: !3775, line: 135, baseType: !3835, size: 64, offset: 768)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!319, !3796, !302, !302, !7, !7, !3838}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3775, line: 43, size: 640, elements: !3840)
!3840 = !{!3841, !3842, !3843}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3839, file: !3775, line: 44, baseType: !3778, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3839, file: !3775, line: 45, baseType: !7, size: 32, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3839, file: !3775, line: 46, baseType: !3844, size: 512, offset: 128)
!3844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 512, elements: !426)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3782, file: !3775, line: 140, baseType: !3827, size: 64, offset: 832)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3782, file: !3775, line: 143, baseType: !3823, size: 64, offset: 896)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3782, file: !3775, line: 145, baseType: !3785, size: 64, offset: 960)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3782, file: !3775, line: 146, baseType: !3849, size: 64, offset: 1024)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!319, !3796, !3852}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3775, line: 29, size: 128, elements: !3854)
!3854 = !{!3855, !3856, !3857}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3853, file: !3775, line: 30, baseType: !7, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3853, file: !3775, line: 31, baseType: !7, size: 32, offset: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3853, file: !3775, line: 32, baseType: !3796, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3782, file: !3775, line: 148, baseType: !3859, size: 64, offset: 1088)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!319, !3796, !469}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3774, file: !3775, line: 20, baseType: !469, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3766, file: !3767, line: 57, baseType: !3864, size: 64, offset: 384)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3767, line: 31, size: 704, elements: !3866)
!3866 = !{!3867, !3868, !3869, !3870, !3871}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3865, file: !3767, line: 32, baseType: !325, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3865, file: !3767, line: 33, baseType: !319, size: 32, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3865, file: !3767, line: 34, baseType: !293, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3865, file: !3767, line: 35, baseType: !3864, size: 64, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3865, file: !3767, line: 43, baseType: !594, size: 448, offset: 256)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3766, file: !3767, line: 58, baseType: !3864, size: 64, offset: 448)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3766, file: !3767, line: 59, baseType: !3765, size: 64, offset: 512)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3766, file: !3767, line: 60, baseType: !3765, size: 64, offset: 576)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3766, file: !3767, line: 61, baseType: !3765, size: 64, offset: 640)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3766, file: !3767, line: 63, baseType: !473, size: 512, offset: 704)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3766, file: !3767, line: 65, baseType: !575, size: 64, offset: 1216)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3766, file: !3767, line: 66, baseType: !293, size: 64, offset: 1280)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3759, file: !258, line: 108, baseType: !3880, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!319, !3751, !3883, !257}
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !3885)
!3885 = !{!3886, !3887, !3888}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3884, file: !258, line: 64, baseType: !3778, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3884, file: !258, line: 65, baseType: !319, size: 32, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3884, file: !258, line: 66, baseType: !3889, size: 512, offset: 96)
!3889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 512, elements: !1886)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3759, file: !258, line: 110, baseType: !3891, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!319, !3751, !7, !3894}
!3894 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !292, line: 164, baseType: !575)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3759, file: !258, line: 111, baseType: !3896, size: 64, offset: 192)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{null, !3751, !7}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3759, file: !258, line: 112, baseType: !3900, size: 64, offset: 256)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!319, !3751, !3765, !3903, !7, !3905, !364}
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3759, file: !258, line: 117, baseType: !3907, size: 64, offset: 320)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!319, !3751, !7, !7, !293}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3759, file: !258, line: 119, baseType: !3911, size: 64, offset: 384)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{null, !3751, !7, !7}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3759, file: !258, line: 121, baseType: !3915, size: 64, offset: 448)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!319, !3751, !3918, !733}
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
!3928 = !{!319, !3751, !3883, !3905, !364}
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
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3752, file: !258, line: 185, baseType: !982, size: 128, offset: 768)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3752, file: !258, line: 186, baseType: !1330, size: 192, offset: 896)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3752, file: !258, line: 187, baseType: !3944, offset: 1088)
!3944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2484)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !470, file: !237, line: 499, baseType: !456, size: 128, offset: 4224)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !470, file: !237, line: 502, baseType: !3947, size: 64, offset: 4352)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3949)
!3949 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !470, file: !237, line: 504, baseType: !3951, size: 64, offset: 4416)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !470, file: !237, line: 505, baseType: !668, size: 64, offset: 4480)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !470, file: !237, line: 510, baseType: !668, size: 64, offset: 4544)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !470, file: !237, line: 511, baseType: !3955, size: 64, offset: 4608)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3957)
!3957 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !470, file: !237, line: 513, baseType: !3959, size: 64, offset: 4672)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !3961)
!3961 = !{!3962, !3963}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3960, file: !237, line: 293, baseType: !7, size: 32)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3960, file: !237, line: 294, baseType: !575, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !470, file: !237, line: 515, baseType: !456, size: 128, offset: 4736)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !470, file: !237, line: 526, baseType: !3966, offset: 4864)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3967, line: 5, elements: !500)
!3967 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !470, file: !237, line: 528, baseType: !3765, size: 64, offset: 4864)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !470, file: !237, line: 529, baseType: !3778, size: 64, offset: 4928)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !470, file: !237, line: 534, baseType: !756, size: 32, offset: 4992)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !470, file: !237, line: 535, baseType: !415, size: 32, offset: 5024)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !470, file: !237, line: 537, baseType: !486, offset: 5056)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !470, file: !237, line: 538, baseType: !456, size: 128, offset: 5056)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !470, file: !237, line: 540, baseType: !3975, size: 64, offset: 5184)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3977, line: 54, size: 960, elements: !3978)
!3977 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3978 = !{!3979, !3980, !3981, !3982, !3983, !3984, !3985, !3989, !3993, !3994, !3995, !3996, !4000, !4004, !4005}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3976, file: !3977, line: 55, baseType: !302, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3976, file: !3977, line: 56, baseType: !306, size: 64, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3976, file: !3977, line: 58, baseType: !579, size: 64, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3976, file: !3977, line: 59, baseType: !579, size: 64, offset: 192)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3976, file: !3977, line: 60, baseType: !479, size: 64, offset: 256)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3976, file: !3977, line: 62, baseType: !3488, size: 64, offset: 320)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3976, file: !3977, line: 63, baseType: !3986, size: 64, offset: 384)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!325, !469, !3495}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3976, file: !3977, line: 65, baseType: !3990, size: 64, offset: 448)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{null, !3975}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3976, file: !3977, line: 66, baseType: !3497, size: 64, offset: 512)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3976, file: !3977, line: 68, baseType: !3506, size: 64, offset: 576)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3976, file: !3977, line: 70, baseType: !3296, size: 64, offset: 640)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3976, file: !3977, line: 71, baseType: !3997, size: 64, offset: 704)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!2280, !469}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3976, file: !3977, line: 73, baseType: !4001, size: 64, offset: 768)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{null, !469, !3328, !3329}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3976, file: !3977, line: 75, baseType: !3501, size: 64, offset: 832)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3976, file: !3977, line: 77, baseType: !3615, size: 64, offset: 896)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !470, file: !237, line: 541, baseType: !579, size: 64, offset: 5248)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !470, file: !237, line: 543, baseType: !3497, size: 64, offset: 5312)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !470, file: !237, line: 544, baseType: !4009, size: 64, offset: 5376)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !470, file: !237, line: 545, baseType: !4012, size: 64, offset: 5440)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !470, file: !237, line: 547, baseType: !733, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !470, file: !237, line: 548, baseType: !733, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !470, file: !237, line: 549, baseType: !733, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !470, file: !237, line: 550, baseType: !733, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !452, file: !272, line: 111, baseType: !306, size: 64, offset: 576)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !452, file: !272, line: 113, baseType: !319, size: 32, offset: 640)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !452, file: !272, line: 114, baseType: !4021, size: 64, offset: 704)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4023)
!4023 = !{!4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4038}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4022, file: !272, line: 158, baseType: !456, size: 128)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4022, file: !272, line: 159, baseType: !2954, size: 64, offset: 128)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4022, file: !272, line: 160, baseType: !451, size: 64, offset: 192)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4022, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4022, file: !272, line: 162, baseType: !319, size: 32, offset: 288)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4022, file: !272, line: 163, baseType: !415, size: 32, offset: 320)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4022, file: !272, line: 167, baseType: !319, size: 32, offset: 352)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4022, file: !272, line: 168, baseType: !319, size: 32, offset: 384)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4022, file: !272, line: 169, baseType: !319, size: 32, offset: 416)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4022, file: !272, line: 171, baseType: !1634, size: 128, offset: 448)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4022, file: !272, line: 173, baseType: !4035, size: 64, offset: 576)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!319, !603, !7, !293}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4022, file: !272, line: 187, baseType: !293, size: 64, offset: 640)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !452, file: !272, line: 115, baseType: !1330, size: 192, offset: 768)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !433, file: !51, line: 690, baseType: !293, size: 64, offset: 6144)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !433, file: !51, line: 691, baseType: !293, size: 64, offset: 6208)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !433, file: !51, line: 692, baseType: !293, size: 64, offset: 6272)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !433, file: !51, line: 693, baseType: !293, size: 64, offset: 6336)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !433, file: !51, line: 694, baseType: !293, size: 64, offset: 6400)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !433, file: !51, line: 695, baseType: !4046, size: 3648, offset: 6464)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !4047)
!4047 = !{!4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4111, !4112, !4113, !4114, !4115, !4116, !4117}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4046, file: !51, line: 587, baseType: !415, size: 32)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4046, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4046, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4046, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4046, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4046, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4046, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4046, file: !51, line: 595, baseType: !415, size: 32, offset: 224)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4046, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4046, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4046, file: !51, line: 598, baseType: !415, size: 32, offset: 320)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4046, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4046, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4046, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4046, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4046, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4046, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4046, file: !51, line: 610, baseType: !342, size: 8, offset: 544)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4046, file: !51, line: 611, baseType: !342, size: 8, offset: 552)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4046, file: !51, line: 612, baseType: !342, size: 8, offset: 560)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4046, file: !51, line: 613, baseType: !415, size: 32, offset: 576)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4046, file: !51, line: 614, baseType: !415, size: 32, offset: 608)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4046, file: !51, line: 615, baseType: !342, size: 8, offset: 640)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4046, file: !51, line: 621, baseType: !4072, size: 384, offset: 672)
!4072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4073, size: 384, elements: !527)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4046, file: !51, line: 616, size: 128, elements: !4074)
!4074 = !{!4075, !4076, !4077, !4078}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4073, file: !51, line: 617, baseType: !342, size: 8)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4073, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4073, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4073, file: !51, line: 620, baseType: !342, size: 8, offset: 96)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4046, file: !51, line: 624, baseType: !415, size: 32, offset: 1056)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4046, file: !51, line: 627, baseType: !415, size: 32, offset: 1088)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4046, file: !51, line: 630, baseType: !342, size: 8, offset: 1120)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4046, file: !51, line: 631, baseType: !342, size: 8, offset: 1128)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4046, file: !51, line: 632, baseType: !342, size: 8, offset: 1136)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4046, file: !51, line: 633, baseType: !342, size: 8, offset: 1144)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4046, file: !51, line: 634, baseType: !342, size: 8, offset: 1152)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4046, file: !51, line: 635, baseType: !342, size: 8, offset: 1160)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4046, file: !51, line: 637, baseType: !342, size: 8, offset: 1168)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4046, file: !51, line: 638, baseType: !342, size: 8, offset: 1176)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4046, file: !51, line: 639, baseType: !342, size: 8, offset: 1184)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4046, file: !51, line: 640, baseType: !342, size: 8, offset: 1192)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4046, file: !51, line: 641, baseType: !342, size: 8, offset: 1200)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4046, file: !51, line: 642, baseType: !342, size: 8, offset: 1208)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4046, file: !51, line: 643, baseType: !342, size: 8, offset: 1216)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4046, file: !51, line: 644, baseType: !342, size: 8, offset: 1224)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4046, file: !51, line: 645, baseType: !342, size: 8, offset: 1232)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4046, file: !51, line: 647, baseType: !415, size: 32, offset: 1248)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4046, file: !51, line: 650, baseType: !4098, size: 296, offset: 1280)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !4099)
!4099 = !{!4100, !4101}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4098, file: !6, line: 826, baseType: !343, size: 8)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4098, file: !6, line: 827, baseType: !4102, size: 288, offset: 8)
!4102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4103, size: 288, elements: !1312)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !4104)
!4104 = !{!4105, !4106}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4103, file: !6, line: 804, baseType: !343, size: 8)
!4106 = !DIDerivedType(tag: DW_TAG_member, scope: !4103, file: !6, line: 805, baseType: !4107, size: 64, offset: 8)
!4107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4103, file: !6, line: 805, size: 64, elements: !4108)
!4108 = !{!4109, !4110}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4107, file: !6, line: 806, baseType: !669, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4107, file: !6, line: 807, baseType: !783, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4046, file: !51, line: 651, baseType: !4098, size: 296, offset: 1576)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4046, file: !51, line: 652, baseType: !4098, size: 296, offset: 1872)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4046, file: !51, line: 653, baseType: !4098, size: 296, offset: 2168)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4046, file: !51, line: 654, baseType: !4098, size: 296, offset: 2464)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4046, file: !51, line: 655, baseType: !4098, size: 296, offset: 2760)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4046, file: !51, line: 656, baseType: !4098, size: 296, offset: 3056)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4046, file: !51, line: 657, baseType: !4098, size: 296, offset: 3352)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !433, file: !51, line: 698, baseType: !4119, size: 64, offset: 10112)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!319, !293, !319, !319, !319}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !433, file: !51, line: 699, baseType: !319, size: 32, offset: 10176)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !433, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !405, file: !51, line: 441, baseType: !429, size: 64, offset: 1408)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !405, file: !51, line: 442, baseType: !429, size: 64, offset: 1472)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !405, file: !51, line: 444, baseType: !4127, size: 64, offset: 1536)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!319, !432}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !405, file: !51, line: 445, baseType: !4127, size: 64, offset: 1600)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !405, file: !51, line: 447, baseType: !4132, size: 64, offset: 1664)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!319, !432, !4135, !319}
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !405, file: !51, line: 450, baseType: !4138, size: 64, offset: 1728)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!319, !432, !733, !7, !364, !4141}
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !405, file: !51, line: 457, baseType: !4143, size: 64, offset: 1792)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!50, !432}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !405, file: !51, line: 460, baseType: !4127, size: 64, offset: 1856)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !405, file: !51, line: 461, baseType: !4148, size: 64, offset: 1920)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!319, !432, !4151}
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !4153)
!4153 = !{!4154, !4155, !4156}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4152, file: !51, line: 70, baseType: !319, size: 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4152, file: !51, line: 71, baseType: !319, size: 32, offset: 32)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4152, file: !51, line: 72, baseType: !319, size: 32, offset: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !405, file: !51, line: 463, baseType: !4158, size: 64, offset: 1984)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!319, !432, !4161}
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !405, file: !51, line: 466, baseType: !4163, size: 64, offset: 2048)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!319, !432, !4141}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !405, file: !51, line: 467, baseType: !4167, size: 64, offset: 2112)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!319, !432, !1563}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !405, file: !51, line: 468, baseType: !4171, size: 64, offset: 2176)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!319, !432, !4174}
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !405, file: !51, line: 469, baseType: !4171, size: 64, offset: 2240)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !405, file: !51, line: 470, baseType: !4167, size: 64, offset: 2304)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !405, file: !51, line: 472, baseType: !4127, size: 64, offset: 2368)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !405, file: !51, line: 473, baseType: !4179, size: 64, offset: 2432)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!319, !432, !4182}
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !4184)
!4184 = !{!4185, !4187}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4183, file: !6, line: 174, baseType: !4186, size: 48)
!4186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 48, elements: !465)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4183, file: !6, line: 175, baseType: !343, size: 8, offset: 48)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !405, file: !51, line: 474, baseType: !4189, size: 64, offset: 2496)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!319, !432, !4192}
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !4194)
!4194 = !{!4195, !4197, !4198}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4193, file: !6, line: 196, baseType: !4196, size: 32)
!4196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 32, elements: !1312)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4193, file: !6, line: 197, baseType: !343, size: 8, offset: 32)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4193, file: !6, line: 198, baseType: !319, size: 32, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !405, file: !51, line: 475, baseType: !4200, size: 64, offset: 2560)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!319, !432, !171}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !405, file: !51, line: 477, baseType: !4204, size: 64, offset: 2624)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!319, !432, !78}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !405, file: !51, line: 478, baseType: !4208, size: 64, offset: 2688)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!319, !432, !73}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !405, file: !51, line: 480, baseType: !4212, size: 64, offset: 2752)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!319, !432, !561}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !405, file: !51, line: 481, baseType: !4216, size: 64, offset: 2816)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!319, !432, !575}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !405, file: !51, line: 482, baseType: !4220, size: 64, offset: 2880)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!319, !432, !319}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !405, file: !51, line: 483, baseType: !4220, size: 64, offset: 2944)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !405, file: !51, line: 484, baseType: !4127, size: 64, offset: 3008)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !405, file: !51, line: 490, baseType: !4226, size: 64, offset: 3072)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!175, !432}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !405, file: !51, line: 492, baseType: !4230, size: 2304, offset: 3136)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !4231)
!4231 = !{!4232, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4259, !4263, !4264, !4265, !4266, !4267, !4268, !4273, !4278, !4282}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4230, file: !51, line: 228, baseType: !4233, size: 1216)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !4234)
!4234 = !{!4235, !4236, !4237, !4238, !4239, !4240, !4241}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4233, file: !51, line: 89, baseType: !411, size: 1024)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4233, file: !51, line: 91, baseType: !415, size: 32, offset: 1024)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4233, file: !51, line: 92, baseType: !415, size: 32, offset: 1056)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4233, file: !51, line: 93, baseType: !415, size: 32, offset: 1088)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4233, file: !51, line: 95, baseType: !415, size: 32, offset: 1120)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4233, file: !51, line: 96, baseType: !415, size: 32, offset: 1152)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4233, file: !51, line: 97, baseType: !415, size: 32, offset: 1184)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4230, file: !51, line: 230, baseType: !429, size: 64, offset: 1216)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4230, file: !51, line: 231, baseType: !4127, size: 64, offset: 1280)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4230, file: !51, line: 232, baseType: !4127, size: 64, offset: 1344)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4230, file: !51, line: 233, baseType: !4127, size: 64, offset: 1408)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4230, file: !51, line: 234, baseType: !4127, size: 64, offset: 1472)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4230, file: !51, line: 237, baseType: !4127, size: 64, offset: 1536)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4230, file: !51, line: 238, baseType: !4249, size: 64, offset: 1600)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!319, !432, !4252}
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !4254)
!4254 = !{!4255, !4256, !4257, !4258}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4253, file: !51, line: 115, baseType: !7, size: 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4253, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4253, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4253, file: !51, line: 118, baseType: !668, size: 64, offset: 128)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4230, file: !51, line: 240, baseType: !4260, size: 64, offset: 1664)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!319, !432, !293}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4230, file: !51, line: 242, baseType: !4167, size: 64, offset: 1728)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4230, file: !51, line: 243, baseType: !4167, size: 64, offset: 1792)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4230, file: !51, line: 244, baseType: !4167, size: 64, offset: 1856)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4230, file: !51, line: 248, baseType: !4167, size: 64, offset: 1920)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4230, file: !51, line: 249, baseType: !4171, size: 64, offset: 1984)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4230, file: !51, line: 250, baseType: !4269, size: 64, offset: 2048)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!319, !432, !4272}
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4230, file: !51, line: 258, baseType: !4274, size: 64, offset: 2112)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!319, !432, !4277, !319}
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4230, file: !51, line: 267, baseType: !4279, size: 64, offset: 2176)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!319, !432, !415}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4230, file: !51, line: 268, baseType: !4279, size: 64, offset: 2240)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !405, file: !51, line: 493, baseType: !4284, size: 576, offset: 5440)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !4285)
!4285 = !{!4286, !4290, !4294, !4295, !4296, !4297, !4298, !4299, !4300}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4284, file: !51, line: 304, baseType: !4287, size: 64)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !4288)
!4288 = !{!4289}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4287, file: !51, line: 277, baseType: !325, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4284, file: !51, line: 306, baseType: !4291, size: 64, offset: 64)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{null, !432, !4252}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4284, file: !51, line: 308, baseType: !4171, size: 64, offset: 128)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4284, file: !51, line: 309, baseType: !4269, size: 64, offset: 192)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4284, file: !51, line: 310, baseType: !429, size: 64, offset: 256)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4284, file: !51, line: 311, baseType: !429, size: 64, offset: 320)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4284, file: !51, line: 312, baseType: !429, size: 64, offset: 384)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4284, file: !51, line: 313, baseType: !4220, size: 64, offset: 448)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4284, file: !51, line: 316, baseType: !4260, size: 64, offset: 512)
!4301 = !DIGlobalVariableExpression(var: !4302, expr: !DIExpression())
!4302 = distinct !DIGlobalVariable(name: "ds3000_dvbs_init_tab", scope: !2, file: !3, line: 36, type: !4303, isLocal: true, isDefinition: true)
!4303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 1296, elements: !4304)
!4304 = !{!4305}
!4305 = !DISubrange(count: 162)
!4306 = !DIGlobalVariableExpression(var: !4307, expr: !DIExpression())
!4307 = distinct !DIGlobalVariable(name: "ds3000_dvbs2_init_tab", scope: !2, file: !3, line: 121, type: !4308, isLocal: true, isDefinition: true)
!4308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 1536, elements: !4309)
!4309 = !{!4310}
!4310 = !DISubrange(count: 192)
!4311 = !DIGlobalVariableExpression(var: !4312, expr: !DIExpression())
!4312 = distinct !DIGlobalVariable(name: "dvbs_snr_tab", scope: !4313, file: !3, line: 539, type: !4314, isLocal: true, isDefinition: true)
!4313 = distinct !DISubprogram(name: "ds3000_read_snr", scope: !3, file: !3, line: 533, type: !4172, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!4314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 320, elements: !2354)
!4315 = !DIGlobalVariableExpression(var: !4316, expr: !DIExpression())
!4316 = distinct !DIGlobalVariable(name: "dvbs2_snr_tab", scope: !4313, file: !3, line: 544, type: !4317, isLocal: true, isDefinition: true)
!4317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 1280, elements: !4318)
!4318 = !{!4319}
!4319 = !DISubrange(count: 80)
!4320 = !DIGlobalVariableExpression(var: !4321, expr: !DIExpression())
!4321 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 1124, type: !4322, isLocal: true, isDefinition: true)
!4322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 104, elements: !4323)
!4323 = !{!4324}
!4324 = !DISubrange(count: 13)
!4325 = !{i32 7, !"Dwarf Version", i32 4}
!4326 = !{i32 2, !"Debug Info Version", i32 3}
!4327 = !{i32 1, !"wchar_size", i32 2}
!4328 = !{i32 1, !"Code Model", i32 2}
!4329 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4330 = distinct !DISubprogram(name: "ds3000_attach", scope: !3, file: !3, line: 821, type: !4331, scopeLine: 823, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !500)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!432, !4333, !4345}
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4335)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ds3000_config", file: !4336, line: 15, size: 192, elements: !4337)
!4336 = !DIFile(filename: "drivers/media/dvb-frontends/ds3000.h", directory: "/home/lizy2001/genbc/linux")
!4337 = !{!4338, !4339, !4340, !4341}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4335, file: !4336, line: 17, baseType: !342, size: 8)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "ci_mode", scope: !4335, file: !4336, line: 18, baseType: !342, size: 8, offset: 8)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "set_ts_params", scope: !4335, file: !4336, line: 20, baseType: !4220, size: 64, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "set_lock_led", scope: !4335, file: !4336, line: 22, baseType: !4342, size: 64, offset: 128)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{null, !432, !319}
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4347, line: 695, size: 7552, elements: !4348)
!4347 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4348 = !{!4349, !4350, !4351, !4388, !4389, !4403, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4420, !4421, !4422, !4423, !4455, !4466}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4346, file: !4347, line: 696, baseType: !306, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4346, file: !4347, line: 697, baseType: !7, size: 32, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4346, file: !4347, line: 698, baseType: !4352, size: 64, offset: 128)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4354)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4347, line: 519, size: 320, elements: !4355)
!4355 = !{!4356, !4369, !4370, !4383, !4384}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4354, file: !4347, line: 529, baseType: !4357, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!319, !4345, !4360, !319}
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4362, line: 69, size: 128, elements: !4363)
!4362 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4363 = !{!4364, !4365, !4366, !4367}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4361, file: !4362, line: 70, baseType: !334, size: 16)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4361, file: !4362, line: 71, baseType: !334, size: 16, offset: 16)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4361, file: !4362, line: 84, baseType: !334, size: 16, offset: 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4361, file: !4362, line: 85, baseType: !4368, size: 64, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4354, file: !4347, line: 531, baseType: !4357, size: 64, offset: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4354, file: !4347, line: 533, baseType: !4371, size: 64, offset: 128)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!319, !4345, !332, !336, !304, !342, !319, !4374}
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4362, line: 135, size: 272, elements: !4376)
!4376 = !{!4377, !4378, !4379}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4375, file: !4362, line: 136, baseType: !343, size: 8)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4375, file: !4362, line: 137, baseType: !334, size: 16)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4375, file: !4362, line: 138, baseType: !4380, size: 272)
!4380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 272, elements: !4381)
!4381 = !{!4382}
!4382 = !DISubrange(count: 34)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4354, file: !4347, line: 536, baseType: !4371, size: 64, offset: 192)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4354, file: !4347, line: 541, baseType: !4385, size: 64, offset: 256)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!415, !4345}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4346, file: !4347, line: 699, baseType: !293, size: 64, offset: 192)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4346, file: !4347, line: 702, baseType: !4390, size: 64, offset: 256)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4392)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4347, line: 557, size: 192, elements: !4393)
!4393 = !{!4394, !4398, !4402}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4392, file: !4347, line: 558, baseType: !4395, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{null, !4345, !7}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4392, file: !4347, line: 559, baseType: !4399, size: 64, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!319, !4345, !7}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4392, file: !4347, line: 560, baseType: !4395, size: 64, offset: 128)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4346, file: !4347, line: 703, baseType: !4404, size: 192, offset: 320)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4405, line: 30, size: 192, elements: !4406)
!4405 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4406 = !{!4407, !4408, !4409}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4404, file: !4405, line: 31, baseType: !1019)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4404, file: !4405, line: 32, baseType: !991, size: 128)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4404, file: !4405, line: 33, baseType: !1373, size: 64, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4346, file: !4347, line: 704, baseType: !4404, size: 192, offset: 512)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4346, file: !4347, line: 706, baseType: !319, size: 32, offset: 704)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4346, file: !4347, line: 707, baseType: !319, size: 32, offset: 736)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4346, file: !4347, line: 708, baseType: !470, size: 5568, offset: 768)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4346, file: !4347, line: 709, baseType: !575, size: 64, offset: 6336)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4346, file: !4347, line: 713, baseType: !319, size: 32, offset: 6400)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4346, file: !4347, line: 714, baseType: !4417, size: 384, offset: 6432)
!4417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 384, elements: !4418)
!4418 = !{!4419}
!4419 = !DISubrange(count: 48)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4346, file: !4347, line: 715, baseType: !1655, size: 192, offset: 6848)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4346, file: !4347, line: 717, baseType: !1330, size: 192, offset: 7040)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4346, file: !4347, line: 718, baseType: !456, size: 128, offset: 7232)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4346, file: !4347, line: 720, baseType: !4424, size: 64, offset: 7360)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4347, line: 618, size: 832, elements: !4426)
!4426 = !{!4427, !4431, !4432, !4436, !4437, !4438, !4439, !4443, !4444, !4447, !4448, !4451, !4454}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4425, file: !4347, line: 619, baseType: !4428, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!319, !4345}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4425, file: !4347, line: 621, baseType: !4428, size: 64, offset: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4425, file: !4347, line: 622, baseType: !4433, size: 64, offset: 128)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{null, !4345, !319}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4425, file: !4347, line: 623, baseType: !4428, size: 64, offset: 192)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4425, file: !4347, line: 624, baseType: !4433, size: 64, offset: 256)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4425, file: !4347, line: 625, baseType: !4428, size: 64, offset: 320)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4425, file: !4347, line: 627, baseType: !4440, size: 64, offset: 384)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{null, !4345}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4425, file: !4347, line: 628, baseType: !4440, size: 64, offset: 448)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4425, file: !4347, line: 631, baseType: !4445, size: 64, offset: 512)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4347, line: 631, flags: DIFlagFwdDecl)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4425, file: !4347, line: 632, baseType: !4445, size: 64, offset: 576)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4425, file: !4347, line: 633, baseType: !4449, size: 64, offset: 640)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4347, line: 633, flags: DIFlagFwdDecl)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4425, file: !4347, line: 634, baseType: !4452, size: 64, offset: 704)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4347, line: 634, flags: DIFlagFwdDecl)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4425, file: !4347, line: 635, baseType: !4452, size: 64, offset: 768)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4346, file: !4347, line: 721, baseType: !4456, size: 64, offset: 7424)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4458)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4347, line: 664, size: 192, elements: !4459)
!4459 = !{!4460, !4461, !4462, !4463, !4464, !4465}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4458, file: !4347, line: 665, baseType: !668, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4458, file: !4347, line: 666, baseType: !319, size: 32, offset: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4458, file: !4347, line: 667, baseType: !332, size: 16, offset: 96)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4458, file: !4347, line: 668, baseType: !332, size: 16, offset: 112)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4458, file: !4347, line: 669, baseType: !332, size: 16, offset: 128)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4458, file: !4347, line: 670, baseType: !332, size: 16, offset: 144)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4346, file: !4347, line: 723, baseType: !3751, size: 64, offset: 7488)
!4467 = !DILocalVariable(name: "config", arg: 1, scope: !4330, file: !3, line: 821, type: !4333)
!4468 = !DILocation(line: 821, column: 64, scope: !4330)
!4469 = !DILocalVariable(name: "i2c", arg: 2, scope: !4330, file: !3, line: 822, type: !4345)
!4470 = !DILocation(line: 822, column: 29, scope: !4330)
!4471 = !DILocalVariable(name: "state", scope: !4330, file: !3, line: 824, type: !4472)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ds3000_state", file: !3, line: 220, size: 10432, elements: !4474)
!4474 = !{!4475, !4476, !4477, !4478}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4473, file: !3, line: 221, baseType: !4345, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4473, file: !3, line: 222, baseType: !4333, size: 64, offset: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4473, file: !3, line: 223, baseType: !433, size: 10240, offset: 128)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "prevUCBS2", scope: !4473, file: !3, line: 225, baseType: !332, size: 16, offset: 10368)
!4479 = !DILocation(line: 824, column: 23, scope: !4330)
!4480 = !DILocalVariable(name: "ret", scope: !4330, file: !3, line: 825, type: !319)
!4481 = !DILocation(line: 825, column: 6, scope: !4330)
!4482 = !DILocation(line: 827, column: 2, scope: !4330)
!4483 = !DILocation(line: 827, column: 2, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 827, column: 2)
!4485 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 827, column: 2)
!4486 = !DILocation(line: 827, column: 2, scope: !4485)
!4487 = !DILocation(line: 830, column: 10, scope: !4330)
!4488 = !DILocation(line: 830, column: 8, scope: !4330)
!4489 = !DILocation(line: 831, column: 7, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 831, column: 6)
!4491 = !DILocation(line: 831, column: 6, scope: !4330)
!4492 = !DILocation(line: 832, column: 3, scope: !4490)
!4493 = !DILocation(line: 834, column: 18, scope: !4330)
!4494 = !DILocation(line: 834, column: 2, scope: !4330)
!4495 = !DILocation(line: 834, column: 9, scope: !4330)
!4496 = !DILocation(line: 834, column: 16, scope: !4330)
!4497 = !DILocation(line: 835, column: 15, scope: !4330)
!4498 = !DILocation(line: 835, column: 2, scope: !4330)
!4499 = !DILocation(line: 835, column: 9, scope: !4330)
!4500 = !DILocation(line: 835, column: 13, scope: !4330)
!4501 = !DILocation(line: 836, column: 2, scope: !4330)
!4502 = !DILocation(line: 836, column: 9, scope: !4330)
!4503 = !DILocation(line: 836, column: 19, scope: !4330)
!4504 = !DILocation(line: 839, column: 23, scope: !4330)
!4505 = !DILocation(line: 839, column: 8, scope: !4330)
!4506 = !DILocation(line: 839, column: 36, scope: !4330)
!4507 = !DILocation(line: 839, column: 6, scope: !4330)
!4508 = !DILocation(line: 840, column: 6, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 840, column: 6)
!4510 = !DILocation(line: 840, column: 10, scope: !4509)
!4511 = !DILocation(line: 840, column: 6, scope: !4330)
!4512 = !DILocation(line: 841, column: 9, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 840, column: 19)
!4514 = !DILocation(line: 841, column: 3, scope: !4513)
!4515 = !DILocation(line: 842, column: 3, scope: !4513)
!4516 = !DILocation(line: 843, column: 3, scope: !4513)
!4517 = !DILocation(line: 847, column: 19, scope: !4330)
!4518 = !DILocation(line: 847, column: 4, scope: !4330)
!4519 = !DILocation(line: 848, column: 19, scope: !4330)
!4520 = !DILocation(line: 848, column: 4, scope: !4330)
!4521 = !DILocation(line: 846, column: 2, scope: !4330)
!4522 = !DILocation(line: 850, column: 10, scope: !4330)
!4523 = !DILocation(line: 850, column: 17, scope: !4330)
!4524 = !DILocation(line: 850, column: 26, scope: !4330)
!4525 = !DILocation(line: 850, column: 2, scope: !4330)
!4526 = !DILocation(line: 852, column: 37, scope: !4330)
!4527 = !DILocation(line: 852, column: 2, scope: !4330)
!4528 = !DILocation(line: 852, column: 9, scope: !4330)
!4529 = !DILocation(line: 852, column: 18, scope: !4330)
!4530 = !DILocation(line: 852, column: 35, scope: !4330)
!4531 = !DILocation(line: 859, column: 22, scope: !4330)
!4532 = !DILocation(line: 859, column: 29, scope: !4330)
!4533 = !DILocation(line: 859, column: 2, scope: !4330)
!4534 = !DILocation(line: 860, column: 10, scope: !4330)
!4535 = !DILocation(line: 860, column: 17, scope: !4330)
!4536 = !DILocation(line: 860, column: 2, scope: !4330)
!4537 = !DILocation(line: 861, column: 1, scope: !4330)
!4538 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 662, type: !4539, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!293, !572, !291}
!4541 = !DILocalVariable(name: "s", arg: 1, scope: !4542, file: !284, line: 445, type: !1172)
!4542 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !284, file: !284, line: 445, type: !4543, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!293, !1172, !291, !572}
!4545 = !DILocation(line: 445, column: 72, scope: !4542, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 552, column: 10, scope: !4547, inlinedAt: !4550)
!4547 = distinct !DILexicalBlock(scope: !4548, file: !284, line: 540, column: 34)
!4548 = distinct !DILexicalBlock(scope: !4549, file: !284, line: 540, column: 6)
!4549 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 538, type: !4539, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!4550 = distinct !DILocation(line: 664, column: 9, scope: !4538)
!4551 = !DILocalVariable(name: "flags", arg: 2, scope: !4542, file: !284, line: 446, type: !291)
!4552 = !DILocation(line: 446, column: 9, scope: !4542, inlinedAt: !4546)
!4553 = !DILocalVariable(name: "size", arg: 3, scope: !4542, file: !284, line: 446, type: !572)
!4554 = !DILocation(line: 446, column: 23, scope: !4542, inlinedAt: !4546)
!4555 = !DILocalVariable(name: "ret", scope: !4542, file: !284, line: 448, type: !293)
!4556 = !DILocation(line: 448, column: 8, scope: !4542, inlinedAt: !4546)
!4557 = !DILocalVariable(name: "flags", arg: 1, scope: !4558, file: !284, line: 318, type: !291)
!4558 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 318, type: !4559, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!283, !291}
!4561 = !DILocation(line: 318, column: 67, scope: !4558, inlinedAt: !4562)
!4562 = distinct !DILocation(line: 553, column: 20, scope: !4547, inlinedAt: !4550)
!4563 = !DILocalVariable(name: "size", arg: 1, scope: !4564, file: !284, line: 346, type: !572)
!4564 = distinct !DISubprogram(name: "kmalloc_index", scope: !284, file: !284, line: 346, type: !4565, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!7, !572}
!4567 = !DILocation(line: 346, column: 58, scope: !4564, inlinedAt: !4568)
!4568 = distinct !DILocation(line: 547, column: 11, scope: !4547, inlinedAt: !4550)
!4569 = !DILocalVariable(name: "size", arg: 1, scope: !4570, file: !284, line: 472, type: !572)
!4570 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !284, file: !284, line: 472, type: !4571, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!293, !572, !291, !7}
!4573 = !DILocation(line: 472, column: 28, scope: !4570, inlinedAt: !4574)
!4574 = distinct !DILocation(line: 481, column: 9, scope: !4575, inlinedAt: !4576)
!4575 = distinct !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 478, type: !4539, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!4576 = distinct !DILocation(line: 545, column: 11, scope: !4577, inlinedAt: !4550)
!4577 = distinct !DILexicalBlock(scope: !4547, file: !284, line: 544, column: 7)
!4578 = !DILocalVariable(name: "flags", arg: 2, scope: !4570, file: !284, line: 472, type: !291)
!4579 = !DILocation(line: 472, column: 40, scope: !4570, inlinedAt: !4574)
!4580 = !DILocalVariable(name: "order", arg: 3, scope: !4570, file: !284, line: 472, type: !7)
!4581 = !DILocation(line: 472, column: 60, scope: !4570, inlinedAt: !4574)
!4582 = !DILocalVariable(name: "size", arg: 1, scope: !4575, file: !284, line: 478, type: !572)
!4583 = !DILocation(line: 478, column: 51, scope: !4575, inlinedAt: !4576)
!4584 = !DILocalVariable(name: "flags", arg: 2, scope: !4575, file: !284, line: 478, type: !291)
!4585 = !DILocation(line: 478, column: 63, scope: !4575, inlinedAt: !4576)
!4586 = !DILocalVariable(name: "order", scope: !4575, file: !284, line: 480, type: !7)
!4587 = !DILocation(line: 480, column: 15, scope: !4575, inlinedAt: !4576)
!4588 = !DILocalVariable(name: "size", arg: 1, scope: !4549, file: !284, line: 538, type: !572)
!4589 = !DILocation(line: 538, column: 45, scope: !4549, inlinedAt: !4550)
!4590 = !DILocalVariable(name: "flags", arg: 2, scope: !4549, file: !284, line: 538, type: !291)
!4591 = !DILocation(line: 538, column: 57, scope: !4549, inlinedAt: !4550)
!4592 = !DILocalVariable(name: "index", scope: !4547, file: !284, line: 542, type: !7)
!4593 = !DILocation(line: 542, column: 16, scope: !4547, inlinedAt: !4550)
!4594 = !DILocalVariable(name: "size", arg: 1, scope: !4538, file: !284, line: 662, type: !572)
!4595 = !DILocation(line: 662, column: 36, scope: !4538)
!4596 = !DILocalVariable(name: "flags", arg: 2, scope: !4538, file: !284, line: 662, type: !291)
!4597 = !DILocation(line: 662, column: 48, scope: !4538)
!4598 = !DILocation(line: 664, column: 17, scope: !4538)
!4599 = !DILocation(line: 664, column: 23, scope: !4538)
!4600 = !DILocation(line: 664, column: 29, scope: !4538)
!4601 = !DILocation(line: 540, column: 27, scope: !4548, inlinedAt: !4550)
!4602 = !DILocation(line: 540, column: 6, scope: !4548, inlinedAt: !4550)
!4603 = !DILocation(line: 540, column: 6, scope: !4549, inlinedAt: !4550)
!4604 = !DILocation(line: 544, column: 7, scope: !4577, inlinedAt: !4550)
!4605 = !DILocation(line: 544, column: 12, scope: !4577, inlinedAt: !4550)
!4606 = !DILocation(line: 544, column: 7, scope: !4547, inlinedAt: !4550)
!4607 = !DILocation(line: 545, column: 25, scope: !4577, inlinedAt: !4550)
!4608 = !DILocation(line: 545, column: 31, scope: !4577, inlinedAt: !4550)
!4609 = !DILocation(line: 480, column: 33, scope: !4575, inlinedAt: !4576)
!4610 = !DILocation(line: 480, column: 23, scope: !4575, inlinedAt: !4576)
!4611 = !DILocation(line: 481, column: 29, scope: !4575, inlinedAt: !4576)
!4612 = !DILocation(line: 481, column: 35, scope: !4575, inlinedAt: !4576)
!4613 = !DILocation(line: 481, column: 42, scope: !4575, inlinedAt: !4576)
!4614 = !DILocation(line: 474, column: 23, scope: !4570, inlinedAt: !4574)
!4615 = !DILocation(line: 474, column: 29, scope: !4570, inlinedAt: !4574)
!4616 = !DILocation(line: 474, column: 36, scope: !4570, inlinedAt: !4574)
!4617 = !DILocation(line: 474, column: 9, scope: !4570, inlinedAt: !4574)
!4618 = !DILocation(line: 545, column: 4, scope: !4577, inlinedAt: !4550)
!4619 = !DILocation(line: 547, column: 25, scope: !4547, inlinedAt: !4550)
!4620 = !DILocation(line: 348, column: 7, scope: !4621, inlinedAt: !4568)
!4621 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 348, column: 6)
!4622 = !DILocation(line: 348, column: 6, scope: !4564, inlinedAt: !4568)
!4623 = !DILocation(line: 349, column: 3, scope: !4621, inlinedAt: !4568)
!4624 = !DILocation(line: 351, column: 6, scope: !4625, inlinedAt: !4568)
!4625 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 351, column: 6)
!4626 = !DILocation(line: 351, column: 11, scope: !4625, inlinedAt: !4568)
!4627 = !DILocation(line: 351, column: 6, scope: !4564, inlinedAt: !4568)
!4628 = !DILocation(line: 352, column: 3, scope: !4625, inlinedAt: !4568)
!4629 = !DILocation(line: 354, column: 32, scope: !4630, inlinedAt: !4568)
!4630 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 354, column: 6)
!4631 = !DILocation(line: 354, column: 37, scope: !4630, inlinedAt: !4568)
!4632 = !DILocation(line: 354, column: 42, scope: !4630, inlinedAt: !4568)
!4633 = !DILocation(line: 354, column: 45, scope: !4630, inlinedAt: !4568)
!4634 = !DILocation(line: 354, column: 50, scope: !4630, inlinedAt: !4568)
!4635 = !DILocation(line: 354, column: 6, scope: !4564, inlinedAt: !4568)
!4636 = !DILocation(line: 355, column: 3, scope: !4630, inlinedAt: !4568)
!4637 = !DILocation(line: 356, column: 32, scope: !4638, inlinedAt: !4568)
!4638 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 356, column: 6)
!4639 = !DILocation(line: 356, column: 37, scope: !4638, inlinedAt: !4568)
!4640 = !DILocation(line: 356, column: 43, scope: !4638, inlinedAt: !4568)
!4641 = !DILocation(line: 356, column: 46, scope: !4638, inlinedAt: !4568)
!4642 = !DILocation(line: 356, column: 51, scope: !4638, inlinedAt: !4568)
!4643 = !DILocation(line: 356, column: 6, scope: !4564, inlinedAt: !4568)
!4644 = !DILocation(line: 357, column: 3, scope: !4638, inlinedAt: !4568)
!4645 = !DILocation(line: 358, column: 6, scope: !4646, inlinedAt: !4568)
!4646 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 358, column: 6)
!4647 = !DILocation(line: 358, column: 11, scope: !4646, inlinedAt: !4568)
!4648 = !DILocation(line: 358, column: 6, scope: !4564, inlinedAt: !4568)
!4649 = !DILocation(line: 358, column: 26, scope: !4646, inlinedAt: !4568)
!4650 = !DILocation(line: 359, column: 6, scope: !4651, inlinedAt: !4568)
!4651 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 359, column: 6)
!4652 = !DILocation(line: 359, column: 11, scope: !4651, inlinedAt: !4568)
!4653 = !DILocation(line: 359, column: 6, scope: !4564, inlinedAt: !4568)
!4654 = !DILocation(line: 359, column: 26, scope: !4651, inlinedAt: !4568)
!4655 = !DILocation(line: 360, column: 6, scope: !4656, inlinedAt: !4568)
!4656 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 360, column: 6)
!4657 = !DILocation(line: 360, column: 11, scope: !4656, inlinedAt: !4568)
!4658 = !DILocation(line: 360, column: 6, scope: !4564, inlinedAt: !4568)
!4659 = !DILocation(line: 360, column: 26, scope: !4656, inlinedAt: !4568)
!4660 = !DILocation(line: 361, column: 6, scope: !4661, inlinedAt: !4568)
!4661 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 361, column: 6)
!4662 = !DILocation(line: 361, column: 11, scope: !4661, inlinedAt: !4568)
!4663 = !DILocation(line: 361, column: 6, scope: !4564, inlinedAt: !4568)
!4664 = !DILocation(line: 361, column: 26, scope: !4661, inlinedAt: !4568)
!4665 = !DILocation(line: 362, column: 6, scope: !4666, inlinedAt: !4568)
!4666 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 362, column: 6)
!4667 = !DILocation(line: 362, column: 11, scope: !4666, inlinedAt: !4568)
!4668 = !DILocation(line: 362, column: 6, scope: !4564, inlinedAt: !4568)
!4669 = !DILocation(line: 362, column: 26, scope: !4666, inlinedAt: !4568)
!4670 = !DILocation(line: 363, column: 6, scope: !4671, inlinedAt: !4568)
!4671 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 363, column: 6)
!4672 = !DILocation(line: 363, column: 11, scope: !4671, inlinedAt: !4568)
!4673 = !DILocation(line: 363, column: 6, scope: !4564, inlinedAt: !4568)
!4674 = !DILocation(line: 363, column: 26, scope: !4671, inlinedAt: !4568)
!4675 = !DILocation(line: 364, column: 6, scope: !4676, inlinedAt: !4568)
!4676 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 364, column: 6)
!4677 = !DILocation(line: 364, column: 11, scope: !4676, inlinedAt: !4568)
!4678 = !DILocation(line: 364, column: 6, scope: !4564, inlinedAt: !4568)
!4679 = !DILocation(line: 364, column: 26, scope: !4676, inlinedAt: !4568)
!4680 = !DILocation(line: 365, column: 6, scope: !4681, inlinedAt: !4568)
!4681 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 365, column: 6)
!4682 = !DILocation(line: 365, column: 11, scope: !4681, inlinedAt: !4568)
!4683 = !DILocation(line: 365, column: 6, scope: !4564, inlinedAt: !4568)
!4684 = !DILocation(line: 365, column: 26, scope: !4681, inlinedAt: !4568)
!4685 = !DILocation(line: 366, column: 6, scope: !4686, inlinedAt: !4568)
!4686 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 366, column: 6)
!4687 = !DILocation(line: 366, column: 11, scope: !4686, inlinedAt: !4568)
!4688 = !DILocation(line: 366, column: 6, scope: !4564, inlinedAt: !4568)
!4689 = !DILocation(line: 366, column: 26, scope: !4686, inlinedAt: !4568)
!4690 = !DILocation(line: 367, column: 6, scope: !4691, inlinedAt: !4568)
!4691 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 367, column: 6)
!4692 = !DILocation(line: 367, column: 11, scope: !4691, inlinedAt: !4568)
!4693 = !DILocation(line: 367, column: 6, scope: !4564, inlinedAt: !4568)
!4694 = !DILocation(line: 367, column: 26, scope: !4691, inlinedAt: !4568)
!4695 = !DILocation(line: 368, column: 6, scope: !4696, inlinedAt: !4568)
!4696 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 368, column: 6)
!4697 = !DILocation(line: 368, column: 11, scope: !4696, inlinedAt: !4568)
!4698 = !DILocation(line: 368, column: 6, scope: !4564, inlinedAt: !4568)
!4699 = !DILocation(line: 368, column: 26, scope: !4696, inlinedAt: !4568)
!4700 = !DILocation(line: 369, column: 6, scope: !4701, inlinedAt: !4568)
!4701 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 369, column: 6)
!4702 = !DILocation(line: 369, column: 11, scope: !4701, inlinedAt: !4568)
!4703 = !DILocation(line: 369, column: 6, scope: !4564, inlinedAt: !4568)
!4704 = !DILocation(line: 369, column: 26, scope: !4701, inlinedAt: !4568)
!4705 = !DILocation(line: 370, column: 6, scope: !4706, inlinedAt: !4568)
!4706 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 370, column: 6)
!4707 = !DILocation(line: 370, column: 11, scope: !4706, inlinedAt: !4568)
!4708 = !DILocation(line: 370, column: 6, scope: !4564, inlinedAt: !4568)
!4709 = !DILocation(line: 370, column: 26, scope: !4706, inlinedAt: !4568)
!4710 = !DILocation(line: 371, column: 6, scope: !4711, inlinedAt: !4568)
!4711 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 371, column: 6)
!4712 = !DILocation(line: 371, column: 11, scope: !4711, inlinedAt: !4568)
!4713 = !DILocation(line: 371, column: 6, scope: !4564, inlinedAt: !4568)
!4714 = !DILocation(line: 371, column: 26, scope: !4711, inlinedAt: !4568)
!4715 = !DILocation(line: 372, column: 6, scope: !4716, inlinedAt: !4568)
!4716 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 372, column: 6)
!4717 = !DILocation(line: 372, column: 11, scope: !4716, inlinedAt: !4568)
!4718 = !DILocation(line: 372, column: 6, scope: !4564, inlinedAt: !4568)
!4719 = !DILocation(line: 372, column: 26, scope: !4716, inlinedAt: !4568)
!4720 = !DILocation(line: 373, column: 6, scope: !4721, inlinedAt: !4568)
!4721 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 373, column: 6)
!4722 = !DILocation(line: 373, column: 11, scope: !4721, inlinedAt: !4568)
!4723 = !DILocation(line: 373, column: 6, scope: !4564, inlinedAt: !4568)
!4724 = !DILocation(line: 373, column: 26, scope: !4721, inlinedAt: !4568)
!4725 = !DILocation(line: 374, column: 6, scope: !4726, inlinedAt: !4568)
!4726 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 374, column: 6)
!4727 = !DILocation(line: 374, column: 11, scope: !4726, inlinedAt: !4568)
!4728 = !DILocation(line: 374, column: 6, scope: !4564, inlinedAt: !4568)
!4729 = !DILocation(line: 374, column: 26, scope: !4726, inlinedAt: !4568)
!4730 = !DILocation(line: 375, column: 6, scope: !4731, inlinedAt: !4568)
!4731 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 375, column: 6)
!4732 = !DILocation(line: 375, column: 11, scope: !4731, inlinedAt: !4568)
!4733 = !DILocation(line: 375, column: 6, scope: !4564, inlinedAt: !4568)
!4734 = !DILocation(line: 375, column: 27, scope: !4731, inlinedAt: !4568)
!4735 = !DILocation(line: 376, column: 6, scope: !4736, inlinedAt: !4568)
!4736 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 376, column: 6)
!4737 = !DILocation(line: 376, column: 11, scope: !4736, inlinedAt: !4568)
!4738 = !DILocation(line: 376, column: 6, scope: !4564, inlinedAt: !4568)
!4739 = !DILocation(line: 376, column: 32, scope: !4736, inlinedAt: !4568)
!4740 = !DILocation(line: 377, column: 6, scope: !4741, inlinedAt: !4568)
!4741 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 377, column: 6)
!4742 = !DILocation(line: 377, column: 11, scope: !4741, inlinedAt: !4568)
!4743 = !DILocation(line: 377, column: 6, scope: !4564, inlinedAt: !4568)
!4744 = !DILocation(line: 377, column: 32, scope: !4741, inlinedAt: !4568)
!4745 = !DILocation(line: 378, column: 6, scope: !4746, inlinedAt: !4568)
!4746 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 378, column: 6)
!4747 = !DILocation(line: 378, column: 11, scope: !4746, inlinedAt: !4568)
!4748 = !DILocation(line: 378, column: 6, scope: !4564, inlinedAt: !4568)
!4749 = !DILocation(line: 378, column: 32, scope: !4746, inlinedAt: !4568)
!4750 = !DILocation(line: 379, column: 6, scope: !4751, inlinedAt: !4568)
!4751 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 379, column: 6)
!4752 = !DILocation(line: 379, column: 11, scope: !4751, inlinedAt: !4568)
!4753 = !DILocation(line: 379, column: 6, scope: !4564, inlinedAt: !4568)
!4754 = !DILocation(line: 379, column: 33, scope: !4751, inlinedAt: !4568)
!4755 = !DILocation(line: 380, column: 6, scope: !4756, inlinedAt: !4568)
!4756 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 380, column: 6)
!4757 = !DILocation(line: 380, column: 11, scope: !4756, inlinedAt: !4568)
!4758 = !DILocation(line: 380, column: 6, scope: !4564, inlinedAt: !4568)
!4759 = !DILocation(line: 380, column: 33, scope: !4756, inlinedAt: !4568)
!4760 = !DILocation(line: 381, column: 6, scope: !4761, inlinedAt: !4568)
!4761 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 381, column: 6)
!4762 = !DILocation(line: 381, column: 11, scope: !4761, inlinedAt: !4568)
!4763 = !DILocation(line: 381, column: 6, scope: !4564, inlinedAt: !4568)
!4764 = !DILocation(line: 381, column: 33, scope: !4761, inlinedAt: !4568)
!4765 = !DILocation(line: 382, column: 2, scope: !4766, inlinedAt: !4568)
!4766 = distinct !DILexicalBlock(scope: !4767, file: !284, line: 382, column: 2)
!4767 = distinct !DILexicalBlock(scope: !4564, file: !284, line: 382, column: 2)
!4768 = !{i32 -2144629118, i32 -2144629089, i32 -2144629043, i32 -2144628985, i32 -2144628931, i32 -2144628877, i32 -2144628822, i32 -2144628791}
!4769 = !DILocation(line: 382, column: 2, scope: !4770, inlinedAt: !4568)
!4770 = distinct !DILexicalBlock(scope: !4771, file: !284, line: 382, column: 2)
!4771 = distinct !DILexicalBlock(scope: !4767, file: !284, line: 382, column: 2)
!4772 = !{i32 -2144628348, i32 -2144628341, i32 -2144628287, i32 -2144628256, i32 -2144628226}
!4773 = !DILocation(line: 382, column: 2, scope: !4771, inlinedAt: !4568)
!4774 = !DILocation(line: 386, column: 1, scope: !4564, inlinedAt: !4568)
!4775 = !DILocation(line: 547, column: 9, scope: !4547, inlinedAt: !4550)
!4776 = !DILocation(line: 549, column: 8, scope: !4777, inlinedAt: !4550)
!4777 = distinct !DILexicalBlock(scope: !4547, file: !284, line: 549, column: 7)
!4778 = !DILocation(line: 549, column: 7, scope: !4547, inlinedAt: !4550)
!4779 = !DILocation(line: 550, column: 4, scope: !4777, inlinedAt: !4550)
!4780 = !DILocation(line: 553, column: 33, scope: !4547, inlinedAt: !4550)
!4781 = !DILocation(line: 325, column: 6, scope: !4782, inlinedAt: !4562)
!4782 = distinct !DILexicalBlock(scope: !4558, file: !284, line: 325, column: 6)
!4783 = !DILocation(line: 325, column: 6, scope: !4558, inlinedAt: !4562)
!4784 = !DILocation(line: 326, column: 3, scope: !4782, inlinedAt: !4562)
!4785 = !DILocation(line: 332, column: 9, scope: !4558, inlinedAt: !4562)
!4786 = !DILocation(line: 332, column: 15, scope: !4558, inlinedAt: !4562)
!4787 = !DILocation(line: 332, column: 2, scope: !4558, inlinedAt: !4562)
!4788 = !DILocation(line: 336, column: 1, scope: !4558, inlinedAt: !4562)
!4789 = !DILocation(line: 553, column: 5, scope: !4547, inlinedAt: !4550)
!4790 = !DILocation(line: 553, column: 41, scope: !4547, inlinedAt: !4550)
!4791 = !DILocation(line: 554, column: 5, scope: !4547, inlinedAt: !4550)
!4792 = !DILocation(line: 554, column: 12, scope: !4547, inlinedAt: !4550)
!4793 = !DILocation(line: 448, column: 31, scope: !4542, inlinedAt: !4546)
!4794 = !DILocation(line: 448, column: 34, scope: !4542, inlinedAt: !4546)
!4795 = !DILocation(line: 448, column: 14, scope: !4542, inlinedAt: !4546)
!4796 = !DILocation(line: 450, column: 22, scope: !4542, inlinedAt: !4546)
!4797 = !DILocation(line: 450, column: 25, scope: !4542, inlinedAt: !4546)
!4798 = !DILocation(line: 450, column: 30, scope: !4542, inlinedAt: !4546)
!4799 = !DILocation(line: 450, column: 36, scope: !4542, inlinedAt: !4546)
!4800 = !DILocation(line: 450, column: 8, scope: !4542, inlinedAt: !4546)
!4801 = !DILocation(line: 450, column: 6, scope: !4542, inlinedAt: !4546)
!4802 = !DILocation(line: 451, column: 9, scope: !4542, inlinedAt: !4546)
!4803 = !DILocation(line: 552, column: 3, scope: !4547, inlinedAt: !4550)
!4804 = !DILocation(line: 557, column: 19, scope: !4549, inlinedAt: !4550)
!4805 = !DILocation(line: 557, column: 25, scope: !4549, inlinedAt: !4550)
!4806 = !DILocation(line: 557, column: 9, scope: !4549, inlinedAt: !4550)
!4807 = !DILocation(line: 557, column: 2, scope: !4549, inlinedAt: !4550)
!4808 = !DILocation(line: 558, column: 1, scope: !4549, inlinedAt: !4550)
!4809 = !DILocation(line: 664, column: 2, scope: !4538)
!4810 = distinct !DISubprogram(name: "ds3000_readreg", scope: !3, file: !3, line: 299, type: !4811, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!319, !4472, !342}
!4813 = !DILocalVariable(name: "state", arg: 1, scope: !4810, file: !3, line: 299, type: !4472)
!4814 = !DILocation(line: 299, column: 48, scope: !4810)
!4815 = !DILocalVariable(name: "reg", arg: 2, scope: !4810, file: !3, line: 299, type: !342)
!4816 = !DILocation(line: 299, column: 58, scope: !4810)
!4817 = !DILocalVariable(name: "ret", scope: !4810, file: !3, line: 301, type: !319)
!4818 = !DILocation(line: 301, column: 6, scope: !4810)
!4819 = !DILocalVariable(name: "b0", scope: !4810, file: !3, line: 302, type: !4820)
!4820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 8, elements: !1519)
!4821 = !DILocation(line: 302, column: 5, scope: !4810)
!4822 = !DILocation(line: 302, column: 12, scope: !4810)
!4823 = !DILocation(line: 302, column: 14, scope: !4810)
!4824 = !DILocalVariable(name: "b1", scope: !4810, file: !3, line: 303, type: !4820)
!4825 = !DILocation(line: 303, column: 5, scope: !4810)
!4826 = !DILocalVariable(name: "msg", scope: !4810, file: !3, line: 304, type: !4827)
!4827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4361, size: 256, elements: !1722)
!4828 = !DILocation(line: 304, column: 17, scope: !4810)
!4829 = !DILocation(line: 304, column: 25, scope: !4810)
!4830 = !DILocation(line: 305, column: 3, scope: !4810)
!4831 = !DILocation(line: 306, column: 12, scope: !4810)
!4832 = !DILocation(line: 306, column: 19, scope: !4810)
!4833 = !DILocation(line: 306, column: 27, scope: !4810)
!4834 = !DILocation(line: 308, column: 11, scope: !4810)
!4835 = !DILocation(line: 310, column: 6, scope: !4810)
!4836 = !DILocation(line: 311, column: 12, scope: !4810)
!4837 = !DILocation(line: 311, column: 19, scope: !4810)
!4838 = !DILocation(line: 311, column: 27, scope: !4810)
!4839 = !DILocation(line: 313, column: 11, scope: !4810)
!4840 = !DILocation(line: 318, column: 21, scope: !4810)
!4841 = !DILocation(line: 318, column: 28, scope: !4810)
!4842 = !DILocation(line: 318, column: 33, scope: !4810)
!4843 = !DILocation(line: 318, column: 8, scope: !4810)
!4844 = !DILocation(line: 318, column: 6, scope: !4810)
!4845 = !DILocation(line: 320, column: 6, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 320, column: 6)
!4847 = !DILocation(line: 320, column: 10, scope: !4846)
!4848 = !DILocation(line: 320, column: 6, scope: !4810)
!4849 = !DILocation(line: 321, column: 57, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4846, file: !3, line: 320, column: 16)
!4851 = !DILocation(line: 321, column: 62, scope: !4850)
!4852 = !DILocation(line: 321, column: 3, scope: !4850)
!4853 = !DILocation(line: 322, column: 10, scope: !4850)
!4854 = !DILocation(line: 322, column: 3, scope: !4850)
!4855 = !DILocation(line: 325, column: 2, scope: !4810)
!4856 = !DILocation(line: 325, column: 2, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 325, column: 2)
!4858 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 325, column: 2)
!4859 = !DILocation(line: 325, column: 2, scope: !4858)
!4860 = !DILocation(line: 327, column: 9, scope: !4810)
!4861 = !DILocation(line: 327, column: 2, scope: !4810)
!4862 = !DILocation(line: 328, column: 1, scope: !4810)
!4863 = distinct !DISubprogram(name: "ds3000_set_voltage", scope: !3, file: !3, line: 393, type: !4209, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!4864 = !DILocalVariable(name: "fe", arg: 1, scope: !4863, file: !3, line: 393, type: !432)
!4865 = !DILocation(line: 393, column: 52, scope: !4863)
!4866 = !DILocalVariable(name: "voltage", arg: 2, scope: !4863, file: !3, line: 394, type: !73)
!4867 = !DILocation(line: 394, column: 30, scope: !4863)
!4868 = !DILocalVariable(name: "state", scope: !4863, file: !3, line: 396, type: !4472)
!4869 = !DILocation(line: 396, column: 23, scope: !4863)
!4870 = !DILocation(line: 396, column: 31, scope: !4863)
!4871 = !DILocation(line: 396, column: 35, scope: !4863)
!4872 = !DILocalVariable(name: "data", scope: !4863, file: !3, line: 397, type: !342)
!4873 = !DILocation(line: 397, column: 5, scope: !4863)
!4874 = !DILocation(line: 399, column: 2, scope: !4863)
!4875 = !DILocation(line: 399, column: 2, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4877, file: !3, line: 399, column: 2)
!4877 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 399, column: 2)
!4878 = !DILocation(line: 399, column: 2, scope: !4877)
!4879 = !DILocation(line: 401, column: 24, scope: !4863)
!4880 = !DILocation(line: 401, column: 9, scope: !4863)
!4881 = !DILocation(line: 401, column: 7, scope: !4863)
!4882 = !DILocation(line: 402, column: 7, scope: !4863)
!4883 = !DILocation(line: 404, column: 10, scope: !4863)
!4884 = !DILocation(line: 404, column: 2, scope: !4863)
!4885 = !DILocation(line: 406, column: 8, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 404, column: 19)
!4887 = !DILocation(line: 407, column: 3, scope: !4886)
!4888 = !DILocation(line: 409, column: 8, scope: !4886)
!4889 = !DILocation(line: 410, column: 8, scope: !4886)
!4890 = !DILocation(line: 411, column: 3, scope: !4886)
!4891 = !DILocation(line: 413, column: 3, scope: !4886)
!4892 = !DILocation(line: 416, column: 18, scope: !4863)
!4893 = !DILocation(line: 416, column: 31, scope: !4863)
!4894 = !DILocation(line: 416, column: 2, scope: !4863)
!4895 = !DILocation(line: 418, column: 2, scope: !4863)
!4896 = distinct !DISubprogram(name: "get_order", scope: !4897, file: !4897, line: 29, type: !4898, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!4897 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!319, !575}
!4900 = !DILocalVariable(name: "x", arg: 1, scope: !4901, file: !4902, line: 366, type: !669)
!4901 = distinct !DISubprogram(name: "fls64", scope: !4902, file: !4902, line: 366, type: !4903, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!4902 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!319, !669}
!4905 = !DILocation(line: 366, column: 40, scope: !4901, inlinedAt: !4906)
!4906 = distinct !DILocation(line: 46, column: 9, scope: !4896)
!4907 = !DILocalVariable(name: "bitpos", scope: !4901, file: !4902, line: 368, type: !319)
!4908 = !DILocation(line: 368, column: 6, scope: !4901, inlinedAt: !4906)
!4909 = !DILocalVariable(name: "size", arg: 1, scope: !4896, file: !4897, line: 29, type: !575)
!4910 = !DILocation(line: 29, column: 63, scope: !4896)
!4911 = !DILocation(line: 31, column: 27, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4896, file: !4897, line: 31, column: 6)
!4913 = !DILocation(line: 31, column: 6, scope: !4912)
!4914 = !DILocation(line: 31, column: 6, scope: !4896)
!4915 = !DILocation(line: 32, column: 8, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4917, file: !4897, line: 32, column: 7)
!4917 = distinct !DILexicalBlock(scope: !4912, file: !4897, line: 31, column: 34)
!4918 = !DILocation(line: 32, column: 7, scope: !4917)
!4919 = !DILocation(line: 33, column: 4, scope: !4916)
!4920 = !DILocation(line: 35, column: 7, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4917, file: !4897, line: 35, column: 7)
!4922 = !DILocation(line: 35, column: 12, scope: !4921)
!4923 = !DILocation(line: 35, column: 7, scope: !4917)
!4924 = !DILocation(line: 36, column: 4, scope: !4921)
!4925 = !DILocation(line: 38, column: 10, scope: !4917)
!4926 = !DILocation(line: 38, column: 28, scope: !4917)
!4927 = !DILocation(line: 38, column: 41, scope: !4917)
!4928 = !DILocation(line: 38, column: 3, scope: !4917)
!4929 = !DILocation(line: 41, column: 6, scope: !4896)
!4930 = !DILocation(line: 42, column: 7, scope: !4896)
!4931 = !DILocation(line: 46, column: 15, scope: !4896)
!4932 = !DILocation(line: 374, column: 2, scope: !4901, inlinedAt: !4906)
!4933 = !DILocation(line: 376, column: 14, scope: !4901, inlinedAt: !4906)
!4934 = !{i32 326194}
!4935 = !DILocation(line: 377, column: 9, scope: !4901, inlinedAt: !4906)
!4936 = !DILocation(line: 377, column: 16, scope: !4901, inlinedAt: !4906)
!4937 = !DILocation(line: 46, column: 2, scope: !4896)
!4938 = !DILocation(line: 48, column: 1, scope: !4896)
!4939 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4940, file: !4940, line: 30, type: !4941, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!4940 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4941 = !DISubroutineType(types: !4942)
!4942 = !{!319, !668}
!4943 = !DILocation(line: 366, column: 40, scope: !4901, inlinedAt: !4944)
!4944 = distinct !DILocation(line: 32, column: 9, scope: !4939)
!4945 = !DILocation(line: 368, column: 6, scope: !4901, inlinedAt: !4944)
!4946 = !DILocalVariable(name: "n", arg: 1, scope: !4939, file: !4940, line: 30, type: !668)
!4947 = !DILocation(line: 30, column: 21, scope: !4939)
!4948 = !DILocation(line: 32, column: 15, scope: !4939)
!4949 = !DILocation(line: 374, column: 2, scope: !4901, inlinedAt: !4944)
!4950 = !DILocation(line: 376, column: 14, scope: !4901, inlinedAt: !4944)
!4951 = !DILocation(line: 377, column: 9, scope: !4901, inlinedAt: !4944)
!4952 = !DILocation(line: 377, column: 16, scope: !4901, inlinedAt: !4944)
!4953 = !DILocation(line: 32, column: 18, scope: !4939)
!4954 = !DILocation(line: 32, column: 2, scope: !4939)
!4955 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4956, file: !4956, line: 137, type: !4957, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!4956 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!293, !1172, !2280, !572, !291}
!4959 = !DILocalVariable(name: "s", arg: 1, scope: !4955, file: !4956, line: 137, type: !1172)
!4960 = !DILocation(line: 137, column: 54, scope: !4955)
!4961 = !DILocalVariable(name: "object", arg: 2, scope: !4955, file: !4956, line: 137, type: !2280)
!4962 = !DILocation(line: 137, column: 69, scope: !4955)
!4963 = !DILocalVariable(name: "size", arg: 3, scope: !4955, file: !4956, line: 138, type: !572)
!4964 = !DILocation(line: 138, column: 12, scope: !4955)
!4965 = !DILocalVariable(name: "flags", arg: 4, scope: !4955, file: !4956, line: 138, type: !291)
!4966 = !DILocation(line: 138, column: 24, scope: !4955)
!4967 = !DILocation(line: 140, column: 17, scope: !4955)
!4968 = !DILocation(line: 140, column: 2, scope: !4955)
!4969 = distinct !DISubprogram(name: "ds3000_writereg", scope: !3, file: !3, line: 228, type: !4970, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!319, !4472, !319, !319}
!4972 = !DILocalVariable(name: "state", arg: 1, scope: !4969, file: !3, line: 228, type: !4472)
!4973 = !DILocation(line: 228, column: 49, scope: !4969)
!4974 = !DILocalVariable(name: "reg", arg: 2, scope: !4969, file: !3, line: 228, type: !319)
!4975 = !DILocation(line: 228, column: 60, scope: !4969)
!4976 = !DILocalVariable(name: "data", arg: 3, scope: !4969, file: !3, line: 228, type: !319)
!4977 = !DILocation(line: 228, column: 69, scope: !4969)
!4978 = !DILocalVariable(name: "buf", scope: !4969, file: !3, line: 230, type: !4979)
!4979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 16, elements: !1722)
!4980 = !DILocation(line: 230, column: 5, scope: !4969)
!4981 = !DILocation(line: 230, column: 13, scope: !4969)
!4982 = !DILocation(line: 230, column: 15, scope: !4969)
!4983 = !DILocation(line: 230, column: 20, scope: !4969)
!4984 = !DILocalVariable(name: "msg", scope: !4969, file: !3, line: 231, type: !4361)
!4985 = !DILocation(line: 231, column: 17, scope: !4969)
!4986 = !DILocation(line: 231, column: 23, scope: !4969)
!4987 = !DILocation(line: 231, column: 33, scope: !4969)
!4988 = !DILocation(line: 231, column: 40, scope: !4969)
!4989 = !DILocation(line: 231, column: 48, scope: !4969)
!4990 = !DILocation(line: 232, column: 22, scope: !4969)
!4991 = !DILocalVariable(name: "err", scope: !4969, file: !3, line: 233, type: !319)
!4992 = !DILocation(line: 233, column: 6, scope: !4969)
!4993 = !DILocation(line: 235, column: 2, scope: !4969)
!4994 = !DILocation(line: 235, column: 2, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 235, column: 2)
!4996 = distinct !DILexicalBlock(scope: !4969, file: !3, line: 235, column: 2)
!4997 = !DILocation(line: 235, column: 2, scope: !4996)
!4998 = !DILocation(line: 237, column: 21, scope: !4969)
!4999 = !DILocation(line: 237, column: 28, scope: !4969)
!5000 = !DILocation(line: 237, column: 8, scope: !4969)
!5001 = !DILocation(line: 237, column: 6, scope: !4969)
!5002 = !DILocation(line: 238, column: 6, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4969, file: !3, line: 238, column: 6)
!5004 = !DILocation(line: 238, column: 10, scope: !5003)
!5005 = !DILocation(line: 238, column: 6, scope: !4969)
!5006 = !DILocation(line: 240, column: 20, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !5003, file: !3, line: 238, column: 16)
!5008 = !DILocation(line: 240, column: 25, scope: !5007)
!5009 = !DILocation(line: 240, column: 30, scope: !5007)
!5010 = !DILocation(line: 239, column: 3, scope: !5007)
!5011 = !DILocation(line: 241, column: 3, scope: !5007)
!5012 = !DILocation(line: 244, column: 2, scope: !4969)
!5013 = !DILocation(line: 245, column: 1, scope: !4969)
!5014 = distinct !DISubprogram(name: "ds3000_release", scope: !3, file: !3, line: 808, type: !430, scopeLine: 809, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!5015 = !DILocalVariable(name: "fe", arg: 1, scope: !5014, file: !3, line: 808, type: !432)
!5016 = !DILocation(line: 808, column: 49, scope: !5014)
!5017 = !DILocalVariable(name: "state", scope: !5014, file: !3, line: 810, type: !4472)
!5018 = !DILocation(line: 810, column: 23, scope: !5014)
!5019 = !DILocation(line: 810, column: 31, scope: !5014)
!5020 = !DILocation(line: 810, column: 35, scope: !5014)
!5021 = !DILocation(line: 812, column: 6, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 812, column: 6)
!5023 = !DILocation(line: 812, column: 13, scope: !5022)
!5024 = !DILocation(line: 812, column: 21, scope: !5022)
!5025 = !DILocation(line: 812, column: 6, scope: !5014)
!5026 = !DILocation(line: 813, column: 3, scope: !5022)
!5027 = !DILocation(line: 813, column: 10, scope: !5022)
!5028 = !DILocation(line: 813, column: 18, scope: !5022)
!5029 = !DILocation(line: 813, column: 31, scope: !5022)
!5030 = !DILocation(line: 815, column: 2, scope: !5014)
!5031 = !DILocation(line: 815, column: 2, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 815, column: 2)
!5033 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 815, column: 2)
!5034 = !DILocation(line: 815, column: 2, scope: !5033)
!5035 = !DILocation(line: 816, column: 8, scope: !5014)
!5036 = !DILocation(line: 816, column: 2, scope: !5014)
!5037 = !DILocation(line: 817, column: 1, scope: !5014)
!5038 = distinct !DISubprogram(name: "ds3000_initfe", scope: !3, file: !3, line: 1067, type: !4128, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!5039 = !DILocalVariable(name: "fe", arg: 1, scope: !5038, file: !3, line: 1067, type: !432)
!5040 = !DILocation(line: 1067, column: 47, scope: !5038)
!5041 = !DILocalVariable(name: "state", scope: !5038, file: !3, line: 1069, type: !4472)
!5042 = !DILocation(line: 1069, column: 23, scope: !5038)
!5043 = !DILocation(line: 1069, column: 31, scope: !5038)
!5044 = !DILocation(line: 1069, column: 35, scope: !5038)
!5045 = !DILocalVariable(name: "ret", scope: !5038, file: !3, line: 1070, type: !319)
!5046 = !DILocation(line: 1070, column: 6, scope: !5038)
!5047 = !DILocation(line: 1072, column: 2, scope: !5038)
!5048 = !DILocation(line: 1072, column: 2, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 1072, column: 2)
!5050 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 1072, column: 2)
!5051 = !DILocation(line: 1072, column: 2, scope: !5050)
!5052 = !DILocation(line: 1074, column: 18, scope: !5038)
!5053 = !DILocation(line: 1074, column: 53, scope: !5038)
!5054 = !DILocation(line: 1074, column: 38, scope: !5038)
!5055 = !DILocation(line: 1074, column: 36, scope: !5038)
!5056 = !DILocation(line: 1074, column: 2, scope: !5038)
!5057 = !DILocation(line: 1075, column: 2, scope: !5038)
!5058 = !DILocation(line: 1078, column: 33, scope: !5038)
!5059 = !DILocation(line: 1078, column: 8, scope: !5038)
!5060 = !DILocation(line: 1078, column: 6, scope: !5038)
!5061 = !DILocation(line: 1079, column: 6, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 1079, column: 6)
!5063 = !DILocation(line: 1079, column: 10, scope: !5062)
!5064 = !DILocation(line: 1079, column: 6, scope: !5038)
!5065 = !DILocation(line: 1080, column: 3, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5062, file: !3, line: 1079, column: 16)
!5067 = !DILocation(line: 1081, column: 10, scope: !5066)
!5068 = !DILocation(line: 1081, column: 3, scope: !5066)
!5069 = !DILocation(line: 1084, column: 2, scope: !5038)
!5070 = !DILocation(line: 1085, column: 1, scope: !5038)
!5071 = distinct !DISubprogram(name: "ds3000_tune", scope: !3, file: !3, line: 1034, type: !4139, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!5072 = !DILocalVariable(name: "fe", arg: 1, scope: !5071, file: !3, line: 1034, type: !432)
!5073 = !DILocation(line: 1034, column: 45, scope: !5071)
!5074 = !DILocalVariable(name: "re_tune", arg: 2, scope: !5071, file: !3, line: 1035, type: !733)
!5075 = !DILocation(line: 1035, column: 9, scope: !5071)
!5076 = !DILocalVariable(name: "mode_flags", arg: 3, scope: !5071, file: !3, line: 1036, type: !7)
!5077 = !DILocation(line: 1036, column: 17, scope: !5071)
!5078 = !DILocalVariable(name: "delay", arg: 4, scope: !5071, file: !3, line: 1037, type: !364)
!5079 = !DILocation(line: 1037, column: 18, scope: !5071)
!5080 = !DILocalVariable(name: "status", arg: 5, scope: !5071, file: !3, line: 1038, type: !4141)
!5081 = !DILocation(line: 1038, column: 20, scope: !5071)
!5082 = !DILocation(line: 1040, column: 6, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 1040, column: 6)
!5084 = !DILocation(line: 1040, column: 6, scope: !5071)
!5085 = !DILocalVariable(name: "ret", scope: !5086, file: !3, line: 1041, type: !319)
!5086 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 1040, column: 15)
!5087 = !DILocation(line: 1041, column: 7, scope: !5086)
!5088 = !DILocation(line: 1041, column: 33, scope: !5086)
!5089 = !DILocation(line: 1041, column: 13, scope: !5086)
!5090 = !DILocation(line: 1042, column: 7, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 1042, column: 7)
!5092 = !DILocation(line: 1042, column: 7, scope: !5086)
!5093 = !DILocation(line: 1043, column: 11, scope: !5091)
!5094 = !DILocation(line: 1043, column: 4, scope: !5091)
!5095 = !DILocation(line: 1044, column: 2, scope: !5086)
!5096 = !DILocation(line: 1046, column: 3, scope: !5071)
!5097 = !DILocation(line: 1046, column: 9, scope: !5071)
!5098 = !DILocation(line: 1048, column: 28, scope: !5071)
!5099 = !DILocation(line: 1048, column: 32, scope: !5071)
!5100 = !DILocation(line: 1048, column: 9, scope: !5071)
!5101 = !DILocation(line: 1048, column: 2, scope: !5071)
!5102 = !DILocation(line: 1049, column: 1, scope: !5071)
!5103 = distinct !DISubprogram(name: "ds3000_get_algo", scope: !3, file: !3, line: 1051, type: !4144, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!5104 = !DILocalVariable(name: "fe", arg: 1, scope: !5103, file: !3, line: 1051, type: !432)
!5105 = !DILocation(line: 1051, column: 61, scope: !5103)
!5106 = !DILocalVariable(name: "state", scope: !5103, file: !3, line: 1053, type: !4472)
!5107 = !DILocation(line: 1053, column: 23, scope: !5103)
!5108 = !DILocation(line: 1053, column: 31, scope: !5103)
!5109 = !DILocation(line: 1053, column: 35, scope: !5103)
!5110 = !DILocation(line: 1055, column: 6, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5103, file: !3, line: 1055, column: 6)
!5112 = !DILocation(line: 1055, column: 13, scope: !5111)
!5113 = !DILocation(line: 1055, column: 21, scope: !5111)
!5114 = !DILocation(line: 1055, column: 6, scope: !5103)
!5115 = !DILocation(line: 1056, column: 3, scope: !5111)
!5116 = !DILocation(line: 1056, column: 10, scope: !5111)
!5117 = !DILocation(line: 1056, column: 18, scope: !5111)
!5118 = !DILocation(line: 1056, column: 31, scope: !5111)
!5119 = !DILocation(line: 1058, column: 2, scope: !5103)
!5120 = !DILocation(line: 1058, column: 2, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 1058, column: 2)
!5122 = distinct !DILexicalBlock(scope: !5103, file: !3, line: 1058, column: 2)
!5123 = !DILocation(line: 1058, column: 2, scope: !5122)
!5124 = !DILocation(line: 1059, column: 2, scope: !5103)
!5125 = distinct !DISubprogram(name: "ds3000_set_frontend", scope: !3, file: !3, line: 883, type: !4128, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!5126 = !DILocalVariable(name: "fe", arg: 1, scope: !5125, file: !3, line: 883, type: !432)
!5127 = !DILocation(line: 883, column: 53, scope: !5125)
!5128 = !DILocalVariable(name: "state", scope: !5125, file: !3, line: 885, type: !4472)
!5129 = !DILocation(line: 885, column: 23, scope: !5125)
!5130 = !DILocation(line: 885, column: 31, scope: !5125)
!5131 = !DILocation(line: 885, column: 35, scope: !5125)
!5132 = !DILocalVariable(name: "c", scope: !5125, file: !3, line: 886, type: !4161)
!5133 = !DILocation(line: 886, column: 34, scope: !5125)
!5134 = !DILocation(line: 886, column: 39, scope: !5125)
!5135 = !DILocation(line: 886, column: 43, scope: !5125)
!5136 = !DILocalVariable(name: "i", scope: !5125, file: !3, line: 888, type: !319)
!5137 = !DILocation(line: 888, column: 6, scope: !5125)
!5138 = !DILocalVariable(name: "status", scope: !5125, file: !3, line: 889, type: !40)
!5139 = !DILocation(line: 889, column: 17, scope: !5125)
!5140 = !DILocalVariable(name: "offset_khz", scope: !5125, file: !3, line: 890, type: !1592)
!5141 = !DILocation(line: 890, column: 6, scope: !5125)
!5142 = !DILocalVariable(name: "frequency", scope: !5125, file: !3, line: 891, type: !415)
!5143 = !DILocation(line: 891, column: 6, scope: !5125)
!5144 = !DILocalVariable(name: "value", scope: !5125, file: !3, line: 892, type: !332)
!5145 = !DILocation(line: 892, column: 6, scope: !5125)
!5146 = !DILocation(line: 894, column: 2, scope: !5125)
!5147 = !DILocation(line: 894, column: 2, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 894, column: 2)
!5149 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 894, column: 2)
!5150 = !DILocation(line: 894, column: 2, scope: !5149)
!5151 = !DILocation(line: 896, column: 6, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 896, column: 6)
!5153 = !DILocation(line: 896, column: 13, scope: !5152)
!5154 = !DILocation(line: 896, column: 21, scope: !5152)
!5155 = !DILocation(line: 896, column: 6, scope: !5125)
!5156 = !DILocation(line: 897, column: 3, scope: !5152)
!5157 = !DILocation(line: 897, column: 10, scope: !5152)
!5158 = !DILocation(line: 897, column: 18, scope: !5152)
!5159 = !DILocation(line: 897, column: 32, scope: !5152)
!5160 = !DILocation(line: 899, column: 6, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 899, column: 6)
!5162 = !DILocation(line: 899, column: 10, scope: !5161)
!5163 = !DILocation(line: 899, column: 14, scope: !5161)
!5164 = !DILocation(line: 899, column: 24, scope: !5161)
!5165 = !DILocation(line: 899, column: 6, scope: !5125)
!5166 = !DILocation(line: 900, column: 3, scope: !5161)
!5167 = !DILocation(line: 900, column: 7, scope: !5161)
!5168 = !DILocation(line: 900, column: 11, scope: !5161)
!5169 = !DILocation(line: 900, column: 21, scope: !5161)
!5170 = !DILocation(line: 900, column: 32, scope: !5161)
!5171 = !DILocation(line: 903, column: 18, scope: !5125)
!5172 = !DILocation(line: 903, column: 2, scope: !5125)
!5173 = !DILocation(line: 904, column: 18, scope: !5125)
!5174 = !DILocation(line: 904, column: 2, scope: !5125)
!5175 = !DILocation(line: 906, column: 18, scope: !5125)
!5176 = !DILocation(line: 906, column: 2, scope: !5125)
!5177 = !DILocation(line: 908, column: 18, scope: !5125)
!5178 = !DILocation(line: 908, column: 2, scope: !5125)
!5179 = !DILocation(line: 910, column: 10, scope: !5125)
!5180 = !DILocation(line: 910, column: 13, scope: !5125)
!5181 = !DILocation(line: 910, column: 2, scope: !5125)
!5182 = !DILocation(line: 913, column: 10, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 913, column: 3)
!5184 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 910, column: 30)
!5185 = !DILocation(line: 913, column: 8, scope: !5183)
!5186 = !DILocation(line: 913, column: 15, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 913, column: 3)
!5188 = !DILocation(line: 913, column: 17, scope: !5187)
!5189 = !DILocation(line: 913, column: 3, scope: !5183)
!5190 = !DILocation(line: 914, column: 20, scope: !5187)
!5191 = !DILocation(line: 915, column: 26, scope: !5187)
!5192 = !DILocation(line: 915, column: 5, scope: !5187)
!5193 = !DILocation(line: 916, column: 26, scope: !5187)
!5194 = !DILocation(line: 916, column: 28, scope: !5187)
!5195 = !DILocation(line: 916, column: 5, scope: !5187)
!5196 = !DILocation(line: 914, column: 4, scope: !5187)
!5197 = !DILocation(line: 913, column: 51, scope: !5187)
!5198 = !DILocation(line: 913, column: 3, scope: !5187)
!5199 = distinct !{!5199, !5189, !5200}
!5200 = !DILocation(line: 916, column: 32, scope: !5183)
!5201 = !DILocation(line: 917, column: 26, scope: !5184)
!5202 = !DILocation(line: 917, column: 11, scope: !5184)
!5203 = !DILocation(line: 917, column: 9, scope: !5184)
!5204 = !DILocation(line: 918, column: 9, scope: !5184)
!5205 = !DILocation(line: 919, column: 9, scope: !5184)
!5206 = !DILocation(line: 920, column: 19, scope: !5184)
!5207 = !DILocation(line: 920, column: 32, scope: !5184)
!5208 = !DILocation(line: 920, column: 3, scope: !5184)
!5209 = !DILocation(line: 921, column: 3, scope: !5184)
!5210 = !DILocation(line: 924, column: 10, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 924, column: 3)
!5212 = !DILocation(line: 924, column: 8, scope: !5211)
!5213 = !DILocation(line: 924, column: 15, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5211, file: !3, line: 924, column: 3)
!5215 = !DILocation(line: 924, column: 17, scope: !5214)
!5216 = !DILocation(line: 924, column: 3, scope: !5211)
!5217 = !DILocation(line: 925, column: 20, scope: !5214)
!5218 = !DILocation(line: 926, column: 27, scope: !5214)
!5219 = !DILocation(line: 926, column: 5, scope: !5214)
!5220 = !DILocation(line: 927, column: 27, scope: !5214)
!5221 = !DILocation(line: 927, column: 29, scope: !5214)
!5222 = !DILocation(line: 927, column: 5, scope: !5214)
!5223 = !DILocation(line: 925, column: 4, scope: !5214)
!5224 = !DILocation(line: 924, column: 52, scope: !5214)
!5225 = !DILocation(line: 924, column: 3, scope: !5214)
!5226 = distinct !{!5226, !5216, !5227}
!5227 = !DILocation(line: 927, column: 33, scope: !5211)
!5228 = !DILocation(line: 928, column: 7, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 928, column: 7)
!5230 = !DILocation(line: 928, column: 10, scope: !5229)
!5231 = !DILocation(line: 928, column: 22, scope: !5229)
!5232 = !DILocation(line: 928, column: 7, scope: !5184)
!5233 = !DILocation(line: 929, column: 20, scope: !5229)
!5234 = !DILocation(line: 929, column: 4, scope: !5229)
!5235 = !DILocation(line: 931, column: 20, scope: !5229)
!5236 = !DILocation(line: 931, column: 4, scope: !5229)
!5237 = !DILocation(line: 932, column: 3, scope: !5184)
!5238 = !DILocation(line: 934, column: 3, scope: !5184)
!5239 = !DILocation(line: 938, column: 18, scope: !5125)
!5240 = !DILocation(line: 938, column: 2, scope: !5125)
!5241 = !DILocation(line: 940, column: 18, scope: !5125)
!5242 = !DILocation(line: 940, column: 2, scope: !5125)
!5243 = !DILocation(line: 942, column: 7, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 942, column: 6)
!5245 = !DILocation(line: 942, column: 10, scope: !5244)
!5246 = !DILocation(line: 942, column: 40, scope: !5244)
!5247 = !DILocation(line: 942, column: 22, scope: !5244)
!5248 = !DILocation(line: 942, column: 57, scope: !5244)
!5249 = !DILocation(line: 943, column: 5, scope: !5244)
!5250 = !DILocation(line: 943, column: 8, scope: !5244)
!5251 = !DILocation(line: 943, column: 38, scope: !5244)
!5252 = !DILocation(line: 943, column: 20, scope: !5244)
!5253 = !DILocation(line: 942, column: 6, scope: !5125)
!5254 = !DILocation(line: 944, column: 3, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 943, column: 56)
!5256 = !DILocation(line: 944, column: 3, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5258, file: !3, line: 944, column: 3)
!5258 = distinct !DILexicalBlock(scope: !5255, file: !3, line: 944, column: 3)
!5259 = !DILocation(line: 944, column: 3, scope: !5258)
!5260 = !DILocation(line: 948, column: 3, scope: !5255)
!5261 = !DILocation(line: 952, column: 7, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 952, column: 6)
!5263 = !DILocation(line: 952, column: 10, scope: !5262)
!5264 = !DILocation(line: 952, column: 22, scope: !5262)
!5265 = !DILocation(line: 952, column: 30, scope: !5262)
!5266 = !DILocation(line: 952, column: 6, scope: !5125)
!5267 = !DILocation(line: 953, column: 20, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 952, column: 39)
!5269 = !DILocation(line: 953, column: 23, scope: !5268)
!5270 = !DILocation(line: 953, column: 35, scope: !5268)
!5271 = !DILocation(line: 953, column: 17, scope: !5268)
!5272 = !DILocation(line: 953, column: 43, scope: !5268)
!5273 = !DILocation(line: 953, column: 11, scope: !5268)
!5274 = !DILocation(line: 953, column: 9, scope: !5268)
!5275 = !DILocation(line: 954, column: 7, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 954, column: 7)
!5277 = !DILocation(line: 954, column: 13, scope: !5276)
!5278 = !DILocation(line: 954, column: 17, scope: !5276)
!5279 = !DILocation(line: 954, column: 7, scope: !5268)
!5280 = !DILocation(line: 955, column: 9, scope: !5276)
!5281 = !DILocation(line: 955, column: 4, scope: !5276)
!5282 = !DILocation(line: 956, column: 19, scope: !5268)
!5283 = !DILocation(line: 956, column: 3, scope: !5268)
!5284 = !DILocation(line: 957, column: 19, scope: !5268)
!5285 = !DILocation(line: 957, column: 32, scope: !5268)
!5286 = !DILocation(line: 957, column: 3, scope: !5268)
!5287 = !DILocation(line: 958, column: 19, scope: !5268)
!5288 = !DILocation(line: 958, column: 3, scope: !5268)
!5289 = !DILocation(line: 959, column: 19, scope: !5268)
!5290 = !DILocation(line: 959, column: 3, scope: !5268)
!5291 = !DILocation(line: 960, column: 2, scope: !5268)
!5292 = !DILocation(line: 960, column: 14, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 960, column: 13)
!5294 = !DILocation(line: 960, column: 17, scope: !5293)
!5295 = !DILocation(line: 960, column: 29, scope: !5293)
!5296 = !DILocation(line: 960, column: 37, scope: !5293)
!5297 = !DILocation(line: 960, column: 13, scope: !5262)
!5298 = !DILocation(line: 961, column: 20, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5293, file: !3, line: 960, column: 47)
!5300 = !DILocation(line: 961, column: 23, scope: !5299)
!5301 = !DILocation(line: 961, column: 35, scope: !5299)
!5302 = !DILocation(line: 961, column: 17, scope: !5299)
!5303 = !DILocation(line: 961, column: 43, scope: !5299)
!5304 = !DILocation(line: 961, column: 11, scope: !5299)
!5305 = !DILocation(line: 961, column: 9, scope: !5299)
!5306 = !DILocation(line: 962, column: 7, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 962, column: 7)
!5308 = !DILocation(line: 962, column: 13, scope: !5307)
!5309 = !DILocation(line: 962, column: 17, scope: !5307)
!5310 = !DILocation(line: 962, column: 7, scope: !5299)
!5311 = !DILocation(line: 963, column: 9, scope: !5307)
!5312 = !DILocation(line: 963, column: 4, scope: !5307)
!5313 = !DILocation(line: 964, column: 19, scope: !5299)
!5314 = !DILocation(line: 964, column: 3, scope: !5299)
!5315 = !DILocation(line: 965, column: 19, scope: !5299)
!5316 = !DILocation(line: 965, column: 32, scope: !5299)
!5317 = !DILocation(line: 965, column: 3, scope: !5299)
!5318 = !DILocation(line: 966, column: 19, scope: !5299)
!5319 = !DILocation(line: 966, column: 3, scope: !5299)
!5320 = !DILocation(line: 967, column: 19, scope: !5299)
!5321 = !DILocation(line: 967, column: 3, scope: !5299)
!5322 = !DILocation(line: 968, column: 2, scope: !5299)
!5323 = !DILocation(line: 968, column: 14, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5293, file: !3, line: 968, column: 13)
!5325 = !DILocation(line: 968, column: 17, scope: !5324)
!5326 = !DILocation(line: 968, column: 29, scope: !5324)
!5327 = !DILocation(line: 968, column: 37, scope: !5324)
!5328 = !DILocation(line: 968, column: 13, scope: !5293)
!5329 = !DILocation(line: 969, column: 20, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 968, column: 47)
!5331 = !DILocation(line: 969, column: 23, scope: !5330)
!5332 = !DILocation(line: 969, column: 35, scope: !5330)
!5333 = !DILocation(line: 969, column: 17, scope: !5330)
!5334 = !DILocation(line: 969, column: 43, scope: !5330)
!5335 = !DILocation(line: 969, column: 11, scope: !5330)
!5336 = !DILocation(line: 969, column: 9, scope: !5330)
!5337 = !DILocation(line: 970, column: 19, scope: !5330)
!5338 = !DILocation(line: 970, column: 32, scope: !5330)
!5339 = !DILocation(line: 970, column: 3, scope: !5330)
!5340 = !DILocation(line: 971, column: 19, scope: !5330)
!5341 = !DILocation(line: 971, column: 3, scope: !5330)
!5342 = !DILocation(line: 972, column: 19, scope: !5330)
!5343 = !DILocation(line: 972, column: 3, scope: !5330)
!5344 = !DILocation(line: 973, column: 19, scope: !5330)
!5345 = !DILocation(line: 973, column: 3, scope: !5330)
!5346 = !DILocation(line: 974, column: 2, scope: !5330)
!5347 = !DILocation(line: 975, column: 21, scope: !5348)
!5348 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 974, column: 9)
!5349 = !DILocation(line: 975, column: 24, scope: !5348)
!5350 = !DILocation(line: 975, column: 36, scope: !5348)
!5351 = !DILocation(line: 975, column: 18, scope: !5348)
!5352 = !DILocation(line: 975, column: 44, scope: !5348)
!5353 = !DILocation(line: 975, column: 11, scope: !5348)
!5354 = !DILocation(line: 975, column: 9, scope: !5348)
!5355 = !DILocation(line: 976, column: 19, scope: !5348)
!5356 = !DILocation(line: 976, column: 32, scope: !5348)
!5357 = !DILocation(line: 976, column: 3, scope: !5348)
!5358 = !DILocation(line: 977, column: 19, scope: !5348)
!5359 = !DILocation(line: 977, column: 3, scope: !5348)
!5360 = !DILocation(line: 978, column: 19, scope: !5348)
!5361 = !DILocation(line: 978, column: 3, scope: !5348)
!5362 = !DILocation(line: 979, column: 19, scope: !5348)
!5363 = !DILocation(line: 979, column: 3, scope: !5348)
!5364 = !DILocation(line: 983, column: 13, scope: !5125)
!5365 = !DILocation(line: 983, column: 16, scope: !5125)
!5366 = !DILocation(line: 983, column: 28, scope: !5125)
!5367 = !DILocation(line: 983, column: 36, scope: !5125)
!5368 = !DILocation(line: 983, column: 43, scope: !5125)
!5369 = !DILocation(line: 984, column: 30, scope: !5125)
!5370 = !DILocation(line: 983, column: 10, scope: !5125)
!5371 = !DILocation(line: 983, column: 8, scope: !5125)
!5372 = !DILocation(line: 985, column: 18, scope: !5125)
!5373 = !DILocation(line: 985, column: 31, scope: !5125)
!5374 = !DILocation(line: 985, column: 37, scope: !5125)
!5375 = !DILocation(line: 985, column: 2, scope: !5125)
!5376 = !DILocation(line: 986, column: 18, scope: !5125)
!5377 = !DILocation(line: 986, column: 32, scope: !5125)
!5378 = !DILocation(line: 986, column: 38, scope: !5125)
!5379 = !DILocation(line: 986, column: 48, scope: !5125)
!5380 = !DILocation(line: 986, column: 2, scope: !5125)
!5381 = !DILocation(line: 989, column: 18, scope: !5125)
!5382 = !DILocation(line: 989, column: 2, scope: !5125)
!5383 = !DILocation(line: 992, column: 18, scope: !5125)
!5384 = !DILocation(line: 992, column: 2, scope: !5125)
!5385 = !DILocation(line: 1000, column: 6, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 1000, column: 6)
!5387 = !DILocation(line: 1000, column: 13, scope: !5386)
!5388 = !DILocation(line: 1000, column: 21, scope: !5386)
!5389 = !DILocation(line: 1000, column: 6, scope: !5125)
!5390 = !DILocation(line: 1001, column: 11, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 1000, column: 30)
!5392 = !DILocation(line: 1001, column: 14, scope: !5391)
!5393 = !DILocation(line: 1001, column: 3, scope: !5391)
!5394 = !DILocation(line: 1001, column: 31, scope: !5391)
!5395 = !DILocation(line: 1004, column: 20, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 1001, column: 31)
!5397 = !DILocation(line: 1004, column: 4, scope: !5396)
!5398 = !DILocation(line: 1005, column: 3, scope: !5396)
!5399 = !DILocation(line: 1007, column: 20, scope: !5396)
!5400 = !DILocation(line: 1007, column: 4, scope: !5396)
!5401 = !DILocation(line: 1008, column: 4, scope: !5396)
!5402 = !DILocation(line: 1010, column: 2, scope: !5391)
!5403 = !DILocation(line: 1013, column: 18, scope: !5125)
!5404 = !DILocation(line: 1013, column: 2, scope: !5125)
!5405 = !DILocation(line: 1015, column: 18, scope: !5125)
!5406 = !DILocation(line: 1015, column: 2, scope: !5125)
!5407 = !DILocation(line: 1017, column: 6, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 1017, column: 6)
!5409 = !DILocation(line: 1017, column: 10, scope: !5408)
!5410 = !DILocation(line: 1017, column: 14, scope: !5408)
!5411 = !DILocation(line: 1017, column: 24, scope: !5408)
!5412 = !DILocation(line: 1017, column: 6, scope: !5125)
!5413 = !DILocation(line: 1018, column: 3, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5408, file: !3, line: 1017, column: 39)
!5415 = !DILocation(line: 1018, column: 7, scope: !5414)
!5416 = !DILocation(line: 1018, column: 11, scope: !5414)
!5417 = !DILocation(line: 1018, column: 21, scope: !5414)
!5418 = !DILocation(line: 1018, column: 35, scope: !5414)
!5419 = !DILocation(line: 1019, column: 16, scope: !5414)
!5420 = !DILocation(line: 1019, column: 28, scope: !5414)
!5421 = !DILocation(line: 1019, column: 31, scope: !5414)
!5422 = !DILocation(line: 1019, column: 26, scope: !5414)
!5423 = !DILocation(line: 1019, column: 14, scope: !5414)
!5424 = !DILocation(line: 1020, column: 29, scope: !5414)
!5425 = !DILocation(line: 1020, column: 33, scope: !5414)
!5426 = !DILocation(line: 1020, column: 3, scope: !5414)
!5427 = !DILocation(line: 1021, column: 2, scope: !5414)
!5428 = !DILocation(line: 1023, column: 9, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 1023, column: 2)
!5430 = !DILocation(line: 1023, column: 7, scope: !5429)
!5431 = !DILocation(line: 1023, column: 14, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 1023, column: 2)
!5433 = !DILocation(line: 1023, column: 16, scope: !5432)
!5434 = !DILocation(line: 1023, column: 2, scope: !5429)
!5435 = !DILocation(line: 1024, column: 22, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 1023, column: 28)
!5437 = !DILocation(line: 1024, column: 3, scope: !5436)
!5438 = !DILocation(line: 1025, column: 7, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 1025, column: 7)
!5440 = !DILocation(line: 1025, column: 14, scope: !5439)
!5441 = !DILocation(line: 1025, column: 7, scope: !5436)
!5442 = !DILocation(line: 1026, column: 4, scope: !5439)
!5443 = !DILocation(line: 1028, column: 3, scope: !5436)
!5444 = !DILocation(line: 1029, column: 2, scope: !5436)
!5445 = !DILocation(line: 1023, column: 24, scope: !5432)
!5446 = !DILocation(line: 1023, column: 2, scope: !5432)
!5447 = distinct !{!5447, !5434, !5448}
!5448 = !DILocation(line: 1029, column: 2, scope: !5429)
!5449 = !DILocation(line: 1031, column: 2, scope: !5125)
!5450 = !DILocation(line: 1032, column: 1, scope: !5125)
!5451 = distinct !DISubprogram(name: "ds3000_read_status", scope: !3, file: !3, line: 421, type: !4164, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!5452 = !DILocalVariable(name: "fe", arg: 1, scope: !5451, file: !3, line: 421, type: !432)
!5453 = !DILocation(line: 421, column: 52, scope: !5451)
!5454 = !DILocalVariable(name: "status", arg: 2, scope: !5451, file: !3, line: 421, type: !4141)
!5455 = !DILocation(line: 421, column: 72, scope: !5451)
!5456 = !DILocalVariable(name: "state", scope: !5451, file: !3, line: 423, type: !4472)
!5457 = !DILocation(line: 423, column: 23, scope: !5451)
!5458 = !DILocation(line: 423, column: 31, scope: !5451)
!5459 = !DILocation(line: 423, column: 35, scope: !5451)
!5460 = !DILocalVariable(name: "c", scope: !5451, file: !3, line: 424, type: !4161)
!5461 = !DILocation(line: 424, column: 34, scope: !5451)
!5462 = !DILocation(line: 424, column: 39, scope: !5451)
!5463 = !DILocation(line: 424, column: 43, scope: !5451)
!5464 = !DILocalVariable(name: "lock", scope: !5451, file: !3, line: 425, type: !319)
!5465 = !DILocation(line: 425, column: 6, scope: !5451)
!5466 = !DILocation(line: 427, column: 3, scope: !5451)
!5467 = !DILocation(line: 427, column: 10, scope: !5451)
!5468 = !DILocation(line: 429, column: 10, scope: !5451)
!5469 = !DILocation(line: 429, column: 13, scope: !5451)
!5470 = !DILocation(line: 429, column: 2, scope: !5451)
!5471 = !DILocation(line: 431, column: 25, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 429, column: 30)
!5473 = !DILocation(line: 431, column: 10, scope: !5472)
!5474 = !DILocation(line: 431, column: 8, scope: !5472)
!5475 = !DILocation(line: 432, column: 8, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 432, column: 7)
!5477 = !DILocation(line: 432, column: 13, scope: !5476)
!5478 = !DILocation(line: 432, column: 21, scope: !5476)
!5479 = !DILocation(line: 432, column: 7, scope: !5472)
!5480 = !DILocation(line: 433, column: 5, scope: !5476)
!5481 = !DILocation(line: 433, column: 12, scope: !5476)
!5482 = !DILocation(line: 433, column: 4, scope: !5476)
!5483 = !DILocation(line: 437, column: 3, scope: !5472)
!5484 = !DILocation(line: 439, column: 25, scope: !5472)
!5485 = !DILocation(line: 439, column: 10, scope: !5472)
!5486 = !DILocation(line: 439, column: 8, scope: !5472)
!5487 = !DILocation(line: 440, column: 8, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 440, column: 7)
!5489 = !DILocation(line: 440, column: 13, scope: !5488)
!5490 = !DILocation(line: 440, column: 21, scope: !5488)
!5491 = !DILocation(line: 440, column: 7, scope: !5472)
!5492 = !DILocation(line: 441, column: 5, scope: !5488)
!5493 = !DILocation(line: 441, column: 12, scope: !5488)
!5494 = !DILocation(line: 441, column: 4, scope: !5488)
!5495 = !DILocation(line: 445, column: 3, scope: !5472)
!5496 = !DILocation(line: 447, column: 3, scope: !5472)
!5497 = !DILocation(line: 450, column: 6, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 450, column: 6)
!5499 = !DILocation(line: 450, column: 13, scope: !5498)
!5500 = !DILocation(line: 450, column: 21, scope: !5498)
!5501 = !DILocation(line: 450, column: 6, scope: !5451)
!5502 = !DILocation(line: 451, column: 3, scope: !5498)
!5503 = !DILocation(line: 451, column: 10, scope: !5498)
!5504 = !DILocation(line: 451, column: 18, scope: !5498)
!5505 = !DILocation(line: 451, column: 31, scope: !5498)
!5506 = !DILocation(line: 451, column: 36, scope: !5498)
!5507 = !DILocation(line: 451, column: 35, scope: !5498)
!5508 = !DILocation(line: 451, column: 43, scope: !5498)
!5509 = !DILocation(line: 453, column: 2, scope: !5451)
!5510 = !DILocation(line: 453, column: 2, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 453, column: 2)
!5512 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 453, column: 2)
!5513 = !DILocation(line: 453, column: 2, scope: !5512)
!5514 = !DILocation(line: 455, column: 2, scope: !5451)
!5515 = !DILocation(line: 456, column: 1, scope: !5451)
!5516 = distinct !DISubprogram(name: "ds3000_read_ber", scope: !3, file: !3, line: 459, type: !4168, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!5517 = !DILocalVariable(name: "fe", arg: 1, scope: !5516, file: !3, line: 459, type: !432)
!5518 = !DILocation(line: 459, column: 49, scope: !5516)
!5519 = !DILocalVariable(name: "ber", arg: 2, scope: !5516, file: !3, line: 459, type: !1563)
!5520 = !DILocation(line: 459, column: 58, scope: !5516)
!5521 = !DILocalVariable(name: "state", scope: !5516, file: !3, line: 461, type: !4472)
!5522 = !DILocation(line: 461, column: 23, scope: !5516)
!5523 = !DILocation(line: 461, column: 31, scope: !5516)
!5524 = !DILocation(line: 461, column: 35, scope: !5516)
!5525 = !DILocalVariable(name: "c", scope: !5516, file: !3, line: 462, type: !4161)
!5526 = !DILocation(line: 462, column: 34, scope: !5516)
!5527 = !DILocation(line: 462, column: 39, scope: !5516)
!5528 = !DILocation(line: 462, column: 43, scope: !5516)
!5529 = !DILocalVariable(name: "data", scope: !5516, file: !3, line: 463, type: !342)
!5530 = !DILocation(line: 463, column: 5, scope: !5516)
!5531 = !DILocalVariable(name: "ber_reading", scope: !5516, file: !3, line: 464, type: !415)
!5532 = !DILocation(line: 464, column: 6, scope: !5516)
!5533 = !DILocalVariable(name: "lpdc_frames", scope: !5516, file: !3, line: 464, type: !415)
!5534 = !DILocation(line: 464, column: 19, scope: !5516)
!5535 = !DILocation(line: 466, column: 2, scope: !5516)
!5536 = !DILocation(line: 466, column: 2, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 466, column: 2)
!5538 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 466, column: 2)
!5539 = !DILocation(line: 466, column: 2, scope: !5538)
!5540 = !DILocation(line: 468, column: 10, scope: !5516)
!5541 = !DILocation(line: 468, column: 13, scope: !5516)
!5542 = !DILocation(line: 468, column: 2, scope: !5516)
!5543 = !DILocation(line: 472, column: 19, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 468, column: 30)
!5545 = !DILocation(line: 472, column: 3, scope: !5544)
!5546 = !DILocation(line: 474, column: 25, scope: !5544)
!5547 = !DILocation(line: 474, column: 10, scope: !5544)
!5548 = !DILocation(line: 474, column: 8, scope: !5544)
!5549 = !DILocation(line: 476, column: 8, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5544, file: !3, line: 476, column: 7)
!5551 = !DILocation(line: 476, column: 13, scope: !5550)
!5552 = !DILocation(line: 476, column: 21, scope: !5550)
!5553 = !DILocation(line: 476, column: 7, scope: !5544)
!5554 = !DILocation(line: 480, column: 27, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 476, column: 27)
!5556 = !DILocation(line: 480, column: 12, scope: !5555)
!5557 = !DILocation(line: 480, column: 40, scope: !5555)
!5558 = !DILocation(line: 481, column: 20, scope: !5555)
!5559 = !DILocation(line: 481, column: 5, scope: !5555)
!5560 = !DILocation(line: 480, column: 46, scope: !5555)
!5561 = !DILocation(line: 480, column: 5, scope: !5555)
!5562 = !DILocation(line: 480, column: 9, scope: !5555)
!5563 = !DILocation(line: 485, column: 9, scope: !5555)
!5564 = !DILocation(line: 486, column: 20, scope: !5555)
!5565 = !DILocation(line: 486, column: 33, scope: !5555)
!5566 = !DILocation(line: 486, column: 4, scope: !5555)
!5567 = !DILocation(line: 487, column: 20, scope: !5555)
!5568 = !DILocation(line: 487, column: 33, scope: !5555)
!5569 = !DILocation(line: 487, column: 4, scope: !5555)
!5570 = !DILocation(line: 488, column: 3, scope: !5555)
!5571 = !DILocation(line: 491, column: 5, scope: !5550)
!5572 = !DILocation(line: 491, column: 9, scope: !5550)
!5573 = !DILocation(line: 492, column: 3, scope: !5544)
!5574 = !DILocation(line: 495, column: 33, scope: !5544)
!5575 = !DILocation(line: 495, column: 18, scope: !5544)
!5576 = !DILocation(line: 495, column: 46, scope: !5544)
!5577 = !DILocation(line: 496, column: 21, scope: !5544)
!5578 = !DILocation(line: 496, column: 6, scope: !5544)
!5579 = !DILocation(line: 496, column: 34, scope: !5544)
!5580 = !DILocation(line: 495, column: 53, scope: !5544)
!5581 = !DILocation(line: 497, column: 20, scope: !5544)
!5582 = !DILocation(line: 497, column: 5, scope: !5544)
!5583 = !DILocation(line: 496, column: 40, scope: !5544)
!5584 = !DILocation(line: 495, column: 15, scope: !5544)
!5585 = !DILocation(line: 499, column: 33, scope: !5544)
!5586 = !DILocation(line: 499, column: 18, scope: !5544)
!5587 = !DILocation(line: 499, column: 46, scope: !5544)
!5588 = !DILocation(line: 500, column: 20, scope: !5544)
!5589 = !DILocation(line: 500, column: 5, scope: !5544)
!5590 = !DILocation(line: 499, column: 52, scope: !5544)
!5591 = !DILocation(line: 499, column: 15, scope: !5544)
!5592 = !DILocation(line: 501, column: 7, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5544, file: !3, line: 501, column: 7)
!5594 = !DILocation(line: 501, column: 19, scope: !5593)
!5595 = !DILocation(line: 501, column: 7, scope: !5544)
!5596 = !DILocation(line: 503, column: 20, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 501, column: 26)
!5598 = !DILocation(line: 503, column: 4, scope: !5597)
!5599 = !DILocation(line: 505, column: 20, scope: !5597)
!5600 = !DILocation(line: 505, column: 4, scope: !5597)
!5601 = !DILocation(line: 507, column: 20, scope: !5597)
!5602 = !DILocation(line: 507, column: 4, scope: !5597)
!5603 = !DILocation(line: 509, column: 20, scope: !5597)
!5604 = !DILocation(line: 509, column: 4, scope: !5597)
!5605 = !DILocation(line: 510, column: 11, scope: !5597)
!5606 = !DILocation(line: 510, column: 5, scope: !5597)
!5607 = !DILocation(line: 510, column: 9, scope: !5597)
!5608 = !DILocation(line: 511, column: 3, scope: !5597)
!5609 = !DILocation(line: 514, column: 5, scope: !5593)
!5610 = !DILocation(line: 514, column: 9, scope: !5593)
!5611 = !DILocation(line: 515, column: 3, scope: !5544)
!5612 = !DILocation(line: 517, column: 3, scope: !5544)
!5613 = !DILocation(line: 520, column: 2, scope: !5516)
!5614 = !DILocation(line: 521, column: 1, scope: !5516)
!5615 = distinct !DISubprogram(name: "ds3000_read_signal_strength", scope: !3, file: !3, line: 523, type: !4172, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!5616 = !DILocalVariable(name: "fe", arg: 1, scope: !5615, file: !3, line: 523, type: !432)
!5617 = !DILocation(line: 523, column: 61, scope: !5615)
!5618 = !DILocalVariable(name: "signal_strength", arg: 2, scope: !5615, file: !3, line: 524, type: !4174)
!5619 = !DILocation(line: 524, column: 12, scope: !5615)
!5620 = !DILocation(line: 526, column: 6, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 526, column: 6)
!5622 = !DILocation(line: 526, column: 10, scope: !5621)
!5623 = !DILocation(line: 526, column: 14, scope: !5621)
!5624 = !DILocation(line: 526, column: 24, scope: !5621)
!5625 = !DILocation(line: 526, column: 6, scope: !5615)
!5626 = !DILocation(line: 527, column: 3, scope: !5621)
!5627 = !DILocation(line: 527, column: 7, scope: !5621)
!5628 = !DILocation(line: 527, column: 11, scope: !5621)
!5629 = !DILocation(line: 527, column: 21, scope: !5621)
!5630 = !DILocation(line: 527, column: 37, scope: !5621)
!5631 = !DILocation(line: 527, column: 41, scope: !5621)
!5632 = !DILocation(line: 529, column: 2, scope: !5615)
!5633 = !DILocalVariable(name: "fe", arg: 1, scope: !4313, file: !3, line: 533, type: !432)
!5634 = !DILocation(line: 533, column: 49, scope: !4313)
!5635 = !DILocalVariable(name: "snr", arg: 2, scope: !4313, file: !3, line: 533, type: !4174)
!5636 = !DILocation(line: 533, column: 58, scope: !4313)
!5637 = !DILocalVariable(name: "state", scope: !4313, file: !3, line: 535, type: !4472)
!5638 = !DILocation(line: 535, column: 23, scope: !4313)
!5639 = !DILocation(line: 535, column: 31, scope: !4313)
!5640 = !DILocation(line: 535, column: 35, scope: !4313)
!5641 = !DILocalVariable(name: "c", scope: !4313, file: !3, line: 536, type: !4161)
!5642 = !DILocation(line: 536, column: 34, scope: !4313)
!5643 = !DILocation(line: 536, column: 39, scope: !4313)
!5644 = !DILocation(line: 536, column: 43, scope: !4313)
!5645 = !DILocalVariable(name: "snr_reading", scope: !4313, file: !3, line: 537, type: !342)
!5646 = !DILocation(line: 537, column: 5, scope: !4313)
!5647 = !DILocalVariable(name: "snr_value", scope: !4313, file: !3, line: 537, type: !342)
!5648 = !DILocation(line: 537, column: 18, scope: !4313)
!5649 = !DILocalVariable(name: "dvbs2_signal_reading", scope: !4313, file: !3, line: 538, type: !415)
!5650 = !DILocation(line: 538, column: 6, scope: !4313)
!5651 = !DILocalVariable(name: "dvbs2_noise_reading", scope: !4313, file: !3, line: 538, type: !415)
!5652 = !DILocation(line: 538, column: 28, scope: !4313)
!5653 = !DILocalVariable(name: "tmp", scope: !4313, file: !3, line: 538, type: !415)
!5654 = !DILocation(line: 538, column: 49, scope: !4313)
!5655 = !DILocation(line: 559, column: 2, scope: !4313)
!5656 = !DILocation(line: 559, column: 2, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5658, file: !3, line: 559, column: 2)
!5658 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 559, column: 2)
!5659 = !DILocation(line: 559, column: 2, scope: !5658)
!5660 = !DILocation(line: 561, column: 10, scope: !4313)
!5661 = !DILocation(line: 561, column: 13, scope: !4313)
!5662 = !DILocation(line: 561, column: 2, scope: !4313)
!5663 = !DILocation(line: 563, column: 32, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 561, column: 30)
!5665 = !DILocation(line: 563, column: 17, scope: !5664)
!5666 = !DILocation(line: 563, column: 15, scope: !5664)
!5667 = !DILocation(line: 564, column: 15, scope: !5664)
!5668 = !DILocation(line: 565, column: 7, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5664, file: !3, line: 565, column: 7)
!5670 = !DILocation(line: 565, column: 19, scope: !5669)
!5671 = !DILocation(line: 565, column: 7, scope: !5664)
!5672 = !DILocation(line: 566, column: 5, scope: !5669)
!5673 = !DILocation(line: 566, column: 9, scope: !5669)
!5674 = !DILocation(line: 566, column: 4, scope: !5669)
!5675 = !DILocation(line: 568, column: 8, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 568, column: 8)
!5677 = distinct !DILexicalBlock(scope: !5669, file: !3, line: 567, column: 8)
!5678 = !DILocation(line: 568, column: 20, scope: !5676)
!5679 = !DILocation(line: 568, column: 8, scope: !5677)
!5680 = !DILocation(line: 569, column: 17, scope: !5676)
!5681 = !DILocation(line: 569, column: 5, scope: !5676)
!5682 = !DILocation(line: 570, column: 29, scope: !5677)
!5683 = !DILocation(line: 570, column: 41, scope: !5677)
!5684 = !DILocation(line: 570, column: 16, scope: !5677)
!5685 = !DILocation(line: 570, column: 46, scope: !5677)
!5686 = !DILocation(line: 570, column: 51, scope: !5677)
!5687 = !DILocation(line: 570, column: 14, scope: !5677)
!5688 = !DILocation(line: 573, column: 11, scope: !5677)
!5689 = !DILocation(line: 573, column: 21, scope: !5677)
!5690 = !DILocation(line: 573, column: 25, scope: !5677)
!5691 = !DILocation(line: 573, column: 5, scope: !5677)
!5692 = !DILocation(line: 573, column: 9, scope: !5677)
!5693 = !DILocation(line: 575, column: 3, scope: !5664)
!5694 = !DILocation(line: 575, column: 3, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 575, column: 3)
!5696 = distinct !DILexicalBlock(scope: !5664, file: !3, line: 575, column: 3)
!5697 = !DILocation(line: 575, column: 3, scope: !5696)
!5698 = !DILocation(line: 577, column: 3, scope: !5664)
!5699 = !DILocation(line: 579, column: 41, scope: !5664)
!5700 = !DILocation(line: 579, column: 26, scope: !5664)
!5701 = !DILocation(line: 579, column: 54, scope: !5664)
!5702 = !DILocation(line: 580, column: 21, scope: !5664)
!5703 = !DILocation(line: 580, column: 6, scope: !5664)
!5704 = !DILocation(line: 580, column: 34, scope: !5664)
!5705 = !DILocation(line: 579, column: 62, scope: !5664)
!5706 = !DILocation(line: 579, column: 23, scope: !5664)
!5707 = !DILocation(line: 581, column: 41, scope: !5664)
!5708 = !DILocation(line: 581, column: 26, scope: !5664)
!5709 = !DILocation(line: 581, column: 24, scope: !5664)
!5710 = !DILocation(line: 582, column: 9, scope: !5664)
!5711 = !DILocation(line: 582, column: 32, scope: !5664)
!5712 = !DILocation(line: 582, column: 30, scope: !5664)
!5713 = !DILocation(line: 582, column: 53, scope: !5664)
!5714 = !DILocation(line: 582, column: 7, scope: !5664)
!5715 = !DILocation(line: 583, column: 7, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5664, file: !3, line: 583, column: 7)
!5717 = !DILocation(line: 583, column: 11, scope: !5716)
!5718 = !DILocation(line: 583, column: 7, scope: !5664)
!5719 = !DILocation(line: 584, column: 5, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 583, column: 17)
!5721 = !DILocation(line: 584, column: 9, scope: !5720)
!5722 = !DILocation(line: 585, column: 4, scope: !5720)
!5723 = !DILocation(line: 587, column: 7, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5664, file: !3, line: 587, column: 7)
!5725 = !DILocation(line: 587, column: 27, scope: !5724)
!5726 = !DILocation(line: 587, column: 7, scope: !5664)
!5727 = !DILocation(line: 588, column: 14, scope: !5728)
!5728 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 587, column: 33)
!5729 = !DILocation(line: 591, column: 5, scope: !5728)
!5730 = !DILocation(line: 591, column: 9, scope: !5728)
!5731 = !DILocation(line: 592, column: 4, scope: !5728)
!5732 = !DILocation(line: 594, column: 7, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5664, file: !3, line: 594, column: 7)
!5734 = !DILocation(line: 594, column: 13, scope: !5733)
!5735 = !DILocation(line: 594, column: 11, scope: !5733)
!5736 = !DILocation(line: 594, column: 7, scope: !5664)
!5737 = !DILocation(line: 595, column: 18, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 594, column: 34)
!5739 = !DILocation(line: 595, column: 24, scope: !5738)
!5740 = !DILocation(line: 595, column: 22, scope: !5738)
!5741 = !DILocation(line: 595, column: 16, scope: !5738)
!5742 = !DILocation(line: 596, column: 8, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5738, file: !3, line: 596, column: 8)
!5744 = !DILocation(line: 596, column: 20, scope: !5743)
!5745 = !DILocation(line: 596, column: 8, scope: !5738)
!5746 = !DILocation(line: 597, column: 17, scope: !5743)
!5747 = !DILocation(line: 597, column: 5, scope: !5743)
!5748 = !DILocation(line: 598, column: 30, scope: !5738)
!5749 = !DILocation(line: 598, column: 42, scope: !5738)
!5750 = !DILocation(line: 598, column: 16, scope: !5738)
!5751 = !DILocation(line: 598, column: 47, scope: !5738)
!5752 = !DILocation(line: 598, column: 14, scope: !5738)
!5753 = !DILocation(line: 601, column: 11, scope: !5738)
!5754 = !DILocation(line: 601, column: 21, scope: !5738)
!5755 = !DILocation(line: 601, column: 25, scope: !5738)
!5756 = !DILocation(line: 601, column: 5, scope: !5738)
!5757 = !DILocation(line: 601, column: 9, scope: !5738)
!5758 = !DILocation(line: 602, column: 3, scope: !5738)
!5759 = !DILocation(line: 603, column: 18, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 602, column: 10)
!5761 = !DILocation(line: 603, column: 40, scope: !5760)
!5762 = !DILocation(line: 603, column: 38, scope: !5760)
!5763 = !DILocation(line: 603, column: 16, scope: !5760)
!5764 = !DILocation(line: 604, column: 8, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 604, column: 8)
!5766 = !DILocation(line: 604, column: 20, scope: !5765)
!5767 = !DILocation(line: 604, column: 8, scope: !5760)
!5768 = !DILocation(line: 605, column: 17, scope: !5765)
!5769 = !DILocation(line: 605, column: 5, scope: !5765)
!5770 = !DILocation(line: 606, column: 27, scope: !5760)
!5771 = !DILocation(line: 606, column: 39, scope: !5760)
!5772 = !DILocation(line: 606, column: 13, scope: !5760)
!5773 = !DILocation(line: 606, column: 44, scope: !5760)
!5774 = !DILocation(line: 606, column: 11, scope: !5760)
!5775 = !DILocation(line: 606, column: 5, scope: !5760)
!5776 = !DILocation(line: 606, column: 9, scope: !5760)
!5777 = !DILocation(line: 608, column: 3, scope: !5664)
!5778 = !DILocation(line: 608, column: 3, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 608, column: 3)
!5780 = distinct !DILexicalBlock(scope: !5664, file: !3, line: 608, column: 3)
!5781 = !DILocation(line: 608, column: 3, scope: !5780)
!5782 = !DILocation(line: 610, column: 3, scope: !5664)
!5783 = !DILocation(line: 612, column: 3, scope: !5664)
!5784 = !DILocation(line: 615, column: 2, scope: !4313)
!5785 = !DILocation(line: 616, column: 1, scope: !4313)
!5786 = distinct !DISubprogram(name: "ds3000_read_ucblocks", scope: !3, file: !3, line: 619, type: !4168, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!5787 = !DILocalVariable(name: "fe", arg: 1, scope: !5786, file: !3, line: 619, type: !432)
!5788 = !DILocation(line: 619, column: 54, scope: !5786)
!5789 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !5786, file: !3, line: 619, type: !1563)
!5790 = !DILocation(line: 619, column: 63, scope: !5786)
!5791 = !DILocalVariable(name: "state", scope: !5786, file: !3, line: 621, type: !4472)
!5792 = !DILocation(line: 621, column: 23, scope: !5786)
!5793 = !DILocation(line: 621, column: 31, scope: !5786)
!5794 = !DILocation(line: 621, column: 35, scope: !5786)
!5795 = !DILocalVariable(name: "c", scope: !5786, file: !3, line: 622, type: !4161)
!5796 = !DILocation(line: 622, column: 34, scope: !5786)
!5797 = !DILocation(line: 622, column: 39, scope: !5786)
!5798 = !DILocation(line: 622, column: 43, scope: !5786)
!5799 = !DILocalVariable(name: "data", scope: !5786, file: !3, line: 623, type: !342)
!5800 = !DILocation(line: 623, column: 5, scope: !5786)
!5801 = !DILocalVariable(name: "_ucblocks", scope: !5786, file: !3, line: 624, type: !332)
!5802 = !DILocation(line: 624, column: 6, scope: !5786)
!5803 = !DILocation(line: 626, column: 2, scope: !5786)
!5804 = !DILocation(line: 626, column: 2, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 626, column: 2)
!5806 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 626, column: 2)
!5807 = !DILocation(line: 626, column: 2, scope: !5806)
!5808 = !DILocation(line: 628, column: 10, scope: !5786)
!5809 = !DILocation(line: 628, column: 13, scope: !5786)
!5810 = !DILocation(line: 628, column: 2, scope: !5786)
!5811 = !DILocation(line: 630, column: 31, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 628, column: 30)
!5813 = !DILocation(line: 630, column: 16, scope: !5812)
!5814 = !DILocation(line: 630, column: 44, scope: !5812)
!5815 = !DILocation(line: 631, column: 20, scope: !5812)
!5816 = !DILocation(line: 631, column: 5, scope: !5812)
!5817 = !DILocation(line: 630, column: 50, scope: !5812)
!5818 = !DILocation(line: 630, column: 4, scope: !5812)
!5819 = !DILocation(line: 630, column: 13, scope: !5812)
!5820 = !DILocation(line: 632, column: 25, scope: !5812)
!5821 = !DILocation(line: 632, column: 10, scope: !5812)
!5822 = !DILocation(line: 632, column: 8, scope: !5812)
!5823 = !DILocation(line: 634, column: 8, scope: !5812)
!5824 = !DILocation(line: 635, column: 19, scope: !5812)
!5825 = !DILocation(line: 635, column: 32, scope: !5812)
!5826 = !DILocation(line: 635, column: 3, scope: !5812)
!5827 = !DILocation(line: 637, column: 8, scope: !5812)
!5828 = !DILocation(line: 638, column: 19, scope: !5812)
!5829 = !DILocation(line: 638, column: 32, scope: !5812)
!5830 = !DILocation(line: 638, column: 3, scope: !5812)
!5831 = !DILocation(line: 639, column: 3, scope: !5812)
!5832 = !DILocation(line: 641, column: 31, scope: !5812)
!5833 = !DILocation(line: 641, column: 16, scope: !5812)
!5834 = !DILocation(line: 641, column: 44, scope: !5812)
!5835 = !DILocation(line: 642, column: 20, scope: !5812)
!5836 = !DILocation(line: 642, column: 5, scope: !5812)
!5837 = !DILocation(line: 641, column: 50, scope: !5812)
!5838 = !DILocation(line: 641, column: 15, scope: !5812)
!5839 = !DILocation(line: 641, column: 13, scope: !5812)
!5840 = !DILocation(line: 643, column: 7, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 643, column: 7)
!5842 = !DILocation(line: 643, column: 19, scope: !5841)
!5843 = !DILocation(line: 643, column: 26, scope: !5841)
!5844 = !DILocation(line: 643, column: 17, scope: !5841)
!5845 = !DILocation(line: 643, column: 7, scope: !5812)
!5846 = !DILocation(line: 644, column: 16, scope: !5841)
!5847 = !DILocation(line: 644, column: 28, scope: !5841)
!5848 = !DILocation(line: 644, column: 35, scope: !5841)
!5849 = !DILocation(line: 644, column: 26, scope: !5841)
!5850 = !DILocation(line: 644, column: 5, scope: !5841)
!5851 = !DILocation(line: 644, column: 14, scope: !5841)
!5852 = !DILocation(line: 644, column: 4, scope: !5841)
!5853 = !DILocation(line: 646, column: 16, scope: !5841)
!5854 = !DILocation(line: 646, column: 23, scope: !5841)
!5855 = !DILocation(line: 646, column: 35, scope: !5841)
!5856 = !DILocation(line: 646, column: 33, scope: !5841)
!5857 = !DILocation(line: 646, column: 5, scope: !5841)
!5858 = !DILocation(line: 646, column: 14, scope: !5841)
!5859 = !DILocation(line: 647, column: 22, scope: !5812)
!5860 = !DILocation(line: 647, column: 3, scope: !5812)
!5861 = !DILocation(line: 647, column: 10, scope: !5812)
!5862 = !DILocation(line: 647, column: 20, scope: !5812)
!5863 = !DILocation(line: 648, column: 3, scope: !5812)
!5864 = !DILocation(line: 650, column: 3, scope: !5812)
!5865 = !DILocation(line: 653, column: 2, scope: !5786)
!5866 = !DILocation(line: 654, column: 1, scope: !5786)
!5867 = distinct !DISubprogram(name: "ds3000_send_diseqc_msg", scope: !3, file: !3, line: 690, type: !4180, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!5868 = !DILocalVariable(name: "fe", arg: 1, scope: !5867, file: !3, line: 690, type: !432)
!5869 = !DILocation(line: 690, column: 56, scope: !5867)
!5870 = !DILocalVariable(name: "d", arg: 2, scope: !5867, file: !3, line: 691, type: !4182)
!5871 = !DILocation(line: 691, column: 35, scope: !5867)
!5872 = !DILocalVariable(name: "state", scope: !5867, file: !3, line: 693, type: !4472)
!5873 = !DILocation(line: 693, column: 23, scope: !5867)
!5874 = !DILocation(line: 693, column: 31, scope: !5867)
!5875 = !DILocation(line: 693, column: 35, scope: !5867)
!5876 = !DILocalVariable(name: "i", scope: !5867, file: !3, line: 694, type: !319)
!5877 = !DILocation(line: 694, column: 6, scope: !5867)
!5878 = !DILocalVariable(name: "data", scope: !5867, file: !3, line: 695, type: !342)
!5879 = !DILocation(line: 695, column: 5, scope: !5867)
!5880 = !DILocation(line: 698, column: 2, scope: !5867)
!5881 = !DILocation(line: 698, column: 2, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 698, column: 2)
!5883 = distinct !DILexicalBlock(scope: !5867, file: !3, line: 698, column: 2)
!5884 = !DILocation(line: 698, column: 2, scope: !5883)
!5885 = !DILocation(line: 699, column: 9, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5867, file: !3, line: 699, column: 2)
!5887 = !DILocation(line: 699, column: 7, scope: !5886)
!5888 = !DILocation(line: 699, column: 15, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 699, column: 2)
!5890 = !DILocation(line: 699, column: 19, scope: !5889)
!5891 = !DILocation(line: 699, column: 22, scope: !5889)
!5892 = !DILocation(line: 699, column: 17, scope: !5889)
!5893 = !DILocation(line: 699, column: 2, scope: !5886)
!5894 = !DILocation(line: 700, column: 3, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 699, column: 32)
!5896 = !DILocation(line: 700, column: 3, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5898, file: !3, line: 700, column: 3)
!5898 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 700, column: 3)
!5899 = !DILocation(line: 700, column: 3, scope: !5898)
!5900 = !DILocation(line: 701, column: 7, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 701, column: 7)
!5902 = !DILocation(line: 701, column: 13, scope: !5901)
!5903 = !DILocation(line: 701, column: 16, scope: !5901)
!5904 = !DILocation(line: 701, column: 11, scope: !5901)
!5905 = !DILocation(line: 701, column: 7, scope: !5895)
!5906 = !DILocation(line: 702, column: 4, scope: !5901)
!5907 = !DILocation(line: 702, column: 4, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 702, column: 4)
!5909 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 702, column: 4)
!5910 = !DILocation(line: 702, column: 4, scope: !5909)
!5911 = !DILocation(line: 699, column: 2, scope: !5889)
!5912 = distinct !{!5912, !5893, !5913}
!5913 = !DILocation(line: 703, column: 2, scope: !5886)
!5914 = !DILocation(line: 706, column: 24, scope: !5867)
!5915 = !DILocation(line: 706, column: 9, scope: !5867)
!5916 = !DILocation(line: 706, column: 7, scope: !5867)
!5917 = !DILocation(line: 707, column: 7, scope: !5867)
!5918 = !DILocation(line: 708, column: 18, scope: !5867)
!5919 = !DILocation(line: 708, column: 31, scope: !5867)
!5920 = !DILocation(line: 708, column: 2, scope: !5867)
!5921 = !DILocation(line: 711, column: 9, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5867, file: !3, line: 711, column: 2)
!5923 = !DILocation(line: 711, column: 7, scope: !5922)
!5924 = !DILocation(line: 711, column: 14, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5922, file: !3, line: 711, column: 2)
!5926 = !DILocation(line: 711, column: 18, scope: !5925)
!5927 = !DILocation(line: 711, column: 21, scope: !5925)
!5928 = !DILocation(line: 711, column: 16, scope: !5925)
!5929 = !DILocation(line: 711, column: 2, scope: !5922)
!5930 = !DILocation(line: 712, column: 19, scope: !5925)
!5931 = !DILocation(line: 712, column: 33, scope: !5925)
!5932 = !DILocation(line: 712, column: 31, scope: !5925)
!5933 = !DILocation(line: 712, column: 36, scope: !5925)
!5934 = !DILocation(line: 712, column: 39, scope: !5925)
!5935 = !DILocation(line: 712, column: 43, scope: !5925)
!5936 = !DILocation(line: 712, column: 3, scope: !5925)
!5937 = !DILocation(line: 711, column: 31, scope: !5925)
!5938 = !DILocation(line: 711, column: 2, scope: !5925)
!5939 = distinct !{!5939, !5929, !5940}
!5940 = !DILocation(line: 712, column: 45, scope: !5922)
!5941 = !DILocation(line: 714, column: 24, scope: !5867)
!5942 = !DILocation(line: 714, column: 9, scope: !5867)
!5943 = !DILocation(line: 714, column: 7, scope: !5867)
!5944 = !DILocation(line: 717, column: 7, scope: !5867)
!5945 = !DILocation(line: 720, column: 12, scope: !5867)
!5946 = !DILocation(line: 720, column: 15, scope: !5867)
!5947 = !DILocation(line: 720, column: 23, scope: !5867)
!5948 = !DILocation(line: 720, column: 28, scope: !5867)
!5949 = !DILocation(line: 720, column: 34, scope: !5867)
!5950 = !DILocation(line: 720, column: 7, scope: !5867)
!5951 = !DILocation(line: 721, column: 18, scope: !5867)
!5952 = !DILocation(line: 721, column: 31, scope: !5867)
!5953 = !DILocation(line: 721, column: 2, scope: !5867)
!5954 = !DILocation(line: 724, column: 9, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5867, file: !3, line: 724, column: 2)
!5956 = !DILocation(line: 724, column: 7, scope: !5955)
!5957 = !DILocation(line: 724, column: 14, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5955, file: !3, line: 724, column: 2)
!5959 = !DILocation(line: 724, column: 16, scope: !5958)
!5960 = !DILocation(line: 724, column: 2, scope: !5955)
!5961 = !DILocation(line: 725, column: 25, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5958, file: !3, line: 724, column: 27)
!5963 = !DILocation(line: 725, column: 10, scope: !5962)
!5964 = !DILocation(line: 725, column: 8, scope: !5962)
!5965 = !DILocation(line: 726, column: 8, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5962, file: !3, line: 726, column: 7)
!5967 = !DILocation(line: 726, column: 13, scope: !5966)
!5968 = !DILocation(line: 726, column: 21, scope: !5966)
!5969 = !DILocation(line: 726, column: 7, scope: !5962)
!5970 = !DILocation(line: 727, column: 4, scope: !5966)
!5971 = !DILocation(line: 728, column: 3, scope: !5962)
!5972 = !DILocation(line: 729, column: 2, scope: !5962)
!5973 = !DILocation(line: 724, column: 23, scope: !5958)
!5974 = !DILocation(line: 724, column: 2, scope: !5958)
!5975 = distinct !{!5975, !5960, !5976}
!5976 = !DILocation(line: 729, column: 2, scope: !5955)
!5977 = !DILocation(line: 732, column: 6, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5867, file: !3, line: 732, column: 6)
!5979 = !DILocation(line: 732, column: 8, scope: !5978)
!5980 = !DILocation(line: 732, column: 6, scope: !5867)
!5981 = !DILocation(line: 733, column: 25, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5978, file: !3, line: 732, column: 15)
!5983 = !DILocation(line: 733, column: 10, scope: !5982)
!5984 = !DILocation(line: 733, column: 8, scope: !5982)
!5985 = !DILocation(line: 734, column: 8, scope: !5982)
!5986 = !DILocation(line: 735, column: 8, scope: !5982)
!5987 = !DILocation(line: 736, column: 19, scope: !5982)
!5988 = !DILocation(line: 736, column: 32, scope: !5982)
!5989 = !DILocation(line: 736, column: 3, scope: !5982)
!5990 = !DILocation(line: 738, column: 25, scope: !5982)
!5991 = !DILocation(line: 738, column: 10, scope: !5982)
!5992 = !DILocation(line: 738, column: 8, scope: !5982)
!5993 = !DILocation(line: 739, column: 8, scope: !5982)
!5994 = !DILocation(line: 740, column: 8, scope: !5982)
!5995 = !DILocation(line: 741, column: 19, scope: !5982)
!5996 = !DILocation(line: 741, column: 32, scope: !5982)
!5997 = !DILocation(line: 741, column: 3, scope: !5982)
!5998 = !DILocation(line: 743, column: 3, scope: !5982)
!5999 = !DILocation(line: 746, column: 24, scope: !5867)
!6000 = !DILocation(line: 746, column: 9, scope: !5867)
!6001 = !DILocation(line: 746, column: 7, scope: !5867)
!6002 = !DILocation(line: 747, column: 7, scope: !5867)
!6003 = !DILocation(line: 748, column: 7, scope: !5867)
!6004 = !DILocation(line: 749, column: 18, scope: !5867)
!6005 = !DILocation(line: 749, column: 31, scope: !5867)
!6006 = !DILocation(line: 749, column: 2, scope: !5867)
!6007 = !DILocation(line: 751, column: 2, scope: !5867)
!6008 = !DILocation(line: 752, column: 1, scope: !5867)
!6009 = distinct !DISubprogram(name: "ds3000_diseqc_send_burst", scope: !3, file: !3, line: 755, type: !4201, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!6010 = !DILocalVariable(name: "fe", arg: 1, scope: !6009, file: !3, line: 755, type: !432)
!6011 = !DILocation(line: 755, column: 58, scope: !6009)
!6012 = !DILocalVariable(name: "burst", arg: 2, scope: !6009, file: !3, line: 756, type: !171)
!6013 = !DILocation(line: 756, column: 30, scope: !6009)
!6014 = !DILocalVariable(name: "state", scope: !6009, file: !3, line: 758, type: !4472)
!6015 = !DILocation(line: 758, column: 23, scope: !6009)
!6016 = !DILocation(line: 758, column: 31, scope: !6009)
!6017 = !DILocation(line: 758, column: 35, scope: !6009)
!6018 = !DILocalVariable(name: "i", scope: !6009, file: !3, line: 759, type: !319)
!6019 = !DILocation(line: 759, column: 6, scope: !6009)
!6020 = !DILocalVariable(name: "data", scope: !6009, file: !3, line: 760, type: !342)
!6021 = !DILocation(line: 760, column: 5, scope: !6009)
!6022 = !DILocation(line: 762, column: 2, scope: !6009)
!6023 = !DILocation(line: 762, column: 2, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !6025, file: !3, line: 762, column: 2)
!6025 = distinct !DILexicalBlock(scope: !6009, file: !3, line: 762, column: 2)
!6026 = !DILocation(line: 762, column: 2, scope: !6025)
!6027 = !DILocation(line: 764, column: 24, scope: !6009)
!6028 = !DILocation(line: 764, column: 9, scope: !6009)
!6029 = !DILocation(line: 764, column: 7, scope: !6009)
!6030 = !DILocation(line: 765, column: 7, scope: !6009)
!6031 = !DILocation(line: 766, column: 18, scope: !6009)
!6032 = !DILocation(line: 766, column: 31, scope: !6009)
!6033 = !DILocation(line: 766, column: 2, scope: !6009)
!6034 = !DILocation(line: 769, column: 6, scope: !6035)
!6035 = distinct !DILexicalBlock(scope: !6009, file: !3, line: 769, column: 6)
!6036 = !DILocation(line: 769, column: 12, scope: !6035)
!6037 = !DILocation(line: 769, column: 6, scope: !6009)
!6038 = !DILocation(line: 771, column: 19, scope: !6035)
!6039 = !DILocation(line: 771, column: 3, scope: !6035)
!6040 = !DILocation(line: 772, column: 11, scope: !6041)
!6041 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 772, column: 11)
!6042 = !DILocation(line: 772, column: 17, scope: !6041)
!6043 = !DILocation(line: 772, column: 11, scope: !6035)
!6044 = !DILocation(line: 774, column: 19, scope: !6041)
!6045 = !DILocation(line: 774, column: 3, scope: !6041)
!6046 = !DILocation(line: 776, column: 3, scope: !6041)
!6047 = !DILocation(line: 778, column: 2, scope: !6009)
!6048 = !DILocation(line: 779, column: 9, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !6009, file: !3, line: 779, column: 2)
!6050 = !DILocation(line: 779, column: 7, scope: !6049)
!6051 = !DILocation(line: 779, column: 14, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6049, file: !3, line: 779, column: 2)
!6053 = !DILocation(line: 779, column: 16, scope: !6052)
!6054 = !DILocation(line: 779, column: 2, scope: !6049)
!6055 = !DILocation(line: 780, column: 25, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6052, file: !3, line: 779, column: 26)
!6057 = !DILocation(line: 780, column: 10, scope: !6056)
!6058 = !DILocation(line: 780, column: 8, scope: !6056)
!6059 = !DILocation(line: 781, column: 8, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6056, file: !3, line: 781, column: 7)
!6061 = !DILocation(line: 781, column: 13, scope: !6060)
!6062 = !DILocation(line: 781, column: 21, scope: !6060)
!6063 = !DILocation(line: 781, column: 7, scope: !6056)
!6064 = !DILocation(line: 782, column: 4, scope: !6060)
!6065 = !DILocation(line: 783, column: 3, scope: !6056)
!6066 = !DILocation(line: 784, column: 2, scope: !6056)
!6067 = !DILocation(line: 779, column: 22, scope: !6052)
!6068 = !DILocation(line: 779, column: 2, scope: !6052)
!6069 = distinct !{!6069, !6054, !6070}
!6070 = !DILocation(line: 784, column: 2, scope: !6049)
!6071 = !DILocation(line: 786, column: 6, scope: !6072)
!6072 = distinct !DILexicalBlock(scope: !6009, file: !3, line: 786, column: 6)
!6073 = !DILocation(line: 786, column: 8, scope: !6072)
!6074 = !DILocation(line: 786, column: 6, scope: !6009)
!6075 = !DILocation(line: 787, column: 25, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !6072, file: !3, line: 786, column: 14)
!6077 = !DILocation(line: 787, column: 10, scope: !6076)
!6078 = !DILocation(line: 787, column: 8, scope: !6076)
!6079 = !DILocation(line: 788, column: 8, scope: !6076)
!6080 = !DILocation(line: 789, column: 8, scope: !6076)
!6081 = !DILocation(line: 790, column: 19, scope: !6076)
!6082 = !DILocation(line: 790, column: 32, scope: !6076)
!6083 = !DILocation(line: 790, column: 3, scope: !6076)
!6084 = !DILocation(line: 792, column: 25, scope: !6076)
!6085 = !DILocation(line: 792, column: 10, scope: !6076)
!6086 = !DILocation(line: 792, column: 8, scope: !6076)
!6087 = !DILocation(line: 793, column: 8, scope: !6076)
!6088 = !DILocation(line: 794, column: 8, scope: !6076)
!6089 = !DILocation(line: 795, column: 19, scope: !6076)
!6090 = !DILocation(line: 795, column: 32, scope: !6076)
!6091 = !DILocation(line: 795, column: 3, scope: !6076)
!6092 = !DILocation(line: 797, column: 3, scope: !6076)
!6093 = !DILocation(line: 800, column: 24, scope: !6009)
!6094 = !DILocation(line: 800, column: 9, scope: !6009)
!6095 = !DILocation(line: 800, column: 7, scope: !6009)
!6096 = !DILocation(line: 801, column: 7, scope: !6009)
!6097 = !DILocation(line: 802, column: 7, scope: !6009)
!6098 = !DILocation(line: 803, column: 18, scope: !6009)
!6099 = !DILocation(line: 803, column: 31, scope: !6009)
!6100 = !DILocation(line: 803, column: 2, scope: !6009)
!6101 = !DILocation(line: 805, column: 2, scope: !6009)
!6102 = !DILocation(line: 806, column: 1, scope: !6009)
!6103 = distinct !DISubprogram(name: "ds3000_set_tone", scope: !3, file: !3, line: 656, type: !4205, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!6104 = !DILocalVariable(name: "fe", arg: 1, scope: !6103, file: !3, line: 656, type: !432)
!6105 = !DILocation(line: 656, column: 49, scope: !6103)
!6106 = !DILocalVariable(name: "tone", arg: 2, scope: !6103, file: !3, line: 656, type: !78)
!6107 = !DILocation(line: 656, column: 75, scope: !6103)
!6108 = !DILocalVariable(name: "state", scope: !6103, file: !3, line: 658, type: !4472)
!6109 = !DILocation(line: 658, column: 23, scope: !6103)
!6110 = !DILocation(line: 658, column: 31, scope: !6103)
!6111 = !DILocation(line: 658, column: 35, scope: !6103)
!6112 = !DILocalVariable(name: "data", scope: !6103, file: !3, line: 659, type: !342)
!6113 = !DILocation(line: 659, column: 5, scope: !6103)
!6114 = !DILocation(line: 661, column: 2, scope: !6103)
!6115 = !DILocation(line: 661, column: 2, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6117, file: !3, line: 661, column: 2)
!6117 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 661, column: 2)
!6118 = !DILocation(line: 661, column: 2, scope: !6117)
!6119 = !DILocation(line: 662, column: 7, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 662, column: 6)
!6121 = !DILocation(line: 662, column: 12, scope: !6120)
!6122 = !DILocation(line: 662, column: 28, scope: !6120)
!6123 = !DILocation(line: 662, column: 32, scope: !6120)
!6124 = !DILocation(line: 662, column: 37, scope: !6120)
!6125 = !DILocation(line: 662, column: 6, scope: !6103)
!6126 = !DILocation(line: 663, column: 55, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 662, column: 55)
!6128 = !DILocation(line: 663, column: 3, scope: !6127)
!6129 = !DILocation(line: 664, column: 3, scope: !6127)
!6130 = !DILocation(line: 667, column: 24, scope: !6103)
!6131 = !DILocation(line: 667, column: 9, scope: !6103)
!6132 = !DILocation(line: 667, column: 7, scope: !6103)
!6133 = !DILocation(line: 668, column: 7, scope: !6103)
!6134 = !DILocation(line: 669, column: 18, scope: !6103)
!6135 = !DILocation(line: 669, column: 31, scope: !6103)
!6136 = !DILocation(line: 669, column: 2, scope: !6103)
!6137 = !DILocation(line: 671, column: 10, scope: !6103)
!6138 = !DILocation(line: 671, column: 2, scope: !6103)
!6139 = !DILocation(line: 673, column: 3, scope: !6140)
!6140 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 671, column: 16)
!6141 = !DILocation(line: 673, column: 3, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !6143, file: !3, line: 673, column: 3)
!6143 = distinct !DILexicalBlock(scope: !6140, file: !3, line: 673, column: 3)
!6144 = !DILocation(line: 673, column: 3, scope: !6143)
!6145 = !DILocation(line: 674, column: 25, scope: !6140)
!6146 = !DILocation(line: 674, column: 10, scope: !6140)
!6147 = !DILocation(line: 674, column: 8, scope: !6140)
!6148 = !DILocation(line: 675, column: 8, scope: !6140)
!6149 = !DILocation(line: 676, column: 8, scope: !6140)
!6150 = !DILocation(line: 677, column: 19, scope: !6140)
!6151 = !DILocation(line: 677, column: 32, scope: !6140)
!6152 = !DILocation(line: 677, column: 3, scope: !6140)
!6153 = !DILocation(line: 678, column: 3, scope: !6140)
!6154 = !DILocation(line: 680, column: 3, scope: !6140)
!6155 = !DILocation(line: 680, column: 3, scope: !6156)
!6156 = distinct !DILexicalBlock(scope: !6157, file: !3, line: 680, column: 3)
!6157 = distinct !DILexicalBlock(scope: !6140, file: !3, line: 680, column: 3)
!6158 = !DILocation(line: 680, column: 3, scope: !6157)
!6159 = !DILocation(line: 681, column: 25, scope: !6140)
!6160 = !DILocation(line: 681, column: 10, scope: !6140)
!6161 = !DILocation(line: 681, column: 8, scope: !6140)
!6162 = !DILocation(line: 682, column: 8, scope: !6140)
!6163 = !DILocation(line: 683, column: 19, scope: !6140)
!6164 = !DILocation(line: 683, column: 32, scope: !6140)
!6165 = !DILocation(line: 683, column: 3, scope: !6140)
!6166 = !DILocation(line: 684, column: 3, scope: !6140)
!6167 = !DILocation(line: 687, column: 2, scope: !6103)
!6168 = !DILocation(line: 688, column: 1, scope: !6103)
!6169 = distinct !DISubprogram(name: "ds3000_i2c_gate_ctrl", scope: !3, file: !3, line: 247, type: !4221, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!6170 = !DILocalVariable(name: "fe", arg: 1, scope: !6169, file: !3, line: 247, type: !432)
!6171 = !DILocation(line: 247, column: 54, scope: !6169)
!6172 = !DILocalVariable(name: "enable", arg: 2, scope: !6169, file: !3, line: 247, type: !319)
!6173 = !DILocation(line: 247, column: 62, scope: !6169)
!6174 = !DILocalVariable(name: "state", scope: !6169, file: !3, line: 249, type: !4472)
!6175 = !DILocation(line: 249, column: 23, scope: !6169)
!6176 = !DILocation(line: 249, column: 31, scope: !6169)
!6177 = !DILocation(line: 249, column: 35, scope: !6169)
!6178 = !DILocation(line: 251, column: 6, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !6169, file: !3, line: 251, column: 6)
!6180 = !DILocation(line: 251, column: 6, scope: !6169)
!6181 = !DILocation(line: 252, column: 19, scope: !6179)
!6182 = !DILocation(line: 252, column: 3, scope: !6179)
!6183 = !DILocation(line: 254, column: 19, scope: !6179)
!6184 = !DILocation(line: 254, column: 3, scope: !6179)
!6185 = !DILocation(line: 256, column: 2, scope: !6169)
!6186 = distinct !DISubprogram(name: "ds3000_firmware_ondemand", scope: !3, file: !3, line: 333, type: !4128, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!6187 = !DILocalVariable(name: "fe", arg: 1, scope: !6186, file: !3, line: 333, type: !432)
!6188 = !DILocation(line: 333, column: 58, scope: !6186)
!6189 = !DILocalVariable(name: "state", scope: !6186, file: !3, line: 335, type: !4472)
!6190 = !DILocation(line: 335, column: 23, scope: !6186)
!6191 = !DILocation(line: 335, column: 31, scope: !6186)
!6192 = !DILocation(line: 335, column: 35, scope: !6186)
!6193 = !DILocalVariable(name: "fw", scope: !6186, file: !3, line: 336, type: !6194)
!6194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6195, size: 64)
!6195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6196)
!6196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !6197, line: 12, size: 192, elements: !6198)
!6197 = !DIFile(filename: "./include/linux/firmware.h", directory: "/home/lizy2001/genbc/linux")
!6198 = !{!6199, !6200, !6201}
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6196, file: !6197, line: 13, baseType: !572, size: 64)
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6196, file: !6197, line: 14, baseType: !4135, size: 64, offset: 64)
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !6196, file: !6197, line: 17, baseType: !293, size: 64, offset: 128)
!6202 = !DILocation(line: 336, column: 25, scope: !6186)
!6203 = !DILocalVariable(name: "ret", scope: !6186, file: !3, line: 337, type: !319)
!6204 = !DILocation(line: 337, column: 6, scope: !6186)
!6205 = !DILocation(line: 339, column: 2, scope: !6186)
!6206 = !DILocation(line: 339, column: 2, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6208, file: !3, line: 339, column: 2)
!6208 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 339, column: 2)
!6209 = !DILocation(line: 339, column: 2, scope: !6208)
!6210 = !DILocation(line: 341, column: 23, scope: !6186)
!6211 = !DILocation(line: 341, column: 8, scope: !6186)
!6212 = !DILocation(line: 341, column: 6, scope: !6186)
!6213 = !DILocation(line: 342, column: 6, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 342, column: 6)
!6215 = !DILocation(line: 342, column: 10, scope: !6214)
!6216 = !DILocation(line: 342, column: 6, scope: !6186)
!6217 = !DILocation(line: 343, column: 10, scope: !6214)
!6218 = !DILocation(line: 343, column: 3, scope: !6214)
!6219 = !DILocation(line: 347, column: 2, scope: !6186)
!6220 = !DILocation(line: 350, column: 5, scope: !6186)
!6221 = !DILocation(line: 350, column: 12, scope: !6186)
!6222 = !DILocation(line: 350, column: 17, scope: !6186)
!6223 = !DILocation(line: 350, column: 21, scope: !6186)
!6224 = !DILocation(line: 349, column: 8, scope: !6186)
!6225 = !DILocation(line: 349, column: 6, scope: !6186)
!6226 = !DILocation(line: 351, column: 2, scope: !6186)
!6227 = !DILocation(line: 352, column: 6, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 352, column: 6)
!6229 = !DILocation(line: 352, column: 6, scope: !6186)
!6230 = !DILocation(line: 353, column: 3, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 352, column: 11)
!6232 = !DILocation(line: 355, column: 10, scope: !6231)
!6233 = !DILocation(line: 355, column: 3, scope: !6231)
!6234 = !DILocation(line: 358, column: 29, scope: !6186)
!6235 = !DILocation(line: 358, column: 33, scope: !6186)
!6236 = !DILocation(line: 358, column: 8, scope: !6186)
!6237 = !DILocation(line: 358, column: 6, scope: !6186)
!6238 = !DILocation(line: 359, column: 6, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 359, column: 6)
!6240 = !DILocation(line: 359, column: 6, scope: !6186)
!6241 = !DILocation(line: 360, column: 3, scope: !6239)
!6242 = !DILocation(line: 362, column: 19, scope: !6186)
!6243 = !DILocation(line: 362, column: 2, scope: !6186)
!6244 = !DILocation(line: 364, column: 2, scope: !6186)
!6245 = !DILocation(line: 364, column: 2, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6247, file: !3, line: 364, column: 2)
!6247 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 364, column: 2)
!6248 = !DILocation(line: 364, column: 2, scope: !6247)
!6249 = !DILocation(line: 367, column: 9, scope: !6186)
!6250 = !DILocation(line: 367, column: 2, scope: !6186)
!6251 = !DILocation(line: 368, column: 1, scope: !6186)
!6252 = distinct !DISubprogram(name: "ds3000_load_firmware", scope: !3, file: !3, line: 370, type: !6253, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!6253 = !DISubroutineType(types: !6254)
!6254 = !{!319, !432, !6194}
!6255 = !DILocalVariable(name: "fe", arg: 1, scope: !6252, file: !3, line: 370, type: !432)
!6256 = !DILocation(line: 370, column: 54, scope: !6252)
!6257 = !DILocalVariable(name: "fw", arg: 2, scope: !6252, file: !3, line: 371, type: !6194)
!6258 = !DILocation(line: 371, column: 29, scope: !6252)
!6259 = !DILocalVariable(name: "state", scope: !6252, file: !3, line: 373, type: !4472)
!6260 = !DILocation(line: 373, column: 23, scope: !6252)
!6261 = !DILocation(line: 373, column: 31, scope: !6252)
!6262 = !DILocation(line: 373, column: 35, scope: !6252)
!6263 = !DILocalVariable(name: "ret", scope: !6252, file: !3, line: 374, type: !319)
!6264 = !DILocation(line: 374, column: 6, scope: !6252)
!6265 = !DILocation(line: 376, column: 2, scope: !6252)
!6266 = !DILocation(line: 376, column: 2, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6268, file: !3, line: 376, column: 2)
!6268 = distinct !DILexicalBlock(scope: !6252, file: !3, line: 376, column: 2)
!6269 = !DILocation(line: 376, column: 2, scope: !6268)
!6270 = !DILocation(line: 377, column: 2, scope: !6252)
!6271 = !DILocation(line: 377, column: 2, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !6273, file: !3, line: 377, column: 2)
!6273 = distinct !DILexicalBlock(scope: !6252, file: !3, line: 377, column: 2)
!6274 = !DILocation(line: 377, column: 2, scope: !6273)
!6275 = !DILocation(line: 385, column: 18, scope: !6252)
!6276 = !DILocation(line: 385, column: 2, scope: !6252)
!6277 = !DILocation(line: 387, column: 23, scope: !6252)
!6278 = !DILocation(line: 387, column: 36, scope: !6252)
!6279 = !DILocation(line: 387, column: 40, scope: !6252)
!6280 = !DILocation(line: 387, column: 46, scope: !6252)
!6281 = !DILocation(line: 387, column: 50, scope: !6252)
!6282 = !DILocation(line: 387, column: 8, scope: !6252)
!6283 = !DILocation(line: 387, column: 6, scope: !6252)
!6284 = !DILocation(line: 388, column: 18, scope: !6252)
!6285 = !DILocation(line: 388, column: 2, scope: !6252)
!6286 = !DILocation(line: 390, column: 9, scope: !6252)
!6287 = !DILocation(line: 390, column: 2, scope: !6252)
!6288 = distinct !DISubprogram(name: "ds3000_writeFW", scope: !3, file: !3, line: 260, type: !6289, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!6289 = !DISubroutineType(types: !6290)
!6290 = !{!319, !4472, !319, !4135, !332}
!6291 = !DILocation(line: 445, column: 72, scope: !4542, inlinedAt: !6292)
!6292 = distinct !DILocation(line: 552, column: 10, scope: !4547, inlinedAt: !6293)
!6293 = distinct !DILocation(line: 267, column: 8, scope: !6288)
!6294 = !DILocation(line: 446, column: 9, scope: !4542, inlinedAt: !6292)
!6295 = !DILocation(line: 446, column: 23, scope: !4542, inlinedAt: !6292)
!6296 = !DILocation(line: 448, column: 8, scope: !4542, inlinedAt: !6292)
!6297 = !DILocation(line: 318, column: 67, scope: !4558, inlinedAt: !6298)
!6298 = distinct !DILocation(line: 553, column: 20, scope: !4547, inlinedAt: !6293)
!6299 = !DILocation(line: 346, column: 58, scope: !4564, inlinedAt: !6300)
!6300 = distinct !DILocation(line: 547, column: 11, scope: !4547, inlinedAt: !6293)
!6301 = !DILocation(line: 472, column: 28, scope: !4570, inlinedAt: !6302)
!6302 = distinct !DILocation(line: 481, column: 9, scope: !4575, inlinedAt: !6303)
!6303 = distinct !DILocation(line: 545, column: 11, scope: !4577, inlinedAt: !6293)
!6304 = !DILocation(line: 472, column: 40, scope: !4570, inlinedAt: !6302)
!6305 = !DILocation(line: 472, column: 60, scope: !4570, inlinedAt: !6302)
!6306 = !DILocation(line: 478, column: 51, scope: !4575, inlinedAt: !6303)
!6307 = !DILocation(line: 478, column: 63, scope: !4575, inlinedAt: !6303)
!6308 = !DILocation(line: 480, column: 15, scope: !4575, inlinedAt: !6303)
!6309 = !DILocation(line: 538, column: 45, scope: !4549, inlinedAt: !6293)
!6310 = !DILocation(line: 538, column: 57, scope: !4549, inlinedAt: !6293)
!6311 = !DILocation(line: 542, column: 16, scope: !4547, inlinedAt: !6293)
!6312 = !DILocalVariable(name: "state", arg: 1, scope: !6288, file: !3, line: 260, type: !4472)
!6313 = !DILocation(line: 260, column: 48, scope: !6288)
!6314 = !DILocalVariable(name: "reg", arg: 2, scope: !6288, file: !3, line: 260, type: !319)
!6315 = !DILocation(line: 260, column: 59, scope: !6288)
!6316 = !DILocalVariable(name: "data", arg: 3, scope: !6288, file: !3, line: 261, type: !4135)
!6317 = !DILocation(line: 261, column: 15, scope: !6288)
!6318 = !DILocalVariable(name: "len", arg: 4, scope: !6288, file: !3, line: 261, type: !332)
!6319 = !DILocation(line: 261, column: 25, scope: !6288)
!6320 = !DILocalVariable(name: "i", scope: !6288, file: !3, line: 263, type: !319)
!6321 = !DILocation(line: 263, column: 6, scope: !6288)
!6322 = !DILocalVariable(name: "ret", scope: !6288, file: !3, line: 263, type: !319)
!6323 = !DILocation(line: 263, column: 9, scope: !6288)
!6324 = !DILocalVariable(name: "msg", scope: !6288, file: !3, line: 264, type: !4361)
!6325 = !DILocation(line: 264, column: 17, scope: !6288)
!6326 = !DILocalVariable(name: "buf", scope: !6288, file: !3, line: 265, type: !4277)
!6327 = !DILocation(line: 265, column: 6, scope: !6288)
!6328 = !DILocation(line: 540, column: 27, scope: !4548, inlinedAt: !6293)
!6329 = !DILocation(line: 540, column: 6, scope: !4548, inlinedAt: !6293)
!6330 = !DILocation(line: 540, column: 6, scope: !4549, inlinedAt: !6293)
!6331 = !DILocation(line: 544, column: 7, scope: !4577, inlinedAt: !6293)
!6332 = !DILocation(line: 544, column: 12, scope: !4577, inlinedAt: !6293)
!6333 = !DILocation(line: 544, column: 7, scope: !4547, inlinedAt: !6293)
!6334 = !DILocation(line: 545, column: 25, scope: !4577, inlinedAt: !6293)
!6335 = !DILocation(line: 545, column: 31, scope: !4577, inlinedAt: !6293)
!6336 = !DILocation(line: 480, column: 33, scope: !4575, inlinedAt: !6303)
!6337 = !DILocation(line: 480, column: 23, scope: !4575, inlinedAt: !6303)
!6338 = !DILocation(line: 481, column: 29, scope: !4575, inlinedAt: !6303)
!6339 = !DILocation(line: 481, column: 35, scope: !4575, inlinedAt: !6303)
!6340 = !DILocation(line: 481, column: 42, scope: !4575, inlinedAt: !6303)
!6341 = !DILocation(line: 474, column: 23, scope: !4570, inlinedAt: !6302)
!6342 = !DILocation(line: 474, column: 29, scope: !4570, inlinedAt: !6302)
!6343 = !DILocation(line: 474, column: 36, scope: !4570, inlinedAt: !6302)
!6344 = !DILocation(line: 474, column: 9, scope: !4570, inlinedAt: !6302)
!6345 = !DILocation(line: 545, column: 4, scope: !4577, inlinedAt: !6293)
!6346 = !DILocation(line: 547, column: 25, scope: !4547, inlinedAt: !6293)
!6347 = !DILocation(line: 348, column: 7, scope: !4621, inlinedAt: !6300)
!6348 = !DILocation(line: 348, column: 6, scope: !4564, inlinedAt: !6300)
!6349 = !DILocation(line: 349, column: 3, scope: !4621, inlinedAt: !6300)
!6350 = !DILocation(line: 351, column: 6, scope: !4625, inlinedAt: !6300)
!6351 = !DILocation(line: 351, column: 11, scope: !4625, inlinedAt: !6300)
!6352 = !DILocation(line: 351, column: 6, scope: !4564, inlinedAt: !6300)
!6353 = !DILocation(line: 352, column: 3, scope: !4625, inlinedAt: !6300)
!6354 = !DILocation(line: 354, column: 32, scope: !4630, inlinedAt: !6300)
!6355 = !DILocation(line: 354, column: 37, scope: !4630, inlinedAt: !6300)
!6356 = !DILocation(line: 354, column: 42, scope: !4630, inlinedAt: !6300)
!6357 = !DILocation(line: 354, column: 45, scope: !4630, inlinedAt: !6300)
!6358 = !DILocation(line: 354, column: 50, scope: !4630, inlinedAt: !6300)
!6359 = !DILocation(line: 354, column: 6, scope: !4564, inlinedAt: !6300)
!6360 = !DILocation(line: 355, column: 3, scope: !4630, inlinedAt: !6300)
!6361 = !DILocation(line: 356, column: 32, scope: !4638, inlinedAt: !6300)
!6362 = !DILocation(line: 356, column: 37, scope: !4638, inlinedAt: !6300)
!6363 = !DILocation(line: 356, column: 43, scope: !4638, inlinedAt: !6300)
!6364 = !DILocation(line: 356, column: 46, scope: !4638, inlinedAt: !6300)
!6365 = !DILocation(line: 356, column: 51, scope: !4638, inlinedAt: !6300)
!6366 = !DILocation(line: 356, column: 6, scope: !4564, inlinedAt: !6300)
!6367 = !DILocation(line: 357, column: 3, scope: !4638, inlinedAt: !6300)
!6368 = !DILocation(line: 358, column: 6, scope: !4646, inlinedAt: !6300)
!6369 = !DILocation(line: 358, column: 11, scope: !4646, inlinedAt: !6300)
!6370 = !DILocation(line: 358, column: 6, scope: !4564, inlinedAt: !6300)
!6371 = !DILocation(line: 358, column: 26, scope: !4646, inlinedAt: !6300)
!6372 = !DILocation(line: 359, column: 6, scope: !4651, inlinedAt: !6300)
!6373 = !DILocation(line: 359, column: 11, scope: !4651, inlinedAt: !6300)
!6374 = !DILocation(line: 359, column: 6, scope: !4564, inlinedAt: !6300)
!6375 = !DILocation(line: 359, column: 26, scope: !4651, inlinedAt: !6300)
!6376 = !DILocation(line: 360, column: 6, scope: !4656, inlinedAt: !6300)
!6377 = !DILocation(line: 360, column: 11, scope: !4656, inlinedAt: !6300)
!6378 = !DILocation(line: 360, column: 6, scope: !4564, inlinedAt: !6300)
!6379 = !DILocation(line: 360, column: 26, scope: !4656, inlinedAt: !6300)
!6380 = !DILocation(line: 361, column: 6, scope: !4661, inlinedAt: !6300)
!6381 = !DILocation(line: 361, column: 11, scope: !4661, inlinedAt: !6300)
!6382 = !DILocation(line: 361, column: 6, scope: !4564, inlinedAt: !6300)
!6383 = !DILocation(line: 361, column: 26, scope: !4661, inlinedAt: !6300)
!6384 = !DILocation(line: 362, column: 6, scope: !4666, inlinedAt: !6300)
!6385 = !DILocation(line: 362, column: 11, scope: !4666, inlinedAt: !6300)
!6386 = !DILocation(line: 362, column: 6, scope: !4564, inlinedAt: !6300)
!6387 = !DILocation(line: 362, column: 26, scope: !4666, inlinedAt: !6300)
!6388 = !DILocation(line: 363, column: 6, scope: !4671, inlinedAt: !6300)
!6389 = !DILocation(line: 363, column: 11, scope: !4671, inlinedAt: !6300)
!6390 = !DILocation(line: 363, column: 6, scope: !4564, inlinedAt: !6300)
!6391 = !DILocation(line: 363, column: 26, scope: !4671, inlinedAt: !6300)
!6392 = !DILocation(line: 364, column: 6, scope: !4676, inlinedAt: !6300)
!6393 = !DILocation(line: 364, column: 11, scope: !4676, inlinedAt: !6300)
!6394 = !DILocation(line: 364, column: 6, scope: !4564, inlinedAt: !6300)
!6395 = !DILocation(line: 364, column: 26, scope: !4676, inlinedAt: !6300)
!6396 = !DILocation(line: 365, column: 6, scope: !4681, inlinedAt: !6300)
!6397 = !DILocation(line: 365, column: 11, scope: !4681, inlinedAt: !6300)
!6398 = !DILocation(line: 365, column: 6, scope: !4564, inlinedAt: !6300)
!6399 = !DILocation(line: 365, column: 26, scope: !4681, inlinedAt: !6300)
!6400 = !DILocation(line: 366, column: 6, scope: !4686, inlinedAt: !6300)
!6401 = !DILocation(line: 366, column: 11, scope: !4686, inlinedAt: !6300)
!6402 = !DILocation(line: 366, column: 6, scope: !4564, inlinedAt: !6300)
!6403 = !DILocation(line: 366, column: 26, scope: !4686, inlinedAt: !6300)
!6404 = !DILocation(line: 367, column: 6, scope: !4691, inlinedAt: !6300)
!6405 = !DILocation(line: 367, column: 11, scope: !4691, inlinedAt: !6300)
!6406 = !DILocation(line: 367, column: 6, scope: !4564, inlinedAt: !6300)
!6407 = !DILocation(line: 367, column: 26, scope: !4691, inlinedAt: !6300)
!6408 = !DILocation(line: 368, column: 6, scope: !4696, inlinedAt: !6300)
!6409 = !DILocation(line: 368, column: 11, scope: !4696, inlinedAt: !6300)
!6410 = !DILocation(line: 368, column: 6, scope: !4564, inlinedAt: !6300)
!6411 = !DILocation(line: 368, column: 26, scope: !4696, inlinedAt: !6300)
!6412 = !DILocation(line: 369, column: 6, scope: !4701, inlinedAt: !6300)
!6413 = !DILocation(line: 369, column: 11, scope: !4701, inlinedAt: !6300)
!6414 = !DILocation(line: 369, column: 6, scope: !4564, inlinedAt: !6300)
!6415 = !DILocation(line: 369, column: 26, scope: !4701, inlinedAt: !6300)
!6416 = !DILocation(line: 370, column: 6, scope: !4706, inlinedAt: !6300)
!6417 = !DILocation(line: 370, column: 11, scope: !4706, inlinedAt: !6300)
!6418 = !DILocation(line: 370, column: 6, scope: !4564, inlinedAt: !6300)
!6419 = !DILocation(line: 370, column: 26, scope: !4706, inlinedAt: !6300)
!6420 = !DILocation(line: 371, column: 6, scope: !4711, inlinedAt: !6300)
!6421 = !DILocation(line: 371, column: 11, scope: !4711, inlinedAt: !6300)
!6422 = !DILocation(line: 371, column: 6, scope: !4564, inlinedAt: !6300)
!6423 = !DILocation(line: 371, column: 26, scope: !4711, inlinedAt: !6300)
!6424 = !DILocation(line: 372, column: 6, scope: !4716, inlinedAt: !6300)
!6425 = !DILocation(line: 372, column: 11, scope: !4716, inlinedAt: !6300)
!6426 = !DILocation(line: 372, column: 6, scope: !4564, inlinedAt: !6300)
!6427 = !DILocation(line: 372, column: 26, scope: !4716, inlinedAt: !6300)
!6428 = !DILocation(line: 373, column: 6, scope: !4721, inlinedAt: !6300)
!6429 = !DILocation(line: 373, column: 11, scope: !4721, inlinedAt: !6300)
!6430 = !DILocation(line: 373, column: 6, scope: !4564, inlinedAt: !6300)
!6431 = !DILocation(line: 373, column: 26, scope: !4721, inlinedAt: !6300)
!6432 = !DILocation(line: 374, column: 6, scope: !4726, inlinedAt: !6300)
!6433 = !DILocation(line: 374, column: 11, scope: !4726, inlinedAt: !6300)
!6434 = !DILocation(line: 374, column: 6, scope: !4564, inlinedAt: !6300)
!6435 = !DILocation(line: 374, column: 26, scope: !4726, inlinedAt: !6300)
!6436 = !DILocation(line: 375, column: 6, scope: !4731, inlinedAt: !6300)
!6437 = !DILocation(line: 375, column: 11, scope: !4731, inlinedAt: !6300)
!6438 = !DILocation(line: 375, column: 6, scope: !4564, inlinedAt: !6300)
!6439 = !DILocation(line: 375, column: 27, scope: !4731, inlinedAt: !6300)
!6440 = !DILocation(line: 376, column: 6, scope: !4736, inlinedAt: !6300)
!6441 = !DILocation(line: 376, column: 11, scope: !4736, inlinedAt: !6300)
!6442 = !DILocation(line: 376, column: 6, scope: !4564, inlinedAt: !6300)
!6443 = !DILocation(line: 376, column: 32, scope: !4736, inlinedAt: !6300)
!6444 = !DILocation(line: 377, column: 6, scope: !4741, inlinedAt: !6300)
!6445 = !DILocation(line: 377, column: 11, scope: !4741, inlinedAt: !6300)
!6446 = !DILocation(line: 377, column: 6, scope: !4564, inlinedAt: !6300)
!6447 = !DILocation(line: 377, column: 32, scope: !4741, inlinedAt: !6300)
!6448 = !DILocation(line: 378, column: 6, scope: !4746, inlinedAt: !6300)
!6449 = !DILocation(line: 378, column: 11, scope: !4746, inlinedAt: !6300)
!6450 = !DILocation(line: 378, column: 6, scope: !4564, inlinedAt: !6300)
!6451 = !DILocation(line: 378, column: 32, scope: !4746, inlinedAt: !6300)
!6452 = !DILocation(line: 379, column: 6, scope: !4751, inlinedAt: !6300)
!6453 = !DILocation(line: 379, column: 11, scope: !4751, inlinedAt: !6300)
!6454 = !DILocation(line: 379, column: 6, scope: !4564, inlinedAt: !6300)
!6455 = !DILocation(line: 379, column: 33, scope: !4751, inlinedAt: !6300)
!6456 = !DILocation(line: 380, column: 6, scope: !4756, inlinedAt: !6300)
!6457 = !DILocation(line: 380, column: 11, scope: !4756, inlinedAt: !6300)
!6458 = !DILocation(line: 380, column: 6, scope: !4564, inlinedAt: !6300)
!6459 = !DILocation(line: 380, column: 33, scope: !4756, inlinedAt: !6300)
!6460 = !DILocation(line: 381, column: 6, scope: !4761, inlinedAt: !6300)
!6461 = !DILocation(line: 381, column: 11, scope: !4761, inlinedAt: !6300)
!6462 = !DILocation(line: 381, column: 6, scope: !4564, inlinedAt: !6300)
!6463 = !DILocation(line: 381, column: 33, scope: !4761, inlinedAt: !6300)
!6464 = !DILocation(line: 382, column: 2, scope: !4766, inlinedAt: !6300)
!6465 = !DILocation(line: 382, column: 2, scope: !4770, inlinedAt: !6300)
!6466 = !DILocation(line: 382, column: 2, scope: !4771, inlinedAt: !6300)
!6467 = !DILocation(line: 386, column: 1, scope: !4564, inlinedAt: !6300)
!6468 = !DILocation(line: 547, column: 9, scope: !4547, inlinedAt: !6293)
!6469 = !DILocation(line: 549, column: 8, scope: !4777, inlinedAt: !6293)
!6470 = !DILocation(line: 549, column: 7, scope: !4547, inlinedAt: !6293)
!6471 = !DILocation(line: 550, column: 4, scope: !4777, inlinedAt: !6293)
!6472 = !DILocation(line: 553, column: 33, scope: !4547, inlinedAt: !6293)
!6473 = !DILocation(line: 325, column: 6, scope: !4782, inlinedAt: !6298)
!6474 = !DILocation(line: 325, column: 6, scope: !4558, inlinedAt: !6298)
!6475 = !DILocation(line: 326, column: 3, scope: !4782, inlinedAt: !6298)
!6476 = !DILocation(line: 332, column: 9, scope: !4558, inlinedAt: !6298)
!6477 = !DILocation(line: 332, column: 15, scope: !4558, inlinedAt: !6298)
!6478 = !DILocation(line: 332, column: 2, scope: !4558, inlinedAt: !6298)
!6479 = !DILocation(line: 336, column: 1, scope: !4558, inlinedAt: !6298)
!6480 = !DILocation(line: 553, column: 5, scope: !4547, inlinedAt: !6293)
!6481 = !DILocation(line: 553, column: 41, scope: !4547, inlinedAt: !6293)
!6482 = !DILocation(line: 554, column: 5, scope: !4547, inlinedAt: !6293)
!6483 = !DILocation(line: 554, column: 12, scope: !4547, inlinedAt: !6293)
!6484 = !DILocation(line: 448, column: 31, scope: !4542, inlinedAt: !6292)
!6485 = !DILocation(line: 448, column: 34, scope: !4542, inlinedAt: !6292)
!6486 = !DILocation(line: 448, column: 14, scope: !4542, inlinedAt: !6292)
!6487 = !DILocation(line: 450, column: 22, scope: !4542, inlinedAt: !6292)
!6488 = !DILocation(line: 450, column: 25, scope: !4542, inlinedAt: !6292)
!6489 = !DILocation(line: 450, column: 30, scope: !4542, inlinedAt: !6292)
!6490 = !DILocation(line: 450, column: 36, scope: !4542, inlinedAt: !6292)
!6491 = !DILocation(line: 450, column: 8, scope: !4542, inlinedAt: !6292)
!6492 = !DILocation(line: 450, column: 6, scope: !4542, inlinedAt: !6292)
!6493 = !DILocation(line: 451, column: 9, scope: !4542, inlinedAt: !6292)
!6494 = !DILocation(line: 552, column: 3, scope: !4547, inlinedAt: !6293)
!6495 = !DILocation(line: 557, column: 19, scope: !4549, inlinedAt: !6293)
!6496 = !DILocation(line: 557, column: 25, scope: !4549, inlinedAt: !6293)
!6497 = !DILocation(line: 557, column: 9, scope: !4549, inlinedAt: !6293)
!6498 = !DILocation(line: 557, column: 2, scope: !4549, inlinedAt: !6293)
!6499 = !DILocation(line: 558, column: 1, scope: !4549, inlinedAt: !6293)
!6500 = !DILocation(line: 267, column: 6, scope: !6288)
!6501 = !DILocation(line: 268, column: 7, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6288, file: !3, line: 268, column: 6)
!6503 = !DILocation(line: 268, column: 6, scope: !6288)
!6504 = !DILocation(line: 269, column: 3, scope: !6502)
!6505 = !DILocation(line: 271, column: 11, scope: !6288)
!6506 = !DILocation(line: 271, column: 4, scope: !6288)
!6507 = !DILocation(line: 271, column: 9, scope: !6288)
!6508 = !DILocation(line: 273, column: 13, scope: !6288)
!6509 = !DILocation(line: 273, column: 20, scope: !6288)
!6510 = !DILocation(line: 273, column: 28, scope: !6288)
!6511 = !DILocation(line: 273, column: 6, scope: !6288)
!6512 = !DILocation(line: 273, column: 11, scope: !6288)
!6513 = !DILocation(line: 274, column: 6, scope: !6288)
!6514 = !DILocation(line: 274, column: 12, scope: !6288)
!6515 = !DILocation(line: 275, column: 12, scope: !6288)
!6516 = !DILocation(line: 275, column: 6, scope: !6288)
!6517 = !DILocation(line: 275, column: 10, scope: !6288)
!6518 = !DILocation(line: 276, column: 6, scope: !6288)
!6519 = !DILocation(line: 276, column: 10, scope: !6288)
!6520 = !DILocation(line: 278, column: 9, scope: !6521)
!6521 = distinct !DILexicalBlock(scope: !6288, file: !3, line: 278, column: 2)
!6522 = !DILocation(line: 278, column: 7, scope: !6521)
!6523 = !DILocation(line: 278, column: 14, scope: !6524)
!6524 = distinct !DILexicalBlock(scope: !6521, file: !3, line: 278, column: 2)
!6525 = !DILocation(line: 278, column: 18, scope: !6524)
!6526 = !DILocation(line: 278, column: 16, scope: !6524)
!6527 = !DILocation(line: 278, column: 2, scope: !6521)
!6528 = !DILocation(line: 279, column: 10, scope: !6529)
!6529 = distinct !DILexicalBlock(scope: !6524, file: !3, line: 278, column: 32)
!6530 = !DILocation(line: 279, column: 14, scope: !6529)
!6531 = !DILocation(line: 279, column: 19, scope: !6529)
!6532 = !DILocation(line: 279, column: 26, scope: !6529)
!6533 = !DILocation(line: 279, column: 24, scope: !6529)
!6534 = !DILocation(line: 279, column: 3, scope: !6529)
!6535 = !DILocation(line: 281, column: 3, scope: !6529)
!6536 = !DILocation(line: 281, column: 3, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6538, file: !3, line: 281, column: 3)
!6538 = distinct !DILexicalBlock(scope: !6529, file: !3, line: 281, column: 3)
!6539 = !DILocation(line: 281, column: 3, scope: !6538)
!6540 = !DILocation(line: 283, column: 22, scope: !6529)
!6541 = !DILocation(line: 283, column: 29, scope: !6529)
!6542 = !DILocation(line: 283, column: 9, scope: !6529)
!6543 = !DILocation(line: 283, column: 7, scope: !6529)
!6544 = !DILocation(line: 284, column: 7, scope: !6545)
!6545 = distinct !DILexicalBlock(scope: !6529, file: !3, line: 284, column: 7)
!6546 = !DILocation(line: 284, column: 11, scope: !6545)
!6547 = !DILocation(line: 284, column: 7, scope: !6529)
!6548 = !DILocation(line: 286, column: 21, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6545, file: !3, line: 284, column: 17)
!6550 = !DILocation(line: 286, column: 26, scope: !6549)
!6551 = !DILocation(line: 285, column: 4, scope: !6549)
!6552 = !DILocation(line: 287, column: 8, scope: !6549)
!6553 = !DILocation(line: 288, column: 4, scope: !6549)
!6554 = !DILocation(line: 290, column: 2, scope: !6529)
!6555 = !DILocation(line: 278, column: 25, scope: !6524)
!6556 = !DILocation(line: 278, column: 2, scope: !6524)
!6557 = distinct !{!6557, !6527, !6558}
!6558 = !DILocation(line: 290, column: 2, scope: !6521)
!6559 = !DILocation(line: 291, column: 6, scope: !6288)
!6560 = !DILocation(line: 291, column: 2, scope: !6288)
!6561 = !DILabel(scope: !6288, name: "error", file: !3, line: 293)
!6562 = !DILocation(line: 293, column: 1, scope: !6288)
!6563 = !DILocation(line: 294, column: 8, scope: !6288)
!6564 = !DILocation(line: 294, column: 2, scope: !6288)
!6565 = !DILocation(line: 296, column: 9, scope: !6288)
!6566 = !DILocation(line: 296, column: 2, scope: !6288)
!6567 = !DILocation(line: 297, column: 1, scope: !6288)
!6568 = distinct !DISubprogram(name: "ds3000_set_carrier_offset", scope: !3, file: !3, line: 864, type: !6569, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !500)
!6569 = !DISubroutineType(types: !6570)
!6570 = !{!319, !432, !1592}
!6571 = !DILocalVariable(name: "fe", arg: 1, scope: !6568, file: !3, line: 864, type: !432)
!6572 = !DILocation(line: 864, column: 59, scope: !6568)
!6573 = !DILocalVariable(name: "carrier_offset_khz", arg: 2, scope: !6568, file: !3, line: 865, type: !1592)
!6574 = !DILocation(line: 865, column: 10, scope: !6568)
!6575 = !DILocalVariable(name: "state", scope: !6568, file: !3, line: 867, type: !4472)
!6576 = !DILocation(line: 867, column: 23, scope: !6568)
!6577 = !DILocation(line: 867, column: 31, scope: !6568)
!6578 = !DILocation(line: 867, column: 35, scope: !6568)
!6579 = !DILocalVariable(name: "tmp", scope: !6568, file: !3, line: 868, type: !1592)
!6580 = !DILocation(line: 868, column: 6, scope: !6568)
!6581 = !DILocation(line: 870, column: 8, scope: !6568)
!6582 = !DILocation(line: 870, column: 6, scope: !6568)
!6583 = !DILocation(line: 871, column: 6, scope: !6568)
!6584 = !DILocation(line: 872, column: 13, scope: !6568)
!6585 = !DILocation(line: 872, column: 11, scope: !6568)
!6586 = !DILocation(line: 872, column: 17, scope: !6568)
!6587 = !DILocation(line: 872, column: 39, scope: !6568)
!6588 = !DILocation(line: 872, column: 6, scope: !6568)
!6589 = !DILocation(line: 874, column: 6, scope: !6590)
!6590 = distinct !DILexicalBlock(scope: !6568, file: !3, line: 874, column: 6)
!6591 = !DILocation(line: 874, column: 10, scope: !6590)
!6592 = !DILocation(line: 874, column: 6, scope: !6568)
!6593 = !DILocation(line: 875, column: 7, scope: !6590)
!6594 = !DILocation(line: 875, column: 3, scope: !6590)
!6595 = !DILocation(line: 877, column: 18, scope: !6568)
!6596 = !DILocation(line: 877, column: 31, scope: !6568)
!6597 = !DILocation(line: 877, column: 35, scope: !6568)
!6598 = !DILocation(line: 877, column: 2, scope: !6568)
!6599 = !DILocation(line: 878, column: 18, scope: !6568)
!6600 = !DILocation(line: 878, column: 31, scope: !6568)
!6601 = !DILocation(line: 878, column: 35, scope: !6568)
!6602 = !DILocation(line: 878, column: 2, scope: !6568)
!6603 = !DILocation(line: 880, column: 2, scope: !6568)
