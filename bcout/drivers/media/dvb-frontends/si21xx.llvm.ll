; ModuleID = '../bcout/drivers/media/dvb-frontends/si21xx.llvm.bc'
source_filename = "drivers/media/dvb-frontends/si21xx.c"
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
%struct.si21xx_config = type { i8, i32 }
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
%struct.si21xx_state = type { %struct.i2c_adapter*, %struct.si21xx_config*, %struct.dvb_frontend, i8, i32, i32 }

@debug = internal global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [14 x i8] c"\017si21xx: %s\0A\00", align 1
@__func__.si21xx_attach = private unnamed_addr constant [14 x i8] c"si21xx_attach\00", align 1
@si21xx_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"SL SI21XX DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 0, i32 1000000, i32 45000000, i32 500, i32 1710 }, [8 x i8] c"\05\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @si21xx_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @si21xx_init, i32 (%struct.dvb_frontend*)* @si21xx_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* @si21_write, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @si21xx_set_frontend, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* null, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* null, i32 (%struct.dvb_frontend*, i32*)* @si21_read_status, i32 (%struct.dvb_frontend*, i32*)* @si21_read_ber, i32 (%struct.dvb_frontend*, i16*)* @si21_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @si21_read_snr, i32 (%struct.dvb_frontend*, i32*)* @si21_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @si21xx_send_diseqc_msg, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* @si21xx_send_diseqc_burst, i32 (%struct.dvb_frontend*, i32)* @si21xx_set_tone, i32 (%struct.dvb_frontend*, i32)* @si21xx_set_voltage, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !426
@__param_str_debug = internal constant [13 x i8] c"si21xx.debug\00", align 1, !dbg !4326
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !330
@__UNIQUE_ID_debugtype220 = internal constant [26 x i8] c"si21xx.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !396
@__UNIQUE_ID_debug221 = internal constant [64 x i8] c"si21xx.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1, !dbg !401
@__UNIQUE_ID_description222 = internal constant [52 x i8] c"si21xx.description=SL SI21XX DVB Demodulator driver\00", section ".modinfo", align 1, !dbg !406
@__UNIQUE_ID_author223 = internal constant [32 x i8] c"si21xx.author=Igor M. Liplianin\00", section ".modinfo", align 1, !dbg !411
@__UNIQUE_ID_file224 = internal constant [47 x i8] c"si21xx.file=drivers/media/dvb-frontends/si21xx\00", section ".modinfo", align 1, !dbg !416
@__UNIQUE_ID_license225 = internal constant [19 x i8] c"si21xx.license=GPL\00", section ".modinfo", align 1, !dbg !421
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"\017si21xx: %s: readreg error (reg == 0x%02x, ret == %i)\0A\00", align 1
@__func__.si21_readreg = private unnamed_addr constant [13 x i8] c"si21_readreg\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"\017si21xx: %s: writereg error (reg == 0x%02x, data == 0x%02x, ret == %i)\0A\00", align 1
@__func__.si21_writereg = private unnamed_addr constant [14 x i8] c"si21_writereg\00", align 1
@__func__.si21xx_release = private unnamed_addr constant [15 x i8] c"si21xx_release\00", align 1
@__func__.si21xx_init = private unnamed_addr constant [12 x i8] c"si21xx_init\00", align 1
@serit_sp1511lhb_inittab = internal global [148 x i8] c"\01( \03' \E0E\E1\08\FE\01\01(\89\09\04\80\05\01\06\00 \03$\88)\09*\0F,\10-\19.\08/\100\194 5\03E\02FEG\D0H\00I@J\03L\FDO.P.Q\10R\10V\92Y\00Z-[3\\\1F_vb\C0c\C0d\F3e\F3y@j@k\0Al\80m'q\06u`x\00y\B5|\05}\1A\87U\88r\8F\08\90\E0\94@\A0?\A1\C0\A4\CC\A5f\A6f\A7{\A8{\A9{\AA\9A\ED\04\AD\00\AE\03\CC\AB\01\08\FF\FF", align 16, !dbg !4321
@.str.4 = private unnamed_addr constant [30 x i8] c"\017si21xx:  %s : TS Set Error\0A\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"\017si21xx: %s: writereg error (reg1 == 0x%02x, data == 0x%02x, ret == %i)\0A\00", align 1
@__func__.si21_writeregs = private unnamed_addr constant [15 x i8] c"si21_writeregs\00", align 1
@__func__.si21xx_sleep = private unnamed_addr constant [13 x i8] c"si21xx_sleep\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"\017si21xx: %s: readreg error (ret == %i)\0A\00", align 1
@__func__.si21_readregs = private unnamed_addr constant [14 x i8] c"si21_readregs\00", align 1
@__const.si21xx_set_frontend.afs = private unnamed_addr constant [10 x i32] [i32 200, i32 192, i32 193, i32 194, i32 195, i32 196, i32 204, i32 205, i32 206, i32 207], align 16
@.str.7 = private unnamed_addr constant [32 x i8] c"\017si21xx: %s : FE_SET_FRONTEND\0A\00", align 1
@__func__.si21xx_set_frontend = private unnamed_addr constant [20 x i8] c"si21xx_set_frontend\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"\017si21xx: %s: unsupported delivery system selected (%d)\0A\00", align 1
@__const.si21xx_setacquire.coderates = private unnamed_addr constant [10 x i8] c"\00\01\02\04\00\08\10 \00?", align 1
@__func__.si21xx_setacquire = private unnamed_addr constant [18 x i8] c"si21xx_setacquire\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"\017si21xx: %s : srate = %i\0A\00", align 1
@__func__.si21xx_set_symbolrate = private unnamed_addr constant [22 x i8] c"si21xx_set_symbolrate\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"\017si21xx: %s : FE_READ_STATUS : VSTATUS: 0x%02x\0A\00", align 1
@__func__.si21_read_status = private unnamed_addr constant [17 x i8] c"si21_read_status\00", align 1
@__func__.si21_read_ber = private unnamed_addr constant [14 x i8] c"si21_read_ber\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"\017si21xx: %s : AGCPWR: 0x%02x%02x, signal=0x%04x\0A\00", align 1
@__func__.si21_read_signal_strength = private unnamed_addr constant [26 x i8] c"si21_read_signal_strength\00", align 1
@__func__.si21_read_snr = private unnamed_addr constant [14 x i8] c"si21_read_snr\00", align 1
@__func__.si21_read_ucblocks = private unnamed_addr constant [19 x i8] c"si21_read_ucblocks\00", align 1
@__func__.si21xx_send_diseqc_msg = private unnamed_addr constant [23 x i8] c"si21xx_send_diseqc_msg\00", align 1
@__func__.si21xx_send_diseqc_burst = private unnamed_addr constant [25 x i8] c"si21xx_send_diseqc_burst\00", align 1
@jiffies = external dso_local global i64, align 8
@__func__.si21xx_wait_diseqc_idle = private unnamed_addr constant [24 x i8] c"si21xx_wait_diseqc_idle\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"\017si21xx: %s: timeout!!\0A\00", align 1
@__func__.si21xx_set_tone = private unnamed_addr constant [16 x i8] c"si21xx_set_tone\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"\017si21xx: %s: %s\0A\00", align 1
@__func__.si21xx_set_voltage = private unnamed_addr constant [19 x i8] c"si21xx_set_voltage\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"SEC_VOLTAGE_13\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"SEC_VOLTAGE_18\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_author223, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__UNIQUE_ID_file224, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license225, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @si21xx_attach(%struct.si21xx_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4336 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.si21xx_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.si21xx_state*, align 8
  %id = alloca i32, align 4
  store %struct.si21xx_config* %config, %struct.si21xx_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.si21xx_config** %config.addr, metadata !4468, metadata !DIExpression()), !dbg !4469
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4470, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state, metadata !4472, metadata !DIExpression()), !dbg !4482
  store %struct.si21xx_state* null, %struct.si21xx_state** %state, align 8, !dbg !4482
  call void @llvm.dbg.declare(metadata i32* %id, metadata !4483, metadata !DIExpression()), !dbg !4484
  br label %do.body, !dbg !4485

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !4486
  %tobool = icmp ne i32 %0, 0, !dbg !4486
  br i1 %tobool, label %if.then, label %if.end, !dbg !4489

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.si21xx_attach, i64 0, i64 0)) #8, !dbg !4486
  br label %if.end, !dbg !4486

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4489

do.end:                                           ; preds = %if.end
  %call1 = call i8* @kzalloc(i64 1312, i32 3264) #9, !dbg !4490
  %1 = bitcast i8* %call1 to %struct.si21xx_state*, !dbg !4490
  store %struct.si21xx_state* %1, %struct.si21xx_state** %state, align 8, !dbg !4491
  %2 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !4492
  %cmp = icmp eq %struct.si21xx_state* %2, null, !dbg !4494
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4495

if.then2:                                         ; preds = %do.end
  br label %error, !dbg !4496

if.end3:                                          ; preds = %do.end
  %3 = load %struct.si21xx_config*, %struct.si21xx_config** %config.addr, align 8, !dbg !4497
  %4 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !4498
  %config4 = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %4, i32 0, i32 1, !dbg !4499
  store %struct.si21xx_config* %3, %struct.si21xx_config** %config4, align 8, !dbg !4500
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4501
  %6 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !4502
  %i2c5 = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %6, i32 0, i32 0, !dbg !4503
  store %struct.i2c_adapter* %5, %struct.i2c_adapter** %i2c5, align 8, !dbg !4504
  %7 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !4505
  %initialised = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %7, i32 0, i32 3, !dbg !4506
  %bf.load = load i8, i8* %initialised, align 8, !dbg !4507
  %bf.clear = and i8 %bf.load, -2, !dbg !4507
  store i8 %bf.clear, i8* %initialised, align 8, !dbg !4507
  %8 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !4508
  %errmode = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %8, i32 0, i32 4, !dbg !4509
  store i32 0, i32* %errmode, align 4, !dbg !4510
  %9 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !4511
  %call6 = call zeroext i8 @si21_readreg(%struct.si21xx_state* %9, i8 zeroext 1) #9, !dbg !4512
  %conv = zext i8 %call6 to i32, !dbg !4512
  store i32 %conv, i32* %id, align 4, !dbg !4513
  %10 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !4514
  %11 = load i32, i32* %id, align 4, !dbg !4515
  %or = or i32 %11, 64, !dbg !4516
  %conv7 = trunc i32 %or to i8, !dbg !4515
  %call8 = call i32 @si21_writereg(%struct.si21xx_state* %10, i8 zeroext 1, i8 zeroext %conv7) #9, !dbg !4517
  call void @msleep(i32 200) #9, !dbg !4518
  %12 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !4519
  %call9 = call zeroext i8 @si21_readreg(%struct.si21xx_state* %12, i8 zeroext 0) #9, !dbg !4520
  %conv10 = zext i8 %call9 to i32, !dbg !4520
  store i32 %conv10, i32* %id, align 4, !dbg !4521
  %13 = load i32, i32* %id, align 4, !dbg !4522
  %cmp11 = icmp ne i32 %13, 4, !dbg !4524
  br i1 %cmp11, label %land.lhs.true, label %if.end16, !dbg !4525

land.lhs.true:                                    ; preds = %if.end3
  %14 = load i32, i32* %id, align 4, !dbg !4526
  %cmp13 = icmp ne i32 %14, 20, !dbg !4527
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !4528

if.then15:                                        ; preds = %land.lhs.true
  br label %error, !dbg !4529

if.end16:                                         ; preds = %land.lhs.true, %if.end3
  %15 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !4530
  %frontend = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %15, i32 0, i32 2, !dbg !4531
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4532
  %16 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4533
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @si21xx_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4533
  %17 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !4534
  %18 = bitcast %struct.si21xx_state* %17 to i8*, !dbg !4534
  %19 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !4535
  %frontend17 = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %19, i32 0, i32 2, !dbg !4536
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend17, i32 0, i32 3, !dbg !4537
  store i8* %18, i8** %demodulator_priv, align 8, !dbg !4538
  %20 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !4539
  %frontend18 = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %20, i32 0, i32 2, !dbg !4540
  store %struct.dvb_frontend* %frontend18, %struct.dvb_frontend** %retval, align 8, !dbg !4541
  br label %return, !dbg !4541

error:                                            ; preds = %if.then15, %if.then2
  call void @llvm.dbg.label(metadata !4542), !dbg !4543
  %21 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !4544
  %22 = bitcast %struct.si21xx_state* %21 to i8*, !dbg !4544
  call void @kfree(i8* %22) #9, !dbg !4545
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4546
  br label %return, !dbg !4546

return:                                           ; preds = %error, %if.end16
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4547
  ret %struct.dvb_frontend* %23, !dbg !4547
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4548 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4551, metadata !DIExpression()), !dbg !4555
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4561, metadata !DIExpression()), !dbg !4562
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4563, metadata !DIExpression()), !dbg !4564
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4565, metadata !DIExpression()), !dbg !4566
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4567, metadata !DIExpression()), !dbg !4571
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4573, metadata !DIExpression()), !dbg !4577
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4579, metadata !DIExpression()), !dbg !4583
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4588, metadata !DIExpression()), !dbg !4589
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4590, metadata !DIExpression()), !dbg !4591
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4592, metadata !DIExpression()), !dbg !4593
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4594, metadata !DIExpression()), !dbg !4595
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4596, metadata !DIExpression()), !dbg !4597
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4598, metadata !DIExpression()), !dbg !4599
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4600, metadata !DIExpression()), !dbg !4601
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4602, metadata !DIExpression()), !dbg !4603
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4604, metadata !DIExpression()), !dbg !4605
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4606, metadata !DIExpression()), !dbg !4607
  %0 = load i64, i64* %size.addr, align 8, !dbg !4608
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4609
  %or = or i32 %1, 256, !dbg !4610
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4611
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4612
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4613

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4614
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4615
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4616

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4617
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4618
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4619
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4620
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4597
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4621
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4622
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4623
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4624
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4625
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4626
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4627
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4627
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4627
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4627
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4627
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4628
  br label %kmalloc.exit, !dbg !4628

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4629
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4630
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4630
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4632

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4633
  br label %kmalloc_index.exit.i, !dbg !4633

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4634
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4636
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4637

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4638
  br label %kmalloc_index.exit.i, !dbg !4638

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4639
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4641
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4642

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4643
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4644
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4645

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4646
  br label %kmalloc_index.exit.i, !dbg !4646

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4647
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4649
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4650

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4651
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4652
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4653

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4654
  br label %kmalloc_index.exit.i, !dbg !4654

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4655
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4657
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4658

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4659
  br label %kmalloc_index.exit.i, !dbg !4659

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4660
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4662
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4663

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4664
  br label %kmalloc_index.exit.i, !dbg !4664

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4665
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4667
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4668

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4669
  br label %kmalloc_index.exit.i, !dbg !4669

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4670
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4672
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4673

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4674
  br label %kmalloc_index.exit.i, !dbg !4674

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4675
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4677
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4678

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4679
  br label %kmalloc_index.exit.i, !dbg !4679

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4680
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4682
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4683

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4684
  br label %kmalloc_index.exit.i, !dbg !4684

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4685
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4687
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4688

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4689
  br label %kmalloc_index.exit.i, !dbg !4689

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4690
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4692
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4693

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4694
  br label %kmalloc_index.exit.i, !dbg !4694

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4695
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4697
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4698

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4699
  br label %kmalloc_index.exit.i, !dbg !4699

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4700
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4702
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4703

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4704
  br label %kmalloc_index.exit.i, !dbg !4704

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4705
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4707
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4708

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4709
  br label %kmalloc_index.exit.i, !dbg !4709

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4710
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4712
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4713

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4714
  br label %kmalloc_index.exit.i, !dbg !4714

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4715
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4717
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4718

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4719
  br label %kmalloc_index.exit.i, !dbg !4719

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4720
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4722
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4723

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4724
  br label %kmalloc_index.exit.i, !dbg !4724

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4725
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4727
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4728

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4729
  br label %kmalloc_index.exit.i, !dbg !4729

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4730
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4732
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4733

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4734
  br label %kmalloc_index.exit.i, !dbg !4734

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4735
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4737
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4738

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4739
  br label %kmalloc_index.exit.i, !dbg !4739

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4740
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4742
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4743

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4744
  br label %kmalloc_index.exit.i, !dbg !4744

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4745
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4747
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4748

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4749
  br label %kmalloc_index.exit.i, !dbg !4749

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4750
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4752
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4753

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4754
  br label %kmalloc_index.exit.i, !dbg !4754

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4755
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4757
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4758

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4759
  br label %kmalloc_index.exit.i, !dbg !4759

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4760
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4762
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4763

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4764
  br label %kmalloc_index.exit.i, !dbg !4764

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4765
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4767
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4768

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4769
  br label %kmalloc_index.exit.i, !dbg !4769

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4770
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4772
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4773

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4774
  br label %kmalloc_index.exit.i, !dbg !4774

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4775, !srcloc !4778
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #10, !dbg !4779, !srcloc !4782
  unreachable, !dbg !4783

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4784
  store i32 %45, i32* %index.i, align 4, !dbg !4785
  %46 = load i32, i32* %index.i, align 4, !dbg !4786
  %tobool.i = icmp ne i32 %46, 0, !dbg !4786
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4788

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4789
  br label %kmalloc.exit, !dbg !4789

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4790
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4791
  %and.i.i = and i32 %48, 17, !dbg !4791
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4791
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4791
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4791
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4791
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4793

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4794
  br label %kmalloc_type.exit.i, !dbg !4794

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4795
  %and2.i.i = and i32 %49, 1, !dbg !4796
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4795
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4795
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4795
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4797
  br label %kmalloc_type.exit.i, !dbg !4797

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4798
  %idxprom.i = zext i32 %51 to i64, !dbg !4799
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4799
  %52 = load i32, i32* %index.i, align 4, !dbg !4800
  %idxprom6.i = zext i32 %52 to i64, !dbg !4799
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4799
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4799
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4801
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4802
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4803
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4804
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4805
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4805
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4805
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4805
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4805
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4566
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4806
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4807
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4808
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4809
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4810
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4811
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4812
  store i8* %62, i8** %retval.i, align 8, !dbg !4813
  br label %kmalloc.exit, !dbg !4813

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4814
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4815
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4816
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4816
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4816
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4816
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4816
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4817
  br label %kmalloc.exit, !dbg !4817

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4818
  ret i8* %65, !dbg !4819
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @si21_readreg(%struct.si21xx_state* %state, i8 zeroext %reg) #0 !dbg !4820 {
entry:
  %state.addr = alloca %struct.si21xx_state*, align 8
  %reg.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.si21xx_state* %state, %struct.si21xx_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state.addr, metadata !4823, metadata !DIExpression()), !dbg !4824
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4825, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4827, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.declare(metadata [1 x i8]* %b0, metadata !4829, metadata !DIExpression()), !dbg !4831
  %arrayinit.begin = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4832
  %0 = load i8, i8* %reg.addr, align 1, !dbg !4833
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !4832
  call void @llvm.dbg.declare(metadata [1 x i8]* %b1, metadata !4834, metadata !DIExpression()), !dbg !4835
  %1 = bitcast [1 x i8]* %b1 to i8*, !dbg !4835
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 1, i1 false), !dbg !4835
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !4836, metadata !DIExpression()), !dbg !4838
  %arrayinit.begin1 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4839
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 0, !dbg !4840
  %2 = load %struct.si21xx_state*, %struct.si21xx_state** %state.addr, align 8, !dbg !4841
  %config = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %2, i32 0, i32 1, !dbg !4842
  %3 = load %struct.si21xx_config*, %struct.si21xx_config** %config, align 8, !dbg !4842
  %demod_address = getelementptr inbounds %struct.si21xx_config, %struct.si21xx_config* %3, i32 0, i32 0, !dbg !4843
  %4 = load i8, i8* %demod_address, align 4, !dbg !4843
  %conv = zext i8 %4 to i16, !dbg !4841
  store i16 %conv, i16* %addr, align 16, !dbg !4840
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 1, !dbg !4840
  store i16 0, i16* %flags, align 2, !dbg !4840
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 2, !dbg !4840
  store i16 1, i16* %len, align 4, !dbg !4840
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 3, !dbg !4840
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4844
  store i8* %arraydecay, i8** %buf, align 8, !dbg !4840
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i64 1, !dbg !4839
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4845
  %5 = load %struct.si21xx_state*, %struct.si21xx_state** %state.addr, align 8, !dbg !4846
  %config3 = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %5, i32 0, i32 1, !dbg !4847
  %6 = load %struct.si21xx_config*, %struct.si21xx_config** %config3, align 8, !dbg !4847
  %demod_address4 = getelementptr inbounds %struct.si21xx_config, %struct.si21xx_config* %6, i32 0, i32 0, !dbg !4848
  %7 = load i8, i8* %demod_address4, align 4, !dbg !4848
  %conv5 = zext i8 %7 to i16, !dbg !4846
  store i16 %conv5, i16* %addr2, align 16, !dbg !4845
  %flags6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4845
  store i16 1, i16* %flags6, align 2, !dbg !4845
  %len7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4845
  store i16 1, i16* %len7, align 4, !dbg !4845
  %buf8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4845
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4849
  store i8* %arraydecay9, i8** %buf8, align 8, !dbg !4845
  %8 = load %struct.si21xx_state*, %struct.si21xx_state** %state.addr, align 8, !dbg !4850
  %i2c = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %8, i32 0, i32 0, !dbg !4851
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4851
  %arraydecay10 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4852
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %9, %struct.i2c_msg* %arraydecay10, i32 2) #9, !dbg !4853
  store i32 %call, i32* %ret, align 4, !dbg !4854
  %10 = load i32, i32* %ret, align 4, !dbg !4855
  %cmp = icmp ne i32 %10, 2, !dbg !4857
  br i1 %cmp, label %if.then, label %if.end15, !dbg !4858

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4859

do.body:                                          ; preds = %if.then
  %11 = load i32, i32* @debug, align 4, !dbg !4860
  %tobool = icmp ne i32 %11, 0, !dbg !4860
  br i1 %tobool, label %if.then12, label %if.end, !dbg !4863

if.then12:                                        ; preds = %do.body
  %12 = load i8, i8* %reg.addr, align 1, !dbg !4860
  %conv13 = zext i8 %12 to i32, !dbg !4860
  %13 = load i32, i32* %ret, align 4, !dbg !4860
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.si21_readreg, i64 0, i64 0), i32 %conv13, i32 %13) #8, !dbg !4860
  br label %if.end, !dbg !4860

if.end:                                           ; preds = %if.then12, %do.body
  br label %do.end, !dbg !4863

do.end:                                           ; preds = %if.end
  br label %if.end15, !dbg !4863

if.end15:                                         ; preds = %do.end, %entry
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4864
  %14 = load i8, i8* %arrayidx, align 1, !dbg !4864
  ret i8 %14, !dbg !4865
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21_writereg(%struct.si21xx_state* %state, i8 zeroext %reg, i8 zeroext %data) #0 !dbg !4866 {
entry:
  %state.addr = alloca %struct.si21xx_state*, align 8
  %reg.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.si21xx_state* %state, %struct.si21xx_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state.addr, metadata !4869, metadata !DIExpression()), !dbg !4870
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4871, metadata !DIExpression()), !dbg !4872
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !4873, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4875, metadata !DIExpression()), !dbg !4876
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !4877, metadata !DIExpression()), !dbg !4879
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !4880
  %0 = load i8, i8* %reg.addr, align 1, !dbg !4881
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !4880
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !4880
  %1 = load i8, i8* %data.addr, align 1, !dbg !4882
  store i8 %1, i8* %arrayinit.element, align 1, !dbg !4880
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !4883, metadata !DIExpression()), !dbg !4884
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !4885
  %2 = load %struct.si21xx_state*, %struct.si21xx_state** %state.addr, align 8, !dbg !4886
  %config = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %2, i32 0, i32 1, !dbg !4887
  %3 = load %struct.si21xx_config*, %struct.si21xx_config** %config, align 8, !dbg !4887
  %demod_address = getelementptr inbounds %struct.si21xx_config, %struct.si21xx_config* %3, i32 0, i32 0, !dbg !4888
  %4 = load i8, i8* %demod_address, align 4, !dbg !4888
  %conv = zext i8 %4 to i16, !dbg !4886
  store i16 %conv, i16* %addr, align 8, !dbg !4885
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !4885
  store i16 0, i16* %flags, align 2, !dbg !4885
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !4885
  store i16 2, i16* %len, align 4, !dbg !4885
  %buf1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !4885
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !4889
  store i8* %arraydecay, i8** %buf1, align 8, !dbg !4885
  %5 = load %struct.si21xx_state*, %struct.si21xx_state** %state.addr, align 8, !dbg !4890
  %i2c = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %5, i32 0, i32 0, !dbg !4891
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4891
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %6, %struct.i2c_msg* %msg, i32 1) #9, !dbg !4892
  store i32 %call, i32* %ret, align 4, !dbg !4893
  %7 = load i32, i32* %ret, align 4, !dbg !4894
  %cmp = icmp ne i32 %7, 1, !dbg !4896
  br i1 %cmp, label %if.then, label %if.end7, !dbg !4897

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4898

do.body:                                          ; preds = %if.then
  %8 = load i32, i32* @debug, align 4, !dbg !4899
  %tobool = icmp ne i32 %8, 0, !dbg !4899
  br i1 %tobool, label %if.then3, label %if.end, !dbg !4902

if.then3:                                         ; preds = %do.body
  %9 = load i8, i8* %reg.addr, align 1, !dbg !4899
  %conv4 = zext i8 %9 to i32, !dbg !4899
  %10 = load i8, i8* %data.addr, align 1, !dbg !4899
  %conv5 = zext i8 %10 to i32, !dbg !4899
  %11 = load i32, i32* %ret, align 4, !dbg !4899
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.si21_writereg, i64 0, i64 0), i32 %conv4, i32 %conv5, i32 %11) #8, !dbg !4899
  br label %if.end, !dbg !4899

if.end:                                           ; preds = %if.then3, %do.body
  br label %do.end, !dbg !4902

do.end:                                           ; preds = %if.end
  br label %if.end7, !dbg !4902

if.end7:                                          ; preds = %do.end, %entry
  %12 = load i32, i32* %ret, align 4, !dbg !4903
  %cmp8 = icmp ne i32 %12, 1, !dbg !4904
  %13 = zext i1 %cmp8 to i64, !dbg !4905
  %cond = select i1 %cmp8, i32 -121, i32 0, !dbg !4905
  ret i32 %cond, !dbg !4906
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4907 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4911, metadata !DIExpression()), !dbg !4916
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4918, metadata !DIExpression()), !dbg !4919
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4920, metadata !DIExpression()), !dbg !4921
  %0 = load i64, i64* %size.addr, align 8, !dbg !4922
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4924
  br i1 %1, label %if.then, label %if.end447, !dbg !4925

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4926
  %tobool = icmp ne i64 %2, 0, !dbg !4926
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4929

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4930
  br label %return, !dbg !4930

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4931
  %cmp = icmp ult i64 %3, 4096, !dbg !4933
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4934

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4935
  br label %return, !dbg !4935

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub = sub i64 %4, 1, !dbg !4936
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4936
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4936

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub4 = sub i64 %6, 1, !dbg !4936
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4936
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4936

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub6 = sub i64 %8, 1, !dbg !4936
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4936
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4936

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4936

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub9 = sub i64 %9, 1, !dbg !4936
  %and = and i64 %sub9, -9223372036854775808, !dbg !4936
  %tobool10 = icmp ne i64 %and, 0, !dbg !4936
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4936

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4936

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub13 = sub i64 %10, 1, !dbg !4936
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4936
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4936
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4936

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4936

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub18 = sub i64 %11, 1, !dbg !4936
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4936
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4936
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4936

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4936

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub23 = sub i64 %12, 1, !dbg !4936
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4936
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4936
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4936

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4936

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub28 = sub i64 %13, 1, !dbg !4936
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4936
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4936
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4936

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4936

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub33 = sub i64 %14, 1, !dbg !4936
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4936
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4936
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4936

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4936

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub38 = sub i64 %15, 1, !dbg !4936
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4936
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4936
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4936

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4936

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub43 = sub i64 %16, 1, !dbg !4936
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4936
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4936
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4936

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4936

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub48 = sub i64 %17, 1, !dbg !4936
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4936
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4936
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4936

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4936

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub53 = sub i64 %18, 1, !dbg !4936
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4936
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4936
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4936

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4936

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub58 = sub i64 %19, 1, !dbg !4936
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4936
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4936
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4936

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4936

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub63 = sub i64 %20, 1, !dbg !4936
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4936
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4936
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4936

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4936

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub68 = sub i64 %21, 1, !dbg !4936
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4936
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4936
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4936

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4936

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub73 = sub i64 %22, 1, !dbg !4936
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4936
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4936
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4936

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4936

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub78 = sub i64 %23, 1, !dbg !4936
  %and79 = and i64 %sub78, 562949953421312, !dbg !4936
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4936
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4936

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4936

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub83 = sub i64 %24, 1, !dbg !4936
  %and84 = and i64 %sub83, 281474976710656, !dbg !4936
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4936
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4936

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4936

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub88 = sub i64 %25, 1, !dbg !4936
  %and89 = and i64 %sub88, 140737488355328, !dbg !4936
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4936
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4936

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4936

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub93 = sub i64 %26, 1, !dbg !4936
  %and94 = and i64 %sub93, 70368744177664, !dbg !4936
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4936
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4936

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4936

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub98 = sub i64 %27, 1, !dbg !4936
  %and99 = and i64 %sub98, 35184372088832, !dbg !4936
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4936
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4936

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4936

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub103 = sub i64 %28, 1, !dbg !4936
  %and104 = and i64 %sub103, 17592186044416, !dbg !4936
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4936
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4936

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4936

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub108 = sub i64 %29, 1, !dbg !4936
  %and109 = and i64 %sub108, 8796093022208, !dbg !4936
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4936
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4936

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4936

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub113 = sub i64 %30, 1, !dbg !4936
  %and114 = and i64 %sub113, 4398046511104, !dbg !4936
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4936
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4936

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4936

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub118 = sub i64 %31, 1, !dbg !4936
  %and119 = and i64 %sub118, 2199023255552, !dbg !4936
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4936
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4936

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4936

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub123 = sub i64 %32, 1, !dbg !4936
  %and124 = and i64 %sub123, 1099511627776, !dbg !4936
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4936
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4936

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4936

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub128 = sub i64 %33, 1, !dbg !4936
  %and129 = and i64 %sub128, 549755813888, !dbg !4936
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4936
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4936

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4936

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub133 = sub i64 %34, 1, !dbg !4936
  %and134 = and i64 %sub133, 274877906944, !dbg !4936
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4936
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4936

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4936

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub138 = sub i64 %35, 1, !dbg !4936
  %and139 = and i64 %sub138, 137438953472, !dbg !4936
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4936
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4936

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4936

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub143 = sub i64 %36, 1, !dbg !4936
  %and144 = and i64 %sub143, 68719476736, !dbg !4936
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4936
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4936

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4936

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub148 = sub i64 %37, 1, !dbg !4936
  %and149 = and i64 %sub148, 34359738368, !dbg !4936
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4936
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4936

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4936

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub153 = sub i64 %38, 1, !dbg !4936
  %and154 = and i64 %sub153, 17179869184, !dbg !4936
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4936
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4936

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4936

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub158 = sub i64 %39, 1, !dbg !4936
  %and159 = and i64 %sub158, 8589934592, !dbg !4936
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4936
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4936

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4936

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub163 = sub i64 %40, 1, !dbg !4936
  %and164 = and i64 %sub163, 4294967296, !dbg !4936
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4936
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4936

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4936

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub168 = sub i64 %41, 1, !dbg !4936
  %and169 = and i64 %sub168, 2147483648, !dbg !4936
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4936
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4936

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4936

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub173 = sub i64 %42, 1, !dbg !4936
  %and174 = and i64 %sub173, 1073741824, !dbg !4936
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4936
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4936

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4936

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub178 = sub i64 %43, 1, !dbg !4936
  %and179 = and i64 %sub178, 536870912, !dbg !4936
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4936
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4936

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4936

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub183 = sub i64 %44, 1, !dbg !4936
  %and184 = and i64 %sub183, 268435456, !dbg !4936
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4936
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4936

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4936

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub188 = sub i64 %45, 1, !dbg !4936
  %and189 = and i64 %sub188, 134217728, !dbg !4936
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4936
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4936

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4936

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub193 = sub i64 %46, 1, !dbg !4936
  %and194 = and i64 %sub193, 67108864, !dbg !4936
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4936
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4936

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4936

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub198 = sub i64 %47, 1, !dbg !4936
  %and199 = and i64 %sub198, 33554432, !dbg !4936
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4936
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4936

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4936

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub203 = sub i64 %48, 1, !dbg !4936
  %and204 = and i64 %sub203, 16777216, !dbg !4936
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4936
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4936

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4936

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub208 = sub i64 %49, 1, !dbg !4936
  %and209 = and i64 %sub208, 8388608, !dbg !4936
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4936
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4936

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4936

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub213 = sub i64 %50, 1, !dbg !4936
  %and214 = and i64 %sub213, 4194304, !dbg !4936
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4936
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4936

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4936

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub218 = sub i64 %51, 1, !dbg !4936
  %and219 = and i64 %sub218, 2097152, !dbg !4936
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4936
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4936

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4936

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub223 = sub i64 %52, 1, !dbg !4936
  %and224 = and i64 %sub223, 1048576, !dbg !4936
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4936
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4936

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4936

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub228 = sub i64 %53, 1, !dbg !4936
  %and229 = and i64 %sub228, 524288, !dbg !4936
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4936
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4936

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4936

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub233 = sub i64 %54, 1, !dbg !4936
  %and234 = and i64 %sub233, 262144, !dbg !4936
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4936
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4936

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4936

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub238 = sub i64 %55, 1, !dbg !4936
  %and239 = and i64 %sub238, 131072, !dbg !4936
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4936
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4936

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4936

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub243 = sub i64 %56, 1, !dbg !4936
  %and244 = and i64 %sub243, 65536, !dbg !4936
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4936
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4936

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4936

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub248 = sub i64 %57, 1, !dbg !4936
  %and249 = and i64 %sub248, 32768, !dbg !4936
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4936
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4936

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4936

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub253 = sub i64 %58, 1, !dbg !4936
  %and254 = and i64 %sub253, 16384, !dbg !4936
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4936
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4936

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4936

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub258 = sub i64 %59, 1, !dbg !4936
  %and259 = and i64 %sub258, 8192, !dbg !4936
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4936
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4936

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4936

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub263 = sub i64 %60, 1, !dbg !4936
  %and264 = and i64 %sub263, 4096, !dbg !4936
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4936
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4936

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4936

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub268 = sub i64 %61, 1, !dbg !4936
  %and269 = and i64 %sub268, 2048, !dbg !4936
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4936
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4936

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4936

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub273 = sub i64 %62, 1, !dbg !4936
  %and274 = and i64 %sub273, 1024, !dbg !4936
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4936
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4936

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4936

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub278 = sub i64 %63, 1, !dbg !4936
  %and279 = and i64 %sub278, 512, !dbg !4936
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4936
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4936

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4936

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub283 = sub i64 %64, 1, !dbg !4936
  %and284 = and i64 %sub283, 256, !dbg !4936
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4936
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4936

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4936

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub288 = sub i64 %65, 1, !dbg !4936
  %and289 = and i64 %sub288, 128, !dbg !4936
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4936
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4936

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4936

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub293 = sub i64 %66, 1, !dbg !4936
  %and294 = and i64 %sub293, 64, !dbg !4936
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4936
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4936

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4936

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub298 = sub i64 %67, 1, !dbg !4936
  %and299 = and i64 %sub298, 32, !dbg !4936
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4936
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4936

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4936

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub303 = sub i64 %68, 1, !dbg !4936
  %and304 = and i64 %sub303, 16, !dbg !4936
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4936
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4936

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4936

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub308 = sub i64 %69, 1, !dbg !4936
  %and309 = and i64 %sub308, 8, !dbg !4936
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4936
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4936

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4936

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub313 = sub i64 %70, 1, !dbg !4936
  %and314 = and i64 %sub313, 4, !dbg !4936
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4936
  %71 = zext i1 %tobool315 to i64, !dbg !4936
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4936
  br label %cond.end, !dbg !4936

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4936
  br label %cond.end317, !dbg !4936

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4936
  br label %cond.end319, !dbg !4936

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4936
  br label %cond.end321, !dbg !4936

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4936
  br label %cond.end323, !dbg !4936

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4936
  br label %cond.end325, !dbg !4936

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4936
  br label %cond.end327, !dbg !4936

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4936
  br label %cond.end329, !dbg !4936

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4936
  br label %cond.end331, !dbg !4936

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4936
  br label %cond.end333, !dbg !4936

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4936
  br label %cond.end335, !dbg !4936

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4936
  br label %cond.end337, !dbg !4936

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4936
  br label %cond.end339, !dbg !4936

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4936
  br label %cond.end341, !dbg !4936

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4936
  br label %cond.end343, !dbg !4936

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4936
  br label %cond.end345, !dbg !4936

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4936
  br label %cond.end347, !dbg !4936

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4936
  br label %cond.end349, !dbg !4936

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4936
  br label %cond.end351, !dbg !4936

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4936
  br label %cond.end353, !dbg !4936

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4936
  br label %cond.end355, !dbg !4936

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4936
  br label %cond.end357, !dbg !4936

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4936
  br label %cond.end359, !dbg !4936

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4936
  br label %cond.end361, !dbg !4936

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4936
  br label %cond.end363, !dbg !4936

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4936
  br label %cond.end365, !dbg !4936

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4936
  br label %cond.end367, !dbg !4936

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4936
  br label %cond.end369, !dbg !4936

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4936
  br label %cond.end371, !dbg !4936

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4936
  br label %cond.end373, !dbg !4936

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4936
  br label %cond.end375, !dbg !4936

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4936
  br label %cond.end377, !dbg !4936

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4936
  br label %cond.end379, !dbg !4936

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4936
  br label %cond.end381, !dbg !4936

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4936
  br label %cond.end383, !dbg !4936

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4936
  br label %cond.end385, !dbg !4936

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4936
  br label %cond.end387, !dbg !4936

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4936
  br label %cond.end389, !dbg !4936

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4936
  br label %cond.end391, !dbg !4936

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4936
  br label %cond.end393, !dbg !4936

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4936
  br label %cond.end395, !dbg !4936

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4936
  br label %cond.end397, !dbg !4936

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4936
  br label %cond.end399, !dbg !4936

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4936
  br label %cond.end401, !dbg !4936

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4936
  br label %cond.end403, !dbg !4936

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4936
  br label %cond.end405, !dbg !4936

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4936
  br label %cond.end407, !dbg !4936

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4936
  br label %cond.end409, !dbg !4936

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4936
  br label %cond.end411, !dbg !4936

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4936
  br label %cond.end413, !dbg !4936

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4936
  br label %cond.end415, !dbg !4936

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4936
  br label %cond.end417, !dbg !4936

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4936
  br label %cond.end419, !dbg !4936

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4936
  br label %cond.end421, !dbg !4936

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4936
  br label %cond.end423, !dbg !4936

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4936
  br label %cond.end425, !dbg !4936

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4936
  br label %cond.end427, !dbg !4936

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4936
  br label %cond.end429, !dbg !4936

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4936
  br label %cond.end431, !dbg !4936

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4936
  br label %cond.end433, !dbg !4936

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4936
  br label %cond.end435, !dbg !4936

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4936
  br label %cond.end437, !dbg !4936

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4936
  br label %cond.end440, !dbg !4936

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4936

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4936
  br label %cond.end444, !dbg !4936

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4936
  %sub443 = sub i64 %72, 1, !dbg !4936
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4936
  br label %cond.end444, !dbg !4936

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4936
  %sub446 = sub i32 %cond445, 12, !dbg !4937
  %add = add i32 %sub446, 1, !dbg !4938
  store i32 %add, i32* %retval, align 4, !dbg !4939
  br label %return, !dbg !4939

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4940
  %dec = add i64 %73, -1, !dbg !4940
  store i64 %dec, i64* %size.addr, align 8, !dbg !4940
  %74 = load i64, i64* %size.addr, align 8, !dbg !4941
  %shr = lshr i64 %74, 12, !dbg !4941
  store i64 %shr, i64* %size.addr, align 8, !dbg !4941
  %75 = load i64, i64* %size.addr, align 8, !dbg !4942
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4919
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4943
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4944
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4943, !srcloc !4945
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4943
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4946
  %add.i = add i32 %79, 1, !dbg !4947
  store i32 %add.i, i32* %retval, align 4, !dbg !4948
  br label %return, !dbg !4948

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4949
  ret i32 %80, !dbg !4949
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4950 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4911, metadata !DIExpression()), !dbg !4954
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4918, metadata !DIExpression()), !dbg !4956
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4957, metadata !DIExpression()), !dbg !4958
  %0 = load i64, i64* %n.addr, align 8, !dbg !4959
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4956
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4960
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4961
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4960, !srcloc !4945
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4960
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4962
  %add.i = add i32 %4, 1, !dbg !4963
  %sub = sub i32 %add.i, 1, !dbg !4964
  ret i32 %sub, !dbg !4965
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4966 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4970, metadata !DIExpression()), !dbg !4971
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4972, metadata !DIExpression()), !dbg !4973
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4974, metadata !DIExpression()), !dbg !4975
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4976, metadata !DIExpression()), !dbg !4977
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4978
  ret i8* %0, !dbg !4979
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @si21xx_release(%struct.dvb_frontend* %fe) #0 !dbg !4980 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.si21xx_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4981, metadata !DIExpression()), !dbg !4982
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state, metadata !4983, metadata !DIExpression()), !dbg !4984
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4985
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4986
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4986
  %2 = bitcast i8* %1 to %struct.si21xx_state*, !dbg !4985
  store %struct.si21xx_state* %2, %struct.si21xx_state** %state, align 8, !dbg !4984
  br label %do.body, !dbg !4987

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !4988
  %tobool = icmp ne i32 %3, 0, !dbg !4988
  br i1 %tobool, label %if.then, label %if.end, !dbg !4991

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.si21xx_release, i64 0, i64 0)) #8, !dbg !4988
  br label %if.end, !dbg !4988

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4991

do.end:                                           ; preds = %if.end
  %4 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !4992
  %5 = bitcast %struct.si21xx_state* %4 to i8*, !dbg !4992
  call void @kfree(i8* %5) #9, !dbg !4993
  ret void, !dbg !4994
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21xx_init(%struct.dvb_frontend* %fe) #0 !dbg !4995 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.si21xx_state*, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %reg1 = alloca i8, align 1
  %val = alloca i8, align 1
  %reg2 = alloca [2 x i8], align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4996, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state, metadata !4998, metadata !DIExpression()), !dbg !4999
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5000
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5001
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5001
  %2 = bitcast i8* %1 to %struct.si21xx_state*, !dbg !5000
  store %struct.si21xx_state* %2, %struct.si21xx_state** %state, align 8, !dbg !4999
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5002, metadata !DIExpression()), !dbg !5003
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5004, metadata !DIExpression()), !dbg !5005
  store i32 0, i32* %status, align 4, !dbg !5005
  call void @llvm.dbg.declare(metadata i8* %reg1, metadata !5006, metadata !DIExpression()), !dbg !5007
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5008, metadata !DIExpression()), !dbg !5009
  call void @llvm.dbg.declare(metadata [2 x i8]* %reg2, metadata !5010, metadata !DIExpression()), !dbg !5011
  br label %do.body, !dbg !5012

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5013
  %tobool = icmp ne i32 %3, 0, !dbg !5013
  br i1 %tobool, label %if.then, label %if.end, !dbg !5016

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.si21xx_init, i64 0, i64 0)) #8, !dbg !5013
  br label %if.end, !dbg !5013

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5016

do.end:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5017
  br label %for.cond, !dbg !5019

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load i32, i32* %i, align 4, !dbg !5020
  %idxprom = sext i32 %4 to i64, !dbg !5023
  %arrayidx = getelementptr [148 x i8], [148 x i8]* @serit_sp1511lhb_inittab, i64 0, i64 %idxprom, !dbg !5023
  %5 = load i8, i8* %arrayidx, align 1, !dbg !5023
  store i8 %5, i8* %reg1, align 1, !dbg !5024
  %6 = load i32, i32* %i, align 4, !dbg !5025
  %add = add i32 %6, 1, !dbg !5026
  %idxprom1 = sext i32 %add to i64, !dbg !5027
  %arrayidx2 = getelementptr [148 x i8], [148 x i8]* @serit_sp1511lhb_inittab, i64 0, i64 %idxprom1, !dbg !5027
  %7 = load i8, i8* %arrayidx2, align 1, !dbg !5027
  store i8 %7, i8* %val, align 1, !dbg !5028
  %8 = load i8, i8* %reg1, align 1, !dbg !5029
  %conv = zext i8 %8 to i32, !dbg !5029
  %cmp = icmp eq i32 %conv, 255, !dbg !5031
  br i1 %cmp, label %land.lhs.true, label %if.end8, !dbg !5032

land.lhs.true:                                    ; preds = %for.cond
  %9 = load i8, i8* %val, align 1, !dbg !5033
  %conv4 = zext i8 %9 to i32, !dbg !5033
  %cmp5 = icmp eq i32 %conv4, 255, !dbg !5034
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !5035

if.then7:                                         ; preds = %land.lhs.true
  br label %for.end, !dbg !5036

if.end8:                                          ; preds = %land.lhs.true, %for.cond
  %10 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5037
  %11 = load i8, i8* %reg1, align 1, !dbg !5038
  %call9 = call i32 @si21_writeregs(%struct.si21xx_state* %10, i8 zeroext %11, i8* %val, i32 1) #9, !dbg !5039
  br label %for.inc, !dbg !5040

for.inc:                                          ; preds = %if.end8
  %12 = load i32, i32* %i, align 4, !dbg !5041
  %add10 = add i32 %12, 2, !dbg !5041
  store i32 %add10, i32* %i, align 4, !dbg !5041
  br label %for.cond, !dbg !5042, !llvm.loop !5043

for.end:                                          ; preds = %if.then7
  store i8 8, i8* %reg1, align 1, !dbg !5046
  %13 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5047
  %call11 = call i32 @si21_writeregs(%struct.si21xx_state* %13, i8 zeroext 1, i8* %reg1, i32 1) #9, !dbg !5048
  %arrayidx12 = getelementptr [2 x i8], [2 x i8]* %reg2, i64 0, i64 0, !dbg !5049
  store i8 7, i8* %arrayidx12, align 1, !dbg !5050
  %arrayidx13 = getelementptr [2 x i8], [2 x i8]* %reg2, i64 0, i64 1, !dbg !5051
  store i8 0, i8* %arrayidx13, align 1, !dbg !5052
  %14 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5053
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %reg2, i64 0, i64 0, !dbg !5054
  %call14 = call i32 @si21_writeregs(%struct.si21xx_state* %14, i8 zeroext 2, i8* %arraydecay, i32 2) #9, !dbg !5055
  %15 = load i32, i32* %status, align 4, !dbg !5056
  %or = or i32 %15, %call14, !dbg !5056
  store i32 %or, i32* %status, align 4, !dbg !5056
  %16 = load i32, i32* %status, align 4, !dbg !5057
  %cmp15 = icmp ne i32 %16, 0, !dbg !5059
  br i1 %cmp15, label %if.then17, label %if.end24, !dbg !5060

if.then17:                                        ; preds = %for.end
  br label %do.body18, !dbg !5061

do.body18:                                        ; preds = %if.then17
  %17 = load i32, i32* @debug, align 4, !dbg !5062
  %tobool19 = icmp ne i32 %17, 0, !dbg !5062
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !5065

if.then20:                                        ; preds = %do.body18
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.si21xx_init, i64 0, i64 0)) #8, !dbg !5062
  br label %if.end22, !dbg !5062

if.end22:                                         ; preds = %if.then20, %do.body18
  br label %do.end23, !dbg !5065

do.end23:                                         ; preds = %if.end22
  br label %if.end24, !dbg !5065

if.end24:                                         ; preds = %do.end23, %for.end
  ret i32 0, !dbg !5066
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21xx_sleep(%struct.dvb_frontend* %fe) #0 !dbg !5067 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.si21xx_state*, align 8
  %regdata = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5068, metadata !DIExpression()), !dbg !5069
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state, metadata !5070, metadata !DIExpression()), !dbg !5071
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5072
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5073
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5073
  %2 = bitcast i8* %1 to %struct.si21xx_state*, !dbg !5072
  store %struct.si21xx_state* %2, %struct.si21xx_state** %state, align 8, !dbg !5071
  call void @llvm.dbg.declare(metadata i8* %regdata, metadata !5074, metadata !DIExpression()), !dbg !5075
  br label %do.body, !dbg !5076

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5077
  %tobool = icmp ne i32 %3, 0, !dbg !5077
  br i1 %tobool, label %if.then, label %if.end, !dbg !5080

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.si21xx_sleep, i64 0, i64 0)) #8, !dbg !5077
  br label %if.end, !dbg !5077

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5080

do.end:                                           ; preds = %if.end
  %4 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5081
  %call1 = call i32 @si21_readregs(%struct.si21xx_state* %4, i8 zeroext 1, i8* %regdata, i8 zeroext 1) #9, !dbg !5082
  %5 = load i8, i8* %regdata, align 1, !dbg !5083
  %conv = zext i8 %5 to i32, !dbg !5083
  %or = or i32 %conv, 64, !dbg !5083
  %conv2 = trunc i32 %or to i8, !dbg !5083
  store i8 %conv2, i8* %regdata, align 1, !dbg !5083
  %6 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5084
  %call3 = call i32 @si21_writeregs(%struct.si21xx_state* %6, i8 zeroext 1, i8* %regdata, i32 1) #9, !dbg !5085
  %7 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5086
  %initialised = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %7, i32 0, i32 3, !dbg !5087
  %bf.load = load i8, i8* %initialised, align 8, !dbg !5088
  %bf.clear = and i8 %bf.load, -2, !dbg !5088
  store i8 %bf.clear, i8* %initialised, align 8, !dbg !5088
  ret i32 0, !dbg !5089
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21_write(%struct.dvb_frontend* %fe, i8* %buf, i32 %len) #0 !dbg !5090 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %state = alloca %struct.si21xx_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5093, metadata !DIExpression()), !dbg !5094
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5095, metadata !DIExpression()), !dbg !5096
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state, metadata !5097, metadata !DIExpression()), !dbg !5098
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5099
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5100
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5100
  %2 = bitcast i8* %1 to %struct.si21xx_state*, !dbg !5099
  store %struct.si21xx_state* %2, %struct.si21xx_state** %state, align 8, !dbg !5098
  %3 = load i32, i32* %len.addr, align 4, !dbg !5101
  %cmp = icmp ne i32 %3, 2, !dbg !5103
  br i1 %cmp, label %if.then, label %if.end, !dbg !5104

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5105
  br label %return, !dbg !5105

if.end:                                           ; preds = %entry
  %4 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5106
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5107
  %arrayidx = getelementptr i8, i8* %5, i64 0, !dbg !5107
  %6 = load i8, i8* %arrayidx, align 1, !dbg !5107
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !5108
  %arrayidx1 = getelementptr i8, i8* %7, i64 1, !dbg !5108
  %8 = load i8, i8* %arrayidx1, align 1, !dbg !5108
  %call = call i32 @si21_writereg(%struct.si21xx_state* %4, i8 zeroext %6, i8 zeroext %8) #9, !dbg !5109
  store i32 %call, i32* %retval, align 4, !dbg !5110
  br label %return, !dbg !5110

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5111
  ret i32 %9, !dbg !5111
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21xx_set_frontend(%struct.dvb_frontend* %fe) #0 !dbg !5112 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.si21xx_state*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %coarse_tune_freq = alloca i8, align 1
  %fine_tune_freq = alloca i32, align 4
  %sample_rate = alloca i8, align 1
  %inband_interferer_ind = alloca i8, align 1
  %icoarse_tune_freq = alloca i32, align 4
  %ifine_tune_freq = alloca i32, align 4
  %band_high = alloca i32, align 4
  %band_low = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %i = alloca i32, align 4
  %inband_interferer_div2 = alloca [10 x i8], align 1
  %inband_interferer_div4 = alloca [10 x i8], align 1
  %status = alloca i32, align 4
  %afs = alloca [10 x i32], align 16
  %if_limit_high = alloca i32, align 4
  %if_limit_low = alloca i32, align 4
  %lnb_lo = alloca i32, align 4
  %lnb_uncertanity = alloca i32, align 4
  %rf_freq = alloca i32, align 4
  %data_rate = alloca i32, align 4
  %regs = alloca [4 x i8], align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5113, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state, metadata !5115, metadata !DIExpression()), !dbg !5116
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5117
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5118
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5118
  %2 = bitcast i8* %1 to %struct.si21xx_state*, !dbg !5117
  store %struct.si21xx_state* %2, %struct.si21xx_state** %state, align 8, !dbg !5116
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5119, metadata !DIExpression()), !dbg !5120
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5121
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 8, !dbg !5122
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5120
  call void @llvm.dbg.declare(metadata i8* %coarse_tune_freq, metadata !5123, metadata !DIExpression()), !dbg !5124
  call void @llvm.dbg.declare(metadata i32* %fine_tune_freq, metadata !5125, metadata !DIExpression()), !dbg !5126
  call void @llvm.dbg.declare(metadata i8* %sample_rate, metadata !5127, metadata !DIExpression()), !dbg !5128
  store i8 0, i8* %sample_rate, align 1, !dbg !5128
  call void @llvm.dbg.declare(metadata i8* %inband_interferer_ind, metadata !5129, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.declare(metadata i32* %icoarse_tune_freq, metadata !5131, metadata !DIExpression()), !dbg !5132
  call void @llvm.dbg.declare(metadata i32* %ifine_tune_freq, metadata !5133, metadata !DIExpression()), !dbg !5134
  call void @llvm.dbg.declare(metadata i32* %band_high, metadata !5135, metadata !DIExpression()), !dbg !5136
  call void @llvm.dbg.declare(metadata i32* %band_low, metadata !5137, metadata !DIExpression()), !dbg !5138
  call void @llvm.dbg.declare(metadata i32* %x1, metadata !5139, metadata !DIExpression()), !dbg !5140
  call void @llvm.dbg.declare(metadata i32* %x2, metadata !5141, metadata !DIExpression()), !dbg !5142
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5143, metadata !DIExpression()), !dbg !5144
  call void @llvm.dbg.declare(metadata [10 x i8]* %inband_interferer_div2, metadata !5145, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.declare(metadata [10 x i8]* %inband_interferer_div4, metadata !5150, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5152, metadata !DIExpression()), !dbg !5153
  call void @llvm.dbg.declare(metadata [10 x i32]* %afs, metadata !5154, metadata !DIExpression()), !dbg !5156
  %4 = bitcast [10 x i32]* %afs to i8*, !dbg !5156
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([10 x i32]* @__const.si21xx_set_frontend.afs to i8*), i64 40, i1 false), !dbg !5156
  call void @llvm.dbg.declare(metadata i32* %if_limit_high, metadata !5157, metadata !DIExpression()), !dbg !5158
  call void @llvm.dbg.declare(metadata i32* %if_limit_low, metadata !5159, metadata !DIExpression()), !dbg !5160
  call void @llvm.dbg.declare(metadata i32* %lnb_lo, metadata !5161, metadata !DIExpression()), !dbg !5162
  call void @llvm.dbg.declare(metadata i32* %lnb_uncertanity, metadata !5163, metadata !DIExpression()), !dbg !5164
  call void @llvm.dbg.declare(metadata i32* %rf_freq, metadata !5165, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.declare(metadata i32* %data_rate, metadata !5167, metadata !DIExpression()), !dbg !5168
  call void @llvm.dbg.declare(metadata [4 x i8]* %regs, metadata !5169, metadata !DIExpression()), !dbg !5171
  br label %do.body, !dbg !5172

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @debug, align 4, !dbg !5173
  %tobool = icmp ne i32 %5, 0, !dbg !5173
  br i1 %tobool, label %if.then, label %if.end, !dbg !5176

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.si21xx_set_frontend, i64 0, i64 0)) #8, !dbg !5173
  br label %if.end, !dbg !5173

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5176

do.end:                                           ; preds = %if.end
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5177
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 15, !dbg !5179
  %7 = load i32, i32* %delivery_system, align 4, !dbg !5179
  %cmp = icmp ne i32 %7, 5, !dbg !5180
  br i1 %cmp, label %if.then1, label %if.end9, !dbg !5181

if.then1:                                         ; preds = %do.end
  br label %do.body2, !dbg !5182

do.body2:                                         ; preds = %if.then1
  %8 = load i32, i32* @debug, align 4, !dbg !5184
  %tobool3 = icmp ne i32 %8, 0, !dbg !5184
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !5187

if.then4:                                         ; preds = %do.body2
  %9 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5184
  %delivery_system5 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %9, i32 0, i32 15, !dbg !5184
  %10 = load i32, i32* %delivery_system5, align 4, !dbg !5184
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.si21xx_set_frontend, i64 0, i64 0), i32 %10) #8, !dbg !5184
  br label %if.end7, !dbg !5184

if.end7:                                          ; preds = %if.then4, %do.body2
  br label %do.end8, !dbg !5187

do.end8:                                          ; preds = %if.end7
  store i32 -95, i32* %retval, align 4, !dbg !5188
  br label %return, !dbg !5188

if.end9:                                          ; preds = %do.end
  store i32 0, i32* %i, align 4, !dbg !5189
  br label %for.cond, !dbg !5191

for.cond:                                         ; preds = %for.inc, %if.end9
  %11 = load i32, i32* %i, align 4, !dbg !5192
  %cmp10 = icmp slt i32 %11, 10, !dbg !5194
  br i1 %cmp10, label %for.body, label %for.end, !dbg !5195

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !dbg !5196
  %idxprom = sext i32 %12 to i64, !dbg !5197
  %arrayidx = getelementptr [10 x i8], [10 x i8]* %inband_interferer_div4, i64 0, i64 %idxprom, !dbg !5197
  store i8 0, i8* %arrayidx, align 1, !dbg !5198
  %13 = load i32, i32* %i, align 4, !dbg !5199
  %idxprom11 = sext i32 %13 to i64, !dbg !5200
  %arrayidx12 = getelementptr [10 x i8], [10 x i8]* %inband_interferer_div2, i64 0, i64 %idxprom11, !dbg !5200
  store i8 0, i8* %arrayidx12, align 1, !dbg !5201
  br label %for.inc, !dbg !5200

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !5202
  %inc = add i32 %14, 1, !dbg !5202
  store i32 %inc, i32* %i, align 4, !dbg !5202
  br label %for.cond, !dbg !5203, !llvm.loop !5204

for.end:                                          ; preds = %for.cond
  store i32 -700000, i32* %if_limit_high, align 4, !dbg !5206
  store i32 -100000, i32* %if_limit_low, align 4, !dbg !5207
  store i32 0, i32* %lnb_lo, align 4, !dbg !5208
  store i32 0, i32* %lnb_uncertanity, align 4, !dbg !5209
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5210
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 0, !dbg !5211
  %16 = load i32, i32* %frequency, align 4, !dbg !5211
  %mul = mul i32 10, %16, !dbg !5212
  store i32 %mul, i32* %rf_freq, align 4, !dbg !5213
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5214
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 10, !dbg !5215
  %18 = load i32, i32* %symbol_rate, align 4, !dbg !5215
  %div = udiv i32 %18, 100, !dbg !5216
  store i32 %div, i32* %data_rate, align 4, !dbg !5217
  store i32 0, i32* %status, align 4, !dbg !5218
  %19 = load i32, i32* %rf_freq, align 4, !dbg !5219
  %20 = load i32, i32* %lnb_lo, align 4, !dbg !5220
  %sub = sub i32 %19, %20, !dbg !5221
  %21 = load i32, i32* %lnb_uncertanity, align 4, !dbg !5222
  %mul13 = mul i32 %21, 200, !dbg !5223
  %22 = load i32, i32* %data_rate, align 4, !dbg !5224
  %mul14 = mul i32 %22, 135, !dbg !5225
  %add = add i32 %mul13, %mul14, !dbg !5226
  %div15 = sdiv i32 %add, 200, !dbg !5227
  %sub16 = sub i32 %sub, %div15, !dbg !5228
  store i32 %sub16, i32* %band_low, align 4, !dbg !5229
  %23 = load i32, i32* %rf_freq, align 4, !dbg !5230
  %24 = load i32, i32* %lnb_lo, align 4, !dbg !5231
  %sub17 = sub i32 %23, %24, !dbg !5232
  %25 = load i32, i32* %lnb_uncertanity, align 4, !dbg !5233
  %mul18 = mul i32 %25, 200, !dbg !5234
  %26 = load i32, i32* %data_rate, align 4, !dbg !5235
  %mul19 = mul i32 %26, 135, !dbg !5236
  %add20 = add i32 %mul18, %mul19, !dbg !5237
  %div21 = sdiv i32 %add20, 200, !dbg !5238
  %add22 = add i32 %sub17, %div21, !dbg !5239
  store i32 %add22, i32* %band_high, align 4, !dbg !5240
  %27 = load i32, i32* %rf_freq, align 4, !dbg !5241
  %28 = load i32, i32* %lnb_lo, align 4, !dbg !5242
  %sub23 = sub i32 %27, %28, !dbg !5243
  %29 = load i32, i32* %if_limit_low, align 4, !dbg !5244
  %30 = load i32, i32* %if_limit_high, align 4, !dbg !5245
  %add24 = add i32 %29, %30, !dbg !5246
  %div25 = sdiv i32 %add24, 2, !dbg !5247
  %sub26 = sub i32 %sub23, %div25, !dbg !5248
  %div27 = sdiv i32 %sub26, 100000, !dbg !5249
  %mul28 = mul i32 100000, %div27, !dbg !5250
  store i32 %mul28, i32* %icoarse_tune_freq, align 4, !dbg !5251
  %31 = load i32, i32* %rf_freq, align 4, !dbg !5252
  %32 = load i32, i32* %lnb_lo, align 4, !dbg !5253
  %sub29 = sub i32 %31, %32, !dbg !5254
  %33 = load i32, i32* %icoarse_tune_freq, align 4, !dbg !5255
  %sub30 = sub i32 %sub29, %33, !dbg !5256
  store i32 %sub30, i32* %ifine_tune_freq, align 4, !dbg !5257
  store i32 0, i32* %i, align 4, !dbg !5258
  br label %for.cond31, !dbg !5260

for.cond31:                                       ; preds = %for.inc65, %for.end
  %34 = load i32, i32* %i, align 4, !dbg !5261
  %cmp32 = icmp slt i32 %34, 10, !dbg !5263
  br i1 %cmp32, label %for.body33, label %for.end67, !dbg !5264

for.body33:                                       ; preds = %for.cond31
  %35 = load i32, i32* %rf_freq, align 4, !dbg !5265
  %36 = load i32, i32* %lnb_lo, align 4, !dbg !5267
  %sub34 = sub i32 %35, %36, !dbg !5268
  %37 = load i32, i32* %i, align 4, !dbg !5269
  %idxprom35 = sext i32 %37 to i64, !dbg !5270
  %arrayidx36 = getelementptr [10 x i32], [10 x i32]* %afs, i64 0, i64 %idxprom35, !dbg !5270
  %38 = load i32, i32* %arrayidx36, align 4, !dbg !5270
  %mul37 = mul i32 %38, 2500, !dbg !5271
  %div38 = sdiv i32 %sub34, %mul37, !dbg !5272
  %39 = load i32, i32* %i, align 4, !dbg !5273
  %idxprom39 = sext i32 %39 to i64, !dbg !5274
  %arrayidx40 = getelementptr [10 x i32], [10 x i32]* %afs, i64 0, i64 %idxprom39, !dbg !5274
  %40 = load i32, i32* %arrayidx40, align 4, !dbg !5274
  %mul41 = mul i32 %40, 2500, !dbg !5275
  %mul42 = mul i32 %div38, %mul41, !dbg !5276
  %41 = load i32, i32* %i, align 4, !dbg !5277
  %idxprom43 = sext i32 %41 to i64, !dbg !5278
  %arrayidx44 = getelementptr [10 x i32], [10 x i32]* %afs, i64 0, i64 %idxprom43, !dbg !5278
  %42 = load i32, i32* %arrayidx44, align 4, !dbg !5278
  %mul45 = mul i32 %42, 2500, !dbg !5279
  %add46 = add i32 %mul42, %mul45, !dbg !5280
  store i32 %add46, i32* %x1, align 4, !dbg !5281
  %43 = load i32, i32* %rf_freq, align 4, !dbg !5282
  %44 = load i32, i32* %lnb_lo, align 4, !dbg !5283
  %sub47 = sub i32 %43, %44, !dbg !5284
  %45 = load i32, i32* %i, align 4, !dbg !5285
  %idxprom48 = sext i32 %45 to i64, !dbg !5286
  %arrayidx49 = getelementptr [10 x i32], [10 x i32]* %afs, i64 0, i64 %idxprom48, !dbg !5286
  %46 = load i32, i32* %arrayidx49, align 4, !dbg !5286
  %mul50 = mul i32 %46, 2500, !dbg !5287
  %div51 = sdiv i32 %sub47, %mul50, !dbg !5288
  %47 = load i32, i32* %i, align 4, !dbg !5289
  %idxprom52 = sext i32 %47 to i64, !dbg !5290
  %arrayidx53 = getelementptr [10 x i32], [10 x i32]* %afs, i64 0, i64 %idxprom52, !dbg !5290
  %48 = load i32, i32* %arrayidx53, align 4, !dbg !5290
  %mul54 = mul i32 %48, 2500, !dbg !5291
  %mul55 = mul i32 %div51, %mul54, !dbg !5292
  store i32 %mul55, i32* %x2, align 4, !dbg !5293
  %49 = load i32, i32* %band_low, align 4, !dbg !5294
  %50 = load i32, i32* %x1, align 4, !dbg !5296
  %cmp56 = icmp ult i32 %49, %50, !dbg !5297
  br i1 %cmp56, label %land.lhs.true, label %lor.lhs.false, !dbg !5298

land.lhs.true:                                    ; preds = %for.body33
  %51 = load i32, i32* %x1, align 4, !dbg !5299
  %52 = load i32, i32* %band_high, align 4, !dbg !5300
  %cmp57 = icmp ult i32 %51, %52, !dbg !5301
  br i1 %cmp57, label %if.then61, label %lor.lhs.false, !dbg !5302

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body33
  %53 = load i32, i32* %band_low, align 4, !dbg !5303
  %54 = load i32, i32* %x2, align 4, !dbg !5304
  %cmp58 = icmp ult i32 %53, %54, !dbg !5305
  br i1 %cmp58, label %land.lhs.true59, label %if.end64, !dbg !5306

land.lhs.true59:                                  ; preds = %lor.lhs.false
  %55 = load i32, i32* %x2, align 4, !dbg !5307
  %56 = load i32, i32* %band_high, align 4, !dbg !5308
  %cmp60 = icmp ult i32 %55, %56, !dbg !5309
  br i1 %cmp60, label %if.then61, label %if.end64, !dbg !5310

if.then61:                                        ; preds = %land.lhs.true59, %land.lhs.true
  %57 = load i32, i32* %i, align 4, !dbg !5311
  %idxprom62 = sext i32 %57 to i64, !dbg !5312
  %arrayidx63 = getelementptr [10 x i8], [10 x i8]* %inband_interferer_div4, i64 0, i64 %idxprom62, !dbg !5312
  store i8 1, i8* %arrayidx63, align 1, !dbg !5313
  br label %if.end64, !dbg !5312

if.end64:                                         ; preds = %if.then61, %land.lhs.true59, %lor.lhs.false
  br label %for.inc65, !dbg !5314

for.inc65:                                        ; preds = %if.end64
  %58 = load i32, i32* %i, align 4, !dbg !5315
  %inc66 = add i32 %58, 1, !dbg !5315
  store i32 %inc66, i32* %i, align 4, !dbg !5315
  br label %for.cond31, !dbg !5316, !llvm.loop !5317

for.end67:                                        ; preds = %for.cond31
  store i32 0, i32* %i, align 4, !dbg !5319
  br label %for.cond68, !dbg !5321

for.cond68:                                       ; preds = %for.inc104, %for.end67
  %59 = load i32, i32* %i, align 4, !dbg !5322
  %cmp69 = icmp slt i32 %59, 10, !dbg !5324
  br i1 %cmp69, label %for.body70, label %for.end106, !dbg !5325

for.body70:                                       ; preds = %for.cond68
  %60 = load i32, i32* %rf_freq, align 4, !dbg !5326
  %61 = load i32, i32* %lnb_lo, align 4, !dbg !5328
  %sub71 = sub i32 %60, %61, !dbg !5329
  %62 = load i32, i32* %i, align 4, !dbg !5330
  %idxprom72 = sext i32 %62 to i64, !dbg !5331
  %arrayidx73 = getelementptr [10 x i32], [10 x i32]* %afs, i64 0, i64 %idxprom72, !dbg !5331
  %63 = load i32, i32* %arrayidx73, align 4, !dbg !5331
  %mul74 = mul i32 %63, 5000, !dbg !5332
  %div75 = sdiv i32 %sub71, %mul74, !dbg !5333
  %64 = load i32, i32* %i, align 4, !dbg !5334
  %idxprom76 = sext i32 %64 to i64, !dbg !5335
  %arrayidx77 = getelementptr [10 x i32], [10 x i32]* %afs, i64 0, i64 %idxprom76, !dbg !5335
  %65 = load i32, i32* %arrayidx77, align 4, !dbg !5335
  %mul78 = mul i32 %65, 5000, !dbg !5336
  %mul79 = mul i32 %div75, %mul78, !dbg !5337
  %66 = load i32, i32* %i, align 4, !dbg !5338
  %idxprom80 = sext i32 %66 to i64, !dbg !5339
  %arrayidx81 = getelementptr [10 x i32], [10 x i32]* %afs, i64 0, i64 %idxprom80, !dbg !5339
  %67 = load i32, i32* %arrayidx81, align 4, !dbg !5339
  %mul82 = mul i32 %67, 5000, !dbg !5340
  %add83 = add i32 %mul79, %mul82, !dbg !5341
  store i32 %add83, i32* %x1, align 4, !dbg !5342
  %68 = load i32, i32* %rf_freq, align 4, !dbg !5343
  %69 = load i32, i32* %lnb_lo, align 4, !dbg !5344
  %sub84 = sub i32 %68, %69, !dbg !5345
  %70 = load i32, i32* %i, align 4, !dbg !5346
  %idxprom85 = sext i32 %70 to i64, !dbg !5347
  %arrayidx86 = getelementptr [10 x i32], [10 x i32]* %afs, i64 0, i64 %idxprom85, !dbg !5347
  %71 = load i32, i32* %arrayidx86, align 4, !dbg !5347
  %mul87 = mul i32 %71, 5000, !dbg !5348
  %div88 = sdiv i32 %sub84, %mul87, !dbg !5349
  %72 = load i32, i32* %i, align 4, !dbg !5350
  %idxprom89 = sext i32 %72 to i64, !dbg !5351
  %arrayidx90 = getelementptr [10 x i32], [10 x i32]* %afs, i64 0, i64 %idxprom89, !dbg !5351
  %73 = load i32, i32* %arrayidx90, align 4, !dbg !5351
  %mul91 = mul i32 %73, 5000, !dbg !5352
  %mul92 = mul i32 %div88, %mul91, !dbg !5353
  store i32 %mul92, i32* %x2, align 4, !dbg !5354
  %74 = load i32, i32* %band_low, align 4, !dbg !5355
  %75 = load i32, i32* %x1, align 4, !dbg !5357
  %cmp93 = icmp ult i32 %74, %75, !dbg !5358
  br i1 %cmp93, label %land.lhs.true94, label %lor.lhs.false96, !dbg !5359

land.lhs.true94:                                  ; preds = %for.body70
  %76 = load i32, i32* %x1, align 4, !dbg !5360
  %77 = load i32, i32* %band_high, align 4, !dbg !5361
  %cmp95 = icmp ult i32 %76, %77, !dbg !5362
  br i1 %cmp95, label %if.then100, label %lor.lhs.false96, !dbg !5363

lor.lhs.false96:                                  ; preds = %land.lhs.true94, %for.body70
  %78 = load i32, i32* %band_low, align 4, !dbg !5364
  %79 = load i32, i32* %x2, align 4, !dbg !5365
  %cmp97 = icmp ult i32 %78, %79, !dbg !5366
  br i1 %cmp97, label %land.lhs.true98, label %if.end103, !dbg !5367

land.lhs.true98:                                  ; preds = %lor.lhs.false96
  %80 = load i32, i32* %x2, align 4, !dbg !5368
  %81 = load i32, i32* %band_high, align 4, !dbg !5369
  %cmp99 = icmp ult i32 %80, %81, !dbg !5370
  br i1 %cmp99, label %if.then100, label %if.end103, !dbg !5371

if.then100:                                       ; preds = %land.lhs.true98, %land.lhs.true94
  %82 = load i32, i32* %i, align 4, !dbg !5372
  %idxprom101 = sext i32 %82 to i64, !dbg !5373
  %arrayidx102 = getelementptr [10 x i8], [10 x i8]* %inband_interferer_div2, i64 0, i64 %idxprom101, !dbg !5373
  store i8 1, i8* %arrayidx102, align 1, !dbg !5374
  br label %if.end103, !dbg !5373

if.end103:                                        ; preds = %if.then100, %land.lhs.true98, %lor.lhs.false96
  br label %for.inc104, !dbg !5375

for.inc104:                                       ; preds = %if.end103
  %83 = load i32, i32* %i, align 4, !dbg !5376
  %inc105 = add i32 %83, 1, !dbg !5376
  store i32 %inc105, i32* %i, align 4, !dbg !5376
  br label %for.cond68, !dbg !5377, !llvm.loop !5378

for.end106:                                       ; preds = %for.cond68
  store i8 1, i8* %inband_interferer_ind, align 1, !dbg !5380
  store i32 0, i32* %i, align 4, !dbg !5381
  br label %for.cond107, !dbg !5383

for.cond107:                                      ; preds = %for.inc119, %for.end106
  %84 = load i32, i32* %i, align 4, !dbg !5384
  %cmp108 = icmp slt i32 %84, 10, !dbg !5386
  br i1 %cmp108, label %for.body109, label %for.end121, !dbg !5387

for.body109:                                      ; preds = %for.cond107
  %85 = load i32, i32* %i, align 4, !dbg !5388
  %idxprom110 = sext i32 %85 to i64, !dbg !5391
  %arrayidx111 = getelementptr [10 x i8], [10 x i8]* %inband_interferer_div2, i64 0, i64 %idxprom110, !dbg !5391
  %86 = load i8, i8* %arrayidx111, align 1, !dbg !5391
  %tobool112 = trunc i8 %86 to i1, !dbg !5391
  br i1 %tobool112, label %if.then117, label %lor.lhs.false113, !dbg !5392

lor.lhs.false113:                                 ; preds = %for.body109
  %87 = load i32, i32* %i, align 4, !dbg !5393
  %idxprom114 = sext i32 %87 to i64, !dbg !5394
  %arrayidx115 = getelementptr [10 x i8], [10 x i8]* %inband_interferer_div4, i64 0, i64 %idxprom114, !dbg !5394
  %88 = load i8, i8* %arrayidx115, align 1, !dbg !5394
  %tobool116 = trunc i8 %88 to i1, !dbg !5394
  br i1 %tobool116, label %if.then117, label %if.end118, !dbg !5395

if.then117:                                       ; preds = %lor.lhs.false113, %for.body109
  store i8 0, i8* %inband_interferer_ind, align 1, !dbg !5396
  br label %for.end121, !dbg !5398

if.end118:                                        ; preds = %lor.lhs.false113
  br label %for.inc119, !dbg !5399

for.inc119:                                       ; preds = %if.end118
  %89 = load i32, i32* %i, align 4, !dbg !5400
  %inc120 = add i32 %89, 1, !dbg !5400
  store i32 %inc120, i32* %i, align 4, !dbg !5400
  br label %for.cond107, !dbg !5401, !llvm.loop !5402

for.end121:                                       ; preds = %if.then117, %for.cond107
  %90 = load i8, i8* %inband_interferer_ind, align 1, !dbg !5404
  %tobool122 = trunc i8 %90 to i1, !dbg !5404
  br i1 %tobool122, label %if.then123, label %if.else, !dbg !5406

if.then123:                                       ; preds = %for.end121
  store i32 0, i32* %i, align 4, !dbg !5407
  br label %for.cond124, !dbg !5410

for.cond124:                                      ; preds = %for.inc134, %if.then123
  %91 = load i32, i32* %i, align 4, !dbg !5411
  %cmp125 = icmp slt i32 %91, 10, !dbg !5413
  br i1 %cmp125, label %for.body126, label %for.end136, !dbg !5414

for.body126:                                      ; preds = %for.cond124
  %92 = load i32, i32* %i, align 4, !dbg !5415
  %idxprom127 = sext i32 %92 to i64, !dbg !5418
  %arrayidx128 = getelementptr [10 x i8], [10 x i8]* %inband_interferer_div2, i64 0, i64 %idxprom127, !dbg !5418
  %93 = load i8, i8* %arrayidx128, align 1, !dbg !5418
  %tobool129 = trunc i8 %93 to i1, !dbg !5418
  br i1 %tobool129, label %if.end133, label %if.then130, !dbg !5419

if.then130:                                       ; preds = %for.body126
  %94 = load i32, i32* %i, align 4, !dbg !5420
  %idxprom131 = sext i32 %94 to i64, !dbg !5422
  %arrayidx132 = getelementptr [10 x i32], [10 x i32]* %afs, i64 0, i64 %idxprom131, !dbg !5422
  %95 = load i32, i32* %arrayidx132, align 4, !dbg !5422
  %conv = trunc i32 %95 to i8, !dbg !5423
  store i8 %conv, i8* %sample_rate, align 1, !dbg !5424
  br label %for.end136, !dbg !5425

if.end133:                                        ; preds = %for.body126
  br label %for.inc134, !dbg !5426

for.inc134:                                       ; preds = %if.end133
  %96 = load i32, i32* %i, align 4, !dbg !5427
  %inc135 = add i32 %96, 1, !dbg !5427
  store i32 %inc135, i32* %i, align 4, !dbg !5427
  br label %for.cond124, !dbg !5428, !llvm.loop !5429

for.end136:                                       ; preds = %if.then130, %for.cond124
  br label %if.end157, !dbg !5431

if.else:                                          ; preds = %for.end121
  store i32 0, i32* %i, align 4, !dbg !5432
  br label %for.cond137, !dbg !5435

for.cond137:                                      ; preds = %for.inc154, %if.else
  %97 = load i32, i32* %i, align 4, !dbg !5436
  %cmp138 = icmp slt i32 %97, 10, !dbg !5438
  br i1 %cmp138, label %for.body140, label %for.end156, !dbg !5439

for.body140:                                      ; preds = %for.cond137
  %98 = load i32, i32* %i, align 4, !dbg !5440
  %idxprom141 = sext i32 %98 to i64, !dbg !5443
  %arrayidx142 = getelementptr [10 x i8], [10 x i8]* %inband_interferer_div2, i64 0, i64 %idxprom141, !dbg !5443
  %99 = load i8, i8* %arrayidx142, align 1, !dbg !5443
  %tobool143 = trunc i8 %99 to i1, !dbg !5443
  br i1 %tobool143, label %if.then149, label %lor.lhs.false145, !dbg !5444

lor.lhs.false145:                                 ; preds = %for.body140
  %100 = load i32, i32* %i, align 4, !dbg !5445
  %idxprom146 = sext i32 %100 to i64, !dbg !5446
  %arrayidx147 = getelementptr [10 x i8], [10 x i8]* %inband_interferer_div4, i64 0, i64 %idxprom146, !dbg !5446
  %101 = load i8, i8* %arrayidx147, align 1, !dbg !5446
  %tobool148 = trunc i8 %101 to i1, !dbg !5446
  br i1 %tobool148, label %if.end153, label %if.then149, !dbg !5447

if.then149:                                       ; preds = %lor.lhs.false145, %for.body140
  %102 = load i32, i32* %i, align 4, !dbg !5448
  %idxprom150 = sext i32 %102 to i64, !dbg !5450
  %arrayidx151 = getelementptr [10 x i32], [10 x i32]* %afs, i64 0, i64 %idxprom150, !dbg !5450
  %103 = load i32, i32* %arrayidx151, align 4, !dbg !5450
  %conv152 = trunc i32 %103 to i8, !dbg !5451
  store i8 %conv152, i8* %sample_rate, align 1, !dbg !5452
  br label %for.end156, !dbg !5453

if.end153:                                        ; preds = %lor.lhs.false145
  br label %for.inc154, !dbg !5454

for.inc154:                                       ; preds = %if.end153
  %104 = load i32, i32* %i, align 4, !dbg !5455
  %inc155 = add i32 %104, 1, !dbg !5455
  store i32 %inc155, i32* %i, align 4, !dbg !5455
  br label %for.cond137, !dbg !5456, !llvm.loop !5457

for.end156:                                       ; preds = %if.then149, %for.cond137
  br label %if.end157

if.end157:                                        ; preds = %for.end156, %for.end136
  %105 = load i8, i8* %sample_rate, align 1, !dbg !5459
  %conv158 = zext i8 %105 to i32, !dbg !5459
  %cmp159 = icmp sgt i32 %conv158, 207, !dbg !5461
  br i1 %cmp159, label %if.then165, label %lor.lhs.false161, !dbg !5462

lor.lhs.false161:                                 ; preds = %if.end157
  %106 = load i8, i8* %sample_rate, align 1, !dbg !5463
  %conv162 = zext i8 %106 to i32, !dbg !5463
  %cmp163 = icmp slt i32 %conv162, 192, !dbg !5464
  br i1 %cmp163, label %if.then165, label %if.end166, !dbg !5465

if.then165:                                       ; preds = %lor.lhs.false161, %if.end157
  store i8 -56, i8* %sample_rate, align 1, !dbg !5466
  br label %if.end166, !dbg !5467

if.end166:                                        ; preds = %if.then165, %lor.lhs.false161
  %107 = load i32, i32* %ifine_tune_freq, align 4, !dbg !5468
  %div167 = sdiv i32 %107, 10, !dbg !5469
  %mul168 = mul i32 16384, %div167, !dbg !5470
  %108 = load i8, i8* %sample_rate, align 1, !dbg !5471
  %conv169 = zext i8 %108 to i32, !dbg !5472
  %mul170 = mul i32 %conv169, 1000, !dbg !5473
  %div171 = sdiv i32 %mul168, %mul170, !dbg !5474
  store i32 %div171, i32* %fine_tune_freq, align 4, !dbg !5475
  %109 = load i32, i32* %icoarse_tune_freq, align 4, !dbg !5476
  %div172 = sdiv i32 %109, 100000, !dbg !5477
  %conv173 = trunc i32 %div172 to i8, !dbg !5478
  store i8 %conv173, i8* %coarse_tune_freq, align 1, !dbg !5479
  %110 = load i8, i8* %sample_rate, align 1, !dbg !5480
  %arrayidx174 = getelementptr [4 x i8], [4 x i8]* %regs, i64 0, i64 0, !dbg !5481
  store i8 %110, i8* %arrayidx174, align 1, !dbg !5482
  %111 = load i8, i8* %coarse_tune_freq, align 1, !dbg !5483
  %arrayidx175 = getelementptr [4 x i8], [4 x i8]* %regs, i64 0, i64 1, !dbg !5484
  store i8 %111, i8* %arrayidx175, align 1, !dbg !5485
  %112 = load i32, i32* %fine_tune_freq, align 4, !dbg !5486
  %and = and i32 %112, 255, !dbg !5487
  %conv176 = trunc i32 %and to i8, !dbg !5486
  %arrayidx177 = getelementptr [4 x i8], [4 x i8]* %regs, i64 0, i64 2, !dbg !5488
  store i8 %conv176, i8* %arrayidx177, align 1, !dbg !5489
  %113 = load i32, i32* %fine_tune_freq, align 4, !dbg !5490
  %shr = ashr i32 %113, 8, !dbg !5491
  %and178 = and i32 %shr, 255, !dbg !5492
  %conv179 = trunc i32 %and178 to i8, !dbg !5490
  %arrayidx180 = getelementptr [4 x i8], [4 x i8]* %regs, i64 0, i64 3, !dbg !5493
  store i8 %conv179, i8* %arrayidx180, align 1, !dbg !5494
  %114 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5495
  %arrayidx181 = getelementptr [4 x i8], [4 x i8]* %regs, i64 0, i64 0, !dbg !5496
  %call182 = call i32 @si21_writeregs(%struct.si21xx_state* %114, i8 zeroext 21, i8* %arrayidx181, i32 4) #9, !dbg !5497
  %115 = load i32, i32* %status, align 4, !dbg !5498
  %or = or i32 %115, %call182, !dbg !5498
  store i32 %or, i32* %status, align 4, !dbg !5498
  %116 = load i8, i8* %sample_rate, align 1, !dbg !5499
  %conv183 = zext i8 %116 to i32, !dbg !5499
  %117 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5500
  %fs = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %117, i32 0, i32 5, !dbg !5501
  store i32 %conv183, i32* %fs, align 8, !dbg !5502
  %118 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5503
  %119 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5504
  %symbol_rate184 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %119, i32 0, i32 10, !dbg !5505
  %120 = load i32, i32* %symbol_rate184, align 4, !dbg !5505
  %121 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5506
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %121, i32 0, i32 5, !dbg !5507
  %122 = load i32, i32* %fec_inner, align 4, !dbg !5507
  %call185 = call i32 @si21xx_setacquire(%struct.dvb_frontend* %118, i32 %120, i32 %122) #9, !dbg !5508
  store i32 0, i32* %retval, align 4, !dbg !5509
  br label %return, !dbg !5509

return:                                           ; preds = %if.end166, %do.end8
  %123 = load i32, i32* %retval, align 4, !dbg !5510
  ret i32 %123, !dbg !5510
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !5511 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.si21xx_state*, align 8
  %regs_read = alloca [2 x i8], align 1
  %reg_read = alloca i8, align 1
  %i = alloca i8, align 1
  %lock = alloca i8, align 1
  %signal = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5512, metadata !DIExpression()), !dbg !5513
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5514, metadata !DIExpression()), !dbg !5515
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state, metadata !5516, metadata !DIExpression()), !dbg !5517
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5518
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5519
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5519
  %2 = bitcast i8* %1 to %struct.si21xx_state*, !dbg !5518
  store %struct.si21xx_state* %2, %struct.si21xx_state** %state, align 8, !dbg !5517
  call void @llvm.dbg.declare(metadata [2 x i8]* %regs_read, metadata !5520, metadata !DIExpression()), !dbg !5521
  call void @llvm.dbg.declare(metadata i8* %reg_read, metadata !5522, metadata !DIExpression()), !dbg !5523
  call void @llvm.dbg.declare(metadata i8* %i, metadata !5524, metadata !DIExpression()), !dbg !5525
  call void @llvm.dbg.declare(metadata i8* %lock, metadata !5526, metadata !DIExpression()), !dbg !5527
  call void @llvm.dbg.declare(metadata i8* %signal, metadata !5528, metadata !DIExpression()), !dbg !5529
  %3 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5530
  %call = call zeroext i8 @si21_readreg(%struct.si21xx_state* %3, i8 zeroext 40) #9, !dbg !5531
  store i8 %call, i8* %signal, align 1, !dbg !5529
  %4 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5532
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %regs_read, i64 0, i64 0, !dbg !5533
  %call1 = call i32 @si21_readregs(%struct.si21xx_state* %4, i8 zeroext 15, i8* %arraydecay, i8 zeroext 2) #9, !dbg !5534
  store i8 0, i8* %reg_read, align 1, !dbg !5535
  store i8 0, i8* %i, align 1, !dbg !5536
  br label %for.cond, !dbg !5538

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i8, i8* %i, align 1, !dbg !5539
  %conv = zext i8 %5 to i32, !dbg !5539
  %cmp = icmp slt i32 %conv, 7, !dbg !5541
  br i1 %cmp, label %for.body, label %for.end, !dbg !5542

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %regs_read, i64 0, i64 0, !dbg !5543
  %6 = load i8, i8* %arrayidx, align 1, !dbg !5543
  %conv3 = zext i8 %6 to i32, !dbg !5543
  %7 = load i8, i8* %i, align 1, !dbg !5544
  %conv4 = zext i8 %7 to i32, !dbg !5544
  %shr = ashr i32 %conv3, %conv4, !dbg !5545
  %and = and i32 %shr, 1, !dbg !5546
  %8 = load i8, i8* %i, align 1, !dbg !5547
  %conv5 = zext i8 %8 to i32, !dbg !5547
  %sub = sub i32 6, %conv5, !dbg !5548
  %shl = shl i32 %and, %sub, !dbg !5549
  %9 = load i8, i8* %reg_read, align 1, !dbg !5550
  %conv6 = zext i8 %9 to i32, !dbg !5550
  %or = or i32 %conv6, %shl, !dbg !5550
  %conv7 = trunc i32 %or to i8, !dbg !5550
  store i8 %conv7, i8* %reg_read, align 1, !dbg !5550
  br label %for.inc, !dbg !5551

for.inc:                                          ; preds = %for.body
  %10 = load i8, i8* %i, align 1, !dbg !5552
  %inc = add i8 %10, 1, !dbg !5552
  store i8 %inc, i8* %i, align 1, !dbg !5552
  br label %for.cond, !dbg !5553, !llvm.loop !5554

for.end:                                          ; preds = %for.cond
  %11 = load i8, i8* %reg_read, align 1, !dbg !5556
  %conv8 = zext i8 %11 to i32, !dbg !5556
  %and9 = and i32 %conv8, 127, !dbg !5557
  %arrayidx10 = getelementptr [2 x i8], [2 x i8]* %regs_read, i64 0, i64 1, !dbg !5558
  %12 = load i8, i8* %arrayidx10, align 1, !dbg !5558
  %conv11 = zext i8 %12 to i32, !dbg !5558
  %and12 = and i32 %conv11, 128, !dbg !5559
  %or13 = or i32 %and9, %and12, !dbg !5560
  %conv14 = trunc i32 %or13 to i8, !dbg !5561
  store i8 %conv14, i8* %lock, align 1, !dbg !5562
  br label %do.body, !dbg !5563

do.body:                                          ; preds = %for.end
  %13 = load i32, i32* @debug, align 4, !dbg !5564
  %tobool = icmp ne i32 %13, 0, !dbg !5564
  br i1 %tobool, label %if.then, label %if.end, !dbg !5567

if.then:                                          ; preds = %do.body
  %14 = load i8, i8* %lock, align 1, !dbg !5564
  %conv15 = zext i8 %14 to i32, !dbg !5564
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.si21_read_status, i64 0, i64 0), i32 %conv15) #8, !dbg !5564
  br label %if.end, !dbg !5564

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5567

do.end:                                           ; preds = %if.end
  %15 = load i32*, i32** %status.addr, align 8, !dbg !5568
  store i32 0, i32* %15, align 4, !dbg !5569
  %16 = load i8, i8* %signal, align 1, !dbg !5570
  %conv17 = zext i8 %16 to i32, !dbg !5570
  %cmp18 = icmp sgt i32 %conv17, 10, !dbg !5572
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !5573

if.then20:                                        ; preds = %do.end
  %17 = load i32*, i32** %status.addr, align 8, !dbg !5574
  %18 = load i32, i32* %17, align 4, !dbg !5575
  %or21 = or i32 %18, 1, !dbg !5575
  store i32 %or21, i32* %17, align 4, !dbg !5575
  br label %if.end22, !dbg !5576

if.end22:                                         ; preds = %if.then20, %do.end
  %19 = load i8, i8* %lock, align 1, !dbg !5577
  %conv23 = zext i8 %19 to i32, !dbg !5577
  %and24 = and i32 %conv23, 2, !dbg !5579
  %tobool25 = icmp ne i32 %and24, 0, !dbg !5579
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !5580

if.then26:                                        ; preds = %if.end22
  %20 = load i32*, i32** %status.addr, align 8, !dbg !5581
  %21 = load i32, i32* %20, align 4, !dbg !5582
  %or27 = or i32 %21, 2, !dbg !5582
  store i32 %or27, i32* %20, align 4, !dbg !5582
  br label %if.end28, !dbg !5583

if.end28:                                         ; preds = %if.then26, %if.end22
  %22 = load i8, i8* %lock, align 1, !dbg !5584
  %conv29 = zext i8 %22 to i32, !dbg !5584
  %and30 = and i32 %conv29, 32, !dbg !5586
  %tobool31 = icmp ne i32 %and30, 0, !dbg !5586
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !5587

if.then32:                                        ; preds = %if.end28
  %23 = load i32*, i32** %status.addr, align 8, !dbg !5588
  %24 = load i32, i32* %23, align 4, !dbg !5589
  %or33 = or i32 %24, 4, !dbg !5589
  store i32 %or33, i32* %23, align 4, !dbg !5589
  br label %if.end34, !dbg !5590

if.end34:                                         ; preds = %if.then32, %if.end28
  %25 = load i8, i8* %lock, align 1, !dbg !5591
  %conv35 = zext i8 %25 to i32, !dbg !5591
  %and36 = and i32 %conv35, 64, !dbg !5593
  %tobool37 = icmp ne i32 %and36, 0, !dbg !5593
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !5594

if.then38:                                        ; preds = %if.end34
  %26 = load i32*, i32** %status.addr, align 8, !dbg !5595
  %27 = load i32, i32* %26, align 4, !dbg !5596
  %or39 = or i32 %27, 8, !dbg !5596
  store i32 %or39, i32* %26, align 4, !dbg !5596
  br label %if.end40, !dbg !5597

if.end40:                                         ; preds = %if.then38, %if.end34
  %28 = load i8, i8* %lock, align 1, !dbg !5598
  %conv41 = zext i8 %28 to i32, !dbg !5598
  %and42 = and i32 %conv41, 123, !dbg !5600
  %cmp43 = icmp eq i32 %and42, 123, !dbg !5601
  br i1 %cmp43, label %if.then45, label %if.end47, !dbg !5602

if.then45:                                        ; preds = %if.end40
  %29 = load i32*, i32** %status.addr, align 8, !dbg !5603
  %30 = load i32, i32* %29, align 4, !dbg !5604
  %or46 = or i32 %30, 16, !dbg !5604
  store i32 %or46, i32* %29, align 4, !dbg !5604
  br label %if.end47, !dbg !5605

if.end47:                                         ; preds = %if.then45, %if.end40
  ret i32 0, !dbg !5606
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5607 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %state = alloca %struct.si21xx_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5608, metadata !DIExpression()), !dbg !5609
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5610, metadata !DIExpression()), !dbg !5611
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state, metadata !5612, metadata !DIExpression()), !dbg !5613
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5614
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5615
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5615
  %2 = bitcast i8* %1 to %struct.si21xx_state*, !dbg !5614
  store %struct.si21xx_state* %2, %struct.si21xx_state** %state, align 8, !dbg !5613
  br label %do.body, !dbg !5616

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5617
  %tobool = icmp ne i32 %3, 0, !dbg !5617
  br i1 %tobool, label %if.then, label %if.end, !dbg !5620

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.si21_read_ber, i64 0, i64 0)) #8, !dbg !5617
  br label %if.end, !dbg !5617

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5620

do.end:                                           ; preds = %if.end
  %4 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5621
  %errmode = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %4, i32 0, i32 4, !dbg !5623
  %5 = load i32, i32* %errmode, align 4, !dbg !5623
  %cmp = icmp ne i32 %5, 0, !dbg !5624
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5625

if.then1:                                         ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !5626
  br label %return, !dbg !5626

if.end2:                                          ; preds = %do.end
  %6 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5627
  %call3 = call zeroext i8 @si21_readreg(%struct.si21xx_state* %6, i8 zeroext 29) #9, !dbg !5628
  %conv = zext i8 %call3 to i32, !dbg !5628
  %shl = shl i32 %conv, 8, !dbg !5629
  %7 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5630
  %call4 = call zeroext i8 @si21_readreg(%struct.si21xx_state* %7, i8 zeroext 30) #9, !dbg !5631
  %conv5 = zext i8 %call4 to i32, !dbg !5631
  %or = or i32 %shl, %conv5, !dbg !5632
  %8 = load i32*, i32** %ber.addr, align 8, !dbg !5633
  store i32 %or, i32* %8, align 4, !dbg !5634
  store i32 0, i32* %retval, align 4, !dbg !5635
  br label %return, !dbg !5635

return:                                           ; preds = %if.end2, %if.then1
  %9 = load i32, i32* %retval, align 4, !dbg !5636
  ret i32 %9, !dbg !5636
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21_read_signal_strength(%struct.dvb_frontend* %fe, i16* %strength) #0 !dbg !5637 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %strength.addr = alloca i16*, align 8
  %state = alloca %struct.si21xx_state*, align 8
  %signal = alloca i16, align 2
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5638, metadata !DIExpression()), !dbg !5639
  store i16* %strength, i16** %strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %strength.addr, metadata !5640, metadata !DIExpression()), !dbg !5641
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state, metadata !5642, metadata !DIExpression()), !dbg !5643
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5644
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5645
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5645
  %2 = bitcast i8* %1 to %struct.si21xx_state*, !dbg !5644
  store %struct.si21xx_state* %2, %struct.si21xx_state** %state, align 8, !dbg !5643
  call void @llvm.dbg.declare(metadata i16* %signal, metadata !5646, metadata !DIExpression()), !dbg !5647
  %3 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5648
  %call = call zeroext i8 @si21_readreg(%struct.si21xx_state* %3, i8 zeroext 39) #9, !dbg !5649
  %conv = zext i8 %call to i32, !dbg !5649
  %mul = mul i32 3, %conv, !dbg !5650
  %4 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5651
  %call1 = call zeroext i8 @si21_readreg(%struct.si21xx_state* %4, i8 zeroext 40) #9, !dbg !5652
  %conv2 = zext i8 %call1 to i32, !dbg !5652
  %mul3 = mul i32 %mul, %conv2, !dbg !5653
  %conv4 = trunc i32 %mul3 to i16, !dbg !5654
  store i16 %conv4, i16* %signal, align 2, !dbg !5647
  br label %do.body, !dbg !5655

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @debug, align 4, !dbg !5656
  %tobool = icmp ne i32 %5, 0, !dbg !5656
  br i1 %tobool, label %if.then, label %if.end, !dbg !5659

if.then:                                          ; preds = %do.body
  %6 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5656
  %call5 = call zeroext i8 @si21_readreg(%struct.si21xx_state* %6, i8 zeroext 39) #9, !dbg !5656
  %conv6 = zext i8 %call5 to i32, !dbg !5656
  %7 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5656
  %call7 = call zeroext i8 @si21_readreg(%struct.si21xx_state* %7, i8 zeroext 40) #9, !dbg !5656
  %conv8 = zext i8 %call7 to i32, !dbg !5656
  %8 = load i16, i16* %signal, align 2, !dbg !5656
  %conv9 = zext i16 %8 to i32, !dbg !5656
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.si21_read_signal_strength, i64 0, i64 0), i32 %conv6, i32 %conv8, i32 %conv9) #8, !dbg !5656
  br label %if.end, !dbg !5656

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5659

do.end:                                           ; preds = %if.end
  %9 = load i16, i16* %signal, align 2, !dbg !5660
  %conv11 = zext i16 %9 to i32, !dbg !5660
  %shl = shl i32 %conv11, 4, !dbg !5660
  %conv12 = trunc i32 %shl to i16, !dbg !5660
  store i16 %conv12, i16* %signal, align 2, !dbg !5660
  %10 = load i16, i16* %signal, align 2, !dbg !5661
  %11 = load i16*, i16** %strength.addr, align 8, !dbg !5662
  store i16 %10, i16* %11, align 2, !dbg !5663
  ret i32 0, !dbg !5664
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5665 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %state = alloca %struct.si21xx_state*, align 8
  %xsnr = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5666, metadata !DIExpression()), !dbg !5667
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5668, metadata !DIExpression()), !dbg !5669
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state, metadata !5670, metadata !DIExpression()), !dbg !5671
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5672
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5673
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5673
  %2 = bitcast i8* %1 to %struct.si21xx_state*, !dbg !5672
  store %struct.si21xx_state* %2, %struct.si21xx_state** %state, align 8, !dbg !5671
  call void @llvm.dbg.declare(metadata i32* %xsnr, metadata !5674, metadata !DIExpression()), !dbg !5675
  %3 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5676
  %call = call zeroext i8 @si21_readreg(%struct.si21xx_state* %3, i8 zeroext 36) #9, !dbg !5677
  %conv = zext i8 %call to i32, !dbg !5677
  %shl = shl i32 %conv, 8, !dbg !5678
  %4 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5679
  %call1 = call zeroext i8 @si21_readreg(%struct.si21xx_state* %4, i8 zeroext 37) #9, !dbg !5680
  %conv2 = zext i8 %call1 to i32, !dbg !5680
  %or = or i32 %shl, %conv2, !dbg !5681
  %sub = sub i32 65535, %or, !dbg !5682
  store i32 %sub, i32* %xsnr, align 4, !dbg !5675
  %5 = load i32, i32* %xsnr, align 4, !dbg !5683
  %sub3 = sub i32 %5, 41216, !dbg !5684
  %mul = mul i32 3, %sub3, !dbg !5685
  store i32 %mul, i32* %xsnr, align 4, !dbg !5686
  %6 = load i32, i32* %xsnr, align 4, !dbg !5687
  %cmp = icmp sgt i32 %6, 65535, !dbg !5688
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5689

cond.true:                                        ; preds = %entry
  br label %cond.end9, !dbg !5689

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %xsnr, align 4, !dbg !5690
  %cmp5 = icmp slt i32 %7, 0, !dbg !5691
  br i1 %cmp5, label %cond.true7, label %cond.false8, !dbg !5692

cond.true7:                                       ; preds = %cond.false
  br label %cond.end, !dbg !5692

cond.false8:                                      ; preds = %cond.false
  %8 = load i32, i32* %xsnr, align 4, !dbg !5693
  br label %cond.end, !dbg !5692

cond.end:                                         ; preds = %cond.false8, %cond.true7
  %cond = phi i32 [ 0, %cond.true7 ], [ %8, %cond.false8 ], !dbg !5692
  br label %cond.end9, !dbg !5689

cond.end9:                                        ; preds = %cond.end, %cond.true
  %cond10 = phi i32 [ 65535, %cond.true ], [ %cond, %cond.end ], !dbg !5689
  %conv11 = trunc i32 %cond10 to i16, !dbg !5689
  %9 = load i16*, i16** %snr.addr, align 8, !dbg !5694
  store i16 %conv11, i16* %9, align 2, !dbg !5695
  br label %do.body, !dbg !5696

do.body:                                          ; preds = %cond.end9
  %10 = load i32, i32* @debug, align 4, !dbg !5697
  %tobool = icmp ne i32 %10, 0, !dbg !5697
  br i1 %tobool, label %if.then, label %if.end, !dbg !5700

if.then:                                          ; preds = %do.body
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.si21_read_snr, i64 0, i64 0)) #8, !dbg !5697
  br label %if.end, !dbg !5697

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5700

do.end:                                           ; preds = %if.end
  ret i32 0, !dbg !5701
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !5702 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  %state = alloca %struct.si21xx_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5703, metadata !DIExpression()), !dbg !5704
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !5705, metadata !DIExpression()), !dbg !5706
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state, metadata !5707, metadata !DIExpression()), !dbg !5708
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5709
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5710
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5710
  %2 = bitcast i8* %1 to %struct.si21xx_state*, !dbg !5709
  store %struct.si21xx_state* %2, %struct.si21xx_state** %state, align 8, !dbg !5708
  br label %do.body, !dbg !5711

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5712
  %tobool = icmp ne i32 %3, 0, !dbg !5712
  br i1 %tobool, label %if.then, label %if.end, !dbg !5715

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.si21_read_ucblocks, i64 0, i64 0)) #8, !dbg !5712
  br label %if.end, !dbg !5712

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5715

do.end:                                           ; preds = %if.end
  %4 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5716
  %errmode = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %4, i32 0, i32 4, !dbg !5718
  %5 = load i32, i32* %errmode, align 4, !dbg !5718
  %cmp = icmp ne i32 %5, 1, !dbg !5719
  br i1 %cmp, label %if.then1, label %if.else, !dbg !5720

if.then1:                                         ; preds = %do.end
  %6 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5721
  store i32 0, i32* %6, align 4, !dbg !5722
  br label %if.end5, !dbg !5723

if.else:                                          ; preds = %do.end
  %7 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5724
  %call2 = call zeroext i8 @si21_readreg(%struct.si21xx_state* %7, i8 zeroext 29) #9, !dbg !5725
  %conv = zext i8 %call2 to i32, !dbg !5725
  %shl = shl i32 %conv, 8, !dbg !5726
  %8 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5727
  %call3 = call zeroext i8 @si21_readreg(%struct.si21xx_state* %8, i8 zeroext 30) #9, !dbg !5728
  %conv4 = zext i8 %call3 to i32, !dbg !5728
  %or = or i32 %shl, %conv4, !dbg !5729
  %9 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5730
  store i32 %or, i32* %9, align 4, !dbg !5731
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then1
  ret i32 0, !dbg !5732
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21xx_send_diseqc_msg(%struct.dvb_frontend* %fe, %struct.dvb_diseqc_master_cmd* %m) #0 !dbg !5733 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %m.addr = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %state = alloca %struct.si21xx_state*, align 8
  %lnb_status = alloca i8, align 1
  %LNB_CTRL_1 = alloca i8, align 1
  %status = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5734, metadata !DIExpression()), !dbg !5735
  store %struct.dvb_diseqc_master_cmd* %m, %struct.dvb_diseqc_master_cmd** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_diseqc_master_cmd** %m.addr, metadata !5736, metadata !DIExpression()), !dbg !5737
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state, metadata !5738, metadata !DIExpression()), !dbg !5739
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5740
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5741
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5741
  %2 = bitcast i8* %1 to %struct.si21xx_state*, !dbg !5740
  store %struct.si21xx_state* %2, %struct.si21xx_state** %state, align 8, !dbg !5739
  call void @llvm.dbg.declare(metadata i8* %lnb_status, metadata !5742, metadata !DIExpression()), !dbg !5743
  call void @llvm.dbg.declare(metadata i8* %LNB_CTRL_1, metadata !5744, metadata !DIExpression()), !dbg !5745
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5746, metadata !DIExpression()), !dbg !5747
  br label %do.body, !dbg !5748

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5749
  %tobool = icmp ne i32 %3, 0, !dbg !5749
  br i1 %tobool, label %if.then, label %if.end, !dbg !5752

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.si21xx_send_diseqc_msg, i64 0, i64 0)) #8, !dbg !5749
  br label %if.end, !dbg !5749

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5752

do.end:                                           ; preds = %if.end
  store i32 0, i32* %status, align 4, !dbg !5753
  store i8 0, i8* %LNB_CTRL_1, align 1, !dbg !5754
  %4 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5755
  %call1 = call i32 @si21_readregs(%struct.si21xx_state* %4, i8 zeroext -60, i8* %lnb_status, i8 zeroext 1) #9, !dbg !5756
  %5 = load i32, i32* %status, align 4, !dbg !5757
  %or = or i32 %5, %call1, !dbg !5757
  store i32 %or, i32* %status, align 4, !dbg !5757
  %6 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5758
  %call2 = call i32 @si21_readregs(%struct.si21xx_state* %6, i8 zeroext -64, i8* %lnb_status, i8 zeroext 1) #9, !dbg !5759
  %7 = load i32, i32* %status, align 4, !dbg !5760
  %or3 = or i32 %7, %call2, !dbg !5760
  store i32 %or3, i32* %status, align 4, !dbg !5760
  %8 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5761
  %9 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %m.addr, align 8, !dbg !5762
  %msg = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %9, i32 0, i32 0, !dbg !5763
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %msg, i64 0, i64 0, !dbg !5762
  %10 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %m.addr, align 8, !dbg !5764
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %10, i32 0, i32 1, !dbg !5765
  %11 = load i8, i8* %msg_len, align 1, !dbg !5765
  %conv = zext i8 %11 to i32, !dbg !5764
  %call4 = call i32 @si21_writeregs(%struct.si21xx_state* %8, i8 zeroext -59, i8* %arraydecay, i32 %conv) #9, !dbg !5766
  %12 = load i32, i32* %status, align 4, !dbg !5767
  %or5 = or i32 %12, %call4, !dbg !5767
  store i32 %or5, i32* %status, align 4, !dbg !5767
  %13 = load i8, i8* %lnb_status, align 1, !dbg !5768
  %conv6 = zext i8 %13 to i32, !dbg !5768
  %and = and i32 %conv6, 112, !dbg !5769
  %conv7 = trunc i32 %and to i8, !dbg !5770
  store i8 %conv7, i8* %LNB_CTRL_1, align 1, !dbg !5771
  %14 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %m.addr, align 8, !dbg !5772
  %msg_len8 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %14, i32 0, i32 1, !dbg !5773
  %15 = load i8, i8* %msg_len8, align 1, !dbg !5773
  %conv9 = zext i8 %15 to i32, !dbg !5772
  %16 = load i8, i8* %LNB_CTRL_1, align 1, !dbg !5774
  %conv10 = zext i8 %16 to i32, !dbg !5774
  %or11 = or i32 %conv10, %conv9, !dbg !5774
  %conv12 = trunc i32 %or11 to i8, !dbg !5774
  store i8 %conv12, i8* %LNB_CTRL_1, align 1, !dbg !5774
  %17 = load i8, i8* %LNB_CTRL_1, align 1, !dbg !5775
  %conv13 = zext i8 %17 to i32, !dbg !5775
  %or14 = or i32 %conv13, 128, !dbg !5775
  %conv15 = trunc i32 %or14 to i8, !dbg !5775
  store i8 %conv15, i8* %LNB_CTRL_1, align 1, !dbg !5775
  %18 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5776
  %call16 = call i32 @si21_writeregs(%struct.si21xx_state* %18, i8 zeroext -64, i8* %LNB_CTRL_1, i32 1) #9, !dbg !5777
  %19 = load i32, i32* %status, align 4, !dbg !5778
  %or17 = or i32 %19, %call16, !dbg !5778
  store i32 %or17, i32* %status, align 4, !dbg !5778
  %20 = load i32, i32* %status, align 4, !dbg !5779
  ret i32 %20, !dbg !5780
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21xx_send_diseqc_burst(%struct.dvb_frontend* %fe, i32 %burst) #0 !dbg !5781 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %burst.addr = alloca i32, align 4
  %state = alloca %struct.si21xx_state*, align 8
  %val = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5782, metadata !DIExpression()), !dbg !5783
  store i32 %burst, i32* %burst.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %burst.addr, metadata !5784, metadata !DIExpression()), !dbg !5785
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state, metadata !5786, metadata !DIExpression()), !dbg !5787
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5788
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5789
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5789
  %2 = bitcast i8* %1 to %struct.si21xx_state*, !dbg !5788
  store %struct.si21xx_state* %2, %struct.si21xx_state** %state, align 8, !dbg !5787
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5790, metadata !DIExpression()), !dbg !5791
  br label %do.body, !dbg !5792

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5793
  %tobool = icmp ne i32 %3, 0, !dbg !5793
  br i1 %tobool, label %if.then, label %if.end, !dbg !5796

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.si21xx_send_diseqc_burst, i64 0, i64 0)) #8, !dbg !5793
  br label %if.end, !dbg !5793

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5796

do.end:                                           ; preds = %if.end
  %4 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5797
  %call1 = call i32 @si21xx_wait_diseqc_idle(%struct.si21xx_state* %4, i32 100) #9, !dbg !5799
  %cmp = icmp slt i32 %call1, 0, !dbg !5800
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5801

if.then2:                                         ; preds = %do.end
  store i32 -110, i32* %retval, align 4, !dbg !5802
  br label %return, !dbg !5802

if.end3:                                          ; preds = %do.end
  %5 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5803
  %call4 = call zeroext i8 @si21_readreg(%struct.si21xx_state* %5, i8 zeroext -63) #9, !dbg !5804
  %conv = zext i8 %call4 to i32, !dbg !5804
  %or = or i32 128, %conv, !dbg !5805
  %conv5 = trunc i32 %or to i8, !dbg !5806
  store i8 %conv5, i8* %val, align 1, !dbg !5807
  %6 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5808
  %7 = load i32, i32* %burst.addr, align 4, !dbg !5810
  %cmp6 = icmp eq i32 %7, 0, !dbg !5811
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !5810

cond.true:                                        ; preds = %if.end3
  %8 = load i8, i8* %val, align 1, !dbg !5812
  %conv8 = zext i8 %8 to i32, !dbg !5812
  %and = and i32 %conv8, -17, !dbg !5813
  br label %cond.end, !dbg !5810

cond.false:                                       ; preds = %if.end3
  %9 = load i8, i8* %val, align 1, !dbg !5814
  %conv9 = zext i8 %9 to i32, !dbg !5814
  %or10 = or i32 %conv9, 16, !dbg !5815
  br label %cond.end, !dbg !5810

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and, %cond.true ], [ %or10, %cond.false ], !dbg !5810
  %conv11 = trunc i32 %cond to i8, !dbg !5810
  %call12 = call i32 @si21_writereg(%struct.si21xx_state* %6, i8 zeroext -64, i8 zeroext %conv11) #9, !dbg !5816
  %tobool13 = icmp ne i32 %call12, 0, !dbg !5816
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5817

if.then14:                                        ; preds = %cond.end
  store i32 -121, i32* %retval, align 4, !dbg !5818
  br label %return, !dbg !5818

if.end15:                                         ; preds = %cond.end
  %10 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5819
  %call16 = call i32 @si21xx_wait_diseqc_idle(%struct.si21xx_state* %10, i32 100) #9, !dbg !5821
  %cmp17 = icmp slt i32 %call16, 0, !dbg !5822
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !5823

if.then19:                                        ; preds = %if.end15
  store i32 -110, i32* %retval, align 4, !dbg !5824
  br label %return, !dbg !5824

if.end20:                                         ; preds = %if.end15
  %11 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5825
  %12 = load i8, i8* %val, align 1, !dbg !5827
  %call21 = call i32 @si21_writereg(%struct.si21xx_state* %11, i8 zeroext -64, i8 zeroext %12) #9, !dbg !5828
  %tobool22 = icmp ne i32 %call21, 0, !dbg !5828
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !5829

if.then23:                                        ; preds = %if.end20
  store i32 -121, i32* %retval, align 4, !dbg !5830
  br label %return, !dbg !5830

if.end24:                                         ; preds = %if.end20
  store i32 0, i32* %retval, align 4, !dbg !5831
  br label %return, !dbg !5831

return:                                           ; preds = %if.end24, %if.then23, %if.then19, %if.then14, %if.then2
  %13 = load i32, i32* %retval, align 4, !dbg !5832
  ret i32 %13, !dbg !5832
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21xx_set_tone(%struct.dvb_frontend* %fe, i32 %tone) #0 !dbg !5833 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %tone.addr = alloca i32, align 4
  %state = alloca %struct.si21xx_state*, align 8
  %val = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5834, metadata !DIExpression()), !dbg !5835
  store i32 %tone, i32* %tone.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tone.addr, metadata !5836, metadata !DIExpression()), !dbg !5837
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state, metadata !5838, metadata !DIExpression()), !dbg !5839
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5840
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5841
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5841
  %2 = bitcast i8* %1 to %struct.si21xx_state*, !dbg !5840
  store %struct.si21xx_state* %2, %struct.si21xx_state** %state, align 8, !dbg !5839
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5842, metadata !DIExpression()), !dbg !5843
  br label %do.body, !dbg !5844

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5845
  %tobool = icmp ne i32 %3, 0, !dbg !5845
  br i1 %tobool, label %if.then, label %if.end, !dbg !5848

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.si21xx_set_tone, i64 0, i64 0)) #8, !dbg !5845
  br label %if.end, !dbg !5845

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5848

do.end:                                           ; preds = %if.end
  %4 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5849
  %call1 = call zeroext i8 @si21_readreg(%struct.si21xx_state* %4, i8 zeroext -64) #9, !dbg !5850
  %conv = zext i8 %call1 to i32, !dbg !5850
  %or = or i32 128, %conv, !dbg !5851
  %conv2 = trunc i32 %or to i8, !dbg !5852
  store i8 %conv2, i8* %val, align 1, !dbg !5853
  %5 = load i32, i32* %tone.addr, align 4, !dbg !5854
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ], !dbg !5855

sw.bb:                                            ; preds = %do.end
  %6 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5856
  %7 = load i8, i8* %val, align 1, !dbg !5858
  %conv3 = zext i8 %7 to i32, !dbg !5858
  %or4 = or i32 %conv3, 32, !dbg !5859
  %conv5 = trunc i32 %or4 to i8, !dbg !5858
  %call6 = call i32 @si21_writereg(%struct.si21xx_state* %6, i8 zeroext -64, i8 zeroext %conv5) #9, !dbg !5860
  store i32 %call6, i32* %retval, align 4, !dbg !5861
  br label %return, !dbg !5861

sw.bb7:                                           ; preds = %do.end
  %8 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5862
  %9 = load i8, i8* %val, align 1, !dbg !5863
  %conv8 = zext i8 %9 to i32, !dbg !5863
  %and = and i32 %conv8, -33, !dbg !5864
  %conv9 = trunc i32 %and to i8, !dbg !5865
  %call10 = call i32 @si21_writereg(%struct.si21xx_state* %8, i8 zeroext -64, i8 zeroext %conv9) #9, !dbg !5866
  store i32 %call10, i32* %retval, align 4, !dbg !5867
  br label %return, !dbg !5867

sw.default:                                       ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !5868
  br label %return, !dbg !5868

return:                                           ; preds = %sw.default, %sw.bb7, %sw.bb
  %10 = load i32, i32* %retval, align 4, !dbg !5869
  ret i32 %10, !dbg !5869
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21xx_set_voltage(%struct.dvb_frontend* %fe, i32 %volt) #0 !dbg !5870 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %volt.addr = alloca i32, align 4
  %state = alloca %struct.si21xx_state*, align 8
  %val = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5871, metadata !DIExpression()), !dbg !5872
  store i32 %volt, i32* %volt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %volt.addr, metadata !5873, metadata !DIExpression()), !dbg !5874
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state, metadata !5875, metadata !DIExpression()), !dbg !5876
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5877
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5878
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5878
  %2 = bitcast i8* %1 to %struct.si21xx_state*, !dbg !5877
  store %struct.si21xx_state* %2, %struct.si21xx_state** %state, align 8, !dbg !5876
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5879, metadata !DIExpression()), !dbg !5880
  br label %do.body, !dbg !5881

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5882
  %tobool = icmp ne i32 %3, 0, !dbg !5882
  br i1 %tobool, label %if.then, label %if.end, !dbg !5885

if.then:                                          ; preds = %do.body
  %4 = load i32, i32* %volt.addr, align 4, !dbg !5882
  %cmp = icmp eq i32 %4, 0, !dbg !5882
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5882

cond.true:                                        ; preds = %if.then
  br label %cond.end, !dbg !5882

cond.false:                                       ; preds = %if.then
  %5 = load i32, i32* %volt.addr, align 4, !dbg !5882
  %cmp1 = icmp eq i32 %5, 1, !dbg !5882
  %6 = zext i1 %cmp1 to i64, !dbg !5882
  %cond = select i1 %cmp1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), !dbg !5882
  br label %cond.end, !dbg !5882

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), %cond.true ], [ %cond, %cond.false ], !dbg !5882
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.si21xx_set_voltage, i64 0, i64 0), i8* %cond2) #8, !dbg !5882
  br label %if.end, !dbg !5882

if.end:                                           ; preds = %cond.end, %do.body
  br label %do.end, !dbg !5885

do.end:                                           ; preds = %if.end
  %7 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5886
  %call3 = call zeroext i8 @si21_readreg(%struct.si21xx_state* %7, i8 zeroext -64) #9, !dbg !5887
  %conv = zext i8 %call3 to i32, !dbg !5887
  %or = or i32 128, %conv, !dbg !5888
  %conv4 = trunc i32 %or to i8, !dbg !5889
  store i8 %conv4, i8* %val, align 1, !dbg !5890
  %8 = load i32, i32* %volt.addr, align 4, !dbg !5891
  switch i32 %8, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb9
  ], !dbg !5892

sw.bb:                                            ; preds = %do.end
  %9 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5893
  %10 = load i8, i8* %val, align 1, !dbg !5895
  %conv5 = zext i8 %10 to i32, !dbg !5895
  %or6 = or i32 %conv5, 64, !dbg !5896
  %conv7 = trunc i32 %or6 to i8, !dbg !5895
  %call8 = call i32 @si21_writereg(%struct.si21xx_state* %9, i8 zeroext -64, i8 zeroext %conv7) #9, !dbg !5897
  store i32 %call8, i32* %retval, align 4, !dbg !5898
  br label %return, !dbg !5898

sw.bb9:                                           ; preds = %do.end
  %11 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !5899
  %12 = load i8, i8* %val, align 1, !dbg !5900
  %conv10 = zext i8 %12 to i32, !dbg !5900
  %and = and i32 %conv10, -65, !dbg !5901
  %conv11 = trunc i32 %and to i8, !dbg !5902
  %call12 = call i32 @si21_writereg(%struct.si21xx_state* %11, i8 zeroext -64, i8 zeroext %conv11) #9, !dbg !5903
  store i32 %call12, i32* %retval, align 4, !dbg !5904
  br label %return, !dbg !5904

sw.default:                                       ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !5905
  br label %return, !dbg !5905

return:                                           ; preds = %sw.default, %sw.bb9, %sw.bb
  %13 = load i32, i32* %retval, align 4, !dbg !5906
  ret i32 %13, !dbg !5906
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21_writeregs(%struct.si21xx_state* %state, i8 zeroext %reg1, i8* %data, i32 %len) #0 !dbg !5907 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.si21xx_state*, align 8
  %reg1.addr = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %buf = alloca [60 x i8], align 16
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.si21xx_state* %state, %struct.si21xx_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state.addr, metadata !5910, metadata !DIExpression()), !dbg !5911
  store i8 %reg1, i8* %reg1.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg1.addr, metadata !5912, metadata !DIExpression()), !dbg !5913
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5914, metadata !DIExpression()), !dbg !5915
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5916, metadata !DIExpression()), !dbg !5917
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5918, metadata !DIExpression()), !dbg !5919
  call void @llvm.dbg.declare(metadata [60 x i8]* %buf, metadata !5920, metadata !DIExpression()), !dbg !5924
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5925, metadata !DIExpression()), !dbg !5926
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5927
  %0 = load %struct.si21xx_state*, %struct.si21xx_state** %state.addr, align 8, !dbg !5928
  %config = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %0, i32 0, i32 1, !dbg !5929
  %1 = load %struct.si21xx_config*, %struct.si21xx_config** %config, align 8, !dbg !5929
  %demod_address = getelementptr inbounds %struct.si21xx_config, %struct.si21xx_config* %1, i32 0, i32 0, !dbg !5930
  %2 = load i8, i8* %demod_address, align 4, !dbg !5930
  %conv = zext i8 %2 to i16, !dbg !5928
  store i16 %conv, i16* %addr, align 8, !dbg !5927
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5927
  store i16 0, i16* %flags, align 2, !dbg !5927
  %len1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5927
  %3 = load i32, i32* %len.addr, align 4, !dbg !5931
  %add = add i32 %3, 1, !dbg !5932
  %conv2 = trunc i32 %add to i16, !dbg !5931
  store i16 %conv2, i16* %len1, align 4, !dbg !5927
  %buf3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5927
  %arraydecay = getelementptr inbounds [60 x i8], [60 x i8]* %buf, i64 0, i64 0, !dbg !5933
  store i8* %arraydecay, i8** %buf3, align 8, !dbg !5927
  %4 = load i32, i32* %len.addr, align 4, !dbg !5934
  %conv4 = sext i32 %4 to i64, !dbg !5934
  %cmp = icmp ugt i64 %conv4, 59, !dbg !5936
  br i1 %cmp, label %if.then, label %if.end, !dbg !5937

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5938
  br label %return, !dbg !5938

if.end:                                           ; preds = %entry
  %5 = load i8, i8* %reg1.addr, align 1, !dbg !5939
  %buf6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5940
  %6 = load i8*, i8** %buf6, align 8, !dbg !5940
  %arrayidx = getelementptr i8, i8* %6, i64 0, !dbg !5941
  store i8 %5, i8* %arrayidx, align 1, !dbg !5942
  %buf7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5943
  %7 = load i8*, i8** %buf7, align 8, !dbg !5943
  %add.ptr = getelementptr i8, i8* %7, i64 1, !dbg !5944
  %8 = load i8*, i8** %data.addr, align 8, !dbg !5945
  %9 = load i32, i32* %len.addr, align 4, !dbg !5946
  %conv8 = sext i32 %9 to i64, !dbg !5946
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %8, i64 %conv8, i1 false), !dbg !5947
  %10 = load %struct.si21xx_state*, %struct.si21xx_state** %state.addr, align 8, !dbg !5948
  %i2c = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %10, i32 0, i32 0, !dbg !5949
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5949
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %11, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5950
  store i32 %call, i32* %ret, align 4, !dbg !5951
  %12 = load i32, i32* %ret, align 4, !dbg !5952
  %cmp9 = icmp ne i32 %12, 1, !dbg !5954
  br i1 %cmp9, label %if.then11, label %if.end18, !dbg !5955

if.then11:                                        ; preds = %if.end
  br label %do.body, !dbg !5956

do.body:                                          ; preds = %if.then11
  %13 = load i32, i32* @debug, align 4, !dbg !5957
  %tobool = icmp ne i32 %13, 0, !dbg !5957
  br i1 %tobool, label %if.then12, label %if.end17, !dbg !5960

if.then12:                                        ; preds = %do.body
  %14 = load i8, i8* %reg1.addr, align 1, !dbg !5957
  %conv13 = zext i8 %14 to i32, !dbg !5957
  %15 = load i8*, i8** %data.addr, align 8, !dbg !5957
  %arrayidx14 = getelementptr i8, i8* %15, i64 0, !dbg !5957
  %16 = load i8, i8* %arrayidx14, align 1, !dbg !5957
  %conv15 = zext i8 %16 to i32, !dbg !5957
  %17 = load i32, i32* %ret, align 4, !dbg !5957
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.si21_writeregs, i64 0, i64 0), i32 %conv13, i32 %conv15, i32 %17) #8, !dbg !5957
  br label %if.end17, !dbg !5957

if.end17:                                         ; preds = %if.then12, %do.body
  br label %do.end, !dbg !5960

do.end:                                           ; preds = %if.end17
  br label %if.end18, !dbg !5960

if.end18:                                         ; preds = %do.end, %if.end
  %18 = load i32, i32* %ret, align 4, !dbg !5961
  %cmp19 = icmp ne i32 %18, 1, !dbg !5962
  %19 = zext i1 %cmp19 to i64, !dbg !5963
  %cond = select i1 %cmp19, i32 -121, i32 0, !dbg !5963
  store i32 %cond, i32* %retval, align 4, !dbg !5964
  br label %return, !dbg !5964

return:                                           ; preds = %if.end18, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !5965
  ret i32 %20, !dbg !5965
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21_readregs(%struct.si21xx_state* %state, i8 zeroext %reg1, i8* %b, i8 zeroext %len) #0 !dbg !5966 {
entry:
  %state.addr = alloca %struct.si21xx_state*, align 8
  %reg1.addr = alloca i8, align 1
  %b.addr = alloca i8*, align 8
  %len.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.si21xx_state* %state, %struct.si21xx_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state.addr, metadata !5969, metadata !DIExpression()), !dbg !5970
  store i8 %reg1, i8* %reg1.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg1.addr, metadata !5971, metadata !DIExpression()), !dbg !5972
  store i8* %b, i8** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %b.addr, metadata !5973, metadata !DIExpression()), !dbg !5974
  store i8 %len, i8* %len.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %len.addr, metadata !5975, metadata !DIExpression()), !dbg !5976
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5977, metadata !DIExpression()), !dbg !5978
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !5979, metadata !DIExpression()), !dbg !5980
  %arrayinit.begin = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !5981
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 0, !dbg !5982
  %0 = load %struct.si21xx_state*, %struct.si21xx_state** %state.addr, align 8, !dbg !5983
  %config = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %0, i32 0, i32 1, !dbg !5984
  %1 = load %struct.si21xx_config*, %struct.si21xx_config** %config, align 8, !dbg !5984
  %demod_address = getelementptr inbounds %struct.si21xx_config, %struct.si21xx_config* %1, i32 0, i32 0, !dbg !5985
  %2 = load i8, i8* %demod_address, align 4, !dbg !5985
  %conv = zext i8 %2 to i16, !dbg !5983
  store i16 %conv, i16* %addr, align 16, !dbg !5982
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 1, !dbg !5982
  store i16 0, i16* %flags, align 2, !dbg !5982
  %len1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 2, !dbg !5982
  store i16 1, i16* %len1, align 4, !dbg !5982
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 3, !dbg !5982
  store i8* %reg1.addr, i8** %buf, align 8, !dbg !5982
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i64 1, !dbg !5981
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !5986
  %3 = load %struct.si21xx_state*, %struct.si21xx_state** %state.addr, align 8, !dbg !5987
  %config3 = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %3, i32 0, i32 1, !dbg !5988
  %4 = load %struct.si21xx_config*, %struct.si21xx_config** %config3, align 8, !dbg !5988
  %demod_address4 = getelementptr inbounds %struct.si21xx_config, %struct.si21xx_config* %4, i32 0, i32 0, !dbg !5989
  %5 = load i8, i8* %demod_address4, align 4, !dbg !5989
  %conv5 = zext i8 %5 to i16, !dbg !5987
  store i16 %conv5, i16* %addr2, align 16, !dbg !5986
  %flags6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !5986
  store i16 1, i16* %flags6, align 2, !dbg !5986
  %len7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !5986
  %6 = load i8, i8* %len.addr, align 1, !dbg !5990
  %conv8 = zext i8 %6 to i16, !dbg !5990
  store i16 %conv8, i16* %len7, align 4, !dbg !5986
  %buf9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !5986
  %7 = load i8*, i8** %b.addr, align 8, !dbg !5991
  store i8* %7, i8** %buf9, align 8, !dbg !5986
  %8 = load %struct.si21xx_state*, %struct.si21xx_state** %state.addr, align 8, !dbg !5992
  %i2c = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %8, i32 0, i32 0, !dbg !5993
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5993
  %arraydecay = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !5994
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %9, %struct.i2c_msg* %arraydecay, i32 2) #9, !dbg !5995
  store i32 %call, i32* %ret, align 4, !dbg !5996
  %10 = load i32, i32* %ret, align 4, !dbg !5997
  %cmp = icmp ne i32 %10, 2, !dbg !5999
  br i1 %cmp, label %if.then, label %if.end13, !dbg !6000

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6001

do.body:                                          ; preds = %if.then
  %11 = load i32, i32* @debug, align 4, !dbg !6002
  %tobool = icmp ne i32 %11, 0, !dbg !6002
  br i1 %tobool, label %if.then11, label %if.end, !dbg !6005

if.then11:                                        ; preds = %do.body
  %12 = load i32, i32* %ret, align 4, !dbg !6002
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.si21_readregs, i64 0, i64 0), i32 %12) #8, !dbg !6002
  br label %if.end, !dbg !6002

if.end:                                           ; preds = %if.then11, %do.body
  br label %do.end, !dbg !6005

do.end:                                           ; preds = %if.end
  br label %if.end13, !dbg !6005

if.end13:                                         ; preds = %do.end, %entry
  %13 = load i32, i32* %ret, align 4, !dbg !6006
  %cmp14 = icmp eq i32 %13, 2, !dbg !6007
  %14 = zext i1 %cmp14 to i64, !dbg !6006
  %cond = select i1 %cmp14, i32 0, i32 -1, !dbg !6006
  ret i32 %cond, !dbg !6008
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21xx_setacquire(%struct.dvb_frontend* %fe, i32 %symbrate, i32 %crate) #0 !dbg !6009 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %symbrate.addr = alloca i32, align 4
  %crate.addr = alloca i32, align 4
  %state = alloca %struct.si21xx_state*, align 8
  %coderates = alloca [10 x i8], align 1
  %coderate_ptr = alloca i8, align 1
  %status = alloca i32, align 4
  %start_acq = alloca i8, align 1
  %reg = alloca i8, align 1
  %regs = alloca [3 x i8], align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6012, metadata !DIExpression()), !dbg !6013
  store i32 %symbrate, i32* %symbrate.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %symbrate.addr, metadata !6014, metadata !DIExpression()), !dbg !6015
  store i32 %crate, i32* %crate.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %crate.addr, metadata !6016, metadata !DIExpression()), !dbg !6017
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state, metadata !6018, metadata !DIExpression()), !dbg !6019
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6020
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6021
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6021
  %2 = bitcast i8* %1 to %struct.si21xx_state*, !dbg !6020
  store %struct.si21xx_state* %2, %struct.si21xx_state** %state, align 8, !dbg !6019
  call void @llvm.dbg.declare(metadata [10 x i8]* %coderates, metadata !6022, metadata !DIExpression()), !dbg !6024
  %3 = bitcast [10 x i8]* %coderates to i8*, !dbg !6024
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.si21xx_setacquire.coderates, i32 0, i32 0), i64 10, i1 false), !dbg !6024
  call void @llvm.dbg.declare(metadata i8* %coderate_ptr, metadata !6025, metadata !DIExpression()), !dbg !6026
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6027, metadata !DIExpression()), !dbg !6028
  call void @llvm.dbg.declare(metadata i8* %start_acq, metadata !6029, metadata !DIExpression()), !dbg !6030
  store i8 -128, i8* %start_acq, align 1, !dbg !6030
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !6031, metadata !DIExpression()), !dbg !6032
  call void @llvm.dbg.declare(metadata [3 x i8]* %regs, metadata !6033, metadata !DIExpression()), !dbg !6035
  br label %do.body, !dbg !6036

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @debug, align 4, !dbg !6037
  %tobool = icmp ne i32 %4, 0, !dbg !6037
  br i1 %tobool, label %if.then, label %if.end, !dbg !6040

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.si21xx_setacquire, i64 0, i64 0)) #8, !dbg !6037
  br label %if.end, !dbg !6037

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6040

do.end:                                           ; preds = %if.end
  store i32 0, i32* %status, align 4, !dbg !6041
  %5 = load i32, i32* %crate.addr, align 4, !dbg !6042
  %idxprom = zext i32 %5 to i64, !dbg !6043
  %arrayidx = getelementptr [10 x i8], [10 x i8]* %coderates, i64 0, i64 %idxprom, !dbg !6043
  %6 = load i8, i8* %arrayidx, align 1, !dbg !6043
  store i8 %6, i8* %coderate_ptr, align 1, !dbg !6044
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6045
  %8 = load i32, i32* %symbrate.addr, align 4, !dbg !6046
  %call1 = call i32 @si21xx_set_symbolrate(%struct.dvb_frontend* %7, i32 %8) #9, !dbg !6047
  %9 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !6048
  %call2 = call i32 @si21_writeregs(%struct.si21xx_state* %9, i8 zeroext -96, i8* %coderate_ptr, i32 1) #9, !dbg !6049
  %10 = load i32, i32* %status, align 4, !dbg !6050
  %or = or i32 %10, %call2, !dbg !6050
  store i32 %or, i32* %status, align 4, !dbg !6050
  %11 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !6051
  %call3 = call i32 @si21_readregs(%struct.si21xx_state* %11, i8 zeroext 20, i8* %reg, i8 zeroext 1) #9, !dbg !6052
  %12 = load i32, i32* %status, align 4, !dbg !6053
  %or4 = or i32 %12, %call3, !dbg !6053
  store i32 %or4, i32* %status, align 4, !dbg !6053
  %13 = load i8, i8* %start_acq, align 1, !dbg !6054
  %conv = zext i8 %13 to i32, !dbg !6054
  %neg = xor i32 %conv, -1, !dbg !6055
  %14 = load i8, i8* %reg, align 1, !dbg !6056
  %conv5 = zext i8 %14 to i32, !dbg !6056
  %and = and i32 %conv5, %neg, !dbg !6056
  %conv6 = trunc i32 %and to i8, !dbg !6056
  store i8 %conv6, i8* %reg, align 1, !dbg !6056
  %15 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !6057
  %call7 = call i32 @si21_writeregs(%struct.si21xx_state* %15, i8 zeroext 20, i8* %reg, i32 1) #9, !dbg !6058
  %16 = load i32, i32* %status, align 4, !dbg !6059
  %or8 = or i32 %16, %call7, !dbg !6059
  store i32 %or8, i32* %status, align 4, !dbg !6059
  %arrayidx9 = getelementptr [3 x i8], [3 x i8]* %regs, i64 0, i64 0, !dbg !6060
  store i8 -53, i8* %arrayidx9, align 1, !dbg !6061
  %arrayidx10 = getelementptr [3 x i8], [3 x i8]* %regs, i64 0, i64 1, !dbg !6062
  store i8 64, i8* %arrayidx10, align 1, !dbg !6063
  %arrayidx11 = getelementptr [3 x i8], [3 x i8]* %regs, i64 0, i64 2, !dbg !6064
  store i8 -53, i8* %arrayidx11, align 1, !dbg !6065
  %17 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !6066
  %arrayidx12 = getelementptr [3 x i8], [3 x i8]* %regs, i64 0, i64 0, !dbg !6067
  %call13 = call i32 @si21_writeregs(%struct.si21xx_state* %17, i8 zeroext -111, i8* %arrayidx12, i32 3) #9, !dbg !6068
  %18 = load i32, i32* %status, align 4, !dbg !6069
  %or14 = or i32 %18, %call13, !dbg !6069
  store i32 %or14, i32* %status, align 4, !dbg !6069
  store i8 86, i8* %reg, align 1, !dbg !6070
  %19 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !6071
  %call15 = call i32 @si21_writeregs(%struct.si21xx_state* %19, i8 zeroext -115, i8* %reg, i32 1) #9, !dbg !6072
  %20 = load i32, i32* %status, align 4, !dbg !6073
  %or16 = or i32 %20, %call15, !dbg !6073
  store i32 %or16, i32* %status, align 4, !dbg !6073
  store i8 5, i8* %reg, align 1, !dbg !6074
  %21 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !6075
  %call17 = call i32 @si21_writeregs(%struct.si21xx_state* %21, i8 zeroext -128, i8* %reg, i32 1) #9, !dbg !6076
  %22 = load i32, i32* %status, align 4, !dbg !6077
  %or18 = or i32 %22, %call17, !dbg !6077
  store i32 %or18, i32* %status, align 4, !dbg !6077
  %23 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !6078
  %call19 = call i32 @si21_writeregs(%struct.si21xx_state* %23, i8 zeroext 20, i8* %start_acq, i32 1) #9, !dbg !6079
  %24 = load i32, i32* %status, align 4, !dbg !6080
  %or20 = or i32 %24, %call19, !dbg !6080
  store i32 %or20, i32* %status, align 4, !dbg !6080
  %25 = load i32, i32* %status, align 4, !dbg !6081
  ret i32 %25, !dbg !6082
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21xx_set_symbolrate(%struct.dvb_frontend* %fe, i32 %srate) #0 !dbg !6083 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %srate.addr = alloca i32, align 4
  %state = alloca %struct.si21xx_state*, align 8
  %sym_rate = alloca i32, align 4
  %data_rate = alloca i32, align 4
  %i = alloca i32, align 4
  %sym_rate_bytes = alloca [3 x i8], align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6084, metadata !DIExpression()), !dbg !6085
  store i32 %srate, i32* %srate.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %srate.addr, metadata !6086, metadata !DIExpression()), !dbg !6087
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state, metadata !6088, metadata !DIExpression()), !dbg !6089
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6090
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6091
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6091
  %2 = bitcast i8* %1 to %struct.si21xx_state*, !dbg !6090
  store %struct.si21xx_state* %2, %struct.si21xx_state** %state, align 8, !dbg !6089
  call void @llvm.dbg.declare(metadata i32* %sym_rate, metadata !6092, metadata !DIExpression()), !dbg !6093
  call void @llvm.dbg.declare(metadata i32* %data_rate, metadata !6094, metadata !DIExpression()), !dbg !6095
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6096, metadata !DIExpression()), !dbg !6097
  call void @llvm.dbg.declare(metadata [3 x i8]* %sym_rate_bytes, metadata !6098, metadata !DIExpression()), !dbg !6099
  br label %do.body, !dbg !6100

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !6101
  %tobool = icmp ne i32 %3, 0, !dbg !6101
  br i1 %tobool, label %if.then, label %if.end, !dbg !6104

if.then:                                          ; preds = %do.body
  %4 = load i32, i32* %srate.addr, align 4, !dbg !6101
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.si21xx_set_symbolrate, i64 0, i64 0), i32 %4) #8, !dbg !6101
  br label %if.end, !dbg !6101

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6104

do.end:                                           ; preds = %if.end
  %5 = load i32, i32* %srate.addr, align 4, !dbg !6105
  %cmp = icmp ult i32 %5, 1000000, !dbg !6107
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !6108

lor.lhs.false:                                    ; preds = %do.end
  %6 = load i32, i32* %srate.addr, align 4, !dbg !6109
  %cmp1 = icmp ugt i32 %6, 45000000, !dbg !6110
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !6111

if.then2:                                         ; preds = %lor.lhs.false, %do.end
  store i32 -22, i32* %retval, align 4, !dbg !6112
  br label %return, !dbg !6112

if.end3:                                          ; preds = %lor.lhs.false
  %7 = load i32, i32* %srate.addr, align 4, !dbg !6113
  store i32 %7, i32* %data_rate, align 4, !dbg !6114
  store i32 0, i32* %sym_rate, align 4, !dbg !6115
  store i32 0, i32* %i, align 4, !dbg !6116
  br label %for.cond, !dbg !6118

for.cond:                                         ; preds = %for.inc, %if.end3
  %8 = load i32, i32* %i, align 4, !dbg !6119
  %cmp4 = icmp slt i32 %8, 4, !dbg !6121
  br i1 %cmp4, label %for.body, label %for.end, !dbg !6122

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %sym_rate, align 4, !dbg !6123
  %div = udiv i32 %9, 100, !dbg !6123
  store i32 %div, i32* %sym_rate, align 4, !dbg !6123
  %10 = load i32, i32* %sym_rate, align 4, !dbg !6125
  %11 = load i32, i32* %data_rate, align 4, !dbg !6126
  %rem = urem i32 %11, 100, !dbg !6127
  %mul = mul i32 %rem, 8388608, !dbg !6128
  %12 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !6129
  %fs = getelementptr inbounds %struct.si21xx_state, %struct.si21xx_state* %12, i32 0, i32 5, !dbg !6130
  %13 = load i32, i32* %fs, align 8, !dbg !6130
  %div5 = udiv i32 %mul, %13, !dbg !6131
  %add = add i32 %10, %div5, !dbg !6132
  store i32 %add, i32* %sym_rate, align 4, !dbg !6133
  %14 = load i32, i32* %data_rate, align 4, !dbg !6134
  %div6 = udiv i32 %14, 100, !dbg !6134
  store i32 %div6, i32* %data_rate, align 4, !dbg !6134
  br label %for.inc, !dbg !6135

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !6136
  %inc = add i32 %15, 1, !dbg !6136
  store i32 %inc, i32* %i, align 4, !dbg !6136
  br label %for.cond, !dbg !6137, !llvm.loop !6138

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !6140
  br label %for.cond7, !dbg !6142

for.cond7:                                        ; preds = %for.inc11, %for.end
  %16 = load i32, i32* %i, align 4, !dbg !6143
  %cmp8 = icmp slt i32 %16, 3, !dbg !6145
  br i1 %cmp8, label %for.body9, label %for.end13, !dbg !6146

for.body9:                                        ; preds = %for.cond7
  %17 = load i32, i32* %sym_rate, align 4, !dbg !6147
  %18 = load i32, i32* %i, align 4, !dbg !6148
  %mul10 = mul i32 %18, 8, !dbg !6149
  %shr = lshr i32 %17, %mul10, !dbg !6150
  %and = and i32 %shr, 255, !dbg !6151
  %conv = trunc i32 %and to i8, !dbg !6152
  %19 = load i32, i32* %i, align 4, !dbg !6153
  %idxprom = sext i32 %19 to i64, !dbg !6154
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %sym_rate_bytes, i64 0, i64 %idxprom, !dbg !6154
  store i8 %conv, i8* %arrayidx, align 1, !dbg !6155
  br label %for.inc11, !dbg !6154

for.inc11:                                        ; preds = %for.body9
  %20 = load i32, i32* %i, align 4, !dbg !6156
  %inc12 = add i32 %20, 1, !dbg !6156
  store i32 %inc12, i32* %i, align 4, !dbg !6156
  br label %for.cond7, !dbg !6157, !llvm.loop !6158

for.end13:                                        ; preds = %for.cond7
  %21 = load %struct.si21xx_state*, %struct.si21xx_state** %state, align 8, !dbg !6160
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %sym_rate_bytes, i64 0, i64 0, !dbg !6161
  %call14 = call i32 @si21_writeregs(%struct.si21xx_state* %21, i8 zeroext 63, i8* %arraydecay, i32 3) #9, !dbg !6162
  store i32 0, i32* %retval, align 4, !dbg !6163
  br label %return, !dbg !6163

return:                                           ; preds = %for.end13, %if.then2
  %22 = load i32, i32* %retval, align 4, !dbg !6164
  ret i32 %22, !dbg !6164
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si21xx_wait_diseqc_idle(%struct.si21xx_state* %state, i32 %timeout) #0 !dbg !6165 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.si21xx_state*, align 8
  %timeout.addr = alloca i32, align 4
  %start = alloca i64, align 8
  store %struct.si21xx_state* %state, %struct.si21xx_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.si21xx_state** %state.addr, metadata !6168, metadata !DIExpression()), !dbg !6169
  store i32 %timeout, i32* %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout.addr, metadata !6170, metadata !DIExpression()), !dbg !6171
  call void @llvm.dbg.declare(metadata i64* %start, metadata !6172, metadata !DIExpression()), !dbg !6173
  %0 = load volatile i64, i64* @jiffies, align 8, !dbg !6174
  store i64 %0, i64* %start, align 8, !dbg !6173
  br label %do.body, !dbg !6175

do.body:                                          ; preds = %entry
  %1 = load i32, i32* @debug, align 4, !dbg !6176
  %tobool = icmp ne i32 %1, 0, !dbg !6176
  br i1 %tobool, label %if.then, label %if.end, !dbg !6179

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.si21xx_wait_diseqc_idle, i64 0, i64 0)) #8, !dbg !6176
  br label %if.end, !dbg !6176

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6179

do.end:                                           ; preds = %if.end
  br label %while.cond, !dbg !6180

while.cond:                                       ; preds = %if.end13, %do.end
  %2 = load %struct.si21xx_state*, %struct.si21xx_state** %state.addr, align 8, !dbg !6181
  %call1 = call zeroext i8 @si21_readreg(%struct.si21xx_state* %2, i8 zeroext -64) #9, !dbg !6182
  %conv = zext i8 %call1 to i32, !dbg !6182
  %and = and i32 %conv, 8, !dbg !6183
  %cmp = icmp eq i32 %and, 8, !dbg !6184
  br i1 %cmp, label %while.body, label %while.end, !dbg !6180

while.body:                                       ; preds = %while.cond
  %3 = load volatile i64, i64* @jiffies, align 8, !dbg !6185
  %4 = load i64, i64* %start, align 8, !dbg !6188
  %sub = sub i64 %3, %4, !dbg !6189
  %5 = load i32, i32* %timeout.addr, align 4, !dbg !6190
  %conv3 = sext i32 %5 to i64, !dbg !6190
  %cmp4 = icmp ugt i64 %sub, %conv3, !dbg !6191
  br i1 %cmp4, label %if.then6, label %if.end13, !dbg !6192

if.then6:                                         ; preds = %while.body
  br label %do.body7, !dbg !6193

do.body7:                                         ; preds = %if.then6
  %6 = load i32, i32* @debug, align 4, !dbg !6195
  %tobool8 = icmp ne i32 %6, 0, !dbg !6195
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !6198

if.then9:                                         ; preds = %do.body7
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.si21xx_wait_diseqc_idle, i64 0, i64 0)) #8, !dbg !6195
  br label %if.end11, !dbg !6195

if.end11:                                         ; preds = %if.then9, %do.body7
  br label %do.end12, !dbg !6198

do.end12:                                         ; preds = %if.end11
  store i32 -110, i32* %retval, align 4, !dbg !6199
  br label %return, !dbg !6199

if.end13:                                         ; preds = %while.body
  call void @msleep(i32 10) #9, !dbg !6200
  br label %while.cond, !dbg !6180, !llvm.loop !6201

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !6203
  br label %return, !dbg !6203

return:                                           ; preds = %while.end, %do.end12
  %7 = load i32, i32* %retval, align 4, !dbg !6204
  ret i32 %7, !dbg !6204
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
!llvm.module.flags = !{!4331, !4332, !4333, !4334}
!llvm.ident = !{!4335}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 102, type: !328, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !319, globals: !329, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/si21xx.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !40, !50, !57, !73, !78, !82, !87, !102, !113, !126, !133, !138, !144, !165, !171, !175, !183, !190, !195, !201, !207, !216, !224, !230, !236, !243, !251, !257, !271, !283, !290, !294, !298, !302, !306, !310, !314}
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
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 129, baseType: !7, size: 32, elements: !291)
!291 = !{!292, !293}
!292 = !DIEnumerator(name: "SERIAL", value: 0, isUnsigned: true)
!293 = !DIEnumerator(name: "PARALLEL", value: 1, isUnsigned: true)
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 125, baseType: !7, size: 32, elements: !295)
!295 = !{!296, !297}
!296 = !DIEnumerator(name: "MSB_FIRST", value: 0, isUnsigned: true)
!297 = !DIEnumerator(name: "LSB_FIRST", value: 1, isUnsigned: true)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 121, baseType: !7, size: 32, elements: !299)
!299 = !{!300, !301}
!300 = !DIEnumerator(name: "RISING_EDGE", value: 0, isUnsigned: true)
!301 = !DIEnumerator(name: "FALLING_EDGE", value: 1, isUnsigned: true)
!302 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 117, baseType: !7, size: 32, elements: !303)
!303 = !{!304, !305}
!304 = !DIEnumerator(name: "CLK_GAPPED_MODE", value: 0, isUnsigned: true)
!305 = !DIEnumerator(name: "CLK_CONTINUOUS_MODE", value: 1, isUnsigned: true)
!306 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 113, baseType: !7, size: 32, elements: !307)
!307 = !{!308, !309}
!308 = !DIEnumerator(name: "BYTE_WIDE", value: 0, isUnsigned: true)
!309 = !DIEnumerator(name: "BIT_WIDE", value: 1, isUnsigned: true)
!310 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 109, baseType: !7, size: 32, elements: !311)
!311 = !{!312, !313}
!312 = !DIEnumerator(name: "ACTIVE_HIGH", value: 0, isUnsigned: true)
!313 = !DIEnumerator(name: "ACTIVE_LOW", value: 1, isUnsigned: true)
!314 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !315, line: 10, baseType: !7, size: 32, elements: !316)
!315 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!316 = !{!317, !318}
!317 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!318 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!319 = !{!320, !322, !323, !328}
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !321, line: 148, baseType: !7)
!321 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !324, line: 17, baseType: !325)
!324 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !326, line: 21, baseType: !327)
!326 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!327 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!328 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!329 = !{!330, !396, !401, !406, !411, !416, !421, !0, !426, !4321, !4326}
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 943, type: !332, isLocal: true, isDefinition: true, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !334, line: 69, size: 320, elements: !335)
!334 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!335 = !{!336, !340, !344, !364, !369, !373, !374}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !333, file: !334, line: 70, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !333, file: !334, line: 71, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !343, line: 76, flags: DIFlagFwdDecl)
!343 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !333, file: !334, line: 72, baseType: !345, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !334, line: 47, size: 256, elements: !348)
!348 = !{!349, !350, !355, !360}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !347, file: !334, line: 49, baseType: !7, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !347, file: !334, line: 51, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!328, !337, !354}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !347, file: !334, line: 53, baseType: !356, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!328, !359, !354}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !347, file: !334, line: 55, baseType: !361, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !322}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !333, file: !334, line: 73, baseType: !365, size: 16, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !324, line: 19, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !326, line: 24, baseType: !368)
!368 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !333, file: !334, line: 74, baseType: !370, size: 8, offset: 208)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !324, line: 16, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !326, line: 20, baseType: !372)
!372 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !334, line: 75, baseType: !323, size: 8, offset: 216)
!374 = !DIDerivedType(tag: DW_TAG_member, scope: !333, file: !334, line: 76, baseType: !375, size: 64, offset: 256)
!375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !333, file: !334, line: 76, size: 64, elements: !376)
!376 = !{!377, !378, !385}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !375, file: !334, line: 77, baseType: !322, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !375, file: !334, line: 78, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !334, line: 86, size: 128, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !381, file: !334, line: 87, baseType: !7, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !381, file: !334, line: 88, baseType: !359, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !375, file: !334, line: 79, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !334, line: 92, size: 256, elements: !389)
!389 = !{!390, !391, !392, !394, !395}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !388, file: !334, line: 94, baseType: !7, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !388, file: !334, line: 95, baseType: !7, size: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !388, file: !334, line: 96, baseType: !393, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !388, file: !334, line: 97, baseType: !345, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !388, file: !334, line: 98, baseType: !322, size: 64, offset: 192)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 943, type: !398, isLocal: true, isDefinition: true, align: 8)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 208, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 26)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 944, type: !403, isLocal: true, isDefinition: true, align: 8)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 512, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 64)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 946, type: !408, isLocal: true, isDefinition: true, align: 8)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 416, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 52)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author223", scope: !2, file: !3, line: 947, type: !413, isLocal: true, isDefinition: true, align: 8)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 256, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 32)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file224", scope: !2, file: !3, line: 948, type: !418, isLocal: true, isDefinition: true, align: 8)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 376, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 47)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license225", scope: !2, file: !3, line: 948, type: !423, isLocal: true, isDefinition: true, align: 8)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 152, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 19)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "si21xx_ops", scope: !2, file: !3, line: 864, type: !428, isLocal: true, isDefinition: true)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !430)
!430 = !{!431, !448, !452, !4144, !4145, !4146, !4150, !4151, !4157, !4162, !4166, !4167, !4177, !4182, !4186, !4190, !4195, !4196, !4197, !4198, !4208, !4219, !4223, !4227, !4231, !4235, !4239, !4243, !4244, !4245, !4249, !4303}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !429, file: !51, line: 436, baseType: !432, size: 1280)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !433)
!433 = !{!434, !438, !441, !442, !443, !444, !445, !446, !447}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !432, file: !51, line: 339, baseType: !435, size: 1024)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 1024, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !432, file: !51, line: 340, baseType: !439, size: 32, offset: 1024)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !324, line: 21, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !326, line: 27, baseType: !7)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !432, file: !51, line: 341, baseType: !439, size: 32, offset: 1056)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !432, file: !51, line: 342, baseType: !439, size: 32, offset: 1088)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !432, file: !51, line: 343, baseType: !439, size: 32, offset: 1120)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !432, file: !51, line: 344, baseType: !439, size: 32, offset: 1152)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !432, file: !51, line: 345, baseType: !439, size: 32, offset: 1184)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !432, file: !51, line: 346, baseType: !439, size: 32, offset: 1216)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !432, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !429, file: !51, line: 438, baseType: !449, size: 64, offset: 1280)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 8)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !429, file: !51, line: 440, baseType: !453, size: 64, offset: 1344)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !456}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !458)
!458 = !{!459, !473, !474, !4060, !4061, !4062, !4063, !4064, !4065, !4138, !4142, !4143}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !457, file: !51, line: 687, baseType: !460, size: 32)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !461, line: 19, size: 32, elements: !462)
!461 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !460, file: !461, line: 20, baseType: !464, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !465, line: 113, baseType: !466)
!465 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !465, line: 111, size: 32, elements: !467)
!467 = !{!468}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !466, file: !465, line: 112, baseType: !469, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !321, line: 168, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !321, line: 166, size: 32, elements: !471)
!471 = !{!472}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !470, file: !321, line: 167, baseType: !328, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !457, file: !51, line: 688, baseType: !429, size: 6016, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !457, file: !51, line: 689, baseType: !475, size: 64, offset: 6080)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !477)
!477 = !{!478, !479, !485, !486, !487, !491, !492, !4038, !4039, !4040, !4059}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !476, file: !272, line: 102, baseType: !328, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !476, file: !272, line: 103, baseType: !480, size: 128, offset: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !321, line: 178, size: 128, elements: !481)
!481 = !{!482, !484}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !480, file: !321, line: 179, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !480, file: !321, line: 179, baseType: !483, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !476, file: !272, line: 104, baseType: !480, size: 128, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !476, file: !272, line: 105, baseType: !337, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !476, file: !272, line: 106, baseType: !488, size: 48, offset: 384)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 48, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 6)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !476, file: !272, line: 107, baseType: !322, size: 64, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !476, file: !272, line: 109, baseType: !493, size: 64, offset: 512)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !495)
!495 = !{!496, !3495, !3496, !3499, !3500, !3551, !3639, !3640, !3641, !3642, !3643, !3652, !3757, !3770, !3965, !3966, !3970, !3972, !3973, !3974, !3978, !3984, !3985, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !4026, !4027, !4028, !4031, !4034, !4035, !4036, !4037}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !494, file: !237, line: 462, baseType: !497, size: 512)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !498, line: 64, size: 512, elements: !499)
!498 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!499 = !{!500, !501, !502, !504, !561, !3350, !3489, !3490, !3491, !3492, !3493, !3494}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !497, file: !498, line: 65, baseType: !337, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !497, file: !498, line: 66, baseType: !480, size: 128, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !497, file: !498, line: 67, baseType: !503, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !497, file: !498, line: 68, baseType: !505, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !498, line: 192, size: 704, elements: !507)
!507 = !{!508, !509, !525, !526}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !506, file: !498, line: 193, baseType: !480, size: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !506, file: !498, line: 194, baseType: !510, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !511, line: 83, baseType: !512)
!511 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !511, line: 71, elements: !513)
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, scope: !512, file: !511, line: 72, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !512, file: !511, line: 72, elements: !516)
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !515, file: !511, line: 73, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !511, line: 20, elements: !519)
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !518, file: !511, line: 21, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !522, line: 25, baseType: !523)
!522 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !522, line: 25, elements: !524)
!524 = !{}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !506, file: !498, line: 195, baseType: !497, size: 512, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !506, file: !498, line: 196, baseType: !527, size: 64, offset: 640)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !498, line: 156, size: 192, elements: !530)
!530 = !{!531, !536, !541}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !529, file: !498, line: 157, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!328, !505, !503}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !529, file: !498, line: 158, baseType: !537, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!337, !505, !503}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !529, file: !498, line: 159, baseType: !542, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!328, !505, !503, !546}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !498, line: 148, size: 20736, elements: !548)
!548 = !{!549, !553, !555, !556, !560}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !547, file: !498, line: 149, baseType: !550, size: 192)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 192, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: 3)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !547, file: !498, line: 150, baseType: !554, size: 4096, offset: 192)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 4096, elements: !404)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !547, file: !498, line: 151, baseType: !328, size: 32, offset: 4288)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !547, file: !498, line: 152, baseType: !557, size: 16384, offset: 4320)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 16384, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 2048)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !547, file: !498, line: 153, baseType: !328, size: 32, offset: 20704)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !497, file: !498, line: 69, baseType: !562, size: 64, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !498, line: 138, size: 448, elements: !564)
!564 = !{!565, !569, !598, !600, !3312, !3340, !3344}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !563, file: !498, line: 139, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !503}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !563, file: !498, line: 140, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !573, line: 230, size: 128, elements: !574)
!573 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!574 = !{!575, !590}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !572, file: !573, line: 231, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!579, !503, !584, !359}
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !321, line: 60, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !581, line: 73, baseType: !582)
!581 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !581, line: 15, baseType: !583)
!583 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !573, line: 30, size: 128, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !585, file: !573, line: 31, baseType: !337, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !585, file: !573, line: 32, baseType: !589, size: 16, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !321, line: 19, baseType: !368)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !572, file: !573, line: 232, baseType: !591, size: 64, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!579, !503, !584, !337, !594}
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !321, line: 55, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !581, line: 72, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !581, line: 16, baseType: !597)
!597 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !563, file: !498, line: 141, baseType: !599, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !563, file: !498, line: 142, baseType: !601, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !573, line: 84, size: 320, elements: !605)
!605 = !{!606, !607, !611, !3309, !3310}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !604, file: !573, line: 85, baseType: !337, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !604, file: !573, line: 86, baseType: !608, size: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!589, !503, !584, !328}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !604, file: !573, line: 88, baseType: !612, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!589, !503, !615, !328}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !573, line: 168, size: 448, elements: !617)
!617 = !{!618, !619, !620, !621, !3304, !3305}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !616, file: !573, line: 169, baseType: !585, size: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !616, file: !573, line: 170, baseType: !594, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !616, file: !573, line: 171, baseType: !322, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !616, file: !573, line: 172, baseType: !622, size: 64, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!579, !625, !503, !615, !359, !796, !594}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !627)
!627 = !{!628, !646, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3287, !3288, !3297, !3298, !3299, !3300, !3301, !3302, !3303}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !626, file: !208, line: 920, baseType: !629, size: 128)
!629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !626, file: !208, line: 917, size: 128, elements: !630)
!630 = !{!631, !637}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !629, file: !208, line: 918, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !633, line: 58, size: 64, elements: !634)
!633 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !632, file: !633, line: 59, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !629, file: !208, line: 919, baseType: !638, size: 128, align: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !321, line: 216, size: 128, align: 64, elements: !639)
!639 = !{!640, !642}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !638, file: !321, line: 217, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !638, file: !321, line: 218, baseType: !643, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !641}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !626, file: !208, line: 921, baseType: !647, size: 128, offset: 128)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !648, line: 8, size: 128, elements: !649)
!648 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!649 = !{!650, !654}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !647, file: !648, line: 9, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !653, line: 18, flags: DIFlagFwdDecl)
!653 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!654 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !647, file: !648, line: 10, baseType: !655, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !653, line: 89, size: 1536, elements: !657)
!657 = !{!658, !659, !669, !677, !678, !696, !3238, !3240, !3252, !3253, !3254, !3255, !3256, !3261, !3262, !3263}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !656, file: !653, line: 91, baseType: !7, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !656, file: !653, line: 92, baseType: !660, size: 32, offset: 32)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !661, line: 277, baseType: !662)
!661 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !661, line: 277, size: 32, elements: !663)
!663 = !{!664}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !662, file: !661, line: 277, baseType: !665, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !661, line: 70, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !661, line: 65, size: 32, elements: !667)
!667 = !{!668}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !666, file: !661, line: 66, baseType: !7, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !656, file: !653, line: 93, baseType: !670, size: 128, offset: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !671, line: 38, size: 128, elements: !672)
!671 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!672 = !{!673, !675}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !670, file: !671, line: 39, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !670, file: !671, line: 39, baseType: !676, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !656, file: !653, line: 94, baseType: !655, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !656, file: !653, line: 95, baseType: !679, size: 128, offset: 256)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !653, line: 47, size: 128, elements: !680)
!680 = !{!681, !693}
!681 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !653, line: 48, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !679, file: !653, line: 48, size: 64, elements: !683)
!683 = !{!684, !689}
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !653, line: 49, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !653, line: 49, size: 64, elements: !686)
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !685, file: !653, line: 50, baseType: !439, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !685, file: !653, line: 50, baseType: !439, size: 32, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !682, file: !653, line: 52, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !324, line: 23, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !326, line: 31, baseType: !692)
!692 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !679, file: !653, line: 54, baseType: !694, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !656, file: !653, line: 96, baseType: !697, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !699)
!699 = !{!700, !701, !702, !710, !717, !718, !863, !2932, !2933, !2934, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !3206, !3214, !3215, !3216, !3234, !3235, !3236, !3237}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !698, file: !208, line: 611, baseType: !589, size: 16)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !698, file: !208, line: 612, baseType: !368, size: 16, offset: 16)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !698, file: !208, line: 613, baseType: !703, size: 32, offset: 32)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !704, line: 23, baseType: !705)
!704 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !704, line: 21, size: 32, elements: !706)
!706 = !{!707}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !705, file: !704, line: 22, baseType: !708, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !321, line: 32, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !581, line: 49, baseType: !7)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !698, file: !208, line: 614, baseType: !711, size: 32, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !704, line: 28, baseType: !712)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !704, line: 26, size: 32, elements: !713)
!713 = !{!714}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !712, file: !704, line: 27, baseType: !715, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !321, line: 33, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !581, line: 50, baseType: !7)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !698, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !698, file: !208, line: 622, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !722)
!722 = !{!723, !727, !737, !741, !747, !751, !757, !761, !765, !769, !773, !774, !780, !784, !810, !839, !843, !849, !854, !858, !859}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !721, file: !208, line: 1865, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!655, !697, !655, !7}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !721, file: !208, line: 1866, baseType: !728, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!337, !655, !697, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !733, line: 10, size: 128, elements: !734)
!733 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !732, file: !733, line: 11, baseType: !361, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !732, file: !733, line: 12, baseType: !322, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !721, file: !208, line: 1867, baseType: !738, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!328, !697, !328}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !721, file: !208, line: 1868, baseType: !742, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!745, !697, !328}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !721, file: !208, line: 1870, baseType: !748, size: 64, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!328, !655, !359, !328}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !721, file: !208, line: 1872, baseType: !752, size: 64, offset: 320)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!328, !697, !655, !589, !755}
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !321, line: 30, baseType: !756)
!756 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !721, file: !208, line: 1873, baseType: !758, size: 64, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!328, !655, !697, !655}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !721, file: !208, line: 1874, baseType: !762, size: 64, offset: 448)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!328, !697, !655}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !721, file: !208, line: 1875, baseType: !766, size: 64, offset: 512)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!328, !697, !655, !337}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !721, file: !208, line: 1876, baseType: !770, size: 64, offset: 576)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!328, !697, !655, !589}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !721, file: !208, line: 1877, baseType: !762, size: 64, offset: 640)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !721, file: !208, line: 1878, baseType: !775, size: 64, offset: 704)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!328, !697, !655, !589, !778}
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !321, line: 16, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !321, line: 13, baseType: !439)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !721, file: !208, line: 1879, baseType: !781, size: 64, offset: 768)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!328, !697, !655, !697, !655, !7}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !721, file: !208, line: 1881, baseType: !785, size: 64, offset: 832)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!328, !655, !788}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !790)
!790 = !{!791, !792, !793, !794, !795, !799, !807, !808, !809}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !789, file: !208, line: 220, baseType: !7, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !789, file: !208, line: 221, baseType: !589, size: 16, offset: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !789, file: !208, line: 222, baseType: !703, size: 32, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !789, file: !208, line: 223, baseType: !711, size: 32, offset: 96)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !789, file: !208, line: 224, baseType: !796, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !321, line: 46, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !581, line: 88, baseType: !798)
!798 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !789, file: !208, line: 225, baseType: !800, size: 128, offset: 192)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !801, line: 13, size: 128, elements: !802)
!801 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!802 = !{!803, !806}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !800, file: !801, line: 14, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !801, line: 8, baseType: !805)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !326, line: 30, baseType: !798)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !800, file: !801, line: 15, baseType: !583, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !789, file: !208, line: 226, baseType: !800, size: 128, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !789, file: !208, line: 227, baseType: !800, size: 128, offset: 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !789, file: !208, line: 234, baseType: !625, size: 64, offset: 576)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !721, file: !208, line: 1882, baseType: !811, size: 64, offset: 896)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!328, !814, !816, !439, !7}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !818, line: 22, size: 1152, elements: !819)
!818 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!819 = !{!820, !821, !822, !823, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !817, file: !818, line: 23, baseType: !439, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !817, file: !818, line: 24, baseType: !589, size: 16, offset: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !817, file: !818, line: 25, baseType: !7, size: 32, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !817, file: !818, line: 26, baseType: !824, size: 32, offset: 96)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !321, line: 104, baseType: !439)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !817, file: !818, line: 27, baseType: !690, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !817, file: !818, line: 28, baseType: !690, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !817, file: !818, line: 37, baseType: !690, size: 64, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !817, file: !818, line: 38, baseType: !778, size: 32, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !817, file: !818, line: 39, baseType: !778, size: 32, offset: 352)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !817, file: !818, line: 40, baseType: !703, size: 32, offset: 384)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !817, file: !818, line: 41, baseType: !711, size: 32, offset: 416)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !817, file: !818, line: 42, baseType: !796, size: 64, offset: 448)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !817, file: !818, line: 43, baseType: !800, size: 128, offset: 512)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !817, file: !818, line: 44, baseType: !800, size: 128, offset: 640)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !817, file: !818, line: 45, baseType: !800, size: 128, offset: 768)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !817, file: !818, line: 46, baseType: !800, size: 128, offset: 896)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !817, file: !818, line: 47, baseType: !690, size: 64, offset: 1024)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !817, file: !818, line: 48, baseType: !690, size: 64, offset: 1088)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !721, file: !208, line: 1883, baseType: !840, size: 64, offset: 960)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!579, !655, !359, !594}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !721, file: !208, line: 1884, baseType: !844, size: 64, offset: 1024)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!328, !697, !847, !690, !690}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !721, file: !208, line: 1886, baseType: !850, size: 64, offset: 1088)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!328, !697, !853, !328}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !721, file: !208, line: 1887, baseType: !855, size: 64, offset: 1152)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!328, !697, !655, !625, !7, !589}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !721, file: !208, line: 1890, baseType: !770, size: 64, offset: 1216)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !721, file: !208, line: 1891, baseType: !860, size: 64, offset: 1280)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!328, !697, !745, !328}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !698, file: !208, line: 623, baseType: !864, size: 64, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !866)
!866 = !{!867, !868, !869, !870, !871, !872, !919, !2540, !2622, !2705, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2721, !2725, !2726, !2729, !2730, !2733, !2734, !2735, !2776, !2802, !2803, !2804, !2805, !2806, !2807, !2810, !2812, !2819, !2820, !2822, !2823, !2824, !2883, !2884, !2899, !2900, !2901, !2902, !2903, !2906, !2907, !2908, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !865, file: !208, line: 1417, baseType: !480, size: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !865, file: !208, line: 1418, baseType: !778, size: 32, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !865, file: !208, line: 1419, baseType: !327, size: 8, offset: 160)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !865, file: !208, line: 1420, baseType: !597, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !865, file: !208, line: 1421, baseType: !796, size: 64, offset: 256)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !865, file: !208, line: 1422, baseType: !873, size: 64, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !875)
!875 = !{!876, !877, !878, !885, !889, !893, !897, !898, !899, !909, !912, !913, !914, !916, !917, !918}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !874, file: !208, line: 2229, baseType: !337, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !874, file: !208, line: 2230, baseType: !328, size: 32, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !874, file: !208, line: 2238, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!328, !882}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !884, line: 28, flags: DIFlagFwdDecl)
!884 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!885 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !874, file: !208, line: 2239, baseType: !886, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !888)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !874, file: !208, line: 2240, baseType: !890, size: 64, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!655, !873, !328, !337, !322}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !874, file: !208, line: 2242, baseType: !894, size: 64, offset: 320)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !864}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !874, file: !208, line: 2243, baseType: !341, size: 64, offset: 384)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !874, file: !208, line: 2244, baseType: !873, size: 64, offset: 448)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !874, file: !208, line: 2245, baseType: !900, size: 64, offset: 512)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !321, line: 182, size: 64, elements: !901)
!901 = !{!902}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !900, file: !321, line: 183, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !321, line: 186, size: 128, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !904, file: !321, line: 187, baseType: !903, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !904, file: !321, line: 187, baseType: !908, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !874, file: !208, line: 2247, baseType: !910, offset: 576)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !911, line: 187, elements: !524)
!911 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!912 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !874, file: !208, line: 2248, baseType: !910, offset: 576)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !874, file: !208, line: 2249, baseType: !910, offset: 576)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !874, file: !208, line: 2250, baseType: !915, offset: 576)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !910, elements: !551)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !874, file: !208, line: 2252, baseType: !910, offset: 576)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !874, file: !208, line: 2253, baseType: !910, offset: 576)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !874, file: !208, line: 2254, baseType: !910, offset: 576)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !865, file: !208, line: 1423, baseType: !920, size: 64, offset: 384)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !922)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !923)
!923 = !{!924, !928, !932, !933, !937, !943, !947, !948, !949, !953, !957, !958, !959, !960, !966, !971, !972, !979, !980, !981, !982, !2524, !2539}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !922, file: !208, line: 1936, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!697, !864}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !922, file: !208, line: 1937, baseType: !929, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !697}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !922, file: !208, line: 1938, baseType: !929, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !922, file: !208, line: 1940, baseType: !934, size: 64, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{null, !697, !328}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !922, file: !208, line: 1941, baseType: !938, size: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!328, !697, !941}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !922, file: !208, line: 1942, baseType: !944, size: 64, offset: 320)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!328, !697}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !922, file: !208, line: 1943, baseType: !929, size: 64, offset: 384)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !922, file: !208, line: 1944, baseType: !894, size: 64, offset: 448)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !922, file: !208, line: 1945, baseType: !950, size: 64, offset: 512)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!328, !864, !328}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !922, file: !208, line: 1946, baseType: !954, size: 64, offset: 576)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!328, !864}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !922, file: !208, line: 1947, baseType: !954, size: 64, offset: 640)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !922, file: !208, line: 1948, baseType: !954, size: 64, offset: 704)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !922, file: !208, line: 1949, baseType: !954, size: 64, offset: 768)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !922, file: !208, line: 1950, baseType: !961, size: 64, offset: 832)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!328, !655, !964}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !922, file: !208, line: 1951, baseType: !967, size: 64, offset: 896)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!328, !864, !970, !359}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !922, file: !208, line: 1952, baseType: !894, size: 64, offset: 960)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !922, file: !208, line: 1954, baseType: !973, size: 64, offset: 1024)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!328, !976, !655}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !978, line: 539, flags: DIFlagFwdDecl)
!978 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!979 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !922, file: !208, line: 1955, baseType: !973, size: 64, offset: 1088)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !922, file: !208, line: 1956, baseType: !973, size: 64, offset: 1152)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !922, file: !208, line: 1957, baseType: !973, size: 64, offset: 1216)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !922, file: !208, line: 1963, baseType: !983, size: 64, offset: 1280)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!328, !864, !986, !320}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !988, line: 68, size: 512, align: 128, elements: !989)
!988 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!989 = !{!990, !991, !2516, !2523}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !987, file: !988, line: 69, baseType: !597, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !987, file: !988, line: 77, baseType: !992, size: 320, offset: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !987, file: !988, line: 77, size: 320, elements: !993)
!993 = !{!994, !1175, !1180, !1208, !1216, !1222, !2508, !2515}
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !988, line: 78, baseType: !995, size: 320)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !988, line: 78, size: 320, elements: !996)
!996 = !{!997, !998, !1173, !1174}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !995, file: !988, line: 84, baseType: !480, size: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !995, file: !988, line: 86, baseType: !999, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !1001)
!1001 = !{!1002, !1003, !1010, !1011, !1012, !1027, !1043, !1044, !1045, !1046, !1166, !1167, !1170, !1171, !1172}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1000, file: !208, line: 452, baseType: !697, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1000, file: !208, line: 453, baseType: !1004, size: 128, offset: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1005, line: 292, size: 128, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1006 = !{!1007, !1008, !1009}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1004, file: !1005, line: 293, baseType: !510)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1004, file: !1005, line: 295, baseType: !320, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1004, file: !1005, line: 296, baseType: !322, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1000, file: !208, line: 454, baseType: !320, size: 32, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1000, file: !208, line: 455, baseType: !469, size: 32, offset: 224)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1000, file: !208, line: 460, baseType: !1013, size: 128, offset: 256)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1014, line: 125, size: 128, elements: !1015)
!1014 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!1015 = !{!1016, !1026}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1013, file: !1014, line: 126, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1014, line: 31, size: 64, elements: !1018)
!1018 = !{!1019}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1017, file: !1014, line: 32, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1014, line: 24, size: 192, align: 64, elements: !1022)
!1022 = !{!1023, !1024, !1025}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1021, file: !1014, line: 25, baseType: !597, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1021, file: !1014, line: 26, baseType: !1020, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1021, file: !1014, line: 27, baseType: !1020, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1013, file: !1014, line: 127, baseType: !1020, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1000, file: !208, line: 461, baseType: !1028, size: 256, offset: 384)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1029, line: 35, size: 256, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1030 = !{!1031, !1039, !1040, !1042}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1028, file: !1029, line: 36, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1033, line: 13, baseType: !1034)
!1033 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !321, line: 175, baseType: !1035)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !321, line: 173, size: 64, elements: !1036)
!1036 = !{!1037}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1035, file: !321, line: 174, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !324, line: 22, baseType: !805)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1028, file: !1029, line: 42, baseType: !1032, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1028, file: !1029, line: 46, baseType: !1041, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !511, line: 29, baseType: !518)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1028, file: !1029, line: 47, baseType: !480, size: 128, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1000, file: !208, line: 462, baseType: !597, size: 64, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1000, file: !208, line: 463, baseType: !597, size: 64, offset: 704)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1000, file: !208, line: 464, baseType: !597, size: 64, offset: 768)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1000, file: !208, line: 465, baseType: !1047, size: 64, offset: 832)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1050)
!1050 = !{!1051, !1055, !1059, !1063, !1067, !1071, !1077, !1083, !1087, !1092, !1096, !1100, !1104, !1130, !1134, !1140, !1141, !1142, !1146, !1151, !1155, !1162}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1049, file: !208, line: 368, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!328, !986, !941}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1049, file: !208, line: 369, baseType: !1056, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!328, !625, !986}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1049, file: !208, line: 372, baseType: !1060, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!328, !999, !941}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1049, file: !208, line: 375, baseType: !1064, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!328, !986}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1049, file: !208, line: 381, baseType: !1068, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!328, !625, !999, !483, !7}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1049, file: !208, line: 383, baseType: !1072, size: 64, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !1075}
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1049, file: !208, line: 385, baseType: !1078, size: 64, offset: 384)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!328, !625, !999, !796, !7, !7, !1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1049, file: !208, line: 388, baseType: !1084, size: 64, offset: 448)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!328, !625, !999, !796, !7, !7, !986, !322}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1049, file: !208, line: 393, baseType: !1088, size: 64, offset: 512)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!1091, !999, !1091}
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !321, line: 125, baseType: !690)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1049, file: !208, line: 394, baseType: !1093, size: 64, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !986, !7, !7}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1049, file: !208, line: 395, baseType: !1097, size: 64, offset: 640)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!328, !986, !320}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1049, file: !208, line: 396, baseType: !1101, size: 64, offset: 704)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{null, !986}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1049, file: !208, line: 397, baseType: !1105, size: 64, offset: 768)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!579, !1108, !1128}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1117, !1118, !1119, !1120, !1121}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1109, file: !208, line: 321, baseType: !625, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1109, file: !208, line: 326, baseType: !796, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1109, file: !208, line: 327, baseType: !1114, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !1108, !583, !583}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1109, file: !208, line: 328, baseType: !322, size: 64, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1109, file: !208, line: 329, baseType: !328, size: 32, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1109, file: !208, line: 330, baseType: !366, size: 16, offset: 288)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1109, file: !208, line: 331, baseType: !366, size: 16, offset: 304)
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !208, line: 332, baseType: !1122, size: 64, offset: 320)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1109, file: !208, line: 332, size: 64, elements: !1123)
!1123 = !{!1124, !1125}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1122, file: !208, line: 333, baseType: !7, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1122, file: !208, line: 334, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1049, file: !208, line: 402, baseType: !1131, size: 64, offset: 832)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!328, !999, !986, !986, !183}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1049, file: !208, line: 404, baseType: !1135, size: 64, offset: 896)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!755, !986, !1138}
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1139, line: 305, baseType: !7)
!1139 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1049, file: !208, line: 405, baseType: !1101, size: 64, offset: 960)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1049, file: !208, line: 406, baseType: !1064, size: 64, offset: 1024)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1049, file: !208, line: 407, baseType: !1143, size: 64, offset: 1088)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!328, !986, !597, !597}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1049, file: !208, line: 409, baseType: !1147, size: 64, offset: 1152)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !986, !1150, !1150}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1049, file: !208, line: 410, baseType: !1152, size: 64, offset: 1216)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!328, !999, !986}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1049, file: !208, line: 413, baseType: !1156, size: 64, offset: 1280)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!328, !1159, !625, !1161}
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1049, file: !208, line: 415, baseType: !1163, size: 64, offset: 1344)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !625}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1000, file: !208, line: 466, baseType: !597, size: 64, offset: 896)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1000, file: !208, line: 467, baseType: !1168, size: 32, offset: 960)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1169, line: 8, baseType: !439)
!1169 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1000, file: !208, line: 468, baseType: !510, offset: 992)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1000, file: !208, line: 469, baseType: !480, size: 128, offset: 1024)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1000, file: !208, line: 470, baseType: !322, size: 64, offset: 1152)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !995, file: !988, line: 87, baseType: !597, size: 64, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !995, file: !988, line: 94, baseType: !597, size: 64, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !988, line: 96, baseType: !1176, size: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !988, line: 96, size: 64, elements: !1177)
!1177 = !{!1178}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1176, file: !988, line: 101, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !321, line: 143, baseType: !690)
!1180 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !988, line: 103, baseType: !1181, size: 320)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !988, line: 103, size: 320, elements: !1182)
!1182 = !{!1183, !1193, !1196, !1197}
!1183 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !988, line: 104, baseType: !1184, size: 128)
!1184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1181, file: !988, line: 104, size: 128, elements: !1185)
!1185 = !{!1186, !1187}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1184, file: !988, line: 105, baseType: !480, size: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !988, line: 106, baseType: !1188, size: 128)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1184, file: !988, line: 106, size: 128, elements: !1189)
!1189 = !{!1190, !1191, !1192}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1188, file: !988, line: 107, baseType: !986, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1188, file: !988, line: 109, baseType: !328, size: 32, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1188, file: !988, line: 110, baseType: !328, size: 32, offset: 96)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1181, file: !988, line: 117, baseType: !1194, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !988, line: 117, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1181, file: !988, line: 119, baseType: !322, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !988, line: 120, baseType: !1198, size: 64, offset: 256)
!1198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1181, file: !988, line: 120, size: 64, elements: !1199)
!1199 = !{!1200, !1201, !1202}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1198, file: !988, line: 121, baseType: !322, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1198, file: !988, line: 122, baseType: !597, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !988, line: 123, baseType: !1203, size: 32)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1198, file: !988, line: 123, size: 32, elements: !1204)
!1204 = !{!1205, !1206, !1207}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1203, file: !988, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1203, file: !988, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1203, file: !988, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !988, line: 130, baseType: !1209, size: 192)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !988, line: 130, size: 192, elements: !1210)
!1210 = !{!1211, !1212, !1213, !1214, !1215}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1209, file: !988, line: 131, baseType: !597, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1209, file: !988, line: 134, baseType: !327, size: 8, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1209, file: !988, line: 135, baseType: !327, size: 8, offset: 72)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1209, file: !988, line: 136, baseType: !469, size: 32, offset: 96)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1209, file: !988, line: 137, baseType: !7, size: 32, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !988, line: 139, baseType: !1217, size: 256)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !988, line: 139, size: 256, elements: !1218)
!1218 = !{!1219, !1220, !1221}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1217, file: !988, line: 140, baseType: !597, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1217, file: !988, line: 141, baseType: !469, size: 32, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1217, file: !988, line: 143, baseType: !480, size: 128, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !988, line: 145, baseType: !1223, size: 256)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !988, line: 145, size: 256, elements: !1224)
!1224 = !{!1225, !1226, !1228, !1229, !2507}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1223, file: !988, line: 146, baseType: !597, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1223, file: !988, line: 147, baseType: !1227, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !978, line: 509, baseType: !986)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1223, file: !988, line: 148, baseType: !597, size: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !988, line: 149, baseType: !1230, size: 64, offset: 192)
!1230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1223, file: !988, line: 149, size: 64, elements: !1231)
!1231 = !{!1232, !2506}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1230, file: !988, line: 150, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !988, line: 388, size: 7296, elements: !1235)
!1235 = !{!1236, !2502}
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !988, line: 389, baseType: !1237, size: 7296)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1234, file: !988, line: 389, size: 7296, elements: !1238)
!1238 = !{!1239, !1277, !1278, !1279, !1283, !1284, !1285, !1286, !1287, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1328, !1336, !1339, !1385, !1386, !2486, !2487, !2490, !2491, !2492, !2495, !2496, !2497, !2500, !2501}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1237, file: !988, line: 390, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !988, line: 305, size: 1472, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1257, !1258, !1263, !1264, !1267, !1271, !1272, !1273, !1274, !1275}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1241, file: !988, line: 308, baseType: !597, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1241, file: !988, line: 309, baseType: !597, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1241, file: !988, line: 313, baseType: !1240, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1241, file: !988, line: 313, baseType: !1240, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1241, file: !988, line: 315, baseType: !1021, size: 192, align: 64, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1241, file: !988, line: 323, baseType: !597, size: 64, offset: 448)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1241, file: !988, line: 327, baseType: !1233, size: 64, offset: 512)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1241, file: !988, line: 333, baseType: !1251, size: 64, offset: 576)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !978, line: 284, baseType: !1252)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !978, line: 284, size: 64, elements: !1253)
!1253 = !{!1254}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1252, file: !978, line: 284, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1256, line: 19, baseType: !597)
!1256 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1241, file: !988, line: 334, baseType: !597, size: 64, offset: 640)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1241, file: !988, line: 343, baseType: !1259, size: 256, offset: 704)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1241, file: !988, line: 340, size: 256, elements: !1260)
!1260 = !{!1261, !1262}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1259, file: !988, line: 341, baseType: !1021, size: 192, align: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1259, file: !988, line: 342, baseType: !597, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1241, file: !988, line: 351, baseType: !480, size: 128, offset: 960)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1241, file: !988, line: 353, baseType: !1265, size: 64, offset: 1088)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !988, line: 353, flags: DIFlagFwdDecl)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1241, file: !988, line: 356, baseType: !1268, size: 64, offset: 1152)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1270)
!1270 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !988, line: 356, flags: DIFlagFwdDecl)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1241, file: !988, line: 359, baseType: !597, size: 64, offset: 1216)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1241, file: !988, line: 361, baseType: !625, size: 64, offset: 1280)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1241, file: !988, line: 362, baseType: !322, size: 64, offset: 1344)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1241, file: !988, line: 365, baseType: !1032, size: 64, offset: 1408)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1241, file: !988, line: 373, baseType: !1276, offset: 1472)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !988, line: 296, elements: !524)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1237, file: !988, line: 391, baseType: !1017, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1237, file: !988, line: 392, baseType: !690, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1237, file: !988, line: 394, baseType: !1280, size: 64, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!597, !625, !597, !597, !597, !597}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1237, file: !988, line: 398, baseType: !597, size: 64, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1237, file: !988, line: 399, baseType: !597, size: 64, offset: 320)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1237, file: !988, line: 405, baseType: !597, size: 64, offset: 384)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1237, file: !988, line: 406, baseType: !597, size: 64, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1237, file: !988, line: 407, baseType: !1288, size: 64, offset: 512)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !978, line: 286, baseType: !1290)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !978, line: 286, size: 64, elements: !1291)
!1291 = !{!1292}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1290, file: !978, line: 286, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1256, line: 18, baseType: !597)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1237, file: !988, line: 416, baseType: !469, size: 32, offset: 576)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1237, file: !988, line: 428, baseType: !469, size: 32, offset: 608)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1237, file: !988, line: 437, baseType: !469, size: 32, offset: 640)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1237, file: !988, line: 447, baseType: !469, size: 32, offset: 672)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1237, file: !988, line: 450, baseType: !1032, size: 64, offset: 704)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1237, file: !988, line: 452, baseType: !328, size: 32, offset: 768)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1237, file: !988, line: 454, baseType: !510, offset: 800)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1237, file: !988, line: 457, baseType: !1028, size: 256, offset: 832)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1237, file: !988, line: 459, baseType: !480, size: 128, offset: 1088)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1237, file: !988, line: 466, baseType: !597, size: 64, offset: 1216)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1237, file: !988, line: 467, baseType: !597, size: 64, offset: 1280)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1237, file: !988, line: 469, baseType: !597, size: 64, offset: 1344)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1237, file: !988, line: 470, baseType: !597, size: 64, offset: 1408)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1237, file: !988, line: 471, baseType: !1034, size: 64, offset: 1472)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1237, file: !988, line: 472, baseType: !597, size: 64, offset: 1536)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1237, file: !988, line: 473, baseType: !597, size: 64, offset: 1600)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1237, file: !988, line: 474, baseType: !597, size: 64, offset: 1664)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1237, file: !988, line: 475, baseType: !597, size: 64, offset: 1728)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1237, file: !988, line: 477, baseType: !510, offset: 1792)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1237, file: !988, line: 478, baseType: !597, size: 64, offset: 1792)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1237, file: !988, line: 478, baseType: !597, size: 64, offset: 1856)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1237, file: !988, line: 478, baseType: !597, size: 64, offset: 1920)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1237, file: !988, line: 478, baseType: !597, size: 64, offset: 1984)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1237, file: !988, line: 479, baseType: !597, size: 64, offset: 2048)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1237, file: !988, line: 479, baseType: !597, size: 64, offset: 2112)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1237, file: !988, line: 479, baseType: !597, size: 64, offset: 2176)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1237, file: !988, line: 480, baseType: !597, size: 64, offset: 2240)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1237, file: !988, line: 480, baseType: !597, size: 64, offset: 2304)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1237, file: !988, line: 480, baseType: !597, size: 64, offset: 2368)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1237, file: !988, line: 480, baseType: !597, size: 64, offset: 2432)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1237, file: !988, line: 482, baseType: !1325, size: 2816, offset: 2496)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, size: 2816, elements: !1326)
!1326 = !{!1327}
!1327 = !DISubrange(count: 44)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1237, file: !988, line: 488, baseType: !1329, size: 256, offset: 5312)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1330, line: 60, size: 256, elements: !1331)
!1330 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1331 = !{!1332}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1329, file: !1330, line: 61, baseType: !1333, size: 256)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1032, size: 256, elements: !1334)
!1334 = !{!1335}
!1335 = !DISubrange(count: 4)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1237, file: !988, line: 490, baseType: !1337, size: 64, offset: 5568)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !988, line: 490, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1237, file: !988, line: 493, baseType: !1340, size: 896, offset: 5632)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1341, line: 53, baseType: !1342)
!1341 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1341, line: 13, size: 896, elements: !1343)
!1343 = !{!1344, !1345, !1346, !1347, !1350, !1351, !1358, !1359, !1379, !1380, !1381}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1342, file: !1341, line: 18, baseType: !690, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1342, file: !1341, line: 28, baseType: !1034, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1342, file: !1341, line: 31, baseType: !1028, size: 256, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1342, file: !1341, line: 32, baseType: !1348, size: 64, offset: 384)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1341, line: 32, flags: DIFlagFwdDecl)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1342, file: !1341, line: 37, baseType: !368, size: 16, offset: 448)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1342, file: !1341, line: 40, baseType: !1352, size: 192, offset: 512)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1353, line: 53, size: 192, elements: !1354)
!1353 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1354 = !{!1355, !1356, !1357}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1352, file: !1353, line: 54, baseType: !1032, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1352, file: !1353, line: 55, baseType: !510, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1352, file: !1353, line: 59, baseType: !480, size: 128, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1342, file: !1341, line: 41, baseType: !322, size: 64, offset: 704)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1342, file: !1341, line: 42, baseType: !1360, size: 64, offset: 768)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1362)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1363, line: 13, size: 896, elements: !1364)
!1363 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1362, file: !1363, line: 14, baseType: !322, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1362, file: !1363, line: 15, baseType: !597, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1362, file: !1363, line: 17, baseType: !597, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1362, file: !1363, line: 17, baseType: !597, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1362, file: !1363, line: 19, baseType: !583, size: 64, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1362, file: !1363, line: 21, baseType: !583, size: 64, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1362, file: !1363, line: 22, baseType: !583, size: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1362, file: !1363, line: 23, baseType: !583, size: 64, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1362, file: !1363, line: 24, baseType: !583, size: 64, offset: 512)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1362, file: !1363, line: 25, baseType: !583, size: 64, offset: 576)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1362, file: !1363, line: 26, baseType: !583, size: 64, offset: 640)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1362, file: !1363, line: 27, baseType: !583, size: 64, offset: 704)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1362, file: !1363, line: 28, baseType: !583, size: 64, offset: 768)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1362, file: !1363, line: 29, baseType: !583, size: 64, offset: 832)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1342, file: !1341, line: 44, baseType: !469, size: 32, offset: 832)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1342, file: !1341, line: 50, baseType: !366, size: 16, offset: 864)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1342, file: !1341, line: 51, baseType: !1382, size: 16, offset: 880)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !324, line: 18, baseType: !1383)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !326, line: 23, baseType: !1384)
!1384 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1237, file: !988, line: 495, baseType: !597, size: 64, offset: 6528)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1237, file: !988, line: 497, baseType: !1387, size: 64, offset: 6592)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !988, line: 381, size: 384, elements: !1389)
!1389 = !{!1390, !1391, !2485}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1388, file: !988, line: 382, baseType: !469, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1388, file: !988, line: 383, baseType: !1392, size: 128, offset: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !988, line: 376, size: 128, elements: !1393)
!1393 = !{!1394, !2483}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1392, file: !988, line: 377, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1397, line: 640, size: 48640, elements: !1398)
!1397 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1398 = !{!1399, !1405, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1420, !1438, !1449, !1530, !1531, !1532, !1543, !1544, !1546, !1547, !1548, !1549, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1633, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1671, !1673, !1674, !1675, !1687, !1688, !1689, !1690, !1691, !1692, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1716, !1721, !1903, !1904, !1905, !1906, !1910, !1913, !1916, !1919, !1922, !1926, !2027, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2073, !2074, !2075, !2076, !2077, !2082, !2083, !2084, !2087, !2088, !2091, !2094, !2097, !2100, !2143, !2146, !2147, !2226, !2227, !2230, !2231, !2234, !2235, !2236, !2240, !2241, !2242, !2255, !2256, !2257, !2267, !2272, !2275, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1396, file: !1397, line: 646, baseType: !1400, size: 128)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1401, line: 56, size: 128, elements: !1402)
!1401 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1400, file: !1401, line: 57, baseType: !597, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1400, file: !1401, line: 58, baseType: !439, size: 32, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1396, file: !1397, line: 649, baseType: !1406, size: 64, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !583)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1396, file: !1397, line: 657, baseType: !322, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1396, file: !1397, line: 658, baseType: !464, size: 32, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1396, file: !1397, line: 660, baseType: !7, size: 32, offset: 288)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1396, file: !1397, line: 661, baseType: !7, size: 32, offset: 320)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1396, file: !1397, line: 684, baseType: !328, size: 32, offset: 352)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1396, file: !1397, line: 686, baseType: !328, size: 32, offset: 384)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1396, file: !1397, line: 687, baseType: !328, size: 32, offset: 416)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1396, file: !1397, line: 688, baseType: !328, size: 32, offset: 448)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1396, file: !1397, line: 689, baseType: !7, size: 32, offset: 480)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1396, file: !1397, line: 691, baseType: !1417, size: 64, offset: 512)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1419)
!1419 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1397, line: 691, flags: DIFlagFwdDecl)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1396, file: !1397, line: 692, baseType: !1421, size: 832, offset: 576)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1397, line: 451, size: 832, elements: !1422)
!1422 = !{!1423, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1421, file: !1397, line: 453, baseType: !1424, size: 128)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1397, line: 325, size: 128, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1424, file: !1397, line: 326, baseType: !597, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1424, file: !1397, line: 327, baseType: !439, size: 32, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1421, file: !1397, line: 454, baseType: !1021, size: 192, align: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1421, file: !1397, line: 455, baseType: !480, size: 128, offset: 320)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1421, file: !1397, line: 456, baseType: !7, size: 32, offset: 448)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1421, file: !1397, line: 458, baseType: !690, size: 64, offset: 512)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1421, file: !1397, line: 459, baseType: !690, size: 64, offset: 576)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1421, file: !1397, line: 460, baseType: !690, size: 64, offset: 640)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1421, file: !1397, line: 461, baseType: !690, size: 64, offset: 704)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1421, file: !1397, line: 463, baseType: !690, size: 64, offset: 768)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1421, file: !1397, line: 465, baseType: !1437, offset: 832)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1397, line: 415, elements: !524)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1396, file: !1397, line: 693, baseType: !1439, size: 384, offset: 1408)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1397, line: 489, size: 384, elements: !1440)
!1440 = !{!1441, !1442, !1443, !1444, !1445, !1446, !1447}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1439, file: !1397, line: 490, baseType: !480, size: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1439, file: !1397, line: 491, baseType: !597, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1439, file: !1397, line: 492, baseType: !597, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1439, file: !1397, line: 493, baseType: !7, size: 32, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1439, file: !1397, line: 494, baseType: !368, size: 16, offset: 288)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1439, file: !1397, line: 495, baseType: !368, size: 16, offset: 304)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1439, file: !1397, line: 497, baseType: !1448, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1396, file: !1397, line: 697, baseType: !1450, size: 1792, offset: 1792)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1397, line: 507, size: 1792, elements: !1451)
!1451 = !{!1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1527, !1528}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1450, file: !1397, line: 508, baseType: !1021, size: 192, align: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1450, file: !1397, line: 515, baseType: !690, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1450, file: !1397, line: 516, baseType: !690, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1450, file: !1397, line: 517, baseType: !690, size: 64, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1450, file: !1397, line: 518, baseType: !690, size: 64, offset: 384)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1450, file: !1397, line: 519, baseType: !690, size: 64, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1450, file: !1397, line: 526, baseType: !1038, size: 64, offset: 512)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1450, file: !1397, line: 527, baseType: !690, size: 64, offset: 576)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1450, file: !1397, line: 528, baseType: !7, size: 32, offset: 640)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1450, file: !1397, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1450, file: !1397, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1450, file: !1397, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1450, file: !1397, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1450, file: !1397, line: 563, baseType: !1466, size: 512, offset: 704)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !1467)
!1467 = !{!1468, !1476, !1477, !1482, !1523, !1524, !1525, !1526}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1466, file: !191, line: 119, baseType: !1469, size: 256)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1470, line: 9, size: 256, elements: !1471)
!1470 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1469, file: !1470, line: 10, baseType: !1021, size: 192, align: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1469, file: !1470, line: 11, baseType: !1474, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1475, line: 29, baseType: !1038)
!1475 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1466, file: !191, line: 120, baseType: !1474, size: 64, offset: 256)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1466, file: !191, line: 121, baseType: !1478, size: 64, offset: 320)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!190, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1466, file: !191, line: 122, baseType: !1483, size: 64, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !1485)
!1485 = !{!1486, !1504, !1505, !1508, !1513, !1514, !1518, !1522}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1484, file: !191, line: 160, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !1489)
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1488, file: !191, line: 215, baseType: !1041)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1488, file: !191, line: 216, baseType: !7, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1488, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1488, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1488, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1488, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1488, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1488, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1488, file: !191, line: 233, baseType: !1474, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1488, file: !191, line: 234, baseType: !1481, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1488, file: !191, line: 235, baseType: !1474, size: 64, offset: 256)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1488, file: !191, line: 236, baseType: !1481, size: 64, offset: 320)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1488, file: !191, line: 237, baseType: !1503, size: 4096, offset: 512)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1484, size: 4096, elements: !450)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1484, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1484, file: !191, line: 162, baseType: !1506, size: 32, offset: 96)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !321, line: 27, baseType: !1507)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !581, line: 96, baseType: !328)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1484, file: !191, line: 163, baseType: !1509, size: 32, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !661, line: 276, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !661, line: 276, size: 32, elements: !1511)
!1511 = !{!1512}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1510, file: !661, line: 276, baseType: !665, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1484, file: !191, line: 164, baseType: !1481, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1484, file: !191, line: 165, baseType: !1515, size: 128, offset: 256)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1470, line: 14, size: 128, elements: !1516)
!1516 = !{!1517}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1515, file: !1470, line: 15, baseType: !1013, size: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1484, file: !191, line: 166, baseType: !1519, size: 64, offset: 384)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!1474}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1484, file: !191, line: 167, baseType: !1474, size: 64, offset: 448)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1466, file: !191, line: 123, baseType: !323, size: 8, offset: 448)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1466, file: !191, line: 124, baseType: !323, size: 8, offset: 456)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1466, file: !191, line: 125, baseType: !323, size: 8, offset: 464)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1466, file: !191, line: 126, baseType: !323, size: 8, offset: 472)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1450, file: !1397, line: 572, baseType: !1466, size: 512, offset: 1216)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1450, file: !1397, line: 580, baseType: !1529, size: 64, offset: 1728)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1396, file: !1397, line: 721, baseType: !7, size: 32, offset: 3584)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1396, file: !1397, line: 722, baseType: !328, size: 32, offset: 3616)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1396, file: !1397, line: 723, baseType: !1533, size: 64, offset: 3648)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1535)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1536, line: 17, baseType: !1537)
!1536 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1536, line: 17, size: 64, elements: !1538)
!1538 = !{!1539}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1537, file: !1536, line: 17, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, size: 64, elements: !1541)
!1541 = !{!1542}
!1542 = !DISubrange(count: 1)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1396, file: !1397, line: 724, baseType: !1535, size: 64, offset: 3712)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1396, file: !1397, line: 749, baseType: !1545, offset: 3776)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1397, line: 290, elements: !524)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1396, file: !1397, line: 751, baseType: !480, size: 128, offset: 3776)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1396, file: !1397, line: 757, baseType: !1233, size: 64, offset: 3904)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1396, file: !1397, line: 758, baseType: !1233, size: 64, offset: 3968)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1396, file: !1397, line: 761, baseType: !1550, size: 320, offset: 4032)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1330, line: 34, size: 320, elements: !1551)
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1550, file: !1330, line: 35, baseType: !690, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1550, file: !1330, line: 36, baseType: !1554, size: 256, offset: 64)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1240, size: 256, elements: !1334)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1396, file: !1397, line: 766, baseType: !328, size: 32, offset: 4352)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1396, file: !1397, line: 767, baseType: !328, size: 32, offset: 4384)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1396, file: !1397, line: 768, baseType: !328, size: 32, offset: 4416)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1396, file: !1397, line: 770, baseType: !328, size: 32, offset: 4448)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1396, file: !1397, line: 772, baseType: !597, size: 64, offset: 4480)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1396, file: !1397, line: 775, baseType: !7, size: 32, offset: 4544)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1396, file: !1397, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1396, file: !1397, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1396, file: !1397, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1396, file: !1397, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1396, file: !1397, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1396, file: !1397, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1396, file: !1397, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1396, file: !1397, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1396, file: !1397, line: 831, baseType: !597, size: 64, offset: 4672)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1396, file: !1397, line: 833, baseType: !1571, size: 384, offset: 4736)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !1572)
!1572 = !{!1573, !1578}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1571, file: !196, line: 26, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!583, !1577}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !196, line: 27, baseType: !1579, size: 320, offset: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1571, file: !196, line: 27, size: 320, elements: !1580)
!1580 = !{!1581, !1591, !1618}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1579, file: !196, line: 36, baseType: !1582, size: 320)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1579, file: !196, line: 29, size: 320, elements: !1583)
!1583 = !{!1584, !1586, !1587, !1588, !1589, !1590}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1582, file: !196, line: 30, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1582, file: !196, line: 31, baseType: !439, size: 32, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1582, file: !196, line: 32, baseType: !439, size: 32, offset: 96)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1582, file: !196, line: 33, baseType: !439, size: 32, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1582, file: !196, line: 34, baseType: !690, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1582, file: !196, line: 35, baseType: !1585, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1579, file: !196, line: 46, baseType: !1592, size: 192)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1579, file: !196, line: 38, size: 192, elements: !1593)
!1593 = !{!1594, !1595, !1596, !1617}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1592, file: !196, line: 39, baseType: !1506, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1592, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, scope: !1592, file: !196, line: 41, baseType: !1597, size: 64, offset: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1592, file: !196, line: 41, size: 64, elements: !1598)
!1598 = !{!1599, !1607}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1597, file: !196, line: 42, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1602, line: 7, size: 128, elements: !1603)
!1602 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1603 = !{!1604, !1606}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1601, file: !1602, line: 8, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !581, line: 93, baseType: !798)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1601, file: !1602, line: 9, baseType: !798, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1597, file: !196, line: 43, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1610, line: 7, size: 64, elements: !1611)
!1610 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1611 = !{!1612, !1616}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1609, file: !1610, line: 8, baseType: !1613, size: 32)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1610, line: 5, baseType: !1614)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !324, line: 20, baseType: !1615)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !326, line: 26, baseType: !328)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1609, file: !1610, line: 9, baseType: !1614, size: 32, offset: 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1592, file: !196, line: 45, baseType: !690, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1579, file: !196, line: 54, baseType: !1619, size: 256)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1579, file: !196, line: 48, size: 256, elements: !1620)
!1620 = !{!1621, !1629, !1630, !1631, !1632}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1619, file: !196, line: 49, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1624, line: 36, size: 64, elements: !1625)
!1624 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1625 = !{!1626, !1627, !1628}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1623, file: !1624, line: 37, baseType: !328, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1623, file: !1624, line: 38, baseType: !1384, size: 16, offset: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1623, file: !1624, line: 39, baseType: !1384, size: 16, offset: 48)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1619, file: !196, line: 50, baseType: !328, size: 32, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1619, file: !196, line: 51, baseType: !328, size: 32, offset: 96)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1619, file: !196, line: 52, baseType: !597, size: 64, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1619, file: !196, line: 53, baseType: !597, size: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1396, file: !1397, line: 835, baseType: !1634, size: 32, offset: 5120)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !321, line: 22, baseType: !1635)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !581, line: 28, baseType: !328)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1396, file: !1397, line: 836, baseType: !1634, size: 32, offset: 5152)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1396, file: !1397, line: 840, baseType: !597, size: 64, offset: 5184)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1396, file: !1397, line: 849, baseType: !1395, size: 64, offset: 5248)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1396, file: !1397, line: 852, baseType: !1395, size: 64, offset: 5312)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1396, file: !1397, line: 857, baseType: !480, size: 128, offset: 5376)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1396, file: !1397, line: 858, baseType: !480, size: 128, offset: 5504)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1396, file: !1397, line: 859, baseType: !1395, size: 64, offset: 5632)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1396, file: !1397, line: 867, baseType: !480, size: 128, offset: 5696)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1396, file: !1397, line: 868, baseType: !480, size: 128, offset: 5824)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1396, file: !1397, line: 871, baseType: !1646, size: 64, offset: 5952)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !1648)
!1648 = !{!1649, !1650, !1651, !1652, !1654, !1655, !1662, !1663}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1647, file: !217, line: 61, baseType: !464, size: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1647, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1647, file: !217, line: 63, baseType: !510, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1647, file: !217, line: 65, baseType: !1653, size: 256, offset: 64)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !900, size: 256, elements: !1334)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1647, file: !217, line: 66, baseType: !900, size: 64, offset: 320)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1647, file: !217, line: 68, baseType: !1656, size: 128, offset: 384)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1657, line: 40, baseType: !1658)
!1657 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1657, line: 36, size: 128, elements: !1659)
!1659 = !{!1660, !1661}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1658, file: !1657, line: 37, baseType: !510)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1658, file: !1657, line: 38, baseType: !480, size: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1647, file: !217, line: 69, baseType: !638, size: 128, align: 64, offset: 512)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1647, file: !217, line: 70, baseType: !1664, size: 128, offset: 640)
!1664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1665, size: 128, elements: !1541)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !1666)
!1666 = !{!1667, !1668}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1665, file: !217, line: 55, baseType: !328, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1665, file: !217, line: 56, baseType: !1669, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1396, file: !1397, line: 872, baseType: !1672, size: 512, offset: 6016)
!1672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !904, size: 512, elements: !1334)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1396, file: !1397, line: 873, baseType: !480, size: 128, offset: 6528)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1396, file: !1397, line: 874, baseType: !480, size: 128, offset: 6656)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1396, file: !1397, line: 876, baseType: !1676, size: 64, offset: 6784)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1678, line: 26, size: 192, elements: !1679)
!1678 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1677, file: !1678, line: 27, baseType: !7, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1677, file: !1678, line: 28, baseType: !1682, size: 128, offset: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1683, line: 43, size: 128, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1682, file: !1683, line: 44, baseType: !1041)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1682, file: !1683, line: 45, baseType: !480, size: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1396, file: !1397, line: 879, baseType: !970, size: 64, offset: 6848)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1396, file: !1397, line: 882, baseType: !970, size: 64, offset: 6912)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1396, file: !1397, line: 884, baseType: !690, size: 64, offset: 6976)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1396, file: !1397, line: 885, baseType: !690, size: 64, offset: 7040)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1396, file: !1397, line: 890, baseType: !690, size: 64, offset: 7104)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1396, file: !1397, line: 891, baseType: !1693, size: 128, offset: 7168)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1397, line: 242, size: 128, elements: !1694)
!1694 = !{!1695, !1696, !1697}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1693, file: !1397, line: 244, baseType: !690, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1693, file: !1397, line: 245, baseType: !690, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1693, file: !1397, line: 246, baseType: !1041, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1396, file: !1397, line: 900, baseType: !597, size: 64, offset: 7296)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1396, file: !1397, line: 901, baseType: !597, size: 64, offset: 7360)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1396, file: !1397, line: 904, baseType: !690, size: 64, offset: 7424)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1396, file: !1397, line: 907, baseType: !690, size: 64, offset: 7488)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1396, file: !1397, line: 910, baseType: !597, size: 64, offset: 7552)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1396, file: !1397, line: 911, baseType: !597, size: 64, offset: 7616)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1396, file: !1397, line: 914, baseType: !1705, size: 640, offset: 7680)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1706, line: 123, size: 640, elements: !1707)
!1706 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1707 = !{!1708, !1714, !1715}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1705, file: !1706, line: 124, baseType: !1709, size: 576)
!1709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1710, size: 576, elements: !551)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1706, line: 108, size: 192, elements: !1711)
!1711 = !{!1712, !1713}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1710, file: !1706, line: 109, baseType: !690, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1710, file: !1706, line: 110, baseType: !1515, size: 128, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1705, file: !1706, line: 125, baseType: !7, size: 32, offset: 576)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1705, file: !1706, line: 126, baseType: !7, size: 32, offset: 608)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1396, file: !1397, line: 917, baseType: !1717, size: 192, offset: 8320)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1706, line: 134, size: 192, elements: !1718)
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1717, file: !1706, line: 135, baseType: !638, size: 128, align: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1717, file: !1706, line: 136, baseType: !7, size: 32, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1396, file: !1397, line: 923, baseType: !1722, size: 64, offset: 8512)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1724)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1725, line: 111, size: 1280, elements: !1726)
!1725 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1726 = !{!1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1746, !1747, !1748, !1749, !1750, !1751, !1856, !1857, !1858, !1859, !1885, !1888, !1898}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1724, file: !1725, line: 112, baseType: !469, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1724, file: !1725, line: 120, baseType: !703, size: 32, offset: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1724, file: !1725, line: 121, baseType: !711, size: 32, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1724, file: !1725, line: 122, baseType: !703, size: 32, offset: 96)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1724, file: !1725, line: 123, baseType: !711, size: 32, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1724, file: !1725, line: 124, baseType: !703, size: 32, offset: 160)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1724, file: !1725, line: 125, baseType: !711, size: 32, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1724, file: !1725, line: 126, baseType: !703, size: 32, offset: 224)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1724, file: !1725, line: 127, baseType: !711, size: 32, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1724, file: !1725, line: 128, baseType: !7, size: 32, offset: 288)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1724, file: !1725, line: 129, baseType: !1738, size: 64, offset: 320)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1739, line: 26, baseType: !1740)
!1739 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1739, line: 24, size: 64, elements: !1741)
!1741 = !{!1742}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1740, file: !1739, line: 25, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 64, elements: !1744)
!1744 = !{!1745}
!1745 = !DISubrange(count: 2)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1724, file: !1725, line: 130, baseType: !1738, size: 64, offset: 384)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1724, file: !1725, line: 131, baseType: !1738, size: 64, offset: 448)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1724, file: !1725, line: 132, baseType: !1738, size: 64, offset: 512)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1724, file: !1725, line: 133, baseType: !1738, size: 64, offset: 576)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1724, file: !1725, line: 135, baseType: !327, size: 8, offset: 640)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1724, file: !1725, line: 137, baseType: !1752, size: 64, offset: 704)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1754, line: 189, size: 1664, elements: !1755)
!1754 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1755 = !{!1756, !1757, !1760, !1765, !1766, !1769, !1770, !1775, !1776, !1777, !1778, !1780, !1781, !1782, !1783, !1784, !1820, !1841}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1753, file: !1754, line: 190, baseType: !464, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1753, file: !1754, line: 191, baseType: !1758, size: 32, offset: 32)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1754, line: 28, baseType: !1759)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !321, line: 98, baseType: !1614)
!1760 = !DIDerivedType(tag: DW_TAG_member, scope: !1753, file: !1754, line: 192, baseType: !1761, size: 192, offset: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1753, file: !1754, line: 192, size: 192, elements: !1762)
!1762 = !{!1763, !1764}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1761, file: !1754, line: 193, baseType: !480, size: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1761, file: !1754, line: 194, baseType: !1021, size: 192, align: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1753, file: !1754, line: 199, baseType: !1028, size: 256, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1753, file: !1754, line: 200, baseType: !1767, size: 64, offset: 512)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1754, line: 200, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1753, file: !1754, line: 201, baseType: !322, size: 64, offset: 576)
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !1753, file: !1754, line: 202, baseType: !1771, size: 64, offset: 640)
!1771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1753, file: !1754, line: 202, size: 64, elements: !1772)
!1772 = !{!1773, !1774}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1771, file: !1754, line: 203, baseType: !804, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1771, file: !1754, line: 204, baseType: !804, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1753, file: !1754, line: 206, baseType: !804, size: 64, offset: 704)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1753, file: !1754, line: 207, baseType: !703, size: 32, offset: 768)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1753, file: !1754, line: 208, baseType: !711, size: 32, offset: 800)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1753, file: !1754, line: 209, baseType: !1779, size: 32, offset: 832)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1754, line: 31, baseType: !824)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1753, file: !1754, line: 210, baseType: !368, size: 16, offset: 864)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1753, file: !1754, line: 211, baseType: !368, size: 16, offset: 880)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1753, file: !1754, line: 215, baseType: !1384, size: 16, offset: 896)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1753, file: !1754, line: 222, baseType: !597, size: 64, offset: 960)
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1753, file: !1754, line: 239, baseType: !1785, size: 320, offset: 1024)
!1785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1753, file: !1754, line: 239, size: 320, elements: !1786)
!1786 = !{!1787, !1812}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1785, file: !1754, line: 240, baseType: !1788, size: 320)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1754, line: 108, size: 320, elements: !1789)
!1789 = !{!1790, !1791, !1801, !1804, !1811}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1788, file: !1754, line: 110, baseType: !597, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, scope: !1788, file: !1754, line: 111, baseType: !1792, size: 64, offset: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1788, file: !1754, line: 111, size: 64, elements: !1793)
!1793 = !{!1794, !1800}
!1794 = !DIDerivedType(tag: DW_TAG_member, scope: !1792, file: !1754, line: 112, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1792, file: !1754, line: 112, size: 64, elements: !1796)
!1796 = !{!1797, !1798}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1795, file: !1754, line: 114, baseType: !366, size: 16)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1795, file: !1754, line: 115, baseType: !1799, size: 48, offset: 16)
!1799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 48, elements: !489)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1792, file: !1754, line: 121, baseType: !597, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1788, file: !1754, line: 123, baseType: !1802, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1754, line: 96, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1788, file: !1754, line: 124, baseType: !1805, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1754, line: 102, size: 192, elements: !1807)
!1807 = !{!1808, !1809, !1810}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1806, file: !1754, line: 103, baseType: !638, size: 128, align: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1806, file: !1754, line: 104, baseType: !464, size: 32, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1806, file: !1754, line: 105, baseType: !755, size: 8, offset: 160)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1788, file: !1754, line: 125, baseType: !337, size: 64, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, scope: !1785, file: !1754, line: 241, baseType: !1813, size: 320)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1785, file: !1754, line: 241, size: 320, elements: !1814)
!1814 = !{!1815, !1816, !1817, !1818, !1819}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1813, file: !1754, line: 242, baseType: !597, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1813, file: !1754, line: 243, baseType: !597, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1813, file: !1754, line: 244, baseType: !1802, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1813, file: !1754, line: 245, baseType: !1805, size: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1813, file: !1754, line: 246, baseType: !359, size: 64, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, scope: !1753, file: !1754, line: 254, baseType: !1821, size: 256, offset: 1344)
!1821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1753, file: !1754, line: 254, size: 256, elements: !1822)
!1822 = !{!1823, !1829}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1821, file: !1754, line: 255, baseType: !1824, size: 256)
!1824 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1754, line: 128, size: 256, elements: !1825)
!1825 = !{!1826, !1827}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1824, file: !1754, line: 129, baseType: !322, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1824, file: !1754, line: 130, baseType: !1828, size: 256)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 256, elements: !1334)
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1821, file: !1754, line: 256, baseType: !1830, size: 256)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1821, file: !1754, line: 256, size: 256, elements: !1831)
!1831 = !{!1832, !1833}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1830, file: !1754, line: 258, baseType: !480, size: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1830, file: !1754, line: 259, baseType: !1834, size: 128, offset: 128)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1835, line: 22, size: 128, elements: !1836)
!1835 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1836 = !{!1837, !1840}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1834, file: !1835, line: 23, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1835, line: 23, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1834, file: !1835, line: 24, baseType: !597, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1753, file: !1754, line: 274, baseType: !1842, size: 64, offset: 1600)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1754, line: 170, size: 192, elements: !1844)
!1844 = !{!1845, !1854, !1855}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1843, file: !1754, line: 171, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1754, line: 165, baseType: !1847)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!328, !1752, !1850, !1852, !1752}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1803)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1824)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1843, file: !1754, line: 172, baseType: !1752, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1843, file: !1754, line: 173, baseType: !1802, size: 64, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1724, file: !1725, line: 138, baseType: !1752, size: 64, offset: 768)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1724, file: !1725, line: 139, baseType: !1752, size: 64, offset: 832)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1724, file: !1725, line: 140, baseType: !1752, size: 64, offset: 896)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1724, file: !1725, line: 145, baseType: !1860, size: 64, offset: 960)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1862, line: 13, size: 896, elements: !1863)
!1862 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1863 = !{!1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1861, file: !1862, line: 14, baseType: !464, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1861, file: !1862, line: 15, baseType: !469, size: 32, offset: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1861, file: !1862, line: 16, baseType: !469, size: 32, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1861, file: !1862, line: 21, baseType: !1032, size: 64, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1861, file: !1862, line: 27, baseType: !597, size: 64, offset: 192)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1861, file: !1862, line: 28, baseType: !597, size: 64, offset: 256)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1861, file: !1862, line: 29, baseType: !1032, size: 64, offset: 320)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1861, file: !1862, line: 32, baseType: !904, size: 128, offset: 384)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1861, file: !1862, line: 33, baseType: !703, size: 32, offset: 512)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1861, file: !1862, line: 37, baseType: !1032, size: 64, offset: 576)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1861, file: !1862, line: 44, baseType: !1875, size: 256, offset: 640)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1876, line: 15, size: 256, elements: !1877)
!1876 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1877 = !{!1878, !1879, !1880, !1881, !1882, !1883, !1884}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1875, file: !1876, line: 16, baseType: !1041)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1875, file: !1876, line: 18, baseType: !328, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1875, file: !1876, line: 19, baseType: !328, size: 32, offset: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1875, file: !1876, line: 20, baseType: !328, size: 32, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1875, file: !1876, line: 21, baseType: !328, size: 32, offset: 96)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1875, file: !1876, line: 22, baseType: !597, size: 64, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1875, file: !1876, line: 23, baseType: !597, size: 64, offset: 192)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1724, file: !1725, line: 146, baseType: !1886, size: 64, offset: 1024)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !704, line: 18, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1724, file: !1725, line: 147, baseType: !1889, size: 64, offset: 1088)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1725, line: 25, size: 64, elements: !1891)
!1891 = !{!1892, !1893, !1894}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1890, file: !1725, line: 26, baseType: !469, size: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1890, file: !1725, line: 27, baseType: !328, size: 32, offset: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1890, file: !1725, line: 28, baseType: !1895, offset: 64)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, elements: !1896)
!1896 = !{!1897}
!1897 = !DISubrange(count: 0)
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1724, file: !1725, line: 149, baseType: !1899, size: 128, offset: 1152)
!1899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1724, file: !1725, line: 149, size: 128, elements: !1900)
!1900 = !{!1901, !1902}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1899, file: !1725, line: 150, baseType: !328, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1899, file: !1725, line: 151, baseType: !638, size: 128, align: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1396, file: !1397, line: 926, baseType: !1722, size: 64, offset: 8576)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1396, file: !1397, line: 929, baseType: !1722, size: 64, offset: 8640)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1396, file: !1397, line: 933, baseType: !1752, size: 64, offset: 8704)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1396, file: !1397, line: 943, baseType: !1907, size: 128, offset: 8768)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 128, elements: !1908)
!1908 = !{!1909}
!1909 = !DISubrange(count: 16)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1396, file: !1397, line: 945, baseType: !1911, size: 64, offset: 8896)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1397, line: 49, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1396, file: !1397, line: 956, baseType: !1914, size: 64, offset: 8960)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1397, line: 45, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1396, file: !1397, line: 959, baseType: !1917, size: 64, offset: 9024)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1397, line: 959, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1396, file: !1397, line: 962, baseType: !1920, size: 64, offset: 9088)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1397, line: 66, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1396, file: !1397, line: 966, baseType: !1923, size: 64, offset: 9152)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1925, line: 35, flags: DIFlagFwdDecl)
!1925 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1396, file: !1397, line: 969, baseType: !1927, size: 64, offset: 9216)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1929, line: 82, size: 7296, elements: !1930)
!1929 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1936, !1937, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1966, !1975, !1976, !1978, !1979, !1980, !1983, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2013, !2014, !2021, !2022, !2023, !2024, !2025, !2026}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1928, file: !1929, line: 83, baseType: !464, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1928, file: !1929, line: 84, baseType: !469, size: 32, offset: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1928, file: !1929, line: 85, baseType: !328, size: 32, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1928, file: !1929, line: 86, baseType: !480, size: 128, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1928, file: !1929, line: 88, baseType: !1656, size: 128, offset: 256)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1928, file: !1929, line: 91, baseType: !1395, size: 64, offset: 384)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1928, file: !1929, line: 94, baseType: !1938, size: 192, offset: 448)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1939, line: 30, size: 192, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1938, file: !1939, line: 31, baseType: !480, size: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1938, file: !1939, line: 32, baseType: !1943, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1944, line: 25, baseType: !1945)
!1944 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1944, line: 23, size: 64, elements: !1946)
!1946 = !{!1947}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1945, file: !1944, line: 24, baseType: !1540, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1928, file: !1929, line: 97, baseType: !900, size: 64, offset: 640)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1928, file: !1929, line: 100, baseType: !328, size: 32, offset: 704)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1928, file: !1929, line: 106, baseType: !328, size: 32, offset: 736)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1928, file: !1929, line: 107, baseType: !1395, size: 64, offset: 768)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1928, file: !1929, line: 110, baseType: !328, size: 32, offset: 832)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1928, file: !1929, line: 111, baseType: !7, size: 32, offset: 864)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1928, file: !1929, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1928, file: !1929, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1928, file: !1929, line: 128, baseType: !328, size: 32, offset: 928)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1928, file: !1929, line: 129, baseType: !480, size: 128, offset: 960)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1928, file: !1929, line: 132, baseType: !1466, size: 512, offset: 1088)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1928, file: !1929, line: 133, baseType: !1474, size: 64, offset: 1600)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1928, file: !1929, line: 140, baseType: !1961, size: 256, offset: 1664)
!1961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1962, size: 256, elements: !1744)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1929, line: 38, size: 128, elements: !1963)
!1963 = !{!1964, !1965}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1962, file: !1929, line: 39, baseType: !690, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1962, file: !1929, line: 40, baseType: !690, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1928, file: !1929, line: 146, baseType: !1967, size: 192, offset: 1920)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1929, line: 66, size: 192, elements: !1968)
!1968 = !{!1969}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1967, file: !1929, line: 67, baseType: !1970, size: 192)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1929, line: 47, size: 192, elements: !1971)
!1971 = !{!1972, !1973, !1974}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1970, file: !1929, line: 48, baseType: !1034, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1970, file: !1929, line: 49, baseType: !1034, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1970, file: !1929, line: 50, baseType: !1034, size: 64, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1928, file: !1929, line: 150, baseType: !1705, size: 640, offset: 2112)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1928, file: !1929, line: 153, baseType: !1977, size: 256, offset: 2752)
!1977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1646, size: 256, elements: !1334)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1928, file: !1929, line: 159, baseType: !1646, size: 64, offset: 3008)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1928, file: !1929, line: 162, baseType: !328, size: 32, offset: 3072)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1928, file: !1929, line: 164, baseType: !1981, size: 64, offset: 3136)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1929, line: 164, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1928, file: !1929, line: 175, baseType: !1984, size: 32, offset: 3200)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !661, line: 805, baseType: !1985)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !661, line: 798, size: 32, elements: !1986)
!1986 = !{!1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1985, file: !661, line: 803, baseType: !660, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1985, file: !661, line: 804, baseType: !510, offset: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1928, file: !1929, line: 176, baseType: !690, size: 64, offset: 3264)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1928, file: !1929, line: 176, baseType: !690, size: 64, offset: 3328)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1928, file: !1929, line: 176, baseType: !690, size: 64, offset: 3392)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1928, file: !1929, line: 176, baseType: !690, size: 64, offset: 3456)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1928, file: !1929, line: 177, baseType: !690, size: 64, offset: 3520)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1928, file: !1929, line: 178, baseType: !690, size: 64, offset: 3584)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1928, file: !1929, line: 179, baseType: !1693, size: 128, offset: 3648)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1928, file: !1929, line: 180, baseType: !597, size: 64, offset: 3776)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1928, file: !1929, line: 180, baseType: !597, size: 64, offset: 3840)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1928, file: !1929, line: 180, baseType: !597, size: 64, offset: 3904)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1928, file: !1929, line: 180, baseType: !597, size: 64, offset: 3968)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1928, file: !1929, line: 181, baseType: !597, size: 64, offset: 4032)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1928, file: !1929, line: 181, baseType: !597, size: 64, offset: 4096)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1928, file: !1929, line: 181, baseType: !597, size: 64, offset: 4160)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1928, file: !1929, line: 181, baseType: !597, size: 64, offset: 4224)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1928, file: !1929, line: 182, baseType: !597, size: 64, offset: 4288)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1928, file: !1929, line: 182, baseType: !597, size: 64, offset: 4352)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1928, file: !1929, line: 182, baseType: !597, size: 64, offset: 4416)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1928, file: !1929, line: 182, baseType: !597, size: 64, offset: 4480)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1928, file: !1929, line: 183, baseType: !597, size: 64, offset: 4544)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1928, file: !1929, line: 183, baseType: !597, size: 64, offset: 4608)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1928, file: !1929, line: 184, baseType: !2011, offset: 4672)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2012, line: 12, elements: !524)
!2012 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1928, file: !1929, line: 192, baseType: !692, size: 64, offset: 4672)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1928, file: !1929, line: 203, baseType: !2015, size: 2048, offset: 4736)
!2015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2016, size: 2048, elements: !1908)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2017, line: 43, size: 128, elements: !2018)
!2017 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2018 = !{!2019, !2020}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2016, file: !2017, line: 44, baseType: !596, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2016, file: !2017, line: 45, baseType: !596, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1928, file: !1929, line: 220, baseType: !755, size: 8, offset: 6784)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1928, file: !1929, line: 221, baseType: !1384, size: 16, offset: 6800)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1928, file: !1929, line: 222, baseType: !1384, size: 16, offset: 6816)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1928, file: !1929, line: 224, baseType: !1233, size: 64, offset: 6848)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1928, file: !1929, line: 227, baseType: !1352, size: 192, offset: 6912)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1928, file: !1929, line: 233, baseType: !1352, size: 192, offset: 7104)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1396, file: !1397, line: 970, baseType: !2028, size: 64, offset: 9280)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1929, line: 20, size: 16576, elements: !2030)
!2030 = !{!2031, !2032, !2033, !2034}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2029, file: !1929, line: 21, baseType: !510)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2029, file: !1929, line: 22, baseType: !464, size: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2029, file: !1929, line: 23, baseType: !1656, size: 128, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2029, file: !1929, line: 24, baseType: !2035, size: 16384, offset: 192)
!2035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2036, size: 16384, elements: !404)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1939, line: 49, size: 256, elements: !2037)
!2037 = !{!2038}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2036, file: !1939, line: 50, baseType: !2039, size: 256)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1939, line: 35, size: 256, elements: !2040)
!2040 = !{!2041, !2048, !2049, !2055}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2039, file: !1939, line: 37, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2043, line: 19, baseType: !2044)
!2043 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2043, line: 18, baseType: !2046)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{null, !328}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2039, file: !1939, line: 38, baseType: !597, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2039, file: !1939, line: 44, baseType: !2050, size: 64, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2043, line: 22, baseType: !2051)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2043, line: 21, baseType: !2053)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{null}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2039, file: !1939, line: 46, baseType: !1943, size: 64, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1396, file: !1397, line: 971, baseType: !1943, size: 64, offset: 9344)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1396, file: !1397, line: 972, baseType: !1943, size: 64, offset: 9408)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1396, file: !1397, line: 974, baseType: !1943, size: 64, offset: 9472)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1396, file: !1397, line: 975, baseType: !1938, size: 192, offset: 9536)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1396, file: !1397, line: 976, baseType: !597, size: 64, offset: 9728)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1396, file: !1397, line: 977, baseType: !594, size: 64, offset: 9792)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1396, file: !1397, line: 978, baseType: !7, size: 32, offset: 9856)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1396, file: !1397, line: 980, baseType: !641, size: 64, offset: 9920)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1396, file: !1397, line: 989, baseType: !2065, size: 128, offset: 9984)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2066, line: 35, size: 128, elements: !2067)
!2066 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2067 = !{!2068, !2069, !2070}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2065, file: !2066, line: 36, baseType: !328, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2065, file: !2066, line: 37, baseType: !469, size: 32, offset: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2065, file: !2066, line: 38, baseType: !2071, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2066, line: 23, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1396, file: !1397, line: 992, baseType: !690, size: 64, offset: 10112)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1396, file: !1397, line: 993, baseType: !690, size: 64, offset: 10176)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1396, file: !1397, line: 996, baseType: !510, offset: 10240)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1396, file: !1397, line: 999, baseType: !1041, offset: 10240)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1396, file: !1397, line: 1001, baseType: !2078, size: 64, offset: 10240)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1397, line: 636, size: 64, elements: !2079)
!2079 = !{!2080}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2078, file: !1397, line: 637, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1396, file: !1397, line: 1005, baseType: !1013, size: 128, offset: 10304)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1396, file: !1397, line: 1007, baseType: !1395, size: 64, offset: 10432)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1396, file: !1397, line: 1009, baseType: !2085, size: 64, offset: 10496)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1397, line: 1009, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1396, file: !1397, line: 1043, baseType: !322, size: 64, offset: 10560)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1396, file: !1397, line: 1046, baseType: !2089, size: 64, offset: 10624)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1397, line: 41, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1396, file: !1397, line: 1050, baseType: !2092, size: 64, offset: 10688)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1397, line: 42, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1396, file: !1397, line: 1054, baseType: !2095, size: 64, offset: 10752)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1397, line: 55, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1396, file: !1397, line: 1056, baseType: !2098, size: 64, offset: 10816)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1397, line: 40, flags: DIFlagFwdDecl)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1396, file: !1397, line: 1058, baseType: !2101, size: 64, offset: 10880)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2103, line: 99, size: 704, elements: !2104)
!2103 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2104 = !{!2105, !2106, !2107, !2108, !2109, !2110, !2111, !2130, !2131}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2102, file: !2103, line: 100, baseType: !1032, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2102, file: !2103, line: 101, baseType: !469, size: 32, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2102, file: !2103, line: 102, baseType: !469, size: 32, offset: 96)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2102, file: !2103, line: 105, baseType: !510, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2102, file: !2103, line: 107, baseType: !368, size: 16, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2102, file: !2103, line: 109, baseType: !1004, size: 128, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2102, file: !2103, line: 110, baseType: !2112, size: 64, offset: 320)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2103, line: 73, size: 448, elements: !2114)
!2114 = !{!2115, !2118, !2119, !2124, !2129}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2113, file: !2103, line: 74, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2103, line: 74, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2113, file: !2103, line: 75, baseType: !2101, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, scope: !2113, file: !2103, line: 83, baseType: !2120, size: 128, offset: 128)
!2120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2113, file: !2103, line: 83, size: 128, elements: !2121)
!2121 = !{!2122, !2123}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2120, file: !2103, line: 84, baseType: !480, size: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2120, file: !2103, line: 85, baseType: !1194, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, scope: !2113, file: !2103, line: 87, baseType: !2125, size: 128, offset: 256)
!2125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2113, file: !2103, line: 87, size: 128, elements: !2126)
!2126 = !{!2127, !2128}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2125, file: !2103, line: 88, baseType: !904, size: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2125, file: !2103, line: 89, baseType: !638, size: 128, align: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2113, file: !2103, line: 92, baseType: !7, size: 32, offset: 384)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2102, file: !2103, line: 111, baseType: !900, size: 64, offset: 384)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2102, file: !2103, line: 113, baseType: !2132, size: 256, offset: 448)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2133, line: 102, size: 256, elements: !2134)
!2133 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2134 = !{!2135, !2136, !2137}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2132, file: !2133, line: 103, baseType: !1032, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2132, file: !2133, line: 104, baseType: !480, size: 128, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2132, file: !2133, line: 105, baseType: !2138, size: 64, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2133, line: 21, baseType: !2139)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !2142}
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1396, file: !1397, line: 1061, baseType: !2144, size: 64, offset: 10944)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1397, line: 43, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1396, file: !1397, line: 1064, baseType: !597, size: 64, offset: 11008)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1396, file: !1397, line: 1065, baseType: !2148, size: 64, offset: 11072)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1939, line: 14, baseType: !2150)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1939, line: 12, size: 384, elements: !2151)
!2151 = !{!2152}
!2152 = !DIDerivedType(tag: DW_TAG_member, scope: !2150, file: !1939, line: 13, baseType: !2153, size: 384)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2150, file: !1939, line: 13, size: 384, elements: !2154)
!2154 = !{!2155, !2156, !2157, !2158}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2153, file: !1939, line: 13, baseType: !328, size: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2153, file: !1939, line: 13, baseType: !328, size: 32, offset: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2153, file: !1939, line: 13, baseType: !328, size: 32, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2153, file: !1939, line: 13, baseType: !2159, size: 256, offset: 128)
!2159 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2160, line: 32, size: 256, elements: !2161)
!2160 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2161 = !{!2162, !2167, !2180, !2186, !2195, !2215, !2220}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2159, file: !2160, line: 37, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2159, file: !2160, line: 34, size: 64, elements: !2164)
!2164 = !{!2165, !2166}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2163, file: !2160, line: 35, baseType: !1635, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2163, file: !2160, line: 36, baseType: !709, size: 32, offset: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2159, file: !2160, line: 45, baseType: !2168, size: 192)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2159, file: !2160, line: 40, size: 192, elements: !2169)
!2169 = !{!2170, !2172, !2173, !2179}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2168, file: !2160, line: 41, baseType: !2171, size: 32)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !581, line: 95, baseType: !328)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2168, file: !2160, line: 42, baseType: !328, size: 32, offset: 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2168, file: !2160, line: 43, baseType: !2174, size: 64, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2160, line: 11, baseType: !2175)
!2175 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2160, line: 8, size: 64, elements: !2176)
!2176 = !{!2177, !2178}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2175, file: !2160, line: 9, baseType: !328, size: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2175, file: !2160, line: 10, baseType: !322, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2168, file: !2160, line: 44, baseType: !328, size: 32, offset: 128)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2159, file: !2160, line: 52, baseType: !2181, size: 128)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2159, file: !2160, line: 48, size: 128, elements: !2182)
!2182 = !{!2183, !2184, !2185}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2181, file: !2160, line: 49, baseType: !1635, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2181, file: !2160, line: 50, baseType: !709, size: 32, offset: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2181, file: !2160, line: 51, baseType: !2174, size: 64, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2159, file: !2160, line: 61, baseType: !2187, size: 256)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2159, file: !2160, line: 55, size: 256, elements: !2188)
!2188 = !{!2189, !2190, !2191, !2192, !2194}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2187, file: !2160, line: 56, baseType: !1635, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2187, file: !2160, line: 57, baseType: !709, size: 32, offset: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2187, file: !2160, line: 58, baseType: !328, size: 32, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2187, file: !2160, line: 59, baseType: !2193, size: 64, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !581, line: 94, baseType: !582)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2187, file: !2160, line: 60, baseType: !2193, size: 64, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2159, file: !2160, line: 95, baseType: !2196, size: 256)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2159, file: !2160, line: 64, size: 256, elements: !2197)
!2197 = !{!2198, !2199}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2196, file: !2160, line: 65, baseType: !322, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, scope: !2196, file: !2160, line: 77, baseType: !2200, size: 192, offset: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2196, file: !2160, line: 77, size: 192, elements: !2201)
!2201 = !{!2202, !2203, !2210}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2200, file: !2160, line: 82, baseType: !1384, size: 16)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2200, file: !2160, line: 88, baseType: !2204, size: 192)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2200, file: !2160, line: 84, size: 192, elements: !2205)
!2205 = !{!2206, !2208, !2209}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2204, file: !2160, line: 85, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 64, elements: !450)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2204, file: !2160, line: 86, baseType: !322, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2204, file: !2160, line: 87, baseType: !322, size: 64, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2200, file: !2160, line: 93, baseType: !2211, size: 96)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2200, file: !2160, line: 90, size: 96, elements: !2212)
!2212 = !{!2213, !2214}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2211, file: !2160, line: 91, baseType: !2207, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2211, file: !2160, line: 92, baseType: !440, size: 32, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2159, file: !2160, line: 101, baseType: !2216, size: 128)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2159, file: !2160, line: 98, size: 128, elements: !2217)
!2217 = !{!2218, !2219}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2216, file: !2160, line: 99, baseType: !583, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2216, file: !2160, line: 100, baseType: !328, size: 32, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2159, file: !2160, line: 108, baseType: !2221, size: 128)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2159, file: !2160, line: 104, size: 128, elements: !2222)
!2222 = !{!2223, !2224, !2225}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2221, file: !2160, line: 105, baseType: !322, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2221, file: !2160, line: 106, baseType: !328, size: 32, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2221, file: !2160, line: 107, baseType: !7, size: 32, offset: 96)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1396, file: !1397, line: 1067, baseType: !2011, offset: 11136)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1396, file: !1397, line: 1099, baseType: !2228, size: 64, offset: 11136)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1397, line: 56, flags: DIFlagFwdDecl)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1396, file: !1397, line: 1103, baseType: !480, size: 128, offset: 11200)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1396, file: !1397, line: 1104, baseType: !2232, size: 64, offset: 11328)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1397, line: 46, flags: DIFlagFwdDecl)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1396, file: !1397, line: 1105, baseType: !1352, size: 192, offset: 11392)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1396, file: !1397, line: 1106, baseType: !7, size: 32, offset: 11584)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1396, file: !1397, line: 1109, baseType: !2237, size: 128, offset: 11648)
!2237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2238, size: 128, elements: !1744)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1397, line: 51, flags: DIFlagFwdDecl)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1396, file: !1397, line: 1110, baseType: !1352, size: 192, offset: 11776)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1396, file: !1397, line: 1111, baseType: !480, size: 128, offset: 11968)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1396, file: !1397, line: 1173, baseType: !2243, size: 64, offset: 12096)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2245, line: 62, size: 256, align: 256, elements: !2246)
!2245 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2246 = !{!2247, !2248, !2249, !2254}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2244, file: !2245, line: 75, baseType: !440, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2244, file: !2245, line: 90, baseType: !440, size: 32, offset: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2244, file: !2245, line: 124, baseType: !2250, size: 64, offset: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2244, file: !2245, line: 109, size: 64, elements: !2251)
!2251 = !{!2252, !2253}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2250, file: !2245, line: 110, baseType: !691, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2250, file: !2245, line: 112, baseType: !691, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2244, file: !2245, line: 144, baseType: !440, size: 32, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1396, file: !1397, line: 1174, baseType: !439, size: 32, offset: 12160)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1396, file: !1397, line: 1179, baseType: !597, size: 64, offset: 12224)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1396, file: !1397, line: 1182, baseType: !2258, size: 128, offset: 12288)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1330, line: 76, size: 128, elements: !2259)
!2259 = !{!2260, !2265, !2266}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2258, file: !1330, line: 85, baseType: !2261, size: 64)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2262, line: 7, size: 64, elements: !2263)
!2262 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2263 = !{!2264}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2261, file: !2262, line: 12, baseType: !1537, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2258, file: !1330, line: 88, baseType: !755, size: 8, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2258, file: !1330, line: 95, baseType: !755, size: 8, offset: 72)
!2267 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !1397, line: 1184, baseType: !2268, size: 128, offset: 12416)
!2268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1396, file: !1397, line: 1184, size: 128, elements: !2269)
!2269 = !{!2270, !2271}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2268, file: !1397, line: 1185, baseType: !464, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2268, file: !1397, line: 1186, baseType: !638, size: 128, align: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1396, file: !1397, line: 1190, baseType: !2273, size: 64, offset: 12544)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1397, line: 53, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1396, file: !1397, line: 1192, baseType: !2276, size: 128, offset: 12608)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1330, line: 64, size: 128, elements: !2277)
!2277 = !{!2278, !2279, !2280}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2276, file: !1330, line: 65, baseType: !986, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2276, file: !1330, line: 67, baseType: !440, size: 32, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2276, file: !1330, line: 68, baseType: !440, size: 32, offset: 96)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1396, file: !1397, line: 1206, baseType: !328, size: 32, offset: 12736)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1396, file: !1397, line: 1207, baseType: !328, size: 32, offset: 12768)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1396, file: !1397, line: 1209, baseType: !597, size: 64, offset: 12800)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1396, file: !1397, line: 1219, baseType: !690, size: 64, offset: 12864)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1396, file: !1397, line: 1220, baseType: !690, size: 64, offset: 12928)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1396, file: !1397, line: 1317, baseType: !328, size: 32, offset: 12992)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1396, file: !1397, line: 1319, baseType: !1395, size: 64, offset: 13056)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1396, file: !1397, line: 1322, baseType: !2289, size: 64, offset: 13120)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2291, line: 56, size: 512, elements: !2292)
!2291 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2292 = !{!2293, !2294, !2295, !2296, !2297, !2298, !2299, !2301}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2290, file: !2291, line: 57, baseType: !2289, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2290, file: !2291, line: 58, baseType: !322, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2290, file: !2291, line: 59, baseType: !597, size: 64, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2290, file: !2291, line: 60, baseType: !597, size: 64, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2290, file: !2291, line: 61, baseType: !1081, size: 64, offset: 256)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2290, file: !2291, line: 62, baseType: !7, size: 32, offset: 320)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2290, file: !2291, line: 63, baseType: !2300, size: 64, offset: 384)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !321, line: 153, baseType: !690)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2290, file: !2291, line: 64, baseType: !2302, size: 64, offset: 448)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1396, file: !1397, line: 1326, baseType: !464, size: 32, offset: 13184)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1396, file: !1397, line: 1342, baseType: !322, size: 64, offset: 13248)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1396, file: !1397, line: 1343, baseType: !691, size: 64, offset: 13312)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1396, file: !1397, line: 1344, baseType: !690, size: 64, offset: 13376)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1396, file: !1397, line: 1345, baseType: !691, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1396, file: !1397, line: 1346, baseType: !691, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1396, file: !1397, line: 1347, baseType: !691, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1396, file: !1397, line: 1348, baseType: !638, size: 128, align: 64, offset: 13504)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1396, file: !1397, line: 1358, baseType: !2313, size: 34816, offset: 13824)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2314, line: 485, size: 34816, elements: !2315)
!2314 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2315 = !{!2316, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2345, !2346, !2347, !2348, !2349, !2350, !2353, !2354, !2355}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2313, file: !2314, line: 487, baseType: !2317, size: 192)
!2317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2318, size: 192, elements: !551)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2319, line: 16, size: 64, elements: !2320)
!2319 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2320 = !{!2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2318, file: !2319, line: 17, baseType: !366, size: 16)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2318, file: !2319, line: 18, baseType: !366, size: 16, offset: 16)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2318, file: !2319, line: 19, baseType: !366, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2318, file: !2319, line: 19, baseType: !366, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2318, file: !2319, line: 19, baseType: !366, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2318, file: !2319, line: 19, baseType: !366, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2318, file: !2319, line: 19, baseType: !366, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2318, file: !2319, line: 20, baseType: !366, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2318, file: !2319, line: 20, baseType: !366, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2318, file: !2319, line: 20, baseType: !366, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2318, file: !2319, line: 20, baseType: !366, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2318, file: !2319, line: 20, baseType: !366, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2318, file: !2319, line: 20, baseType: !366, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2313, file: !2314, line: 491, baseType: !597, size: 64, offset: 192)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2313, file: !2314, line: 495, baseType: !368, size: 16, offset: 256)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2313, file: !2314, line: 496, baseType: !368, size: 16, offset: 272)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2313, file: !2314, line: 497, baseType: !368, size: 16, offset: 288)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2313, file: !2314, line: 498, baseType: !368, size: 16, offset: 304)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2313, file: !2314, line: 502, baseType: !597, size: 64, offset: 320)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2313, file: !2314, line: 503, baseType: !597, size: 64, offset: 384)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2313, file: !2314, line: 514, baseType: !2342, size: 256, offset: 448)
!2342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2343, size: 256, elements: !1334)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2314, line: 483, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2313, file: !2314, line: 516, baseType: !597, size: 64, offset: 704)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2313, file: !2314, line: 518, baseType: !597, size: 64, offset: 768)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2313, file: !2314, line: 520, baseType: !597, size: 64, offset: 832)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2313, file: !2314, line: 521, baseType: !597, size: 64, offset: 896)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2313, file: !2314, line: 522, baseType: !597, size: 64, offset: 960)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2313, file: !2314, line: 528, baseType: !2351, size: 64, offset: 1024)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2314, line: 10, flags: DIFlagFwdDecl)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2313, file: !2314, line: 535, baseType: !597, size: 64, offset: 1088)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2313, file: !2314, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2313, file: !2314, line: 540, baseType: !2356, size: 33280, offset: 1536)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2357, line: 317, size: 33280, elements: !2358)
!2357 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2358 = !{!2359, !2360, !2361}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2356, file: !2357, line: 330, baseType: !7, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2356, file: !2357, line: 337, baseType: !597, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2356, file: !2357, line: 348, baseType: !2362, size: 32768, offset: 512)
!2362 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2357, line: 304, size: 32768, elements: !2363)
!2363 = !{!2364, !2379, !2416, !2466, !2479}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2362, file: !2357, line: 305, baseType: !2365, size: 896)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2357, line: 12, size: 896, elements: !2366)
!2366 = !{!2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2378}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2365, file: !2357, line: 13, baseType: !439, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2365, file: !2357, line: 14, baseType: !439, size: 32, offset: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2365, file: !2357, line: 15, baseType: !439, size: 32, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2365, file: !2357, line: 16, baseType: !439, size: 32, offset: 96)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2365, file: !2357, line: 17, baseType: !439, size: 32, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2365, file: !2357, line: 18, baseType: !439, size: 32, offset: 160)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2365, file: !2357, line: 19, baseType: !439, size: 32, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2365, file: !2357, line: 22, baseType: !2375, size: 640, offset: 224)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 640, elements: !2376)
!2376 = !{!2377}
!2377 = !DISubrange(count: 20)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2365, file: !2357, line: 25, baseType: !439, size: 32, offset: 864)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2362, file: !2357, line: 306, baseType: !2380, size: 4096, align: 128)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2357, line: 34, size: 4096, align: 128, elements: !2381)
!2381 = !{!2382, !2383, !2384, !2385, !2386, !2401, !2402, !2403, !2405, !2407, !2411}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2380, file: !2357, line: 35, baseType: !366, size: 16)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2380, file: !2357, line: 36, baseType: !366, size: 16, offset: 16)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2380, file: !2357, line: 37, baseType: !366, size: 16, offset: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2380, file: !2357, line: 38, baseType: !366, size: 16, offset: 48)
!2386 = !DIDerivedType(tag: DW_TAG_member, scope: !2380, file: !2357, line: 39, baseType: !2387, size: 128, offset: 64)
!2387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2380, file: !2357, line: 39, size: 128, elements: !2388)
!2388 = !{!2389, !2394}
!2389 = !DIDerivedType(tag: DW_TAG_member, scope: !2387, file: !2357, line: 40, baseType: !2390, size: 128)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2387, file: !2357, line: 40, size: 128, elements: !2391)
!2391 = !{!2392, !2393}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2390, file: !2357, line: 41, baseType: !690, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2390, file: !2357, line: 42, baseType: !690, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, scope: !2387, file: !2357, line: 44, baseType: !2395, size: 128)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2387, file: !2357, line: 44, size: 128, elements: !2396)
!2396 = !{!2397, !2398, !2399, !2400}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2395, file: !2357, line: 45, baseType: !439, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2395, file: !2357, line: 46, baseType: !439, size: 32, offset: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2395, file: !2357, line: 47, baseType: !439, size: 32, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2395, file: !2357, line: 48, baseType: !439, size: 32, offset: 96)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2380, file: !2357, line: 51, baseType: !439, size: 32, offset: 192)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2380, file: !2357, line: 52, baseType: !439, size: 32, offset: 224)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2380, file: !2357, line: 55, baseType: !2404, size: 1024, offset: 256)
!2404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 1024, elements: !414)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2380, file: !2357, line: 58, baseType: !2406, size: 2048, offset: 1280)
!2406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 2048, elements: !404)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2380, file: !2357, line: 60, baseType: !2408, size: 384, offset: 3328)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 384, elements: !2409)
!2409 = !{!2410}
!2410 = !DISubrange(count: 12)
!2411 = !DIDerivedType(tag: DW_TAG_member, scope: !2380, file: !2357, line: 62, baseType: !2412, size: 384, offset: 3712)
!2412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2380, file: !2357, line: 62, size: 384, elements: !2413)
!2413 = !{!2414, !2415}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2412, file: !2357, line: 63, baseType: !2408, size: 384)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2412, file: !2357, line: 64, baseType: !2408, size: 384)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2362, file: !2357, line: 307, baseType: !2417, size: 1088)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2357, line: 79, size: 1088, elements: !2418)
!2418 = !{!2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2465}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2417, file: !2357, line: 80, baseType: !439, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2417, file: !2357, line: 81, baseType: !439, size: 32, offset: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2417, file: !2357, line: 82, baseType: !439, size: 32, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2417, file: !2357, line: 83, baseType: !439, size: 32, offset: 96)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2417, file: !2357, line: 84, baseType: !439, size: 32, offset: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2417, file: !2357, line: 85, baseType: !439, size: 32, offset: 160)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2417, file: !2357, line: 86, baseType: !439, size: 32, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2417, file: !2357, line: 88, baseType: !2375, size: 640, offset: 224)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2417, file: !2357, line: 89, baseType: !323, size: 8, offset: 864)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2417, file: !2357, line: 90, baseType: !323, size: 8, offset: 872)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2417, file: !2357, line: 91, baseType: !323, size: 8, offset: 880)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2417, file: !2357, line: 92, baseType: !323, size: 8, offset: 888)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2417, file: !2357, line: 93, baseType: !323, size: 8, offset: 896)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2417, file: !2357, line: 94, baseType: !323, size: 8, offset: 904)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2417, file: !2357, line: 95, baseType: !2434, size: 64, offset: 960)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2436, line: 11, size: 128, elements: !2437)
!2436 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2437 = !{!2438, !2439}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2435, file: !2436, line: 12, baseType: !583, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2435, file: !2436, line: 13, baseType: !2440, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2442, line: 56, size: 1344, elements: !2443)
!2442 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2443 = !{!2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2441, file: !2442, line: 61, baseType: !597, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2441, file: !2442, line: 62, baseType: !597, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2441, file: !2442, line: 63, baseType: !597, size: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2441, file: !2442, line: 64, baseType: !597, size: 64, offset: 192)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2441, file: !2442, line: 65, baseType: !597, size: 64, offset: 256)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2441, file: !2442, line: 66, baseType: !597, size: 64, offset: 320)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2441, file: !2442, line: 68, baseType: !597, size: 64, offset: 384)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2441, file: !2442, line: 69, baseType: !597, size: 64, offset: 448)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2441, file: !2442, line: 70, baseType: !597, size: 64, offset: 512)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2441, file: !2442, line: 71, baseType: !597, size: 64, offset: 576)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2441, file: !2442, line: 72, baseType: !597, size: 64, offset: 640)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2441, file: !2442, line: 73, baseType: !597, size: 64, offset: 704)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2441, file: !2442, line: 74, baseType: !597, size: 64, offset: 768)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2441, file: !2442, line: 75, baseType: !597, size: 64, offset: 832)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2441, file: !2442, line: 76, baseType: !597, size: 64, offset: 896)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2441, file: !2442, line: 81, baseType: !597, size: 64, offset: 960)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2441, file: !2442, line: 83, baseType: !597, size: 64, offset: 1024)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2441, file: !2442, line: 84, baseType: !597, size: 64, offset: 1088)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2441, file: !2442, line: 85, baseType: !597, size: 64, offset: 1152)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2441, file: !2442, line: 86, baseType: !597, size: 64, offset: 1216)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2441, file: !2442, line: 87, baseType: !597, size: 64, offset: 1280)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2417, file: !2357, line: 96, baseType: !439, size: 32, offset: 1024)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2362, file: !2357, line: 308, baseType: !2467, size: 4608, align: 512)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2357, line: 289, size: 4608, align: 512, elements: !2468)
!2468 = !{!2469, !2470, !2477}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2467, file: !2357, line: 290, baseType: !2380, size: 4096, align: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2467, file: !2357, line: 291, baseType: !2471, size: 512, offset: 4096)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2357, line: 268, size: 512, elements: !2472)
!2472 = !{!2473, !2474, !2475}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2471, file: !2357, line: 269, baseType: !690, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2471, file: !2357, line: 270, baseType: !690, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2471, file: !2357, line: 271, baseType: !2476, size: 384, offset: 128)
!2476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 384, elements: !489)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2467, file: !2357, line: 292, baseType: !2478, offset: 4608)
!2478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, elements: !1896)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2362, file: !2357, line: 309, baseType: !2480, size: 32768)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 32768, elements: !2481)
!2481 = !{!2482}
!2482 = !DISubrange(count: 4096)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1392, file: !988, line: 378, baseType: !2484, size: 64, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1388, file: !988, line: 384, baseType: !1677, size: 192, offset: 192)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1237, file: !988, line: 500, baseType: !510, offset: 6656)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1237, file: !988, line: 501, baseType: !2488, size: 64, offset: 6656)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !988, line: 387, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1237, file: !988, line: 516, baseType: !1886, size: 64, offset: 6720)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1237, file: !988, line: 519, baseType: !625, size: 64, offset: 6784)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1237, file: !988, line: 521, baseType: !2493, size: 64, offset: 6848)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !988, line: 521, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1237, file: !988, line: 545, baseType: !469, size: 32, offset: 6912)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1237, file: !988, line: 548, baseType: !755, size: 8, offset: 6944)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1237, file: !988, line: 550, baseType: !2498, offset: 6952)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2499, line: 142, elements: !524)
!2499 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1237, file: !988, line: 554, baseType: !2132, size: 256, offset: 6976)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1237, file: !988, line: 557, baseType: !439, size: 32, offset: 7232)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1234, file: !988, line: 565, baseType: !2503, offset: 7296)
!2503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, elements: !2504)
!2504 = !{!2505}
!2505 = !DISubrange(count: -1)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1230, file: !988, line: 151, baseType: !469, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1223, file: !988, line: 156, baseType: !510, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !988, line: 159, baseType: !2509, size: 128)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !988, line: 159, size: 128, elements: !2510)
!2510 = !{!2511, !2514}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2509, file: !988, line: 161, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !988, line: 161, flags: DIFlagFwdDecl)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2509, file: !988, line: 162, baseType: !322, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !992, file: !988, line: 176, baseType: !638, size: 128, align: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, scope: !987, file: !988, line: 179, baseType: !2517, size: 32, offset: 384)
!2517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !987, file: !988, line: 179, size: 32, elements: !2518)
!2518 = !{!2519, !2520, !2521, !2522}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2517, file: !988, line: 184, baseType: !469, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2517, file: !988, line: 192, baseType: !7, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2517, file: !988, line: 194, baseType: !7, size: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2517, file: !988, line: 195, baseType: !328, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !987, file: !988, line: 199, baseType: !469, size: 32, offset: 416)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !922, file: !208, line: 1964, baseType: !2525, size: 64, offset: 1344)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!583, !864, !2528}
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2530, line: 12, size: 256, elements: !2531)
!2530 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2531 = !{!2532, !2533, !2534, !2535, !2536}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2529, file: !2530, line: 13, baseType: !320, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2529, file: !2530, line: 16, baseType: !328, size: 32, offset: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2529, file: !2530, line: 23, baseType: !597, size: 64, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2529, file: !2530, line: 30, baseType: !597, size: 64, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2529, file: !2530, line: 33, baseType: !2537, size: 64, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !988, line: 27, flags: DIFlagFwdDecl)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !922, file: !208, line: 1966, baseType: !2525, size: 64, offset: 1408)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !865, file: !208, line: 1424, baseType: !2541, size: 64, offset: 448)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2543)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !2544)
!2544 = !{!2545, !2591, !2595, !2599, !2600, !2601, !2602, !2603, !2608, !2613, !2617}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2543, file: !202, line: 323, baseType: !2546, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!328, !2549}
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !2551)
!2551 = !{!2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2576, !2577, !2578}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2550, file: !202, line: 295, baseType: !904, size: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2550, file: !202, line: 296, baseType: !480, size: 128, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2550, file: !202, line: 297, baseType: !480, size: 128, offset: 256)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2550, file: !202, line: 298, baseType: !480, size: 128, offset: 384)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2550, file: !202, line: 299, baseType: !1352, size: 192, offset: 512)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2550, file: !202, line: 300, baseType: !510, offset: 704)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2550, file: !202, line: 301, baseType: !469, size: 32, offset: 704)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2550, file: !202, line: 302, baseType: !864, size: 64, offset: 768)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2550, file: !202, line: 303, baseType: !2561, size: 64, offset: 832)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !2562)
!2562 = !{!2563, !2575}
!2563 = !DIDerivedType(tag: DW_TAG_member, scope: !2561, file: !202, line: 69, baseType: !2564, size: 32)
!2564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2561, file: !202, line: 69, size: 32, elements: !2565)
!2565 = !{!2566, !2567, !2568}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2564, file: !202, line: 70, baseType: !703, size: 32)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2564, file: !202, line: 71, baseType: !711, size: 32)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2564, file: !202, line: 72, baseType: !2569, size: 32)
!2569 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2570, line: 24, baseType: !2571)
!2570 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2570, line: 22, size: 32, elements: !2572)
!2572 = !{!2573}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2571, file: !2570, line: 23, baseType: !2574, size: 32)
!2574 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2570, line: 20, baseType: !709)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2561, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2550, file: !202, line: 304, baseType: !796, size: 64, offset: 896)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2550, file: !202, line: 305, baseType: !597, size: 64, offset: 960)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2550, file: !202, line: 306, baseType: !2579, size: 576, offset: 1024)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !2580)
!2580 = !{!2581, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2579, file: !202, line: 206, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !798)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2579, file: !202, line: 207, baseType: !2582, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2579, file: !202, line: 208, baseType: !2582, size: 64, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2579, file: !202, line: 209, baseType: !2582, size: 64, offset: 192)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2579, file: !202, line: 210, baseType: !2582, size: 64, offset: 256)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2579, file: !202, line: 211, baseType: !2582, size: 64, offset: 320)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2579, file: !202, line: 212, baseType: !2582, size: 64, offset: 384)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2579, file: !202, line: 213, baseType: !804, size: 64, offset: 448)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2579, file: !202, line: 214, baseType: !804, size: 64, offset: 512)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2543, file: !202, line: 324, baseType: !2592, size: 64, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!2549, !864, !328}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2543, file: !202, line: 325, baseType: !2596, size: 64, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{null, !2549}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2543, file: !202, line: 326, baseType: !2546, size: 64, offset: 192)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2543, file: !202, line: 327, baseType: !2546, size: 64, offset: 256)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2543, file: !202, line: 328, baseType: !2546, size: 64, offset: 320)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2543, file: !202, line: 329, baseType: !950, size: 64, offset: 384)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2543, file: !202, line: 332, baseType: !2604, size: 64, offset: 448)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!2607, !697}
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2543, file: !202, line: 333, baseType: !2609, size: 64, offset: 512)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!328, !697, !2612}
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2543, file: !202, line: 335, baseType: !2614, size: 64, offset: 576)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!328, !697, !2607}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2543, file: !202, line: 337, baseType: !2618, size: 64, offset: 640)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!328, !864, !2621}
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !865, file: !208, line: 1425, baseType: !2623, size: 64, offset: 512)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2625)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !2626)
!2626 = !{!2627, !2631, !2632, !2636, !2637, !2638, !2653, !2676, !2680, !2681, !2704}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2625, file: !202, line: 429, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!328, !864, !328, !328, !814}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2625, file: !202, line: 430, baseType: !950, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2625, file: !202, line: 431, baseType: !2633, size: 64, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!328, !864, !7}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2625, file: !202, line: 432, baseType: !2633, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2625, file: !202, line: 433, baseType: !950, size: 64, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2625, file: !202, line: 434, baseType: !2639, size: 64, offset: 320)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!328, !864, !328, !2642}
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !2644)
!2644 = !{!2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2643, file: !202, line: 416, baseType: !328, size: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2643, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2643, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2643, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2643, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2643, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2643, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2643, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2625, file: !202, line: 435, baseType: !2654, size: 64, offset: 384)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!328, !864, !2561, !2657}
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !2659)
!2659 = !{!2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2658, file: !202, line: 344, baseType: !328, size: 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2658, file: !202, line: 345, baseType: !690, size: 64, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2658, file: !202, line: 346, baseType: !690, size: 64, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2658, file: !202, line: 347, baseType: !690, size: 64, offset: 192)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2658, file: !202, line: 348, baseType: !690, size: 64, offset: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2658, file: !202, line: 349, baseType: !690, size: 64, offset: 320)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2658, file: !202, line: 350, baseType: !690, size: 64, offset: 384)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2658, file: !202, line: 351, baseType: !1038, size: 64, offset: 448)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2658, file: !202, line: 353, baseType: !1038, size: 64, offset: 512)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2658, file: !202, line: 354, baseType: !328, size: 32, offset: 576)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2658, file: !202, line: 355, baseType: !328, size: 32, offset: 608)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2658, file: !202, line: 356, baseType: !690, size: 64, offset: 640)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2658, file: !202, line: 357, baseType: !690, size: 64, offset: 704)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2658, file: !202, line: 358, baseType: !690, size: 64, offset: 768)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2658, file: !202, line: 359, baseType: !1038, size: 64, offset: 832)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2658, file: !202, line: 360, baseType: !328, size: 32, offset: 896)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2625, file: !202, line: 436, baseType: !2677, size: 64, offset: 448)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!328, !864, !2621, !2657}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2625, file: !202, line: 438, baseType: !2654, size: 64, offset: 512)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2625, file: !202, line: 439, baseType: !2682, size: 64, offset: 576)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!328, !864, !2685}
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !2687)
!2687 = !{!2688, !2689}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2686, file: !202, line: 410, baseType: !7, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2686, file: !202, line: 411, baseType: !2690, size: 1344, offset: 64)
!2690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2691, size: 1344, elements: !551)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !2692)
!2692 = !{!2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2703}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2691, file: !202, line: 396, baseType: !7, size: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2691, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2691, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2691, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2691, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2691, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2691, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2691, file: !202, line: 404, baseType: !692, size: 64, offset: 256)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2691, file: !202, line: 405, baseType: !2702, size: 64, offset: 320)
!2702 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !321, line: 126, baseType: !690)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2691, file: !202, line: 406, baseType: !2702, size: 64, offset: 384)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2625, file: !202, line: 440, baseType: !2633, size: 64, offset: 640)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !865, file: !208, line: 1426, baseType: !2706, size: 64, offset: 576)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2708)
!2708 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !865, file: !208, line: 1427, baseType: !597, size: 64, offset: 640)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !865, file: !208, line: 1428, baseType: !597, size: 64, offset: 704)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !865, file: !208, line: 1429, baseType: !597, size: 64, offset: 768)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !865, file: !208, line: 1430, baseType: !655, size: 64, offset: 832)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !865, file: !208, line: 1431, baseType: !1028, size: 256, offset: 896)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !865, file: !208, line: 1432, baseType: !328, size: 32, offset: 1152)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !865, file: !208, line: 1433, baseType: !469, size: 32, offset: 1184)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !865, file: !208, line: 1437, baseType: !2717, size: 64, offset: 1216)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2720)
!2720 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !865, file: !208, line: 1449, baseType: !2722, size: 64, offset: 1280)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !671, line: 34, size: 64, elements: !2723)
!2723 = !{!2724}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2722, file: !671, line: 35, baseType: !674, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !865, file: !208, line: 1450, baseType: !480, size: 128, offset: 1344)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !865, file: !208, line: 1451, baseType: !2727, size: 64, offset: 1472)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !865, file: !208, line: 1452, baseType: !2098, size: 64, offset: 1536)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !865, file: !208, line: 1453, baseType: !2731, size: 64, offset: 1600)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !865, file: !208, line: 1454, baseType: !904, size: 128, offset: 1664)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !865, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !865, file: !208, line: 1456, baseType: !2736, size: 2432, offset: 1856)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !2737)
!2737 = !{!2738, !2739, !2740, !2742, !2774}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2736, file: !202, line: 519, baseType: !7, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2736, file: !202, line: 520, baseType: !1028, size: 256, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2736, file: !202, line: 521, baseType: !2741, size: 192, offset: 320)
!2741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, size: 192, elements: !551)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2736, file: !202, line: 522, baseType: !2743, size: 1728, offset: 512)
!2743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2744, size: 1728, elements: !551)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !2745)
!2745 = !{!2746, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2744, file: !202, line: 223, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !2749)
!2749 = !{!2750, !2751, !2764, !2765}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2748, file: !202, line: 444, baseType: !328, size: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2748, file: !202, line: 445, baseType: !2752, size: 64, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2754)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !2755)
!2755 = !{!2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2754, file: !202, line: 311, baseType: !950, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2754, file: !202, line: 312, baseType: !950, size: 64, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2754, file: !202, line: 313, baseType: !950, size: 64, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2754, file: !202, line: 314, baseType: !950, size: 64, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2754, file: !202, line: 315, baseType: !2546, size: 64, offset: 256)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2754, file: !202, line: 316, baseType: !2546, size: 64, offset: 320)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2754, file: !202, line: 317, baseType: !2546, size: 64, offset: 384)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2754, file: !202, line: 318, baseType: !2618, size: 64, offset: 448)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2748, file: !202, line: 446, baseType: !341, size: 64, offset: 128)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2748, file: !202, line: 447, baseType: !2747, size: 64, offset: 192)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2744, file: !202, line: 224, baseType: !328, size: 32, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2744, file: !202, line: 226, baseType: !480, size: 128, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2744, file: !202, line: 227, baseType: !597, size: 64, offset: 256)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2744, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2744, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2744, file: !202, line: 230, baseType: !2582, size: 64, offset: 384)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2744, file: !202, line: 231, baseType: !2582, size: 64, offset: 448)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2744, file: !202, line: 232, baseType: !322, size: 64, offset: 512)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2736, file: !202, line: 523, baseType: !2775, size: 192, offset: 2240)
!2775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2752, size: 192, elements: !551)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !865, file: !208, line: 1458, baseType: !2777, size: 2112, offset: 4288)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !2778)
!2778 = !{!2779, !2780, !2781}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2777, file: !208, line: 1411, baseType: !328, size: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2777, file: !208, line: 1412, baseType: !1656, size: 128, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2777, file: !208, line: 1413, baseType: !2782, size: 1920, offset: 192)
!2782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2783, size: 1920, elements: !551)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2784, line: 12, size: 640, elements: !2785)
!2784 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2785 = !{!2786, !2794, !2795, !2800, !2801}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2783, file: !2784, line: 13, baseType: !2787, size: 320)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2788, line: 17, size: 320, elements: !2789)
!2788 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2789 = !{!2790, !2791, !2792, !2793}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2787, file: !2788, line: 18, baseType: !328, size: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2787, file: !2788, line: 19, baseType: !328, size: 32, offset: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2787, file: !2788, line: 20, baseType: !1656, size: 128, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2787, file: !2788, line: 22, baseType: !638, size: 128, align: 64, offset: 192)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2783, file: !2784, line: 14, baseType: !393, size: 64, offset: 320)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2783, file: !2784, line: 15, baseType: !2796, size: 64, offset: 384)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2797, line: 16, size: 64, elements: !2798)
!2797 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2798 = !{!2799}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2796, file: !2797, line: 17, baseType: !1395, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2783, file: !2784, line: 16, baseType: !1656, size: 128, offset: 448)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2783, file: !2784, line: 17, baseType: !469, size: 32, offset: 576)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !865, file: !208, line: 1465, baseType: !322, size: 64, offset: 6400)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !865, file: !208, line: 1468, baseType: !439, size: 32, offset: 6464)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !865, file: !208, line: 1470, baseType: !804, size: 64, offset: 6528)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !865, file: !208, line: 1471, baseType: !804, size: 64, offset: 6592)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !865, file: !208, line: 1473, baseType: !440, size: 32, offset: 6656)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !865, file: !208, line: 1474, baseType: !2808, size: 64, offset: 6720)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !865, file: !208, line: 1477, baseType: !2811, size: 256, offset: 6784)
!2811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 256, elements: !414)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !865, file: !208, line: 1478, baseType: !2813, size: 128, offset: 7040)
!2813 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2814, line: 18, baseType: !2815)
!2814 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2814, line: 16, size: 128, elements: !2816)
!2816 = !{!2817}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2815, file: !2814, line: 17, baseType: !2818, size: 128)
!2818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 128, elements: !1908)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !865, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !865, file: !208, line: 1481, baseType: !2821, size: 32, offset: 7200)
!2821 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !321, line: 150, baseType: !7)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !865, file: !208, line: 1487, baseType: !1352, size: 192, offset: 7232)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !865, file: !208, line: 1493, baseType: !337, size: 64, offset: 7424)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !865, file: !208, line: 1495, baseType: !2825, size: 64, offset: 7488)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2827)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !653, line: 135, size: 1024, align: 512, elements: !2828)
!2828 = !{!2829, !2833, !2834, !2841, !2847, !2851, !2855, !2859, !2860, !2864, !2868, !2873, !2877}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2827, file: !653, line: 136, baseType: !2830, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!328, !655, !7}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2827, file: !653, line: 137, baseType: !2830, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2827, file: !653, line: 138, baseType: !2835, size: 64, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!328, !2838, !2840}
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2827, file: !653, line: 139, baseType: !2842, size: 64, offset: 192)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!328, !2838, !7, !337, !2845}
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !679)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2827, file: !653, line: 141, baseType: !2848, size: 64, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!328, !2838}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2827, file: !653, line: 142, baseType: !2852, size: 64, offset: 320)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!328, !655}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2827, file: !653, line: 143, baseType: !2856, size: 64, offset: 384)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{null, !655}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2827, file: !653, line: 144, baseType: !2856, size: 64, offset: 448)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2827, file: !653, line: 145, baseType: !2861, size: 64, offset: 512)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{null, !655, !697}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2827, file: !653, line: 146, baseType: !2865, size: 64, offset: 576)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!359, !655, !359, !328}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2827, file: !653, line: 147, baseType: !2869, size: 64, offset: 640)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!651, !2872}
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2827, file: !653, line: 148, baseType: !2874, size: 64, offset: 704)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!328, !814, !755}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2827, file: !653, line: 149, baseType: !2878, size: 64, offset: 768)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!655, !655, !2881}
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !865, file: !208, line: 1500, baseType: !328, size: 32, offset: 7552)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !865, file: !208, line: 1502, baseType: !2885, size: 448, offset: 7616)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2530, line: 60, size: 448, elements: !2886)
!2886 = !{!2887, !2892, !2893, !2894, !2895, !2896, !2897}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2885, file: !2530, line: 61, baseType: !2888, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!597, !2891, !2528}
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2885, file: !2530, line: 63, baseType: !2888, size: 64, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2885, file: !2530, line: 66, baseType: !583, size: 64, offset: 128)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2885, file: !2530, line: 67, baseType: !328, size: 32, offset: 192)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2885, file: !2530, line: 68, baseType: !7, size: 32, offset: 224)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2885, file: !2530, line: 71, baseType: !480, size: 128, offset: 256)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2885, file: !2530, line: 77, baseType: !2898, size: 64, offset: 384)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !865, file: !208, line: 1505, baseType: !1032, size: 64, offset: 8064)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !865, file: !208, line: 1508, baseType: !1032, size: 64, offset: 8128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !865, file: !208, line: 1511, baseType: !328, size: 32, offset: 8192)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !865, file: !208, line: 1514, baseType: !1168, size: 32, offset: 8224)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !865, file: !208, line: 1517, baseType: !2904, size: 64, offset: 8256)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2133, line: 18, flags: DIFlagFwdDecl)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !865, file: !208, line: 1518, baseType: !900, size: 64, offset: 8320)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !865, file: !208, line: 1525, baseType: !1886, size: 64, offset: 8384)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !865, file: !208, line: 1532, baseType: !2909, size: 64, offset: 8448)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2910, line: 52, size: 64, elements: !2911)
!2910 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2911 = !{!2912}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2909, file: !2910, line: 53, baseType: !2913, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2910, line: 40, size: 256, elements: !2915)
!2915 = !{!2916, !2917, !2922}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2914, file: !2910, line: 42, baseType: !510)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2914, file: !2910, line: 44, baseType: !2918, size: 192)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2910, line: 28, size: 192, elements: !2919)
!2919 = !{!2920, !2921}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2918, file: !2910, line: 29, baseType: !480, size: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2918, file: !2910, line: 31, baseType: !583, size: 64, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2914, file: !2910, line: 49, baseType: !583, size: 64, offset: 192)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !865, file: !208, line: 1533, baseType: !2909, size: 64, offset: 8512)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !865, file: !208, line: 1534, baseType: !638, size: 128, align: 64, offset: 8576)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !865, file: !208, line: 1535, baseType: !2132, size: 256, offset: 8704)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !865, file: !208, line: 1537, baseType: !1352, size: 192, offset: 8960)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !865, file: !208, line: 1542, baseType: !328, size: 32, offset: 9152)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !865, file: !208, line: 1545, baseType: !510, offset: 9184)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !865, file: !208, line: 1546, baseType: !480, size: 128, offset: 9216)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !865, file: !208, line: 1548, baseType: !510, offset: 9344)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !865, file: !208, line: 1549, baseType: !480, size: 128, offset: 9344)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !698, file: !208, line: 624, baseType: !999, size: 64, offset: 256)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !698, file: !208, line: 631, baseType: !597, size: 64, offset: 320)
!2934 = !DIDerivedType(tag: DW_TAG_member, scope: !698, file: !208, line: 639, baseType: !2935, size: 32, offset: 384)
!2935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !698, file: !208, line: 639, size: 32, elements: !2936)
!2936 = !{!2937, !2939}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2935, file: !208, line: 640, baseType: !2938, size: 32)
!2938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2935, file: !208, line: 641, baseType: !7, size: 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !698, file: !208, line: 643, baseType: !778, size: 32, offset: 416)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !698, file: !208, line: 644, baseType: !796, size: 64, offset: 448)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !698, file: !208, line: 645, baseType: !800, size: 128, offset: 512)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !698, file: !208, line: 646, baseType: !800, size: 128, offset: 640)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !698, file: !208, line: 647, baseType: !800, size: 128, offset: 768)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !698, file: !208, line: 648, baseType: !510, offset: 896)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !698, file: !208, line: 649, baseType: !368, size: 16, offset: 896)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !698, file: !208, line: 650, baseType: !323, size: 8, offset: 912)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !698, file: !208, line: 651, baseType: !323, size: 8, offset: 920)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !698, file: !208, line: 652, baseType: !2702, size: 64, offset: 960)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !698, file: !208, line: 659, baseType: !597, size: 64, offset: 1024)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !698, file: !208, line: 660, baseType: !1028, size: 256, offset: 1088)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !698, file: !208, line: 662, baseType: !597, size: 64, offset: 1344)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !698, file: !208, line: 663, baseType: !597, size: 64, offset: 1408)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !698, file: !208, line: 665, baseType: !904, size: 128, offset: 1472)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !698, file: !208, line: 666, baseType: !480, size: 128, offset: 1600)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !698, file: !208, line: 675, baseType: !480, size: 128, offset: 1728)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !698, file: !208, line: 676, baseType: !480, size: 128, offset: 1856)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !698, file: !208, line: 677, baseType: !480, size: 128, offset: 1984)
!2959 = !DIDerivedType(tag: DW_TAG_member, scope: !698, file: !208, line: 678, baseType: !2960, size: 128, offset: 2112)
!2960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !698, file: !208, line: 678, size: 128, elements: !2961)
!2961 = !{!2962, !2963}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2960, file: !208, line: 679, baseType: !900, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2960, file: !208, line: 680, baseType: !638, size: 128, align: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !698, file: !208, line: 682, baseType: !1034, size: 64, offset: 2240)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !698, file: !208, line: 683, baseType: !1034, size: 64, offset: 2304)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !698, file: !208, line: 684, baseType: !469, size: 32, offset: 2368)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !698, file: !208, line: 685, baseType: !469, size: 32, offset: 2400)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !698, file: !208, line: 686, baseType: !469, size: 32, offset: 2432)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !698, file: !208, line: 688, baseType: !469, size: 32, offset: 2464)
!2970 = !DIDerivedType(tag: DW_TAG_member, scope: !698, file: !208, line: 690, baseType: !2971, size: 64, offset: 2496)
!2971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !698, file: !208, line: 690, size: 64, elements: !2972)
!2972 = !{!2973, !3205}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2971, file: !208, line: 691, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2976)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !2977)
!2977 = !{!2978, !2979, !2983, !2988, !2992, !2993, !2994, !2998, !3011, !3012, !3029, !3033, !3034, !3038, !3039, !3043, !3048, !3049, !3053, !3057, !3165, !3169, !3170, !3174, !3175, !3179, !3183, !3188, !3192, !3196, !3200, !3204}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2976, file: !208, line: 1823, baseType: !341, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2976, file: !208, line: 1824, baseType: !2980, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!796, !625, !796, !328}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2976, file: !208, line: 1825, baseType: !2984, size: 64, offset: 128)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!579, !625, !359, !594, !2987}
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2976, file: !208, line: 1826, baseType: !2989, size: 64, offset: 192)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!579, !625, !337, !594, !2987}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2976, file: !208, line: 1827, baseType: !1105, size: 64, offset: 256)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2976, file: !208, line: 1828, baseType: !1105, size: 64, offset: 320)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2976, file: !208, line: 1829, baseType: !2995, size: 64, offset: 384)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!328, !1108, !755}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2976, file: !208, line: 1830, baseType: !2999, size: 64, offset: 448)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!328, !625, !3002}
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !3004)
!3004 = !{!3005, !3010}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3003, file: !208, line: 1777, baseType: !3006, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !3007)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!328, !3002, !337, !328, !796, !690, !7}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3003, file: !208, line: 1778, baseType: !796, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2976, file: !208, line: 1831, baseType: !2999, size: 64, offset: 512)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2976, file: !208, line: 1832, baseType: !3013, size: 64, offset: 576)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!3016, !625, !3018}
!3016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3017, line: 52, baseType: !7)
!3017 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3020, line: 43, size: 128, elements: !3021)
!3020 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!3021 = !{!3022, !3028}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3019, file: !3020, line: 44, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3020, line: 37, baseType: !3024)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{null, !625, !3027, !3018}
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3019, file: !3020, line: 45, baseType: !3016, size: 32, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2976, file: !208, line: 1833, baseType: !3030, size: 64, offset: 640)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!583, !625, !7, !597}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2976, file: !208, line: 1834, baseType: !3030, size: 64, offset: 704)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2976, file: !208, line: 1835, baseType: !3035, size: 64, offset: 768)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!328, !625, !1240}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2976, file: !208, line: 1836, baseType: !597, size: 64, offset: 832)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2976, file: !208, line: 1837, baseType: !3040, size: 64, offset: 896)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!328, !697, !625}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2976, file: !208, line: 1838, baseType: !3044, size: 64, offset: 960)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!328, !625, !3047}
!3047 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !322)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2976, file: !208, line: 1839, baseType: !3040, size: 64, offset: 1024)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2976, file: !208, line: 1840, baseType: !3050, size: 64, offset: 1088)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!328, !625, !796, !796, !328}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2976, file: !208, line: 1841, baseType: !3054, size: 64, offset: 1152)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!328, !328, !625, !328}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2976, file: !208, line: 1842, baseType: !3058, size: 64, offset: 1216)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!328, !625, !328, !3061}
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !3063)
!3063 = !{!3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3095, !3096, !3097, !3110, !3141}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3062, file: !208, line: 1063, baseType: !3061, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3062, file: !208, line: 1064, baseType: !480, size: 128, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3062, file: !208, line: 1065, baseType: !904, size: 128, offset: 192)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3062, file: !208, line: 1066, baseType: !480, size: 128, offset: 320)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3062, file: !208, line: 1069, baseType: !480, size: 128, offset: 448)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3062, file: !208, line: 1072, baseType: !3047, size: 64, offset: 576)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3062, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3062, file: !208, line: 1074, baseType: !327, size: 8, offset: 672)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3062, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3062, file: !208, line: 1076, baseType: !328, size: 32, offset: 736)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3062, file: !208, line: 1077, baseType: !1656, size: 128, offset: 768)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3062, file: !208, line: 1078, baseType: !625, size: 64, offset: 896)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3062, file: !208, line: 1079, baseType: !796, size: 64, offset: 960)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3062, file: !208, line: 1080, baseType: !796, size: 64, offset: 1024)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3062, file: !208, line: 1082, baseType: !3079, size: 64, offset: 1088)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !3081)
!3081 = !{!3082, !3090, !3091, !3092, !3093, !3094}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3080, file: !208, line: 1315, baseType: !3083)
!3083 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3084, line: 20, baseType: !3085)
!3084 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3084, line: 11, elements: !3086)
!3086 = !{!3087}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3085, file: !3084, line: 12, baseType: !3088)
!3088 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !522, line: 33, baseType: !3089)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !522, line: 31, elements: !524)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3080, file: !208, line: 1316, baseType: !328, size: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3080, file: !208, line: 1317, baseType: !328, size: 32, offset: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3080, file: !208, line: 1318, baseType: !3079, size: 64, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3080, file: !208, line: 1319, baseType: !625, size: 64, offset: 128)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3080, file: !208, line: 1320, baseType: !638, size: 128, align: 64, offset: 192)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3062, file: !208, line: 1084, baseType: !597, size: 64, offset: 1152)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3062, file: !208, line: 1085, baseType: !597, size: 64, offset: 1216)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3062, file: !208, line: 1087, baseType: !3098, size: 64, offset: 1280)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3100)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !3101)
!3101 = !{!3102, !3106}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3100, file: !208, line: 1012, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{null, !3061, !3061}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3100, file: !208, line: 1013, baseType: !3107, size: 64, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{null, !3061}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3062, file: !208, line: 1088, baseType: !3111, size: 64, offset: 1344)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3113)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !3114)
!3114 = !{!3115, !3119, !3123, !3124, !3128, !3132, !3136, !3140}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3113, file: !208, line: 1017, baseType: !3116, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!3047, !3047}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3113, file: !208, line: 1018, baseType: !3120, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{null, !3047}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3113, file: !208, line: 1019, baseType: !3107, size: 64, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3113, file: !208, line: 1020, baseType: !3125, size: 64, offset: 192)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!328, !3061, !328}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3113, file: !208, line: 1021, baseType: !3129, size: 64, offset: 256)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!755, !3061}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3113, file: !208, line: 1022, baseType: !3133, size: 64, offset: 320)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!328, !3061, !328, !483}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3113, file: !208, line: 1023, baseType: !3137, size: 64, offset: 384)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{null, !3061, !1082}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3113, file: !208, line: 1024, baseType: !3129, size: 64, offset: 448)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3062, file: !208, line: 1097, baseType: !3142, size: 256, offset: 1408)
!3142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3062, file: !208, line: 1089, size: 256, elements: !3143)
!3143 = !{!3144, !3153, !3159}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3142, file: !208, line: 1090, baseType: !3145, size: 256)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3146, line: 10, size: 256, elements: !3147)
!3146 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3147 = !{!3148, !3149, !3152}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3145, file: !3146, line: 11, baseType: !439, size: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3145, file: !3146, line: 12, baseType: !3150, size: 64, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3146, line: 5, flags: DIFlagFwdDecl)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3145, file: !3146, line: 13, baseType: !480, size: 128, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3142, file: !208, line: 1091, baseType: !3154, size: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3146, line: 17, size: 64, elements: !3155)
!3155 = !{!3156}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3154, file: !3146, line: 18, baseType: !3157, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3146, line: 16, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3142, file: !208, line: 1096, baseType: !3160, size: 192)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3142, file: !208, line: 1092, size: 192, elements: !3161)
!3161 = !{!3162, !3163, !3164}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3160, file: !208, line: 1093, baseType: !480, size: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3160, file: !208, line: 1094, baseType: !328, size: 32, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3160, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2976, file: !208, line: 1843, baseType: !3166, size: 64, offset: 1280)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!579, !625, !986, !328, !594, !2987, !328}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2976, file: !208, line: 1844, baseType: !1280, size: 64, offset: 1344)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2976, file: !208, line: 1845, baseType: !3171, size: 64, offset: 1408)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!328, !328}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2976, file: !208, line: 1846, baseType: !3058, size: 64, offset: 1472)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2976, file: !208, line: 1847, baseType: !3176, size: 64, offset: 1536)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!579, !2273, !625, !2987, !594, !7}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2976, file: !208, line: 1848, baseType: !3180, size: 64, offset: 1600)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!579, !625, !2987, !2273, !594, !7}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2976, file: !208, line: 1849, baseType: !3184, size: 64, offset: 1664)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!328, !625, !583, !3187, !1082}
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2976, file: !208, line: 1850, baseType: !3189, size: 64, offset: 1728)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!583, !625, !328, !796, !796}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2976, file: !208, line: 1852, baseType: !3193, size: 64, offset: 1792)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{null, !976, !625}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2976, file: !208, line: 1856, baseType: !3197, size: 64, offset: 1856)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!579, !625, !796, !625, !796, !594, !7}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2976, file: !208, line: 1858, baseType: !3201, size: 64, offset: 1920)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!796, !625, !796, !625, !796, !796, !7}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2976, file: !208, line: 1861, baseType: !3050, size: 64, offset: 1984)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2971, file: !208, line: 692, baseType: !929, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !698, file: !208, line: 694, baseType: !3207, size: 64, offset: 2560)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !3209)
!3209 = !{!3210, !3211, !3212, !3213}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3208, file: !208, line: 1101, baseType: !510)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3208, file: !208, line: 1102, baseType: !480, size: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3208, file: !208, line: 1103, baseType: !480, size: 128, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3208, file: !208, line: 1104, baseType: !480, size: 128, offset: 256)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !698, file: !208, line: 695, baseType: !1000, size: 1216, align: 64, offset: 2624)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !698, file: !208, line: 696, baseType: !480, size: 128, offset: 3840)
!3216 = !DIDerivedType(tag: DW_TAG_member, scope: !698, file: !208, line: 697, baseType: !3217, size: 64, offset: 3968)
!3217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !698, file: !208, line: 697, size: 64, elements: !3218)
!3218 = !{!3219, !3220, !3221, !3232, !3233}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3217, file: !208, line: 698, baseType: !2273, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3217, file: !208, line: 699, baseType: !2727, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3217, file: !208, line: 700, baseType: !3222, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3224, line: 14, size: 832, elements: !3225)
!3224 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3225 = !{!3226, !3227, !3228, !3229, !3230, !3231}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3223, file: !3224, line: 15, baseType: !497, size: 512)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3223, file: !3224, line: 16, baseType: !341, size: 64, offset: 512)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3223, file: !3224, line: 17, baseType: !2974, size: 64, offset: 576)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3223, file: !3224, line: 18, baseType: !480, size: 128, offset: 640)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3223, file: !3224, line: 19, baseType: !778, size: 32, offset: 768)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3223, file: !3224, line: 20, baseType: !7, size: 32, offset: 800)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3217, file: !208, line: 701, baseType: !359, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3217, file: !208, line: 702, baseType: !7, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !698, file: !208, line: 705, baseType: !440, size: 32, offset: 4032)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !698, file: !208, line: 708, baseType: !440, size: 32, offset: 4064)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !698, file: !208, line: 709, baseType: !2808, size: 64, offset: 4096)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !698, file: !208, line: 720, baseType: !322, size: 64, offset: 4160)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !656, file: !653, line: 98, baseType: !3239, size: 256, offset: 448)
!3239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 256, elements: !414)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !656, file: !653, line: 101, baseType: !3241, size: 32, offset: 704)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3242, line: 25, size: 32, elements: !3243)
!3242 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3243 = !{!3244}
!3244 = !DIDerivedType(tag: DW_TAG_member, scope: !3241, file: !3242, line: 26, baseType: !3245, size: 32)
!3245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3241, file: !3242, line: 26, size: 32, elements: !3246)
!3246 = !{!3247}
!3247 = !DIDerivedType(tag: DW_TAG_member, scope: !3245, file: !3242, line: 30, baseType: !3248, size: 32)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3245, file: !3242, line: 30, size: 32, elements: !3249)
!3249 = !{!3250, !3251}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3248, file: !3242, line: 31, baseType: !510)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3248, file: !3242, line: 32, baseType: !328, size: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !656, file: !653, line: 102, baseType: !2825, size: 64, offset: 768)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !656, file: !653, line: 103, baseType: !864, size: 64, offset: 832)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !656, file: !653, line: 104, baseType: !597, size: 64, offset: 896)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !656, file: !653, line: 105, baseType: !322, size: 64, offset: 960)
!3256 = !DIDerivedType(tag: DW_TAG_member, scope: !656, file: !653, line: 107, baseType: !3257, size: 128, offset: 1024)
!3257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !656, file: !653, line: 107, size: 128, elements: !3258)
!3258 = !{!3259, !3260}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3257, file: !653, line: 108, baseType: !480, size: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3257, file: !653, line: 109, baseType: !3027, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !656, file: !653, line: 111, baseType: !480, size: 128, offset: 1152)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !656, file: !653, line: 112, baseType: !480, size: 128, offset: 1280)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !656, file: !653, line: 120, baseType: !3264, size: 128, offset: 1408)
!3264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !656, file: !653, line: 116, size: 128, elements: !3265)
!3265 = !{!3266, !3267, !3268}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3264, file: !653, line: 117, baseType: !904, size: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3264, file: !653, line: 118, baseType: !670, size: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3264, file: !653, line: 119, baseType: !638, size: 128, align: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !626, file: !208, line: 922, baseType: !697, size: 64, offset: 256)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !626, file: !208, line: 923, baseType: !2974, size: 64, offset: 320)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !626, file: !208, line: 929, baseType: !510, offset: 384)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !626, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !626, file: !208, line: 931, baseType: !1032, size: 64, offset: 448)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !626, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !626, file: !208, line: 933, baseType: !2821, size: 32, offset: 544)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !626, file: !208, line: 934, baseType: !1352, size: 192, offset: 576)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !626, file: !208, line: 935, baseType: !796, size: 64, offset: 768)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !626, file: !208, line: 936, baseType: !3279, size: 192, offset: 832)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !3280)
!3280 = !{!3281, !3282, !3283, !3284, !3285, !3286}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3279, file: !208, line: 886, baseType: !3083)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3279, file: !208, line: 887, baseType: !1646, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3279, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3279, file: !208, line: 889, baseType: !703, size: 32, offset: 96)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3279, file: !208, line: 889, baseType: !703, size: 32, offset: 128)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3279, file: !208, line: 890, baseType: !328, size: 32, offset: 160)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !626, file: !208, line: 937, baseType: !1722, size: 64, offset: 1024)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !626, file: !208, line: 938, baseType: !3289, size: 256, offset: 1088)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !3290)
!3290 = !{!3291, !3292, !3293, !3294, !3295, !3296}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3289, file: !208, line: 897, baseType: !597, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3289, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3289, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3289, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3289, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3289, file: !208, line: 904, baseType: !796, size: 64, offset: 192)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !626, file: !208, line: 940, baseType: !690, size: 64, offset: 1344)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !626, file: !208, line: 945, baseType: !322, size: 64, offset: 1408)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !626, file: !208, line: 949, baseType: !480, size: 128, offset: 1472)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !626, file: !208, line: 950, baseType: !480, size: 128, offset: 1600)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !626, file: !208, line: 952, baseType: !999, size: 64, offset: 1728)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !626, file: !208, line: 953, baseType: !1168, size: 32, offset: 1792)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !626, file: !208, line: 954, baseType: !1168, size: 32, offset: 1824)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !616, file: !573, line: 174, baseType: !622, size: 64, offset: 320)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !616, file: !573, line: 176, baseType: !3306, size: 64, offset: 384)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!328, !625, !503, !615, !1240}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !604, file: !573, line: 90, baseType: !599, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !604, file: !573, line: 91, baseType: !3311, size: 64, offset: 256)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !563, file: !498, line: 143, baseType: !3313, size: 64, offset: 256)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!3316, !503}
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3318)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !3319)
!3319 = !{!3320, !3321, !3325, !3329, !3335, !3339}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3318, file: !225, line: 40, baseType: !224, size: 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3318, file: !225, line: 41, baseType: !3322, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!755}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3318, file: !225, line: 42, baseType: !3326, size: 64, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!322}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3318, file: !225, line: 43, baseType: !3330, size: 64, offset: 192)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!2302, !3333}
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3318, file: !225, line: 44, baseType: !3336, size: 64, offset: 256)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!2302}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3318, file: !225, line: 45, baseType: !361, size: 64, offset: 320)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !563, file: !498, line: 144, baseType: !3341, size: 64, offset: 320)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!2302, !503}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !563, file: !498, line: 145, baseType: !3345, size: 64, offset: 384)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{null, !503, !3348, !3349}
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !497, file: !498, line: 70, baseType: !3351, size: 64, offset: 384)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !884, line: 123, size: 1024, elements: !3353)
!3353 = !{!3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3482, !3483, !3484, !3485, !3486}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3352, file: !884, line: 124, baseType: !469, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3352, file: !884, line: 125, baseType: !469, size: 32, offset: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3352, file: !884, line: 135, baseType: !3351, size: 64, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3352, file: !884, line: 136, baseType: !337, size: 64, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3352, file: !884, line: 138, baseType: !1021, size: 192, align: 64, offset: 192)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3352, file: !884, line: 140, baseType: !2302, size: 64, offset: 384)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3352, file: !884, line: 141, baseType: !7, size: 32, offset: 448)
!3361 = !DIDerivedType(tag: DW_TAG_member, scope: !3352, file: !884, line: 142, baseType: !3362, size: 256, offset: 512)
!3362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3352, file: !884, line: 142, size: 256, elements: !3363)
!3363 = !{!3364, !3410, !3414}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3362, file: !884, line: 143, baseType: !3365, size: 192)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !884, line: 91, size: 192, elements: !3366)
!3366 = !{!3367, !3368, !3369}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3365, file: !884, line: 92, baseType: !597, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3365, file: !884, line: 94, baseType: !1017, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3365, file: !884, line: 100, baseType: !3370, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !884, line: 180, size: 704, elements: !3372)
!3372 = !{!3373, !3374, !3375, !3382, !3383, !3384, !3408, !3409}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3371, file: !884, line: 182, baseType: !3351, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3371, file: !884, line: 183, baseType: !7, size: 32, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3371, file: !884, line: 186, baseType: !3376, size: 192, offset: 128)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3377, line: 19, size: 192, elements: !3378)
!3377 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3378 = !{!3379, !3380, !3381}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3376, file: !3377, line: 20, baseType: !1004, size: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3376, file: !3377, line: 21, baseType: !7, size: 32, offset: 128)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3376, file: !3377, line: 22, baseType: !7, size: 32, offset: 160)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3371, file: !884, line: 187, baseType: !439, size: 32, offset: 320)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3371, file: !884, line: 188, baseType: !439, size: 32, offset: 352)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3371, file: !884, line: 189, baseType: !3385, size: 64, offset: 384)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !884, line: 168, size: 320, elements: !3387)
!3387 = !{!3388, !3392, !3396, !3400, !3404}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3386, file: !884, line: 169, baseType: !3389, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!328, !976, !3370}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3386, file: !884, line: 171, baseType: !3393, size: 64, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!328, !3351, !337, !589}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3386, file: !884, line: 173, baseType: !3397, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!328, !3351}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3386, file: !884, line: 174, baseType: !3401, size: 64, offset: 192)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!328, !3351, !3351, !337}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3386, file: !884, line: 176, baseType: !3405, size: 64, offset: 256)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!328, !976, !3351, !3370}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3371, file: !884, line: 192, baseType: !480, size: 128, offset: 448)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3371, file: !884, line: 194, baseType: !1656, size: 128, offset: 576)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3362, file: !884, line: 144, baseType: !3411, size: 64)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !884, line: 103, size: 64, elements: !3412)
!3412 = !{!3413}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3411, file: !884, line: 104, baseType: !3351, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3362, file: !884, line: 145, baseType: !3415, size: 256)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !884, line: 107, size: 256, elements: !3416)
!3416 = !{!3417, !3477, !3480, !3481}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3415, file: !884, line: 108, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3420)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !884, line: 217, size: 768, elements: !3421)
!3421 = !{!3422, !3442, !3446, !3450, !3454, !3458, !3462, !3466, !3467, !3468, !3469, !3473}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3420, file: !884, line: 222, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!328, !3426}
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !884, line: 197, size: 1088, elements: !3428)
!3428 = !{!3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3427, file: !884, line: 199, baseType: !3351, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3427, file: !884, line: 200, baseType: !625, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3427, file: !884, line: 201, baseType: !976, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3427, file: !884, line: 202, baseType: !322, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3427, file: !884, line: 205, baseType: !1352, size: 192, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3427, file: !884, line: 206, baseType: !1352, size: 192, offset: 448)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3427, file: !884, line: 207, baseType: !328, size: 32, offset: 640)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3427, file: !884, line: 208, baseType: !480, size: 128, offset: 704)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3427, file: !884, line: 209, baseType: !359, size: 64, offset: 832)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3427, file: !884, line: 211, baseType: !594, size: 64, offset: 896)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3427, file: !884, line: 212, baseType: !755, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3427, file: !884, line: 213, baseType: !755, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3427, file: !884, line: 214, baseType: !1268, size: 64, offset: 1024)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3420, file: !884, line: 223, baseType: !3443, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{null, !3426}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3420, file: !884, line: 236, baseType: !3447, size: 64, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!328, !976, !322}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3420, file: !884, line: 238, baseType: !3451, size: 64, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!322, !976, !2987}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3420, file: !884, line: 239, baseType: !3455, size: 64, offset: 256)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!322, !976, !322, !2987}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3420, file: !884, line: 240, baseType: !3459, size: 64, offset: 320)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{null, !976, !322}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3420, file: !884, line: 242, baseType: !3463, size: 64, offset: 384)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!579, !3426, !359, !594, !796}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3420, file: !884, line: 252, baseType: !594, size: 64, offset: 448)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3420, file: !884, line: 259, baseType: !755, size: 8, offset: 512)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3420, file: !884, line: 260, baseType: !3463, size: 64, offset: 576)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3420, file: !884, line: 263, baseType: !3470, size: 64, offset: 640)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!3016, !3426, !3018}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3420, file: !884, line: 266, baseType: !3474, size: 64, offset: 704)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!328, !3426, !1240}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3415, file: !884, line: 109, baseType: !3478, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !884, line: 31, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3415, file: !884, line: 110, baseType: !796, size: 64, offset: 128)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3415, file: !884, line: 111, baseType: !3351, size: 64, offset: 192)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3352, file: !884, line: 148, baseType: !322, size: 64, offset: 768)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3352, file: !884, line: 154, baseType: !690, size: 64, offset: 832)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3352, file: !884, line: 156, baseType: !368, size: 16, offset: 896)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3352, file: !884, line: 157, baseType: !589, size: 16, offset: 912)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3352, file: !884, line: 158, baseType: !3487, size: 64, offset: 960)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !884, line: 32, flags: DIFlagFwdDecl)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !497, file: !498, line: 71, baseType: !460, size: 32, offset: 448)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !497, file: !498, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !497, file: !498, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !497, file: !498, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !497, file: !498, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !497, file: !498, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !494, file: !237, line: 463, baseType: !493, size: 64, offset: 512)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !494, file: !237, line: 465, baseType: !3497, size: 64, offset: 576)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !494, file: !237, line: 467, baseType: !337, size: 64, offset: 640)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !494, file: !237, line: 468, baseType: !3501, size: 64, offset: 704)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3503)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3504)
!3504 = !{!3505, !3506, !3507, !3511, !3516, !3520}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3503, file: !237, line: 88, baseType: !337, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3503, file: !237, line: 89, baseType: !601, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3503, file: !237, line: 90, baseType: !3508, size: 64, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!328, !493, !546}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3503, file: !237, line: 91, baseType: !3512, size: 64, offset: 192)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!359, !493, !3515, !3348, !3349}
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3503, file: !237, line: 93, baseType: !3517, size: 64, offset: 256)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{null, !493}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3503, file: !237, line: 95, baseType: !3521, size: 64, offset: 320)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3523)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3524)
!3524 = !{!3525, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3523, file: !244, line: 279, baseType: !3526, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!328, !493}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3523, file: !244, line: 280, baseType: !3517, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3523, file: !244, line: 281, baseType: !3526, size: 64, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3523, file: !244, line: 282, baseType: !3526, size: 64, offset: 192)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3523, file: !244, line: 283, baseType: !3526, size: 64, offset: 256)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3523, file: !244, line: 284, baseType: !3526, size: 64, offset: 320)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3523, file: !244, line: 285, baseType: !3526, size: 64, offset: 384)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3523, file: !244, line: 286, baseType: !3526, size: 64, offset: 448)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3523, file: !244, line: 287, baseType: !3526, size: 64, offset: 512)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3523, file: !244, line: 288, baseType: !3526, size: 64, offset: 576)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3523, file: !244, line: 289, baseType: !3526, size: 64, offset: 640)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3523, file: !244, line: 290, baseType: !3526, size: 64, offset: 704)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3523, file: !244, line: 291, baseType: !3526, size: 64, offset: 768)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3523, file: !244, line: 292, baseType: !3526, size: 64, offset: 832)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3523, file: !244, line: 293, baseType: !3526, size: 64, offset: 896)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3523, file: !244, line: 294, baseType: !3526, size: 64, offset: 960)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3523, file: !244, line: 295, baseType: !3526, size: 64, offset: 1024)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3523, file: !244, line: 296, baseType: !3526, size: 64, offset: 1088)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3523, file: !244, line: 297, baseType: !3526, size: 64, offset: 1152)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3523, file: !244, line: 298, baseType: !3526, size: 64, offset: 1216)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3523, file: !244, line: 299, baseType: !3526, size: 64, offset: 1280)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3523, file: !244, line: 300, baseType: !3526, size: 64, offset: 1344)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3523, file: !244, line: 301, baseType: !3526, size: 64, offset: 1408)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !494, file: !237, line: 470, baseType: !3552, size: 64, offset: 768)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3554, line: 82, size: 1408, elements: !3555)
!3554 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3555 = !{!3556, !3557, !3558, !3559, !3560, !3561, !3562, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3634, !3637, !3638}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3553, file: !3554, line: 83, baseType: !337, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3553, file: !3554, line: 84, baseType: !337, size: 64, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3553, file: !3554, line: 85, baseType: !493, size: 64, offset: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3553, file: !3554, line: 86, baseType: !601, size: 64, offset: 192)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3553, file: !3554, line: 87, baseType: !601, size: 64, offset: 256)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3553, file: !3554, line: 88, baseType: !601, size: 64, offset: 320)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3553, file: !3554, line: 90, baseType: !3563, size: 64, offset: 384)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!328, !493, !3566}
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3568)
!3568 = !{!3569, !3570, !3571, !3572, !3573, !3574, !3575, !3585, !3598, !3599, !3600, !3601, !3602, !3610, !3611, !3612, !3613, !3614, !3615}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3567, file: !231, line: 96, baseType: !337, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3567, file: !231, line: 97, baseType: !3552, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3567, file: !231, line: 99, baseType: !341, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3567, file: !231, line: 100, baseType: !337, size: 64, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3567, file: !231, line: 102, baseType: !755, size: 8, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3567, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3567, file: !231, line: 105, baseType: !3576, size: 64, offset: 320)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3578)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3579, line: 262, size: 1600, elements: !3580)
!3579 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3580 = !{!3581, !3582, !3583, !3584}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3578, file: !3579, line: 263, baseType: !2811, size: 256)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3578, file: !3579, line: 264, baseType: !2811, size: 256, offset: 256)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3578, file: !3579, line: 265, baseType: !435, size: 1024, offset: 512)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3578, file: !3579, line: 266, baseType: !2302, size: 64, offset: 1536)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3567, file: !231, line: 106, baseType: !3586, size: 64, offset: 384)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3588)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3579, line: 210, size: 256, elements: !3589)
!3589 = !{!3590, !3594, !3596, !3597}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3588, file: !3579, line: 211, baseType: !3591, size: 72)
!3591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 72, elements: !3592)
!3592 = !{!3593}
!3593 = !DISubrange(count: 9)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3588, file: !3579, line: 212, baseType: !3595, size: 64, offset: 128)
!3595 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3579, line: 14, baseType: !597)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3588, file: !3579, line: 213, baseType: !440, size: 32, offset: 192)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3588, file: !3579, line: 214, baseType: !440, size: 32, offset: 224)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3567, file: !231, line: 108, baseType: !3526, size: 64, offset: 448)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3567, file: !231, line: 109, baseType: !3517, size: 64, offset: 512)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3567, file: !231, line: 110, baseType: !3526, size: 64, offset: 576)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3567, file: !231, line: 111, baseType: !3517, size: 64, offset: 640)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3567, file: !231, line: 112, baseType: !3603, size: 64, offset: 704)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!328, !493, !3606}
!3606 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3607)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3608)
!3608 = !{!3609}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3607, file: !244, line: 51, baseType: !328, size: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3567, file: !231, line: 113, baseType: !3526, size: 64, offset: 768)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3567, file: !231, line: 114, baseType: !601, size: 64, offset: 832)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3567, file: !231, line: 115, baseType: !601, size: 64, offset: 896)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3567, file: !231, line: 117, baseType: !3521, size: 64, offset: 960)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3567, file: !231, line: 118, baseType: !3517, size: 64, offset: 1024)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3567, file: !231, line: 120, baseType: !3616, size: 64, offset: 1088)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3553, file: !3554, line: 91, baseType: !3508, size: 64, offset: 448)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3553, file: !3554, line: 92, baseType: !3526, size: 64, offset: 512)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3553, file: !3554, line: 93, baseType: !3517, size: 64, offset: 576)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3553, file: !3554, line: 94, baseType: !3526, size: 64, offset: 640)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3553, file: !3554, line: 95, baseType: !3517, size: 64, offset: 704)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3553, file: !3554, line: 97, baseType: !3526, size: 64, offset: 768)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3553, file: !3554, line: 98, baseType: !3526, size: 64, offset: 832)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3553, file: !3554, line: 100, baseType: !3603, size: 64, offset: 896)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3553, file: !3554, line: 101, baseType: !3526, size: 64, offset: 960)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3553, file: !3554, line: 103, baseType: !3526, size: 64, offset: 1024)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3553, file: !3554, line: 105, baseType: !3526, size: 64, offset: 1088)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3553, file: !3554, line: 107, baseType: !3521, size: 64, offset: 1152)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3553, file: !3554, line: 109, baseType: !3631, size: 64, offset: 1216)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3633)
!3633 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3554, line: 109, flags: DIFlagFwdDecl)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3553, file: !3554, line: 111, baseType: !3635, size: 64, offset: 1280)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3554, line: 111, flags: DIFlagFwdDecl)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3553, file: !3554, line: 112, baseType: !910, offset: 1344)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3553, file: !3554, line: 114, baseType: !755, size: 8, offset: 1344)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !494, file: !237, line: 471, baseType: !3566, size: 64, offset: 832)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !494, file: !237, line: 473, baseType: !322, size: 64, offset: 896)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !494, file: !237, line: 475, baseType: !322, size: 64, offset: 960)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !494, file: !237, line: 480, baseType: !1352, size: 192, offset: 1024)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !494, file: !237, line: 484, baseType: !3644, size: 576, offset: 1216)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3645)
!3645 = !{!3646, !3647, !3648, !3649, !3650, !3651}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3644, file: !237, line: 362, baseType: !480, size: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3644, file: !237, line: 363, baseType: !480, size: 128, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3644, file: !237, line: 364, baseType: !480, size: 128, offset: 256)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3644, file: !237, line: 365, baseType: !480, size: 128, offset: 384)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3644, file: !237, line: 366, baseType: !755, size: 8, offset: 512)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3644, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !494, file: !237, line: 485, baseType: !3653, size: 2304, offset: 1792)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3654)
!3654 = !{!3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3750, !3754}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3653, file: !244, line: 566, baseType: !3606, size: 32)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3653, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3653, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3653, file: !244, line: 569, baseType: !755, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3653, file: !244, line: 570, baseType: !755, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3653, file: !244, line: 571, baseType: !755, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3653, file: !244, line: 572, baseType: !755, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3653, file: !244, line: 573, baseType: !755, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3653, file: !244, line: 574, baseType: !755, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3653, file: !244, line: 575, baseType: !755, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3653, file: !244, line: 576, baseType: !755, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3653, file: !244, line: 577, baseType: !439, size: 32, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3653, file: !244, line: 578, baseType: !510, offset: 96)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3653, file: !244, line: 580, baseType: !480, size: 128, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3653, file: !244, line: 581, baseType: !1677, size: 192, offset: 256)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3653, file: !244, line: 582, baseType: !3671, size: 64, offset: 448)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3673, line: 43, size: 1472, elements: !3674)
!3673 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3674 = !{!3675, !3676, !3677, !3678, !3679, !3682, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3672, file: !3673, line: 44, baseType: !337, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3672, file: !3673, line: 45, baseType: !328, size: 32, offset: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3672, file: !3673, line: 46, baseType: !480, size: 128, offset: 128)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3672, file: !3673, line: 47, baseType: !510, offset: 256)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3672, file: !3673, line: 48, baseType: !3680, size: 64, offset: 256)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3672, file: !3673, line: 49, baseType: !3683, size: 320, offset: 320)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3684, line: 11, size: 320, elements: !3685)
!3684 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3685 = !{!3686, !3687, !3688, !3693}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3683, file: !3684, line: 16, baseType: !904, size: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3683, file: !3684, line: 17, baseType: !597, size: 64, offset: 128)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3683, file: !3684, line: 18, baseType: !3689, size: 64, offset: 192)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{null, !3692}
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3683, file: !3684, line: 19, baseType: !439, size: 32, offset: 256)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3672, file: !3673, line: 50, baseType: !597, size: 64, offset: 640)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3672, file: !3673, line: 51, baseType: !1474, size: 64, offset: 704)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3672, file: !3673, line: 52, baseType: !1474, size: 64, offset: 768)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3672, file: !3673, line: 53, baseType: !1474, size: 64, offset: 832)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3672, file: !3673, line: 54, baseType: !1474, size: 64, offset: 896)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3672, file: !3673, line: 55, baseType: !1474, size: 64, offset: 960)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3672, file: !3673, line: 56, baseType: !597, size: 64, offset: 1024)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3672, file: !3673, line: 57, baseType: !597, size: 64, offset: 1088)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3672, file: !3673, line: 58, baseType: !597, size: 64, offset: 1152)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3672, file: !3673, line: 59, baseType: !597, size: 64, offset: 1216)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3672, file: !3673, line: 60, baseType: !597, size: 64, offset: 1280)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3672, file: !3673, line: 61, baseType: !493, size: 64, offset: 1344)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3672, file: !3673, line: 62, baseType: !755, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3672, file: !3673, line: 63, baseType: !755, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3653, file: !244, line: 583, baseType: !755, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3653, file: !244, line: 584, baseType: !755, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3653, file: !244, line: 585, baseType: !755, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3653, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3653, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3653, file: !244, line: 592, baseType: !1466, size: 512, offset: 576)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3653, file: !244, line: 593, baseType: !690, size: 64, offset: 1088)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3653, file: !244, line: 594, baseType: !2132, size: 256, offset: 1152)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3653, file: !244, line: 595, baseType: !1656, size: 128, offset: 1408)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3653, file: !244, line: 596, baseType: !3680, size: 64, offset: 1536)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3653, file: !244, line: 597, baseType: !469, size: 32, offset: 1600)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3653, file: !244, line: 598, baseType: !469, size: 32, offset: 1632)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3653, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3653, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3653, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3653, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3653, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3653, file: !244, line: 604, baseType: !755, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3653, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3653, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3653, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3653, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3653, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3653, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3653, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3653, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3653, file: !244, line: 613, baseType: !328, size: 32, offset: 1792)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3653, file: !244, line: 614, baseType: !328, size: 32, offset: 1824)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3653, file: !244, line: 615, baseType: !690, size: 64, offset: 1856)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3653, file: !244, line: 616, baseType: !690, size: 64, offset: 1920)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3653, file: !244, line: 617, baseType: !690, size: 64, offset: 1984)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3653, file: !244, line: 618, baseType: !690, size: 64, offset: 2048)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3653, file: !244, line: 620, baseType: !3741, size: 64, offset: 2112)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3743)
!3743 = !{!3744, !3745, !3746, !3747}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3742, file: !244, line: 537, baseType: !510)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3742, file: !244, line: 538, baseType: !7, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3742, file: !244, line: 540, baseType: !480, size: 128, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3742, file: !244, line: 543, baseType: !3748, size: 64, offset: 192)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3653, file: !244, line: 621, baseType: !3751, size: 64, offset: 2176)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{null, !493, !1614}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3653, file: !244, line: 622, baseType: !3755, size: 64, offset: 2240)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !494, file: !237, line: 486, baseType: !3758, size: 64, offset: 4096)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3760)
!3760 = !{!3761, !3762, !3763, !3767, !3768, !3769}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3759, file: !244, line: 643, baseType: !3523, size: 1472)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3759, file: !244, line: 644, baseType: !3526, size: 64, offset: 1472)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3759, file: !244, line: 645, baseType: !3764, size: 64, offset: 1536)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{null, !493, !755}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3759, file: !244, line: 646, baseType: !3526, size: 64, offset: 1600)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3759, file: !244, line: 647, baseType: !3517, size: 64, offset: 1664)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3759, file: !244, line: 648, baseType: !3517, size: 64, offset: 1728)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !494, file: !237, line: 493, baseType: !3771, size: 64, offset: 4160)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3773)
!3773 = !{!3774, !3775, !3776, !3949, !3950, !3951, !3952, !3953, !3954, !3957, !3958, !3959, !3960, !3961, !3962, !3963}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3772, file: !258, line: 163, baseType: !480, size: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3772, file: !258, line: 164, baseType: !337, size: 64, offset: 128)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3772, file: !258, line: 165, baseType: !3777, size: 64, offset: 192)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3779)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3780)
!3780 = !{!3781, !3899, !3910, !3915, !3919, !3926, !3930, !3934, !3941, !3945}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3779, file: !258, line: 106, baseType: !3782, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!328, !3771, !3785, !257}
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3787, line: 51, size: 1344, elements: !3788)
!3787 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3788 = !{!3789, !3790, !3792, !3793, !3883, !3892, !3893, !3894, !3895, !3896, !3897, !3898}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3786, file: !3787, line: 52, baseType: !337, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3786, file: !3787, line: 53, baseType: !3791, size: 32, offset: 64)
!3791 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3787, line: 28, baseType: !439)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3786, file: !3787, line: 54, baseType: !337, size: 64, offset: 128)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3786, file: !3787, line: 55, baseType: !3794, size: 192, offset: 192)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3795, line: 17, size: 192, elements: !3796)
!3795 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3796 = !{!3797, !3799, !3882}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3794, file: !3795, line: 18, baseType: !3798, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3794, file: !3795, line: 19, baseType: !3800, size: 64, offset: 64)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3802)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3795, line: 110, size: 1152, elements: !3803)
!3803 = !{!3804, !3808, !3812, !3818, !3824, !3828, !3832, !3837, !3841, !3842, !3846, !3850, !3854, !3865, !3866, !3867, !3868, !3878}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3802, file: !3795, line: 111, baseType: !3805, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!3798, !3798}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3802, file: !3795, line: 112, baseType: !3809, size: 64, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{null, !3798}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3802, file: !3795, line: 113, baseType: !3813, size: 64, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!755, !3816}
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3794)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3802, file: !3795, line: 114, baseType: !3819, size: 64, offset: 192)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!2302, !3816, !3822}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3802, file: !3795, line: 116, baseType: !3825, size: 64, offset: 256)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!755, !3816, !337}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3802, file: !3795, line: 118, baseType: !3829, size: 64, offset: 320)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!328, !3816, !337, !7, !322, !594}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3802, file: !3795, line: 123, baseType: !3833, size: 64, offset: 384)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!328, !3816, !337, !3836, !594}
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3802, file: !3795, line: 126, baseType: !3838, size: 64, offset: 448)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!337, !3816}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3802, file: !3795, line: 127, baseType: !3838, size: 64, offset: 512)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3802, file: !3795, line: 128, baseType: !3843, size: 64, offset: 576)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!3798, !3816}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3802, file: !3795, line: 130, baseType: !3847, size: 64, offset: 640)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!3798, !3816, !3798}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3802, file: !3795, line: 133, baseType: !3851, size: 64, offset: 704)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!3798, !3816, !337}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3802, file: !3795, line: 135, baseType: !3855, size: 64, offset: 768)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!328, !3816, !337, !337, !7, !7, !3858}
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3795, line: 43, size: 640, elements: !3860)
!3860 = !{!3861, !3862, !3863}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3859, file: !3795, line: 44, baseType: !3798, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3859, file: !3795, line: 45, baseType: !7, size: 32, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3859, file: !3795, line: 46, baseType: !3864, size: 512, offset: 128)
!3864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 512, elements: !450)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3802, file: !3795, line: 140, baseType: !3847, size: 64, offset: 832)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3802, file: !3795, line: 143, baseType: !3843, size: 64, offset: 896)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3802, file: !3795, line: 145, baseType: !3805, size: 64, offset: 960)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3802, file: !3795, line: 146, baseType: !3869, size: 64, offset: 1024)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!328, !3816, !3872}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3795, line: 29, size: 128, elements: !3874)
!3874 = !{!3875, !3876, !3877}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3873, file: !3795, line: 30, baseType: !7, size: 32)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3873, file: !3795, line: 31, baseType: !7, size: 32, offset: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3873, file: !3795, line: 32, baseType: !3816, size: 64, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3802, file: !3795, line: 148, baseType: !3879, size: 64, offset: 1088)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!328, !3816, !493}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3794, file: !3795, line: 20, baseType: !493, size: 64, offset: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3786, file: !3787, line: 57, baseType: !3884, size: 64, offset: 384)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3787, line: 31, size: 704, elements: !3886)
!3886 = !{!3887, !3888, !3889, !3890, !3891}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3885, file: !3787, line: 32, baseType: !359, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3885, file: !3787, line: 33, baseType: !328, size: 32, offset: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3885, file: !3787, line: 34, baseType: !322, size: 64, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3885, file: !3787, line: 35, baseType: !3884, size: 64, offset: 192)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3885, file: !3787, line: 43, baseType: !616, size: 448, offset: 256)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3786, file: !3787, line: 58, baseType: !3884, size: 64, offset: 448)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3786, file: !3787, line: 59, baseType: !3785, size: 64, offset: 512)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3786, file: !3787, line: 60, baseType: !3785, size: 64, offset: 576)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3786, file: !3787, line: 61, baseType: !3785, size: 64, offset: 640)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3786, file: !3787, line: 63, baseType: !497, size: 512, offset: 704)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3786, file: !3787, line: 65, baseType: !597, size: 64, offset: 1216)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3786, file: !3787, line: 66, baseType: !322, size: 64, offset: 1280)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3779, file: !258, line: 108, baseType: !3900, size: 64, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!328, !3771, !3903, !257}
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !3905)
!3905 = !{!3906, !3907, !3908}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3904, file: !258, line: 64, baseType: !3798, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3904, file: !258, line: 65, baseType: !328, size: 32, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3904, file: !258, line: 66, baseType: !3909, size: 512, offset: 96)
!3909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 512, elements: !1908)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3779, file: !258, line: 110, baseType: !3911, size: 64, offset: 128)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!328, !3771, !7, !3914}
!3914 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !321, line: 164, baseType: !597)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3779, file: !258, line: 111, baseType: !3916, size: 64, offset: 192)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{null, !3771, !7}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3779, file: !258, line: 112, baseType: !3920, size: 64, offset: 256)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!328, !3771, !3785, !3923, !7, !3925, !393}
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3779, file: !258, line: 117, baseType: !3927, size: 64, offset: 320)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!328, !3771, !7, !7, !322}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3779, file: !258, line: 119, baseType: !3931, size: 64, offset: 384)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{null, !3771, !7, !7}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3779, file: !258, line: 121, baseType: !3935, size: 64, offset: 448)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!328, !3771, !3938, !755}
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3940, line: 11, flags: DIFlagFwdDecl)
!3940 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3779, file: !258, line: 122, baseType: !3942, size: 64, offset: 512)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{null, !3771, !3938}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3779, file: !258, line: 123, baseType: !3946, size: 64, offset: 576)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!328, !3771, !3903, !3925, !393}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3772, file: !258, line: 166, baseType: !322, size: 64, offset: 256)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3772, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3772, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3772, file: !258, line: 171, baseType: !3798, size: 64, offset: 384)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3772, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3772, file: !258, line: 173, baseType: !3955, size: 64, offset: 512)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3772, file: !258, line: 175, baseType: !3771, size: 64, offset: 576)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3772, file: !258, line: 182, baseType: !3914, size: 64, offset: 640)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3772, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3772, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3772, file: !258, line: 185, baseType: !1004, size: 128, offset: 768)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3772, file: !258, line: 186, baseType: !1352, size: 192, offset: 896)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3772, file: !258, line: 187, baseType: !3964, offset: 1088)
!3964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2504)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !494, file: !237, line: 499, baseType: !480, size: 128, offset: 4224)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !494, file: !237, line: 502, baseType: !3967, size: 64, offset: 4352)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3969)
!3969 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !494, file: !237, line: 504, baseType: !3971, size: 64, offset: 4416)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !494, file: !237, line: 505, baseType: !690, size: 64, offset: 4480)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !494, file: !237, line: 510, baseType: !690, size: 64, offset: 4544)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !494, file: !237, line: 511, baseType: !3975, size: 64, offset: 4608)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3977)
!3977 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !494, file: !237, line: 513, baseType: !3979, size: 64, offset: 4672)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !3981)
!3981 = !{!3982, !3983}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3980, file: !237, line: 293, baseType: !7, size: 32)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3980, file: !237, line: 294, baseType: !597, size: 64, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !494, file: !237, line: 515, baseType: !480, size: 128, offset: 4736)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !494, file: !237, line: 526, baseType: !3986, offset: 4864)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3987, line: 5, elements: !524)
!3987 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !494, file: !237, line: 528, baseType: !3785, size: 64, offset: 4864)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !494, file: !237, line: 529, baseType: !3798, size: 64, offset: 4928)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !494, file: !237, line: 534, baseType: !778, size: 32, offset: 4992)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !494, file: !237, line: 535, baseType: !439, size: 32, offset: 5024)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !494, file: !237, line: 537, baseType: !510, offset: 5056)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !494, file: !237, line: 538, baseType: !480, size: 128, offset: 5056)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !494, file: !237, line: 540, baseType: !3995, size: 64, offset: 5184)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3997, line: 54, size: 960, elements: !3998)
!3997 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3998 = !{!3999, !4000, !4001, !4002, !4003, !4004, !4005, !4009, !4013, !4014, !4015, !4016, !4020, !4024, !4025}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3996, file: !3997, line: 55, baseType: !337, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3996, file: !3997, line: 56, baseType: !341, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3996, file: !3997, line: 58, baseType: !601, size: 64, offset: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3996, file: !3997, line: 59, baseType: !601, size: 64, offset: 192)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3996, file: !3997, line: 60, baseType: !503, size: 64, offset: 256)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3996, file: !3997, line: 62, baseType: !3508, size: 64, offset: 320)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3996, file: !3997, line: 63, baseType: !4006, size: 64, offset: 384)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!359, !493, !3515}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3996, file: !3997, line: 65, baseType: !4010, size: 64, offset: 448)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{null, !3995}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3996, file: !3997, line: 66, baseType: !3517, size: 64, offset: 512)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3996, file: !3997, line: 68, baseType: !3526, size: 64, offset: 576)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3996, file: !3997, line: 70, baseType: !3316, size: 64, offset: 640)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3996, file: !3997, line: 71, baseType: !4017, size: 64, offset: 704)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!2302, !493}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3996, file: !3997, line: 73, baseType: !4021, size: 64, offset: 768)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{null, !493, !3348, !3349}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3996, file: !3997, line: 75, baseType: !3521, size: 64, offset: 832)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3996, file: !3997, line: 77, baseType: !3635, size: 64, offset: 896)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !494, file: !237, line: 541, baseType: !601, size: 64, offset: 5248)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !494, file: !237, line: 543, baseType: !3517, size: 64, offset: 5312)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !494, file: !237, line: 544, baseType: !4029, size: 64, offset: 5376)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !494, file: !237, line: 545, baseType: !4032, size: 64, offset: 5440)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !494, file: !237, line: 547, baseType: !755, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !494, file: !237, line: 548, baseType: !755, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !494, file: !237, line: 549, baseType: !755, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !494, file: !237, line: 550, baseType: !755, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !476, file: !272, line: 111, baseType: !341, size: 64, offset: 576)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !476, file: !272, line: 113, baseType: !328, size: 32, offset: 640)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !476, file: !272, line: 114, baseType: !4041, size: 64, offset: 704)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4043)
!4043 = !{!4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4058}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4042, file: !272, line: 158, baseType: !480, size: 128)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4042, file: !272, line: 159, baseType: !2974, size: 64, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4042, file: !272, line: 160, baseType: !475, size: 64, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4042, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4042, file: !272, line: 162, baseType: !328, size: 32, offset: 288)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4042, file: !272, line: 163, baseType: !439, size: 32, offset: 320)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4042, file: !272, line: 167, baseType: !328, size: 32, offset: 352)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4042, file: !272, line: 168, baseType: !328, size: 32, offset: 384)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4042, file: !272, line: 169, baseType: !328, size: 32, offset: 416)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4042, file: !272, line: 171, baseType: !1656, size: 128, offset: 448)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4042, file: !272, line: 173, baseType: !4055, size: 64, offset: 576)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!328, !625, !7, !322}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4042, file: !272, line: 187, baseType: !322, size: 64, offset: 640)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !476, file: !272, line: 115, baseType: !1352, size: 192, offset: 768)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !457, file: !51, line: 690, baseType: !322, size: 64, offset: 6144)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !457, file: !51, line: 691, baseType: !322, size: 64, offset: 6208)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !457, file: !51, line: 692, baseType: !322, size: 64, offset: 6272)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !457, file: !51, line: 693, baseType: !322, size: 64, offset: 6336)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !457, file: !51, line: 694, baseType: !322, size: 64, offset: 6400)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !457, file: !51, line: 695, baseType: !4066, size: 3648, offset: 6464)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !4067)
!4067 = !{!4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4131, !4132, !4133, !4134, !4135, !4136, !4137}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4066, file: !51, line: 587, baseType: !439, size: 32)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4066, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4066, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4066, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4066, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4066, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4066, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4066, file: !51, line: 595, baseType: !439, size: 32, offset: 224)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4066, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4066, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4066, file: !51, line: 598, baseType: !439, size: 32, offset: 320)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4066, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4066, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4066, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4066, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4066, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4066, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4066, file: !51, line: 610, baseType: !323, size: 8, offset: 544)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4066, file: !51, line: 611, baseType: !323, size: 8, offset: 552)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4066, file: !51, line: 612, baseType: !323, size: 8, offset: 560)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4066, file: !51, line: 613, baseType: !439, size: 32, offset: 576)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4066, file: !51, line: 614, baseType: !439, size: 32, offset: 608)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4066, file: !51, line: 615, baseType: !323, size: 8, offset: 640)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4066, file: !51, line: 621, baseType: !4092, size: 384, offset: 672)
!4092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4093, size: 384, elements: !551)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4066, file: !51, line: 616, size: 128, elements: !4094)
!4094 = !{!4095, !4096, !4097, !4098}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4093, file: !51, line: 617, baseType: !323, size: 8)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4093, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4093, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4093, file: !51, line: 620, baseType: !323, size: 8, offset: 96)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4066, file: !51, line: 624, baseType: !439, size: 32, offset: 1056)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4066, file: !51, line: 627, baseType: !439, size: 32, offset: 1088)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4066, file: !51, line: 630, baseType: !323, size: 8, offset: 1120)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4066, file: !51, line: 631, baseType: !323, size: 8, offset: 1128)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4066, file: !51, line: 632, baseType: !323, size: 8, offset: 1136)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4066, file: !51, line: 633, baseType: !323, size: 8, offset: 1144)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4066, file: !51, line: 634, baseType: !323, size: 8, offset: 1152)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4066, file: !51, line: 635, baseType: !323, size: 8, offset: 1160)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4066, file: !51, line: 637, baseType: !323, size: 8, offset: 1168)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4066, file: !51, line: 638, baseType: !323, size: 8, offset: 1176)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4066, file: !51, line: 639, baseType: !323, size: 8, offset: 1184)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4066, file: !51, line: 640, baseType: !323, size: 8, offset: 1192)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4066, file: !51, line: 641, baseType: !323, size: 8, offset: 1200)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4066, file: !51, line: 642, baseType: !323, size: 8, offset: 1208)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4066, file: !51, line: 643, baseType: !323, size: 8, offset: 1216)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4066, file: !51, line: 644, baseType: !323, size: 8, offset: 1224)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4066, file: !51, line: 645, baseType: !323, size: 8, offset: 1232)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4066, file: !51, line: 647, baseType: !439, size: 32, offset: 1248)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4066, file: !51, line: 650, baseType: !4118, size: 296, offset: 1280)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !4119)
!4119 = !{!4120, !4121}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4118, file: !6, line: 826, baseType: !325, size: 8)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4118, file: !6, line: 827, baseType: !4122, size: 288, offset: 8)
!4122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4123, size: 288, elements: !1334)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !4124)
!4124 = !{!4125, !4126}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4123, file: !6, line: 804, baseType: !325, size: 8)
!4126 = !DIDerivedType(tag: DW_TAG_member, scope: !4123, file: !6, line: 805, baseType: !4127, size: 64, offset: 8)
!4127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4123, file: !6, line: 805, size: 64, elements: !4128)
!4128 = !{!4129, !4130}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4127, file: !6, line: 806, baseType: !691, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4127, file: !6, line: 807, baseType: !805, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4066, file: !51, line: 651, baseType: !4118, size: 296, offset: 1576)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4066, file: !51, line: 652, baseType: !4118, size: 296, offset: 1872)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4066, file: !51, line: 653, baseType: !4118, size: 296, offset: 2168)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4066, file: !51, line: 654, baseType: !4118, size: 296, offset: 2464)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4066, file: !51, line: 655, baseType: !4118, size: 296, offset: 2760)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4066, file: !51, line: 656, baseType: !4118, size: 296, offset: 3056)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4066, file: !51, line: 657, baseType: !4118, size: 296, offset: 3352)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !457, file: !51, line: 698, baseType: !4139, size: 64, offset: 10112)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!328, !322, !328, !328, !328}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !457, file: !51, line: 699, baseType: !328, size: 32, offset: 10176)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !457, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !429, file: !51, line: 441, baseType: !453, size: 64, offset: 1408)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !429, file: !51, line: 442, baseType: !453, size: 64, offset: 1472)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !429, file: !51, line: 444, baseType: !4147, size: 64, offset: 1536)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!328, !456}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !429, file: !51, line: 445, baseType: !4147, size: 64, offset: 1600)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !429, file: !51, line: 447, baseType: !4152, size: 64, offset: 1664)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!328, !456, !4155, !328}
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !429, file: !51, line: 450, baseType: !4158, size: 64, offset: 1728)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!328, !456, !755, !7, !393, !4161}
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !429, file: !51, line: 457, baseType: !4163, size: 64, offset: 1792)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!50, !456}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !429, file: !51, line: 460, baseType: !4147, size: 64, offset: 1856)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !429, file: !51, line: 461, baseType: !4168, size: 64, offset: 1920)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!328, !456, !4171}
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !4173)
!4173 = !{!4174, !4175, !4176}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4172, file: !51, line: 70, baseType: !328, size: 32)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4172, file: !51, line: 71, baseType: !328, size: 32, offset: 32)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4172, file: !51, line: 72, baseType: !328, size: 32, offset: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !429, file: !51, line: 463, baseType: !4178, size: 64, offset: 1984)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!328, !456, !4181}
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !429, file: !51, line: 466, baseType: !4183, size: 64, offset: 2048)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!328, !456, !4161}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !429, file: !51, line: 467, baseType: !4187, size: 64, offset: 2112)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!328, !456, !1585}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !429, file: !51, line: 468, baseType: !4191, size: 64, offset: 2176)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!328, !456, !4194}
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !429, file: !51, line: 469, baseType: !4191, size: 64, offset: 2240)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !429, file: !51, line: 470, baseType: !4187, size: 64, offset: 2304)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !429, file: !51, line: 472, baseType: !4147, size: 64, offset: 2368)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !429, file: !51, line: 473, baseType: !4199, size: 64, offset: 2432)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!328, !456, !4202}
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !4204)
!4204 = !{!4205, !4207}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4203, file: !6, line: 174, baseType: !4206, size: 48)
!4206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 48, elements: !489)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4203, file: !6, line: 175, baseType: !325, size: 8, offset: 48)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !429, file: !51, line: 474, baseType: !4209, size: 64, offset: 2496)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!328, !456, !4212}
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !4214)
!4214 = !{!4215, !4217, !4218}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4213, file: !6, line: 196, baseType: !4216, size: 32)
!4216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 32, elements: !1334)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4213, file: !6, line: 197, baseType: !325, size: 8, offset: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4213, file: !6, line: 198, baseType: !328, size: 32, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !429, file: !51, line: 475, baseType: !4220, size: 64, offset: 2560)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!328, !456, !171}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !429, file: !51, line: 477, baseType: !4224, size: 64, offset: 2624)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!328, !456, !78}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !429, file: !51, line: 478, baseType: !4228, size: 64, offset: 2688)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!328, !456, !73}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !429, file: !51, line: 480, baseType: !4232, size: 64, offset: 2752)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!328, !456, !583}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !429, file: !51, line: 481, baseType: !4236, size: 64, offset: 2816)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!328, !456, !597}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !429, file: !51, line: 482, baseType: !4240, size: 64, offset: 2880)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!328, !456, !328}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !429, file: !51, line: 483, baseType: !4240, size: 64, offset: 2944)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !429, file: !51, line: 484, baseType: !4147, size: 64, offset: 3008)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !429, file: !51, line: 490, baseType: !4246, size: 64, offset: 3072)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!175, !456}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !429, file: !51, line: 492, baseType: !4250, size: 2304, offset: 3136)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !4251)
!4251 = !{!4252, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4279, !4283, !4284, !4285, !4286, !4287, !4288, !4293, !4298, !4302}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4250, file: !51, line: 228, baseType: !4253, size: 1216)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !4254)
!4254 = !{!4255, !4256, !4257, !4258, !4259, !4260, !4261}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4253, file: !51, line: 89, baseType: !435, size: 1024)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4253, file: !51, line: 91, baseType: !439, size: 32, offset: 1024)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4253, file: !51, line: 92, baseType: !439, size: 32, offset: 1056)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4253, file: !51, line: 93, baseType: !439, size: 32, offset: 1088)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4253, file: !51, line: 95, baseType: !439, size: 32, offset: 1120)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4253, file: !51, line: 96, baseType: !439, size: 32, offset: 1152)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4253, file: !51, line: 97, baseType: !439, size: 32, offset: 1184)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4250, file: !51, line: 230, baseType: !453, size: 64, offset: 1216)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4250, file: !51, line: 231, baseType: !4147, size: 64, offset: 1280)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4250, file: !51, line: 232, baseType: !4147, size: 64, offset: 1344)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4250, file: !51, line: 233, baseType: !4147, size: 64, offset: 1408)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4250, file: !51, line: 234, baseType: !4147, size: 64, offset: 1472)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4250, file: !51, line: 237, baseType: !4147, size: 64, offset: 1536)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4250, file: !51, line: 238, baseType: !4269, size: 64, offset: 1600)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!328, !456, !4272}
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !4274)
!4274 = !{!4275, !4276, !4277, !4278}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4273, file: !51, line: 115, baseType: !7, size: 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4273, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4273, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4273, file: !51, line: 118, baseType: !690, size: 64, offset: 128)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4250, file: !51, line: 240, baseType: !4280, size: 64, offset: 1664)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!328, !456, !322}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4250, file: !51, line: 242, baseType: !4187, size: 64, offset: 1728)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4250, file: !51, line: 243, baseType: !4187, size: 64, offset: 1792)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4250, file: !51, line: 244, baseType: !4187, size: 64, offset: 1856)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4250, file: !51, line: 248, baseType: !4187, size: 64, offset: 1920)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4250, file: !51, line: 249, baseType: !4191, size: 64, offset: 1984)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4250, file: !51, line: 250, baseType: !4289, size: 64, offset: 2048)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!328, !456, !4292}
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4250, file: !51, line: 258, baseType: !4294, size: 64, offset: 2112)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!328, !456, !4297, !328}
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4250, file: !51, line: 267, baseType: !4299, size: 64, offset: 2176)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!328, !456, !439}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4250, file: !51, line: 268, baseType: !4299, size: 64, offset: 2240)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !429, file: !51, line: 493, baseType: !4304, size: 576, offset: 5440)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !4305)
!4305 = !{!4306, !4310, !4314, !4315, !4316, !4317, !4318, !4319, !4320}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4304, file: !51, line: 304, baseType: !4307, size: 64)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !4308)
!4308 = !{!4309}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4307, file: !51, line: 277, baseType: !359, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4304, file: !51, line: 306, baseType: !4311, size: 64, offset: 64)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{null, !456, !4272}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4304, file: !51, line: 308, baseType: !4191, size: 64, offset: 128)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4304, file: !51, line: 309, baseType: !4289, size: 64, offset: 192)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4304, file: !51, line: 310, baseType: !453, size: 64, offset: 256)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4304, file: !51, line: 311, baseType: !453, size: 64, offset: 320)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4304, file: !51, line: 312, baseType: !453, size: 64, offset: 384)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4304, file: !51, line: 313, baseType: !4240, size: 64, offset: 448)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4304, file: !51, line: 316, baseType: !4280, size: 64, offset: 512)
!4321 = !DIGlobalVariableExpression(var: !4322, expr: !DIExpression())
!4322 = distinct !DIGlobalVariable(name: "serit_sp1511lhb_inittab", scope: !2, file: !3, line: 144, type: !4323, isLocal: true, isDefinition: true)
!4323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 1184, elements: !4324)
!4324 = !{!4325}
!4325 = !DISubrange(count: 148)
!4326 = !DIGlobalVariableExpression(var: !4327, expr: !DIExpression())
!4327 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 943, type: !4328, isLocal: true, isDefinition: true)
!4328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 104, elements: !4329)
!4329 = !{!4330}
!4330 = !DISubrange(count: 13)
!4331 = !{i32 7, !"Dwarf Version", i32 4}
!4332 = !{i32 2, !"Debug Info Version", i32 3}
!4333 = !{i32 1, !"wchar_size", i32 2}
!4334 = !{i32 1, !"Code Model", i32 2}
!4335 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4336 = distinct !DISubprogram(name: "si21xx_attach", scope: !3, file: !3, line: 897, type: !4337, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !524)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!456, !4339, !4346}
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4341)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "si21xx_config", file: !4342, line: 8, size: 64, elements: !4343)
!4342 = !DIFile(filename: "drivers/media/dvb-frontends/si21xx.h", directory: "/home/lizy2001/genbc/linux")
!4343 = !{!4344, !4345}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4341, file: !4342, line: 10, baseType: !323, size: 8)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4341, file: !4342, line: 13, baseType: !328, size: 32, offset: 32)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4348, line: 695, size: 7552, elements: !4349)
!4348 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4349 = !{!4350, !4351, !4352, !4389, !4390, !4404, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4421, !4422, !4423, !4424, !4456, !4467}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4347, file: !4348, line: 696, baseType: !341, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4347, file: !4348, line: 697, baseType: !7, size: 32, offset: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4347, file: !4348, line: 698, baseType: !4353, size: 64, offset: 128)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4355)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4348, line: 519, size: 320, elements: !4356)
!4356 = !{!4357, !4370, !4371, !4384, !4385}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4355, file: !4348, line: 529, baseType: !4358, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!328, !4346, !4361, !328}
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4363, line: 69, size: 128, elements: !4364)
!4363 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4364 = !{!4365, !4366, !4367, !4368}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4362, file: !4363, line: 70, baseType: !367, size: 16)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4362, file: !4363, line: 71, baseType: !367, size: 16, offset: 16)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4362, file: !4363, line: 84, baseType: !367, size: 16, offset: 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4362, file: !4363, line: 85, baseType: !4369, size: 64, offset: 64)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4355, file: !4348, line: 531, baseType: !4358, size: 64, offset: 64)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4355, file: !4348, line: 533, baseType: !4372, size: 64, offset: 128)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!328, !4346, !366, !368, !339, !323, !328, !4375}
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4363, line: 135, size: 272, elements: !4377)
!4377 = !{!4378, !4379, !4380}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4376, file: !4363, line: 136, baseType: !325, size: 8)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4376, file: !4363, line: 137, baseType: !367, size: 16)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4376, file: !4363, line: 138, baseType: !4381, size: 272)
!4381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 272, elements: !4382)
!4382 = !{!4383}
!4383 = !DISubrange(count: 34)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4355, file: !4348, line: 536, baseType: !4372, size: 64, offset: 192)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4355, file: !4348, line: 541, baseType: !4386, size: 64, offset: 256)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!439, !4346}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4347, file: !4348, line: 699, baseType: !322, size: 64, offset: 192)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4347, file: !4348, line: 702, baseType: !4391, size: 64, offset: 256)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4393)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4348, line: 557, size: 192, elements: !4394)
!4394 = !{!4395, !4399, !4403}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4393, file: !4348, line: 558, baseType: !4396, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{null, !4346, !7}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4393, file: !4348, line: 559, baseType: !4400, size: 64, offset: 64)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!328, !4346, !7}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4393, file: !4348, line: 560, baseType: !4396, size: 64, offset: 128)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4347, file: !4348, line: 703, baseType: !4405, size: 192, offset: 320)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4406, line: 30, size: 192, elements: !4407)
!4406 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4407 = !{!4408, !4409, !4410}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4405, file: !4406, line: 31, baseType: !1041)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4405, file: !4406, line: 32, baseType: !1013, size: 128)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4405, file: !4406, line: 33, baseType: !1395, size: 64, offset: 128)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4347, file: !4348, line: 704, baseType: !4405, size: 192, offset: 512)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4347, file: !4348, line: 706, baseType: !328, size: 32, offset: 704)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4347, file: !4348, line: 707, baseType: !328, size: 32, offset: 736)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4347, file: !4348, line: 708, baseType: !494, size: 5568, offset: 768)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4347, file: !4348, line: 709, baseType: !597, size: 64, offset: 6336)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4347, file: !4348, line: 713, baseType: !328, size: 32, offset: 6400)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4347, file: !4348, line: 714, baseType: !4418, size: 384, offset: 6432)
!4418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 384, elements: !4419)
!4419 = !{!4420}
!4420 = !DISubrange(count: 48)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4347, file: !4348, line: 715, baseType: !1677, size: 192, offset: 6848)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4347, file: !4348, line: 717, baseType: !1352, size: 192, offset: 7040)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4347, file: !4348, line: 718, baseType: !480, size: 128, offset: 7232)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4347, file: !4348, line: 720, baseType: !4425, size: 64, offset: 7360)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4348, line: 618, size: 832, elements: !4427)
!4427 = !{!4428, !4432, !4433, !4437, !4438, !4439, !4440, !4444, !4445, !4448, !4449, !4452, !4455}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4426, file: !4348, line: 619, baseType: !4429, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!328, !4346}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4426, file: !4348, line: 621, baseType: !4429, size: 64, offset: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4426, file: !4348, line: 622, baseType: !4434, size: 64, offset: 128)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{null, !4346, !328}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4426, file: !4348, line: 623, baseType: !4429, size: 64, offset: 192)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4426, file: !4348, line: 624, baseType: !4434, size: 64, offset: 256)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4426, file: !4348, line: 625, baseType: !4429, size: 64, offset: 320)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4426, file: !4348, line: 627, baseType: !4441, size: 64, offset: 384)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{null, !4346}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4426, file: !4348, line: 628, baseType: !4441, size: 64, offset: 448)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4426, file: !4348, line: 631, baseType: !4446, size: 64, offset: 512)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4348, line: 631, flags: DIFlagFwdDecl)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4426, file: !4348, line: 632, baseType: !4446, size: 64, offset: 576)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4426, file: !4348, line: 633, baseType: !4450, size: 64, offset: 640)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4348, line: 633, flags: DIFlagFwdDecl)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4426, file: !4348, line: 634, baseType: !4453, size: 64, offset: 704)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4348, line: 634, flags: DIFlagFwdDecl)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4426, file: !4348, line: 635, baseType: !4453, size: 64, offset: 768)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4347, file: !4348, line: 721, baseType: !4457, size: 64, offset: 7424)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4459)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4348, line: 664, size: 192, elements: !4460)
!4460 = !{!4461, !4462, !4463, !4464, !4465, !4466}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4459, file: !4348, line: 665, baseType: !690, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4459, file: !4348, line: 666, baseType: !328, size: 32, offset: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4459, file: !4348, line: 667, baseType: !366, size: 16, offset: 96)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4459, file: !4348, line: 668, baseType: !366, size: 16, offset: 112)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4459, file: !4348, line: 669, baseType: !366, size: 16, offset: 128)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4459, file: !4348, line: 670, baseType: !366, size: 16, offset: 144)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4347, file: !4348, line: 723, baseType: !3771, size: 64, offset: 7488)
!4468 = !DILocalVariable(name: "config", arg: 1, scope: !4336, file: !3, line: 897, type: !4339)
!4469 = !DILocation(line: 897, column: 64, scope: !4336)
!4470 = !DILocalVariable(name: "i2c", arg: 2, scope: !4336, file: !3, line: 898, type: !4346)
!4471 = !DILocation(line: 898, column: 27, scope: !4336)
!4472 = !DILocalVariable(name: "state", scope: !4336, file: !3, line: 900, type: !4473)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "si21xx_state", file: !3, line: 134, size: 10496, elements: !4475)
!4475 = !{!4476, !4477, !4478, !4479, !4480, !4481}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4474, file: !3, line: 135, baseType: !4346, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4474, file: !3, line: 136, baseType: !4339, size: 64, offset: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4474, file: !3, line: 137, baseType: !457, size: 10240, offset: 128)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "initialised", scope: !4474, file: !3, line: 138, baseType: !323, size: 1, offset: 10368, flags: DIFlagBitField, extraData: i64 10368)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "errmode", scope: !4474, file: !3, line: 139, baseType: !328, size: 32, offset: 10400)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !4474, file: !3, line: 140, baseType: !328, size: 32, offset: 10432)
!4482 = !DILocation(line: 900, column: 23, scope: !4336)
!4483 = !DILocalVariable(name: "id", scope: !4336, file: !3, line: 901, type: !328)
!4484 = !DILocation(line: 901, column: 6, scope: !4336)
!4485 = !DILocation(line: 903, column: 2, scope: !4336)
!4486 = !DILocation(line: 903, column: 2, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 903, column: 2)
!4488 = distinct !DILexicalBlock(scope: !4336, file: !3, line: 903, column: 2)
!4489 = !DILocation(line: 903, column: 2, scope: !4488)
!4490 = !DILocation(line: 906, column: 10, scope: !4336)
!4491 = !DILocation(line: 906, column: 8, scope: !4336)
!4492 = !DILocation(line: 907, column: 6, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4336, file: !3, line: 907, column: 6)
!4494 = !DILocation(line: 907, column: 12, scope: !4493)
!4495 = !DILocation(line: 907, column: 6, scope: !4336)
!4496 = !DILocation(line: 908, column: 3, scope: !4493)
!4497 = !DILocation(line: 911, column: 18, scope: !4336)
!4498 = !DILocation(line: 911, column: 2, scope: !4336)
!4499 = !DILocation(line: 911, column: 9, scope: !4336)
!4500 = !DILocation(line: 911, column: 16, scope: !4336)
!4501 = !DILocation(line: 912, column: 15, scope: !4336)
!4502 = !DILocation(line: 912, column: 2, scope: !4336)
!4503 = !DILocation(line: 912, column: 9, scope: !4336)
!4504 = !DILocation(line: 912, column: 13, scope: !4336)
!4505 = !DILocation(line: 913, column: 2, scope: !4336)
!4506 = !DILocation(line: 913, column: 9, scope: !4336)
!4507 = !DILocation(line: 913, column: 21, scope: !4336)
!4508 = !DILocation(line: 914, column: 2, scope: !4336)
!4509 = !DILocation(line: 914, column: 9, scope: !4336)
!4510 = !DILocation(line: 914, column: 17, scope: !4336)
!4511 = !DILocation(line: 917, column: 20, scope: !4336)
!4512 = !DILocation(line: 917, column: 7, scope: !4336)
!4513 = !DILocation(line: 917, column: 5, scope: !4336)
!4514 = !DILocation(line: 918, column: 16, scope: !4336)
!4515 = !DILocation(line: 918, column: 40, scope: !4336)
!4516 = !DILocation(line: 918, column: 43, scope: !4336)
!4517 = !DILocation(line: 918, column: 2, scope: !4336)
!4518 = !DILocation(line: 919, column: 2, scope: !4336)
!4519 = !DILocation(line: 920, column: 20, scope: !4336)
!4520 = !DILocation(line: 920, column: 7, scope: !4336)
!4521 = !DILocation(line: 920, column: 5, scope: !4336)
!4522 = !DILocation(line: 928, column: 6, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4336, file: !3, line: 928, column: 6)
!4524 = !DILocation(line: 928, column: 9, scope: !4523)
!4525 = !DILocation(line: 928, column: 17, scope: !4523)
!4526 = !DILocation(line: 928, column: 20, scope: !4523)
!4527 = !DILocation(line: 928, column: 23, scope: !4523)
!4528 = !DILocation(line: 928, column: 6, scope: !4336)
!4529 = !DILocation(line: 929, column: 3, scope: !4523)
!4530 = !DILocation(line: 932, column: 10, scope: !4336)
!4531 = !DILocation(line: 932, column: 17, scope: !4336)
!4532 = !DILocation(line: 932, column: 26, scope: !4336)
!4533 = !DILocation(line: 932, column: 2, scope: !4336)
!4534 = !DILocation(line: 934, column: 37, scope: !4336)
!4535 = !DILocation(line: 934, column: 2, scope: !4336)
!4536 = !DILocation(line: 934, column: 9, scope: !4336)
!4537 = !DILocation(line: 934, column: 18, scope: !4336)
!4538 = !DILocation(line: 934, column: 35, scope: !4336)
!4539 = !DILocation(line: 935, column: 10, scope: !4336)
!4540 = !DILocation(line: 935, column: 17, scope: !4336)
!4541 = !DILocation(line: 935, column: 2, scope: !4336)
!4542 = !DILabel(scope: !4336, name: "error", file: !3, line: 937)
!4543 = !DILocation(line: 937, column: 1, scope: !4336)
!4544 = !DILocation(line: 938, column: 8, scope: !4336)
!4545 = !DILocation(line: 938, column: 2, scope: !4336)
!4546 = !DILocation(line: 939, column: 2, scope: !4336)
!4547 = !DILocation(line: 940, column: 1, scope: !4336)
!4548 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 662, type: !4549, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!322, !594, !320}
!4551 = !DILocalVariable(name: "s", arg: 1, scope: !4552, file: !284, line: 445, type: !1194)
!4552 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !284, file: !284, line: 445, type: !4553, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!322, !1194, !320, !594}
!4555 = !DILocation(line: 445, column: 72, scope: !4552, inlinedAt: !4556)
!4556 = distinct !DILocation(line: 552, column: 10, scope: !4557, inlinedAt: !4560)
!4557 = distinct !DILexicalBlock(scope: !4558, file: !284, line: 540, column: 34)
!4558 = distinct !DILexicalBlock(scope: !4559, file: !284, line: 540, column: 6)
!4559 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 538, type: !4549, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!4560 = distinct !DILocation(line: 664, column: 9, scope: !4548)
!4561 = !DILocalVariable(name: "flags", arg: 2, scope: !4552, file: !284, line: 446, type: !320)
!4562 = !DILocation(line: 446, column: 9, scope: !4552, inlinedAt: !4556)
!4563 = !DILocalVariable(name: "size", arg: 3, scope: !4552, file: !284, line: 446, type: !594)
!4564 = !DILocation(line: 446, column: 23, scope: !4552, inlinedAt: !4556)
!4565 = !DILocalVariable(name: "ret", scope: !4552, file: !284, line: 448, type: !322)
!4566 = !DILocation(line: 448, column: 8, scope: !4552, inlinedAt: !4556)
!4567 = !DILocalVariable(name: "flags", arg: 1, scope: !4568, file: !284, line: 318, type: !320)
!4568 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 318, type: !4569, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!283, !320}
!4571 = !DILocation(line: 318, column: 67, scope: !4568, inlinedAt: !4572)
!4572 = distinct !DILocation(line: 553, column: 20, scope: !4557, inlinedAt: !4560)
!4573 = !DILocalVariable(name: "size", arg: 1, scope: !4574, file: !284, line: 346, type: !594)
!4574 = distinct !DISubprogram(name: "kmalloc_index", scope: !284, file: !284, line: 346, type: !4575, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!7, !594}
!4577 = !DILocation(line: 346, column: 58, scope: !4574, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 547, column: 11, scope: !4557, inlinedAt: !4560)
!4579 = !DILocalVariable(name: "size", arg: 1, scope: !4580, file: !284, line: 472, type: !594)
!4580 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !284, file: !284, line: 472, type: !4581, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!322, !594, !320, !7}
!4583 = !DILocation(line: 472, column: 28, scope: !4580, inlinedAt: !4584)
!4584 = distinct !DILocation(line: 481, column: 9, scope: !4585, inlinedAt: !4586)
!4585 = distinct !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 478, type: !4549, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!4586 = distinct !DILocation(line: 545, column: 11, scope: !4587, inlinedAt: !4560)
!4587 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 544, column: 7)
!4588 = !DILocalVariable(name: "flags", arg: 2, scope: !4580, file: !284, line: 472, type: !320)
!4589 = !DILocation(line: 472, column: 40, scope: !4580, inlinedAt: !4584)
!4590 = !DILocalVariable(name: "order", arg: 3, scope: !4580, file: !284, line: 472, type: !7)
!4591 = !DILocation(line: 472, column: 60, scope: !4580, inlinedAt: !4584)
!4592 = !DILocalVariable(name: "size", arg: 1, scope: !4585, file: !284, line: 478, type: !594)
!4593 = !DILocation(line: 478, column: 51, scope: !4585, inlinedAt: !4586)
!4594 = !DILocalVariable(name: "flags", arg: 2, scope: !4585, file: !284, line: 478, type: !320)
!4595 = !DILocation(line: 478, column: 63, scope: !4585, inlinedAt: !4586)
!4596 = !DILocalVariable(name: "order", scope: !4585, file: !284, line: 480, type: !7)
!4597 = !DILocation(line: 480, column: 15, scope: !4585, inlinedAt: !4586)
!4598 = !DILocalVariable(name: "size", arg: 1, scope: !4559, file: !284, line: 538, type: !594)
!4599 = !DILocation(line: 538, column: 45, scope: !4559, inlinedAt: !4560)
!4600 = !DILocalVariable(name: "flags", arg: 2, scope: !4559, file: !284, line: 538, type: !320)
!4601 = !DILocation(line: 538, column: 57, scope: !4559, inlinedAt: !4560)
!4602 = !DILocalVariable(name: "index", scope: !4557, file: !284, line: 542, type: !7)
!4603 = !DILocation(line: 542, column: 16, scope: !4557, inlinedAt: !4560)
!4604 = !DILocalVariable(name: "size", arg: 1, scope: !4548, file: !284, line: 662, type: !594)
!4605 = !DILocation(line: 662, column: 36, scope: !4548)
!4606 = !DILocalVariable(name: "flags", arg: 2, scope: !4548, file: !284, line: 662, type: !320)
!4607 = !DILocation(line: 662, column: 48, scope: !4548)
!4608 = !DILocation(line: 664, column: 17, scope: !4548)
!4609 = !DILocation(line: 664, column: 23, scope: !4548)
!4610 = !DILocation(line: 664, column: 29, scope: !4548)
!4611 = !DILocation(line: 540, column: 27, scope: !4558, inlinedAt: !4560)
!4612 = !DILocation(line: 540, column: 6, scope: !4558, inlinedAt: !4560)
!4613 = !DILocation(line: 540, column: 6, scope: !4559, inlinedAt: !4560)
!4614 = !DILocation(line: 544, column: 7, scope: !4587, inlinedAt: !4560)
!4615 = !DILocation(line: 544, column: 12, scope: !4587, inlinedAt: !4560)
!4616 = !DILocation(line: 544, column: 7, scope: !4557, inlinedAt: !4560)
!4617 = !DILocation(line: 545, column: 25, scope: !4587, inlinedAt: !4560)
!4618 = !DILocation(line: 545, column: 31, scope: !4587, inlinedAt: !4560)
!4619 = !DILocation(line: 480, column: 33, scope: !4585, inlinedAt: !4586)
!4620 = !DILocation(line: 480, column: 23, scope: !4585, inlinedAt: !4586)
!4621 = !DILocation(line: 481, column: 29, scope: !4585, inlinedAt: !4586)
!4622 = !DILocation(line: 481, column: 35, scope: !4585, inlinedAt: !4586)
!4623 = !DILocation(line: 481, column: 42, scope: !4585, inlinedAt: !4586)
!4624 = !DILocation(line: 474, column: 23, scope: !4580, inlinedAt: !4584)
!4625 = !DILocation(line: 474, column: 29, scope: !4580, inlinedAt: !4584)
!4626 = !DILocation(line: 474, column: 36, scope: !4580, inlinedAt: !4584)
!4627 = !DILocation(line: 474, column: 9, scope: !4580, inlinedAt: !4584)
!4628 = !DILocation(line: 545, column: 4, scope: !4587, inlinedAt: !4560)
!4629 = !DILocation(line: 547, column: 25, scope: !4557, inlinedAt: !4560)
!4630 = !DILocation(line: 348, column: 7, scope: !4631, inlinedAt: !4578)
!4631 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 348, column: 6)
!4632 = !DILocation(line: 348, column: 6, scope: !4574, inlinedAt: !4578)
!4633 = !DILocation(line: 349, column: 3, scope: !4631, inlinedAt: !4578)
!4634 = !DILocation(line: 351, column: 6, scope: !4635, inlinedAt: !4578)
!4635 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 351, column: 6)
!4636 = !DILocation(line: 351, column: 11, scope: !4635, inlinedAt: !4578)
!4637 = !DILocation(line: 351, column: 6, scope: !4574, inlinedAt: !4578)
!4638 = !DILocation(line: 352, column: 3, scope: !4635, inlinedAt: !4578)
!4639 = !DILocation(line: 354, column: 32, scope: !4640, inlinedAt: !4578)
!4640 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 354, column: 6)
!4641 = !DILocation(line: 354, column: 37, scope: !4640, inlinedAt: !4578)
!4642 = !DILocation(line: 354, column: 42, scope: !4640, inlinedAt: !4578)
!4643 = !DILocation(line: 354, column: 45, scope: !4640, inlinedAt: !4578)
!4644 = !DILocation(line: 354, column: 50, scope: !4640, inlinedAt: !4578)
!4645 = !DILocation(line: 354, column: 6, scope: !4574, inlinedAt: !4578)
!4646 = !DILocation(line: 355, column: 3, scope: !4640, inlinedAt: !4578)
!4647 = !DILocation(line: 356, column: 32, scope: !4648, inlinedAt: !4578)
!4648 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 356, column: 6)
!4649 = !DILocation(line: 356, column: 37, scope: !4648, inlinedAt: !4578)
!4650 = !DILocation(line: 356, column: 43, scope: !4648, inlinedAt: !4578)
!4651 = !DILocation(line: 356, column: 46, scope: !4648, inlinedAt: !4578)
!4652 = !DILocation(line: 356, column: 51, scope: !4648, inlinedAt: !4578)
!4653 = !DILocation(line: 356, column: 6, scope: !4574, inlinedAt: !4578)
!4654 = !DILocation(line: 357, column: 3, scope: !4648, inlinedAt: !4578)
!4655 = !DILocation(line: 358, column: 6, scope: !4656, inlinedAt: !4578)
!4656 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 358, column: 6)
!4657 = !DILocation(line: 358, column: 11, scope: !4656, inlinedAt: !4578)
!4658 = !DILocation(line: 358, column: 6, scope: !4574, inlinedAt: !4578)
!4659 = !DILocation(line: 358, column: 26, scope: !4656, inlinedAt: !4578)
!4660 = !DILocation(line: 359, column: 6, scope: !4661, inlinedAt: !4578)
!4661 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 359, column: 6)
!4662 = !DILocation(line: 359, column: 11, scope: !4661, inlinedAt: !4578)
!4663 = !DILocation(line: 359, column: 6, scope: !4574, inlinedAt: !4578)
!4664 = !DILocation(line: 359, column: 26, scope: !4661, inlinedAt: !4578)
!4665 = !DILocation(line: 360, column: 6, scope: !4666, inlinedAt: !4578)
!4666 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 360, column: 6)
!4667 = !DILocation(line: 360, column: 11, scope: !4666, inlinedAt: !4578)
!4668 = !DILocation(line: 360, column: 6, scope: !4574, inlinedAt: !4578)
!4669 = !DILocation(line: 360, column: 26, scope: !4666, inlinedAt: !4578)
!4670 = !DILocation(line: 361, column: 6, scope: !4671, inlinedAt: !4578)
!4671 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 361, column: 6)
!4672 = !DILocation(line: 361, column: 11, scope: !4671, inlinedAt: !4578)
!4673 = !DILocation(line: 361, column: 6, scope: !4574, inlinedAt: !4578)
!4674 = !DILocation(line: 361, column: 26, scope: !4671, inlinedAt: !4578)
!4675 = !DILocation(line: 362, column: 6, scope: !4676, inlinedAt: !4578)
!4676 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 362, column: 6)
!4677 = !DILocation(line: 362, column: 11, scope: !4676, inlinedAt: !4578)
!4678 = !DILocation(line: 362, column: 6, scope: !4574, inlinedAt: !4578)
!4679 = !DILocation(line: 362, column: 26, scope: !4676, inlinedAt: !4578)
!4680 = !DILocation(line: 363, column: 6, scope: !4681, inlinedAt: !4578)
!4681 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 363, column: 6)
!4682 = !DILocation(line: 363, column: 11, scope: !4681, inlinedAt: !4578)
!4683 = !DILocation(line: 363, column: 6, scope: !4574, inlinedAt: !4578)
!4684 = !DILocation(line: 363, column: 26, scope: !4681, inlinedAt: !4578)
!4685 = !DILocation(line: 364, column: 6, scope: !4686, inlinedAt: !4578)
!4686 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 364, column: 6)
!4687 = !DILocation(line: 364, column: 11, scope: !4686, inlinedAt: !4578)
!4688 = !DILocation(line: 364, column: 6, scope: !4574, inlinedAt: !4578)
!4689 = !DILocation(line: 364, column: 26, scope: !4686, inlinedAt: !4578)
!4690 = !DILocation(line: 365, column: 6, scope: !4691, inlinedAt: !4578)
!4691 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 365, column: 6)
!4692 = !DILocation(line: 365, column: 11, scope: !4691, inlinedAt: !4578)
!4693 = !DILocation(line: 365, column: 6, scope: !4574, inlinedAt: !4578)
!4694 = !DILocation(line: 365, column: 26, scope: !4691, inlinedAt: !4578)
!4695 = !DILocation(line: 366, column: 6, scope: !4696, inlinedAt: !4578)
!4696 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 366, column: 6)
!4697 = !DILocation(line: 366, column: 11, scope: !4696, inlinedAt: !4578)
!4698 = !DILocation(line: 366, column: 6, scope: !4574, inlinedAt: !4578)
!4699 = !DILocation(line: 366, column: 26, scope: !4696, inlinedAt: !4578)
!4700 = !DILocation(line: 367, column: 6, scope: !4701, inlinedAt: !4578)
!4701 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 367, column: 6)
!4702 = !DILocation(line: 367, column: 11, scope: !4701, inlinedAt: !4578)
!4703 = !DILocation(line: 367, column: 6, scope: !4574, inlinedAt: !4578)
!4704 = !DILocation(line: 367, column: 26, scope: !4701, inlinedAt: !4578)
!4705 = !DILocation(line: 368, column: 6, scope: !4706, inlinedAt: !4578)
!4706 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 368, column: 6)
!4707 = !DILocation(line: 368, column: 11, scope: !4706, inlinedAt: !4578)
!4708 = !DILocation(line: 368, column: 6, scope: !4574, inlinedAt: !4578)
!4709 = !DILocation(line: 368, column: 26, scope: !4706, inlinedAt: !4578)
!4710 = !DILocation(line: 369, column: 6, scope: !4711, inlinedAt: !4578)
!4711 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 369, column: 6)
!4712 = !DILocation(line: 369, column: 11, scope: !4711, inlinedAt: !4578)
!4713 = !DILocation(line: 369, column: 6, scope: !4574, inlinedAt: !4578)
!4714 = !DILocation(line: 369, column: 26, scope: !4711, inlinedAt: !4578)
!4715 = !DILocation(line: 370, column: 6, scope: !4716, inlinedAt: !4578)
!4716 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 370, column: 6)
!4717 = !DILocation(line: 370, column: 11, scope: !4716, inlinedAt: !4578)
!4718 = !DILocation(line: 370, column: 6, scope: !4574, inlinedAt: !4578)
!4719 = !DILocation(line: 370, column: 26, scope: !4716, inlinedAt: !4578)
!4720 = !DILocation(line: 371, column: 6, scope: !4721, inlinedAt: !4578)
!4721 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 371, column: 6)
!4722 = !DILocation(line: 371, column: 11, scope: !4721, inlinedAt: !4578)
!4723 = !DILocation(line: 371, column: 6, scope: !4574, inlinedAt: !4578)
!4724 = !DILocation(line: 371, column: 26, scope: !4721, inlinedAt: !4578)
!4725 = !DILocation(line: 372, column: 6, scope: !4726, inlinedAt: !4578)
!4726 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 372, column: 6)
!4727 = !DILocation(line: 372, column: 11, scope: !4726, inlinedAt: !4578)
!4728 = !DILocation(line: 372, column: 6, scope: !4574, inlinedAt: !4578)
!4729 = !DILocation(line: 372, column: 26, scope: !4726, inlinedAt: !4578)
!4730 = !DILocation(line: 373, column: 6, scope: !4731, inlinedAt: !4578)
!4731 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 373, column: 6)
!4732 = !DILocation(line: 373, column: 11, scope: !4731, inlinedAt: !4578)
!4733 = !DILocation(line: 373, column: 6, scope: !4574, inlinedAt: !4578)
!4734 = !DILocation(line: 373, column: 26, scope: !4731, inlinedAt: !4578)
!4735 = !DILocation(line: 374, column: 6, scope: !4736, inlinedAt: !4578)
!4736 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 374, column: 6)
!4737 = !DILocation(line: 374, column: 11, scope: !4736, inlinedAt: !4578)
!4738 = !DILocation(line: 374, column: 6, scope: !4574, inlinedAt: !4578)
!4739 = !DILocation(line: 374, column: 26, scope: !4736, inlinedAt: !4578)
!4740 = !DILocation(line: 375, column: 6, scope: !4741, inlinedAt: !4578)
!4741 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 375, column: 6)
!4742 = !DILocation(line: 375, column: 11, scope: !4741, inlinedAt: !4578)
!4743 = !DILocation(line: 375, column: 6, scope: !4574, inlinedAt: !4578)
!4744 = !DILocation(line: 375, column: 27, scope: !4741, inlinedAt: !4578)
!4745 = !DILocation(line: 376, column: 6, scope: !4746, inlinedAt: !4578)
!4746 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 376, column: 6)
!4747 = !DILocation(line: 376, column: 11, scope: !4746, inlinedAt: !4578)
!4748 = !DILocation(line: 376, column: 6, scope: !4574, inlinedAt: !4578)
!4749 = !DILocation(line: 376, column: 32, scope: !4746, inlinedAt: !4578)
!4750 = !DILocation(line: 377, column: 6, scope: !4751, inlinedAt: !4578)
!4751 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 377, column: 6)
!4752 = !DILocation(line: 377, column: 11, scope: !4751, inlinedAt: !4578)
!4753 = !DILocation(line: 377, column: 6, scope: !4574, inlinedAt: !4578)
!4754 = !DILocation(line: 377, column: 32, scope: !4751, inlinedAt: !4578)
!4755 = !DILocation(line: 378, column: 6, scope: !4756, inlinedAt: !4578)
!4756 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 378, column: 6)
!4757 = !DILocation(line: 378, column: 11, scope: !4756, inlinedAt: !4578)
!4758 = !DILocation(line: 378, column: 6, scope: !4574, inlinedAt: !4578)
!4759 = !DILocation(line: 378, column: 32, scope: !4756, inlinedAt: !4578)
!4760 = !DILocation(line: 379, column: 6, scope: !4761, inlinedAt: !4578)
!4761 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 379, column: 6)
!4762 = !DILocation(line: 379, column: 11, scope: !4761, inlinedAt: !4578)
!4763 = !DILocation(line: 379, column: 6, scope: !4574, inlinedAt: !4578)
!4764 = !DILocation(line: 379, column: 33, scope: !4761, inlinedAt: !4578)
!4765 = !DILocation(line: 380, column: 6, scope: !4766, inlinedAt: !4578)
!4766 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 380, column: 6)
!4767 = !DILocation(line: 380, column: 11, scope: !4766, inlinedAt: !4578)
!4768 = !DILocation(line: 380, column: 6, scope: !4574, inlinedAt: !4578)
!4769 = !DILocation(line: 380, column: 33, scope: !4766, inlinedAt: !4578)
!4770 = !DILocation(line: 381, column: 6, scope: !4771, inlinedAt: !4578)
!4771 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 381, column: 6)
!4772 = !DILocation(line: 381, column: 11, scope: !4771, inlinedAt: !4578)
!4773 = !DILocation(line: 381, column: 6, scope: !4574, inlinedAt: !4578)
!4774 = !DILocation(line: 381, column: 33, scope: !4771, inlinedAt: !4578)
!4775 = !DILocation(line: 382, column: 2, scope: !4776, inlinedAt: !4578)
!4776 = distinct !DILexicalBlock(scope: !4777, file: !284, line: 382, column: 2)
!4777 = distinct !DILexicalBlock(scope: !4574, file: !284, line: 382, column: 2)
!4778 = !{i32 -2144226750, i32 -2144226721, i32 -2144226675, i32 -2144226617, i32 -2144226563, i32 -2144226509, i32 -2144226454, i32 -2144226423}
!4779 = !DILocation(line: 382, column: 2, scope: !4780, inlinedAt: !4578)
!4780 = distinct !DILexicalBlock(scope: !4781, file: !284, line: 382, column: 2)
!4781 = distinct !DILexicalBlock(scope: !4777, file: !284, line: 382, column: 2)
!4782 = !{i32 -2144225980, i32 -2144225973, i32 -2144225919, i32 -2144225888, i32 -2144225858}
!4783 = !DILocation(line: 382, column: 2, scope: !4781, inlinedAt: !4578)
!4784 = !DILocation(line: 386, column: 1, scope: !4574, inlinedAt: !4578)
!4785 = !DILocation(line: 547, column: 9, scope: !4557, inlinedAt: !4560)
!4786 = !DILocation(line: 549, column: 8, scope: !4787, inlinedAt: !4560)
!4787 = distinct !DILexicalBlock(scope: !4557, file: !284, line: 549, column: 7)
!4788 = !DILocation(line: 549, column: 7, scope: !4557, inlinedAt: !4560)
!4789 = !DILocation(line: 550, column: 4, scope: !4787, inlinedAt: !4560)
!4790 = !DILocation(line: 553, column: 33, scope: !4557, inlinedAt: !4560)
!4791 = !DILocation(line: 325, column: 6, scope: !4792, inlinedAt: !4572)
!4792 = distinct !DILexicalBlock(scope: !4568, file: !284, line: 325, column: 6)
!4793 = !DILocation(line: 325, column: 6, scope: !4568, inlinedAt: !4572)
!4794 = !DILocation(line: 326, column: 3, scope: !4792, inlinedAt: !4572)
!4795 = !DILocation(line: 332, column: 9, scope: !4568, inlinedAt: !4572)
!4796 = !DILocation(line: 332, column: 15, scope: !4568, inlinedAt: !4572)
!4797 = !DILocation(line: 332, column: 2, scope: !4568, inlinedAt: !4572)
!4798 = !DILocation(line: 336, column: 1, scope: !4568, inlinedAt: !4572)
!4799 = !DILocation(line: 553, column: 5, scope: !4557, inlinedAt: !4560)
!4800 = !DILocation(line: 553, column: 41, scope: !4557, inlinedAt: !4560)
!4801 = !DILocation(line: 554, column: 5, scope: !4557, inlinedAt: !4560)
!4802 = !DILocation(line: 554, column: 12, scope: !4557, inlinedAt: !4560)
!4803 = !DILocation(line: 448, column: 31, scope: !4552, inlinedAt: !4556)
!4804 = !DILocation(line: 448, column: 34, scope: !4552, inlinedAt: !4556)
!4805 = !DILocation(line: 448, column: 14, scope: !4552, inlinedAt: !4556)
!4806 = !DILocation(line: 450, column: 22, scope: !4552, inlinedAt: !4556)
!4807 = !DILocation(line: 450, column: 25, scope: !4552, inlinedAt: !4556)
!4808 = !DILocation(line: 450, column: 30, scope: !4552, inlinedAt: !4556)
!4809 = !DILocation(line: 450, column: 36, scope: !4552, inlinedAt: !4556)
!4810 = !DILocation(line: 450, column: 8, scope: !4552, inlinedAt: !4556)
!4811 = !DILocation(line: 450, column: 6, scope: !4552, inlinedAt: !4556)
!4812 = !DILocation(line: 451, column: 9, scope: !4552, inlinedAt: !4556)
!4813 = !DILocation(line: 552, column: 3, scope: !4557, inlinedAt: !4560)
!4814 = !DILocation(line: 557, column: 19, scope: !4559, inlinedAt: !4560)
!4815 = !DILocation(line: 557, column: 25, scope: !4559, inlinedAt: !4560)
!4816 = !DILocation(line: 557, column: 9, scope: !4559, inlinedAt: !4560)
!4817 = !DILocation(line: 557, column: 2, scope: !4559, inlinedAt: !4560)
!4818 = !DILocation(line: 558, column: 1, scope: !4559, inlinedAt: !4560)
!4819 = !DILocation(line: 664, column: 2, scope: !4548)
!4820 = distinct !DISubprogram(name: "si21_readreg", scope: !3, file: !3, line: 279, type: !4821, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!323, !4473, !323}
!4823 = !DILocalVariable(name: "state", arg: 1, scope: !4820, file: !3, line: 279, type: !4473)
!4824 = !DILocation(line: 279, column: 45, scope: !4820)
!4825 = !DILocalVariable(name: "reg", arg: 2, scope: !4820, file: !3, line: 279, type: !323)
!4826 = !DILocation(line: 279, column: 55, scope: !4820)
!4827 = !DILocalVariable(name: "ret", scope: !4820, file: !3, line: 281, type: !328)
!4828 = !DILocation(line: 281, column: 6, scope: !4820)
!4829 = !DILocalVariable(name: "b0", scope: !4820, file: !3, line: 282, type: !4830)
!4830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 8, elements: !1541)
!4831 = !DILocation(line: 282, column: 5, scope: !4820)
!4832 = !DILocation(line: 282, column: 12, scope: !4820)
!4833 = !DILocation(line: 282, column: 14, scope: !4820)
!4834 = !DILocalVariable(name: "b1", scope: !4820, file: !3, line: 283, type: !4830)
!4835 = !DILocation(line: 283, column: 5, scope: !4820)
!4836 = !DILocalVariable(name: "msg", scope: !4820, file: !3, line: 284, type: !4837)
!4837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4362, size: 256, elements: !1744)
!4838 = !DILocation(line: 284, column: 17, scope: !4820)
!4839 = !DILocation(line: 284, column: 25, scope: !4820)
!4840 = !DILocation(line: 285, column: 3, scope: !4820)
!4841 = !DILocation(line: 286, column: 12, scope: !4820)
!4842 = !DILocation(line: 286, column: 19, scope: !4820)
!4843 = !DILocation(line: 286, column: 27, scope: !4820)
!4844 = !DILocation(line: 288, column: 11, scope: !4820)
!4845 = !DILocation(line: 290, column: 6, scope: !4820)
!4846 = !DILocation(line: 291, column: 12, scope: !4820)
!4847 = !DILocation(line: 291, column: 19, scope: !4820)
!4848 = !DILocation(line: 291, column: 27, scope: !4820)
!4849 = !DILocation(line: 293, column: 11, scope: !4820)
!4850 = !DILocation(line: 298, column: 21, scope: !4820)
!4851 = !DILocation(line: 298, column: 28, scope: !4820)
!4852 = !DILocation(line: 298, column: 33, scope: !4820)
!4853 = !DILocation(line: 298, column: 8, scope: !4820)
!4854 = !DILocation(line: 298, column: 6, scope: !4820)
!4855 = !DILocation(line: 300, column: 6, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 300, column: 6)
!4857 = !DILocation(line: 300, column: 10, scope: !4856)
!4858 = !DILocation(line: 300, column: 6, scope: !4820)
!4859 = !DILocation(line: 301, column: 3, scope: !4856)
!4860 = !DILocation(line: 301, column: 3, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4862, file: !3, line: 301, column: 3)
!4862 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 301, column: 3)
!4863 = !DILocation(line: 301, column: 3, scope: !4862)
!4864 = !DILocation(line: 304, column: 9, scope: !4820)
!4865 = !DILocation(line: 304, column: 2, scope: !4820)
!4866 = distinct !DISubprogram(name: "si21_writereg", scope: !3, file: !3, line: 249, type: !4867, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!328, !4473, !323, !323}
!4869 = !DILocalVariable(name: "state", arg: 1, scope: !4866, file: !3, line: 249, type: !4473)
!4870 = !DILocation(line: 249, column: 47, scope: !4866)
!4871 = !DILocalVariable(name: "reg", arg: 2, scope: !4866, file: !3, line: 249, type: !323)
!4872 = !DILocation(line: 249, column: 57, scope: !4866)
!4873 = !DILocalVariable(name: "data", arg: 3, scope: !4866, file: !3, line: 249, type: !323)
!4874 = !DILocation(line: 249, column: 65, scope: !4866)
!4875 = !DILocalVariable(name: "ret", scope: !4866, file: !3, line: 251, type: !328)
!4876 = !DILocation(line: 251, column: 6, scope: !4866)
!4877 = !DILocalVariable(name: "buf", scope: !4866, file: !3, line: 252, type: !4878)
!4878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 16, elements: !1744)
!4879 = !DILocation(line: 252, column: 5, scope: !4866)
!4880 = !DILocation(line: 252, column: 13, scope: !4866)
!4881 = !DILocation(line: 252, column: 15, scope: !4866)
!4882 = !DILocation(line: 252, column: 20, scope: !4866)
!4883 = !DILocalVariable(name: "msg", scope: !4866, file: !3, line: 253, type: !4362)
!4884 = !DILocation(line: 253, column: 17, scope: !4866)
!4885 = !DILocation(line: 253, column: 23, scope: !4866)
!4886 = !DILocation(line: 254, column: 13, scope: !4866)
!4887 = !DILocation(line: 254, column: 20, scope: !4866)
!4888 = !DILocation(line: 254, column: 28, scope: !4866)
!4889 = !DILocation(line: 256, column: 12, scope: !4866)
!4890 = !DILocation(line: 260, column: 21, scope: !4866)
!4891 = !DILocation(line: 260, column: 28, scope: !4866)
!4892 = !DILocation(line: 260, column: 8, scope: !4866)
!4893 = !DILocation(line: 260, column: 6, scope: !4866)
!4894 = !DILocation(line: 262, column: 6, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4866, file: !3, line: 262, column: 6)
!4896 = !DILocation(line: 262, column: 10, scope: !4895)
!4897 = !DILocation(line: 262, column: 6, scope: !4866)
!4898 = !DILocation(line: 263, column: 3, scope: !4895)
!4899 = !DILocation(line: 263, column: 3, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 263, column: 3)
!4901 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 263, column: 3)
!4902 = !DILocation(line: 263, column: 3, scope: !4901)
!4903 = !DILocation(line: 266, column: 10, scope: !4866)
!4904 = !DILocation(line: 266, column: 14, scope: !4866)
!4905 = !DILocation(line: 266, column: 9, scope: !4866)
!4906 = !DILocation(line: 266, column: 2, scope: !4866)
!4907 = distinct !DISubprogram(name: "get_order", scope: !4908, file: !4908, line: 29, type: !4909, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!4908 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4909 = !DISubroutineType(types: !4910)
!4910 = !{!328, !597}
!4911 = !DILocalVariable(name: "x", arg: 1, scope: !4912, file: !4913, line: 366, type: !691)
!4912 = distinct !DISubprogram(name: "fls64", scope: !4913, file: !4913, line: 366, type: !4914, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!4913 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!328, !691}
!4916 = !DILocation(line: 366, column: 40, scope: !4912, inlinedAt: !4917)
!4917 = distinct !DILocation(line: 46, column: 9, scope: !4907)
!4918 = !DILocalVariable(name: "bitpos", scope: !4912, file: !4913, line: 368, type: !328)
!4919 = !DILocation(line: 368, column: 6, scope: !4912, inlinedAt: !4917)
!4920 = !DILocalVariable(name: "size", arg: 1, scope: !4907, file: !4908, line: 29, type: !597)
!4921 = !DILocation(line: 29, column: 63, scope: !4907)
!4922 = !DILocation(line: 31, column: 27, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4907, file: !4908, line: 31, column: 6)
!4924 = !DILocation(line: 31, column: 6, scope: !4923)
!4925 = !DILocation(line: 31, column: 6, scope: !4907)
!4926 = !DILocation(line: 32, column: 8, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4928, file: !4908, line: 32, column: 7)
!4928 = distinct !DILexicalBlock(scope: !4923, file: !4908, line: 31, column: 34)
!4929 = !DILocation(line: 32, column: 7, scope: !4928)
!4930 = !DILocation(line: 33, column: 4, scope: !4927)
!4931 = !DILocation(line: 35, column: 7, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4928, file: !4908, line: 35, column: 7)
!4933 = !DILocation(line: 35, column: 12, scope: !4932)
!4934 = !DILocation(line: 35, column: 7, scope: !4928)
!4935 = !DILocation(line: 36, column: 4, scope: !4932)
!4936 = !DILocation(line: 38, column: 10, scope: !4928)
!4937 = !DILocation(line: 38, column: 28, scope: !4928)
!4938 = !DILocation(line: 38, column: 41, scope: !4928)
!4939 = !DILocation(line: 38, column: 3, scope: !4928)
!4940 = !DILocation(line: 41, column: 6, scope: !4907)
!4941 = !DILocation(line: 42, column: 7, scope: !4907)
!4942 = !DILocation(line: 46, column: 15, scope: !4907)
!4943 = !DILocation(line: 374, column: 2, scope: !4912, inlinedAt: !4917)
!4944 = !DILocation(line: 376, column: 14, scope: !4912, inlinedAt: !4917)
!4945 = !{i32 270491}
!4946 = !DILocation(line: 377, column: 9, scope: !4912, inlinedAt: !4917)
!4947 = !DILocation(line: 377, column: 16, scope: !4912, inlinedAt: !4917)
!4948 = !DILocation(line: 46, column: 2, scope: !4907)
!4949 = !DILocation(line: 48, column: 1, scope: !4907)
!4950 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4951, file: !4951, line: 30, type: !4952, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!4951 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4952 = !DISubroutineType(types: !4953)
!4953 = !{!328, !690}
!4954 = !DILocation(line: 366, column: 40, scope: !4912, inlinedAt: !4955)
!4955 = distinct !DILocation(line: 32, column: 9, scope: !4950)
!4956 = !DILocation(line: 368, column: 6, scope: !4912, inlinedAt: !4955)
!4957 = !DILocalVariable(name: "n", arg: 1, scope: !4950, file: !4951, line: 30, type: !690)
!4958 = !DILocation(line: 30, column: 21, scope: !4950)
!4959 = !DILocation(line: 32, column: 15, scope: !4950)
!4960 = !DILocation(line: 374, column: 2, scope: !4912, inlinedAt: !4955)
!4961 = !DILocation(line: 376, column: 14, scope: !4912, inlinedAt: !4955)
!4962 = !DILocation(line: 377, column: 9, scope: !4912, inlinedAt: !4955)
!4963 = !DILocation(line: 377, column: 16, scope: !4912, inlinedAt: !4955)
!4964 = !DILocation(line: 32, column: 18, scope: !4950)
!4965 = !DILocation(line: 32, column: 2, scope: !4950)
!4966 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4967, file: !4967, line: 137, type: !4968, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!4967 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!322, !1194, !2302, !594, !320}
!4970 = !DILocalVariable(name: "s", arg: 1, scope: !4966, file: !4967, line: 137, type: !1194)
!4971 = !DILocation(line: 137, column: 54, scope: !4966)
!4972 = !DILocalVariable(name: "object", arg: 2, scope: !4966, file: !4967, line: 137, type: !2302)
!4973 = !DILocation(line: 137, column: 69, scope: !4966)
!4974 = !DILocalVariable(name: "size", arg: 3, scope: !4966, file: !4967, line: 138, type: !594)
!4975 = !DILocation(line: 138, column: 12, scope: !4966)
!4976 = !DILocalVariable(name: "flags", arg: 4, scope: !4966, file: !4967, line: 138, type: !320)
!4977 = !DILocation(line: 138, column: 24, scope: !4966)
!4978 = !DILocation(line: 140, column: 17, scope: !4966)
!4979 = !DILocation(line: 140, column: 2, scope: !4966)
!4980 = distinct !DISubprogram(name: "si21xx_release", scope: !3, file: !3, line: 855, type: !454, scopeLine: 856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!4981 = !DILocalVariable(name: "fe", arg: 1, scope: !4980, file: !3, line: 855, type: !456)
!4982 = !DILocation(line: 855, column: 49, scope: !4980)
!4983 = !DILocalVariable(name: "state", scope: !4980, file: !3, line: 857, type: !4473)
!4984 = !DILocation(line: 857, column: 23, scope: !4980)
!4985 = !DILocation(line: 857, column: 31, scope: !4980)
!4986 = !DILocation(line: 857, column: 35, scope: !4980)
!4987 = !DILocation(line: 859, column: 2, scope: !4980)
!4988 = !DILocation(line: 859, column: 2, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 859, column: 2)
!4990 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 859, column: 2)
!4991 = !DILocation(line: 859, column: 2, scope: !4990)
!4992 = !DILocation(line: 861, column: 8, scope: !4980)
!4993 = !DILocation(line: 861, column: 2, scope: !4980)
!4994 = !DILocation(line: 862, column: 1, scope: !4980)
!4995 = distinct !DISubprogram(name: "si21xx_init", scope: !3, file: !3, line: 476, type: !4148, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!4996 = !DILocalVariable(name: "fe", arg: 1, scope: !4995, file: !3, line: 476, type: !456)
!4997 = !DILocation(line: 476, column: 45, scope: !4995)
!4998 = !DILocalVariable(name: "state", scope: !4995, file: !3, line: 478, type: !4473)
!4999 = !DILocation(line: 478, column: 23, scope: !4995)
!5000 = !DILocation(line: 478, column: 31, scope: !4995)
!5001 = !DILocation(line: 478, column: 35, scope: !4995)
!5002 = !DILocalVariable(name: "i", scope: !4995, file: !3, line: 479, type: !328)
!5003 = !DILocation(line: 479, column: 6, scope: !4995)
!5004 = !DILocalVariable(name: "status", scope: !4995, file: !3, line: 480, type: !328)
!5005 = !DILocation(line: 480, column: 6, scope: !4995)
!5006 = !DILocalVariable(name: "reg1", scope: !4995, file: !3, line: 481, type: !323)
!5007 = !DILocation(line: 481, column: 5, scope: !4995)
!5008 = !DILocalVariable(name: "val", scope: !4995, file: !3, line: 482, type: !323)
!5009 = !DILocation(line: 482, column: 5, scope: !4995)
!5010 = !DILocalVariable(name: "reg2", scope: !4995, file: !3, line: 483, type: !4878)
!5011 = !DILocation(line: 483, column: 5, scope: !4995)
!5012 = !DILocation(line: 485, column: 2, scope: !4995)
!5013 = !DILocation(line: 485, column: 2, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 485, column: 2)
!5015 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 485, column: 2)
!5016 = !DILocation(line: 485, column: 2, scope: !5015)
!5017 = !DILocation(line: 487, column: 9, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 487, column: 2)
!5019 = !DILocation(line: 487, column: 7, scope: !5018)
!5020 = !DILocation(line: 488, column: 34, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 487, column: 24)
!5022 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 487, column: 2)
!5023 = !DILocation(line: 488, column: 10, scope: !5021)
!5024 = !DILocation(line: 488, column: 8, scope: !5021)
!5025 = !DILocation(line: 489, column: 33, scope: !5021)
!5026 = !DILocation(line: 489, column: 34, scope: !5021)
!5027 = !DILocation(line: 489, column: 9, scope: !5021)
!5028 = !DILocation(line: 489, column: 7, scope: !5021)
!5029 = !DILocation(line: 490, column: 7, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 490, column: 7)
!5031 = !DILocation(line: 490, column: 12, scope: !5030)
!5032 = !DILocation(line: 490, column: 20, scope: !5030)
!5033 = !DILocation(line: 490, column: 23, scope: !5030)
!5034 = !DILocation(line: 490, column: 27, scope: !5030)
!5035 = !DILocation(line: 490, column: 7, scope: !5021)
!5036 = !DILocation(line: 491, column: 4, scope: !5030)
!5037 = !DILocation(line: 492, column: 18, scope: !5021)
!5038 = !DILocation(line: 492, column: 25, scope: !5021)
!5039 = !DILocation(line: 492, column: 3, scope: !5021)
!5040 = !DILocation(line: 493, column: 2, scope: !5021)
!5041 = !DILocation(line: 487, column: 18, scope: !5022)
!5042 = !DILocation(line: 487, column: 2, scope: !5022)
!5043 = distinct !{!5043, !5044, !5045}
!5044 = !DILocation(line: 487, column: 2, scope: !5018)
!5045 = !DILocation(line: 493, column: 2, scope: !5018)
!5046 = !DILocation(line: 496, column: 7, scope: !4995)
!5047 = !DILocation(line: 497, column: 17, scope: !4995)
!5048 = !DILocation(line: 497, column: 2, scope: !4995)
!5049 = !DILocation(line: 515, column: 2, scope: !4995)
!5050 = !DILocation(line: 515, column: 10, scope: !4995)
!5051 = !DILocation(line: 521, column: 2, scope: !4995)
!5052 = !DILocation(line: 521, column: 10, scope: !4995)
!5053 = !DILocation(line: 526, column: 27, scope: !4995)
!5054 = !DILocation(line: 526, column: 49, scope: !4995)
!5055 = !DILocation(line: 526, column: 12, scope: !4995)
!5056 = !DILocation(line: 526, column: 9, scope: !4995)
!5057 = !DILocation(line: 527, column: 6, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 527, column: 6)
!5059 = !DILocation(line: 527, column: 13, scope: !5058)
!5060 = !DILocation(line: 527, column: 6, scope: !4995)
!5061 = !DILocation(line: 528, column: 3, scope: !5058)
!5062 = !DILocation(line: 528, column: 3, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 528, column: 3)
!5064 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 528, column: 3)
!5065 = !DILocation(line: 528, column: 3, scope: !5064)
!5066 = !DILocation(line: 530, column: 2, scope: !4995)
!5067 = distinct !DISubprogram(name: "si21xx_sleep", scope: !3, file: !3, line: 840, type: !4148, scopeLine: 841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!5068 = !DILocalVariable(name: "fe", arg: 1, scope: !5067, file: !3, line: 840, type: !456)
!5069 = !DILocation(line: 840, column: 46, scope: !5067)
!5070 = !DILocalVariable(name: "state", scope: !5067, file: !3, line: 842, type: !4473)
!5071 = !DILocation(line: 842, column: 23, scope: !5067)
!5072 = !DILocation(line: 842, column: 31, scope: !5067)
!5073 = !DILocation(line: 842, column: 35, scope: !5067)
!5074 = !DILocalVariable(name: "regdata", scope: !5067, file: !3, line: 843, type: !323)
!5075 = !DILocation(line: 843, column: 5, scope: !5067)
!5076 = !DILocation(line: 845, column: 2, scope: !5067)
!5077 = !DILocation(line: 845, column: 2, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 845, column: 2)
!5079 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 845, column: 2)
!5080 = !DILocation(line: 845, column: 2, scope: !5079)
!5081 = !DILocation(line: 847, column: 16, scope: !5067)
!5082 = !DILocation(line: 847, column: 2, scope: !5067)
!5083 = !DILocation(line: 848, column: 10, scope: !5067)
!5084 = !DILocation(line: 849, column: 17, scope: !5067)
!5085 = !DILocation(line: 849, column: 2, scope: !5067)
!5086 = !DILocation(line: 850, column: 2, scope: !5067)
!5087 = !DILocation(line: 850, column: 9, scope: !5067)
!5088 = !DILocation(line: 850, column: 21, scope: !5067)
!5089 = !DILocation(line: 852, column: 2, scope: !5067)
!5090 = distinct !DISubprogram(name: "si21_write", scope: !3, file: !3, line: 269, type: !4153, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!5091 = !DILocalVariable(name: "fe", arg: 1, scope: !5090, file: !3, line: 269, type: !456)
!5092 = !DILocation(line: 269, column: 44, scope: !5090)
!5093 = !DILocalVariable(name: "buf", arg: 2, scope: !5090, file: !3, line: 269, type: !4155)
!5094 = !DILocation(line: 269, column: 57, scope: !5090)
!5095 = !DILocalVariable(name: "len", arg: 3, scope: !5090, file: !3, line: 269, type: !328)
!5096 = !DILocation(line: 269, column: 68, scope: !5090)
!5097 = !DILocalVariable(name: "state", scope: !5090, file: !3, line: 271, type: !4473)
!5098 = !DILocation(line: 271, column: 23, scope: !5090)
!5099 = !DILocation(line: 271, column: 31, scope: !5090)
!5100 = !DILocation(line: 271, column: 35, scope: !5090)
!5101 = !DILocation(line: 273, column: 6, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5090, file: !3, line: 273, column: 6)
!5103 = !DILocation(line: 273, column: 10, scope: !5102)
!5104 = !DILocation(line: 273, column: 6, scope: !5090)
!5105 = !DILocation(line: 274, column: 3, scope: !5102)
!5106 = !DILocation(line: 276, column: 23, scope: !5090)
!5107 = !DILocation(line: 276, column: 30, scope: !5090)
!5108 = !DILocation(line: 276, column: 38, scope: !5090)
!5109 = !DILocation(line: 276, column: 9, scope: !5090)
!5110 = !DILocation(line: 276, column: 2, scope: !5090)
!5111 = !DILocation(line: 277, column: 1, scope: !5090)
!5112 = distinct !DISubprogram(name: "si21xx_set_frontend", scope: !3, file: !3, line: 691, type: !4148, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!5113 = !DILocalVariable(name: "fe", arg: 1, scope: !5112, file: !3, line: 691, type: !456)
!5114 = !DILocation(line: 691, column: 53, scope: !5112)
!5115 = !DILocalVariable(name: "state", scope: !5112, file: !3, line: 693, type: !4473)
!5116 = !DILocation(line: 693, column: 23, scope: !5112)
!5117 = !DILocation(line: 693, column: 31, scope: !5112)
!5118 = !DILocation(line: 693, column: 35, scope: !5112)
!5119 = !DILocalVariable(name: "c", scope: !5112, file: !3, line: 694, type: !4181)
!5120 = !DILocation(line: 694, column: 34, scope: !5112)
!5121 = !DILocation(line: 694, column: 39, scope: !5112)
!5122 = !DILocation(line: 694, column: 43, scope: !5112)
!5123 = !DILocalVariable(name: "coarse_tune_freq", scope: !5112, file: !3, line: 700, type: !327)
!5124 = !DILocation(line: 700, column: 16, scope: !5112)
!5125 = !DILocalVariable(name: "fine_tune_freq", scope: !5112, file: !3, line: 701, type: !328)
!5126 = !DILocation(line: 701, column: 6, scope: !5112)
!5127 = !DILocalVariable(name: "sample_rate", scope: !5112, file: !3, line: 702, type: !327)
!5128 = !DILocation(line: 702, column: 16, scope: !5112)
!5129 = !DILocalVariable(name: "inband_interferer_ind", scope: !5112, file: !3, line: 704, type: !755)
!5130 = !DILocation(line: 704, column: 7, scope: !5112)
!5131 = !DILocalVariable(name: "icoarse_tune_freq", scope: !5112, file: !3, line: 707, type: !328)
!5132 = !DILocation(line: 707, column: 6, scope: !5112)
!5133 = !DILocalVariable(name: "ifine_tune_freq", scope: !5112, file: !3, line: 708, type: !328)
!5134 = !DILocation(line: 708, column: 6, scope: !5112)
!5135 = !DILocalVariable(name: "band_high", scope: !5112, file: !3, line: 709, type: !7)
!5136 = !DILocation(line: 709, column: 15, scope: !5112)
!5137 = !DILocalVariable(name: "band_low", scope: !5112, file: !3, line: 710, type: !7)
!5138 = !DILocation(line: 710, column: 15, scope: !5112)
!5139 = !DILocalVariable(name: "x1", scope: !5112, file: !3, line: 711, type: !7)
!5140 = !DILocation(line: 711, column: 15, scope: !5112)
!5141 = !DILocalVariable(name: "x2", scope: !5112, file: !3, line: 712, type: !7)
!5142 = !DILocation(line: 712, column: 15, scope: !5112)
!5143 = !DILocalVariable(name: "i", scope: !5112, file: !3, line: 713, type: !328)
!5144 = !DILocation(line: 713, column: 6, scope: !5112)
!5145 = !DILocalVariable(name: "inband_interferer_div2", scope: !5112, file: !3, line: 714, type: !5146)
!5146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 80, elements: !5147)
!5147 = !{!5148}
!5148 = !DISubrange(count: 10)
!5149 = !DILocation(line: 714, column: 7, scope: !5112)
!5150 = !DILocalVariable(name: "inband_interferer_div4", scope: !5112, file: !3, line: 715, type: !5146)
!5151 = !DILocation(line: 715, column: 7, scope: !5112)
!5152 = !DILocalVariable(name: "status", scope: !5112, file: !3, line: 716, type: !328)
!5153 = !DILocation(line: 716, column: 6, scope: !5112)
!5154 = !DILocalVariable(name: "afs", scope: !5112, file: !3, line: 719, type: !5155)
!5155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 320, elements: !5147)
!5156 = !DILocation(line: 719, column: 6, scope: !5112)
!5157 = !DILocalVariable(name: "if_limit_high", scope: !5112, file: !3, line: 723, type: !328)
!5158 = !DILocation(line: 723, column: 6, scope: !5112)
!5159 = !DILocalVariable(name: "if_limit_low", scope: !5112, file: !3, line: 724, type: !328)
!5160 = !DILocation(line: 724, column: 6, scope: !5112)
!5161 = !DILocalVariable(name: "lnb_lo", scope: !5112, file: !3, line: 725, type: !328)
!5162 = !DILocation(line: 725, column: 6, scope: !5112)
!5163 = !DILocalVariable(name: "lnb_uncertanity", scope: !5112, file: !3, line: 726, type: !328)
!5164 = !DILocation(line: 726, column: 6, scope: !5112)
!5165 = !DILocalVariable(name: "rf_freq", scope: !5112, file: !3, line: 728, type: !328)
!5166 = !DILocation(line: 728, column: 6, scope: !5112)
!5167 = !DILocalVariable(name: "data_rate", scope: !5112, file: !3, line: 729, type: !328)
!5168 = !DILocation(line: 729, column: 6, scope: !5112)
!5169 = !DILocalVariable(name: "regs", scope: !5112, file: !3, line: 730, type: !5170)
!5170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 32, elements: !1334)
!5171 = !DILocation(line: 730, column: 16, scope: !5112)
!5172 = !DILocation(line: 732, column: 2, scope: !5112)
!5173 = !DILocation(line: 732, column: 2, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 732, column: 2)
!5175 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 732, column: 2)
!5176 = !DILocation(line: 732, column: 2, scope: !5175)
!5177 = !DILocation(line: 734, column: 6, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 734, column: 6)
!5179 = !DILocation(line: 734, column: 9, scope: !5178)
!5180 = !DILocation(line: 734, column: 25, scope: !5178)
!5181 = !DILocation(line: 734, column: 6, scope: !5112)
!5182 = !DILocation(line: 735, column: 4, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5178, file: !3, line: 734, column: 38)
!5184 = !DILocation(line: 735, column: 4, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 735, column: 4)
!5186 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 735, column: 4)
!5187 = !DILocation(line: 735, column: 4, scope: !5186)
!5188 = !DILocation(line: 737, column: 4, scope: !5183)
!5189 = !DILocation(line: 740, column: 9, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 740, column: 2)
!5191 = !DILocation(line: 740, column: 7, scope: !5190)
!5192 = !DILocation(line: 740, column: 14, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 740, column: 2)
!5194 = !DILocation(line: 740, column: 16, scope: !5193)
!5195 = !DILocation(line: 740, column: 2, scope: !5190)
!5196 = !DILocation(line: 741, column: 54, scope: !5193)
!5197 = !DILocation(line: 741, column: 31, scope: !5193)
!5198 = !DILocation(line: 741, column: 57, scope: !5193)
!5199 = !DILocation(line: 741, column: 26, scope: !5193)
!5200 = !DILocation(line: 741, column: 3, scope: !5193)
!5201 = !DILocation(line: 741, column: 29, scope: !5193)
!5202 = !DILocation(line: 740, column: 38, scope: !5193)
!5203 = !DILocation(line: 740, column: 2, scope: !5193)
!5204 = distinct !{!5204, !5195, !5205}
!5205 = !DILocation(line: 741, column: 59, scope: !5190)
!5206 = !DILocation(line: 743, column: 16, scope: !5112)
!5207 = !DILocation(line: 744, column: 15, scope: !5112)
!5208 = !DILocation(line: 746, column: 9, scope: !5112)
!5209 = !DILocation(line: 747, column: 18, scope: !5112)
!5210 = !DILocation(line: 749, column: 17, scope: !5112)
!5211 = !DILocation(line: 749, column: 20, scope: !5112)
!5212 = !DILocation(line: 749, column: 15, scope: !5112)
!5213 = !DILocation(line: 749, column: 10, scope: !5112)
!5214 = !DILocation(line: 750, column: 14, scope: !5112)
!5215 = !DILocation(line: 750, column: 17, scope: !5112)
!5216 = !DILocation(line: 750, column: 29, scope: !5112)
!5217 = !DILocation(line: 750, column: 12, scope: !5112)
!5218 = !DILocation(line: 752, column: 9, scope: !5112)
!5219 = !DILocation(line: 754, column: 14, scope: !5112)
!5220 = !DILocation(line: 754, column: 24, scope: !5112)
!5221 = !DILocation(line: 754, column: 22, scope: !5112)
!5222 = !DILocation(line: 754, column: 36, scope: !5112)
!5223 = !DILocation(line: 754, column: 52, scope: !5112)
!5224 = !DILocation(line: 755, column: 9, scope: !5112)
!5225 = !DILocation(line: 755, column: 19, scope: !5112)
!5226 = !DILocation(line: 755, column: 6, scope: !5112)
!5227 = !DILocation(line: 755, column: 27, scope: !5112)
!5228 = !DILocation(line: 754, column: 32, scope: !5112)
!5229 = !DILocation(line: 754, column: 11, scope: !5112)
!5230 = !DILocation(line: 757, column: 15, scope: !5112)
!5231 = !DILocation(line: 757, column: 25, scope: !5112)
!5232 = !DILocation(line: 757, column: 23, scope: !5112)
!5233 = !DILocation(line: 757, column: 37, scope: !5112)
!5234 = !DILocation(line: 757, column: 53, scope: !5112)
!5235 = !DILocation(line: 758, column: 9, scope: !5112)
!5236 = !DILocation(line: 758, column: 19, scope: !5112)
!5237 = !DILocation(line: 758, column: 6, scope: !5112)
!5238 = !DILocation(line: 758, column: 27, scope: !5112)
!5239 = !DILocation(line: 757, column: 33, scope: !5112)
!5240 = !DILocation(line: 757, column: 12, scope: !5112)
!5241 = !DILocation(line: 762, column: 8, scope: !5112)
!5242 = !DILocation(line: 762, column: 18, scope: !5112)
!5243 = !DILocation(line: 762, column: 16, scope: !5112)
!5244 = !DILocation(line: 763, column: 7, scope: !5112)
!5245 = !DILocation(line: 763, column: 22, scope: !5112)
!5246 = !DILocation(line: 763, column: 20, scope: !5112)
!5247 = !DILocation(line: 763, column: 37, scope: !5112)
!5248 = !DILocation(line: 762, column: 26, scope: !5112)
!5249 = !DILocation(line: 764, column: 9, scope: !5112)
!5250 = !DILocation(line: 761, column: 29, scope: !5112)
!5251 = !DILocation(line: 761, column: 20, scope: !5112)
!5252 = !DILocation(line: 766, column: 21, scope: !5112)
!5253 = !DILocation(line: 766, column: 31, scope: !5112)
!5254 = !DILocation(line: 766, column: 29, scope: !5112)
!5255 = !DILocation(line: 766, column: 41, scope: !5112)
!5256 = !DILocation(line: 766, column: 39, scope: !5112)
!5257 = !DILocation(line: 766, column: 18, scope: !5112)
!5258 = !DILocation(line: 768, column: 9, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 768, column: 2)
!5260 = !DILocation(line: 768, column: 7, scope: !5259)
!5261 = !DILocation(line: 768, column: 14, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5259, file: !3, line: 768, column: 2)
!5263 = !DILocation(line: 768, column: 16, scope: !5262)
!5264 = !DILocation(line: 768, column: 2, scope: !5259)
!5265 = !DILocation(line: 769, column: 10, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 768, column: 43)
!5267 = !DILocation(line: 769, column: 20, scope: !5266)
!5268 = !DILocation(line: 769, column: 18, scope: !5266)
!5269 = !DILocation(line: 769, column: 35, scope: !5266)
!5270 = !DILocation(line: 769, column: 31, scope: !5266)
!5271 = !DILocation(line: 769, column: 38, scope: !5266)
!5272 = !DILocation(line: 769, column: 28, scope: !5266)
!5273 = !DILocation(line: 770, column: 11, scope: !5266)
!5274 = !DILocation(line: 770, column: 7, scope: !5266)
!5275 = !DILocation(line: 770, column: 14, scope: !5266)
!5276 = !DILocation(line: 769, column: 47, scope: !5266)
!5277 = !DILocation(line: 770, column: 28, scope: !5266)
!5278 = !DILocation(line: 770, column: 24, scope: !5266)
!5279 = !DILocation(line: 770, column: 31, scope: !5266)
!5280 = !DILocation(line: 770, column: 22, scope: !5266)
!5281 = !DILocation(line: 769, column: 6, scope: !5266)
!5282 = !DILocation(line: 772, column: 10, scope: !5266)
!5283 = !DILocation(line: 772, column: 20, scope: !5266)
!5284 = !DILocation(line: 772, column: 18, scope: !5266)
!5285 = !DILocation(line: 772, column: 35, scope: !5266)
!5286 = !DILocation(line: 772, column: 31, scope: !5266)
!5287 = !DILocation(line: 772, column: 38, scope: !5266)
!5288 = !DILocation(line: 772, column: 28, scope: !5266)
!5289 = !DILocation(line: 773, column: 13, scope: !5266)
!5290 = !DILocation(line: 773, column: 9, scope: !5266)
!5291 = !DILocation(line: 773, column: 16, scope: !5266)
!5292 = !DILocation(line: 772, column: 47, scope: !5266)
!5293 = !DILocation(line: 772, column: 6, scope: !5266)
!5294 = !DILocation(line: 775, column: 9, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5266, file: !3, line: 775, column: 7)
!5296 = !DILocation(line: 775, column: 20, scope: !5295)
!5297 = !DILocation(line: 775, column: 18, scope: !5295)
!5298 = !DILocation(line: 775, column: 24, scope: !5295)
!5299 = !DILocation(line: 775, column: 28, scope: !5295)
!5300 = !DILocation(line: 775, column: 33, scope: !5295)
!5301 = !DILocation(line: 775, column: 31, scope: !5295)
!5302 = !DILocation(line: 775, column: 45, scope: !5295)
!5303 = !DILocation(line: 776, column: 8, scope: !5295)
!5304 = !DILocation(line: 776, column: 19, scope: !5295)
!5305 = !DILocation(line: 776, column: 17, scope: !5295)
!5306 = !DILocation(line: 776, column: 23, scope: !5295)
!5307 = !DILocation(line: 776, column: 27, scope: !5295)
!5308 = !DILocation(line: 776, column: 32, scope: !5295)
!5309 = !DILocation(line: 776, column: 30, scope: !5295)
!5310 = !DILocation(line: 775, column: 7, scope: !5266)
!5311 = !DILocation(line: 777, column: 29, scope: !5295)
!5312 = !DILocation(line: 777, column: 6, scope: !5295)
!5313 = !DILocation(line: 777, column: 32, scope: !5295)
!5314 = !DILocation(line: 779, column: 2, scope: !5266)
!5315 = !DILocation(line: 768, column: 38, scope: !5262)
!5316 = !DILocation(line: 768, column: 2, scope: !5262)
!5317 = distinct !{!5317, !5264, !5318}
!5318 = !DILocation(line: 779, column: 2, scope: !5259)
!5319 = !DILocation(line: 781, column: 9, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 781, column: 2)
!5321 = !DILocation(line: 781, column: 7, scope: !5320)
!5322 = !DILocation(line: 781, column: 14, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5320, file: !3, line: 781, column: 2)
!5324 = !DILocation(line: 781, column: 16, scope: !5323)
!5325 = !DILocation(line: 781, column: 2, scope: !5320)
!5326 = !DILocation(line: 782, column: 10, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5323, file: !3, line: 781, column: 43)
!5328 = !DILocation(line: 782, column: 20, scope: !5327)
!5329 = !DILocation(line: 782, column: 18, scope: !5327)
!5330 = !DILocation(line: 782, column: 35, scope: !5327)
!5331 = !DILocation(line: 782, column: 31, scope: !5327)
!5332 = !DILocation(line: 782, column: 38, scope: !5327)
!5333 = !DILocation(line: 782, column: 28, scope: !5327)
!5334 = !DILocation(line: 783, column: 11, scope: !5327)
!5335 = !DILocation(line: 783, column: 7, scope: !5327)
!5336 = !DILocation(line: 783, column: 14, scope: !5327)
!5337 = !DILocation(line: 782, column: 47, scope: !5327)
!5338 = !DILocation(line: 783, column: 28, scope: !5327)
!5339 = !DILocation(line: 783, column: 24, scope: !5327)
!5340 = !DILocation(line: 783, column: 31, scope: !5327)
!5341 = !DILocation(line: 783, column: 22, scope: !5327)
!5342 = !DILocation(line: 782, column: 6, scope: !5327)
!5343 = !DILocation(line: 785, column: 10, scope: !5327)
!5344 = !DILocation(line: 785, column: 20, scope: !5327)
!5345 = !DILocation(line: 785, column: 18, scope: !5327)
!5346 = !DILocation(line: 785, column: 35, scope: !5327)
!5347 = !DILocation(line: 785, column: 31, scope: !5327)
!5348 = !DILocation(line: 785, column: 38, scope: !5327)
!5349 = !DILocation(line: 785, column: 28, scope: !5327)
!5350 = !DILocation(line: 786, column: 11, scope: !5327)
!5351 = !DILocation(line: 786, column: 7, scope: !5327)
!5352 = !DILocation(line: 786, column: 14, scope: !5327)
!5353 = !DILocation(line: 785, column: 47, scope: !5327)
!5354 = !DILocation(line: 785, column: 6, scope: !5327)
!5355 = !DILocation(line: 788, column: 9, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 788, column: 7)
!5357 = !DILocation(line: 788, column: 20, scope: !5356)
!5358 = !DILocation(line: 788, column: 18, scope: !5356)
!5359 = !DILocation(line: 788, column: 24, scope: !5356)
!5360 = !DILocation(line: 788, column: 28, scope: !5356)
!5361 = !DILocation(line: 788, column: 33, scope: !5356)
!5362 = !DILocation(line: 788, column: 31, scope: !5356)
!5363 = !DILocation(line: 788, column: 45, scope: !5356)
!5364 = !DILocation(line: 789, column: 8, scope: !5356)
!5365 = !DILocation(line: 789, column: 19, scope: !5356)
!5366 = !DILocation(line: 789, column: 17, scope: !5356)
!5367 = !DILocation(line: 789, column: 23, scope: !5356)
!5368 = !DILocation(line: 789, column: 27, scope: !5356)
!5369 = !DILocation(line: 789, column: 32, scope: !5356)
!5370 = !DILocation(line: 789, column: 30, scope: !5356)
!5371 = !DILocation(line: 788, column: 7, scope: !5327)
!5372 = !DILocation(line: 790, column: 29, scope: !5356)
!5373 = !DILocation(line: 790, column: 6, scope: !5356)
!5374 = !DILocation(line: 790, column: 32, scope: !5356)
!5375 = !DILocation(line: 791, column: 2, scope: !5327)
!5376 = !DILocation(line: 781, column: 38, scope: !5323)
!5377 = !DILocation(line: 781, column: 2, scope: !5323)
!5378 = distinct !{!5378, !5325, !5379}
!5379 = !DILocation(line: 791, column: 2, scope: !5320)
!5380 = !DILocation(line: 793, column: 24, scope: !5112)
!5381 = !DILocation(line: 794, column: 9, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 794, column: 2)
!5383 = !DILocation(line: 794, column: 7, scope: !5382)
!5384 = !DILocation(line: 794, column: 14, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5382, file: !3, line: 794, column: 2)
!5386 = !DILocation(line: 794, column: 16, scope: !5385)
!5387 = !DILocation(line: 794, column: 2, scope: !5382)
!5388 = !DILocation(line: 795, column: 30, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 795, column: 7)
!5390 = distinct !DILexicalBlock(scope: !5385, file: !3, line: 794, column: 43)
!5391 = !DILocation(line: 795, column: 7, scope: !5389)
!5392 = !DILocation(line: 795, column: 33, scope: !5389)
!5393 = !DILocation(line: 795, column: 59, scope: !5389)
!5394 = !DILocation(line: 795, column: 36, scope: !5389)
!5395 = !DILocation(line: 795, column: 7, scope: !5390)
!5396 = !DILocation(line: 796, column: 26, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 795, column: 63)
!5398 = !DILocation(line: 797, column: 4, scope: !5397)
!5399 = !DILocation(line: 799, column: 2, scope: !5390)
!5400 = !DILocation(line: 794, column: 38, scope: !5385)
!5401 = !DILocation(line: 794, column: 2, scope: !5385)
!5402 = distinct !{!5402, !5387, !5403}
!5403 = !DILocation(line: 799, column: 2, scope: !5382)
!5404 = !DILocation(line: 801, column: 6, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 801, column: 6)
!5406 = !DILocation(line: 801, column: 6, scope: !5112)
!5407 = !DILocation(line: 802, column: 10, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 802, column: 3)
!5409 = distinct !DILexicalBlock(scope: !5405, file: !3, line: 801, column: 29)
!5410 = !DILocation(line: 802, column: 8, scope: !5408)
!5411 = !DILocation(line: 802, column: 15, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5408, file: !3, line: 802, column: 3)
!5413 = !DILocation(line: 802, column: 17, scope: !5412)
!5414 = !DILocation(line: 802, column: 3, scope: !5408)
!5415 = !DILocation(line: 803, column: 32, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5417, file: !3, line: 803, column: 8)
!5417 = distinct !DILexicalBlock(scope: !5412, file: !3, line: 802, column: 44)
!5418 = !DILocation(line: 803, column: 9, scope: !5416)
!5419 = !DILocation(line: 803, column: 8, scope: !5417)
!5420 = !DILocation(line: 804, column: 28, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 803, column: 36)
!5422 = !DILocation(line: 804, column: 24, scope: !5421)
!5423 = !DILocation(line: 804, column: 19, scope: !5421)
!5424 = !DILocation(line: 804, column: 17, scope: !5421)
!5425 = !DILocation(line: 805, column: 5, scope: !5421)
!5426 = !DILocation(line: 807, column: 3, scope: !5417)
!5427 = !DILocation(line: 802, column: 39, scope: !5412)
!5428 = !DILocation(line: 802, column: 3, scope: !5412)
!5429 = distinct !{!5429, !5414, !5430}
!5430 = !DILocation(line: 807, column: 3, scope: !5408)
!5431 = !DILocation(line: 808, column: 2, scope: !5409)
!5432 = !DILocation(line: 809, column: 10, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 809, column: 3)
!5434 = distinct !DILexicalBlock(scope: !5405, file: !3, line: 808, column: 9)
!5435 = !DILocation(line: 809, column: 8, scope: !5433)
!5436 = !DILocation(line: 809, column: 15, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 809, column: 3)
!5438 = !DILocation(line: 809, column: 17, scope: !5437)
!5439 = !DILocation(line: 809, column: 3, scope: !5433)
!5440 = !DILocation(line: 810, column: 32, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5442, file: !3, line: 810, column: 8)
!5442 = distinct !DILexicalBlock(scope: !5437, file: !3, line: 809, column: 44)
!5443 = !DILocation(line: 810, column: 9, scope: !5441)
!5444 = !DILocation(line: 810, column: 35, scope: !5441)
!5445 = !DILocation(line: 811, column: 33, scope: !5441)
!5446 = !DILocation(line: 811, column: 10, scope: !5441)
!5447 = !DILocation(line: 810, column: 8, scope: !5442)
!5448 = !DILocation(line: 812, column: 28, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 811, column: 38)
!5450 = !DILocation(line: 812, column: 24, scope: !5449)
!5451 = !DILocation(line: 812, column: 19, scope: !5449)
!5452 = !DILocation(line: 812, column: 17, scope: !5449)
!5453 = !DILocation(line: 813, column: 5, scope: !5449)
!5454 = !DILocation(line: 815, column: 3, scope: !5442)
!5455 = !DILocation(line: 809, column: 39, scope: !5437)
!5456 = !DILocation(line: 809, column: 3, scope: !5437)
!5457 = distinct !{!5457, !5439, !5458}
!5458 = !DILocation(line: 815, column: 3, scope: !5433)
!5459 = !DILocation(line: 819, column: 6, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 819, column: 6)
!5461 = !DILocation(line: 819, column: 18, scope: !5460)
!5462 = !DILocation(line: 819, column: 24, scope: !5460)
!5463 = !DILocation(line: 819, column: 27, scope: !5460)
!5464 = !DILocation(line: 819, column: 39, scope: !5460)
!5465 = !DILocation(line: 819, column: 6, scope: !5112)
!5466 = !DILocation(line: 820, column: 15, scope: !5460)
!5467 = !DILocation(line: 820, column: 3, scope: !5460)
!5468 = !DILocation(line: 822, column: 31, scope: !5112)
!5469 = !DILocation(line: 822, column: 47, scope: !5112)
!5470 = !DILocation(line: 822, column: 28, scope: !5112)
!5471 = !DILocation(line: 823, column: 8, scope: !5112)
!5472 = !DILocation(line: 823, column: 7, scope: !5112)
!5473 = !DILocation(line: 823, column: 21, scope: !5112)
!5474 = !DILocation(line: 822, column: 54, scope: !5112)
!5475 = !DILocation(line: 822, column: 17, scope: !5112)
!5476 = !DILocation(line: 825, column: 26, scope: !5112)
!5477 = !DILocation(line: 825, column: 44, scope: !5112)
!5478 = !DILocation(line: 825, column: 21, scope: !5112)
!5479 = !DILocation(line: 825, column: 19, scope: !5112)
!5480 = !DILocation(line: 827, column: 12, scope: !5112)
!5481 = !DILocation(line: 827, column: 2, scope: !5112)
!5482 = !DILocation(line: 827, column: 10, scope: !5112)
!5483 = !DILocation(line: 828, column: 12, scope: !5112)
!5484 = !DILocation(line: 828, column: 2, scope: !5112)
!5485 = !DILocation(line: 828, column: 10, scope: !5112)
!5486 = !DILocation(line: 829, column: 12, scope: !5112)
!5487 = !DILocation(line: 829, column: 27, scope: !5112)
!5488 = !DILocation(line: 829, column: 2, scope: !5112)
!5489 = !DILocation(line: 829, column: 10, scope: !5112)
!5490 = !DILocation(line: 830, column: 12, scope: !5112)
!5491 = !DILocation(line: 830, column: 27, scope: !5112)
!5492 = !DILocation(line: 830, column: 32, scope: !5112)
!5493 = !DILocation(line: 830, column: 2, scope: !5112)
!5494 = !DILocation(line: 830, column: 10, scope: !5112)
!5495 = !DILocation(line: 832, column: 27, scope: !5112)
!5496 = !DILocation(line: 832, column: 52, scope: !5112)
!5497 = !DILocation(line: 832, column: 12, scope: !5112)
!5498 = !DILocation(line: 832, column: 9, scope: !5112)
!5499 = !DILocation(line: 834, column: 14, scope: !5112)
!5500 = !DILocation(line: 834, column: 2, scope: !5112)
!5501 = !DILocation(line: 834, column: 9, scope: !5112)
!5502 = !DILocation(line: 834, column: 12, scope: !5112)
!5503 = !DILocation(line: 835, column: 20, scope: !5112)
!5504 = !DILocation(line: 835, column: 24, scope: !5112)
!5505 = !DILocation(line: 835, column: 27, scope: !5112)
!5506 = !DILocation(line: 835, column: 40, scope: !5112)
!5507 = !DILocation(line: 835, column: 43, scope: !5112)
!5508 = !DILocation(line: 835, column: 2, scope: !5112)
!5509 = !DILocation(line: 837, column: 2, scope: !5112)
!5510 = !DILocation(line: 838, column: 1, scope: !5112)
!5511 = distinct !DISubprogram(name: "si21_read_status", scope: !3, file: !3, line: 534, type: !4184, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!5512 = !DILocalVariable(name: "fe", arg: 1, scope: !5511, file: !3, line: 534, type: !456)
!5513 = !DILocation(line: 534, column: 50, scope: !5511)
!5514 = !DILocalVariable(name: "status", arg: 2, scope: !5511, file: !3, line: 534, type: !4161)
!5515 = !DILocation(line: 534, column: 70, scope: !5511)
!5516 = !DILocalVariable(name: "state", scope: !5511, file: !3, line: 536, type: !4473)
!5517 = !DILocation(line: 536, column: 23, scope: !5511)
!5518 = !DILocation(line: 536, column: 31, scope: !5511)
!5519 = !DILocation(line: 536, column: 35, scope: !5511)
!5520 = !DILocalVariable(name: "regs_read", scope: !5511, file: !3, line: 537, type: !4878)
!5521 = !DILocation(line: 537, column: 5, scope: !5511)
!5522 = !DILocalVariable(name: "reg_read", scope: !5511, file: !3, line: 538, type: !323)
!5523 = !DILocation(line: 538, column: 5, scope: !5511)
!5524 = !DILocalVariable(name: "i", scope: !5511, file: !3, line: 539, type: !323)
!5525 = !DILocation(line: 539, column: 5, scope: !5511)
!5526 = !DILocalVariable(name: "lock", scope: !5511, file: !3, line: 540, type: !323)
!5527 = !DILocation(line: 540, column: 5, scope: !5511)
!5528 = !DILocalVariable(name: "signal", scope: !5511, file: !3, line: 541, type: !323)
!5529 = !DILocation(line: 541, column: 5, scope: !5511)
!5530 = !DILocation(line: 541, column: 27, scope: !5511)
!5531 = !DILocation(line: 541, column: 14, scope: !5511)
!5532 = !DILocation(line: 543, column: 16, scope: !5511)
!5533 = !DILocation(line: 543, column: 42, scope: !5511)
!5534 = !DILocation(line: 543, column: 2, scope: !5511)
!5535 = !DILocation(line: 544, column: 11, scope: !5511)
!5536 = !DILocation(line: 546, column: 9, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 546, column: 2)
!5538 = !DILocation(line: 546, column: 7, scope: !5537)
!5539 = !DILocation(line: 546, column: 14, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5537, file: !3, line: 546, column: 2)
!5541 = !DILocation(line: 546, column: 16, scope: !5540)
!5542 = !DILocation(line: 546, column: 2, scope: !5537)
!5543 = !DILocation(line: 547, column: 17, scope: !5540)
!5544 = !DILocation(line: 547, column: 33, scope: !5540)
!5545 = !DILocation(line: 547, column: 30, scope: !5540)
!5546 = !DILocation(line: 547, column: 36, scope: !5540)
!5547 = !DILocation(line: 547, column: 52, scope: !5540)
!5548 = !DILocation(line: 547, column: 50, scope: !5540)
!5549 = !DILocation(line: 547, column: 44, scope: !5540)
!5550 = !DILocation(line: 547, column: 12, scope: !5540)
!5551 = !DILocation(line: 547, column: 3, scope: !5540)
!5552 = !DILocation(line: 546, column: 21, scope: !5540)
!5553 = !DILocation(line: 546, column: 2, scope: !5540)
!5554 = distinct !{!5554, !5542, !5555}
!5555 = !DILocation(line: 547, column: 53, scope: !5537)
!5556 = !DILocation(line: 549, column: 11, scope: !5511)
!5557 = !DILocation(line: 549, column: 20, scope: !5511)
!5558 = !DILocation(line: 549, column: 31, scope: !5511)
!5559 = !DILocation(line: 549, column: 44, scope: !5511)
!5560 = !DILocation(line: 549, column: 28, scope: !5511)
!5561 = !DILocation(line: 549, column: 9, scope: !5511)
!5562 = !DILocation(line: 549, column: 7, scope: !5511)
!5563 = !DILocation(line: 551, column: 2, scope: !5511)
!5564 = !DILocation(line: 551, column: 2, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 551, column: 2)
!5566 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 551, column: 2)
!5567 = !DILocation(line: 551, column: 2, scope: !5566)
!5568 = !DILocation(line: 552, column: 3, scope: !5511)
!5569 = !DILocation(line: 552, column: 10, scope: !5511)
!5570 = !DILocation(line: 554, column: 6, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 554, column: 6)
!5572 = !DILocation(line: 554, column: 13, scope: !5571)
!5573 = !DILocation(line: 554, column: 6, scope: !5511)
!5574 = !DILocation(line: 555, column: 4, scope: !5571)
!5575 = !DILocation(line: 555, column: 11, scope: !5571)
!5576 = !DILocation(line: 555, column: 3, scope: !5571)
!5577 = !DILocation(line: 557, column: 6, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 557, column: 6)
!5579 = !DILocation(line: 557, column: 11, scope: !5578)
!5580 = !DILocation(line: 557, column: 6, scope: !5511)
!5581 = !DILocation(line: 558, column: 4, scope: !5578)
!5582 = !DILocation(line: 558, column: 11, scope: !5578)
!5583 = !DILocation(line: 558, column: 3, scope: !5578)
!5584 = !DILocation(line: 560, column: 6, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 560, column: 6)
!5586 = !DILocation(line: 560, column: 11, scope: !5585)
!5587 = !DILocation(line: 560, column: 6, scope: !5511)
!5588 = !DILocation(line: 561, column: 4, scope: !5585)
!5589 = !DILocation(line: 561, column: 11, scope: !5585)
!5590 = !DILocation(line: 561, column: 3, scope: !5585)
!5591 = !DILocation(line: 563, column: 6, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 563, column: 6)
!5593 = !DILocation(line: 563, column: 11, scope: !5592)
!5594 = !DILocation(line: 563, column: 6, scope: !5511)
!5595 = !DILocation(line: 564, column: 4, scope: !5592)
!5596 = !DILocation(line: 564, column: 11, scope: !5592)
!5597 = !DILocation(line: 564, column: 3, scope: !5592)
!5598 = !DILocation(line: 566, column: 7, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 566, column: 6)
!5600 = !DILocation(line: 566, column: 12, scope: !5599)
!5601 = !DILocation(line: 566, column: 20, scope: !5599)
!5602 = !DILocation(line: 566, column: 6, scope: !5511)
!5603 = !DILocation(line: 567, column: 4, scope: !5599)
!5604 = !DILocation(line: 567, column: 11, scope: !5599)
!5605 = !DILocation(line: 567, column: 3, scope: !5599)
!5606 = !DILocation(line: 569, column: 2, scope: !5511)
!5607 = distinct !DISubprogram(name: "si21_read_ber", scope: !3, file: !3, line: 592, type: !4188, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!5608 = !DILocalVariable(name: "fe", arg: 1, scope: !5607, file: !3, line: 592, type: !456)
!5609 = !DILocation(line: 592, column: 47, scope: !5607)
!5610 = !DILocalVariable(name: "ber", arg: 2, scope: !5607, file: !3, line: 592, type: !1585)
!5611 = !DILocation(line: 592, column: 56, scope: !5607)
!5612 = !DILocalVariable(name: "state", scope: !5607, file: !3, line: 594, type: !4473)
!5613 = !DILocation(line: 594, column: 23, scope: !5607)
!5614 = !DILocation(line: 594, column: 31, scope: !5607)
!5615 = !DILocation(line: 594, column: 35, scope: !5607)
!5616 = !DILocation(line: 596, column: 2, scope: !5607)
!5617 = !DILocation(line: 596, column: 2, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 596, column: 2)
!5619 = distinct !DILexicalBlock(scope: !5607, file: !3, line: 596, column: 2)
!5620 = !DILocation(line: 596, column: 2, scope: !5619)
!5621 = !DILocation(line: 598, column: 6, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5607, file: !3, line: 598, column: 6)
!5623 = !DILocation(line: 598, column: 13, scope: !5622)
!5624 = !DILocation(line: 598, column: 21, scope: !5622)
!5625 = !DILocation(line: 598, column: 6, scope: !5607)
!5626 = !DILocation(line: 599, column: 3, scope: !5622)
!5627 = !DILocation(line: 601, column: 23, scope: !5607)
!5628 = !DILocation(line: 601, column: 10, scope: !5607)
!5629 = !DILocation(line: 601, column: 36, scope: !5607)
!5630 = !DILocation(line: 602, column: 18, scope: !5607)
!5631 = !DILocation(line: 602, column: 5, scope: !5607)
!5632 = !DILocation(line: 601, column: 42, scope: !5607)
!5633 = !DILocation(line: 601, column: 3, scope: !5607)
!5634 = !DILocation(line: 601, column: 7, scope: !5607)
!5635 = !DILocation(line: 604, column: 2, scope: !5607)
!5636 = !DILocation(line: 605, column: 1, scope: !5607)
!5637 = distinct !DISubprogram(name: "si21_read_signal_strength", scope: !3, file: !3, line: 572, type: !4192, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!5638 = !DILocalVariable(name: "fe", arg: 1, scope: !5637, file: !3, line: 572, type: !456)
!5639 = !DILocation(line: 572, column: 59, scope: !5637)
!5640 = !DILocalVariable(name: "strength", arg: 2, scope: !5637, file: !3, line: 572, type: !4194)
!5641 = !DILocation(line: 572, column: 68, scope: !5637)
!5642 = !DILocalVariable(name: "state", scope: !5637, file: !3, line: 574, type: !4473)
!5643 = !DILocation(line: 574, column: 23, scope: !5637)
!5644 = !DILocation(line: 574, column: 31, scope: !5637)
!5645 = !DILocation(line: 574, column: 35, scope: !5637)
!5646 = !DILocalVariable(name: "signal", scope: !5637, file: !3, line: 579, type: !366)
!5647 = !DILocation(line: 579, column: 6, scope: !5637)
!5648 = !DILocation(line: 579, column: 33, scope: !5637)
!5649 = !DILocation(line: 579, column: 20, scope: !5637)
!5650 = !DILocation(line: 579, column: 18, scope: !5637)
!5651 = !DILocation(line: 580, column: 19, scope: !5637)
!5652 = !DILocation(line: 580, column: 6, scope: !5637)
!5653 = !DILocation(line: 579, column: 46, scope: !5637)
!5654 = !DILocation(line: 579, column: 15, scope: !5637)
!5655 = !DILocation(line: 582, column: 2, scope: !5637)
!5656 = !DILocation(line: 582, column: 2, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5658, file: !3, line: 582, column: 2)
!5658 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 582, column: 2)
!5659 = !DILocation(line: 582, column: 2, scope: !5658)
!5660 = !DILocation(line: 586, column: 10, scope: !5637)
!5661 = !DILocation(line: 587, column: 14, scope: !5637)
!5662 = !DILocation(line: 587, column: 3, scope: !5637)
!5663 = !DILocation(line: 587, column: 12, scope: !5637)
!5664 = !DILocation(line: 589, column: 2, scope: !5637)
!5665 = distinct !DISubprogram(name: "si21_read_snr", scope: !3, file: !3, line: 607, type: !4192, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!5666 = !DILocalVariable(name: "fe", arg: 1, scope: !5665, file: !3, line: 607, type: !456)
!5667 = !DILocation(line: 607, column: 47, scope: !5665)
!5668 = !DILocalVariable(name: "snr", arg: 2, scope: !5665, file: !3, line: 607, type: !4194)
!5669 = !DILocation(line: 607, column: 56, scope: !5665)
!5670 = !DILocalVariable(name: "state", scope: !5665, file: !3, line: 609, type: !4473)
!5671 = !DILocation(line: 609, column: 23, scope: !5665)
!5672 = !DILocation(line: 609, column: 31, scope: !5665)
!5673 = !DILocation(line: 609, column: 35, scope: !5665)
!5674 = !DILocalVariable(name: "xsnr", scope: !5665, file: !3, line: 611, type: !1614)
!5675 = !DILocation(line: 611, column: 6, scope: !5665)
!5676 = !DILocation(line: 611, column: 37, scope: !5665)
!5677 = !DILocation(line: 611, column: 24, scope: !5665)
!5678 = !DILocation(line: 611, column: 50, scope: !5665)
!5679 = !DILocation(line: 612, column: 19, scope: !5665)
!5680 = !DILocation(line: 612, column: 6, scope: !5665)
!5681 = !DILocation(line: 611, column: 56, scope: !5665)
!5682 = !DILocation(line: 611, column: 20, scope: !5665)
!5683 = !DILocation(line: 613, column: 14, scope: !5665)
!5684 = !DILocation(line: 613, column: 19, scope: !5665)
!5685 = !DILocation(line: 613, column: 11, scope: !5665)
!5686 = !DILocation(line: 613, column: 7, scope: !5665)
!5687 = !DILocation(line: 614, column: 10, scope: !5665)
!5688 = !DILocation(line: 614, column: 15, scope: !5665)
!5689 = !DILocation(line: 614, column: 9, scope: !5665)
!5690 = !DILocation(line: 614, column: 37, scope: !5665)
!5691 = !DILocation(line: 614, column: 42, scope: !5665)
!5692 = !DILocation(line: 614, column: 36, scope: !5665)
!5693 = !DILocation(line: 614, column: 53, scope: !5665)
!5694 = !DILocation(line: 614, column: 3, scope: !5665)
!5695 = !DILocation(line: 614, column: 7, scope: !5665)
!5696 = !DILocation(line: 616, column: 2, scope: !5665)
!5697 = !DILocation(line: 616, column: 2, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 616, column: 2)
!5699 = distinct !DILexicalBlock(scope: !5665, file: !3, line: 616, column: 2)
!5700 = !DILocation(line: 616, column: 2, scope: !5699)
!5701 = !DILocation(line: 618, column: 2, scope: !5665)
!5702 = distinct !DISubprogram(name: "si21_read_ucblocks", scope: !3, file: !3, line: 621, type: !4188, scopeLine: 622, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!5703 = !DILocalVariable(name: "fe", arg: 1, scope: !5702, file: !3, line: 621, type: !456)
!5704 = !DILocation(line: 621, column: 52, scope: !5702)
!5705 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !5702, file: !3, line: 621, type: !1585)
!5706 = !DILocation(line: 621, column: 61, scope: !5702)
!5707 = !DILocalVariable(name: "state", scope: !5702, file: !3, line: 623, type: !4473)
!5708 = !DILocation(line: 623, column: 23, scope: !5702)
!5709 = !DILocation(line: 623, column: 31, scope: !5702)
!5710 = !DILocation(line: 623, column: 35, scope: !5702)
!5711 = !DILocation(line: 625, column: 2, scope: !5702)
!5712 = !DILocation(line: 625, column: 2, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5714, file: !3, line: 625, column: 2)
!5714 = distinct !DILexicalBlock(scope: !5702, file: !3, line: 625, column: 2)
!5715 = !DILocation(line: 625, column: 2, scope: !5714)
!5716 = !DILocation(line: 627, column: 6, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5702, file: !3, line: 627, column: 6)
!5718 = !DILocation(line: 627, column: 13, scope: !5717)
!5719 = !DILocation(line: 627, column: 21, scope: !5717)
!5720 = !DILocation(line: 627, column: 6, scope: !5702)
!5721 = !DILocation(line: 628, column: 4, scope: !5717)
!5722 = !DILocation(line: 628, column: 13, scope: !5717)
!5723 = !DILocation(line: 628, column: 3, scope: !5717)
!5724 = !DILocation(line: 630, column: 29, scope: !5717)
!5725 = !DILocation(line: 630, column: 16, scope: !5717)
!5726 = !DILocation(line: 630, column: 42, scope: !5717)
!5727 = !DILocation(line: 631, column: 19, scope: !5717)
!5728 = !DILocation(line: 631, column: 6, scope: !5717)
!5729 = !DILocation(line: 630, column: 48, scope: !5717)
!5730 = !DILocation(line: 630, column: 4, scope: !5717)
!5731 = !DILocation(line: 630, column: 13, scope: !5717)
!5732 = !DILocation(line: 633, column: 2, scope: !5702)
!5733 = distinct !DISubprogram(name: "si21xx_send_diseqc_msg", scope: !3, file: !3, line: 378, type: !4200, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!5734 = !DILocalVariable(name: "fe", arg: 1, scope: !5733, file: !3, line: 378, type: !456)
!5735 = !DILocation(line: 378, column: 56, scope: !5733)
!5736 = !DILocalVariable(name: "m", arg: 2, scope: !5733, file: !3, line: 379, type: !4202)
!5737 = !DILocation(line: 379, column: 36, scope: !5733)
!5738 = !DILocalVariable(name: "state", scope: !5733, file: !3, line: 381, type: !4473)
!5739 = !DILocation(line: 381, column: 23, scope: !5733)
!5740 = !DILocation(line: 381, column: 31, scope: !5733)
!5741 = !DILocation(line: 381, column: 35, scope: !5733)
!5742 = !DILocalVariable(name: "lnb_status", scope: !5733, file: !3, line: 382, type: !323)
!5743 = !DILocation(line: 382, column: 5, scope: !5733)
!5744 = !DILocalVariable(name: "LNB_CTRL_1", scope: !5733, file: !3, line: 383, type: !323)
!5745 = !DILocation(line: 383, column: 5, scope: !5733)
!5746 = !DILocalVariable(name: "status", scope: !5733, file: !3, line: 384, type: !328)
!5747 = !DILocation(line: 384, column: 6, scope: !5733)
!5748 = !DILocation(line: 386, column: 2, scope: !5733)
!5749 = !DILocation(line: 386, column: 2, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5751, file: !3, line: 386, column: 2)
!5751 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 386, column: 2)
!5752 = !DILocation(line: 386, column: 2, scope: !5751)
!5753 = !DILocation(line: 388, column: 9, scope: !5733)
!5754 = !DILocation(line: 389, column: 13, scope: !5733)
!5755 = !DILocation(line: 391, column: 26, scope: !5733)
!5756 = !DILocation(line: 391, column: 12, scope: !5733)
!5757 = !DILocation(line: 391, column: 9, scope: !5733)
!5758 = !DILocation(line: 392, column: 26, scope: !5733)
!5759 = !DILocation(line: 392, column: 12, scope: !5733)
!5760 = !DILocation(line: 392, column: 9, scope: !5733)
!5761 = !DILocation(line: 395, column: 27, scope: !5733)
!5762 = !DILocation(line: 395, column: 51, scope: !5733)
!5763 = !DILocation(line: 395, column: 54, scope: !5733)
!5764 = !DILocation(line: 395, column: 59, scope: !5733)
!5765 = !DILocation(line: 395, column: 62, scope: !5733)
!5766 = !DILocation(line: 395, column: 12, scope: !5733)
!5767 = !DILocation(line: 395, column: 9, scope: !5733)
!5768 = !DILocation(line: 397, column: 16, scope: !5733)
!5769 = !DILocation(line: 397, column: 27, scope: !5733)
!5770 = !DILocation(line: 397, column: 15, scope: !5733)
!5771 = !DILocation(line: 397, column: 13, scope: !5733)
!5772 = !DILocation(line: 398, column: 16, scope: !5733)
!5773 = !DILocation(line: 398, column: 19, scope: !5733)
!5774 = !DILocation(line: 398, column: 13, scope: !5733)
!5775 = !DILocation(line: 400, column: 13, scope: !5733)
!5776 = !DILocation(line: 402, column: 27, scope: !5733)
!5777 = !DILocation(line: 402, column: 12, scope: !5733)
!5778 = !DILocation(line: 402, column: 9, scope: !5733)
!5779 = !DILocation(line: 404, column: 9, scope: !5733)
!5780 = !DILocation(line: 404, column: 2, scope: !5733)
!5781 = distinct !DISubprogram(name: "si21xx_send_diseqc_burst", scope: !3, file: !3, line: 407, type: !4221, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!5782 = !DILocalVariable(name: "fe", arg: 1, scope: !5781, file: !3, line: 407, type: !456)
!5783 = !DILocation(line: 407, column: 58, scope: !5781)
!5784 = !DILocalVariable(name: "burst", arg: 2, scope: !5781, file: !3, line: 408, type: !171)
!5785 = !DILocation(line: 408, column: 30, scope: !5781)
!5786 = !DILocalVariable(name: "state", scope: !5781, file: !3, line: 410, type: !4473)
!5787 = !DILocation(line: 410, column: 23, scope: !5781)
!5788 = !DILocation(line: 410, column: 31, scope: !5781)
!5789 = !DILocation(line: 410, column: 35, scope: !5781)
!5790 = !DILocalVariable(name: "val", scope: !5781, file: !3, line: 411, type: !323)
!5791 = !DILocation(line: 411, column: 5, scope: !5781)
!5792 = !DILocation(line: 413, column: 2, scope: !5781)
!5793 = !DILocation(line: 413, column: 2, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5795, file: !3, line: 413, column: 2)
!5795 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 413, column: 2)
!5796 = !DILocation(line: 413, column: 2, scope: !5795)
!5797 = !DILocation(line: 415, column: 30, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 415, column: 6)
!5799 = !DILocation(line: 415, column: 6, scope: !5798)
!5800 = !DILocation(line: 415, column: 42, scope: !5798)
!5801 = !DILocation(line: 415, column: 6, scope: !5781)
!5802 = !DILocation(line: 416, column: 3, scope: !5798)
!5803 = !DILocation(line: 418, column: 29, scope: !5781)
!5804 = !DILocation(line: 418, column: 16, scope: !5781)
!5805 = !DILocation(line: 418, column: 14, scope: !5781)
!5806 = !DILocation(line: 418, column: 8, scope: !5781)
!5807 = !DILocation(line: 418, column: 6, scope: !5781)
!5808 = !DILocation(line: 419, column: 20, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 419, column: 6)
!5810 = !DILocation(line: 420, column: 4, scope: !5809)
!5811 = !DILocation(line: 420, column: 10, scope: !5809)
!5812 = !DILocation(line: 420, column: 27, scope: !5809)
!5813 = !DILocation(line: 420, column: 31, scope: !5809)
!5814 = !DILocation(line: 420, column: 43, scope: !5809)
!5815 = !DILocation(line: 420, column: 47, scope: !5809)
!5816 = !DILocation(line: 419, column: 6, scope: !5809)
!5817 = !DILocation(line: 419, column: 6, scope: !5781)
!5818 = !DILocation(line: 421, column: 3, scope: !5809)
!5819 = !DILocation(line: 423, column: 30, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 423, column: 6)
!5821 = !DILocation(line: 423, column: 6, scope: !5820)
!5822 = !DILocation(line: 423, column: 42, scope: !5820)
!5823 = !DILocation(line: 423, column: 6, scope: !5781)
!5824 = !DILocation(line: 424, column: 3, scope: !5820)
!5825 = !DILocation(line: 426, column: 20, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 426, column: 6)
!5827 = !DILocation(line: 426, column: 43, scope: !5826)
!5828 = !DILocation(line: 426, column: 6, scope: !5826)
!5829 = !DILocation(line: 426, column: 6, scope: !5781)
!5830 = !DILocation(line: 427, column: 3, scope: !5826)
!5831 = !DILocation(line: 429, column: 2, scope: !5781)
!5832 = !DILocation(line: 430, column: 1, scope: !5781)
!5833 = distinct !DISubprogram(name: "si21xx_set_tone", scope: !3, file: !3, line: 432, type: !4225, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!5834 = !DILocalVariable(name: "fe", arg: 1, scope: !5833, file: !3, line: 432, type: !456)
!5835 = !DILocation(line: 432, column: 49, scope: !5833)
!5836 = !DILocalVariable(name: "tone", arg: 2, scope: !5833, file: !3, line: 432, type: !78)
!5837 = !DILocation(line: 432, column: 75, scope: !5833)
!5838 = !DILocalVariable(name: "state", scope: !5833, file: !3, line: 434, type: !4473)
!5839 = !DILocation(line: 434, column: 23, scope: !5833)
!5840 = !DILocation(line: 434, column: 31, scope: !5833)
!5841 = !DILocation(line: 434, column: 35, scope: !5833)
!5842 = !DILocalVariable(name: "val", scope: !5833, file: !3, line: 435, type: !323)
!5843 = !DILocation(line: 435, column: 5, scope: !5833)
!5844 = !DILocation(line: 437, column: 2, scope: !5833)
!5845 = !DILocation(line: 437, column: 2, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 437, column: 2)
!5847 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 437, column: 2)
!5848 = !DILocation(line: 437, column: 2, scope: !5847)
!5849 = !DILocation(line: 438, column: 29, scope: !5833)
!5850 = !DILocation(line: 438, column: 16, scope: !5833)
!5851 = !DILocation(line: 438, column: 14, scope: !5833)
!5852 = !DILocation(line: 438, column: 8, scope: !5833)
!5853 = !DILocation(line: 438, column: 6, scope: !5833)
!5854 = !DILocation(line: 440, column: 10, scope: !5833)
!5855 = !DILocation(line: 440, column: 2, scope: !5833)
!5856 = !DILocation(line: 442, column: 24, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 440, column: 16)
!5858 = !DILocation(line: 442, column: 47, scope: !5857)
!5859 = !DILocation(line: 442, column: 51, scope: !5857)
!5860 = !DILocation(line: 442, column: 10, scope: !5857)
!5861 = !DILocation(line: 442, column: 3, scope: !5857)
!5862 = !DILocation(line: 445, column: 24, scope: !5857)
!5863 = !DILocation(line: 445, column: 48, scope: !5857)
!5864 = !DILocation(line: 445, column: 52, scope: !5857)
!5865 = !DILocation(line: 445, column: 47, scope: !5857)
!5866 = !DILocation(line: 445, column: 10, scope: !5857)
!5867 = !DILocation(line: 445, column: 3, scope: !5857)
!5868 = !DILocation(line: 448, column: 3, scope: !5857)
!5869 = !DILocation(line: 450, column: 1, scope: !5833)
!5870 = distinct !DISubprogram(name: "si21xx_set_voltage", scope: !3, file: !3, line: 452, type: !4229, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!5871 = !DILocalVariable(name: "fe", arg: 1, scope: !5870, file: !3, line: 452, type: !456)
!5872 = !DILocation(line: 452, column: 52, scope: !5870)
!5873 = !DILocalVariable(name: "volt", arg: 2, scope: !5870, file: !3, line: 452, type: !73)
!5874 = !DILocation(line: 452, column: 76, scope: !5870)
!5875 = !DILocalVariable(name: "state", scope: !5870, file: !3, line: 454, type: !4473)
!5876 = !DILocation(line: 454, column: 23, scope: !5870)
!5877 = !DILocation(line: 454, column: 31, scope: !5870)
!5878 = !DILocation(line: 454, column: 35, scope: !5870)
!5879 = !DILocalVariable(name: "val", scope: !5870, file: !3, line: 456, type: !323)
!5880 = !DILocation(line: 456, column: 5, scope: !5870)
!5881 = !DILocation(line: 457, column: 2, scope: !5870)
!5882 = !DILocation(line: 457, column: 2, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5884, file: !3, line: 457, column: 2)
!5884 = distinct !DILexicalBlock(scope: !5870, file: !3, line: 457, column: 2)
!5885 = !DILocation(line: 457, column: 2, scope: !5884)
!5886 = !DILocation(line: 462, column: 29, scope: !5870)
!5887 = !DILocation(line: 462, column: 16, scope: !5870)
!5888 = !DILocation(line: 462, column: 14, scope: !5870)
!5889 = !DILocation(line: 462, column: 8, scope: !5870)
!5890 = !DILocation(line: 462, column: 6, scope: !5870)
!5891 = !DILocation(line: 464, column: 10, scope: !5870)
!5892 = !DILocation(line: 464, column: 2, scope: !5870)
!5893 = !DILocation(line: 466, column: 24, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5870, file: !3, line: 464, column: 16)
!5895 = !DILocation(line: 466, column: 47, scope: !5894)
!5896 = !DILocation(line: 466, column: 51, scope: !5894)
!5897 = !DILocation(line: 466, column: 10, scope: !5894)
!5898 = !DILocation(line: 466, column: 3, scope: !5894)
!5899 = !DILocation(line: 469, column: 24, scope: !5894)
!5900 = !DILocation(line: 469, column: 48, scope: !5894)
!5901 = !DILocation(line: 469, column: 52, scope: !5894)
!5902 = !DILocation(line: 469, column: 47, scope: !5894)
!5903 = !DILocation(line: 469, column: 10, scope: !5894)
!5904 = !DILocation(line: 469, column: 3, scope: !5894)
!5905 = !DILocation(line: 472, column: 3, scope: !5894)
!5906 = !DILocation(line: 474, column: 1, scope: !5870)
!5907 = distinct !DISubprogram(name: "si21_writeregs", scope: !3, file: !3, line: 222, type: !5908, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!5908 = !DISubroutineType(types: !5909)
!5909 = !{!328, !4473, !323, !4297, !328}
!5910 = !DILocalVariable(name: "state", arg: 1, scope: !5907, file: !3, line: 222, type: !4473)
!5911 = !DILocation(line: 222, column: 48, scope: !5907)
!5912 = !DILocalVariable(name: "reg1", arg: 2, scope: !5907, file: !3, line: 222, type: !323)
!5913 = !DILocation(line: 222, column: 58, scope: !5907)
!5914 = !DILocalVariable(name: "data", arg: 3, scope: !5907, file: !3, line: 223, type: !4297)
!5915 = !DILocation(line: 223, column: 12, scope: !5907)
!5916 = !DILocalVariable(name: "len", arg: 4, scope: !5907, file: !3, line: 223, type: !328)
!5917 = !DILocation(line: 223, column: 22, scope: !5907)
!5918 = !DILocalVariable(name: "ret", scope: !5907, file: !3, line: 225, type: !328)
!5919 = !DILocation(line: 225, column: 6, scope: !5907)
!5920 = !DILocalVariable(name: "buf", scope: !5907, file: !3, line: 226, type: !5921)
!5921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 480, elements: !5922)
!5922 = !{!5923}
!5923 = !DISubrange(count: 60)
!5924 = !DILocation(line: 226, column: 5, scope: !5907)
!5925 = !DILocalVariable(name: "msg", scope: !5907, file: !3, line: 227, type: !4362)
!5926 = !DILocation(line: 227, column: 17, scope: !5907)
!5927 = !DILocation(line: 227, column: 23, scope: !5907)
!5928 = !DILocation(line: 228, column: 13, scope: !5907)
!5929 = !DILocation(line: 228, column: 20, scope: !5907)
!5930 = !DILocation(line: 228, column: 28, scope: !5907)
!5931 = !DILocation(line: 231, column: 12, scope: !5907)
!5932 = !DILocation(line: 231, column: 16, scope: !5907)
!5933 = !DILocation(line: 230, column: 12, scope: !5907)
!5934 = !DILocation(line: 234, column: 6, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5907, file: !3, line: 234, column: 6)
!5936 = !DILocation(line: 234, column: 10, scope: !5935)
!5937 = !DILocation(line: 234, column: 6, scope: !5907)
!5938 = !DILocation(line: 235, column: 3, scope: !5935)
!5939 = !DILocation(line: 237, column: 16, scope: !5907)
!5940 = !DILocation(line: 237, column: 6, scope: !5907)
!5941 = !DILocation(line: 237, column: 2, scope: !5907)
!5942 = !DILocation(line: 237, column: 13, scope: !5907)
!5943 = !DILocation(line: 238, column: 13, scope: !5907)
!5944 = !DILocation(line: 238, column: 17, scope: !5907)
!5945 = !DILocation(line: 238, column: 22, scope: !5907)
!5946 = !DILocation(line: 238, column: 28, scope: !5907)
!5947 = !DILocation(line: 238, column: 2, scope: !5907)
!5948 = !DILocation(line: 240, column: 21, scope: !5907)
!5949 = !DILocation(line: 240, column: 28, scope: !5907)
!5950 = !DILocation(line: 240, column: 8, scope: !5907)
!5951 = !DILocation(line: 240, column: 6, scope: !5907)
!5952 = !DILocation(line: 242, column: 6, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5907, file: !3, line: 242, column: 6)
!5954 = !DILocation(line: 242, column: 10, scope: !5953)
!5955 = !DILocation(line: 242, column: 6, scope: !5907)
!5956 = !DILocation(line: 243, column: 3, scope: !5953)
!5957 = !DILocation(line: 243, column: 3, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5959, file: !3, line: 243, column: 3)
!5959 = distinct !DILexicalBlock(scope: !5953, file: !3, line: 243, column: 3)
!5960 = !DILocation(line: 243, column: 3, scope: !5959)
!5961 = !DILocation(line: 246, column: 10, scope: !5907)
!5962 = !DILocation(line: 246, column: 14, scope: !5907)
!5963 = !DILocation(line: 246, column: 9, scope: !5907)
!5964 = !DILocation(line: 246, column: 2, scope: !5907)
!5965 = !DILocation(line: 247, column: 1, scope: !5907)
!5966 = distinct !DISubprogram(name: "si21_readregs", scope: !3, file: !3, line: 307, type: !5967, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!5967 = !DISubroutineType(types: !5968)
!5968 = !{!328, !4473, !323, !4297, !323}
!5969 = !DILocalVariable(name: "state", arg: 1, scope: !5966, file: !3, line: 307, type: !4473)
!5970 = !DILocation(line: 307, column: 47, scope: !5966)
!5971 = !DILocalVariable(name: "reg1", arg: 2, scope: !5966, file: !3, line: 307, type: !323)
!5972 = !DILocation(line: 307, column: 57, scope: !5966)
!5973 = !DILocalVariable(name: "b", arg: 3, scope: !5966, file: !3, line: 307, type: !4297)
!5974 = !DILocation(line: 307, column: 67, scope: !5966)
!5975 = !DILocalVariable(name: "len", arg: 4, scope: !5966, file: !3, line: 307, type: !323)
!5976 = !DILocation(line: 307, column: 73, scope: !5966)
!5977 = !DILocalVariable(name: "ret", scope: !5966, file: !3, line: 309, type: !328)
!5978 = !DILocation(line: 309, column: 6, scope: !5966)
!5979 = !DILocalVariable(name: "msg", scope: !5966, file: !3, line: 310, type: !4837)
!5980 = !DILocation(line: 310, column: 17, scope: !5966)
!5981 = !DILocation(line: 310, column: 25, scope: !5966)
!5982 = !DILocation(line: 311, column: 3, scope: !5966)
!5983 = !DILocation(line: 312, column: 12, scope: !5966)
!5984 = !DILocation(line: 312, column: 19, scope: !5966)
!5985 = !DILocation(line: 312, column: 27, scope: !5966)
!5986 = !DILocation(line: 316, column: 6, scope: !5966)
!5987 = !DILocation(line: 317, column: 12, scope: !5966)
!5988 = !DILocation(line: 317, column: 19, scope: !5966)
!5989 = !DILocation(line: 317, column: 27, scope: !5966)
!5990 = !DILocation(line: 320, column: 11, scope: !5966)
!5991 = !DILocation(line: 319, column: 11, scope: !5966)
!5992 = !DILocation(line: 324, column: 21, scope: !5966)
!5993 = !DILocation(line: 324, column: 28, scope: !5966)
!5994 = !DILocation(line: 324, column: 33, scope: !5966)
!5995 = !DILocation(line: 324, column: 8, scope: !5966)
!5996 = !DILocation(line: 324, column: 6, scope: !5966)
!5997 = !DILocation(line: 326, column: 6, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 326, column: 6)
!5999 = !DILocation(line: 326, column: 10, scope: !5998)
!6000 = !DILocation(line: 326, column: 6, scope: !5966)
!6001 = !DILocation(line: 327, column: 3, scope: !5998)
!6002 = !DILocation(line: 327, column: 3, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !6004, file: !3, line: 327, column: 3)
!6004 = distinct !DILexicalBlock(scope: !5998, file: !3, line: 327, column: 3)
!6005 = !DILocation(line: 327, column: 3, scope: !6004)
!6006 = !DILocation(line: 329, column: 9, scope: !5966)
!6007 = !DILocation(line: 329, column: 13, scope: !5966)
!6008 = !DILocation(line: 329, column: 2, scope: !5966)
!6009 = distinct !DISubprogram(name: "si21xx_setacquire", scope: !3, file: !3, line: 638, type: !6010, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!6010 = !DISubroutineType(types: !6011)
!6011 = !{!328, !456, !328, !87}
!6012 = !DILocalVariable(name: "fe", arg: 1, scope: !6009, file: !3, line: 638, type: !456)
!6013 = !DILocation(line: 638, column: 51, scope: !6009)
!6014 = !DILocalVariable(name: "symbrate", arg: 2, scope: !6009, file: !3, line: 638, type: !328)
!6015 = !DILocation(line: 638, column: 59, scope: !6009)
!6016 = !DILocalVariable(name: "crate", arg: 3, scope: !6009, file: !3, line: 639, type: !87)
!6017 = !DILocation(line: 639, column: 27, scope: !6009)
!6018 = !DILocalVariable(name: "state", scope: !6009, file: !3, line: 642, type: !4473)
!6019 = !DILocation(line: 642, column: 23, scope: !6009)
!6020 = !DILocation(line: 642, column: 31, scope: !6009)
!6021 = !DILocation(line: 642, column: 35, scope: !6009)
!6022 = !DILocalVariable(name: "coderates", scope: !6009, file: !3, line: 643, type: !6023)
!6023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 80, elements: !5147)
!6024 = !DILocation(line: 643, column: 5, scope: !6009)
!6025 = !DILocalVariable(name: "coderate_ptr", scope: !6009, file: !3, line: 648, type: !323)
!6026 = !DILocation(line: 648, column: 5, scope: !6009)
!6027 = !DILocalVariable(name: "status", scope: !6009, file: !3, line: 649, type: !328)
!6028 = !DILocation(line: 649, column: 6, scope: !6009)
!6029 = !DILocalVariable(name: "start_acq", scope: !6009, file: !3, line: 650, type: !323)
!6030 = !DILocation(line: 650, column: 5, scope: !6009)
!6031 = !DILocalVariable(name: "reg", scope: !6009, file: !3, line: 651, type: !323)
!6032 = !DILocation(line: 651, column: 5, scope: !6009)
!6033 = !DILocalVariable(name: "regs", scope: !6009, file: !3, line: 651, type: !6034)
!6034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 24, elements: !551)
!6035 = !DILocation(line: 651, column: 10, scope: !6009)
!6036 = !DILocation(line: 653, column: 2, scope: !6009)
!6037 = !DILocation(line: 653, column: 2, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !6039, file: !3, line: 653, column: 2)
!6039 = distinct !DILexicalBlock(scope: !6009, file: !3, line: 653, column: 2)
!6040 = !DILocation(line: 653, column: 2, scope: !6039)
!6041 = !DILocation(line: 655, column: 9, scope: !6009)
!6042 = !DILocation(line: 656, column: 27, scope: !6009)
!6043 = !DILocation(line: 656, column: 17, scope: !6009)
!6044 = !DILocation(line: 656, column: 15, scope: !6009)
!6045 = !DILocation(line: 658, column: 24, scope: !6009)
!6046 = !DILocation(line: 658, column: 28, scope: !6009)
!6047 = !DILocation(line: 658, column: 2, scope: !6009)
!6048 = !DILocation(line: 661, column: 27, scope: !6009)
!6049 = !DILocation(line: 661, column: 12, scope: !6009)
!6050 = !DILocation(line: 661, column: 9, scope: !6009)
!6051 = !DILocation(line: 666, column: 26, scope: !6009)
!6052 = !DILocation(line: 666, column: 12, scope: !6009)
!6053 = !DILocation(line: 666, column: 9, scope: !6009)
!6054 = !DILocation(line: 667, column: 10, scope: !6009)
!6055 = !DILocation(line: 667, column: 9, scope: !6009)
!6056 = !DILocation(line: 667, column: 6, scope: !6009)
!6057 = !DILocation(line: 668, column: 27, scope: !6009)
!6058 = !DILocation(line: 668, column: 12, scope: !6009)
!6059 = !DILocation(line: 668, column: 9, scope: !6009)
!6060 = !DILocation(line: 671, column: 2, scope: !6009)
!6061 = !DILocation(line: 671, column: 10, scope: !6009)
!6062 = !DILocation(line: 672, column: 2, scope: !6009)
!6063 = !DILocation(line: 672, column: 10, scope: !6009)
!6064 = !DILocation(line: 673, column: 2, scope: !6009)
!6065 = !DILocation(line: 673, column: 10, scope: !6009)
!6066 = !DILocation(line: 675, column: 27, scope: !6009)
!6067 = !DILocation(line: 677, column: 6, scope: !6009)
!6068 = !DILocation(line: 675, column: 12, scope: !6009)
!6069 = !DILocation(line: 675, column: 9, scope: !6009)
!6070 = !DILocation(line: 678, column: 6, scope: !6009)
!6071 = !DILocation(line: 679, column: 27, scope: !6009)
!6072 = !DILocation(line: 679, column: 12, scope: !6009)
!6073 = !DILocation(line: 679, column: 9, scope: !6009)
!6074 = !DILocation(line: 681, column: 6, scope: !6009)
!6075 = !DILocation(line: 682, column: 27, scope: !6009)
!6076 = !DILocation(line: 682, column: 12, scope: !6009)
!6077 = !DILocation(line: 682, column: 9, scope: !6009)
!6078 = !DILocation(line: 685, column: 27, scope: !6009)
!6079 = !DILocation(line: 685, column: 12, scope: !6009)
!6080 = !DILocation(line: 685, column: 9, scope: !6009)
!6081 = !DILocation(line: 688, column: 9, scope: !6009)
!6082 = !DILocation(line: 688, column: 2, scope: !6009)
!6083 = distinct !DISubprogram(name: "si21xx_set_symbolrate", scope: !3, file: !3, line: 349, type: !4300, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!6084 = !DILocalVariable(name: "fe", arg: 1, scope: !6083, file: !3, line: 349, type: !456)
!6085 = !DILocation(line: 349, column: 55, scope: !6083)
!6086 = !DILocalVariable(name: "srate", arg: 2, scope: !6083, file: !3, line: 349, type: !439)
!6087 = !DILocation(line: 349, column: 63, scope: !6083)
!6088 = !DILocalVariable(name: "state", scope: !6083, file: !3, line: 351, type: !4473)
!6089 = !DILocation(line: 351, column: 23, scope: !6083)
!6090 = !DILocation(line: 351, column: 31, scope: !6083)
!6091 = !DILocation(line: 351, column: 35, scope: !6083)
!6092 = !DILocalVariable(name: "sym_rate", scope: !6083, file: !3, line: 352, type: !439)
!6093 = !DILocation(line: 352, column: 6, scope: !6083)
!6094 = !DILocalVariable(name: "data_rate", scope: !6083, file: !3, line: 352, type: !439)
!6095 = !DILocation(line: 352, column: 16, scope: !6083)
!6096 = !DILocalVariable(name: "i", scope: !6083, file: !3, line: 353, type: !328)
!6097 = !DILocation(line: 353, column: 6, scope: !6083)
!6098 = !DILocalVariable(name: "sym_rate_bytes", scope: !6083, file: !3, line: 354, type: !6034)
!6099 = !DILocation(line: 354, column: 5, scope: !6083)
!6100 = !DILocation(line: 356, column: 2, scope: !6083)
!6101 = !DILocation(line: 356, column: 2, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 356, column: 2)
!6103 = distinct !DILexicalBlock(scope: !6083, file: !3, line: 356, column: 2)
!6104 = !DILocation(line: 356, column: 2, scope: !6103)
!6105 = !DILocation(line: 358, column: 7, scope: !6106)
!6106 = distinct !DILexicalBlock(scope: !6083, file: !3, line: 358, column: 6)
!6107 = !DILocation(line: 358, column: 13, scope: !6106)
!6108 = !DILocation(line: 358, column: 24, scope: !6106)
!6109 = !DILocation(line: 358, column: 28, scope: !6106)
!6110 = !DILocation(line: 358, column: 34, scope: !6106)
!6111 = !DILocation(line: 358, column: 6, scope: !6083)
!6112 = !DILocation(line: 359, column: 3, scope: !6106)
!6113 = !DILocation(line: 361, column: 14, scope: !6083)
!6114 = !DILocation(line: 361, column: 12, scope: !6083)
!6115 = !DILocation(line: 362, column: 11, scope: !6083)
!6116 = !DILocation(line: 364, column: 9, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !6083, file: !3, line: 364, column: 2)
!6118 = !DILocation(line: 364, column: 7, scope: !6117)
!6119 = !DILocation(line: 364, column: 14, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6117, file: !3, line: 364, column: 2)
!6121 = !DILocation(line: 364, column: 16, scope: !6120)
!6122 = !DILocation(line: 364, column: 2, scope: !6117)
!6123 = !DILocation(line: 365, column: 12, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 364, column: 26)
!6125 = !DILocation(line: 366, column: 14, scope: !6124)
!6126 = !DILocation(line: 366, column: 27, scope: !6124)
!6127 = !DILocation(line: 366, column: 37, scope: !6124)
!6128 = !DILocation(line: 366, column: 44, scope: !6124)
!6129 = !DILocation(line: 367, column: 9, scope: !6124)
!6130 = !DILocation(line: 367, column: 16, scope: !6124)
!6131 = !DILocation(line: 366, column: 56, scope: !6124)
!6132 = !DILocation(line: 366, column: 23, scope: !6124)
!6133 = !DILocation(line: 366, column: 12, scope: !6124)
!6134 = !DILocation(line: 368, column: 13, scope: !6124)
!6135 = !DILocation(line: 369, column: 2, scope: !6124)
!6136 = !DILocation(line: 364, column: 21, scope: !6120)
!6137 = !DILocation(line: 364, column: 2, scope: !6120)
!6138 = distinct !{!6138, !6122, !6139}
!6139 = !DILocation(line: 369, column: 2, scope: !6117)
!6140 = !DILocation(line: 370, column: 9, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6083, file: !3, line: 370, column: 2)
!6142 = !DILocation(line: 370, column: 7, scope: !6141)
!6143 = !DILocation(line: 370, column: 14, scope: !6144)
!6144 = distinct !DILexicalBlock(scope: !6141, file: !3, line: 370, column: 2)
!6145 = !DILocation(line: 370, column: 16, scope: !6144)
!6146 = !DILocation(line: 370, column: 2, scope: !6141)
!6147 = !DILocation(line: 371, column: 29, scope: !6144)
!6148 = !DILocation(line: 371, column: 42, scope: !6144)
!6149 = !DILocation(line: 371, column: 44, scope: !6144)
!6150 = !DILocation(line: 371, column: 38, scope: !6144)
!6151 = !DILocation(line: 371, column: 50, scope: !6144)
!6152 = !DILocation(line: 371, column: 23, scope: !6144)
!6153 = !DILocation(line: 371, column: 18, scope: !6144)
!6154 = !DILocation(line: 371, column: 3, scope: !6144)
!6155 = !DILocation(line: 371, column: 21, scope: !6144)
!6156 = !DILocation(line: 370, column: 21, scope: !6144)
!6157 = !DILocation(line: 370, column: 2, scope: !6144)
!6158 = distinct !{!6158, !6146, !6159}
!6159 = !DILocation(line: 371, column: 56, scope: !6141)
!6160 = !DILocation(line: 373, column: 17, scope: !6083)
!6161 = !DILocation(line: 373, column: 40, scope: !6083)
!6162 = !DILocation(line: 373, column: 2, scope: !6083)
!6163 = !DILocation(line: 375, column: 2, scope: !6083)
!6164 = !DILocation(line: 376, column: 1, scope: !6083)
!6165 = distinct !DISubprogram(name: "si21xx_wait_diseqc_idle", scope: !3, file: !3, line: 332, type: !6166, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !524)
!6166 = !DISubroutineType(types: !6167)
!6167 = !{!328, !4473, !328}
!6168 = !DILocalVariable(name: "state", arg: 1, scope: !6165, file: !3, line: 332, type: !4473)
!6169 = !DILocation(line: 332, column: 57, scope: !6165)
!6170 = !DILocalVariable(name: "timeout", arg: 2, scope: !6165, file: !3, line: 332, type: !328)
!6171 = !DILocation(line: 332, column: 68, scope: !6165)
!6172 = !DILocalVariable(name: "start", scope: !6165, file: !3, line: 334, type: !597)
!6173 = !DILocation(line: 334, column: 16, scope: !6165)
!6174 = !DILocation(line: 334, column: 24, scope: !6165)
!6175 = !DILocation(line: 336, column: 2, scope: !6165)
!6176 = !DILocation(line: 336, column: 2, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6178, file: !3, line: 336, column: 2)
!6178 = distinct !DILexicalBlock(scope: !6165, file: !3, line: 336, column: 2)
!6179 = !DILocation(line: 336, column: 2, scope: !6178)
!6180 = !DILocation(line: 338, column: 2, scope: !6165)
!6181 = !DILocation(line: 338, column: 23, scope: !6165)
!6182 = !DILocation(line: 338, column: 10, scope: !6165)
!6183 = !DILocation(line: 338, column: 46, scope: !6165)
!6184 = !DILocation(line: 338, column: 53, scope: !6165)
!6185 = !DILocation(line: 339, column: 7, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !6187, file: !3, line: 339, column: 7)
!6187 = distinct !DILexicalBlock(scope: !6165, file: !3, line: 338, column: 59)
!6188 = !DILocation(line: 339, column: 17, scope: !6186)
!6189 = !DILocation(line: 339, column: 15, scope: !6186)
!6190 = !DILocation(line: 339, column: 25, scope: !6186)
!6191 = !DILocation(line: 339, column: 23, scope: !6186)
!6192 = !DILocation(line: 339, column: 7, scope: !6187)
!6193 = !DILocation(line: 340, column: 4, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 339, column: 34)
!6195 = !DILocation(line: 340, column: 4, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !6197, file: !3, line: 340, column: 4)
!6197 = distinct !DILexicalBlock(scope: !6194, file: !3, line: 340, column: 4)
!6198 = !DILocation(line: 340, column: 4, scope: !6197)
!6199 = !DILocation(line: 341, column: 4, scope: !6194)
!6200 = !DILocation(line: 343, column: 3, scope: !6187)
!6201 = distinct !{!6201, !6180, !6202}
!6202 = !DILocation(line: 344, column: 2, scope: !6165)
!6203 = !DILocation(line: 346, column: 2, scope: !6165)
!6204 = !DILocation(line: 347, column: 1, scope: !6165)
