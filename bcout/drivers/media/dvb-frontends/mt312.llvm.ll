; ModuleID = '../bcout/drivers/media/dvb-frontends/mt312.llvm.bc'
source_filename = "drivers/media/dvb-frontends/mt312.c"
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
%struct.mt312_config = type { i8, i8, [2 x i8] }
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
%struct.mt312_state = type { %struct.i2c_adapter*, %struct.mt312_config*, %struct.dvb_frontend, i8, i64, i8 }

@mt312_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Zarlink ???? DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 78125, i32 0, i32 703125, i32 45000000, i32 0, i32 -1073740114 }, [8 x i8] c"\05\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @mt312_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @mt312_initfe, i32 (%struct.dvb_frontend*)* @mt312_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @mt312_set_frontend, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @mt312_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @mt312_get_frontend, i32 (%struct.dvb_frontend*, i32*)* @mt312_read_status, i32 (%struct.dvb_frontend*, i32*)* @mt312_read_ber, i32 (%struct.dvb_frontend*, i16*)* @mt312_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @mt312_read_snr, i32 (%struct.dvb_frontend*, i32*)* @mt312_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @mt312_send_master_cmd, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* @mt312_send_burst, i32 (%struct.dvb_frontend*, i32)* @mt312_set_tone, i32 (%struct.dvb_frontend*, i32)* @mt312_set_voltage, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* @mt312_i2c_gate_ctrl, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !0
@.str = private unnamed_addr constant [20 x i8] c"Zarlink VP310 DVB-S\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Zarlink MT312 DVB-S\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Zarlink ZL10313 DVB-S\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"\014Only Zarlink VP310/MT312/ZL10313 are supported chips.\0A\00", align 1
@__param_str_debug = internal constant [12 x i8] c"mt312.debug\00", align 1, !dbg !545
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !543
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !439
@__UNIQUE_ID_debugtype220 = internal constant [25 x i8] c"mt312.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !508
@__UNIQUE_ID_debug221 = internal constant [63 x i8] c"mt312.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1, !dbg !513
@__UNIQUE_ID_description222 = internal constant [71 x i8] c"mt312.description=Zarlink VP310/MT312/ZL10313 DVB-S Demodulator driver\00", section ".modinfo", align 1, !dbg !518
@__UNIQUE_ID_author223 = internal constant [50 x i8] c"mt312.author=Andreas Oberritter <obi@linuxtv.org>\00", section ".modinfo", align 1, !dbg !523
@__UNIQUE_ID_author224 = internal constant [51 x i8] c"mt312.author=Matthias Schwarzott <zzam@gentoo.org>\00", section ".modinfo", align 1, !dbg !528
@__UNIQUE_ID_file225 = internal constant [45 x i8] c"mt312.file=drivers/media/dvb-frontends/mt312\00", section ".modinfo", align 1, !dbg !533
@__UNIQUE_ID_license226 = internal constant [18 x i8] c"mt312.license=GPL\00", section ".modinfo", align 1, !dbg !538
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\017%s: ret == %d\0A\00", align 1
@__func__.mt312_read = private unnamed_addr constant [11 x i8] c"mt312_read\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"\017mt312: R(%d):\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"\01c %02x\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.mt312_initfe.buf_def = private unnamed_addr constant [8 x i8] c"\14\12\03\02\01\00\00\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"\014mt312: write: len=%zu is too big!\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"\017mt312: W(%d):\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"\017mt312: %s: ret == %d\0A\00", align 1
@__func__.mt312_write = private unnamed_addr constant [12 x i8] c"mt312_write\00", align 1
@__const.mt312_set_frontend.fec_tab = private unnamed_addr constant [10 x i8] c"\00\01\02\04?\08\10 ??", align 1
@__const.mt312_set_frontend.inv_tab = private unnamed_addr constant [3 x i8] c"\00@\80", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"\017mt312: %s: Freq %d\0A\00", align 1
@__func__.mt312_set_frontend = private unnamed_addr constant [19 x i8] c"mt312_set_frontend\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"\017mt312: sr(auto) = %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"\017mt312: sym_rat_op=%d dec_ratio=%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"\017mt312: *sr(manual) = %lu\0A\00", align 1
@__const.mt312_get_code_rate.fec_tab = private unnamed_addr constant [8 x i32] [i32 1, i32 2, i32 3, i32 5, i32 6, i32 7, i32 9, i32 9], align 16
@.str.16 = private unnamed_addr constant [71 x i8] c"\017mt312: QPSK_STAT_H: 0x%02x, QPSK_STAT_L: 0x%02x, FEC_STATUS: 0x%02x\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"\017mt312: agc=%08x err_db=%hd\0A\00", align 1
@__const.mt312_send_burst.mini_tab = private unnamed_addr constant [2 x i8] c"\02\03", align 1
@__const.mt312_set_tone.tone_tab = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@__const.mt312_set_voltage.volt_tab = private unnamed_addr constant [3 x i8] c"\00@\00", align 1
@llvm.used = appending global [8 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_author223, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_author224, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_file225, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__UNIQUE_ID_license226, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @mt312_attach(%struct.mt312_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4447 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.mt312_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.mt312_state*, align 8
  store %struct.mt312_config* %config, %struct.mt312_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mt312_config** %config.addr, metadata !4579, metadata !DIExpression()), !dbg !4580
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4581, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state, metadata !4583, metadata !DIExpression()), !dbg !4593
  store %struct.mt312_state* null, %struct.mt312_state** %state, align 8, !dbg !4593
  %call = call i8* @kzalloc(i64 1320, i32 3264) #8, !dbg !4594
  %0 = bitcast i8* %call to %struct.mt312_state*, !dbg !4594
  store %struct.mt312_state* %0, %struct.mt312_state** %state, align 8, !dbg !4595
  %1 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4596
  %cmp = icmp eq %struct.mt312_state* %1, null, !dbg !4598
  br i1 %cmp, label %if.then, label %if.end, !dbg !4599

if.then:                                          ; preds = %entry
  br label %error, !dbg !4600

if.end:                                           ; preds = %entry
  %2 = load %struct.mt312_config*, %struct.mt312_config** %config.addr, align 8, !dbg !4601
  %3 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4602
  %config1 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %3, i32 0, i32 1, !dbg !4603
  store %struct.mt312_config* %2, %struct.mt312_config** %config1, align 8, !dbg !4604
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4605
  %5 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4606
  %i2c2 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %5, i32 0, i32 0, !dbg !4607
  store %struct.i2c_adapter* %4, %struct.i2c_adapter** %i2c2, align 8, !dbg !4608
  %6 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4609
  %7 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4611
  %id = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %7, i32 0, i32 3, !dbg !4612
  %call3 = call i32 @mt312_readreg(%struct.mt312_state* %6, i32 126, i8* %id) #8, !dbg !4613
  %cmp4 = icmp slt i32 %call3, 0, !dbg !4614
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4615

if.then5:                                         ; preds = %if.end
  br label %error, !dbg !4616

if.end6:                                          ; preds = %if.end
  %8 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4617
  %frontend = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %8, i32 0, i32 2, !dbg !4618
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4619
  %9 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4620
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @mt312_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4620
  %10 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4621
  %11 = bitcast %struct.mt312_state* %10 to i8*, !dbg !4621
  %12 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4622
  %frontend7 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %12, i32 0, i32 2, !dbg !4623
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend7, i32 0, i32 3, !dbg !4624
  store i8* %11, i8** %demodulator_priv, align 8, !dbg !4625
  %13 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4626
  %id8 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %13, i32 0, i32 3, !dbg !4627
  %14 = load i8, i8* %id8, align 8, !dbg !4627
  %conv = zext i8 %14 to i32, !dbg !4626
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb12
    i32 5, label %sw.bb21
  ], !dbg !4628

sw.bb:                                            ; preds = %if.end6
  %15 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4629
  %frontend9 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %15, i32 0, i32 2, !dbg !4631
  %ops10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend9, i32 0, i32 1, !dbg !4632
  %info = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops10, i32 0, i32 0, !dbg !4633
  %name = getelementptr inbounds %struct.dvb_frontend_internal_info, %struct.dvb_frontend_internal_info* %info, i32 0, i32 0, !dbg !4634
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %name, i64 0, i64 0, !dbg !4629
  %call11 = call i64 @strscpy(i8* %arraydecay, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 128) #8, !dbg !4635
  %16 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4636
  %xtal = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %16, i32 0, i32 4, !dbg !4637
  store i64 10000000, i64* %xtal, align 8, !dbg !4638
  %17 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4639
  %freq_mult = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %17, i32 0, i32 5, !dbg !4640
  store i8 9, i8* %freq_mult, align 8, !dbg !4641
  br label %sw.epilog, !dbg !4642

sw.bb12:                                          ; preds = %if.end6
  %18 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4643
  %frontend13 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %18, i32 0, i32 2, !dbg !4644
  %ops14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend13, i32 0, i32 1, !dbg !4645
  %info15 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops14, i32 0, i32 0, !dbg !4646
  %name16 = getelementptr inbounds %struct.dvb_frontend_internal_info, %struct.dvb_frontend_internal_info* %info15, i32 0, i32 0, !dbg !4647
  %arraydecay17 = getelementptr inbounds [128 x i8], [128 x i8]* %name16, i64 0, i64 0, !dbg !4643
  %call18 = call i64 @strscpy(i8* %arraydecay17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 128) #8, !dbg !4648
  %19 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4649
  %xtal19 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %19, i32 0, i32 4, !dbg !4650
  store i64 10000000, i64* %xtal19, align 8, !dbg !4651
  %20 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4652
  %freq_mult20 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %20, i32 0, i32 5, !dbg !4653
  store i8 6, i8* %freq_mult20, align 8, !dbg !4654
  br label %sw.epilog, !dbg !4655

sw.bb21:                                          ; preds = %if.end6
  %21 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4656
  %frontend22 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %21, i32 0, i32 2, !dbg !4657
  %ops23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend22, i32 0, i32 1, !dbg !4658
  %info24 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops23, i32 0, i32 0, !dbg !4659
  %name25 = getelementptr inbounds %struct.dvb_frontend_internal_info, %struct.dvb_frontend_internal_info* %info24, i32 0, i32 0, !dbg !4660
  %arraydecay26 = getelementptr inbounds [128 x i8], [128 x i8]* %name25, i64 0, i64 0, !dbg !4656
  %call27 = call i64 @strscpy(i8* %arraydecay26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 128) #8, !dbg !4661
  %22 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4662
  %xtal28 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %22, i32 0, i32 4, !dbg !4663
  store i64 10111000, i64* %xtal28, align 8, !dbg !4664
  %23 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4665
  %freq_mult29 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %23, i32 0, i32 5, !dbg !4666
  store i8 9, i8* %freq_mult29, align 8, !dbg !4667
  br label %sw.epilog, !dbg !4668

sw.default:                                       ; preds = %if.end6
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !4669
  br label %error, !dbg !4670

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb12, %sw.bb
  %24 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4671
  %frontend31 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %24, i32 0, i32 2, !dbg !4672
  store %struct.dvb_frontend* %frontend31, %struct.dvb_frontend** %retval, align 8, !dbg !4673
  br label %return, !dbg !4673

error:                                            ; preds = %sw.default, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !4674), !dbg !4675
  %25 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !4676
  %26 = bitcast %struct.mt312_state* %25 to i8*, !dbg !4676
  call void @kfree(i8* %26) #8, !dbg !4677
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4678
  br label %return, !dbg !4678

return:                                           ; preds = %error, %sw.epilog
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4679
  ret %struct.dvb_frontend* %27, !dbg !4679
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4680 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4683, metadata !DIExpression()), !dbg !4687
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4693, metadata !DIExpression()), !dbg !4694
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4695, metadata !DIExpression()), !dbg !4696
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4697, metadata !DIExpression()), !dbg !4698
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4699, metadata !DIExpression()), !dbg !4703
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4705, metadata !DIExpression()), !dbg !4709
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4711, metadata !DIExpression()), !dbg !4715
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4720, metadata !DIExpression()), !dbg !4721
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4722, metadata !DIExpression()), !dbg !4723
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4724, metadata !DIExpression()), !dbg !4725
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4726, metadata !DIExpression()), !dbg !4727
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4728, metadata !DIExpression()), !dbg !4729
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4730, metadata !DIExpression()), !dbg !4731
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4732, metadata !DIExpression()), !dbg !4733
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4734, metadata !DIExpression()), !dbg !4735
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4736, metadata !DIExpression()), !dbg !4737
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4738, metadata !DIExpression()), !dbg !4739
  %0 = load i64, i64* %size.addr, align 8, !dbg !4740
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4741
  %or = or i32 %1, 256, !dbg !4742
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4743
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4744
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4745

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4746
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4747
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4748

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4749
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4750
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4751
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4752
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4729
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4753
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4754
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4755
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4756
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4757
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4758
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4759
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4759
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4759
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4759
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4759
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4760
  br label %kmalloc.exit, !dbg !4760

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4761
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4762
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4762
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4764

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4765
  br label %kmalloc_index.exit.i, !dbg !4765

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4766
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4768
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4769

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4770
  br label %kmalloc_index.exit.i, !dbg !4770

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4771
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4773
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4774

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4775
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4776
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4777

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4778
  br label %kmalloc_index.exit.i, !dbg !4778

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4779
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4781
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4782

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4783
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4784
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4785

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4786
  br label %kmalloc_index.exit.i, !dbg !4786

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4787
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4789
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4790

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4791
  br label %kmalloc_index.exit.i, !dbg !4791

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4792
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4794
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4795

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4796
  br label %kmalloc_index.exit.i, !dbg !4796

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4797
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4799
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4800

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4801
  br label %kmalloc_index.exit.i, !dbg !4801

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4802
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4804
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4805

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4806
  br label %kmalloc_index.exit.i, !dbg !4806

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4807
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4809
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4810

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4811
  br label %kmalloc_index.exit.i, !dbg !4811

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4812
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4814
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4815

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4816
  br label %kmalloc_index.exit.i, !dbg !4816

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4817
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4819
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4820

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4821
  br label %kmalloc_index.exit.i, !dbg !4821

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4822
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4824
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4825

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4826
  br label %kmalloc_index.exit.i, !dbg !4826

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4827
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4829
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4830

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4831
  br label %kmalloc_index.exit.i, !dbg !4831

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4832
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4834
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4835

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4836
  br label %kmalloc_index.exit.i, !dbg !4836

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4837
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4839
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4840

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4841
  br label %kmalloc_index.exit.i, !dbg !4841

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4842
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4844
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4845

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4846
  br label %kmalloc_index.exit.i, !dbg !4846

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4847
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4849
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4850

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4851
  br label %kmalloc_index.exit.i, !dbg !4851

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4852
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4854
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4855

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4856
  br label %kmalloc_index.exit.i, !dbg !4856

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4857
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4859
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4860

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4861
  br label %kmalloc_index.exit.i, !dbg !4861

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4862
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4864
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4865

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4866
  br label %kmalloc_index.exit.i, !dbg !4866

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4867
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4869
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4870

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4871
  br label %kmalloc_index.exit.i, !dbg !4871

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4872
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4874
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4875

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4876
  br label %kmalloc_index.exit.i, !dbg !4876

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4877
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4879
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4880

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4881
  br label %kmalloc_index.exit.i, !dbg !4881

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4882
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4884
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4885

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4886
  br label %kmalloc_index.exit.i, !dbg !4886

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4887
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4889
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4890

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4891
  br label %kmalloc_index.exit.i, !dbg !4891

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4892
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4894
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4895

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4896
  br label %kmalloc_index.exit.i, !dbg !4896

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4897
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4899
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4900

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4901
  br label %kmalloc_index.exit.i, !dbg !4901

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4902
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4904
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4905

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4906
  br label %kmalloc_index.exit.i, !dbg !4906

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4907, !srcloc !4910
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #10, !dbg !4911, !srcloc !4914
  unreachable, !dbg !4915

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4916
  store i32 %45, i32* %index.i, align 4, !dbg !4917
  %46 = load i32, i32* %index.i, align 4, !dbg !4918
  %tobool.i = icmp ne i32 %46, 0, !dbg !4918
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4920

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4921
  br label %kmalloc.exit, !dbg !4921

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4922
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4923
  %and.i.i = and i32 %48, 17, !dbg !4923
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4923
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4923
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4923
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4923
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4925

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4926
  br label %kmalloc_type.exit.i, !dbg !4926

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4927
  %and2.i.i = and i32 %49, 1, !dbg !4928
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4927
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4927
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4927
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4929
  br label %kmalloc_type.exit.i, !dbg !4929

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4930
  %idxprom.i = zext i32 %51 to i64, !dbg !4931
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4931
  %52 = load i32, i32* %index.i, align 4, !dbg !4932
  %idxprom6.i = zext i32 %52 to i64, !dbg !4931
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4931
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4931
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4933
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4934
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4935
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4936
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4937
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4937
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4937
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4937
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4937
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4698
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4938
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4939
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4940
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4941
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4942
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4943
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4944
  store i8* %62, i8** %retval.i, align 8, !dbg !4945
  br label %kmalloc.exit, !dbg !4945

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4946
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4947
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4948
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4948
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4948
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4948
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4948
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4949
  br label %kmalloc.exit, !dbg !4949

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4950
  ret i8* %65, !dbg !4951
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_readreg(%struct.mt312_state* %state, i32 %reg, i8* %val) #0 !dbg !4952 {
entry:
  %state.addr = alloca %struct.mt312_state*, align 8
  %reg.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  store %struct.mt312_state* %state, %struct.mt312_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state.addr, metadata !4956, metadata !DIExpression()), !dbg !4957
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !4958, metadata !DIExpression()), !dbg !4959
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !4960, metadata !DIExpression()), !dbg !4961
  %0 = load %struct.mt312_state*, %struct.mt312_state** %state.addr, align 8, !dbg !4962
  %1 = load i32, i32* %reg.addr, align 4, !dbg !4963
  %2 = load i8*, i8** %val.addr, align 8, !dbg !4964
  %call = call i32 @mt312_read(%struct.mt312_state* %0, i32 %1, i8* %2, i64 1) #8, !dbg !4965
  ret i32 %call, !dbg !4966
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i64 @strscpy(i8*, i8*, i64) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

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
define internal i32 @get_order(i64 %size) #7 !dbg !4967 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4971, metadata !DIExpression()), !dbg !4976
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4978, metadata !DIExpression()), !dbg !4979
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4980, metadata !DIExpression()), !dbg !4981
  %0 = load i64, i64* %size.addr, align 8, !dbg !4982
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4984
  br i1 %1, label %if.then, label %if.end447, !dbg !4985

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4986
  %tobool = icmp ne i64 %2, 0, !dbg !4986
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4989

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4990
  br label %return, !dbg !4990

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4991
  %cmp = icmp ult i64 %3, 4096, !dbg !4993
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4994

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4995
  br label %return, !dbg !4995

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub = sub i64 %4, 1, !dbg !4996
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4996
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4996

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub4 = sub i64 %6, 1, !dbg !4996
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4996
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4996

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub6 = sub i64 %8, 1, !dbg !4996
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4996
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4996

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4996

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub9 = sub i64 %9, 1, !dbg !4996
  %and = and i64 %sub9, -9223372036854775808, !dbg !4996
  %tobool10 = icmp ne i64 %and, 0, !dbg !4996
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4996

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4996

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub13 = sub i64 %10, 1, !dbg !4996
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4996
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4996
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4996

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4996

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub18 = sub i64 %11, 1, !dbg !4996
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4996
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4996
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4996

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4996

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub23 = sub i64 %12, 1, !dbg !4996
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4996
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4996
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4996

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4996

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub28 = sub i64 %13, 1, !dbg !4996
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4996
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4996
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4996

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4996

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub33 = sub i64 %14, 1, !dbg !4996
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4996
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4996
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4996

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4996

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub38 = sub i64 %15, 1, !dbg !4996
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4996
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4996
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4996

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4996

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub43 = sub i64 %16, 1, !dbg !4996
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4996
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4996
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4996

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4996

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub48 = sub i64 %17, 1, !dbg !4996
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4996
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4996
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4996

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4996

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub53 = sub i64 %18, 1, !dbg !4996
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4996
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4996
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4996

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4996

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub58 = sub i64 %19, 1, !dbg !4996
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4996
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4996
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4996

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4996

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub63 = sub i64 %20, 1, !dbg !4996
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4996
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4996
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4996

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4996

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub68 = sub i64 %21, 1, !dbg !4996
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4996
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4996
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4996

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4996

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub73 = sub i64 %22, 1, !dbg !4996
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4996
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4996
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4996

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4996

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub78 = sub i64 %23, 1, !dbg !4996
  %and79 = and i64 %sub78, 562949953421312, !dbg !4996
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4996
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4996

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4996

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub83 = sub i64 %24, 1, !dbg !4996
  %and84 = and i64 %sub83, 281474976710656, !dbg !4996
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4996
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4996

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4996

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub88 = sub i64 %25, 1, !dbg !4996
  %and89 = and i64 %sub88, 140737488355328, !dbg !4996
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4996
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4996

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4996

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub93 = sub i64 %26, 1, !dbg !4996
  %and94 = and i64 %sub93, 70368744177664, !dbg !4996
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4996
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4996

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4996

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub98 = sub i64 %27, 1, !dbg !4996
  %and99 = and i64 %sub98, 35184372088832, !dbg !4996
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4996
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4996

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4996

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub103 = sub i64 %28, 1, !dbg !4996
  %and104 = and i64 %sub103, 17592186044416, !dbg !4996
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4996
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4996

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4996

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub108 = sub i64 %29, 1, !dbg !4996
  %and109 = and i64 %sub108, 8796093022208, !dbg !4996
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4996
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4996

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4996

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub113 = sub i64 %30, 1, !dbg !4996
  %and114 = and i64 %sub113, 4398046511104, !dbg !4996
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4996
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4996

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4996

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub118 = sub i64 %31, 1, !dbg !4996
  %and119 = and i64 %sub118, 2199023255552, !dbg !4996
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4996
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4996

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4996

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub123 = sub i64 %32, 1, !dbg !4996
  %and124 = and i64 %sub123, 1099511627776, !dbg !4996
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4996
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4996

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4996

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub128 = sub i64 %33, 1, !dbg !4996
  %and129 = and i64 %sub128, 549755813888, !dbg !4996
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4996
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4996

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4996

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub133 = sub i64 %34, 1, !dbg !4996
  %and134 = and i64 %sub133, 274877906944, !dbg !4996
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4996
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4996

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4996

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub138 = sub i64 %35, 1, !dbg !4996
  %and139 = and i64 %sub138, 137438953472, !dbg !4996
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4996
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4996

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4996

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub143 = sub i64 %36, 1, !dbg !4996
  %and144 = and i64 %sub143, 68719476736, !dbg !4996
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4996
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4996

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4996

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub148 = sub i64 %37, 1, !dbg !4996
  %and149 = and i64 %sub148, 34359738368, !dbg !4996
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4996
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4996

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4996

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub153 = sub i64 %38, 1, !dbg !4996
  %and154 = and i64 %sub153, 17179869184, !dbg !4996
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4996
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4996

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4996

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub158 = sub i64 %39, 1, !dbg !4996
  %and159 = and i64 %sub158, 8589934592, !dbg !4996
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4996
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4996

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4996

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub163 = sub i64 %40, 1, !dbg !4996
  %and164 = and i64 %sub163, 4294967296, !dbg !4996
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4996
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4996

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4996

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub168 = sub i64 %41, 1, !dbg !4996
  %and169 = and i64 %sub168, 2147483648, !dbg !4996
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4996
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4996

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4996

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub173 = sub i64 %42, 1, !dbg !4996
  %and174 = and i64 %sub173, 1073741824, !dbg !4996
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4996
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4996

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4996

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub178 = sub i64 %43, 1, !dbg !4996
  %and179 = and i64 %sub178, 536870912, !dbg !4996
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4996
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4996

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4996

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub183 = sub i64 %44, 1, !dbg !4996
  %and184 = and i64 %sub183, 268435456, !dbg !4996
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4996
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4996

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4996

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub188 = sub i64 %45, 1, !dbg !4996
  %and189 = and i64 %sub188, 134217728, !dbg !4996
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4996
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4996

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4996

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub193 = sub i64 %46, 1, !dbg !4996
  %and194 = and i64 %sub193, 67108864, !dbg !4996
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4996
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4996

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4996

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub198 = sub i64 %47, 1, !dbg !4996
  %and199 = and i64 %sub198, 33554432, !dbg !4996
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4996
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4996

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4996

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub203 = sub i64 %48, 1, !dbg !4996
  %and204 = and i64 %sub203, 16777216, !dbg !4996
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4996
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4996

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4996

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub208 = sub i64 %49, 1, !dbg !4996
  %and209 = and i64 %sub208, 8388608, !dbg !4996
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4996
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4996

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4996

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub213 = sub i64 %50, 1, !dbg !4996
  %and214 = and i64 %sub213, 4194304, !dbg !4996
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4996
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4996

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4996

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub218 = sub i64 %51, 1, !dbg !4996
  %and219 = and i64 %sub218, 2097152, !dbg !4996
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4996
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4996

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4996

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub223 = sub i64 %52, 1, !dbg !4996
  %and224 = and i64 %sub223, 1048576, !dbg !4996
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4996
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4996

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4996

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub228 = sub i64 %53, 1, !dbg !4996
  %and229 = and i64 %sub228, 524288, !dbg !4996
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4996
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4996

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4996

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub233 = sub i64 %54, 1, !dbg !4996
  %and234 = and i64 %sub233, 262144, !dbg !4996
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4996
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4996

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4996

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub238 = sub i64 %55, 1, !dbg !4996
  %and239 = and i64 %sub238, 131072, !dbg !4996
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4996
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4996

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4996

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub243 = sub i64 %56, 1, !dbg !4996
  %and244 = and i64 %sub243, 65536, !dbg !4996
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4996
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4996

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4996

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub248 = sub i64 %57, 1, !dbg !4996
  %and249 = and i64 %sub248, 32768, !dbg !4996
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4996
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4996

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4996

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub253 = sub i64 %58, 1, !dbg !4996
  %and254 = and i64 %sub253, 16384, !dbg !4996
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4996
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4996

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4996

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub258 = sub i64 %59, 1, !dbg !4996
  %and259 = and i64 %sub258, 8192, !dbg !4996
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4996
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4996

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4996

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub263 = sub i64 %60, 1, !dbg !4996
  %and264 = and i64 %sub263, 4096, !dbg !4996
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4996
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4996

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4996

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub268 = sub i64 %61, 1, !dbg !4996
  %and269 = and i64 %sub268, 2048, !dbg !4996
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4996
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4996

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4996

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub273 = sub i64 %62, 1, !dbg !4996
  %and274 = and i64 %sub273, 1024, !dbg !4996
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4996
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4996

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4996

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub278 = sub i64 %63, 1, !dbg !4996
  %and279 = and i64 %sub278, 512, !dbg !4996
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4996
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4996

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4996

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub283 = sub i64 %64, 1, !dbg !4996
  %and284 = and i64 %sub283, 256, !dbg !4996
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4996
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4996

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4996

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub288 = sub i64 %65, 1, !dbg !4996
  %and289 = and i64 %sub288, 128, !dbg !4996
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4996
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4996

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4996

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub293 = sub i64 %66, 1, !dbg !4996
  %and294 = and i64 %sub293, 64, !dbg !4996
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4996
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4996

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4996

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub298 = sub i64 %67, 1, !dbg !4996
  %and299 = and i64 %sub298, 32, !dbg !4996
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4996
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4996

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4996

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub303 = sub i64 %68, 1, !dbg !4996
  %and304 = and i64 %sub303, 16, !dbg !4996
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4996
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4996

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4996

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub308 = sub i64 %69, 1, !dbg !4996
  %and309 = and i64 %sub308, 8, !dbg !4996
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4996
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4996

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4996

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub313 = sub i64 %70, 1, !dbg !4996
  %and314 = and i64 %sub313, 4, !dbg !4996
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4996
  %71 = zext i1 %tobool315 to i64, !dbg !4996
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4996
  br label %cond.end, !dbg !4996

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4996
  br label %cond.end317, !dbg !4996

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4996
  br label %cond.end319, !dbg !4996

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4996
  br label %cond.end321, !dbg !4996

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4996
  br label %cond.end323, !dbg !4996

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4996
  br label %cond.end325, !dbg !4996

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4996
  br label %cond.end327, !dbg !4996

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4996
  br label %cond.end329, !dbg !4996

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4996
  br label %cond.end331, !dbg !4996

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4996
  br label %cond.end333, !dbg !4996

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4996
  br label %cond.end335, !dbg !4996

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4996
  br label %cond.end337, !dbg !4996

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4996
  br label %cond.end339, !dbg !4996

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4996
  br label %cond.end341, !dbg !4996

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4996
  br label %cond.end343, !dbg !4996

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4996
  br label %cond.end345, !dbg !4996

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4996
  br label %cond.end347, !dbg !4996

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4996
  br label %cond.end349, !dbg !4996

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4996
  br label %cond.end351, !dbg !4996

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4996
  br label %cond.end353, !dbg !4996

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4996
  br label %cond.end355, !dbg !4996

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4996
  br label %cond.end357, !dbg !4996

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4996
  br label %cond.end359, !dbg !4996

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4996
  br label %cond.end361, !dbg !4996

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4996
  br label %cond.end363, !dbg !4996

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4996
  br label %cond.end365, !dbg !4996

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4996
  br label %cond.end367, !dbg !4996

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4996
  br label %cond.end369, !dbg !4996

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4996
  br label %cond.end371, !dbg !4996

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4996
  br label %cond.end373, !dbg !4996

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4996
  br label %cond.end375, !dbg !4996

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4996
  br label %cond.end377, !dbg !4996

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4996
  br label %cond.end379, !dbg !4996

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4996
  br label %cond.end381, !dbg !4996

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4996
  br label %cond.end383, !dbg !4996

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4996
  br label %cond.end385, !dbg !4996

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4996
  br label %cond.end387, !dbg !4996

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4996
  br label %cond.end389, !dbg !4996

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4996
  br label %cond.end391, !dbg !4996

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4996
  br label %cond.end393, !dbg !4996

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4996
  br label %cond.end395, !dbg !4996

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4996
  br label %cond.end397, !dbg !4996

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4996
  br label %cond.end399, !dbg !4996

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4996
  br label %cond.end401, !dbg !4996

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4996
  br label %cond.end403, !dbg !4996

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4996
  br label %cond.end405, !dbg !4996

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4996
  br label %cond.end407, !dbg !4996

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4996
  br label %cond.end409, !dbg !4996

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4996
  br label %cond.end411, !dbg !4996

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4996
  br label %cond.end413, !dbg !4996

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4996
  br label %cond.end415, !dbg !4996

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4996
  br label %cond.end417, !dbg !4996

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4996
  br label %cond.end419, !dbg !4996

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4996
  br label %cond.end421, !dbg !4996

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4996
  br label %cond.end423, !dbg !4996

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4996
  br label %cond.end425, !dbg !4996

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4996
  br label %cond.end427, !dbg !4996

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4996
  br label %cond.end429, !dbg !4996

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4996
  br label %cond.end431, !dbg !4996

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4996
  br label %cond.end433, !dbg !4996

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4996
  br label %cond.end435, !dbg !4996

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4996
  br label %cond.end437, !dbg !4996

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4996
  br label %cond.end440, !dbg !4996

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4996

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4996
  br label %cond.end444, !dbg !4996

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4996
  %sub443 = sub i64 %72, 1, !dbg !4996
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4996
  br label %cond.end444, !dbg !4996

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4996
  %sub446 = sub i32 %cond445, 12, !dbg !4997
  %add = add i32 %sub446, 1, !dbg !4998
  store i32 %add, i32* %retval, align 4, !dbg !4999
  br label %return, !dbg !4999

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5000
  %dec = add i64 %73, -1, !dbg !5000
  store i64 %dec, i64* %size.addr, align 8, !dbg !5000
  %74 = load i64, i64* %size.addr, align 8, !dbg !5001
  %shr = lshr i64 %74, 12, !dbg !5001
  store i64 %shr, i64* %size.addr, align 8, !dbg !5001
  %75 = load i64, i64* %size.addr, align 8, !dbg !5002
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4979
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5003
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5004
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5003, !srcloc !5005
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5003
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5006
  %add.i = add i32 %79, 1, !dbg !5007
  store i32 %add.i, i32* %retval, align 4, !dbg !5008
  br label %return, !dbg !5008

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5009
  ret i32 %80, !dbg !5009
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5010 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4971, metadata !DIExpression()), !dbg !5014
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4978, metadata !DIExpression()), !dbg !5016
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5017, metadata !DIExpression()), !dbg !5018
  %0 = load i64, i64* %n.addr, align 8, !dbg !5019
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5016
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5020
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5021
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5020, !srcloc !5005
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5020
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5022
  %add.i = add i32 %4, 1, !dbg !5023
  %sub = sub i32 %add.i, 1, !dbg !5024
  ret i32 %sub, !dbg !5025
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5026 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5030, metadata !DIExpression()), !dbg !5031
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5032, metadata !DIExpression()), !dbg !5033
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5034, metadata !DIExpression()), !dbg !5035
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5036, metadata !DIExpression()), !dbg !5037
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5038
  ret i8* %0, !dbg !5039
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_read(%struct.mt312_state* %state, i32 %reg, i8* %buf, i64 %count) #0 !dbg !5040 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.mt312_state*, align 8
  %reg.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %msg = alloca [2 x %struct.i2c_msg], align 16
  %regbuf = alloca [1 x i8], align 1
  %i = alloca i32, align 4
  store %struct.mt312_state* %state, %struct.mt312_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state.addr, metadata !5044, metadata !DIExpression()), !dbg !5045
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5046, metadata !DIExpression()), !dbg !5047
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5048, metadata !DIExpression()), !dbg !5049
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5050, metadata !DIExpression()), !dbg !5051
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5052, metadata !DIExpression()), !dbg !5053
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !5054, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.declare(metadata [1 x i8]* %regbuf, metadata !5057, metadata !DIExpression()), !dbg !5059
  %arrayinit.begin = getelementptr inbounds [1 x i8], [1 x i8]* %regbuf, i64 0, i64 0, !dbg !5060
  %0 = load i32, i32* %reg.addr, align 4, !dbg !5061
  %conv = trunc i32 %0 to i8, !dbg !5061
  store i8 %conv, i8* %arrayinit.begin, align 1, !dbg !5060
  %1 = load %struct.mt312_state*, %struct.mt312_state** %state.addr, align 8, !dbg !5062
  %config = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %1, i32 0, i32 1, !dbg !5063
  %2 = load %struct.mt312_config*, %struct.mt312_config** %config, align 8, !dbg !5063
  %demod_address = getelementptr inbounds %struct.mt312_config, %struct.mt312_config* %2, i32 0, i32 0, !dbg !5064
  %3 = load i8, i8* %demod_address, align 4, !dbg !5064
  %conv1 = zext i8 %3 to i16, !dbg !5062
  %arrayidx = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !5065
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx, i32 0, i32 0, !dbg !5066
  store i16 %conv1, i16* %addr, align 16, !dbg !5067
  %arrayidx2 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !5068
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx2, i32 0, i32 1, !dbg !5069
  store i16 0, i16* %flags, align 2, !dbg !5070
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %regbuf, i64 0, i64 0, !dbg !5071
  %arrayidx3 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !5072
  %buf4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx3, i32 0, i32 3, !dbg !5073
  store i8* %arraydecay, i8** %buf4, align 8, !dbg !5074
  %arrayidx5 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !5075
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx5, i32 0, i32 2, !dbg !5076
  store i16 1, i16* %len, align 4, !dbg !5077
  %4 = load %struct.mt312_state*, %struct.mt312_state** %state.addr, align 8, !dbg !5078
  %config6 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %4, i32 0, i32 1, !dbg !5079
  %5 = load %struct.mt312_config*, %struct.mt312_config** %config6, align 8, !dbg !5079
  %demod_address7 = getelementptr inbounds %struct.mt312_config, %struct.mt312_config* %5, i32 0, i32 0, !dbg !5080
  %6 = load i8, i8* %demod_address7, align 4, !dbg !5080
  %conv8 = zext i8 %6 to i16, !dbg !5078
  %arrayidx9 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !5081
  %addr10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx9, i32 0, i32 0, !dbg !5082
  store i16 %conv8, i16* %addr10, align 16, !dbg !5083
  %arrayidx11 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !5084
  %flags12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx11, i32 0, i32 1, !dbg !5085
  store i16 1, i16* %flags12, align 2, !dbg !5086
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !5087
  %arrayidx13 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !5088
  %buf14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx13, i32 0, i32 3, !dbg !5089
  store i8* %7, i8** %buf14, align 8, !dbg !5090
  %8 = load i64, i64* %count.addr, align 8, !dbg !5091
  %conv15 = trunc i64 %8 to i16, !dbg !5091
  %arrayidx16 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !5092
  %len17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx16, i32 0, i32 2, !dbg !5093
  store i16 %conv15, i16* %len17, align 4, !dbg !5094
  %9 = load %struct.mt312_state*, %struct.mt312_state** %state.addr, align 8, !dbg !5095
  %i2c = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %9, i32 0, i32 0, !dbg !5096
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5096
  %arraydecay18 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !5097
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %10, %struct.i2c_msg* %arraydecay18, i32 2) #8, !dbg !5098
  store i32 %call, i32* %ret, align 4, !dbg !5099
  %11 = load i32, i32* %ret, align 4, !dbg !5100
  %cmp = icmp ne i32 %11, 2, !dbg !5102
  br i1 %cmp, label %if.then, label %if.end, !dbg !5103

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %ret, align 4, !dbg !5104
  %call20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.mt312_read, i64 0, i64 0), i32 %12) #9, !dbg !5106
  store i32 -121, i32* %retval, align 4, !dbg !5107
  br label %return, !dbg !5107

if.end:                                           ; preds = %entry
  %13 = load i32, i32* @debug, align 4, !dbg !5108
  %tobool = icmp ne i32 %13, 0, !dbg !5108
  br i1 %tobool, label %if.then21, label %if.end33, !dbg !5110

if.then21:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5111, metadata !DIExpression()), !dbg !5113
  br label %do.body, !dbg !5114

do.body:                                          ; preds = %if.then21
  %14 = load i32, i32* @debug, align 4, !dbg !5115
  %tobool22 = icmp ne i32 %14, 0, !dbg !5115
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !5118

if.then23:                                        ; preds = %do.body
  %15 = load i32, i32* %reg.addr, align 4, !dbg !5115
  %and = and i32 %15, 127, !dbg !5115
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %and) #9, !dbg !5115
  br label %if.end25, !dbg !5115

if.end25:                                         ; preds = %if.then23, %do.body
  br label %do.end, !dbg !5118

do.end:                                           ; preds = %if.end25
  store i32 0, i32* %i, align 4, !dbg !5119
  br label %for.cond, !dbg !5121

for.cond:                                         ; preds = %for.inc, %do.end
  %16 = load i32, i32* %i, align 4, !dbg !5122
  %conv26 = sext i32 %16 to i64, !dbg !5122
  %17 = load i64, i64* %count.addr, align 8, !dbg !5124
  %cmp27 = icmp ult i64 %conv26, %17, !dbg !5125
  br i1 %cmp27, label %for.body, label %for.end, !dbg !5126

for.body:                                         ; preds = %for.cond
  %18 = load i8*, i8** %buf.addr, align 8, !dbg !5127
  %19 = load i32, i32* %i, align 4, !dbg !5128
  %idxprom = sext i32 %19 to i64, !dbg !5127
  %arrayidx29 = getelementptr i8, i8* %18, i64 %idxprom, !dbg !5127
  %20 = load i8, i8* %arrayidx29, align 1, !dbg !5127
  %conv30 = zext i8 %20 to i32, !dbg !5127
  %call31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %conv30) #9, !dbg !5129
  br label %for.inc, !dbg !5129

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !5130
  %inc = add i32 %21, 1, !dbg !5130
  store i32 %inc, i32* %i, align 4, !dbg !5130
  br label %for.cond, !dbg !5131, !llvm.loop !5132

for.end:                                          ; preds = %for.cond
  %call32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !5134
  br label %if.end33, !dbg !5135

if.end33:                                         ; preds = %for.end, %if.end
  store i32 0, i32* %retval, align 4, !dbg !5136
  br label %return, !dbg !5136

return:                                           ; preds = %if.end33, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !5137
  ret i32 %22, !dbg !5137
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mt312_release(%struct.dvb_frontend* %fe) #0 !dbg !5138 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.mt312_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5139, metadata !DIExpression()), !dbg !5140
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state, metadata !5141, metadata !DIExpression()), !dbg !5142
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5143
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5144
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5144
  %2 = bitcast i8* %1 to %struct.mt312_state*, !dbg !5143
  store %struct.mt312_state* %2, %struct.mt312_state** %state, align 8, !dbg !5142
  %3 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5145
  %4 = bitcast %struct.mt312_state* %3 to i8*, !dbg !5145
  call void @kfree(i8* %4) #8, !dbg !5146
  ret void, !dbg !5147
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_initfe(%struct.dvb_frontend* %fe) #0 !dbg !5148 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.mt312_state*, align 8
  %ret = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  %buf_def = alloca [8 x i8], align 1
  %__x = alloca i64, align 8
  %__d = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__x46 = alloca i64, align 8
  %__d48 = alloca i32, align 4
  %tmp49 = alloca i64, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5149, metadata !DIExpression()), !dbg !5150
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state, metadata !5151, metadata !DIExpression()), !dbg !5152
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5153
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5154
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5154
  %2 = bitcast i8* %1 to %struct.mt312_state*, !dbg !5153
  store %struct.mt312_state* %2, %struct.mt312_state** %state, align 8, !dbg !5152
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5155, metadata !DIExpression()), !dbg !5156
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !5157, metadata !DIExpression()), !dbg !5159
  %3 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5160
  %4 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5161
  %freq_mult = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %4, i32 0, i32 5, !dbg !5162
  %5 = load i8, i8* %freq_mult, align 8, !dbg !5162
  %conv = zext i8 %5 to i32, !dbg !5161
  %cmp = icmp eq i32 %conv, 6, !dbg !5163
  %6 = zext i1 %cmp to i64, !dbg !5161
  %cond = select i1 %cmp, i32 136, i32 140, !dbg !5161
  %conv2 = trunc i32 %cond to i8, !dbg !5164
  %call = call i32 @mt312_writereg(%struct.mt312_state* %3, i32 127, i8 zeroext %conv2) #8, !dbg !5165
  store i32 %call, i32* %ret, align 4, !dbg !5166
  %7 = load i32, i32* %ret, align 4, !dbg !5167
  %cmp3 = icmp slt i32 %7, 0, !dbg !5169
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5170

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %ret, align 4, !dbg !5171
  store i32 %8, i32* %retval, align 4, !dbg !5172
  br label %return, !dbg !5172

if.end:                                           ; preds = %entry
  call void @__const_udelay(i64 644250) #8, !dbg !5173
  %9 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5178
  %call5 = call i32 @mt312_reset(%struct.mt312_state* %9, i8 zeroext 1) #8, !dbg !5179
  store i32 %call5, i32* %ret, align 4, !dbg !5180
  %10 = load i32, i32* %ret, align 4, !dbg !5181
  %cmp6 = icmp slt i32 %10, 0, !dbg !5183
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !5184

if.then8:                                         ; preds = %if.end
  %11 = load i32, i32* %ret, align 4, !dbg !5185
  store i32 %11, i32* %retval, align 4, !dbg !5186
  br label %return, !dbg !5186

if.end9:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata [8 x i8]* %buf_def, metadata !5187, metadata !DIExpression()), !dbg !5189
  %12 = bitcast [8 x i8]* %buf_def to i8*, !dbg !5189
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.mt312_initfe.buf_def, i32 0, i32 0), i64 8, i1 false), !dbg !5189
  %13 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5190
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %buf_def, i64 0, i64 0, !dbg !5191
  %call10 = call i32 @mt312_write(%struct.mt312_state* %13, i32 86, i8* %arraydecay, i64 8) #8, !dbg !5192
  store i32 %call10, i32* %ret, align 4, !dbg !5193
  %14 = load i32, i32* %ret, align 4, !dbg !5194
  %cmp11 = icmp slt i32 %14, 0, !dbg !5196
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !5197

if.then13:                                        ; preds = %if.end9
  %15 = load i32, i32* %ret, align 4, !dbg !5198
  store i32 %15, i32* %retval, align 4, !dbg !5199
  br label %return, !dbg !5199

if.end14:                                         ; preds = %if.end9
  %16 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5200
  %id = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %16, i32 0, i32 3, !dbg !5201
  %17 = load i8, i8* %id, align 8, !dbg !5201
  %conv15 = zext i8 %17 to i32, !dbg !5200
  switch i32 %conv15, label %sw.epilog [
    i32 5, label %sw.bb
  ], !dbg !5202

sw.bb:                                            ; preds = %if.end14
  %18 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5203
  %call16 = call i32 @mt312_writereg(%struct.mt312_state* %18, i32 20, i8 zeroext -128) #8, !dbg !5205
  store i32 %call16, i32* %ret, align 4, !dbg !5206
  %19 = load i32, i32* %ret, align 4, !dbg !5207
  %cmp17 = icmp slt i32 %19, 0, !dbg !5209
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !5210

if.then19:                                        ; preds = %sw.bb
  %20 = load i32, i32* %ret, align 4, !dbg !5211
  store i32 %20, i32* %retval, align 4, !dbg !5212
  br label %return, !dbg !5212

if.end20:                                         ; preds = %sw.bb
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5213
  store i8 -128, i8* %arrayidx, align 1, !dbg !5214
  %arrayidx21 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 1, !dbg !5215
  store i8 -80, i8* %arrayidx21, align 1, !dbg !5216
  %21 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5217
  %arraydecay22 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5218
  %call23 = call i32 @mt312_write(%struct.mt312_state* %21, i32 84, i8* %arraydecay22, i64 2) #8, !dbg !5219
  store i32 %call23, i32* %ret, align 4, !dbg !5220
  %22 = load i32, i32* %ret, align 4, !dbg !5221
  %cmp24 = icmp slt i32 %22, 0, !dbg !5223
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !5224

if.then26:                                        ; preds = %if.end20
  %23 = load i32, i32* %ret, align 4, !dbg !5225
  store i32 %23, i32* %retval, align 4, !dbg !5226
  br label %return, !dbg !5226

if.end27:                                         ; preds = %if.end20
  %24 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5227
  %call28 = call i32 @mt312_writereg(%struct.mt312_state* %24, i32 84, i8 zeroext 0) #8, !dbg !5228
  store i32 %call28, i32* %ret, align 4, !dbg !5229
  %25 = load i32, i32* %ret, align 4, !dbg !5230
  %cmp29 = icmp slt i32 %25, 0, !dbg !5232
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !5233

if.then31:                                        ; preds = %if.end27
  %26 = load i32, i32* %ret, align 4, !dbg !5234
  store i32 %26, i32* %retval, align 4, !dbg !5235
  br label %return, !dbg !5235

if.end32:                                         ; preds = %if.end27
  %27 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5236
  %call33 = call i32 @mt312_writereg(%struct.mt312_state* %27, i32 85, i8 zeroext 0) #8, !dbg !5237
  store i32 %call33, i32* %ret, align 4, !dbg !5238
  %28 = load i32, i32* %ret, align 4, !dbg !5239
  %cmp34 = icmp slt i32 %28, 0, !dbg !5241
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !5242

if.then36:                                        ; preds = %if.end32
  %29 = load i32, i32* %ret, align 4, !dbg !5243
  store i32 %29, i32* %retval, align 4, !dbg !5244
  br label %return, !dbg !5244

if.end37:                                         ; preds = %if.end32
  br label %sw.epilog, !dbg !5245

sw.epilog:                                        ; preds = %if.end14, %if.end37
  call void @llvm.dbg.declare(metadata i64* %__x, metadata !5246, metadata !DIExpression()), !dbg !5248
  %30 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5248
  %xtal = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %30, i32 0, i32 4, !dbg !5248
  %31 = load i64, i64* %xtal, align 8, !dbg !5248
  %32 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5248
  %freq_mult38 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %32, i32 0, i32 5, !dbg !5248
  %33 = load i8, i8* %freq_mult38, align 8, !dbg !5248
  %conv39 = zext i8 %33 to i64, !dbg !5248
  %mul = mul i64 %31, %conv39, !dbg !5248
  %mul40 = mul i64 %mul, 2, !dbg !5248
  store i64 %mul40, i64* %__x, align 8, !dbg !5248
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !5249, metadata !DIExpression()), !dbg !5248
  store i32 1000000, i32* %__d, align 4, !dbg !5248
  %34 = load i64, i64* %__x, align 8, !dbg !5248
  %35 = load i32, i32* %__d, align 4, !dbg !5248
  %div = sdiv i32 %35, 2, !dbg !5248
  %conv41 = sext i32 %div to i64, !dbg !5248
  %add = add i64 %34, %conv41, !dbg !5248
  %36 = load i32, i32* %__d, align 4, !dbg !5248
  %conv42 = sext i32 %36 to i64, !dbg !5248
  %div43 = udiv i64 %add, %conv42, !dbg !5248
  store i64 %div43, i64* %tmp, align 8, !dbg !5248
  %37 = load i64, i64* %tmp, align 8, !dbg !5248
  %conv44 = trunc i64 %37 to i8, !dbg !5250
  %arrayidx45 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5251
  store i8 %conv44, i8* %arrayidx45, align 1, !dbg !5252
  call void @llvm.dbg.declare(metadata i64* %__x46, metadata !5253, metadata !DIExpression()), !dbg !5255
  %38 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5255
  %xtal47 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %38, i32 0, i32 4, !dbg !5255
  %39 = load i64, i64* %xtal47, align 8, !dbg !5255
  store i64 %39, i64* %__x46, align 8, !dbg !5255
  call void @llvm.dbg.declare(metadata i32* %__d48, metadata !5256, metadata !DIExpression()), !dbg !5255
  store i32 88000, i32* %__d48, align 4, !dbg !5255
  %40 = load i64, i64* %__x46, align 8, !dbg !5255
  %41 = load i32, i32* %__d48, align 4, !dbg !5255
  %div50 = sdiv i32 %41, 2, !dbg !5255
  %conv51 = sext i32 %div50 to i64, !dbg !5255
  %add52 = add i64 %40, %conv51, !dbg !5255
  %42 = load i32, i32* %__d48, align 4, !dbg !5255
  %conv53 = sext i32 %42 to i64, !dbg !5255
  %div54 = udiv i64 %add52, %conv53, !dbg !5255
  store i64 %div54, i64* %tmp49, align 8, !dbg !5255
  %43 = load i64, i64* %tmp49, align 8, !dbg !5255
  %conv55 = trunc i64 %43 to i8, !dbg !5257
  %arrayidx56 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 1, !dbg !5258
  store i8 %conv55, i8* %arrayidx56, align 1, !dbg !5259
  %44 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5260
  %arraydecay57 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5261
  %call58 = call i32 @mt312_write(%struct.mt312_state* %44, i32 34, i8* %arraydecay57, i64 2) #8, !dbg !5262
  store i32 %call58, i32* %ret, align 4, !dbg !5263
  %45 = load i32, i32* %ret, align 4, !dbg !5264
  %cmp59 = icmp slt i32 %45, 0, !dbg !5266
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !5267

if.then61:                                        ; preds = %sw.epilog
  %46 = load i32, i32* %ret, align 4, !dbg !5268
  store i32 %46, i32* %retval, align 4, !dbg !5269
  br label %return, !dbg !5269

if.end62:                                         ; preds = %sw.epilog
  %47 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5270
  %call63 = call i32 @mt312_writereg(%struct.mt312_state* %47, i32 49, i8 zeroext 50) #8, !dbg !5271
  store i32 %call63, i32* %ret, align 4, !dbg !5272
  %48 = load i32, i32* %ret, align 4, !dbg !5273
  %cmp64 = icmp slt i32 %48, 0, !dbg !5275
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !5276

if.then66:                                        ; preds = %if.end62
  %49 = load i32, i32* %ret, align 4, !dbg !5277
  store i32 %49, i32* %retval, align 4, !dbg !5278
  br label %return, !dbg !5278

if.end67:                                         ; preds = %if.end62
  %50 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5279
  %id68 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %50, i32 0, i32 3, !dbg !5280
  %51 = load i8, i8* %id68, align 8, !dbg !5280
  %conv69 = zext i8 %51 to i32, !dbg !5279
  switch i32 %conv69, label %sw.default [
    i32 5, label %sw.bb70
  ], !dbg !5281

sw.bb70:                                          ; preds = %if.end67
  %arrayidx71 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5282
  store i8 51, i8* %arrayidx71, align 1, !dbg !5284
  br label %sw.epilog73, !dbg !5285

sw.default:                                       ; preds = %if.end67
  %arrayidx72 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5286
  store i8 83, i8* %arrayidx72, align 1, !dbg !5287
  br label %sw.epilog73, !dbg !5288

sw.epilog73:                                      ; preds = %sw.default, %sw.bb70
  %52 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5289
  %arrayidx74 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5290
  %53 = load i8, i8* %arrayidx74, align 1, !dbg !5290
  %call75 = call i32 @mt312_writereg(%struct.mt312_state* %52, i32 96, i8 zeroext %53) #8, !dbg !5291
  store i32 %call75, i32* %ret, align 4, !dbg !5292
  %54 = load i32, i32* %ret, align 4, !dbg !5293
  %cmp76 = icmp slt i32 %54, 0, !dbg !5295
  br i1 %cmp76, label %if.then78, label %if.end79, !dbg !5296

if.then78:                                        ; preds = %sw.epilog73
  %55 = load i32, i32* %ret, align 4, !dbg !5297
  store i32 %55, i32* %retval, align 4, !dbg !5298
  br label %return, !dbg !5298

if.end79:                                         ; preds = %sw.epilog73
  %arrayidx80 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5299
  store i8 -116, i8* %arrayidx80, align 1, !dbg !5300
  %arrayidx81 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 1, !dbg !5301
  store i8 -104, i8* %arrayidx81, align 1, !dbg !5302
  %56 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5303
  %arraydecay82 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5304
  %call83 = call i32 @mt312_write(%struct.mt312_state* %56, i32 51, i8* %arraydecay82, i64 2) #8, !dbg !5305
  store i32 %call83, i32* %ret, align 4, !dbg !5306
  %57 = load i32, i32* %ret, align 4, !dbg !5307
  %cmp84 = icmp slt i32 %57, 0, !dbg !5309
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !5310

if.then86:                                        ; preds = %if.end79
  %58 = load i32, i32* %ret, align 4, !dbg !5311
  store i32 %58, i32* %retval, align 4, !dbg !5312
  br label %return, !dbg !5312

if.end87:                                         ; preds = %if.end79
  %59 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5313
  %call88 = call i32 @mt312_writereg(%struct.mt312_state* %59, i32 57, i8 zeroext 105) #8, !dbg !5314
  store i32 %call88, i32* %ret, align 4, !dbg !5315
  %60 = load i32, i32* %ret, align 4, !dbg !5316
  %cmp89 = icmp slt i32 %60, 0, !dbg !5318
  br i1 %cmp89, label %if.then91, label %if.end92, !dbg !5319

if.then91:                                        ; preds = %if.end87
  %61 = load i32, i32* %ret, align 4, !dbg !5320
  store i32 %61, i32* %retval, align 4, !dbg !5321
  br label %return, !dbg !5321

if.end92:                                         ; preds = %if.end87
  store i32 0, i32* %retval, align 4, !dbg !5322
  br label %return, !dbg !5322

return:                                           ; preds = %if.end92, %if.then91, %if.then86, %if.then78, %if.then66, %if.then61, %if.then36, %if.then31, %if.then26, %if.then19, %if.then13, %if.then8, %if.then
  %62 = load i32, i32* %retval, align 4, !dbg !5323
  ret i32 %62, !dbg !5323
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_sleep(%struct.dvb_frontend* %fe) #0 !dbg !5324 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.mt312_state*, align 8
  %ret = alloca i32, align 4
  %config = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5325, metadata !DIExpression()), !dbg !5326
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state, metadata !5327, metadata !DIExpression()), !dbg !5328
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5329
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5330
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5330
  %2 = bitcast i8* %1 to %struct.mt312_state*, !dbg !5329
  store %struct.mt312_state* %2, %struct.mt312_state** %state, align 8, !dbg !5328
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5331, metadata !DIExpression()), !dbg !5332
  call void @llvm.dbg.declare(metadata i8* %config, metadata !5333, metadata !DIExpression()), !dbg !5334
  %3 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5335
  %call = call i32 @mt312_reset(%struct.mt312_state* %3, i8 zeroext 1) #8, !dbg !5336
  store i32 %call, i32* %ret, align 4, !dbg !5337
  %4 = load i32, i32* %ret, align 4, !dbg !5338
  %cmp = icmp slt i32 %4, 0, !dbg !5340
  br i1 %cmp, label %if.then, label %if.end, !dbg !5341

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !5342
  store i32 %5, i32* %retval, align 4, !dbg !5343
  br label %return, !dbg !5343

if.end:                                           ; preds = %entry
  %6 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5344
  %id = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %6, i32 0, i32 3, !dbg !5346
  %7 = load i8, i8* %id, align 8, !dbg !5346
  %conv = zext i8 %7 to i32, !dbg !5344
  %cmp1 = icmp eq i32 %conv, 5, !dbg !5347
  br i1 %cmp1, label %if.then3, label %if.end14, !dbg !5348

if.then3:                                         ; preds = %if.end
  %8 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5349
  %call4 = call i32 @mt312_writereg(%struct.mt312_state* %8, i32 20, i8 zeroext 0) #8, !dbg !5351
  store i32 %call4, i32* %ret, align 4, !dbg !5352
  %9 = load i32, i32* %ret, align 4, !dbg !5353
  %cmp5 = icmp slt i32 %9, 0, !dbg !5355
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !5356

if.then7:                                         ; preds = %if.then3
  %10 = load i32, i32* %ret, align 4, !dbg !5357
  store i32 %10, i32* %retval, align 4, !dbg !5358
  br label %return, !dbg !5358

if.end8:                                          ; preds = %if.then3
  %11 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5359
  %call9 = call i32 @mt312_writereg(%struct.mt312_state* %11, i32 84, i8 zeroext 13) #8, !dbg !5360
  store i32 %call9, i32* %ret, align 4, !dbg !5361
  %12 = load i32, i32* %ret, align 4, !dbg !5362
  %cmp10 = icmp slt i32 %12, 0, !dbg !5364
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !5365

if.then12:                                        ; preds = %if.end8
  %13 = load i32, i32* %ret, align 4, !dbg !5366
  store i32 %13, i32* %retval, align 4, !dbg !5367
  br label %return, !dbg !5367

if.end13:                                         ; preds = %if.end8
  br label %if.end14, !dbg !5368

if.end14:                                         ; preds = %if.end13, %if.end
  %14 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5369
  %call15 = call i32 @mt312_readreg(%struct.mt312_state* %14, i32 127, i8* %config) #8, !dbg !5370
  store i32 %call15, i32* %ret, align 4, !dbg !5371
  %15 = load i32, i32* %ret, align 4, !dbg !5372
  %cmp16 = icmp slt i32 %15, 0, !dbg !5374
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !5375

if.then18:                                        ; preds = %if.end14
  %16 = load i32, i32* %ret, align 4, !dbg !5376
  store i32 %16, i32* %retval, align 4, !dbg !5377
  br label %return, !dbg !5377

if.end19:                                         ; preds = %if.end14
  %17 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5378
  %18 = load i8, i8* %config, align 1, !dbg !5379
  %conv20 = zext i8 %18 to i32, !dbg !5379
  %and = and i32 %conv20, 127, !dbg !5380
  %conv21 = trunc i32 %and to i8, !dbg !5379
  %call22 = call i32 @mt312_writereg(%struct.mt312_state* %17, i32 127, i8 zeroext %conv21) #8, !dbg !5381
  store i32 %call22, i32* %ret, align 4, !dbg !5382
  %19 = load i32, i32* %ret, align 4, !dbg !5383
  %cmp23 = icmp slt i32 %19, 0, !dbg !5385
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !5386

if.then25:                                        ; preds = %if.end19
  %20 = load i32, i32* %ret, align 4, !dbg !5387
  store i32 %20, i32* %retval, align 4, !dbg !5388
  br label %return, !dbg !5388

if.end26:                                         ; preds = %if.end19
  store i32 0, i32* %retval, align 4, !dbg !5389
  br label %return, !dbg !5389

return:                                           ; preds = %if.end26, %if.then25, %if.then18, %if.then12, %if.then7, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !5390
  ret i32 %21, !dbg !5390
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_set_frontend(%struct.dvb_frontend* %fe) #0 !dbg !5391 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.mt312_state*, align 8
  %ret = alloca i32, align 4
  %buf = alloca [5 x i8], align 1
  %config_val = alloca i8, align 1
  %sr = alloca i16, align 2
  %fec_tab = alloca [10 x i8], align 1
  %inv_tab = alloca [3 x i8], align 1
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5392, metadata !DIExpression()), !dbg !5393
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !5394, metadata !DIExpression()), !dbg !5395
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5396
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5397
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !5395
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state, metadata !5398, metadata !DIExpression()), !dbg !5399
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5400
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 3, !dbg !5401
  %2 = load i8*, i8** %demodulator_priv, align 8, !dbg !5401
  %3 = bitcast i8* %2 to %struct.mt312_state*, !dbg !5400
  store %struct.mt312_state* %3, %struct.mt312_state** %state, align 8, !dbg !5399
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5402, metadata !DIExpression()), !dbg !5403
  call void @llvm.dbg.declare(metadata [5 x i8]* %buf, metadata !5404, metadata !DIExpression()), !dbg !5408
  call void @llvm.dbg.declare(metadata i8* %config_val, metadata !5409, metadata !DIExpression()), !dbg !5410
  call void @llvm.dbg.declare(metadata i16* %sr, metadata !5411, metadata !DIExpression()), !dbg !5412
  call void @llvm.dbg.declare(metadata [10 x i8]* %fec_tab, metadata !5413, metadata !DIExpression()), !dbg !5417
  %4 = bitcast [10 x i8]* %fec_tab to i8*, !dbg !5417
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.mt312_set_frontend.fec_tab, i32 0, i32 0), i64 10, i1 false), !dbg !5417
  call void @llvm.dbg.declare(metadata [3 x i8]* %inv_tab, metadata !5418, metadata !DIExpression()), !dbg !5420
  %5 = bitcast [3 x i8]* %inv_tab to i8*, !dbg !5420
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.mt312_set_frontend.inv_tab, i32 0, i32 0), i64 3, i1 false), !dbg !5420
  br label %do.body, !dbg !5421

do.body:                                          ; preds = %entry
  %6 = load i32, i32* @debug, align 4, !dbg !5422
  %tobool = icmp ne i32 %6, 0, !dbg !5422
  br i1 %tobool, label %if.then, label %if.end, !dbg !5425

if.then:                                          ; preds = %do.body
  %7 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5422
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %7, i32 0, i32 0, !dbg !5422
  %8 = load i32, i32* %frequency, align 4, !dbg !5422
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.mt312_set_frontend, i64 0, i64 0), i32 %8) #9, !dbg !5422
  br label %if.end, !dbg !5422

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5425

do.end:                                           ; preds = %if.end
  %9 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5426
  %frequency1 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %9, i32 0, i32 0, !dbg !5428
  %10 = load i32, i32* %frequency1, align 4, !dbg !5428
  %conv = zext i32 %10 to i64, !dbg !5426
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5429
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1, !dbg !5430
  %info = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 0, !dbg !5431
  %frequency_min_hz = getelementptr inbounds %struct.dvb_frontend_internal_info, %struct.dvb_frontend_internal_info* %info, i32 0, i32 1, !dbg !5432
  %12 = load i32, i32* %frequency_min_hz, align 8, !dbg !5432
  %conv2 = zext i32 %12 to i64, !dbg !5429
  %div = udiv i64 %conv2, 1000, !dbg !5433
  %cmp = icmp ult i64 %conv, %div, !dbg !5434
  br i1 %cmp, label %if.then12, label %lor.lhs.false, !dbg !5435

lor.lhs.false:                                    ; preds = %do.end
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5436
  %frequency4 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 0, !dbg !5437
  %14 = load i32, i32* %frequency4, align 4, !dbg !5437
  %conv5 = zext i32 %14 to i64, !dbg !5436
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5438
  %ops6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 1, !dbg !5439
  %info7 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops6, i32 0, i32 0, !dbg !5440
  %frequency_max_hz = getelementptr inbounds %struct.dvb_frontend_internal_info, %struct.dvb_frontend_internal_info* %info7, i32 0, i32 2, !dbg !5441
  %16 = load i32, i32* %frequency_max_hz, align 4, !dbg !5441
  %conv8 = zext i32 %16 to i64, !dbg !5438
  %div9 = udiv i64 %conv8, 1000, !dbg !5442
  %cmp10 = icmp ugt i64 %conv5, %div9, !dbg !5443
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !5444

if.then12:                                        ; preds = %lor.lhs.false, %do.end
  store i32 -22, i32* %retval, align 4, !dbg !5445
  br label %return, !dbg !5445

if.end13:                                         ; preds = %lor.lhs.false
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5446
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 4, !dbg !5448
  %18 = load i32, i32* %inversion, align 4, !dbg !5448
  %cmp14 = icmp slt i32 %18, 0, !dbg !5449
  br i1 %cmp14, label %if.then20, label %lor.lhs.false16, !dbg !5450

lor.lhs.false16:                                  ; preds = %if.end13
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5451
  %inversion17 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 4, !dbg !5452
  %20 = load i32, i32* %inversion17, align 4, !dbg !5452
  %cmp18 = icmp ugt i32 %20, 1, !dbg !5453
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5454

if.then20:                                        ; preds = %lor.lhs.false16, %if.end13
  store i32 -22, i32* %retval, align 4, !dbg !5455
  br label %return, !dbg !5455

if.end21:                                         ; preds = %lor.lhs.false16
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5456
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 10, !dbg !5458
  %22 = load i32, i32* %symbol_rate, align 4, !dbg !5458
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5459
  %ops22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %23, i32 0, i32 1, !dbg !5460
  %info23 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops22, i32 0, i32 0, !dbg !5461
  %symbol_rate_min = getelementptr inbounds %struct.dvb_frontend_internal_info, %struct.dvb_frontend_internal_info* %info23, i32 0, i32 5, !dbg !5462
  %24 = load i32, i32* %symbol_rate_min, align 8, !dbg !5462
  %cmp24 = icmp ult i32 %22, %24, !dbg !5463
  br i1 %cmp24, label %if.then32, label %lor.lhs.false26, !dbg !5464

lor.lhs.false26:                                  ; preds = %if.end21
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5465
  %symbol_rate27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 10, !dbg !5466
  %26 = load i32, i32* %symbol_rate27, align 4, !dbg !5466
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5467
  %ops28 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 1, !dbg !5468
  %info29 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops28, i32 0, i32 0, !dbg !5469
  %symbol_rate_max = getelementptr inbounds %struct.dvb_frontend_internal_info, %struct.dvb_frontend_internal_info* %info29, i32 0, i32 6, !dbg !5470
  %28 = load i32, i32* %symbol_rate_max, align 4, !dbg !5470
  %cmp30 = icmp ugt i32 %26, %28, !dbg !5471
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !5472

if.then32:                                        ; preds = %lor.lhs.false26, %if.end21
  store i32 -22, i32* %retval, align 4, !dbg !5473
  br label %return, !dbg !5473

if.end33:                                         ; preds = %lor.lhs.false26
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5474
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 5, !dbg !5476
  %30 = load i32, i32* %fec_inner, align 4, !dbg !5476
  %cmp34 = icmp slt i32 %30, 0, !dbg !5477
  br i1 %cmp34, label %if.then40, label %lor.lhs.false36, !dbg !5478

lor.lhs.false36:                                  ; preds = %if.end33
  %31 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5479
  %fec_inner37 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %31, i32 0, i32 5, !dbg !5480
  %32 = load i32, i32* %fec_inner37, align 4, !dbg !5480
  %cmp38 = icmp ugt i32 %32, 9, !dbg !5481
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !5482

if.then40:                                        ; preds = %lor.lhs.false36, %if.end33
  store i32 -22, i32* %retval, align 4, !dbg !5483
  br label %return, !dbg !5483

if.end41:                                         ; preds = %lor.lhs.false36
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5484
  %fec_inner42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 5, !dbg !5486
  %34 = load i32, i32* %fec_inner42, align 4, !dbg !5486
  %cmp43 = icmp eq i32 %34, 4, !dbg !5487
  br i1 %cmp43, label %if.then49, label %lor.lhs.false45, !dbg !5488

lor.lhs.false45:                                  ; preds = %if.end41
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5489
  %fec_inner46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 5, !dbg !5490
  %36 = load i32, i32* %fec_inner46, align 4, !dbg !5490
  %cmp47 = icmp eq i32 %36, 8, !dbg !5491
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !5492

if.then49:                                        ; preds = %lor.lhs.false45, %if.end41
  store i32 -22, i32* %retval, align 4, !dbg !5493
  br label %return, !dbg !5493

if.end50:                                         ; preds = %lor.lhs.false45
  %37 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5494
  %id = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %37, i32 0, i32 3, !dbg !5495
  %38 = load i8, i8* %id, align 8, !dbg !5495
  %conv51 = zext i8 %38 to i32, !dbg !5494
  switch i32 %conv51, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb85
    i32 5, label %sw.bb85
  ], !dbg !5496

sw.bb:                                            ; preds = %if.end50
  %39 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5497
  %call52 = call i32 @mt312_readreg(%struct.mt312_state* %39, i32 127, i8* %config_val) #8, !dbg !5499
  store i32 %call52, i32* %ret, align 4, !dbg !5500
  %40 = load i32, i32* %ret, align 4, !dbg !5501
  %cmp53 = icmp slt i32 %40, 0, !dbg !5503
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !5504

if.then55:                                        ; preds = %sw.bb
  %41 = load i32, i32* %ret, align 4, !dbg !5505
  store i32 %41, i32* %retval, align 4, !dbg !5506
  br label %return, !dbg !5506

if.end56:                                         ; preds = %sw.bb
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5507
  %symbol_rate57 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 10, !dbg !5509
  %43 = load i32, i32* %symbol_rate57, align 4, !dbg !5509
  %cmp58 = icmp uge i32 %43, 30000000, !dbg !5510
  br i1 %cmp58, label %if.then60, label %if.else, !dbg !5511

if.then60:                                        ; preds = %if.end56
  %44 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5512
  %freq_mult = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %44, i32 0, i32 5, !dbg !5515
  %45 = load i8, i8* %freq_mult, align 8, !dbg !5515
  %conv61 = zext i8 %45 to i32, !dbg !5512
  %cmp62 = icmp eq i32 %conv61, 6, !dbg !5516
  br i1 %cmp62, label %if.then64, label %if.end71, !dbg !5517

if.then64:                                        ; preds = %if.then60
  %46 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5518
  %freq_mult65 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %46, i32 0, i32 5, !dbg !5520
  store i8 9, i8* %freq_mult65, align 8, !dbg !5521
  %47 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5522
  %call66 = call i32 @mt312_initfe(%struct.dvb_frontend* %47) #8, !dbg !5523
  store i32 %call66, i32* %ret, align 4, !dbg !5524
  %48 = load i32, i32* %ret, align 4, !dbg !5525
  %cmp67 = icmp slt i32 %48, 0, !dbg !5527
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !5528

if.then69:                                        ; preds = %if.then64
  %49 = load i32, i32* %ret, align 4, !dbg !5529
  store i32 %49, i32* %retval, align 4, !dbg !5530
  br label %return, !dbg !5530

if.end70:                                         ; preds = %if.then64
  br label %if.end71, !dbg !5531

if.end71:                                         ; preds = %if.end70, %if.then60
  br label %if.end84, !dbg !5532

if.else:                                          ; preds = %if.end56
  %50 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5533
  %freq_mult72 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %50, i32 0, i32 5, !dbg !5536
  %51 = load i8, i8* %freq_mult72, align 8, !dbg !5536
  %conv73 = zext i8 %51 to i32, !dbg !5533
  %cmp74 = icmp eq i32 %conv73, 9, !dbg !5537
  br i1 %cmp74, label %if.then76, label %if.end83, !dbg !5538

if.then76:                                        ; preds = %if.else
  %52 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5539
  %freq_mult77 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %52, i32 0, i32 5, !dbg !5541
  store i8 6, i8* %freq_mult77, align 8, !dbg !5542
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5543
  %call78 = call i32 @mt312_initfe(%struct.dvb_frontend* %53) #8, !dbg !5544
  store i32 %call78, i32* %ret, align 4, !dbg !5545
  %54 = load i32, i32* %ret, align 4, !dbg !5546
  %cmp79 = icmp slt i32 %54, 0, !dbg !5548
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !5549

if.then81:                                        ; preds = %if.then76
  %55 = load i32, i32* %ret, align 4, !dbg !5550
  store i32 %55, i32* %retval, align 4, !dbg !5551
  br label %return, !dbg !5551

if.end82:                                         ; preds = %if.then76
  br label %if.end83, !dbg !5552

if.end83:                                         ; preds = %if.end82, %if.else
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end71
  br label %sw.epilog, !dbg !5553

sw.bb85:                                          ; preds = %if.end50, %if.end50
  br label %sw.epilog, !dbg !5554

sw.default:                                       ; preds = %if.end50
  store i32 -22, i32* %retval, align 4, !dbg !5555
  br label %return, !dbg !5555

sw.epilog:                                        ; preds = %sw.bb85, %if.end84
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5556
  %ops86 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %56, i32 0, i32 1, !dbg !5558
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops86, i32 0, i32 30, !dbg !5559
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5560
  %57 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5560
  %tobool87 = icmp ne i32 (%struct.dvb_frontend*)* %57, null, !dbg !5556
  br i1 %tobool87, label %if.then88, label %if.end100, !dbg !5561

if.then88:                                        ; preds = %sw.epilog
  %58 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5562
  %ops89 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %58, i32 0, i32 1, !dbg !5564
  %tuner_ops90 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops89, i32 0, i32 30, !dbg !5565
  %set_params91 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops90, i32 0, i32 6, !dbg !5566
  %59 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params91, align 8, !dbg !5566
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5567
  %call92 = call i32 %59(%struct.dvb_frontend* %60) #8, !dbg !5562
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5568
  %ops93 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %61, i32 0, i32 1, !dbg !5570
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops93, i32 0, i32 26, !dbg !5571
  %62 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5571
  %tobool94 = icmp ne i32 (%struct.dvb_frontend*, i32)* %62, null, !dbg !5568
  br i1 %tobool94, label %if.then95, label %if.end99, !dbg !5572

if.then95:                                        ; preds = %if.then88
  %63 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5573
  %ops96 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %63, i32 0, i32 1, !dbg !5574
  %i2c_gate_ctrl97 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops96, i32 0, i32 26, !dbg !5575
  %64 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl97, align 8, !dbg !5575
  %65 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5576
  %call98 = call i32 %64(%struct.dvb_frontend* %65, i32 0) #8, !dbg !5573
  br label %if.end99, !dbg !5573

if.end99:                                         ; preds = %if.then95, %if.then88
  br label %if.end100, !dbg !5577

if.end100:                                        ; preds = %if.end99, %sw.epilog
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !5578, metadata !DIExpression()), !dbg !5580
  %66 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5580
  %symbol_rate101 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %66, i32 0, i32 10, !dbg !5580
  %67 = load i32, i32* %symbol_rate101, align 4, !dbg !5580
  %mul = mul i32 %67, 4, !dbg !5580
  store i32 %mul, i32* %__x, align 4, !dbg !5580
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !5581, metadata !DIExpression()), !dbg !5580
  store i32 15625, i32* %__d, align 4, !dbg !5580
  %68 = load i32, i32* %__x, align 4, !dbg !5580
  %69 = load i32, i32* %__d, align 4, !dbg !5580
  %div102 = sdiv i32 %69, 2, !dbg !5580
  %add = add i32 %68, %div102, !dbg !5580
  %70 = load i32, i32* %__d, align 4, !dbg !5580
  %div103 = udiv i32 %add, %70, !dbg !5580
  store i32 %div103, i32* %tmp, align 4, !dbg !5580
  %71 = load i32, i32* %tmp, align 4, !dbg !5580
  %conv104 = trunc i32 %71 to i16, !dbg !5582
  store i16 %conv104, i16* %sr, align 2, !dbg !5583
  %72 = load i16, i16* %sr, align 2, !dbg !5584
  %conv105 = zext i16 %72 to i32, !dbg !5584
  %shr = ashr i32 %conv105, 8, !dbg !5585
  %and = and i32 %shr, 63, !dbg !5586
  %conv106 = trunc i32 %and to i8, !dbg !5587
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5588
  store i8 %conv106, i8* %arrayidx, align 1, !dbg !5589
  %73 = load i16, i16* %sr, align 2, !dbg !5590
  %conv107 = zext i16 %73 to i32, !dbg !5590
  %shr108 = ashr i32 %conv107, 0, !dbg !5591
  %and109 = and i32 %shr108, 255, !dbg !5592
  %conv110 = trunc i32 %and109 to i8, !dbg !5593
  %arrayidx111 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 1, !dbg !5594
  store i8 %conv110, i8* %arrayidx111, align 1, !dbg !5595
  %74 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5596
  %inversion112 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %74, i32 0, i32 4, !dbg !5597
  %75 = load i32, i32* %inversion112, align 4, !dbg !5597
  %idxprom = zext i32 %75 to i64, !dbg !5598
  %arrayidx113 = getelementptr [3 x i8], [3 x i8]* %inv_tab, i64 0, i64 %idxprom, !dbg !5598
  %76 = load i8, i8* %arrayidx113, align 1, !dbg !5598
  %conv114 = zext i8 %76 to i32, !dbg !5598
  %77 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5599
  %fec_inner115 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %77, i32 0, i32 5, !dbg !5600
  %78 = load i32, i32* %fec_inner115, align 4, !dbg !5600
  %idxprom116 = zext i32 %78 to i64, !dbg !5601
  %arrayidx117 = getelementptr [10 x i8], [10 x i8]* %fec_tab, i64 0, i64 %idxprom116, !dbg !5601
  %79 = load i8, i8* %arrayidx117, align 1, !dbg !5601
  %conv118 = zext i8 %79 to i32, !dbg !5601
  %or = or i32 %conv114, %conv118, !dbg !5602
  %conv119 = trunc i32 %or to i8, !dbg !5598
  %arrayidx120 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 2, !dbg !5603
  store i8 %conv119, i8* %arrayidx120, align 1, !dbg !5604
  %arrayidx121 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 3, !dbg !5605
  store i8 64, i8* %arrayidx121, align 1, !dbg !5606
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5607
  %symbol_rate122 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 10, !dbg !5609
  %81 = load i32, i32* %symbol_rate122, align 4, !dbg !5609
  %cmp123 = icmp ult i32 %81, 10000000, !dbg !5610
  br i1 %cmp123, label %if.then125, label %if.end130, !dbg !5611

if.then125:                                       ; preds = %if.end100
  %arrayidx126 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 3, !dbg !5612
  %82 = load i8, i8* %arrayidx126, align 1, !dbg !5613
  %conv127 = zext i8 %82 to i32, !dbg !5613
  %or128 = or i32 %conv127, 4, !dbg !5613
  %conv129 = trunc i32 %or128 to i8, !dbg !5613
  store i8 %conv129, i8* %arrayidx126, align 1, !dbg !5613
  br label %if.end130, !dbg !5612

if.end130:                                        ; preds = %if.then125, %if.end100
  %arrayidx131 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 4, !dbg !5614
  store i8 1, i8* %arrayidx131, align 1, !dbg !5615
  %83 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5616
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5617
  %call132 = call i32 @mt312_write(%struct.mt312_state* %83, i32 23, i8* %arraydecay, i64 5) #8, !dbg !5618
  store i32 %call132, i32* %ret, align 4, !dbg !5619
  %84 = load i32, i32* %ret, align 4, !dbg !5620
  %cmp133 = icmp slt i32 %84, 0, !dbg !5622
  br i1 %cmp133, label %if.then135, label %if.end136, !dbg !5623

if.then135:                                       ; preds = %if.end130
  %85 = load i32, i32* %ret, align 4, !dbg !5624
  store i32 %85, i32* %retval, align 4, !dbg !5625
  br label %return, !dbg !5625

if.end136:                                        ; preds = %if.end130
  %86 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5626
  %call137 = call i32 @mt312_reset(%struct.mt312_state* %86, i8 zeroext 0) #8, !dbg !5627
  store i32 %call137, i32* %ret, align 4, !dbg !5628
  %87 = load i32, i32* %ret, align 4, !dbg !5629
  %cmp138 = icmp slt i32 %87, 0, !dbg !5631
  br i1 %cmp138, label %if.then140, label %if.end141, !dbg !5632

if.then140:                                       ; preds = %if.end136
  %88 = load i32, i32* %ret, align 4, !dbg !5633
  store i32 %88, i32* %retval, align 4, !dbg !5634
  br label %return, !dbg !5634

if.end141:                                        ; preds = %if.end136
  store i32 0, i32* %retval, align 4, !dbg !5635
  br label %return, !dbg !5635

return:                                           ; preds = %if.end141, %if.then140, %if.then135, %sw.default, %if.then81, %if.then69, %if.then55, %if.then49, %if.then40, %if.then32, %if.then20, %if.then12
  %89 = load i32, i32* %retval, align 4, !dbg !5636
  ret i32 %89, !dbg !5636
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %fesettings) #0 !dbg !5637 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fesettings.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5638, metadata !DIExpression()), !dbg !5639
  store %struct.dvb_frontend_tune_settings* %fesettings, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %fesettings.addr, metadata !5640, metadata !DIExpression()), !dbg !5641
  %0 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5642
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %0, i32 0, i32 0, !dbg !5643
  store i32 50, i32* %min_delay_ms, align 4, !dbg !5644
  %1 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5645
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %1, i32 0, i32 1, !dbg !5646
  store i32 0, i32* %step_size, align 4, !dbg !5647
  %2 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5648
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %2, i32 0, i32 2, !dbg !5649
  store i32 0, i32* %max_drift, align 4, !dbg !5650
  ret i32 0, !dbg !5651
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_get_frontend(%struct.dvb_frontend* %fe, %struct.dtv_frontend_properties* %p) #0 !dbg !5652 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p.addr = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.mt312_state*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5653, metadata !DIExpression()), !dbg !5654
  store %struct.dtv_frontend_properties* %p, %struct.dtv_frontend_properties** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p.addr, metadata !5655, metadata !DIExpression()), !dbg !5656
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state, metadata !5657, metadata !DIExpression()), !dbg !5658
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5659
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5660
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5660
  %2 = bitcast i8* %1 to %struct.mt312_state*, !dbg !5659
  store %struct.mt312_state* %2, %struct.mt312_state** %state, align 8, !dbg !5658
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5661, metadata !DIExpression()), !dbg !5662
  %3 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5663
  %4 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5664
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %4, i32 0, i32 4, !dbg !5665
  %call = call i32 @mt312_get_inversion(%struct.mt312_state* %3, i32* %inversion) #8, !dbg !5666
  store i32 %call, i32* %ret, align 4, !dbg !5667
  %5 = load i32, i32* %ret, align 4, !dbg !5668
  %cmp = icmp slt i32 %5, 0, !dbg !5670
  br i1 %cmp, label %if.then, label %if.end, !dbg !5671

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %ret, align 4, !dbg !5672
  store i32 %6, i32* %retval, align 4, !dbg !5673
  br label %return, !dbg !5673

if.end:                                           ; preds = %entry
  %7 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5674
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5675
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 10, !dbg !5676
  %call1 = call i32 @mt312_get_symbol_rate(%struct.mt312_state* %7, i32* %symbol_rate) #8, !dbg !5677
  store i32 %call1, i32* %ret, align 4, !dbg !5678
  %9 = load i32, i32* %ret, align 4, !dbg !5679
  %cmp2 = icmp slt i32 %9, 0, !dbg !5681
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5682

if.then3:                                         ; preds = %if.end
  %10 = load i32, i32* %ret, align 4, !dbg !5683
  store i32 %10, i32* %retval, align 4, !dbg !5684
  br label %return, !dbg !5684

if.end4:                                          ; preds = %if.end
  %11 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5685
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5686
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 5, !dbg !5687
  %call5 = call i32 @mt312_get_code_rate(%struct.mt312_state* %11, i32* %fec_inner) #8, !dbg !5688
  store i32 %call5, i32* %ret, align 4, !dbg !5689
  %13 = load i32, i32* %ret, align 4, !dbg !5690
  %cmp6 = icmp slt i32 %13, 0, !dbg !5692
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5693

if.then7:                                         ; preds = %if.end4
  %14 = load i32, i32* %ret, align 4, !dbg !5694
  store i32 %14, i32* %retval, align 4, !dbg !5695
  br label %return, !dbg !5695

if.end8:                                          ; preds = %if.end4
  store i32 0, i32* %retval, align 4, !dbg !5696
  br label %return, !dbg !5696

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !5697
  ret i32 %15, !dbg !5697
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_read_status(%struct.dvb_frontend* %fe, i32* %s) #0 !dbg !5698 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %s.addr = alloca i32*, align 8
  %state = alloca %struct.mt312_state*, align 8
  %ret = alloca i32, align 4
  %status = alloca [3 x i8], align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5699, metadata !DIExpression()), !dbg !5700
  store i32* %s, i32** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %s.addr, metadata !5701, metadata !DIExpression()), !dbg !5702
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state, metadata !5703, metadata !DIExpression()), !dbg !5704
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5705
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5706
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5706
  %2 = bitcast i8* %1 to %struct.mt312_state*, !dbg !5705
  store %struct.mt312_state* %2, %struct.mt312_state** %state, align 8, !dbg !5704
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5707, metadata !DIExpression()), !dbg !5708
  call void @llvm.dbg.declare(metadata [3 x i8]* %status, metadata !5709, metadata !DIExpression()), !dbg !5711
  %3 = load i32*, i32** %s.addr, align 8, !dbg !5712
  store i32 0, i32* %3, align 4, !dbg !5713
  %4 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5714
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %status, i64 0, i64 0, !dbg !5715
  %call = call i32 @mt312_read(%struct.mt312_state* %4, i32 4, i8* %arraydecay, i64 3) #8, !dbg !5716
  store i32 %call, i32* %ret, align 4, !dbg !5717
  %5 = load i32, i32* %ret, align 4, !dbg !5718
  %cmp = icmp slt i32 %5, 0, !dbg !5720
  br i1 %cmp, label %if.then, label %if.end, !dbg !5721

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %ret, align 4, !dbg !5722
  store i32 %6, i32* %retval, align 4, !dbg !5723
  br label %return, !dbg !5723

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5724

do.body:                                          ; preds = %if.end
  %7 = load i32, i32* @debug, align 4, !dbg !5725
  %tobool = icmp ne i32 %7, 0, !dbg !5725
  br i1 %tobool, label %if.then1, label %if.end7, !dbg !5728

if.then1:                                         ; preds = %do.body
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %status, i64 0, i64 0, !dbg !5725
  %8 = load i8, i8* %arrayidx, align 1, !dbg !5725
  %conv = zext i8 %8 to i32, !dbg !5725
  %arrayidx2 = getelementptr [3 x i8], [3 x i8]* %status, i64 0, i64 1, !dbg !5725
  %9 = load i8, i8* %arrayidx2, align 1, !dbg !5725
  %conv3 = zext i8 %9 to i32, !dbg !5725
  %arrayidx4 = getelementptr [3 x i8], [3 x i8]* %status, i64 0, i64 2, !dbg !5725
  %10 = load i8, i8* %arrayidx4, align 1, !dbg !5725
  %conv5 = zext i8 %10 to i32, !dbg !5725
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.16, i64 0, i64 0), i32 %conv, i32 %conv3, i32 %conv5) #9, !dbg !5725
  br label %if.end7, !dbg !5725

if.end7:                                          ; preds = %if.then1, %do.body
  br label %do.end, !dbg !5728

do.end:                                           ; preds = %if.end7
  %arrayidx8 = getelementptr [3 x i8], [3 x i8]* %status, i64 0, i64 0, !dbg !5729
  %11 = load i8, i8* %arrayidx8, align 1, !dbg !5729
  %conv9 = zext i8 %11 to i32, !dbg !5729
  %and = and i32 %conv9, 192, !dbg !5731
  %tobool10 = icmp ne i32 %and, 0, !dbg !5731
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5732

if.then11:                                        ; preds = %do.end
  %12 = load i32*, i32** %s.addr, align 8, !dbg !5733
  %13 = load i32, i32* %12, align 4, !dbg !5734
  %or = or i32 %13, 1, !dbg !5734
  store i32 %or, i32* %12, align 4, !dbg !5734
  br label %if.end12, !dbg !5735

if.end12:                                         ; preds = %if.then11, %do.end
  %arrayidx13 = getelementptr [3 x i8], [3 x i8]* %status, i64 0, i64 0, !dbg !5736
  %14 = load i8, i8* %arrayidx13, align 1, !dbg !5736
  %conv14 = zext i8 %14 to i32, !dbg !5736
  %and15 = and i32 %conv14, 4, !dbg !5738
  %tobool16 = icmp ne i32 %and15, 0, !dbg !5738
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !5739

if.then17:                                        ; preds = %if.end12
  %15 = load i32*, i32** %s.addr, align 8, !dbg !5740
  %16 = load i32, i32* %15, align 4, !dbg !5741
  %or18 = or i32 %16, 2, !dbg !5741
  store i32 %or18, i32* %15, align 4, !dbg !5741
  br label %if.end19, !dbg !5742

if.end19:                                         ; preds = %if.then17, %if.end12
  %arrayidx20 = getelementptr [3 x i8], [3 x i8]* %status, i64 0, i64 2, !dbg !5743
  %17 = load i8, i8* %arrayidx20, align 1, !dbg !5743
  %conv21 = zext i8 %17 to i32, !dbg !5743
  %and22 = and i32 %conv21, 2, !dbg !5745
  %tobool23 = icmp ne i32 %and22, 0, !dbg !5745
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !5746

if.then24:                                        ; preds = %if.end19
  %18 = load i32*, i32** %s.addr, align 8, !dbg !5747
  %19 = load i32, i32* %18, align 4, !dbg !5748
  %or25 = or i32 %19, 4, !dbg !5748
  store i32 %or25, i32* %18, align 4, !dbg !5748
  br label %if.end26, !dbg !5749

if.end26:                                         ; preds = %if.then24, %if.end19
  %arrayidx27 = getelementptr [3 x i8], [3 x i8]* %status, i64 0, i64 2, !dbg !5750
  %20 = load i8, i8* %arrayidx27, align 1, !dbg !5750
  %conv28 = zext i8 %20 to i32, !dbg !5750
  %and29 = and i32 %conv28, 4, !dbg !5752
  %tobool30 = icmp ne i32 %and29, 0, !dbg !5752
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !5753

if.then31:                                        ; preds = %if.end26
  %21 = load i32*, i32** %s.addr, align 8, !dbg !5754
  %22 = load i32, i32* %21, align 4, !dbg !5755
  %or32 = or i32 %22, 8, !dbg !5755
  store i32 %or32, i32* %21, align 4, !dbg !5755
  br label %if.end33, !dbg !5756

if.end33:                                         ; preds = %if.then31, %if.end26
  %arrayidx34 = getelementptr [3 x i8], [3 x i8]* %status, i64 0, i64 0, !dbg !5757
  %23 = load i8, i8* %arrayidx34, align 1, !dbg !5757
  %conv35 = zext i8 %23 to i32, !dbg !5757
  %and36 = and i32 %conv35, 1, !dbg !5759
  %tobool37 = icmp ne i32 %and36, 0, !dbg !5759
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !5760

if.then38:                                        ; preds = %if.end33
  %24 = load i32*, i32** %s.addr, align 8, !dbg !5761
  %25 = load i32, i32* %24, align 4, !dbg !5762
  %or39 = or i32 %25, 16, !dbg !5762
  store i32 %or39, i32* %24, align 4, !dbg !5762
  br label %if.end40, !dbg !5763

if.end40:                                         ; preds = %if.then38, %if.end33
  store i32 0, i32* %retval, align 4, !dbg !5764
  br label %return, !dbg !5764

return:                                           ; preds = %if.end40, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !5765
  ret i32 %26, !dbg !5765
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5766 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %state = alloca %struct.mt312_state*, align 8
  %ret = alloca i32, align 4
  %buf = alloca [3 x i8], align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5767, metadata !DIExpression()), !dbg !5768
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5769, metadata !DIExpression()), !dbg !5770
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state, metadata !5771, metadata !DIExpression()), !dbg !5772
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5773
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5774
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5774
  %2 = bitcast i8* %1 to %struct.mt312_state*, !dbg !5773
  store %struct.mt312_state* %2, %struct.mt312_state** %state, align 8, !dbg !5772
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5775, metadata !DIExpression()), !dbg !5776
  call void @llvm.dbg.declare(metadata [3 x i8]* %buf, metadata !5777, metadata !DIExpression()), !dbg !5778
  %3 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5779
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5780
  %call = call i32 @mt312_read(%struct.mt312_state* %3, i32 14, i8* %arraydecay, i64 3) #8, !dbg !5781
  store i32 %call, i32* %ret, align 4, !dbg !5782
  %4 = load i32, i32* %ret, align 4, !dbg !5783
  %cmp = icmp slt i32 %4, 0, !dbg !5785
  br i1 %cmp, label %if.then, label %if.end, !dbg !5786

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !5787
  store i32 %5, i32* %retval, align 4, !dbg !5788
  br label %return, !dbg !5788

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5789
  %6 = load i8, i8* %arrayidx, align 1, !dbg !5789
  %conv = zext i8 %6 to i32, !dbg !5789
  %shl = shl i32 %conv, 16, !dbg !5790
  %arrayidx1 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !5791
  %7 = load i8, i8* %arrayidx1, align 1, !dbg !5791
  %conv2 = zext i8 %7 to i32, !dbg !5791
  %shl3 = shl i32 %conv2, 8, !dbg !5792
  %or = or i32 %shl, %shl3, !dbg !5793
  %arrayidx4 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !5794
  %8 = load i8, i8* %arrayidx4, align 1, !dbg !5794
  %conv5 = zext i8 %8 to i32, !dbg !5794
  %or6 = or i32 %or, %conv5, !dbg !5795
  %mul = mul i32 %or6, 64, !dbg !5796
  %9 = load i32*, i32** %ber.addr, align 8, !dbg !5797
  store i32 %mul, i32* %9, align 4, !dbg !5798
  store i32 0, i32* %retval, align 4, !dbg !5799
  br label %return, !dbg !5799

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5800
  ret i32 %10, !dbg !5800
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_read_signal_strength(%struct.dvb_frontend* %fe, i16* %signal_strength) #0 !dbg !5801 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %signal_strength.addr = alloca i16*, align 8
  %state = alloca %struct.mt312_state*, align 8
  %ret = alloca i32, align 4
  %buf = alloca [3 x i8], align 1
  %agc = alloca i16, align 2
  %err_db = alloca i16, align 2
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5802, metadata !DIExpression()), !dbg !5803
  store i16* %signal_strength, i16** %signal_strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %signal_strength.addr, metadata !5804, metadata !DIExpression()), !dbg !5805
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state, metadata !5806, metadata !DIExpression()), !dbg !5807
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5808
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5809
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5809
  %2 = bitcast i8* %1 to %struct.mt312_state*, !dbg !5808
  store %struct.mt312_state* %2, %struct.mt312_state** %state, align 8, !dbg !5807
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5810, metadata !DIExpression()), !dbg !5811
  call void @llvm.dbg.declare(metadata [3 x i8]* %buf, metadata !5812, metadata !DIExpression()), !dbg !5813
  call void @llvm.dbg.declare(metadata i16* %agc, metadata !5814, metadata !DIExpression()), !dbg !5815
  call void @llvm.dbg.declare(metadata i16* %err_db, metadata !5816, metadata !DIExpression()), !dbg !5817
  %3 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5818
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5819
  %call = call i32 @mt312_read(%struct.mt312_state* %3, i32 108, i8* %arraydecay, i64 3) #8, !dbg !5820
  store i32 %call, i32* %ret, align 4, !dbg !5821
  %4 = load i32, i32* %ret, align 4, !dbg !5822
  %cmp = icmp slt i32 %4, 0, !dbg !5824
  br i1 %cmp, label %if.then, label %if.end, !dbg !5825

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !5826
  store i32 %5, i32* %retval, align 4, !dbg !5827
  br label %return, !dbg !5827

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5828
  %6 = load i8, i8* %arrayidx, align 1, !dbg !5828
  %conv = zext i8 %6 to i32, !dbg !5828
  %shl = shl i32 %conv, 6, !dbg !5829
  %arrayidx1 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !5830
  %7 = load i8, i8* %arrayidx1, align 1, !dbg !5830
  %conv2 = zext i8 %7 to i32, !dbg !5830
  %shr = ashr i32 %conv2, 2, !dbg !5831
  %or = or i32 %shl, %shr, !dbg !5832
  %conv3 = trunc i32 %or to i16, !dbg !5833
  store i16 %conv3, i16* %agc, align 2, !dbg !5834
  %arrayidx4 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !5835
  %8 = load i8, i8* %arrayidx4, align 1, !dbg !5835
  %conv5 = zext i8 %8 to i32, !dbg !5835
  %and = and i32 %conv5, 3, !dbg !5836
  %shl6 = shl i32 %and, 14, !dbg !5837
  %arrayidx7 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !5838
  %9 = load i8, i8* %arrayidx7, align 1, !dbg !5838
  %conv8 = zext i8 %9 to i32, !dbg !5838
  %shl9 = shl i32 %conv8, 6, !dbg !5839
  %or10 = or i32 %shl6, %shl9, !dbg !5840
  %conv11 = trunc i32 %or10 to i16, !dbg !5841
  %conv12 = sext i16 %conv11 to i32, !dbg !5841
  %shr13 = ashr i32 %conv12, 6, !dbg !5842
  %conv14 = trunc i32 %shr13 to i16, !dbg !5841
  store i16 %conv14, i16* %err_db, align 2, !dbg !5843
  %10 = load i16, i16* %agc, align 2, !dbg !5844
  %11 = load i16*, i16** %signal_strength.addr, align 8, !dbg !5845
  store i16 %10, i16* %11, align 2, !dbg !5846
  br label %do.body, !dbg !5847

do.body:                                          ; preds = %if.end
  %12 = load i32, i32* @debug, align 4, !dbg !5848
  %tobool = icmp ne i32 %12, 0, !dbg !5848
  br i1 %tobool, label %if.then15, label %if.end19, !dbg !5851

if.then15:                                        ; preds = %do.body
  %13 = load i16, i16* %agc, align 2, !dbg !5848
  %conv16 = zext i16 %13 to i32, !dbg !5848
  %14 = load i16, i16* %err_db, align 2, !dbg !5848
  %conv17 = sext i16 %14 to i32, !dbg !5848
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 %conv16, i32 %conv17) #9, !dbg !5848
  br label %if.end19, !dbg !5848

if.end19:                                         ; preds = %if.then15, %do.body
  br label %do.end, !dbg !5851

do.end:                                           ; preds = %if.end19
  store i32 0, i32* %retval, align 4, !dbg !5852
  br label %return, !dbg !5852

return:                                           ; preds = %do.end, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !5853
  ret i32 %15, !dbg !5853
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5854 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %state = alloca %struct.mt312_state*, align 8
  %ret = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5855, metadata !DIExpression()), !dbg !5856
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5857, metadata !DIExpression()), !dbg !5858
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state, metadata !5859, metadata !DIExpression()), !dbg !5860
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5861
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5862
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5862
  %2 = bitcast i8* %1 to %struct.mt312_state*, !dbg !5861
  store %struct.mt312_state* %2, %struct.mt312_state** %state, align 8, !dbg !5860
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5863, metadata !DIExpression()), !dbg !5864
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !5865, metadata !DIExpression()), !dbg !5866
  %3 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5867
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5868
  %call = call i32 @mt312_read(%struct.mt312_state* %3, i32 9, i8* %arraydecay, i64 2) #8, !dbg !5869
  store i32 %call, i32* %ret, align 4, !dbg !5870
  %4 = load i32, i32* %ret, align 4, !dbg !5871
  %cmp = icmp slt i32 %4, 0, !dbg !5873
  br i1 %cmp, label %if.then, label %if.end, !dbg !5874

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !5875
  store i32 %5, i32* %retval, align 4, !dbg !5876
  br label %return, !dbg !5876

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5877
  %6 = load i8, i8* %arrayidx, align 1, !dbg !5877
  %conv = zext i8 %6 to i32, !dbg !5877
  %and = and i32 %conv, 127, !dbg !5878
  %shl = shl i32 %and, 8, !dbg !5879
  %arrayidx1 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 1, !dbg !5880
  %7 = load i8, i8* %arrayidx1, align 1, !dbg !5880
  %conv2 = zext i8 %7 to i32, !dbg !5880
  %or = or i32 %shl, %conv2, !dbg !5881
  %shl3 = shl i32 %or, 1, !dbg !5882
  %sub = sub i32 65535, %shl3, !dbg !5883
  %conv4 = trunc i32 %sub to i16, !dbg !5884
  %8 = load i16*, i16** %snr.addr, align 8, !dbg !5885
  store i16 %conv4, i16* %8, align 2, !dbg !5886
  store i32 0, i32* %retval, align 4, !dbg !5887
  br label %return, !dbg !5887

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5888
  ret i32 %9, !dbg !5888
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ubc) #0 !dbg !5889 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ubc.addr = alloca i32*, align 8
  %state = alloca %struct.mt312_state*, align 8
  %ret = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5890, metadata !DIExpression()), !dbg !5891
  store i32* %ubc, i32** %ubc.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ubc.addr, metadata !5892, metadata !DIExpression()), !dbg !5893
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state, metadata !5894, metadata !DIExpression()), !dbg !5895
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5896
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5897
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5897
  %2 = bitcast i8* %1 to %struct.mt312_state*, !dbg !5896
  store %struct.mt312_state* %2, %struct.mt312_state** %state, align 8, !dbg !5895
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5898, metadata !DIExpression()), !dbg !5899
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !5900, metadata !DIExpression()), !dbg !5901
  %3 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5902
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5903
  %call = call i32 @mt312_read(%struct.mt312_state* %3, i32 17, i8* %arraydecay, i64 2) #8, !dbg !5904
  store i32 %call, i32* %ret, align 4, !dbg !5905
  %4 = load i32, i32* %ret, align 4, !dbg !5906
  %cmp = icmp slt i32 %4, 0, !dbg !5908
  br i1 %cmp, label %if.then, label %if.end, !dbg !5909

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !5910
  store i32 %5, i32* %retval, align 4, !dbg !5911
  br label %return, !dbg !5911

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5912
  %6 = load i8, i8* %arrayidx, align 1, !dbg !5912
  %conv = zext i8 %6 to i32, !dbg !5912
  %shl = shl i32 %conv, 8, !dbg !5913
  %arrayidx1 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 1, !dbg !5914
  %7 = load i8, i8* %arrayidx1, align 1, !dbg !5914
  %conv2 = zext i8 %7 to i32, !dbg !5914
  %or = or i32 %shl, %conv2, !dbg !5915
  %8 = load i32*, i32** %ubc.addr, align 8, !dbg !5916
  store i32 %or, i32* %8, align 4, !dbg !5917
  store i32 0, i32* %retval, align 4, !dbg !5918
  br label %return, !dbg !5918

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5919
  ret i32 %9, !dbg !5919
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_send_master_cmd(%struct.dvb_frontend* %fe, %struct.dvb_diseqc_master_cmd* %c) #0 !dbg !5920 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %c.addr = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %state = alloca %struct.mt312_state*, align 8
  %ret = alloca i32, align 4
  %diseqc_mode = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5921, metadata !DIExpression()), !dbg !5922
  store %struct.dvb_diseqc_master_cmd* %c, %struct.dvb_diseqc_master_cmd** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_diseqc_master_cmd** %c.addr, metadata !5923, metadata !DIExpression()), !dbg !5924
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state, metadata !5925, metadata !DIExpression()), !dbg !5926
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5927
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5928
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5928
  %2 = bitcast i8* %1 to %struct.mt312_state*, !dbg !5927
  store %struct.mt312_state* %2, %struct.mt312_state** %state, align 8, !dbg !5926
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5929, metadata !DIExpression()), !dbg !5930
  call void @llvm.dbg.declare(metadata i8* %diseqc_mode, metadata !5931, metadata !DIExpression()), !dbg !5932
  %3 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %c.addr, align 8, !dbg !5933
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %3, i32 0, i32 1, !dbg !5935
  %4 = load i8, i8* %msg_len, align 1, !dbg !5935
  %conv = zext i8 %4 to i32, !dbg !5933
  %cmp = icmp eq i32 %conv, 0, !dbg !5936
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5937

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %c.addr, align 8, !dbg !5938
  %msg_len2 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %5, i32 0, i32 1, !dbg !5939
  %6 = load i8, i8* %msg_len2, align 1, !dbg !5939
  %conv3 = zext i8 %6 to i64, !dbg !5938
  %cmp4 = icmp ugt i64 %conv3, 6, !dbg !5940
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5941

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5942
  br label %return, !dbg !5942

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5943
  %call = call i32 @mt312_readreg(%struct.mt312_state* %7, i32 22, i8* %diseqc_mode) #8, !dbg !5944
  store i32 %call, i32* %ret, align 4, !dbg !5945
  %8 = load i32, i32* %ret, align 4, !dbg !5946
  %cmp6 = icmp slt i32 %8, 0, !dbg !5948
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !5949

if.then8:                                         ; preds = %if.end
  %9 = load i32, i32* %ret, align 4, !dbg !5950
  store i32 %9, i32* %retval, align 4, !dbg !5951
  br label %return, !dbg !5951

if.end9:                                          ; preds = %if.end
  %10 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5952
  %11 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %c.addr, align 8, !dbg !5953
  %msg = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %11, i32 0, i32 0, !dbg !5954
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %msg, i64 0, i64 0, !dbg !5953
  %12 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %c.addr, align 8, !dbg !5955
  %msg_len10 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %12, i32 0, i32 1, !dbg !5956
  %13 = load i8, i8* %msg_len10, align 1, !dbg !5956
  %conv11 = zext i8 %13 to i64, !dbg !5955
  %call12 = call i32 @mt312_write(%struct.mt312_state* %10, i32 164, i8* %arraydecay, i64 %conv11) #8, !dbg !5957
  store i32 %call12, i32* %ret, align 4, !dbg !5958
  %14 = load i32, i32* %ret, align 4, !dbg !5959
  %cmp13 = icmp slt i32 %14, 0, !dbg !5961
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !5962

if.then15:                                        ; preds = %if.end9
  %15 = load i32, i32* %ret, align 4, !dbg !5963
  store i32 %15, i32* %retval, align 4, !dbg !5964
  br label %return, !dbg !5964

if.end16:                                         ; preds = %if.end9
  %16 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5965
  %17 = load i8, i8* %diseqc_mode, align 1, !dbg !5966
  %conv17 = zext i8 %17 to i32, !dbg !5966
  %and = and i32 %conv17, 64, !dbg !5967
  %18 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %c.addr, align 8, !dbg !5968
  %msg_len18 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %18, i32 0, i32 1, !dbg !5969
  %19 = load i8, i8* %msg_len18, align 1, !dbg !5969
  %conv19 = zext i8 %19 to i32, !dbg !5968
  %sub = sub i32 %conv19, 1, !dbg !5970
  %shl = shl i32 %sub, 3, !dbg !5971
  %or = or i32 %and, %shl, !dbg !5972
  %or20 = or i32 %or, 4, !dbg !5973
  %conv21 = trunc i32 %or20 to i8, !dbg !5974
  %call22 = call i32 @mt312_writereg(%struct.mt312_state* %16, i32 22, i8 zeroext %conv21) #8, !dbg !5975
  store i32 %call22, i32* %ret, align 4, !dbg !5976
  %20 = load i32, i32* %ret, align 4, !dbg !5977
  %cmp23 = icmp slt i32 %20, 0, !dbg !5979
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !5980

if.then25:                                        ; preds = %if.end16
  %21 = load i32, i32* %ret, align 4, !dbg !5981
  store i32 %21, i32* %retval, align 4, !dbg !5982
  br label %return, !dbg !5982

if.end26:                                         ; preds = %if.end16
  call void @msleep(i32 100) #8, !dbg !5983
  %22 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %c.addr, align 8, !dbg !5984
  %msg27 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %22, i32 0, i32 0, !dbg !5986
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %msg27, i64 0, i64 0, !dbg !5984
  %23 = load i8, i8* %arrayidx, align 1, !dbg !5984
  %conv28 = zext i8 %23 to i32, !dbg !5984
  %and29 = and i32 %conv28, 2, !dbg !5987
  %tobool = icmp ne i32 %and29, 0, !dbg !5987
  br i1 %tobool, label %if.then30, label %if.end39, !dbg !5988

if.then30:                                        ; preds = %if.end26
  %24 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !5989
  %25 = load i8, i8* %diseqc_mode, align 1, !dbg !5991
  %conv31 = zext i8 %25 to i32, !dbg !5991
  %and32 = and i32 %conv31, 64, !dbg !5992
  %conv33 = trunc i32 %and32 to i8, !dbg !5993
  %call34 = call i32 @mt312_writereg(%struct.mt312_state* %24, i32 22, i8 zeroext %conv33) #8, !dbg !5994
  store i32 %call34, i32* %ret, align 4, !dbg !5995
  %26 = load i32, i32* %ret, align 4, !dbg !5996
  %cmp35 = icmp slt i32 %26, 0, !dbg !5998
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !5999

if.then37:                                        ; preds = %if.then30
  %27 = load i32, i32* %ret, align 4, !dbg !6000
  store i32 %27, i32* %retval, align 4, !dbg !6001
  br label %return, !dbg !6001

if.end38:                                         ; preds = %if.then30
  br label %if.end39, !dbg !6002

if.end39:                                         ; preds = %if.end38, %if.end26
  store i32 0, i32* %retval, align 4, !dbg !6003
  br label %return, !dbg !6003

return:                                           ; preds = %if.end39, %if.then37, %if.then25, %if.then15, %if.then8, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !6004
  ret i32 %28, !dbg !6004
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_send_burst(%struct.dvb_frontend* %fe, i32 %c) #0 !dbg !6005 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %c.addr = alloca i32, align 4
  %state = alloca %struct.mt312_state*, align 8
  %mini_tab = alloca [2 x i8], align 1
  %ret = alloca i32, align 4
  %diseqc_mode = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6009, metadata !DIExpression()), !dbg !6010
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !6011, metadata !DIExpression()), !dbg !6012
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state, metadata !6013, metadata !DIExpression()), !dbg !6014
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6015
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6016
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6016
  %2 = bitcast i8* %1 to %struct.mt312_state*, !dbg !6015
  store %struct.mt312_state* %2, %struct.mt312_state** %state, align 8, !dbg !6014
  call void @llvm.dbg.declare(metadata [2 x i8]* %mini_tab, metadata !6017, metadata !DIExpression()), !dbg !6019
  %3 = bitcast [2 x i8]* %mini_tab to i8*, !dbg !6019
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.mt312_send_burst.mini_tab, i32 0, i32 0), i64 2, i1 false), !dbg !6019
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6020, metadata !DIExpression()), !dbg !6021
  call void @llvm.dbg.declare(metadata i8* %diseqc_mode, metadata !6022, metadata !DIExpression()), !dbg !6023
  %4 = load i32, i32* %c.addr, align 4, !dbg !6024
  %cmp = icmp ugt i32 %4, 1, !dbg !6026
  br i1 %cmp, label %if.then, label %if.end, !dbg !6027

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6028
  br label %return, !dbg !6028

if.end:                                           ; preds = %entry
  %5 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !6029
  %call = call i32 @mt312_readreg(%struct.mt312_state* %5, i32 22, i8* %diseqc_mode) #8, !dbg !6030
  store i32 %call, i32* %ret, align 4, !dbg !6031
  %6 = load i32, i32* %ret, align 4, !dbg !6032
  %cmp1 = icmp slt i32 %6, 0, !dbg !6034
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !6035

if.then2:                                         ; preds = %if.end
  %7 = load i32, i32* %ret, align 4, !dbg !6036
  store i32 %7, i32* %retval, align 4, !dbg !6037
  br label %return, !dbg !6037

if.end3:                                          ; preds = %if.end
  %8 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !6038
  %9 = load i8, i8* %diseqc_mode, align 1, !dbg !6039
  %conv = zext i8 %9 to i32, !dbg !6039
  %and = and i32 %conv, 64, !dbg !6040
  %10 = load i32, i32* %c.addr, align 4, !dbg !6041
  %idxprom = zext i32 %10 to i64, !dbg !6042
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %mini_tab, i64 0, i64 %idxprom, !dbg !6042
  %11 = load i8, i8* %arrayidx, align 1, !dbg !6042
  %conv4 = zext i8 %11 to i32, !dbg !6042
  %or = or i32 %and, %conv4, !dbg !6043
  %conv5 = trunc i32 %or to i8, !dbg !6044
  %call6 = call i32 @mt312_writereg(%struct.mt312_state* %8, i32 22, i8 zeroext %conv5) #8, !dbg !6045
  store i32 %call6, i32* %ret, align 4, !dbg !6046
  %12 = load i32, i32* %ret, align 4, !dbg !6047
  %cmp7 = icmp slt i32 %12, 0, !dbg !6049
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !6050

if.then9:                                         ; preds = %if.end3
  %13 = load i32, i32* %ret, align 4, !dbg !6051
  store i32 %13, i32* %retval, align 4, !dbg !6052
  br label %return, !dbg !6052

if.end10:                                         ; preds = %if.end3
  store i32 0, i32* %retval, align 4, !dbg !6053
  br label %return, !dbg !6053

return:                                           ; preds = %if.end10, %if.then9, %if.then2, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !6054
  ret i32 %14, !dbg !6054
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_set_tone(%struct.dvb_frontend* %fe, i32 %t) #0 !dbg !6055 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %t.addr = alloca i32, align 4
  %state = alloca %struct.mt312_state*, align 8
  %tone_tab = alloca [2 x i8], align 1
  %ret = alloca i32, align 4
  %diseqc_mode = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6059, metadata !DIExpression()), !dbg !6060
  store i32 %t, i32* %t.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %t.addr, metadata !6061, metadata !DIExpression()), !dbg !6062
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state, metadata !6063, metadata !DIExpression()), !dbg !6064
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6065
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6066
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6066
  %2 = bitcast i8* %1 to %struct.mt312_state*, !dbg !6065
  store %struct.mt312_state* %2, %struct.mt312_state** %state, align 8, !dbg !6064
  call void @llvm.dbg.declare(metadata [2 x i8]* %tone_tab, metadata !6067, metadata !DIExpression()), !dbg !6068
  %3 = bitcast [2 x i8]* %tone_tab to i8*, !dbg !6068
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.mt312_set_tone.tone_tab, i32 0, i32 0), i64 2, i1 false), !dbg !6068
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6069, metadata !DIExpression()), !dbg !6070
  call void @llvm.dbg.declare(metadata i8* %diseqc_mode, metadata !6071, metadata !DIExpression()), !dbg !6072
  %4 = load i32, i32* %t.addr, align 4, !dbg !6073
  %cmp = icmp ugt i32 %4, 1, !dbg !6075
  br i1 %cmp, label %if.then, label %if.end, !dbg !6076

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6077
  br label %return, !dbg !6077

if.end:                                           ; preds = %entry
  %5 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !6078
  %call = call i32 @mt312_readreg(%struct.mt312_state* %5, i32 22, i8* %diseqc_mode) #8, !dbg !6079
  store i32 %call, i32* %ret, align 4, !dbg !6080
  %6 = load i32, i32* %ret, align 4, !dbg !6081
  %cmp1 = icmp slt i32 %6, 0, !dbg !6083
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !6084

if.then2:                                         ; preds = %if.end
  %7 = load i32, i32* %ret, align 4, !dbg !6085
  store i32 %7, i32* %retval, align 4, !dbg !6086
  br label %return, !dbg !6086

if.end3:                                          ; preds = %if.end
  %8 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !6087
  %9 = load i8, i8* %diseqc_mode, align 1, !dbg !6088
  %conv = zext i8 %9 to i32, !dbg !6088
  %and = and i32 %conv, 64, !dbg !6089
  %10 = load i32, i32* %t.addr, align 4, !dbg !6090
  %idxprom = zext i32 %10 to i64, !dbg !6091
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %tone_tab, i64 0, i64 %idxprom, !dbg !6091
  %11 = load i8, i8* %arrayidx, align 1, !dbg !6091
  %conv4 = zext i8 %11 to i32, !dbg !6091
  %or = or i32 %and, %conv4, !dbg !6092
  %conv5 = trunc i32 %or to i8, !dbg !6093
  %call6 = call i32 @mt312_writereg(%struct.mt312_state* %8, i32 22, i8 zeroext %conv5) #8, !dbg !6094
  store i32 %call6, i32* %ret, align 4, !dbg !6095
  %12 = load i32, i32* %ret, align 4, !dbg !6096
  %cmp7 = icmp slt i32 %12, 0, !dbg !6098
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !6099

if.then9:                                         ; preds = %if.end3
  %13 = load i32, i32* %ret, align 4, !dbg !6100
  store i32 %13, i32* %retval, align 4, !dbg !6101
  br label %return, !dbg !6101

if.end10:                                         ; preds = %if.end3
  store i32 0, i32* %retval, align 4, !dbg !6102
  br label %return, !dbg !6102

return:                                           ; preds = %if.end10, %if.then9, %if.then2, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !6103
  ret i32 %14, !dbg !6103
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_set_voltage(%struct.dvb_frontend* %fe, i32 %v) #0 !dbg !6104 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %v.addr = alloca i32, align 4
  %state = alloca %struct.mt312_state*, align 8
  %volt_tab = alloca [3 x i8], align 1
  %val = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6108, metadata !DIExpression()), !dbg !6109
  store i32 %v, i32* %v.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %v.addr, metadata !6110, metadata !DIExpression()), !dbg !6111
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state, metadata !6112, metadata !DIExpression()), !dbg !6113
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6114
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6115
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6115
  %2 = bitcast i8* %1 to %struct.mt312_state*, !dbg !6114
  store %struct.mt312_state* %2, %struct.mt312_state** %state, align 8, !dbg !6113
  call void @llvm.dbg.declare(metadata [3 x i8]* %volt_tab, metadata !6116, metadata !DIExpression()), !dbg !6117
  %3 = bitcast [3 x i8]* %volt_tab to i8*, !dbg !6117
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.mt312_set_voltage.volt_tab, i32 0, i32 0), i64 3, i1 false), !dbg !6117
  call void @llvm.dbg.declare(metadata i8* %val, metadata !6118, metadata !DIExpression()), !dbg !6119
  %4 = load i32, i32* %v.addr, align 4, !dbg !6120
  %cmp = icmp ugt i32 %4, 2, !dbg !6122
  br i1 %cmp, label %if.then, label %if.end, !dbg !6123

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6124
  br label %return, !dbg !6124

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %v.addr, align 4, !dbg !6125
  %idxprom = zext i32 %5 to i64, !dbg !6126
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %volt_tab, i64 0, i64 %idxprom, !dbg !6126
  %6 = load i8, i8* %arrayidx, align 1, !dbg !6126
  store i8 %6, i8* %val, align 1, !dbg !6127
  %7 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !6128
  %config = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %7, i32 0, i32 1, !dbg !6130
  %8 = load %struct.mt312_config*, %struct.mt312_config** %config, align 8, !dbg !6130
  %voltage_inverted = getelementptr inbounds %struct.mt312_config, %struct.mt312_config* %8, i32 0, i32 1, !dbg !6131
  %bf.load = load i8, i8* %voltage_inverted, align 1, !dbg !6131
  %bf.clear = and i8 %bf.load, 1, !dbg !6131
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6131
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6128
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !6132

if.then1:                                         ; preds = %if.end
  %9 = load i8, i8* %val, align 1, !dbg !6133
  %conv = zext i8 %9 to i32, !dbg !6133
  %xor = xor i32 %conv, 64, !dbg !6133
  %conv2 = trunc i32 %xor to i8, !dbg !6133
  store i8 %conv2, i8* %val, align 1, !dbg !6133
  br label %if.end3, !dbg !6134

if.end3:                                          ; preds = %if.then1, %if.end
  %10 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !6135
  %11 = load i8, i8* %val, align 1, !dbg !6136
  %call = call i32 @mt312_writereg(%struct.mt312_state* %10, i32 22, i8 zeroext %11) #8, !dbg !6137
  store i32 %call, i32* %retval, align 4, !dbg !6138
  br label %return, !dbg !6138

return:                                           ; preds = %if.end3, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !6139
  ret i32 %12, !dbg !6139
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_i2c_gate_ctrl(%struct.dvb_frontend* %fe, i32 %enable) #0 !dbg !6140 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %enable.addr = alloca i32, align 4
  %state = alloca %struct.mt312_state*, align 8
  %val = alloca i8, align 1
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6141, metadata !DIExpression()), !dbg !6142
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !6143, metadata !DIExpression()), !dbg !6144
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state, metadata !6145, metadata !DIExpression()), !dbg !6146
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6147
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6148
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6148
  %2 = bitcast i8* %1 to %struct.mt312_state*, !dbg !6147
  store %struct.mt312_state* %2, %struct.mt312_state** %state, align 8, !dbg !6146
  call void @llvm.dbg.declare(metadata i8* %val, metadata !6149, metadata !DIExpression()), !dbg !6150
  store i8 0, i8* %val, align 1, !dbg !6150
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6151, metadata !DIExpression()), !dbg !6152
  %3 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !6153
  %id = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %3, i32 0, i32 3, !dbg !6154
  %4 = load i8, i8* %id, align 8, !dbg !6154
  %conv = zext i8 %4 to i32, !dbg !6153
  switch i32 %conv, label %sw.epilog [
    i32 5, label %sw.bb
  ], !dbg !6155

sw.bb:                                            ; preds = %entry
  %5 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !6156
  %call = call i32 @mt312_readreg(%struct.mt312_state* %5, i32 20, i8* %val) #8, !dbg !6158
  store i32 %call, i32* %ret, align 4, !dbg !6159
  %6 = load i32, i32* %ret, align 4, !dbg !6160
  %cmp = icmp slt i32 %6, 0, !dbg !6162
  br i1 %cmp, label %if.then, label %if.end, !dbg !6163

if.then:                                          ; preds = %sw.bb
  br label %error, !dbg !6164

if.end:                                           ; preds = %sw.bb
  %7 = load i8, i8* %val, align 1, !dbg !6165
  %conv2 = zext i8 %7 to i32, !dbg !6165
  %and = and i32 %conv2, 128, !dbg !6165
  %conv3 = trunc i32 %and to i8, !dbg !6165
  store i8 %conv3, i8* %val, align 1, !dbg !6165
  br label %sw.epilog, !dbg !6166

sw.epilog:                                        ; preds = %entry, %if.end
  %8 = load i32, i32* %enable.addr, align 4, !dbg !6167
  %tobool = icmp ne i32 %8, 0, !dbg !6167
  br i1 %tobool, label %if.then4, label %if.else, !dbg !6169

if.then4:                                         ; preds = %sw.epilog
  %9 = load i8, i8* %val, align 1, !dbg !6170
  %conv5 = zext i8 %9 to i32, !dbg !6170
  %or = or i32 %conv5, 64, !dbg !6170
  %conv6 = trunc i32 %or to i8, !dbg !6170
  store i8 %conv6, i8* %val, align 1, !dbg !6170
  br label %if.end10, !dbg !6171

if.else:                                          ; preds = %sw.epilog
  %10 = load i8, i8* %val, align 1, !dbg !6172
  %conv7 = zext i8 %10 to i32, !dbg !6172
  %and8 = and i32 %conv7, -65, !dbg !6172
  %conv9 = trunc i32 %and8 to i8, !dbg !6172
  store i8 %conv9, i8* %val, align 1, !dbg !6172
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then4
  %11 = load %struct.mt312_state*, %struct.mt312_state** %state, align 8, !dbg !6173
  %12 = load i8, i8* %val, align 1, !dbg !6174
  %call11 = call i32 @mt312_writereg(%struct.mt312_state* %11, i32 20, i8 zeroext %12) #8, !dbg !6175
  store i32 %call11, i32* %ret, align 4, !dbg !6176
  br label %error, !dbg !6177

error:                                            ; preds = %if.end10, %if.then
  call void @llvm.dbg.label(metadata !6178), !dbg !6179
  %13 = load i32, i32* %ret, align 4, !dbg !6180
  ret i32 %13, !dbg !6181
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_writereg(%struct.mt312_state* %state, i32 %reg, i8 zeroext %val) #0 !dbg !6182 {
entry:
  %state.addr = alloca %struct.mt312_state*, align 8
  %reg.addr = alloca i32, align 4
  %val.addr = alloca i8, align 1
  %tmp = alloca i8, align 1
  store %struct.mt312_state* %state, %struct.mt312_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state.addr, metadata !6185, metadata !DIExpression()), !dbg !6186
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !6187, metadata !DIExpression()), !dbg !6188
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !6189, metadata !DIExpression()), !dbg !6190
  call void @llvm.dbg.declare(metadata i8* %tmp, metadata !6191, metadata !DIExpression()), !dbg !6192
  %0 = load i8, i8* %val.addr, align 1, !dbg !6193
  store i8 %0, i8* %tmp, align 1, !dbg !6192
  %1 = load %struct.mt312_state*, %struct.mt312_state** %state.addr, align 8, !dbg !6194
  %2 = load i32, i32* %reg.addr, align 4, !dbg !6195
  %call = call i32 @mt312_write(%struct.mt312_state* %1, i32 %2, i8* %tmp, i64 1) #8, !dbg !6196
  ret i32 %call, !dbg !6197
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_reset(%struct.mt312_state* %state, i8 zeroext %full) #0 !dbg !6198 {
entry:
  %state.addr = alloca %struct.mt312_state*, align 8
  %full.addr = alloca i8, align 1
  store %struct.mt312_state* %state, %struct.mt312_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state.addr, metadata !6201, metadata !DIExpression()), !dbg !6202
  store i8 %full, i8* %full.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %full.addr, metadata !6203, metadata !DIExpression()), !dbg !6204
  %0 = load %struct.mt312_state*, %struct.mt312_state** %state.addr, align 8, !dbg !6205
  %1 = load i8, i8* %full.addr, align 1, !dbg !6206
  %conv = zext i8 %1 to i32, !dbg !6206
  %tobool = icmp ne i32 %conv, 0, !dbg !6206
  %2 = zext i1 %tobool to i64, !dbg !6206
  %cond = select i1 %tobool, i32 128, i32 64, !dbg !6206
  %conv1 = trunc i32 %cond to i8, !dbg !6206
  %call = call i32 @mt312_writereg(%struct.mt312_state* %0, i32 21, i8 zeroext %conv1) #8, !dbg !6207
  ret i32 %call, !dbg !6208
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_write(%struct.mt312_state* %state, i32 %reg, i8* %src, i64 %count) #0 !dbg !6209 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.mt312_state*, align 8
  %reg.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %buf = alloca [64 x i8], align 16
  %msg = alloca %struct.i2c_msg, align 8
  %i = alloca i32, align 4
  store %struct.mt312_state* %state, %struct.mt312_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state.addr, metadata !6212, metadata !DIExpression()), !dbg !6213
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !6214, metadata !DIExpression()), !dbg !6215
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !6216, metadata !DIExpression()), !dbg !6217
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !6218, metadata !DIExpression()), !dbg !6219
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6220, metadata !DIExpression()), !dbg !6221
  call void @llvm.dbg.declare(metadata [64 x i8]* %buf, metadata !6222, metadata !DIExpression()), !dbg !6224
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !6225, metadata !DIExpression()), !dbg !6226
  %0 = load i64, i64* %count.addr, align 8, !dbg !6227
  %add = add i64 1, %0, !dbg !6229
  %cmp = icmp ugt i64 %add, 64, !dbg !6230
  br i1 %cmp, label %if.then, label %if.end, !dbg !6231

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %count.addr, align 8, !dbg !6232
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i64 %1) #9, !dbg !6234
  store i32 -22, i32* %retval, align 4, !dbg !6235
  br label %return, !dbg !6235

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @debug, align 4, !dbg !6236
  %tobool = icmp ne i32 %2, 0, !dbg !6236
  br i1 %tobool, label %if.then1, label %if.end11, !dbg !6238

if.then1:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6239, metadata !DIExpression()), !dbg !6241
  br label %do.body, !dbg !6242

do.body:                                          ; preds = %if.then1
  %3 = load i32, i32* @debug, align 4, !dbg !6243
  %tobool2 = icmp ne i32 %3, 0, !dbg !6243
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !6246

if.then3:                                         ; preds = %do.body
  %4 = load i32, i32* %reg.addr, align 4, !dbg !6243
  %and = and i32 %4, 127, !dbg !6243
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %and) #9, !dbg !6243
  br label %if.end5, !dbg !6243

if.end5:                                          ; preds = %if.then3, %do.body
  br label %do.end, !dbg !6246

do.end:                                           ; preds = %if.end5
  store i32 0, i32* %i, align 4, !dbg !6247
  br label %for.cond, !dbg !6249

for.cond:                                         ; preds = %for.inc, %do.end
  %5 = load i32, i32* %i, align 4, !dbg !6250
  %conv = sext i32 %5 to i64, !dbg !6250
  %6 = load i64, i64* %count.addr, align 8, !dbg !6252
  %cmp6 = icmp ult i64 %conv, %6, !dbg !6253
  br i1 %cmp6, label %for.body, label %for.end, !dbg !6254

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %src.addr, align 8, !dbg !6255
  %8 = load i32, i32* %i, align 4, !dbg !6256
  %idxprom = sext i32 %8 to i64, !dbg !6255
  %arrayidx = getelementptr i8, i8* %7, i64 %idxprom, !dbg !6255
  %9 = load i8, i8* %arrayidx, align 1, !dbg !6255
  %conv8 = zext i8 %9 to i32, !dbg !6255
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %conv8) #9, !dbg !6257
  br label %for.inc, !dbg !6257

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !6258
  %inc = add i32 %10, 1, !dbg !6258
  store i32 %inc, i32* %i, align 4, !dbg !6258
  br label %for.cond, !dbg !6259, !llvm.loop !6260

for.end:                                          ; preds = %for.cond
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !6262
  br label %if.end11, !dbg !6263

if.end11:                                         ; preds = %for.end, %if.end
  %11 = load i32, i32* %reg.addr, align 4, !dbg !6264
  %conv12 = trunc i32 %11 to i8, !dbg !6264
  %arrayidx13 = getelementptr [64 x i8], [64 x i8]* %buf, i64 0, i64 0, !dbg !6265
  store i8 %conv12, i8* %arrayidx13, align 16, !dbg !6266
  %arrayidx14 = getelementptr [64 x i8], [64 x i8]* %buf, i64 0, i64 1, !dbg !6267
  %12 = load i8*, i8** %src.addr, align 8, !dbg !6268
  %13 = load i64, i64* %count.addr, align 8, !dbg !6269
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx14, i8* align 1 %12, i64 %13, i1 false), !dbg !6270
  %14 = load %struct.mt312_state*, %struct.mt312_state** %state.addr, align 8, !dbg !6271
  %config = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %14, i32 0, i32 1, !dbg !6272
  %15 = load %struct.mt312_config*, %struct.mt312_config** %config, align 8, !dbg !6272
  %demod_address = getelementptr inbounds %struct.mt312_config, %struct.mt312_config* %15, i32 0, i32 0, !dbg !6273
  %16 = load i8, i8* %demod_address, align 4, !dbg !6273
  %conv15 = zext i8 %16 to i16, !dbg !6271
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !6274
  store i16 %conv15, i16* %addr, align 8, !dbg !6275
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !6276
  store i16 0, i16* %flags, align 2, !dbg !6277
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0, !dbg !6278
  %buf16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !6279
  store i8* %arraydecay, i8** %buf16, align 8, !dbg !6280
  %17 = load i64, i64* %count.addr, align 8, !dbg !6281
  %add17 = add i64 %17, 1, !dbg !6282
  %conv18 = trunc i64 %add17 to i16, !dbg !6281
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !6283
  store i16 %conv18, i16* %len, align 4, !dbg !6284
  %18 = load %struct.mt312_state*, %struct.mt312_state** %state.addr, align 8, !dbg !6285
  %i2c = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %18, i32 0, i32 0, !dbg !6286
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !6286
  %call19 = call i32 @i2c_transfer(%struct.i2c_adapter* %19, %struct.i2c_msg* %msg, i32 1) #8, !dbg !6287
  store i32 %call19, i32* %ret, align 4, !dbg !6288
  %20 = load i32, i32* %ret, align 4, !dbg !6289
  %cmp20 = icmp ne i32 %20, 1, !dbg !6291
  br i1 %cmp20, label %if.then22, label %if.end29, !dbg !6292

if.then22:                                        ; preds = %if.end11
  br label %do.body23, !dbg !6293

do.body23:                                        ; preds = %if.then22
  %21 = load i32, i32* @debug, align 4, !dbg !6295
  %tobool24 = icmp ne i32 %21, 0, !dbg !6295
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !6298

if.then25:                                        ; preds = %do.body23
  %22 = load i32, i32* %ret, align 4, !dbg !6295
  %call26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.mt312_write, i64 0, i64 0), i32 %22) #9, !dbg !6295
  br label %if.end27, !dbg !6295

if.end27:                                         ; preds = %if.then25, %do.body23
  br label %do.end28, !dbg !6298

do.end28:                                         ; preds = %if.end27
  store i32 -121, i32* %retval, align 4, !dbg !6299
  br label %return, !dbg !6299

if.end29:                                         ; preds = %if.end11
  store i32 0, i32* %retval, align 4, !dbg !6300
  br label %return, !dbg !6300

return:                                           ; preds = %if.end29, %do.end28, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !6301
  ret i32 %23, !dbg !6301
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_get_inversion(%struct.mt312_state* %state, i32* %i) #0 !dbg !6302 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.mt312_state*, align 8
  %i.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %vit_mode = alloca i8, align 1
  store %struct.mt312_state* %state, %struct.mt312_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state.addr, metadata !6306, metadata !DIExpression()), !dbg !6307
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !6308, metadata !DIExpression()), !dbg !6309
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6310, metadata !DIExpression()), !dbg !6311
  call void @llvm.dbg.declare(metadata i8* %vit_mode, metadata !6312, metadata !DIExpression()), !dbg !6313
  %0 = load %struct.mt312_state*, %struct.mt312_state** %state.addr, align 8, !dbg !6314
  %call = call i32 @mt312_readreg(%struct.mt312_state* %0, i32 25, i8* %vit_mode) #8, !dbg !6315
  store i32 %call, i32* %ret, align 4, !dbg !6316
  %1 = load i32, i32* %ret, align 4, !dbg !6317
  %cmp = icmp slt i32 %1, 0, !dbg !6319
  br i1 %cmp, label %if.then, label %if.end, !dbg !6320

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !6321
  store i32 %2, i32* %retval, align 4, !dbg !6322
  br label %return, !dbg !6322

if.end:                                           ; preds = %entry
  %3 = load i8, i8* %vit_mode, align 1, !dbg !6323
  %conv = zext i8 %3 to i32, !dbg !6323
  %and = and i32 %conv, 128, !dbg !6325
  %tobool = icmp ne i32 %and, 0, !dbg !6325
  br i1 %tobool, label %if.then1, label %if.end5, !dbg !6326

if.then1:                                         ; preds = %if.end
  %4 = load i8, i8* %vit_mode, align 1, !dbg !6327
  %conv2 = zext i8 %4 to i32, !dbg !6327
  %and3 = and i32 %conv2, 64, !dbg !6328
  %tobool4 = icmp ne i32 %and3, 0, !dbg !6329
  %5 = zext i1 %tobool4 to i64, !dbg !6329
  %cond = select i1 %tobool4, i32 1, i32 0, !dbg !6329
  %6 = load i32*, i32** %i.addr, align 8, !dbg !6330
  store i32 %cond, i32* %6, align 4, !dbg !6331
  br label %if.end5, !dbg !6332

if.end5:                                          ; preds = %if.then1, %if.end
  store i32 0, i32* %retval, align 4, !dbg !6333
  br label %return, !dbg !6333

return:                                           ; preds = %if.end5, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !6334
  ret i32 %7, !dbg !6334
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_get_symbol_rate(%struct.mt312_state* %state, i32* %sr) #0 !dbg !6335 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.mt312_state*, align 8
  %sr.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %sym_rate_h = alloca i8, align 1
  %dec_ratio = alloca i8, align 1
  %sym_rat_op = alloca i16, align 2
  %monitor = alloca i16, align 2
  %buf = alloca [2 x i8], align 1
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.mt312_state* %state, %struct.mt312_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state.addr, metadata !6338, metadata !DIExpression()), !dbg !6339
  store i32* %sr, i32** %sr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sr.addr, metadata !6340, metadata !DIExpression()), !dbg !6341
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6342, metadata !DIExpression()), !dbg !6343
  call void @llvm.dbg.declare(metadata i8* %sym_rate_h, metadata !6344, metadata !DIExpression()), !dbg !6345
  call void @llvm.dbg.declare(metadata i8* %dec_ratio, metadata !6346, metadata !DIExpression()), !dbg !6347
  call void @llvm.dbg.declare(metadata i16* %sym_rat_op, metadata !6348, metadata !DIExpression()), !dbg !6349
  call void @llvm.dbg.declare(metadata i16* %monitor, metadata !6350, metadata !DIExpression()), !dbg !6351
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !6352, metadata !DIExpression()), !dbg !6353
  %0 = load %struct.mt312_state*, %struct.mt312_state** %state.addr, align 8, !dbg !6354
  %call = call i32 @mt312_readreg(%struct.mt312_state* %0, i32 23, i8* %sym_rate_h) #8, !dbg !6355
  store i32 %call, i32* %ret, align 4, !dbg !6356
  %1 = load i32, i32* %ret, align 4, !dbg !6357
  %cmp = icmp slt i32 %1, 0, !dbg !6359
  br i1 %cmp, label %if.then, label %if.end, !dbg !6360

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !6361
  store i32 %2, i32* %retval, align 4, !dbg !6362
  br label %return, !dbg !6362

if.end:                                           ; preds = %entry
  %3 = load i8, i8* %sym_rate_h, align 1, !dbg !6363
  %conv = zext i8 %3 to i32, !dbg !6363
  %and = and i32 %conv, 128, !dbg !6365
  %tobool = icmp ne i32 %and, 0, !dbg !6365
  br i1 %tobool, label %if.then1, label %if.else, !dbg !6366

if.then1:                                         ; preds = %if.end
  %4 = load %struct.mt312_state*, %struct.mt312_state** %state.addr, align 8, !dbg !6367
  %call2 = call i32 @mt312_writereg(%struct.mt312_state* %4, i32 103, i8 zeroext 3) #8, !dbg !6369
  store i32 %call2, i32* %ret, align 4, !dbg !6370
  %5 = load i32, i32* %ret, align 4, !dbg !6371
  %cmp3 = icmp slt i32 %5, 0, !dbg !6373
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !6374

if.then5:                                         ; preds = %if.then1
  %6 = load i32, i32* %ret, align 4, !dbg !6375
  store i32 %6, i32* %retval, align 4, !dbg !6376
  br label %return, !dbg !6376

if.end6:                                          ; preds = %if.then1
  %7 = load %struct.mt312_state*, %struct.mt312_state** %state.addr, align 8, !dbg !6377
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !6378
  %call7 = call i32 @mt312_read(%struct.mt312_state* %7, i32 123, i8* %arraydecay, i64 2) #8, !dbg !6379
  store i32 %call7, i32* %ret, align 4, !dbg !6380
  %8 = load i32, i32* %ret, align 4, !dbg !6381
  %cmp8 = icmp slt i32 %8, 0, !dbg !6383
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !6384

if.then10:                                        ; preds = %if.end6
  %9 = load i32, i32* %ret, align 4, !dbg !6385
  store i32 %9, i32* %retval, align 4, !dbg !6386
  br label %return, !dbg !6386

if.end11:                                         ; preds = %if.end6
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !6387
  %10 = load i8, i8* %arrayidx, align 1, !dbg !6387
  %conv12 = zext i8 %10 to i32, !dbg !6387
  %shl = shl i32 %conv12, 8, !dbg !6388
  %arrayidx13 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 1, !dbg !6389
  %11 = load i8, i8* %arrayidx13, align 1, !dbg !6389
  %conv14 = zext i8 %11 to i32, !dbg !6389
  %or = or i32 %shl, %conv14, !dbg !6390
  %conv15 = trunc i32 %or to i16, !dbg !6391
  store i16 %conv15, i16* %monitor, align 2, !dbg !6392
  br label %do.body, !dbg !6393

do.body:                                          ; preds = %if.end11
  %12 = load i32, i32* @debug, align 4, !dbg !6394
  %tobool16 = icmp ne i32 %12, 0, !dbg !6394
  br i1 %tobool16, label %if.then17, label %if.end29, !dbg !6397

if.then17:                                        ; preds = %do.body
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !6398, metadata !DIExpression()), !dbg !6400
  %13 = load i16, i16* %monitor, align 2, !dbg !6400
  %conv18 = zext i16 %13 to i32, !dbg !6400
  %mul = mul i32 %conv18, 15625, !dbg !6400
  store i32 %mul, i32* %__x, align 4, !dbg !6400
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !6401, metadata !DIExpression()), !dbg !6400
  store i32 4, i32* %__d, align 4, !dbg !6400
  %14 = load i32, i32* %__x, align 4, !dbg !6400
  %cmp19 = icmp sgt i32 %14, 0, !dbg !6400
  %conv20 = zext i1 %cmp19 to i32, !dbg !6400
  %15 = load i32, i32* %__d, align 4, !dbg !6400
  %cmp21 = icmp sgt i32 %15, 0, !dbg !6400
  %conv22 = zext i1 %cmp21 to i32, !dbg !6400
  %cmp23 = icmp eq i32 %conv20, %conv22, !dbg !6400
  br i1 %cmp23, label %cond.true, label %cond.false, !dbg !6400

cond.true:                                        ; preds = %if.then17
  %16 = load i32, i32* %__x, align 4, !dbg !6400
  %17 = load i32, i32* %__d, align 4, !dbg !6400
  %div = sdiv i32 %17, 2, !dbg !6400
  %add = add i32 %16, %div, !dbg !6400
  %18 = load i32, i32* %__d, align 4, !dbg !6400
  %div25 = sdiv i32 %add, %18, !dbg !6400
  br label %cond.end, !dbg !6400

cond.false:                                       ; preds = %if.then17
  %19 = load i32, i32* %__x, align 4, !dbg !6400
  %20 = load i32, i32* %__d, align 4, !dbg !6400
  %div26 = sdiv i32 %20, 2, !dbg !6400
  %sub = sub i32 %19, %div26, !dbg !6400
  %21 = load i32, i32* %__d, align 4, !dbg !6400
  %div27 = sdiv i32 %sub, %21, !dbg !6400
  br label %cond.end, !dbg !6400

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div25, %cond.true ], [ %div27, %cond.false ], !dbg !6400
  store i32 %cond, i32* %tmp, align 4, !dbg !6400
  %22 = load i32, i32* %tmp, align 4, !dbg !6400
  %call28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %22) #9, !dbg !6394
  br label %if.end29, !dbg !6394

if.end29:                                         ; preds = %cond.end, %do.body
  br label %do.end, !dbg !6397

do.end:                                           ; preds = %if.end29
  br label %if.end81, !dbg !6402

if.else:                                          ; preds = %if.end
  %23 = load %struct.mt312_state*, %struct.mt312_state** %state.addr, align 8, !dbg !6403
  %call30 = call i32 @mt312_writereg(%struct.mt312_state* %23, i32 103, i8 zeroext 5) #8, !dbg !6405
  store i32 %call30, i32* %ret, align 4, !dbg !6406
  %24 = load i32, i32* %ret, align 4, !dbg !6407
  %cmp31 = icmp slt i32 %24, 0, !dbg !6409
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !6410

if.then33:                                        ; preds = %if.else
  %25 = load i32, i32* %ret, align 4, !dbg !6411
  store i32 %25, i32* %retval, align 4, !dbg !6412
  br label %return, !dbg !6412

if.end34:                                         ; preds = %if.else
  %26 = load %struct.mt312_state*, %struct.mt312_state** %state.addr, align 8, !dbg !6413
  %arraydecay35 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !6414
  %call36 = call i32 @mt312_read(%struct.mt312_state* %26, i32 123, i8* %arraydecay35, i64 2) #8, !dbg !6415
  store i32 %call36, i32* %ret, align 4, !dbg !6416
  %27 = load i32, i32* %ret, align 4, !dbg !6417
  %cmp37 = icmp slt i32 %27, 0, !dbg !6419
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !6420

if.then39:                                        ; preds = %if.end34
  %28 = load i32, i32* %ret, align 4, !dbg !6421
  store i32 %28, i32* %retval, align 4, !dbg !6422
  br label %return, !dbg !6422

if.end40:                                         ; preds = %if.end34
  %arrayidx41 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !6423
  %29 = load i8, i8* %arrayidx41, align 1, !dbg !6423
  %conv42 = zext i8 %29 to i32, !dbg !6423
  %shr = ashr i32 %conv42, 5, !dbg !6424
  %and43 = and i32 %shr, 7, !dbg !6425
  %mul44 = mul i32 %and43, 32, !dbg !6426
  %conv45 = trunc i32 %mul44 to i8, !dbg !6427
  store i8 %conv45, i8* %dec_ratio, align 1, !dbg !6428
  %30 = load %struct.mt312_state*, %struct.mt312_state** %state.addr, align 8, !dbg !6429
  %arraydecay46 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !6430
  %call47 = call i32 @mt312_read(%struct.mt312_state* %30, i32 116, i8* %arraydecay46, i64 2) #8, !dbg !6431
  store i32 %call47, i32* %ret, align 4, !dbg !6432
  %31 = load i32, i32* %ret, align 4, !dbg !6433
  %cmp48 = icmp slt i32 %31, 0, !dbg !6435
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !6436

if.then50:                                        ; preds = %if.end40
  %32 = load i32, i32* %ret, align 4, !dbg !6437
  store i32 %32, i32* %retval, align 4, !dbg !6438
  br label %return, !dbg !6438

if.end51:                                         ; preds = %if.end40
  %arrayidx52 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !6439
  %33 = load i8, i8* %arrayidx52, align 1, !dbg !6439
  %conv53 = zext i8 %33 to i32, !dbg !6439
  %shl54 = shl i32 %conv53, 8, !dbg !6440
  %arrayidx55 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 1, !dbg !6441
  %34 = load i8, i8* %arrayidx55, align 1, !dbg !6441
  %conv56 = zext i8 %34 to i32, !dbg !6441
  %or57 = or i32 %shl54, %conv56, !dbg !6442
  %conv58 = trunc i32 %or57 to i16, !dbg !6443
  store i16 %conv58, i16* %sym_rat_op, align 2, !dbg !6444
  br label %do.body59, !dbg !6445

do.body59:                                        ; preds = %if.end51
  %35 = load i32, i32* @debug, align 4, !dbg !6446
  %tobool60 = icmp ne i32 %35, 0, !dbg !6446
  br i1 %tobool60, label %if.then61, label %if.end65, !dbg !6449

if.then61:                                        ; preds = %do.body59
  %36 = load i16, i16* %sym_rat_op, align 2, !dbg !6446
  %conv62 = zext i16 %36 to i32, !dbg !6446
  %37 = load i8, i8* %dec_ratio, align 1, !dbg !6446
  %conv63 = zext i8 %37 to i32, !dbg !6446
  %call64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i32 %conv62, i32 %conv63) #9, !dbg !6446
  br label %if.end65, !dbg !6446

if.end65:                                         ; preds = %if.then61, %do.body59
  br label %do.end66, !dbg !6449

do.end66:                                         ; preds = %if.end65
  br label %do.body67, !dbg !6450

do.body67:                                        ; preds = %do.end66
  %38 = load i32, i32* @debug, align 4, !dbg !6451
  %tobool68 = icmp ne i32 %38, 0, !dbg !6451
  br i1 %tobool68, label %if.then69, label %if.end79, !dbg !6454

if.then69:                                        ; preds = %do.body67
  %39 = load %struct.mt312_state*, %struct.mt312_state** %state.addr, align 8, !dbg !6451
  %xtal = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %39, i32 0, i32 4, !dbg !6451
  %40 = load i64, i64* %xtal, align 8, !dbg !6451
  %mul70 = mul i64 %40, 8192, !dbg !6451
  %41 = load i16, i16* %sym_rat_op, align 2, !dbg !6451
  %conv71 = zext i16 %41 to i32, !dbg !6451
  %add72 = add i32 %conv71, 8192, !dbg !6451
  %conv73 = sext i32 %add72 to i64, !dbg !6451
  %div74 = udiv i64 %mul70, %conv73, !dbg !6451
  %mul75 = mul i64 %div74, 2, !dbg !6451
  %42 = load i8, i8* %dec_ratio, align 1, !dbg !6451
  %conv76 = zext i8 %42 to i64, !dbg !6451
  %sub77 = sub i64 %mul75, %conv76, !dbg !6451
  %call78 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i64 %sub77) #9, !dbg !6451
  br label %if.end79, !dbg !6451

if.end79:                                         ; preds = %if.then69, %do.body67
  br label %do.end80, !dbg !6454

do.end80:                                         ; preds = %if.end79
  br label %if.end81

if.end81:                                         ; preds = %do.end80, %do.end
  store i32 0, i32* %retval, align 4, !dbg !6455
  br label %return, !dbg !6455

return:                                           ; preds = %if.end81, %if.then50, %if.then39, %if.then33, %if.then10, %if.then5, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !6456
  ret i32 %43, !dbg !6456
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt312_get_code_rate(%struct.mt312_state* %state, i32* %cr) #0 !dbg !6457 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.mt312_state*, align 8
  %cr.addr = alloca i32*, align 8
  %fec_tab = alloca [8 x i32], align 16
  %ret = alloca i32, align 4
  %fec_status = alloca i8, align 1
  store %struct.mt312_state* %state, %struct.mt312_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mt312_state** %state.addr, metadata !6461, metadata !DIExpression()), !dbg !6462
  store i32* %cr, i32** %cr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %cr.addr, metadata !6463, metadata !DIExpression()), !dbg !6464
  call void @llvm.dbg.declare(metadata [8 x i32]* %fec_tab, metadata !6465, metadata !DIExpression()), !dbg !6468
  %0 = bitcast [8 x i32]* %fec_tab to i8*, !dbg !6468
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([8 x i32]* @__const.mt312_get_code_rate.fec_tab to i8*), i64 32, i1 false), !dbg !6468
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6469, metadata !DIExpression()), !dbg !6470
  call void @llvm.dbg.declare(metadata i8* %fec_status, metadata !6471, metadata !DIExpression()), !dbg !6472
  %1 = load %struct.mt312_state*, %struct.mt312_state** %state.addr, align 8, !dbg !6473
  %call = call i32 @mt312_readreg(%struct.mt312_state* %1, i32 6, i8* %fec_status) #8, !dbg !6474
  store i32 %call, i32* %ret, align 4, !dbg !6475
  %2 = load i32, i32* %ret, align 4, !dbg !6476
  %cmp = icmp slt i32 %2, 0, !dbg !6478
  br i1 %cmp, label %if.then, label %if.end, !dbg !6479

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !6480
  store i32 %3, i32* %retval, align 4, !dbg !6481
  br label %return, !dbg !6481

if.end:                                           ; preds = %entry
  %4 = load i8, i8* %fec_status, align 1, !dbg !6482
  %conv = zext i8 %4 to i32, !dbg !6482
  %shr = ashr i32 %conv, 4, !dbg !6483
  %and = and i32 %shr, 7, !dbg !6484
  %idxprom = sext i32 %and to i64, !dbg !6485
  %arrayidx = getelementptr [8 x i32], [8 x i32]* %fec_tab, i64 0, i64 %idxprom, !dbg !6485
  %5 = load i32, i32* %arrayidx, align 4, !dbg !6485
  %6 = load i32*, i32** %cr.addr, align 8, !dbg !6486
  store i32 %5, i32* %6, align 4, !dbg !6487
  store i32 0, i32* %retval, align 4, !dbg !6488
  br label %return, !dbg !6488

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !6489
  ret i32 %7, !dbg !6489
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!llvm.module.flags = !{!4442, !4443, !4444, !4445}
!llvm.ident = !{!4446}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mt312_ops", scope: !2, file: !3, line: 738, type: !550, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !428, globals: !438, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/mt312.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !40, !50, !57, !73, !78, !82, !87, !102, !113, !126, !133, !138, !144, !165, !171, !175, !183, !190, !195, !201, !207, !216, !224, !230, !236, !243, !251, !257, !271, !283, !416, !423}
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
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mt312_reg_addr", file: !284, line: 13, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "drivers/media/dvb-frontends/mt312_priv.h", directory: "/home/lizy2001/genbc/linux")
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415}
!286 = !DIEnumerator(name: "QPSK_INT_H", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "QPSK_INT_M", value: 1, isUnsigned: true)
!288 = !DIEnumerator(name: "QPSK_INT_L", value: 2, isUnsigned: true)
!289 = !DIEnumerator(name: "FEC_INT", value: 3, isUnsigned: true)
!290 = !DIEnumerator(name: "QPSK_STAT_H", value: 4, isUnsigned: true)
!291 = !DIEnumerator(name: "QPSK_STAT_L", value: 5, isUnsigned: true)
!292 = !DIEnumerator(name: "FEC_STATUS", value: 6, isUnsigned: true)
!293 = !DIEnumerator(name: "LNB_FREQ_H", value: 7, isUnsigned: true)
!294 = !DIEnumerator(name: "LNB_FREQ_L", value: 8, isUnsigned: true)
!295 = !DIEnumerator(name: "M_SNR_H", value: 9, isUnsigned: true)
!296 = !DIEnumerator(name: "M_SNR_L", value: 10, isUnsigned: true)
!297 = !DIEnumerator(name: "VIT_ERRCNT_H", value: 11, isUnsigned: true)
!298 = !DIEnumerator(name: "VIT_ERRCNT_M", value: 12, isUnsigned: true)
!299 = !DIEnumerator(name: "VIT_ERRCNT_L", value: 13, isUnsigned: true)
!300 = !DIEnumerator(name: "RS_BERCNT_H", value: 14, isUnsigned: true)
!301 = !DIEnumerator(name: "RS_BERCNT_M", value: 15, isUnsigned: true)
!302 = !DIEnumerator(name: "RS_BERCNT_L", value: 16, isUnsigned: true)
!303 = !DIEnumerator(name: "RS_UBC_H", value: 17, isUnsigned: true)
!304 = !DIEnumerator(name: "RS_UBC_L", value: 18, isUnsigned: true)
!305 = !DIEnumerator(name: "SIG_LEVEL", value: 19, isUnsigned: true)
!306 = !DIEnumerator(name: "GPP_CTRL", value: 20, isUnsigned: true)
!307 = !DIEnumerator(name: "RESET", value: 21, isUnsigned: true)
!308 = !DIEnumerator(name: "DISEQC_MODE", value: 22, isUnsigned: true)
!309 = !DIEnumerator(name: "SYM_RATE_H", value: 23, isUnsigned: true)
!310 = !DIEnumerator(name: "SYM_RATE_L", value: 24, isUnsigned: true)
!311 = !DIEnumerator(name: "VIT_MODE", value: 25, isUnsigned: true)
!312 = !DIEnumerator(name: "QPSK_CTRL", value: 26, isUnsigned: true)
!313 = !DIEnumerator(name: "GO", value: 27, isUnsigned: true)
!314 = !DIEnumerator(name: "IE_QPSK_H", value: 28, isUnsigned: true)
!315 = !DIEnumerator(name: "IE_QPSK_M", value: 29, isUnsigned: true)
!316 = !DIEnumerator(name: "IE_QPSK_L", value: 30, isUnsigned: true)
!317 = !DIEnumerator(name: "IE_FEC", value: 31, isUnsigned: true)
!318 = !DIEnumerator(name: "QPSK_STAT_EN", value: 32, isUnsigned: true)
!319 = !DIEnumerator(name: "FEC_STAT_EN", value: 33, isUnsigned: true)
!320 = !DIEnumerator(name: "SYS_CLK", value: 34, isUnsigned: true)
!321 = !DIEnumerator(name: "DISEQC_RATIO", value: 35, isUnsigned: true)
!322 = !DIEnumerator(name: "DISEQC_INSTR", value: 36, isUnsigned: true)
!323 = !DIEnumerator(name: "FR_LIM", value: 37, isUnsigned: true)
!324 = !DIEnumerator(name: "FR_OFF", value: 38, isUnsigned: true)
!325 = !DIEnumerator(name: "AGC_CTRL", value: 39, isUnsigned: true)
!326 = !DIEnumerator(name: "AGC_INIT", value: 40, isUnsigned: true)
!327 = !DIEnumerator(name: "AGC_REF", value: 41, isUnsigned: true)
!328 = !DIEnumerator(name: "AGC_MAX", value: 42, isUnsigned: true)
!329 = !DIEnumerator(name: "AGC_MIN", value: 43, isUnsigned: true)
!330 = !DIEnumerator(name: "AGC_LK_TH", value: 44, isUnsigned: true)
!331 = !DIEnumerator(name: "TS_AGC_LK_TH", value: 45, isUnsigned: true)
!332 = !DIEnumerator(name: "AGC_PWR_SET", value: 46, isUnsigned: true)
!333 = !DIEnumerator(name: "QPSK_MISC", value: 47, isUnsigned: true)
!334 = !DIEnumerator(name: "SNR_THS_LOW", value: 48, isUnsigned: true)
!335 = !DIEnumerator(name: "SNR_THS_HIGH", value: 49, isUnsigned: true)
!336 = !DIEnumerator(name: "TS_SW_RATE", value: 50, isUnsigned: true)
!337 = !DIEnumerator(name: "TS_SW_LIM_L", value: 51, isUnsigned: true)
!338 = !DIEnumerator(name: "TS_SW_LIM_H", value: 52, isUnsigned: true)
!339 = !DIEnumerator(name: "CS_SW_RATE_1", value: 53, isUnsigned: true)
!340 = !DIEnumerator(name: "CS_SW_RATE_2", value: 54, isUnsigned: true)
!341 = !DIEnumerator(name: "CS_SW_RATE_3", value: 55, isUnsigned: true)
!342 = !DIEnumerator(name: "CS_SW_RATE_4", value: 56, isUnsigned: true)
!343 = !DIEnumerator(name: "CS_SW_LIM", value: 57, isUnsigned: true)
!344 = !DIEnumerator(name: "TS_LPK", value: 58, isUnsigned: true)
!345 = !DIEnumerator(name: "TS_LPK_M", value: 59, isUnsigned: true)
!346 = !DIEnumerator(name: "TS_LPK_L", value: 60, isUnsigned: true)
!347 = !DIEnumerator(name: "CS_KPROP_H", value: 61, isUnsigned: true)
!348 = !DIEnumerator(name: "CS_KPROP_L", value: 62, isUnsigned: true)
!349 = !DIEnumerator(name: "CS_KINT_H", value: 63, isUnsigned: true)
!350 = !DIEnumerator(name: "CS_KINT_L", value: 64, isUnsigned: true)
!351 = !DIEnumerator(name: "QPSK_SCALE", value: 65, isUnsigned: true)
!352 = !DIEnumerator(name: "TLD_OUTCLK_TH", value: 66, isUnsigned: true)
!353 = !DIEnumerator(name: "TLD_INCLK_TH", value: 67, isUnsigned: true)
!354 = !DIEnumerator(name: "FLD_TH", value: 68, isUnsigned: true)
!355 = !DIEnumerator(name: "PLD_OUTLK3", value: 69, isUnsigned: true)
!356 = !DIEnumerator(name: "PLD_OUTLK2", value: 70, isUnsigned: true)
!357 = !DIEnumerator(name: "PLD_OUTLK1", value: 71, isUnsigned: true)
!358 = !DIEnumerator(name: "PLD_OUTLK0", value: 72, isUnsigned: true)
!359 = !DIEnumerator(name: "PLD_INLK3", value: 73, isUnsigned: true)
!360 = !DIEnumerator(name: "PLD_INLK2", value: 74, isUnsigned: true)
!361 = !DIEnumerator(name: "PLD_INLK1", value: 75, isUnsigned: true)
!362 = !DIEnumerator(name: "PLD_INLK0", value: 76, isUnsigned: true)
!363 = !DIEnumerator(name: "PLD_ACC_TIME", value: 77, isUnsigned: true)
!364 = !DIEnumerator(name: "SWEEP_PAR", value: 78, isUnsigned: true)
!365 = !DIEnumerator(name: "STARTUP_TIME", value: 79, isUnsigned: true)
!366 = !DIEnumerator(name: "LOSSLOCK_TH", value: 80, isUnsigned: true)
!367 = !DIEnumerator(name: "FEC_LOCK_TM", value: 81, isUnsigned: true)
!368 = !DIEnumerator(name: "LOSSLOCK_TM", value: 82, isUnsigned: true)
!369 = !DIEnumerator(name: "VIT_ERRPER_H", value: 83, isUnsigned: true)
!370 = !DIEnumerator(name: "VIT_ERRPER_M", value: 84, isUnsigned: true)
!371 = !DIEnumerator(name: "VIT_ERRPER_L", value: 85, isUnsigned: true)
!372 = !DIEnumerator(name: "HW_CTRL", value: 84, isUnsigned: true)
!373 = !DIEnumerator(name: "MPEG_CTRL", value: 85, isUnsigned: true)
!374 = !DIEnumerator(name: "VIT_SETUP", value: 86, isUnsigned: true)
!375 = !DIEnumerator(name: "VIT_REF0", value: 87, isUnsigned: true)
!376 = !DIEnumerator(name: "VIT_REF1", value: 88, isUnsigned: true)
!377 = !DIEnumerator(name: "VIT_REF2", value: 89, isUnsigned: true)
!378 = !DIEnumerator(name: "VIT_REF3", value: 90, isUnsigned: true)
!379 = !DIEnumerator(name: "VIT_REF4", value: 91, isUnsigned: true)
!380 = !DIEnumerator(name: "VIT_REF5", value: 92, isUnsigned: true)
!381 = !DIEnumerator(name: "VIT_REF6", value: 93, isUnsigned: true)
!382 = !DIEnumerator(name: "VIT_MAXERR", value: 94, isUnsigned: true)
!383 = !DIEnumerator(name: "BA_SETUPT", value: 95, isUnsigned: true)
!384 = !DIEnumerator(name: "OP_CTRL", value: 96, isUnsigned: true)
!385 = !DIEnumerator(name: "FEC_SETUP", value: 97, isUnsigned: true)
!386 = !DIEnumerator(name: "PROG_SYNC", value: 98, isUnsigned: true)
!387 = !DIEnumerator(name: "AFC_SEAR_TH", value: 99, isUnsigned: true)
!388 = !DIEnumerator(name: "CSACC_DIF_TH", value: 100, isUnsigned: true)
!389 = !DIEnumerator(name: "QPSK_LK_CT", value: 101, isUnsigned: true)
!390 = !DIEnumerator(name: "QPSK_ST_CT", value: 102, isUnsigned: true)
!391 = !DIEnumerator(name: "MON_CTRL", value: 103, isUnsigned: true)
!392 = !DIEnumerator(name: "QPSK_RESET", value: 104, isUnsigned: true)
!393 = !DIEnumerator(name: "QPSK_TST_CT", value: 105, isUnsigned: true)
!394 = !DIEnumerator(name: "QPSK_TST_ST", value: 106, isUnsigned: true)
!395 = !DIEnumerator(name: "TEST_R", value: 107, isUnsigned: true)
!396 = !DIEnumerator(name: "AGC_H", value: 108, isUnsigned: true)
!397 = !DIEnumerator(name: "AGC_M", value: 109, isUnsigned: true)
!398 = !DIEnumerator(name: "AGC_L", value: 110, isUnsigned: true)
!399 = !DIEnumerator(name: "FREQ_ERR1_H", value: 111, isUnsigned: true)
!400 = !DIEnumerator(name: "FREQ_ERR1_M", value: 112, isUnsigned: true)
!401 = !DIEnumerator(name: "FREQ_ERR1_L", value: 113, isUnsigned: true)
!402 = !DIEnumerator(name: "FREQ_ERR2_H", value: 114, isUnsigned: true)
!403 = !DIEnumerator(name: "FREQ_ERR2_L", value: 115, isUnsigned: true)
!404 = !DIEnumerator(name: "SYM_RAT_OP_H", value: 116, isUnsigned: true)
!405 = !DIEnumerator(name: "SYM_RAT_OP_L", value: 117, isUnsigned: true)
!406 = !DIEnumerator(name: "DESEQC2_INT", value: 118, isUnsigned: true)
!407 = !DIEnumerator(name: "DISEQC2_STAT", value: 119, isUnsigned: true)
!408 = !DIEnumerator(name: "DISEQC2_FIFO", value: 120, isUnsigned: true)
!409 = !DIEnumerator(name: "DISEQC2_CTRL1", value: 121, isUnsigned: true)
!410 = !DIEnumerator(name: "DISEQC2_CTRL2", value: 122, isUnsigned: true)
!411 = !DIEnumerator(name: "MONITOR_H", value: 123, isUnsigned: true)
!412 = !DIEnumerator(name: "MONITOR_L", value: 124, isUnsigned: true)
!413 = !DIEnumerator(name: "TEST_MODE", value: 125, isUnsigned: true)
!414 = !DIEnumerator(name: "ID", value: 126, isUnsigned: true)
!415 = !DIEnumerator(name: "CONFIG", value: 127, isUnsigned: true)
!416 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !417, line: 305, baseType: !7, size: 32, elements: !418)
!417 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!418 = !{!419, !420, !421, !422}
!419 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!420 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!421 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!422 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!423 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mt312_model_id", file: !284, line: 146, baseType: !7, size: 32, elements: !424)
!424 = !{!425, !426, !427}
!425 = !DIEnumerator(name: "ID_VP310", value: 1, isUnsigned: true)
!426 = !DIEnumerator(name: "ID_MT312", value: 3, isUnsigned: true)
!427 = !DIEnumerator(name: "ID_ZL10313", value: 5, isUnsigned: true)
!428 = !{!429, !431, !432, !433}
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !430, line: 148, baseType: !7)
!430 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!432 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !434, line: 18, baseType: !435)
!434 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !436, line: 23, baseType: !437)
!436 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!437 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!438 = !{!439, !508, !513, !518, !523, !528, !533, !538, !543, !0, !545}
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 832, type: !441, isLocal: true, isDefinition: true, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !443, line: 69, size: 320, elements: !444)
!443 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!444 = !{!445, !449, !453, !473, !478, !482, !486}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !442, file: !443, line: 70, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !442, file: !443, line: 71, baseType: !450, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !452, line: 76, flags: DIFlagFwdDecl)
!452 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !442, file: !443, line: 72, baseType: !454, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !443, line: 47, size: 256, elements: !457)
!457 = !{!458, !459, !464, !469}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !443, line: 49, baseType: !7, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !456, file: !443, line: 51, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!432, !446, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !456, file: !443, line: 53, baseType: !465, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!432, !468, !463}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !456, file: !443, line: 55, baseType: !470, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !431}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !442, file: !443, line: 73, baseType: !474, size: 16, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !434, line: 19, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !436, line: 24, baseType: !477)
!477 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !442, file: !443, line: 74, baseType: !479, size: 8, offset: 208)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !434, line: 16, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !436, line: 20, baseType: !481)
!481 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !443, line: 75, baseType: !483, size: 8, offset: 216)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !434, line: 17, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !436, line: 21, baseType: !485)
!485 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!486 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !443, line: 76, baseType: !487, size: 64, offset: 256)
!487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !443, line: 76, size: 64, elements: !488)
!488 = !{!489, !490, !497}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !487, file: !443, line: 77, baseType: !431, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !487, file: !443, line: 78, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !443, line: 86, size: 128, elements: !494)
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !493, file: !443, line: 87, baseType: !7, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !493, file: !443, line: 88, baseType: !468, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !487, file: !443, line: 79, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !443, line: 92, size: 256, elements: !501)
!501 = !{!502, !503, !504, !506, !507}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !500, file: !443, line: 94, baseType: !7, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !500, file: !443, line: 95, baseType: !7, size: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !500, file: !443, line: 96, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !500, file: !443, line: 97, baseType: !454, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !500, file: !443, line: 98, baseType: !431, size: 64, offset: 192)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 832, type: !510, isLocal: true, isDefinition: true, align: 8)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 200, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 25)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 833, type: !515, isLocal: true, isDefinition: true, align: 8)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 504, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 63)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 835, type: !520, isLocal: true, isDefinition: true, align: 8)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 568, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 71)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author223", scope: !2, file: !3, line: 836, type: !525, isLocal: true, isDefinition: true, align: 8)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 400, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 50)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author224", scope: !2, file: !3, line: 837, type: !530, isLocal: true, isDefinition: true, align: 8)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 408, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 51)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file225", scope: !2, file: !3, line: 838, type: !535, isLocal: true, isDefinition: true, align: 8)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 360, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 45)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license226", scope: !2, file: !3, line: 838, type: !540, isLocal: true, isDefinition: true, align: 8)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 144, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 18)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 40, type: !432, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 832, type: !547, isLocal: true, isDefinition: true)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 96, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 12)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !552)
!552 = !{!553, !570, !574, !4265, !4266, !4267, !4271, !4272, !4278, !4283, !4287, !4288, !4298, !4303, !4307, !4311, !4316, !4317, !4318, !4319, !4329, !4340, !4344, !4348, !4352, !4356, !4360, !4364, !4365, !4366, !4370, !4424}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !551, file: !51, line: 436, baseType: !554, size: 1280)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !555)
!555 = !{!556, !560, !563, !564, !565, !566, !567, !568, !569}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !554, file: !51, line: 339, baseType: !557, size: 1024)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 1024, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !554, file: !51, line: 340, baseType: !561, size: 32, offset: 1024)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !434, line: 21, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !436, line: 27, baseType: !7)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !554, file: !51, line: 341, baseType: !561, size: 32, offset: 1056)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !554, file: !51, line: 342, baseType: !561, size: 32, offset: 1088)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !554, file: !51, line: 343, baseType: !561, size: 32, offset: 1120)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !554, file: !51, line: 344, baseType: !561, size: 32, offset: 1152)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !554, file: !51, line: 345, baseType: !561, size: 32, offset: 1184)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !554, file: !51, line: 346, baseType: !561, size: 32, offset: 1216)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !554, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !551, file: !51, line: 438, baseType: !571, size: 64, offset: 1280)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 64, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 8)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !551, file: !51, line: 440, baseType: !575, size: 64, offset: 1344)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !580)
!580 = !{!581, !595, !596, !4181, !4182, !4183, !4184, !4185, !4186, !4259, !4263, !4264}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !579, file: !51, line: 687, baseType: !582, size: 32)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !583, line: 19, size: 32, elements: !584)
!583 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !582, file: !583, line: 20, baseType: !586, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !587, line: 113, baseType: !588)
!587 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !587, line: 111, size: 32, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !588, file: !587, line: 112, baseType: !591, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !430, line: 168, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 166, size: 32, elements: !593)
!593 = !{!594}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !592, file: !430, line: 167, baseType: !432, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !579, file: !51, line: 688, baseType: !551, size: 6016, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !579, file: !51, line: 689, baseType: !597, size: 64, offset: 6080)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !599)
!599 = !{!600, !601, !607, !608, !609, !613, !614, !4159, !4160, !4161, !4180}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !598, file: !272, line: 102, baseType: !432, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !598, file: !272, line: 103, baseType: !602, size: 128, offset: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !430, line: 178, size: 128, elements: !603)
!603 = !{!604, !606}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !602, file: !430, line: 179, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !602, file: !430, line: 179, baseType: !605, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !598, file: !272, line: 104, baseType: !602, size: 128, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !598, file: !272, line: 105, baseType: !446, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !598, file: !272, line: 106, baseType: !610, size: 48, offset: 384)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 48, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 6)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !598, file: !272, line: 107, baseType: !431, size: 64, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !598, file: !272, line: 109, baseType: !615, size: 64, offset: 512)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !617)
!617 = !{!618, !3616, !3617, !3620, !3621, !3672, !3760, !3761, !3762, !3763, !3764, !3773, !3878, !3891, !4086, !4087, !4091, !4093, !4094, !4095, !4099, !4105, !4106, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4147, !4148, !4149, !4152, !4155, !4156, !4157, !4158}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !616, file: !237, line: 462, baseType: !619, size: 512)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !620, line: 64, size: 512, elements: !621)
!620 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!621 = !{!622, !623, !624, !626, !685, !3471, !3610, !3611, !3612, !3613, !3614, !3615}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !619, file: !620, line: 65, baseType: !446, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !619, file: !620, line: 66, baseType: !602, size: 128, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !619, file: !620, line: 67, baseType: !625, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !619, file: !620, line: 68, baseType: !627, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !620, line: 192, size: 704, elements: !629)
!629 = !{!630, !631, !647, !648}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !628, file: !620, line: 193, baseType: !602, size: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !628, file: !620, line: 194, baseType: !632, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !633, line: 83, baseType: !634)
!633 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !633, line: 71, elements: !635)
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, scope: !634, file: !633, line: 72, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !634, file: !633, line: 72, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !637, file: !633, line: 73, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !633, line: 20, elements: !641)
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !640, file: !633, line: 21, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !644, line: 25, baseType: !645)
!644 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !644, line: 25, elements: !646)
!646 = !{}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !628, file: !620, line: 195, baseType: !619, size: 512, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !628, file: !620, line: 196, baseType: !649, size: 64, offset: 640)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !620, line: 156, size: 192, elements: !652)
!652 = !{!653, !658, !663}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !651, file: !620, line: 157, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!432, !627, !625}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !651, file: !620, line: 158, baseType: !659, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!446, !627, !625}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !651, file: !620, line: 159, baseType: !664, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!432, !627, !625, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !620, line: 148, size: 20736, elements: !670)
!670 = !{!671, !675, !679, !680, !684}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !669, file: !620, line: 149, baseType: !672, size: 192)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 192, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 3)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !669, file: !620, line: 150, baseType: !676, size: 4096, offset: 192)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 4096, elements: !677)
!677 = !{!678}
!678 = !DISubrange(count: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !669, file: !620, line: 151, baseType: !432, size: 32, offset: 4288)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !669, file: !620, line: 152, baseType: !681, size: 16384, offset: 4320)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 16384, elements: !682)
!682 = !{!683}
!683 = !DISubrange(count: 2048)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !669, file: !620, line: 153, baseType: !432, size: 32, offset: 20704)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !619, file: !620, line: 69, baseType: !686, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !620, line: 138, size: 448, elements: !688)
!688 = !{!689, !693, !722, !724, !3433, !3461, !3465}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !687, file: !620, line: 139, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !625}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !687, file: !620, line: 140, baseType: !694, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !697, line: 230, size: 128, elements: !698)
!697 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!698 = !{!699, !714}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !696, file: !697, line: 231, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!703, !625, !708, !468}
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !430, line: 60, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !705, line: 73, baseType: !706)
!705 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !705, line: 15, baseType: !707)
!707 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !697, line: 30, size: 128, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !709, file: !697, line: 31, baseType: !446, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !709, file: !697, line: 32, baseType: !713, size: 16, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !430, line: 19, baseType: !477)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !696, file: !697, line: 232, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!703, !625, !708, !446, !718}
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !430, line: 55, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !705, line: 72, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !705, line: 16, baseType: !721)
!721 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !687, file: !620, line: 141, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !687, file: !620, line: 142, baseType: !725, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !697, line: 84, size: 320, elements: !729)
!729 = !{!730, !731, !735, !3430, !3431}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !728, file: !697, line: 85, baseType: !446, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !728, file: !697, line: 86, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!713, !625, !708, !432}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !728, file: !697, line: 88, baseType: !736, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!713, !625, !739, !432}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !697, line: 168, size: 448, elements: !741)
!741 = !{!742, !743, !744, !745, !3425, !3426}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !740, file: !697, line: 169, baseType: !709, size: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !740, file: !697, line: 170, baseType: !718, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !740, file: !697, line: 171, baseType: !431, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !740, file: !697, line: 172, baseType: !746, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!703, !749, !625, !739, !468, !920, !718}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !751)
!751 = !{!752, !770, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3408, !3409, !3418, !3419, !3420, !3421, !3422, !3423, !3424}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !750, file: !208, line: 920, baseType: !753, size: 128)
!753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !750, file: !208, line: 917, size: 128, elements: !754)
!754 = !{!755, !761}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !753, file: !208, line: 918, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !757, line: 58, size: 64, elements: !758)
!757 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !756, file: !757, line: 59, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !753, file: !208, line: 919, baseType: !762, size: 128, align: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !430, line: 216, size: 128, align: 64, elements: !763)
!763 = !{!764, !766}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !762, file: !430, line: 217, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !762, file: !430, line: 218, baseType: !767, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{null, !765}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !750, file: !208, line: 921, baseType: !771, size: 128, offset: 128)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !772, line: 8, size: 128, elements: !773)
!772 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!773 = !{!774, !778}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !771, file: !772, line: 9, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !777, line: 18, flags: DIFlagFwdDecl)
!777 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!778 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !771, file: !772, line: 10, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !777, line: 89, size: 1536, elements: !781)
!781 = !{!782, !783, !793, !801, !802, !820, !3359, !3361, !3373, !3374, !3375, !3376, !3377, !3382, !3383, !3384}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !780, file: !777, line: 91, baseType: !7, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !780, file: !777, line: 92, baseType: !784, size: 32, offset: 32)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !785, line: 277, baseType: !786)
!785 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !785, line: 277, size: 32, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !786, file: !785, line: 277, baseType: !789, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !785, line: 70, baseType: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !785, line: 65, size: 32, elements: !791)
!791 = !{!792}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !790, file: !785, line: 66, baseType: !7, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !780, file: !777, line: 93, baseType: !794, size: 128, offset: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !795, line: 38, size: 128, elements: !796)
!795 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!796 = !{!797, !799}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !794, file: !795, line: 39, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !794, file: !795, line: 39, baseType: !800, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !780, file: !777, line: 94, baseType: !779, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !780, file: !777, line: 95, baseType: !803, size: 128, offset: 256)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !777, line: 47, size: 128, elements: !804)
!804 = !{!805, !817}
!805 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !777, line: 48, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !803, file: !777, line: 48, size: 64, elements: !807)
!807 = !{!808, !813}
!808 = !DIDerivedType(tag: DW_TAG_member, scope: !806, file: !777, line: 49, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !806, file: !777, line: 49, size: 64, elements: !810)
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !809, file: !777, line: 50, baseType: !561, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !809, file: !777, line: 50, baseType: !561, size: 32, offset: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !806, file: !777, line: 52, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !434, line: 23, baseType: !815)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !436, line: 31, baseType: !816)
!816 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !803, file: !777, line: 54, baseType: !818, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !780, file: !777, line: 96, baseType: !821, size: 64, offset: 384)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !823)
!823 = !{!824, !825, !826, !834, !841, !842, !987, !3053, !3054, !3055, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3327, !3335, !3336, !3337, !3355, !3356, !3357, !3358}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !822, file: !208, line: 611, baseType: !713, size: 16)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !822, file: !208, line: 612, baseType: !477, size: 16, offset: 16)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !822, file: !208, line: 613, baseType: !827, size: 32, offset: 32)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !828, line: 23, baseType: !829)
!828 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !828, line: 21, size: 32, elements: !830)
!830 = !{!831}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !829, file: !828, line: 22, baseType: !832, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !430, line: 32, baseType: !833)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !705, line: 49, baseType: !7)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !822, file: !208, line: 614, baseType: !835, size: 32, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !828, line: 28, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !828, line: 26, size: 32, elements: !837)
!837 = !{!838}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !836, file: !828, line: 27, baseType: !839, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !430, line: 33, baseType: !840)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !705, line: 50, baseType: !7)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !822, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !822, file: !208, line: 622, baseType: !843, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !846)
!846 = !{!847, !851, !861, !865, !871, !875, !881, !885, !889, !893, !897, !898, !904, !908, !934, !963, !967, !973, !978, !982, !983}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !845, file: !208, line: 1865, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!779, !821, !779, !7}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !845, file: !208, line: 1866, baseType: !852, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!446, !779, !821, !855}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !857, line: 10, size: 128, elements: !858)
!857 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !856, file: !857, line: 11, baseType: !470, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !856, file: !857, line: 12, baseType: !431, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !845, file: !208, line: 1867, baseType: !862, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!432, !821, !432}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !845, file: !208, line: 1868, baseType: !866, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!869, !821, !432}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !845, file: !208, line: 1870, baseType: !872, size: 64, offset: 256)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!432, !779, !468, !432}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !845, file: !208, line: 1872, baseType: !876, size: 64, offset: 320)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!432, !821, !779, !713, !879}
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !430, line: 30, baseType: !880)
!880 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !845, file: !208, line: 1873, baseType: !882, size: 64, offset: 384)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!432, !779, !821, !779}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !845, file: !208, line: 1874, baseType: !886, size: 64, offset: 448)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!432, !821, !779}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !845, file: !208, line: 1875, baseType: !890, size: 64, offset: 512)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!432, !821, !779, !446}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !845, file: !208, line: 1876, baseType: !894, size: 64, offset: 576)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!432, !821, !779, !713}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !845, file: !208, line: 1877, baseType: !886, size: 64, offset: 640)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !845, file: !208, line: 1878, baseType: !899, size: 64, offset: 704)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!432, !821, !779, !713, !902}
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !430, line: 16, baseType: !903)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !430, line: 13, baseType: !561)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !845, file: !208, line: 1879, baseType: !905, size: 64, offset: 768)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!432, !821, !779, !821, !779, !7}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !845, file: !208, line: 1881, baseType: !909, size: 64, offset: 832)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!432, !779, !912}
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !914)
!914 = !{!915, !916, !917, !918, !919, !923, !931, !932, !933}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !913, file: !208, line: 220, baseType: !7, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !913, file: !208, line: 221, baseType: !713, size: 16, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !913, file: !208, line: 222, baseType: !827, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !913, file: !208, line: 223, baseType: !835, size: 32, offset: 96)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !913, file: !208, line: 224, baseType: !920, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !430, line: 46, baseType: !921)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !705, line: 88, baseType: !922)
!922 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !913, file: !208, line: 225, baseType: !924, size: 128, offset: 192)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !925, line: 13, size: 128, elements: !926)
!925 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!926 = !{!927, !930}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !924, file: !925, line: 14, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !925, line: 8, baseType: !929)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !436, line: 30, baseType: !922)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !924, file: !925, line: 15, baseType: !707, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !913, file: !208, line: 226, baseType: !924, size: 128, offset: 320)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !913, file: !208, line: 227, baseType: !924, size: 128, offset: 448)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !913, file: !208, line: 234, baseType: !749, size: 64, offset: 576)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !845, file: !208, line: 1882, baseType: !935, size: 64, offset: 896)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!432, !938, !940, !561, !7}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !942, line: 22, size: 1152, elements: !943)
!942 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!943 = !{!944, !945, !946, !947, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !941, file: !942, line: 23, baseType: !561, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !941, file: !942, line: 24, baseType: !713, size: 16, offset: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !941, file: !942, line: 25, baseType: !7, size: 32, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !941, file: !942, line: 26, baseType: !948, size: 32, offset: 96)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !430, line: 104, baseType: !561)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !941, file: !942, line: 27, baseType: !814, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !941, file: !942, line: 28, baseType: !814, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !941, file: !942, line: 37, baseType: !814, size: 64, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !941, file: !942, line: 38, baseType: !902, size: 32, offset: 320)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !941, file: !942, line: 39, baseType: !902, size: 32, offset: 352)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !941, file: !942, line: 40, baseType: !827, size: 32, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !941, file: !942, line: 41, baseType: !835, size: 32, offset: 416)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !941, file: !942, line: 42, baseType: !920, size: 64, offset: 448)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !941, file: !942, line: 43, baseType: !924, size: 128, offset: 512)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !941, file: !942, line: 44, baseType: !924, size: 128, offset: 640)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !941, file: !942, line: 45, baseType: !924, size: 128, offset: 768)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !941, file: !942, line: 46, baseType: !924, size: 128, offset: 896)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !941, file: !942, line: 47, baseType: !814, size: 64, offset: 1024)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !941, file: !942, line: 48, baseType: !814, size: 64, offset: 1088)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !845, file: !208, line: 1883, baseType: !964, size: 64, offset: 960)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!703, !779, !468, !718}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !845, file: !208, line: 1884, baseType: !968, size: 64, offset: 1024)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!432, !821, !971, !814, !814}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !845, file: !208, line: 1886, baseType: !974, size: 64, offset: 1088)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!432, !821, !977, !432}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !845, file: !208, line: 1887, baseType: !979, size: 64, offset: 1152)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!432, !821, !779, !749, !7, !713}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !845, file: !208, line: 1890, baseType: !894, size: 64, offset: 1216)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !845, file: !208, line: 1891, baseType: !984, size: 64, offset: 1280)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!432, !821, !869, !432}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !822, file: !208, line: 623, baseType: !988, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !990)
!990 = !{!991, !992, !993, !994, !995, !996, !1043, !2661, !2743, !2826, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2842, !2846, !2847, !2850, !2851, !2854, !2855, !2856, !2897, !2923, !2924, !2925, !2926, !2927, !2928, !2931, !2933, !2940, !2941, !2943, !2944, !2945, !3004, !3005, !3020, !3021, !3022, !3023, !3024, !3027, !3028, !3029, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !989, file: !208, line: 1417, baseType: !602, size: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !989, file: !208, line: 1418, baseType: !902, size: 32, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !989, file: !208, line: 1419, baseType: !485, size: 8, offset: 160)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !989, file: !208, line: 1420, baseType: !721, size: 64, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !989, file: !208, line: 1421, baseType: !920, size: 64, offset: 256)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !989, file: !208, line: 1422, baseType: !997, size: 64, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !999)
!999 = !{!1000, !1001, !1002, !1009, !1013, !1017, !1021, !1022, !1023, !1033, !1036, !1037, !1038, !1040, !1041, !1042}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !998, file: !208, line: 2229, baseType: !446, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !998, file: !208, line: 2230, baseType: !432, size: 32, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !998, file: !208, line: 2238, baseType: !1003, size: 64, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!432, !1006}
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1008, line: 28, flags: DIFlagFwdDecl)
!1008 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !998, file: !208, line: 2239, baseType: !1010, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1012)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !998, file: !208, line: 2240, baseType: !1014, size: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!779, !997, !432, !446, !431}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !998, file: !208, line: 2242, baseType: !1018, size: 64, offset: 320)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !988}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !998, file: !208, line: 2243, baseType: !450, size: 64, offset: 384)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !998, file: !208, line: 2244, baseType: !997, size: 64, offset: 448)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !998, file: !208, line: 2245, baseType: !1024, size: 64, offset: 512)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !430, line: 182, size: 64, elements: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1024, file: !430, line: 183, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !430, line: 186, size: 128, elements: !1029)
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1028, file: !430, line: 187, baseType: !1027, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1028, file: !430, line: 187, baseType: !1032, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !998, file: !208, line: 2247, baseType: !1034, offset: 576)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1035, line: 187, elements: !646)
!1035 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !998, file: !208, line: 2248, baseType: !1034, offset: 576)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !998, file: !208, line: 2249, baseType: !1034, offset: 576)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !998, file: !208, line: 2250, baseType: !1039, offset: 576)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1034, elements: !673)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !998, file: !208, line: 2252, baseType: !1034, offset: 576)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !998, file: !208, line: 2253, baseType: !1034, offset: 576)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !998, file: !208, line: 2254, baseType: !1034, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !989, file: !208, line: 1423, baseType: !1044, size: 64, offset: 384)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1046)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !1047)
!1047 = !{!1048, !1052, !1056, !1057, !1061, !1067, !1071, !1072, !1073, !1077, !1081, !1082, !1083, !1084, !1090, !1095, !1096, !1103, !1104, !1105, !1106, !2645, !2660}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1046, file: !208, line: 1936, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!821, !988}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1046, file: !208, line: 1937, baseType: !1053, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !821}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1046, file: !208, line: 1938, baseType: !1053, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1046, file: !208, line: 1940, baseType: !1058, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{null, !821, !432}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1046, file: !208, line: 1941, baseType: !1062, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!432, !821, !1065}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1046, file: !208, line: 1942, baseType: !1068, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!432, !821}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1046, file: !208, line: 1943, baseType: !1053, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1046, file: !208, line: 1944, baseType: !1018, size: 64, offset: 448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1046, file: !208, line: 1945, baseType: !1074, size: 64, offset: 512)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!432, !988, !432}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1046, file: !208, line: 1946, baseType: !1078, size: 64, offset: 576)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!432, !988}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1046, file: !208, line: 1947, baseType: !1078, size: 64, offset: 640)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1046, file: !208, line: 1948, baseType: !1078, size: 64, offset: 704)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1046, file: !208, line: 1949, baseType: !1078, size: 64, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1046, file: !208, line: 1950, baseType: !1085, size: 64, offset: 832)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!432, !779, !1088}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1046, file: !208, line: 1951, baseType: !1091, size: 64, offset: 896)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!432, !988, !1094, !468}
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1046, file: !208, line: 1952, baseType: !1018, size: 64, offset: 960)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1046, file: !208, line: 1954, baseType: !1097, size: 64, offset: 1024)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!432, !1100, !779}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1102, line: 539, flags: DIFlagFwdDecl)
!1102 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1046, file: !208, line: 1955, baseType: !1097, size: 64, offset: 1088)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1046, file: !208, line: 1956, baseType: !1097, size: 64, offset: 1152)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1046, file: !208, line: 1957, baseType: !1097, size: 64, offset: 1216)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1046, file: !208, line: 1963, baseType: !1107, size: 64, offset: 1280)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!432, !988, !1110, !429}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1112, line: 68, size: 512, align: 128, elements: !1113)
!1112 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1113 = !{!1114, !1115, !2637, !2644}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1111, file: !1112, line: 69, baseType: !721, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1111, file: !1112, line: 77, baseType: !1116, size: 320, offset: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1111, file: !1112, line: 77, size: 320, elements: !1117)
!1117 = !{!1118, !1299, !1304, !1332, !1340, !1346, !2629, !2636}
!1118 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !1112, line: 78, baseType: !1119, size: 320)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1116, file: !1112, line: 78, size: 320, elements: !1120)
!1120 = !{!1121, !1122, !1297, !1298}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1119, file: !1112, line: 84, baseType: !602, size: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1119, file: !1112, line: 86, baseType: !1123, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !1125)
!1125 = !{!1126, !1127, !1134, !1135, !1136, !1151, !1167, !1168, !1169, !1170, !1290, !1291, !1294, !1295, !1296}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1124, file: !208, line: 452, baseType: !821, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1124, file: !208, line: 453, baseType: !1128, size: 128, offset: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1129, line: 292, size: 128, elements: !1130)
!1129 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1130 = !{!1131, !1132, !1133}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1128, file: !1129, line: 293, baseType: !632)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1128, file: !1129, line: 295, baseType: !429, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1128, file: !1129, line: 296, baseType: !431, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1124, file: !208, line: 454, baseType: !429, size: 32, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1124, file: !208, line: 455, baseType: !591, size: 32, offset: 224)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1124, file: !208, line: 460, baseType: !1137, size: 128, offset: 256)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1138, line: 125, size: 128, elements: !1139)
!1138 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!1139 = !{!1140, !1150}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1137, file: !1138, line: 126, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1138, line: 31, size: 64, elements: !1142)
!1142 = !{!1143}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1141, file: !1138, line: 32, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1138, line: 24, size: 192, align: 64, elements: !1146)
!1146 = !{!1147, !1148, !1149}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1145, file: !1138, line: 25, baseType: !721, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1145, file: !1138, line: 26, baseType: !1144, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1145, file: !1138, line: 27, baseType: !1144, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1137, file: !1138, line: 127, baseType: !1144, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1124, file: !208, line: 461, baseType: !1152, size: 256, offset: 384)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1153, line: 35, size: 256, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1154 = !{!1155, !1163, !1164, !1166}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1152, file: !1153, line: 36, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1157, line: 13, baseType: !1158)
!1157 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !430, line: 175, baseType: !1159)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 173, size: 64, elements: !1160)
!1160 = !{!1161}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1159, file: !430, line: 174, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !434, line: 22, baseType: !929)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1152, file: !1153, line: 42, baseType: !1156, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1152, file: !1153, line: 46, baseType: !1165, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !633, line: 29, baseType: !640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1152, file: !1153, line: 47, baseType: !602, size: 128, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1124, file: !208, line: 462, baseType: !721, size: 64, offset: 640)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1124, file: !208, line: 463, baseType: !721, size: 64, offset: 704)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1124, file: !208, line: 464, baseType: !721, size: 64, offset: 768)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1124, file: !208, line: 465, baseType: !1171, size: 64, offset: 832)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1173)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1174)
!1174 = !{!1175, !1179, !1183, !1187, !1191, !1195, !1201, !1207, !1211, !1216, !1220, !1224, !1228, !1254, !1258, !1264, !1265, !1266, !1270, !1275, !1279, !1286}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1173, file: !208, line: 368, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!432, !1110, !1065}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1173, file: !208, line: 369, baseType: !1180, size: 64, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!432, !749, !1110}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1173, file: !208, line: 372, baseType: !1184, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!432, !1123, !1065}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1173, file: !208, line: 375, baseType: !1188, size: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!432, !1110}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1173, file: !208, line: 381, baseType: !1192, size: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!432, !749, !1123, !605, !7}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1173, file: !208, line: 383, baseType: !1196, size: 64, offset: 320)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{null, !1199}
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1173, file: !208, line: 385, baseType: !1202, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!432, !749, !1123, !920, !7, !7, !1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1173, file: !208, line: 388, baseType: !1208, size: 64, offset: 448)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!432, !749, !1123, !920, !7, !7, !1110, !431}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1173, file: !208, line: 393, baseType: !1212, size: 64, offset: 512)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!1215, !1123, !1215}
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !430, line: 125, baseType: !814)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1173, file: !208, line: 394, baseType: !1217, size: 64, offset: 576)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !1110, !7, !7}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1173, file: !208, line: 395, baseType: !1221, size: 64, offset: 640)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!432, !1110, !429}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1173, file: !208, line: 396, baseType: !1225, size: 64, offset: 704)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !1110}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1173, file: !208, line: 397, baseType: !1229, size: 64, offset: 768)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!703, !1232, !1252}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1241, !1242, !1243, !1244, !1245}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1233, file: !208, line: 321, baseType: !749, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1233, file: !208, line: 326, baseType: !920, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1233, file: !208, line: 327, baseType: !1238, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{null, !1232, !707, !707}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1233, file: !208, line: 328, baseType: !431, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1233, file: !208, line: 329, baseType: !432, size: 32, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1233, file: !208, line: 330, baseType: !475, size: 16, offset: 288)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1233, file: !208, line: 331, baseType: !475, size: 16, offset: 304)
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !208, line: 332, baseType: !1246, size: 64, offset: 320)
!1246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1233, file: !208, line: 332, size: 64, elements: !1247)
!1247 = !{!1248, !1249}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1246, file: !208, line: 333, baseType: !7, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1246, file: !208, line: 334, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1173, file: !208, line: 402, baseType: !1255, size: 64, offset: 832)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!432, !1123, !1110, !1110, !183}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1173, file: !208, line: 404, baseType: !1259, size: 64, offset: 896)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!879, !1110, !1262}
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1263, line: 305, baseType: !7)
!1263 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1173, file: !208, line: 405, baseType: !1225, size: 64, offset: 960)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1173, file: !208, line: 406, baseType: !1188, size: 64, offset: 1024)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1173, file: !208, line: 407, baseType: !1267, size: 64, offset: 1088)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!432, !1110, !721, !721}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1173, file: !208, line: 409, baseType: !1271, size: 64, offset: 1152)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !1110, !1274, !1274}
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1173, file: !208, line: 410, baseType: !1276, size: 64, offset: 1216)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!432, !1123, !1110}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1173, file: !208, line: 413, baseType: !1280, size: 64, offset: 1280)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!432, !1283, !749, !1285}
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1173, file: !208, line: 415, baseType: !1287, size: 64, offset: 1344)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{null, !749}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1124, file: !208, line: 466, baseType: !721, size: 64, offset: 896)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1124, file: !208, line: 467, baseType: !1292, size: 32, offset: 960)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1293, line: 8, baseType: !561)
!1293 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1124, file: !208, line: 468, baseType: !632, offset: 992)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1124, file: !208, line: 469, baseType: !602, size: 128, offset: 1024)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1124, file: !208, line: 470, baseType: !431, size: 64, offset: 1152)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1119, file: !1112, line: 87, baseType: !721, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1119, file: !1112, line: 94, baseType: !721, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !1112, line: 96, baseType: !1300, size: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1116, file: !1112, line: 96, size: 64, elements: !1301)
!1301 = !{!1302}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1300, file: !1112, line: 101, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !430, line: 143, baseType: !814)
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !1112, line: 103, baseType: !1305, size: 320)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1116, file: !1112, line: 103, size: 320, elements: !1306)
!1306 = !{!1307, !1317, !1320, !1321}
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !1112, line: 104, baseType: !1308, size: 128)
!1308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1305, file: !1112, line: 104, size: 128, elements: !1309)
!1309 = !{!1310, !1311}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1308, file: !1112, line: 105, baseType: !602, size: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !1112, line: 106, baseType: !1312, size: 128)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !1112, line: 106, size: 128, elements: !1313)
!1313 = !{!1314, !1315, !1316}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1312, file: !1112, line: 107, baseType: !1110, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1312, file: !1112, line: 109, baseType: !432, size: 32, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1312, file: !1112, line: 110, baseType: !432, size: 32, offset: 96)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1305, file: !1112, line: 117, baseType: !1318, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1112, line: 117, flags: DIFlagFwdDecl)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1305, file: !1112, line: 119, baseType: !431, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !1112, line: 120, baseType: !1322, size: 64, offset: 256)
!1322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1305, file: !1112, line: 120, size: 64, elements: !1323)
!1323 = !{!1324, !1325, !1326}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1322, file: !1112, line: 121, baseType: !431, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1322, file: !1112, line: 122, baseType: !721, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, scope: !1322, file: !1112, line: 123, baseType: !1327, size: 32)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1322, file: !1112, line: 123, size: 32, elements: !1328)
!1328 = !{!1329, !1330, !1331}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1327, file: !1112, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1327, file: !1112, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1327, file: !1112, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1332 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !1112, line: 130, baseType: !1333, size: 192)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1116, file: !1112, line: 130, size: 192, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1338, !1339}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1333, file: !1112, line: 131, baseType: !721, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1333, file: !1112, line: 134, baseType: !485, size: 8, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1333, file: !1112, line: 135, baseType: !485, size: 8, offset: 72)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1333, file: !1112, line: 136, baseType: !591, size: 32, offset: 96)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1333, file: !1112, line: 137, baseType: !7, size: 32, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !1112, line: 139, baseType: !1341, size: 256)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1116, file: !1112, line: 139, size: 256, elements: !1342)
!1342 = !{!1343, !1344, !1345}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1341, file: !1112, line: 140, baseType: !721, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1341, file: !1112, line: 141, baseType: !591, size: 32, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1341, file: !1112, line: 143, baseType: !602, size: 128, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !1112, line: 145, baseType: !1347, size: 256)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1116, file: !1112, line: 145, size: 256, elements: !1348)
!1348 = !{!1349, !1350, !1352, !1353, !2628}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1347, file: !1112, line: 146, baseType: !721, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1347, file: !1112, line: 147, baseType: !1351, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1102, line: 509, baseType: !1110)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1347, file: !1112, line: 148, baseType: !721, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, scope: !1347, file: !1112, line: 149, baseType: !1354, size: 64, offset: 192)
!1354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1347, file: !1112, line: 149, size: 64, elements: !1355)
!1355 = !{!1356, !2627}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1354, file: !1112, line: 150, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1112, line: 388, size: 7296, elements: !1359)
!1359 = !{!1360, !2623}
!1360 = !DIDerivedType(tag: DW_TAG_member, scope: !1358, file: !1112, line: 389, baseType: !1361, size: 7296)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1358, file: !1112, line: 389, size: 7296, elements: !1362)
!1362 = !{!1363, !1401, !1402, !1403, !1407, !1408, !1409, !1410, !1411, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1452, !1460, !1463, !1506, !1507, !2607, !2608, !2611, !2612, !2613, !2616, !2617, !2618, !2621, !2622}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1361, file: !1112, line: 390, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1112, line: 305, size: 1472, elements: !1366)
!1366 = !{!1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1381, !1382, !1387, !1388, !1391, !1395, !1396, !1397, !1398, !1399}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1365, file: !1112, line: 308, baseType: !721, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1365, file: !1112, line: 309, baseType: !721, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1365, file: !1112, line: 313, baseType: !1364, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1365, file: !1112, line: 313, baseType: !1364, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1365, file: !1112, line: 315, baseType: !1145, size: 192, align: 64, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1365, file: !1112, line: 323, baseType: !721, size: 64, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1365, file: !1112, line: 327, baseType: !1357, size: 64, offset: 512)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1365, file: !1112, line: 333, baseType: !1375, size: 64, offset: 576)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1102, line: 284, baseType: !1376)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1102, line: 284, size: 64, elements: !1377)
!1377 = !{!1378}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1376, file: !1102, line: 284, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1380, line: 19, baseType: !721)
!1380 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1365, file: !1112, line: 334, baseType: !721, size: 64, offset: 640)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1365, file: !1112, line: 343, baseType: !1383, size: 256, offset: 704)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1365, file: !1112, line: 340, size: 256, elements: !1384)
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1383, file: !1112, line: 341, baseType: !1145, size: 192, align: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1383, file: !1112, line: 342, baseType: !721, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1365, file: !1112, line: 351, baseType: !602, size: 128, offset: 960)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1365, file: !1112, line: 353, baseType: !1389, size: 64, offset: 1088)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1112, line: 353, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1365, file: !1112, line: 356, baseType: !1392, size: 64, offset: 1152)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1394)
!1394 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1112, line: 356, flags: DIFlagFwdDecl)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1365, file: !1112, line: 359, baseType: !721, size: 64, offset: 1216)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1365, file: !1112, line: 361, baseType: !749, size: 64, offset: 1280)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1365, file: !1112, line: 362, baseType: !431, size: 64, offset: 1344)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1365, file: !1112, line: 365, baseType: !1156, size: 64, offset: 1408)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1365, file: !1112, line: 373, baseType: !1400, offset: 1472)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1112, line: 296, elements: !646)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1361, file: !1112, line: 391, baseType: !1141, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1361, file: !1112, line: 392, baseType: !814, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1361, file: !1112, line: 394, baseType: !1404, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!721, !749, !721, !721, !721, !721}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1361, file: !1112, line: 398, baseType: !721, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1361, file: !1112, line: 399, baseType: !721, size: 64, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1361, file: !1112, line: 405, baseType: !721, size: 64, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1361, file: !1112, line: 406, baseType: !721, size: 64, offset: 448)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1361, file: !1112, line: 407, baseType: !1412, size: 64, offset: 512)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1102, line: 286, baseType: !1414)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1102, line: 286, size: 64, elements: !1415)
!1415 = !{!1416}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1414, file: !1102, line: 286, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1380, line: 18, baseType: !721)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1361, file: !1112, line: 416, baseType: !591, size: 32, offset: 576)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1361, file: !1112, line: 428, baseType: !591, size: 32, offset: 608)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1361, file: !1112, line: 437, baseType: !591, size: 32, offset: 640)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1361, file: !1112, line: 447, baseType: !591, size: 32, offset: 672)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1361, file: !1112, line: 450, baseType: !1156, size: 64, offset: 704)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1361, file: !1112, line: 452, baseType: !432, size: 32, offset: 768)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1361, file: !1112, line: 454, baseType: !632, offset: 800)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1361, file: !1112, line: 457, baseType: !1152, size: 256, offset: 832)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1361, file: !1112, line: 459, baseType: !602, size: 128, offset: 1088)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1361, file: !1112, line: 466, baseType: !721, size: 64, offset: 1216)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1361, file: !1112, line: 467, baseType: !721, size: 64, offset: 1280)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1361, file: !1112, line: 469, baseType: !721, size: 64, offset: 1344)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1361, file: !1112, line: 470, baseType: !721, size: 64, offset: 1408)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1361, file: !1112, line: 471, baseType: !1158, size: 64, offset: 1472)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1361, file: !1112, line: 472, baseType: !721, size: 64, offset: 1536)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1361, file: !1112, line: 473, baseType: !721, size: 64, offset: 1600)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1361, file: !1112, line: 474, baseType: !721, size: 64, offset: 1664)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1361, file: !1112, line: 475, baseType: !721, size: 64, offset: 1728)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1361, file: !1112, line: 477, baseType: !632, offset: 1792)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1361, file: !1112, line: 478, baseType: !721, size: 64, offset: 1792)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1361, file: !1112, line: 478, baseType: !721, size: 64, offset: 1856)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1361, file: !1112, line: 478, baseType: !721, size: 64, offset: 1920)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1361, file: !1112, line: 478, baseType: !721, size: 64, offset: 1984)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1361, file: !1112, line: 479, baseType: !721, size: 64, offset: 2048)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1361, file: !1112, line: 479, baseType: !721, size: 64, offset: 2112)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1361, file: !1112, line: 479, baseType: !721, size: 64, offset: 2176)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1361, file: !1112, line: 480, baseType: !721, size: 64, offset: 2240)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1361, file: !1112, line: 480, baseType: !721, size: 64, offset: 2304)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1361, file: !1112, line: 480, baseType: !721, size: 64, offset: 2368)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1361, file: !1112, line: 480, baseType: !721, size: 64, offset: 2432)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1361, file: !1112, line: 482, baseType: !1449, size: 2816, offset: 2496)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 2816, elements: !1450)
!1450 = !{!1451}
!1451 = !DISubrange(count: 44)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1361, file: !1112, line: 488, baseType: !1453, size: 256, offset: 5312)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1454, line: 60, size: 256, elements: !1455)
!1454 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1455 = !{!1456}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1453, file: !1454, line: 61, baseType: !1457, size: 256)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1156, size: 256, elements: !1458)
!1458 = !{!1459}
!1459 = !DISubrange(count: 4)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1361, file: !1112, line: 490, baseType: !1461, size: 64, offset: 5568)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1112, line: 490, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1361, file: !1112, line: 493, baseType: !1464, size: 896, offset: 5632)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1465, line: 53, baseType: !1466)
!1465 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1465, line: 13, size: 896, elements: !1467)
!1467 = !{!1468, !1469, !1470, !1471, !1474, !1475, !1482, !1483, !1503, !1504, !1505}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1466, file: !1465, line: 18, baseType: !814, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1466, file: !1465, line: 28, baseType: !1158, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1466, file: !1465, line: 31, baseType: !1152, size: 256, offset: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1466, file: !1465, line: 32, baseType: !1472, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1465, line: 32, flags: DIFlagFwdDecl)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1466, file: !1465, line: 37, baseType: !477, size: 16, offset: 448)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1466, file: !1465, line: 40, baseType: !1476, size: 192, offset: 512)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1477, line: 53, size: 192, elements: !1478)
!1477 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1478 = !{!1479, !1480, !1481}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1476, file: !1477, line: 54, baseType: !1156, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1476, file: !1477, line: 55, baseType: !632, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1476, file: !1477, line: 59, baseType: !602, size: 128, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1466, file: !1465, line: 41, baseType: !431, size: 64, offset: 704)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1466, file: !1465, line: 42, baseType: !1484, size: 64, offset: 768)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1486)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1487, line: 13, size: 896, elements: !1488)
!1487 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1488 = !{!1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1486, file: !1487, line: 14, baseType: !431, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1486, file: !1487, line: 15, baseType: !721, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1486, file: !1487, line: 17, baseType: !721, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1486, file: !1487, line: 17, baseType: !721, size: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1486, file: !1487, line: 19, baseType: !707, size: 64, offset: 256)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1486, file: !1487, line: 21, baseType: !707, size: 64, offset: 320)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1486, file: !1487, line: 22, baseType: !707, size: 64, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1486, file: !1487, line: 23, baseType: !707, size: 64, offset: 448)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1486, file: !1487, line: 24, baseType: !707, size: 64, offset: 512)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1486, file: !1487, line: 25, baseType: !707, size: 64, offset: 576)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1486, file: !1487, line: 26, baseType: !707, size: 64, offset: 640)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1486, file: !1487, line: 27, baseType: !707, size: 64, offset: 704)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1486, file: !1487, line: 28, baseType: !707, size: 64, offset: 768)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1486, file: !1487, line: 29, baseType: !707, size: 64, offset: 832)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1466, file: !1465, line: 44, baseType: !591, size: 32, offset: 832)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1466, file: !1465, line: 50, baseType: !475, size: 16, offset: 864)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1466, file: !1465, line: 51, baseType: !433, size: 16, offset: 880)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1361, file: !1112, line: 495, baseType: !721, size: 64, offset: 6528)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1361, file: !1112, line: 497, baseType: !1508, size: 64, offset: 6592)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1112, line: 381, size: 384, elements: !1510)
!1510 = !{!1511, !1512, !2606}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1509, file: !1112, line: 382, baseType: !591, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1509, file: !1112, line: 383, baseType: !1513, size: 128, offset: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1112, line: 376, size: 128, elements: !1514)
!1514 = !{!1515, !2604}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1513, file: !1112, line: 377, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1518, line: 640, size: 48640, elements: !1519)
!1518 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1519 = !{!1520, !1526, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1541, !1559, !1570, !1651, !1652, !1653, !1664, !1665, !1667, !1668, !1669, !1670, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1754, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1792, !1794, !1795, !1796, !1808, !1809, !1810, !1811, !1812, !1813, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1837, !1842, !2024, !2025, !2026, !2027, !2031, !2034, !2037, !2040, !2043, !2047, !2148, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2194, !2195, !2196, !2197, !2198, !2203, !2204, !2205, !2208, !2209, !2212, !2215, !2218, !2221, !2264, !2267, !2268, !2347, !2348, !2351, !2352, !2355, !2356, !2357, !2361, !2362, !2363, !2376, !2377, !2378, !2388, !2393, !2396, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1517, file: !1518, line: 646, baseType: !1521, size: 128)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1522, line: 56, size: 128, elements: !1523)
!1522 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1521, file: !1522, line: 57, baseType: !721, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1521, file: !1522, line: 58, baseType: !561, size: 32, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1517, file: !1518, line: 649, baseType: !1527, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !707)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1517, file: !1518, line: 657, baseType: !431, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1517, file: !1518, line: 658, baseType: !586, size: 32, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1517, file: !1518, line: 660, baseType: !7, size: 32, offset: 288)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1517, file: !1518, line: 661, baseType: !7, size: 32, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1517, file: !1518, line: 684, baseType: !432, size: 32, offset: 352)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1517, file: !1518, line: 686, baseType: !432, size: 32, offset: 384)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1517, file: !1518, line: 687, baseType: !432, size: 32, offset: 416)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1517, file: !1518, line: 688, baseType: !432, size: 32, offset: 448)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1517, file: !1518, line: 689, baseType: !7, size: 32, offset: 480)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1517, file: !1518, line: 691, baseType: !1538, size: 64, offset: 512)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1540)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1518, line: 691, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1517, file: !1518, line: 692, baseType: !1542, size: 832, offset: 576)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1518, line: 451, size: 832, elements: !1543)
!1543 = !{!1544, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1542, file: !1518, line: 453, baseType: !1545, size: 128)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1518, line: 325, size: 128, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1545, file: !1518, line: 326, baseType: !721, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1545, file: !1518, line: 327, baseType: !561, size: 32, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1542, file: !1518, line: 454, baseType: !1145, size: 192, align: 64, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1542, file: !1518, line: 455, baseType: !602, size: 128, offset: 320)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1542, file: !1518, line: 456, baseType: !7, size: 32, offset: 448)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1542, file: !1518, line: 458, baseType: !814, size: 64, offset: 512)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1542, file: !1518, line: 459, baseType: !814, size: 64, offset: 576)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1542, file: !1518, line: 460, baseType: !814, size: 64, offset: 640)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1542, file: !1518, line: 461, baseType: !814, size: 64, offset: 704)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1542, file: !1518, line: 463, baseType: !814, size: 64, offset: 768)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1542, file: !1518, line: 465, baseType: !1558, offset: 832)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1518, line: 415, elements: !646)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1517, file: !1518, line: 693, baseType: !1560, size: 384, offset: 1408)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1518, line: 489, size: 384, elements: !1561)
!1561 = !{!1562, !1563, !1564, !1565, !1566, !1567, !1568}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1560, file: !1518, line: 490, baseType: !602, size: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1560, file: !1518, line: 491, baseType: !721, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1560, file: !1518, line: 492, baseType: !721, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1560, file: !1518, line: 493, baseType: !7, size: 32, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1560, file: !1518, line: 494, baseType: !477, size: 16, offset: 288)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1560, file: !1518, line: 495, baseType: !477, size: 16, offset: 304)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1560, file: !1518, line: 497, baseType: !1569, size: 64, offset: 320)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1517, file: !1518, line: 697, baseType: !1571, size: 1792, offset: 1792)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1518, line: 507, size: 1792, elements: !1572)
!1572 = !{!1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1648, !1649}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1571, file: !1518, line: 508, baseType: !1145, size: 192, align: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1571, file: !1518, line: 515, baseType: !814, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1571, file: !1518, line: 516, baseType: !814, size: 64, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1571, file: !1518, line: 517, baseType: !814, size: 64, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1571, file: !1518, line: 518, baseType: !814, size: 64, offset: 384)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1571, file: !1518, line: 519, baseType: !814, size: 64, offset: 448)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1571, file: !1518, line: 526, baseType: !1162, size: 64, offset: 512)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1571, file: !1518, line: 527, baseType: !814, size: 64, offset: 576)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1571, file: !1518, line: 528, baseType: !7, size: 32, offset: 640)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1571, file: !1518, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1571, file: !1518, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1571, file: !1518, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1571, file: !1518, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1571, file: !1518, line: 563, baseType: !1587, size: 512, offset: 704)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !1588)
!1588 = !{!1589, !1597, !1598, !1603, !1644, !1645, !1646, !1647}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1587, file: !191, line: 119, baseType: !1590, size: 256)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1591, line: 9, size: 256, elements: !1592)
!1591 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1590, file: !1591, line: 10, baseType: !1145, size: 192, align: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1590, file: !1591, line: 11, baseType: !1595, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1596, line: 29, baseType: !1162)
!1596 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1587, file: !191, line: 120, baseType: !1595, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1587, file: !191, line: 121, baseType: !1599, size: 64, offset: 320)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!190, !1602}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1587, file: !191, line: 122, baseType: !1604, size: 64, offset: 384)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !1606)
!1606 = !{!1607, !1625, !1626, !1629, !1634, !1635, !1639, !1643}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1605, file: !191, line: 160, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !1610)
!1610 = !{!1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1609, file: !191, line: 215, baseType: !1165)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1609, file: !191, line: 216, baseType: !7, size: 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1609, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1609, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1609, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1609, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1609, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1609, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1609, file: !191, line: 233, baseType: !1595, size: 64, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1609, file: !191, line: 234, baseType: !1602, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1609, file: !191, line: 235, baseType: !1595, size: 64, offset: 256)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1609, file: !191, line: 236, baseType: !1602, size: 64, offset: 320)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1609, file: !191, line: 237, baseType: !1624, size: 4096, offset: 512)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1605, size: 4096, elements: !572)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1605, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1605, file: !191, line: 162, baseType: !1627, size: 32, offset: 96)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !430, line: 27, baseType: !1628)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !705, line: 96, baseType: !432)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1605, file: !191, line: 163, baseType: !1630, size: 32, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !785, line: 276, baseType: !1631)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !785, line: 276, size: 32, elements: !1632)
!1632 = !{!1633}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1631, file: !785, line: 276, baseType: !789, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1605, file: !191, line: 164, baseType: !1602, size: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1605, file: !191, line: 165, baseType: !1636, size: 128, offset: 256)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1591, line: 14, size: 128, elements: !1637)
!1637 = !{!1638}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1636, file: !1591, line: 15, baseType: !1137, size: 128)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1605, file: !191, line: 166, baseType: !1640, size: 64, offset: 384)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!1595}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1605, file: !191, line: 167, baseType: !1595, size: 64, offset: 448)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1587, file: !191, line: 123, baseType: !483, size: 8, offset: 448)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1587, file: !191, line: 124, baseType: !483, size: 8, offset: 456)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1587, file: !191, line: 125, baseType: !483, size: 8, offset: 464)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1587, file: !191, line: 126, baseType: !483, size: 8, offset: 472)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1571, file: !1518, line: 572, baseType: !1587, size: 512, offset: 1216)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1571, file: !1518, line: 580, baseType: !1650, size: 64, offset: 1728)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1517, file: !1518, line: 721, baseType: !7, size: 32, offset: 3584)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1517, file: !1518, line: 722, baseType: !432, size: 32, offset: 3616)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1517, file: !1518, line: 723, baseType: !1654, size: 64, offset: 3648)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1656)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1657, line: 17, baseType: !1658)
!1657 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1657, line: 17, size: 64, elements: !1659)
!1659 = !{!1660}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1658, file: !1657, line: 17, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 64, elements: !1662)
!1662 = !{!1663}
!1663 = !DISubrange(count: 1)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1517, file: !1518, line: 724, baseType: !1656, size: 64, offset: 3712)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1517, file: !1518, line: 749, baseType: !1666, offset: 3776)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1518, line: 290, elements: !646)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1517, file: !1518, line: 751, baseType: !602, size: 128, offset: 3776)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1517, file: !1518, line: 757, baseType: !1357, size: 64, offset: 3904)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1517, file: !1518, line: 758, baseType: !1357, size: 64, offset: 3968)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1517, file: !1518, line: 761, baseType: !1671, size: 320, offset: 4032)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1454, line: 34, size: 320, elements: !1672)
!1672 = !{!1673, !1674}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1671, file: !1454, line: 35, baseType: !814, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1671, file: !1454, line: 36, baseType: !1675, size: 256, offset: 64)
!1675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 256, elements: !1458)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1517, file: !1518, line: 766, baseType: !432, size: 32, offset: 4352)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1517, file: !1518, line: 767, baseType: !432, size: 32, offset: 4384)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1517, file: !1518, line: 768, baseType: !432, size: 32, offset: 4416)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1517, file: !1518, line: 770, baseType: !432, size: 32, offset: 4448)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1517, file: !1518, line: 772, baseType: !721, size: 64, offset: 4480)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1517, file: !1518, line: 775, baseType: !7, size: 32, offset: 4544)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1517, file: !1518, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1517, file: !1518, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1517, file: !1518, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1517, file: !1518, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1517, file: !1518, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1517, file: !1518, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1517, file: !1518, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1517, file: !1518, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1517, file: !1518, line: 831, baseType: !721, size: 64, offset: 4672)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1517, file: !1518, line: 833, baseType: !1692, size: 384, offset: 4736)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !1693)
!1693 = !{!1694, !1699}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1692, file: !196, line: 26, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!707, !1698}
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, scope: !1692, file: !196, line: 27, baseType: !1700, size: 320, offset: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1692, file: !196, line: 27, size: 320, elements: !1701)
!1701 = !{!1702, !1712, !1739}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1700, file: !196, line: 36, baseType: !1703, size: 320)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1700, file: !196, line: 29, size: 320, elements: !1704)
!1704 = !{!1705, !1707, !1708, !1709, !1710, !1711}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1703, file: !196, line: 30, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1703, file: !196, line: 31, baseType: !561, size: 32, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1703, file: !196, line: 32, baseType: !561, size: 32, offset: 96)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1703, file: !196, line: 33, baseType: !561, size: 32, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1703, file: !196, line: 34, baseType: !814, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1703, file: !196, line: 35, baseType: !1706, size: 64, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1700, file: !196, line: 46, baseType: !1713, size: 192)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1700, file: !196, line: 38, size: 192, elements: !1714)
!1714 = !{!1715, !1716, !1717, !1738}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1713, file: !196, line: 39, baseType: !1627, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1713, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, scope: !1713, file: !196, line: 41, baseType: !1718, size: 64, offset: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1713, file: !196, line: 41, size: 64, elements: !1719)
!1719 = !{!1720, !1728}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1718, file: !196, line: 42, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1723, line: 7, size: 128, elements: !1724)
!1723 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1724 = !{!1725, !1727}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1722, file: !1723, line: 8, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !705, line: 93, baseType: !922)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1722, file: !1723, line: 9, baseType: !922, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1718, file: !196, line: 43, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1731, line: 7, size: 64, elements: !1732)
!1731 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1732 = !{!1733, !1737}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1730, file: !1731, line: 8, baseType: !1734, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1731, line: 5, baseType: !1735)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !434, line: 20, baseType: !1736)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !436, line: 26, baseType: !432)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1730, file: !1731, line: 9, baseType: !1735, size: 32, offset: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1713, file: !196, line: 45, baseType: !814, size: 64, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1700, file: !196, line: 54, baseType: !1740, size: 256)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1700, file: !196, line: 48, size: 256, elements: !1741)
!1741 = !{!1742, !1750, !1751, !1752, !1753}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1740, file: !196, line: 49, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1745, line: 36, size: 64, elements: !1746)
!1745 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !{!1747, !1748, !1749}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1744, file: !1745, line: 37, baseType: !432, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1744, file: !1745, line: 38, baseType: !437, size: 16, offset: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1744, file: !1745, line: 39, baseType: !437, size: 16, offset: 48)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1740, file: !196, line: 50, baseType: !432, size: 32, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1740, file: !196, line: 51, baseType: !432, size: 32, offset: 96)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1740, file: !196, line: 52, baseType: !721, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1740, file: !196, line: 53, baseType: !721, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1517, file: !1518, line: 835, baseType: !1755, size: 32, offset: 5120)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !430, line: 22, baseType: !1756)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !705, line: 28, baseType: !432)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1517, file: !1518, line: 836, baseType: !1755, size: 32, offset: 5152)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1517, file: !1518, line: 840, baseType: !721, size: 64, offset: 5184)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1517, file: !1518, line: 849, baseType: !1516, size: 64, offset: 5248)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1517, file: !1518, line: 852, baseType: !1516, size: 64, offset: 5312)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1517, file: !1518, line: 857, baseType: !602, size: 128, offset: 5376)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1517, file: !1518, line: 858, baseType: !602, size: 128, offset: 5504)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1517, file: !1518, line: 859, baseType: !1516, size: 64, offset: 5632)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1517, file: !1518, line: 867, baseType: !602, size: 128, offset: 5696)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1517, file: !1518, line: 868, baseType: !602, size: 128, offset: 5824)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1517, file: !1518, line: 871, baseType: !1767, size: 64, offset: 5952)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !1769)
!1769 = !{!1770, !1771, !1772, !1773, !1775, !1776, !1783, !1784}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1768, file: !217, line: 61, baseType: !586, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1768, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1768, file: !217, line: 63, baseType: !632, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1768, file: !217, line: 65, baseType: !1774, size: 256, offset: 64)
!1774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1024, size: 256, elements: !1458)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1768, file: !217, line: 66, baseType: !1024, size: 64, offset: 320)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1768, file: !217, line: 68, baseType: !1777, size: 128, offset: 384)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1778, line: 40, baseType: !1779)
!1778 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1778, line: 36, size: 128, elements: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1779, file: !1778, line: 37, baseType: !632)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1779, file: !1778, line: 38, baseType: !602, size: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1768, file: !217, line: 69, baseType: !762, size: 128, align: 64, offset: 512)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1768, file: !217, line: 70, baseType: !1785, size: 128, offset: 640)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1786, size: 128, elements: !1662)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1786, file: !217, line: 55, baseType: !432, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1786, file: !217, line: 56, baseType: !1790, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1517, file: !1518, line: 872, baseType: !1793, size: 512, offset: 6016)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1028, size: 512, elements: !1458)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1517, file: !1518, line: 873, baseType: !602, size: 128, offset: 6528)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1517, file: !1518, line: 874, baseType: !602, size: 128, offset: 6656)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1517, file: !1518, line: 876, baseType: !1797, size: 64, offset: 6784)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1799, line: 26, size: 192, elements: !1800)
!1799 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1800 = !{!1801, !1802}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1798, file: !1799, line: 27, baseType: !7, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1798, file: !1799, line: 28, baseType: !1803, size: 128, offset: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1804, line: 43, size: 128, elements: !1805)
!1804 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1803, file: !1804, line: 44, baseType: !1165)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1803, file: !1804, line: 45, baseType: !602, size: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1517, file: !1518, line: 879, baseType: !1094, size: 64, offset: 6848)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1517, file: !1518, line: 882, baseType: !1094, size: 64, offset: 6912)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1517, file: !1518, line: 884, baseType: !814, size: 64, offset: 6976)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1517, file: !1518, line: 885, baseType: !814, size: 64, offset: 7040)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1517, file: !1518, line: 890, baseType: !814, size: 64, offset: 7104)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1517, file: !1518, line: 891, baseType: !1814, size: 128, offset: 7168)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1518, line: 242, size: 128, elements: !1815)
!1815 = !{!1816, !1817, !1818}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1814, file: !1518, line: 244, baseType: !814, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1814, file: !1518, line: 245, baseType: !814, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1814, file: !1518, line: 246, baseType: !1165, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1517, file: !1518, line: 900, baseType: !721, size: 64, offset: 7296)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1517, file: !1518, line: 901, baseType: !721, size: 64, offset: 7360)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1517, file: !1518, line: 904, baseType: !814, size: 64, offset: 7424)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1517, file: !1518, line: 907, baseType: !814, size: 64, offset: 7488)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1517, file: !1518, line: 910, baseType: !721, size: 64, offset: 7552)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1517, file: !1518, line: 911, baseType: !721, size: 64, offset: 7616)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1517, file: !1518, line: 914, baseType: !1826, size: 640, offset: 7680)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1827, line: 123, size: 640, elements: !1828)
!1827 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1828 = !{!1829, !1835, !1836}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1826, file: !1827, line: 124, baseType: !1830, size: 576)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1831, size: 576, elements: !673)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1827, line: 108, size: 192, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1831, file: !1827, line: 109, baseType: !814, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1831, file: !1827, line: 110, baseType: !1636, size: 128, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1826, file: !1827, line: 125, baseType: !7, size: 32, offset: 576)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1826, file: !1827, line: 126, baseType: !7, size: 32, offset: 608)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1517, file: !1518, line: 917, baseType: !1838, size: 192, offset: 8320)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1827, line: 134, size: 192, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1838, file: !1827, line: 135, baseType: !762, size: 128, align: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1838, file: !1827, line: 136, baseType: !7, size: 32, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1517, file: !1518, line: 923, baseType: !1843, size: 64, offset: 8512)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1845)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1846, line: 111, size: 1280, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1847 = !{!1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1867, !1868, !1869, !1870, !1871, !1872, !1977, !1978, !1979, !1980, !2006, !2009, !2019}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1845, file: !1846, line: 112, baseType: !591, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1845, file: !1846, line: 120, baseType: !827, size: 32, offset: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1845, file: !1846, line: 121, baseType: !835, size: 32, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1845, file: !1846, line: 122, baseType: !827, size: 32, offset: 96)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1845, file: !1846, line: 123, baseType: !835, size: 32, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1845, file: !1846, line: 124, baseType: !827, size: 32, offset: 160)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1845, file: !1846, line: 125, baseType: !835, size: 32, offset: 192)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1845, file: !1846, line: 126, baseType: !827, size: 32, offset: 224)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1845, file: !1846, line: 127, baseType: !835, size: 32, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1845, file: !1846, line: 128, baseType: !7, size: 32, offset: 288)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1845, file: !1846, line: 129, baseType: !1859, size: 64, offset: 320)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1860, line: 26, baseType: !1861)
!1860 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1860, line: 24, size: 64, elements: !1862)
!1862 = !{!1863}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1861, file: !1860, line: 25, baseType: !1864, size: 64)
!1864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 64, elements: !1865)
!1865 = !{!1866}
!1866 = !DISubrange(count: 2)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1845, file: !1846, line: 130, baseType: !1859, size: 64, offset: 384)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1845, file: !1846, line: 131, baseType: !1859, size: 64, offset: 448)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1845, file: !1846, line: 132, baseType: !1859, size: 64, offset: 512)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1845, file: !1846, line: 133, baseType: !1859, size: 64, offset: 576)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1845, file: !1846, line: 135, baseType: !485, size: 8, offset: 640)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1845, file: !1846, line: 137, baseType: !1873, size: 64, offset: 704)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1875, line: 189, size: 1664, elements: !1876)
!1875 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1876 = !{!1877, !1878, !1881, !1886, !1887, !1890, !1891, !1896, !1897, !1898, !1899, !1901, !1902, !1903, !1904, !1905, !1941, !1962}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1874, file: !1875, line: 190, baseType: !586, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1874, file: !1875, line: 191, baseType: !1879, size: 32, offset: 32)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1875, line: 28, baseType: !1880)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !430, line: 98, baseType: !1735)
!1881 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !1875, line: 192, baseType: !1882, size: 192, offset: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1874, file: !1875, line: 192, size: 192, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1882, file: !1875, line: 193, baseType: !602, size: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1882, file: !1875, line: 194, baseType: !1145, size: 192, align: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1874, file: !1875, line: 199, baseType: !1152, size: 256, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1874, file: !1875, line: 200, baseType: !1888, size: 64, offset: 512)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1875, line: 200, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1874, file: !1875, line: 201, baseType: !431, size: 64, offset: 576)
!1891 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !1875, line: 202, baseType: !1892, size: 64, offset: 640)
!1892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1874, file: !1875, line: 202, size: 64, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1892, file: !1875, line: 203, baseType: !928, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1892, file: !1875, line: 204, baseType: !928, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1874, file: !1875, line: 206, baseType: !928, size: 64, offset: 704)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1874, file: !1875, line: 207, baseType: !827, size: 32, offset: 768)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1874, file: !1875, line: 208, baseType: !835, size: 32, offset: 800)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1874, file: !1875, line: 209, baseType: !1900, size: 32, offset: 832)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1875, line: 31, baseType: !948)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1874, file: !1875, line: 210, baseType: !477, size: 16, offset: 864)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1874, file: !1875, line: 211, baseType: !477, size: 16, offset: 880)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1874, file: !1875, line: 215, baseType: !437, size: 16, offset: 896)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1874, file: !1875, line: 222, baseType: !721, size: 64, offset: 960)
!1905 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !1875, line: 239, baseType: !1906, size: 320, offset: 1024)
!1906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1874, file: !1875, line: 239, size: 320, elements: !1907)
!1907 = !{!1908, !1933}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1906, file: !1875, line: 240, baseType: !1909, size: 320)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1875, line: 108, size: 320, elements: !1910)
!1910 = !{!1911, !1912, !1922, !1925, !1932}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1909, file: !1875, line: 110, baseType: !721, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1909, file: !1875, line: 111, baseType: !1913, size: 64, offset: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1909, file: !1875, line: 111, size: 64, elements: !1914)
!1914 = !{!1915, !1921}
!1915 = !DIDerivedType(tag: DW_TAG_member, scope: !1913, file: !1875, line: 112, baseType: !1916, size: 64)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1913, file: !1875, line: 112, size: 64, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1916, file: !1875, line: 114, baseType: !475, size: 16)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1916, file: !1875, line: 115, baseType: !1920, size: 48, offset: 16)
!1920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 48, elements: !611)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1913, file: !1875, line: 121, baseType: !721, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1909, file: !1875, line: 123, baseType: !1923, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1875, line: 96, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1909, file: !1875, line: 124, baseType: !1926, size: 64, offset: 192)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1875, line: 102, size: 192, elements: !1928)
!1928 = !{!1929, !1930, !1931}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1927, file: !1875, line: 103, baseType: !762, size: 128, align: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1927, file: !1875, line: 104, baseType: !586, size: 32, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1927, file: !1875, line: 105, baseType: !879, size: 8, offset: 160)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1909, file: !1875, line: 125, baseType: !446, size: 64, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_member, scope: !1906, file: !1875, line: 241, baseType: !1934, size: 320)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1906, file: !1875, line: 241, size: 320, elements: !1935)
!1935 = !{!1936, !1937, !1938, !1939, !1940}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1934, file: !1875, line: 242, baseType: !721, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1934, file: !1875, line: 243, baseType: !721, size: 64, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1934, file: !1875, line: 244, baseType: !1923, size: 64, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1934, file: !1875, line: 245, baseType: !1926, size: 64, offset: 192)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1934, file: !1875, line: 246, baseType: !468, size: 64, offset: 256)
!1941 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !1875, line: 254, baseType: !1942, size: 256, offset: 1344)
!1942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1874, file: !1875, line: 254, size: 256, elements: !1943)
!1943 = !{!1944, !1950}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1942, file: !1875, line: 255, baseType: !1945, size: 256)
!1945 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1875, line: 128, size: 256, elements: !1946)
!1946 = !{!1947, !1948}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1945, file: !1875, line: 129, baseType: !431, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1945, file: !1875, line: 130, baseType: !1949, size: 256)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 256, elements: !1458)
!1950 = !DIDerivedType(tag: DW_TAG_member, scope: !1942, file: !1875, line: 256, baseType: !1951, size: 256)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1942, file: !1875, line: 256, size: 256, elements: !1952)
!1952 = !{!1953, !1954}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1951, file: !1875, line: 258, baseType: !602, size: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1951, file: !1875, line: 259, baseType: !1955, size: 128, offset: 128)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1956, line: 22, size: 128, elements: !1957)
!1956 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1957 = !{!1958, !1961}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1955, file: !1956, line: 23, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1956, line: 23, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1955, file: !1956, line: 24, baseType: !721, size: 64, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1874, file: !1875, line: 274, baseType: !1963, size: 64, offset: 1600)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1875, line: 170, size: 192, elements: !1965)
!1965 = !{!1966, !1975, !1976}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1964, file: !1875, line: 171, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1875, line: 165, baseType: !1968)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!432, !1873, !1971, !1973, !1873}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1924)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1945)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1964, file: !1875, line: 172, baseType: !1873, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1964, file: !1875, line: 173, baseType: !1923, size: 64, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1845, file: !1846, line: 138, baseType: !1873, size: 64, offset: 768)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1845, file: !1846, line: 139, baseType: !1873, size: 64, offset: 832)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1845, file: !1846, line: 140, baseType: !1873, size: 64, offset: 896)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1845, file: !1846, line: 145, baseType: !1981, size: 64, offset: 960)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1983, line: 13, size: 896, elements: !1984)
!1983 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1984 = !{!1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1982, file: !1983, line: 14, baseType: !586, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1982, file: !1983, line: 15, baseType: !591, size: 32, offset: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1982, file: !1983, line: 16, baseType: !591, size: 32, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1982, file: !1983, line: 21, baseType: !1156, size: 64, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1982, file: !1983, line: 27, baseType: !721, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1982, file: !1983, line: 28, baseType: !721, size: 64, offset: 256)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1982, file: !1983, line: 29, baseType: !1156, size: 64, offset: 320)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1982, file: !1983, line: 32, baseType: !1028, size: 128, offset: 384)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1982, file: !1983, line: 33, baseType: !827, size: 32, offset: 512)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1982, file: !1983, line: 37, baseType: !1156, size: 64, offset: 576)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1982, file: !1983, line: 44, baseType: !1996, size: 256, offset: 640)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1997, line: 15, size: 256, elements: !1998)
!1997 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1998 = !{!1999, !2000, !2001, !2002, !2003, !2004, !2005}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1996, file: !1997, line: 16, baseType: !1165)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1996, file: !1997, line: 18, baseType: !432, size: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1996, file: !1997, line: 19, baseType: !432, size: 32, offset: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1996, file: !1997, line: 20, baseType: !432, size: 32, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1996, file: !1997, line: 21, baseType: !432, size: 32, offset: 96)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1996, file: !1997, line: 22, baseType: !721, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1996, file: !1997, line: 23, baseType: !721, size: 64, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1845, file: !1846, line: 146, baseType: !2007, size: 64, offset: 1024)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !828, line: 18, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1845, file: !1846, line: 147, baseType: !2010, size: 64, offset: 1088)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1846, line: 25, size: 64, elements: !2012)
!2012 = !{!2013, !2014, !2015}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2011, file: !1846, line: 26, baseType: !591, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2011, file: !1846, line: 27, baseType: !432, size: 32, offset: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2011, file: !1846, line: 28, baseType: !2016, offset: 64)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !835, elements: !2017)
!2017 = !{!2018}
!2018 = !DISubrange(count: 0)
!2019 = !DIDerivedType(tag: DW_TAG_member, scope: !1845, file: !1846, line: 149, baseType: !2020, size: 128, offset: 1152)
!2020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1845, file: !1846, line: 149, size: 128, elements: !2021)
!2021 = !{!2022, !2023}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2020, file: !1846, line: 150, baseType: !432, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2020, file: !1846, line: 151, baseType: !762, size: 128, align: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1517, file: !1518, line: 926, baseType: !1843, size: 64, offset: 8576)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1517, file: !1518, line: 929, baseType: !1843, size: 64, offset: 8640)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1517, file: !1518, line: 933, baseType: !1873, size: 64, offset: 8704)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1517, file: !1518, line: 943, baseType: !2028, size: 128, offset: 8768)
!2028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 128, elements: !2029)
!2029 = !{!2030}
!2030 = !DISubrange(count: 16)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1517, file: !1518, line: 945, baseType: !2032, size: 64, offset: 8896)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1518, line: 49, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1517, file: !1518, line: 956, baseType: !2035, size: 64, offset: 8960)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1518, line: 45, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1517, file: !1518, line: 959, baseType: !2038, size: 64, offset: 9024)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1518, line: 959, flags: DIFlagFwdDecl)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1517, file: !1518, line: 962, baseType: !2041, size: 64, offset: 9088)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1518, line: 66, flags: DIFlagFwdDecl)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1517, file: !1518, line: 966, baseType: !2044, size: 64, offset: 9152)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2046, line: 35, flags: DIFlagFwdDecl)
!2046 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1517, file: !1518, line: 969, baseType: !2048, size: 64, offset: 9216)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2050, line: 82, size: 7296, elements: !2051)
!2050 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2051 = !{!2052, !2053, !2054, !2055, !2056, !2057, !2058, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2087, !2096, !2097, !2099, !2100, !2101, !2104, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2134, !2135, !2142, !2143, !2144, !2145, !2146, !2147}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2049, file: !2050, line: 83, baseType: !586, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2049, file: !2050, line: 84, baseType: !591, size: 32, offset: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2049, file: !2050, line: 85, baseType: !432, size: 32, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2049, file: !2050, line: 86, baseType: !602, size: 128, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2049, file: !2050, line: 88, baseType: !1777, size: 128, offset: 256)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2049, file: !2050, line: 91, baseType: !1516, size: 64, offset: 384)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2049, file: !2050, line: 94, baseType: !2059, size: 192, offset: 448)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2060, line: 30, size: 192, elements: !2061)
!2060 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2061 = !{!2062, !2063}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2059, file: !2060, line: 31, baseType: !602, size: 128)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2059, file: !2060, line: 32, baseType: !2064, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2065, line: 25, baseType: !2066)
!2065 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2065, line: 23, size: 64, elements: !2067)
!2067 = !{!2068}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2066, file: !2065, line: 24, baseType: !1661, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2049, file: !2050, line: 97, baseType: !1024, size: 64, offset: 640)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2049, file: !2050, line: 100, baseType: !432, size: 32, offset: 704)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2049, file: !2050, line: 106, baseType: !432, size: 32, offset: 736)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2049, file: !2050, line: 107, baseType: !1516, size: 64, offset: 768)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2049, file: !2050, line: 110, baseType: !432, size: 32, offset: 832)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2049, file: !2050, line: 111, baseType: !7, size: 32, offset: 864)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2049, file: !2050, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2049, file: !2050, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2049, file: !2050, line: 128, baseType: !432, size: 32, offset: 928)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2049, file: !2050, line: 129, baseType: !602, size: 128, offset: 960)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2049, file: !2050, line: 132, baseType: !1587, size: 512, offset: 1088)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2049, file: !2050, line: 133, baseType: !1595, size: 64, offset: 1600)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2049, file: !2050, line: 140, baseType: !2082, size: 256, offset: 1664)
!2082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2083, size: 256, elements: !1865)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2050, line: 38, size: 128, elements: !2084)
!2084 = !{!2085, !2086}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2083, file: !2050, line: 39, baseType: !814, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2083, file: !2050, line: 40, baseType: !814, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2049, file: !2050, line: 146, baseType: !2088, size: 192, offset: 1920)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2050, line: 66, size: 192, elements: !2089)
!2089 = !{!2090}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2088, file: !2050, line: 67, baseType: !2091, size: 192)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2050, line: 47, size: 192, elements: !2092)
!2092 = !{!2093, !2094, !2095}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2091, file: !2050, line: 48, baseType: !1158, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2091, file: !2050, line: 49, baseType: !1158, size: 64, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2091, file: !2050, line: 50, baseType: !1158, size: 64, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2049, file: !2050, line: 150, baseType: !1826, size: 640, offset: 2112)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2049, file: !2050, line: 153, baseType: !2098, size: 256, offset: 2752)
!2098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1767, size: 256, elements: !1458)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2049, file: !2050, line: 159, baseType: !1767, size: 64, offset: 3008)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2049, file: !2050, line: 162, baseType: !432, size: 32, offset: 3072)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2049, file: !2050, line: 164, baseType: !2102, size: 64, offset: 3136)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2050, line: 164, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2049, file: !2050, line: 175, baseType: !2105, size: 32, offset: 3200)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !785, line: 805, baseType: !2106)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !785, line: 798, size: 32, elements: !2107)
!2107 = !{!2108, !2109}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2106, file: !785, line: 803, baseType: !784, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2106, file: !785, line: 804, baseType: !632, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2049, file: !2050, line: 176, baseType: !814, size: 64, offset: 3264)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2049, file: !2050, line: 176, baseType: !814, size: 64, offset: 3328)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2049, file: !2050, line: 176, baseType: !814, size: 64, offset: 3392)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2049, file: !2050, line: 176, baseType: !814, size: 64, offset: 3456)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2049, file: !2050, line: 177, baseType: !814, size: 64, offset: 3520)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2049, file: !2050, line: 178, baseType: !814, size: 64, offset: 3584)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2049, file: !2050, line: 179, baseType: !1814, size: 128, offset: 3648)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2049, file: !2050, line: 180, baseType: !721, size: 64, offset: 3776)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2049, file: !2050, line: 180, baseType: !721, size: 64, offset: 3840)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2049, file: !2050, line: 180, baseType: !721, size: 64, offset: 3904)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2049, file: !2050, line: 180, baseType: !721, size: 64, offset: 3968)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2049, file: !2050, line: 181, baseType: !721, size: 64, offset: 4032)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2049, file: !2050, line: 181, baseType: !721, size: 64, offset: 4096)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2049, file: !2050, line: 181, baseType: !721, size: 64, offset: 4160)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2049, file: !2050, line: 181, baseType: !721, size: 64, offset: 4224)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2049, file: !2050, line: 182, baseType: !721, size: 64, offset: 4288)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2049, file: !2050, line: 182, baseType: !721, size: 64, offset: 4352)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2049, file: !2050, line: 182, baseType: !721, size: 64, offset: 4416)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2049, file: !2050, line: 182, baseType: !721, size: 64, offset: 4480)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2049, file: !2050, line: 183, baseType: !721, size: 64, offset: 4544)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2049, file: !2050, line: 183, baseType: !721, size: 64, offset: 4608)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2049, file: !2050, line: 184, baseType: !2132, offset: 4672)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2133, line: 12, elements: !646)
!2133 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2049, file: !2050, line: 192, baseType: !816, size: 64, offset: 4672)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2049, file: !2050, line: 203, baseType: !2136, size: 2048, offset: 4736)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2137, size: 2048, elements: !2029)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2138, line: 43, size: 128, elements: !2139)
!2138 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2139 = !{!2140, !2141}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2137, file: !2138, line: 44, baseType: !720, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2137, file: !2138, line: 45, baseType: !720, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2049, file: !2050, line: 220, baseType: !879, size: 8, offset: 6784)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2049, file: !2050, line: 221, baseType: !437, size: 16, offset: 6800)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2049, file: !2050, line: 222, baseType: !437, size: 16, offset: 6816)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2049, file: !2050, line: 224, baseType: !1357, size: 64, offset: 6848)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2049, file: !2050, line: 227, baseType: !1476, size: 192, offset: 6912)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2049, file: !2050, line: 233, baseType: !1476, size: 192, offset: 7104)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1517, file: !1518, line: 970, baseType: !2149, size: 64, offset: 9280)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2050, line: 20, size: 16576, elements: !2151)
!2151 = !{!2152, !2153, !2154, !2155}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2150, file: !2050, line: 21, baseType: !632)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2150, file: !2050, line: 22, baseType: !586, size: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2150, file: !2050, line: 23, baseType: !1777, size: 128, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2150, file: !2050, line: 24, baseType: !2156, size: 16384, offset: 192)
!2156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2157, size: 16384, elements: !677)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2060, line: 49, size: 256, elements: !2158)
!2158 = !{!2159}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2157, file: !2060, line: 50, baseType: !2160, size: 256)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2060, line: 35, size: 256, elements: !2161)
!2161 = !{!2162, !2169, !2170, !2176}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2160, file: !2060, line: 37, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2164, line: 19, baseType: !2165)
!2164 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2164, line: 18, baseType: !2167)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{null, !432}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2160, file: !2060, line: 38, baseType: !721, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2160, file: !2060, line: 44, baseType: !2171, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2164, line: 22, baseType: !2172)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2164, line: 21, baseType: !2174)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{null}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2160, file: !2060, line: 46, baseType: !2064, size: 64, offset: 192)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1517, file: !1518, line: 971, baseType: !2064, size: 64, offset: 9344)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1517, file: !1518, line: 972, baseType: !2064, size: 64, offset: 9408)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1517, file: !1518, line: 974, baseType: !2064, size: 64, offset: 9472)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1517, file: !1518, line: 975, baseType: !2059, size: 192, offset: 9536)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1517, file: !1518, line: 976, baseType: !721, size: 64, offset: 9728)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1517, file: !1518, line: 977, baseType: !718, size: 64, offset: 9792)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1517, file: !1518, line: 978, baseType: !7, size: 32, offset: 9856)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1517, file: !1518, line: 980, baseType: !765, size: 64, offset: 9920)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1517, file: !1518, line: 989, baseType: !2186, size: 128, offset: 9984)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2187, line: 35, size: 128, elements: !2188)
!2187 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2188 = !{!2189, !2190, !2191}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2186, file: !2187, line: 36, baseType: !432, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2186, file: !2187, line: 37, baseType: !591, size: 32, offset: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2186, file: !2187, line: 38, baseType: !2192, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2187, line: 23, flags: DIFlagFwdDecl)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1517, file: !1518, line: 992, baseType: !814, size: 64, offset: 10112)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1517, file: !1518, line: 993, baseType: !814, size: 64, offset: 10176)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1517, file: !1518, line: 996, baseType: !632, offset: 10240)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1517, file: !1518, line: 999, baseType: !1165, offset: 10240)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1517, file: !1518, line: 1001, baseType: !2199, size: 64, offset: 10240)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1518, line: 636, size: 64, elements: !2200)
!2200 = !{!2201}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2199, file: !1518, line: 637, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1517, file: !1518, line: 1005, baseType: !1137, size: 128, offset: 10304)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1517, file: !1518, line: 1007, baseType: !1516, size: 64, offset: 10432)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1517, file: !1518, line: 1009, baseType: !2206, size: 64, offset: 10496)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1518, line: 1009, flags: DIFlagFwdDecl)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1517, file: !1518, line: 1043, baseType: !431, size: 64, offset: 10560)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1517, file: !1518, line: 1046, baseType: !2210, size: 64, offset: 10624)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1518, line: 41, flags: DIFlagFwdDecl)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1517, file: !1518, line: 1050, baseType: !2213, size: 64, offset: 10688)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1518, line: 42, flags: DIFlagFwdDecl)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1517, file: !1518, line: 1054, baseType: !2216, size: 64, offset: 10752)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1518, line: 55, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1517, file: !1518, line: 1056, baseType: !2219, size: 64, offset: 10816)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1518, line: 40, flags: DIFlagFwdDecl)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1517, file: !1518, line: 1058, baseType: !2222, size: 64, offset: 10880)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2224, line: 99, size: 704, elements: !2225)
!2224 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2225 = !{!2226, !2227, !2228, !2229, !2230, !2231, !2232, !2251, !2252}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2223, file: !2224, line: 100, baseType: !1156, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2223, file: !2224, line: 101, baseType: !591, size: 32, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2223, file: !2224, line: 102, baseType: !591, size: 32, offset: 96)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2223, file: !2224, line: 105, baseType: !632, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2223, file: !2224, line: 107, baseType: !477, size: 16, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2223, file: !2224, line: 109, baseType: !1128, size: 128, offset: 192)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2223, file: !2224, line: 110, baseType: !2233, size: 64, offset: 320)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2224, line: 73, size: 448, elements: !2235)
!2235 = !{!2236, !2239, !2240, !2245, !2250}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2234, file: !2224, line: 74, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2224, line: 74, flags: DIFlagFwdDecl)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2234, file: !2224, line: 75, baseType: !2222, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, scope: !2234, file: !2224, line: 83, baseType: !2241, size: 128, offset: 128)
!2241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2234, file: !2224, line: 83, size: 128, elements: !2242)
!2242 = !{!2243, !2244}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2241, file: !2224, line: 84, baseType: !602, size: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2241, file: !2224, line: 85, baseType: !1318, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, scope: !2234, file: !2224, line: 87, baseType: !2246, size: 128, offset: 256)
!2246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2234, file: !2224, line: 87, size: 128, elements: !2247)
!2247 = !{!2248, !2249}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2246, file: !2224, line: 88, baseType: !1028, size: 128)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2246, file: !2224, line: 89, baseType: !762, size: 128, align: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2234, file: !2224, line: 92, baseType: !7, size: 32, offset: 384)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2223, file: !2224, line: 111, baseType: !1024, size: 64, offset: 384)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2223, file: !2224, line: 113, baseType: !2253, size: 256, offset: 448)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2254, line: 102, size: 256, elements: !2255)
!2254 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2255 = !{!2256, !2257, !2258}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2253, file: !2254, line: 103, baseType: !1156, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2253, file: !2254, line: 104, baseType: !602, size: 128, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2253, file: !2254, line: 105, baseType: !2259, size: 64, offset: 192)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2254, line: 21, baseType: !2260)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{null, !2263}
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1517, file: !1518, line: 1061, baseType: !2265, size: 64, offset: 10944)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1518, line: 43, flags: DIFlagFwdDecl)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1517, file: !1518, line: 1064, baseType: !721, size: 64, offset: 11008)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1517, file: !1518, line: 1065, baseType: !2269, size: 64, offset: 11072)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2060, line: 14, baseType: !2271)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2060, line: 12, size: 384, elements: !2272)
!2272 = !{!2273}
!2273 = !DIDerivedType(tag: DW_TAG_member, scope: !2271, file: !2060, line: 13, baseType: !2274, size: 384)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2271, file: !2060, line: 13, size: 384, elements: !2275)
!2275 = !{!2276, !2277, !2278, !2279}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2274, file: !2060, line: 13, baseType: !432, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2274, file: !2060, line: 13, baseType: !432, size: 32, offset: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2274, file: !2060, line: 13, baseType: !432, size: 32, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2274, file: !2060, line: 13, baseType: !2280, size: 256, offset: 128)
!2280 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2281, line: 32, size: 256, elements: !2282)
!2281 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2282 = !{!2283, !2288, !2301, !2307, !2316, !2336, !2341}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2280, file: !2281, line: 37, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2280, file: !2281, line: 34, size: 64, elements: !2285)
!2285 = !{!2286, !2287}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2284, file: !2281, line: 35, baseType: !1756, size: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2284, file: !2281, line: 36, baseType: !833, size: 32, offset: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2280, file: !2281, line: 45, baseType: !2289, size: 192)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2280, file: !2281, line: 40, size: 192, elements: !2290)
!2290 = !{!2291, !2293, !2294, !2300}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2289, file: !2281, line: 41, baseType: !2292, size: 32)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !705, line: 95, baseType: !432)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2289, file: !2281, line: 42, baseType: !432, size: 32, offset: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2289, file: !2281, line: 43, baseType: !2295, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2281, line: 11, baseType: !2296)
!2296 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2281, line: 8, size: 64, elements: !2297)
!2297 = !{!2298, !2299}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2296, file: !2281, line: 9, baseType: !432, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2296, file: !2281, line: 10, baseType: !431, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2289, file: !2281, line: 44, baseType: !432, size: 32, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2280, file: !2281, line: 52, baseType: !2302, size: 128)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2280, file: !2281, line: 48, size: 128, elements: !2303)
!2303 = !{!2304, !2305, !2306}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2302, file: !2281, line: 49, baseType: !1756, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2302, file: !2281, line: 50, baseType: !833, size: 32, offset: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2302, file: !2281, line: 51, baseType: !2295, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2280, file: !2281, line: 61, baseType: !2308, size: 256)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2280, file: !2281, line: 55, size: 256, elements: !2309)
!2309 = !{!2310, !2311, !2312, !2313, !2315}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2308, file: !2281, line: 56, baseType: !1756, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2308, file: !2281, line: 57, baseType: !833, size: 32, offset: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2308, file: !2281, line: 58, baseType: !432, size: 32, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2308, file: !2281, line: 59, baseType: !2314, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !705, line: 94, baseType: !706)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2308, file: !2281, line: 60, baseType: !2314, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2280, file: !2281, line: 95, baseType: !2317, size: 256)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2280, file: !2281, line: 64, size: 256, elements: !2318)
!2318 = !{!2319, !2320}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2317, file: !2281, line: 65, baseType: !431, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, scope: !2317, file: !2281, line: 77, baseType: !2321, size: 192, offset: 64)
!2321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2317, file: !2281, line: 77, size: 192, elements: !2322)
!2322 = !{!2323, !2324, !2331}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2321, file: !2281, line: 82, baseType: !437, size: 16)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2321, file: !2281, line: 88, baseType: !2325, size: 192)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2321, file: !2281, line: 84, size: 192, elements: !2326)
!2326 = !{!2327, !2329, !2330}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2325, file: !2281, line: 85, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 64, elements: !572)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2325, file: !2281, line: 86, baseType: !431, size: 64, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2325, file: !2281, line: 87, baseType: !431, size: 64, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2321, file: !2281, line: 93, baseType: !2332, size: 96)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2321, file: !2281, line: 90, size: 96, elements: !2333)
!2333 = !{!2334, !2335}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2332, file: !2281, line: 91, baseType: !2328, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2332, file: !2281, line: 92, baseType: !562, size: 32, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2280, file: !2281, line: 101, baseType: !2337, size: 128)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2280, file: !2281, line: 98, size: 128, elements: !2338)
!2338 = !{!2339, !2340}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2337, file: !2281, line: 99, baseType: !707, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2337, file: !2281, line: 100, baseType: !432, size: 32, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2280, file: !2281, line: 108, baseType: !2342, size: 128)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2280, file: !2281, line: 104, size: 128, elements: !2343)
!2343 = !{!2344, !2345, !2346}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2342, file: !2281, line: 105, baseType: !431, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2342, file: !2281, line: 106, baseType: !432, size: 32, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2342, file: !2281, line: 107, baseType: !7, size: 32, offset: 96)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1517, file: !1518, line: 1067, baseType: !2132, offset: 11136)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1517, file: !1518, line: 1099, baseType: !2349, size: 64, offset: 11136)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1518, line: 56, flags: DIFlagFwdDecl)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1517, file: !1518, line: 1103, baseType: !602, size: 128, offset: 11200)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1517, file: !1518, line: 1104, baseType: !2353, size: 64, offset: 11328)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1518, line: 46, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1517, file: !1518, line: 1105, baseType: !1476, size: 192, offset: 11392)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1517, file: !1518, line: 1106, baseType: !7, size: 32, offset: 11584)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1517, file: !1518, line: 1109, baseType: !2358, size: 128, offset: 11648)
!2358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2359, size: 128, elements: !1865)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1518, line: 51, flags: DIFlagFwdDecl)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1517, file: !1518, line: 1110, baseType: !1476, size: 192, offset: 11776)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1517, file: !1518, line: 1111, baseType: !602, size: 128, offset: 11968)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1517, file: !1518, line: 1173, baseType: !2364, size: 64, offset: 12096)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2366, line: 62, size: 256, align: 256, elements: !2367)
!2366 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2367 = !{!2368, !2369, !2370, !2375}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2365, file: !2366, line: 75, baseType: !562, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2365, file: !2366, line: 90, baseType: !562, size: 32, offset: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2365, file: !2366, line: 124, baseType: !2371, size: 64, offset: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2365, file: !2366, line: 109, size: 64, elements: !2372)
!2372 = !{!2373, !2374}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2371, file: !2366, line: 110, baseType: !815, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2371, file: !2366, line: 112, baseType: !815, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2365, file: !2366, line: 144, baseType: !562, size: 32, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1517, file: !1518, line: 1174, baseType: !561, size: 32, offset: 12160)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1517, file: !1518, line: 1179, baseType: !721, size: 64, offset: 12224)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1517, file: !1518, line: 1182, baseType: !2379, size: 128, offset: 12288)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1454, line: 76, size: 128, elements: !2380)
!2380 = !{!2381, !2386, !2387}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2379, file: !1454, line: 85, baseType: !2382, size: 64)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2383, line: 7, size: 64, elements: !2384)
!2383 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2384 = !{!2385}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2382, file: !2383, line: 12, baseType: !1658, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2379, file: !1454, line: 88, baseType: !879, size: 8, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2379, file: !1454, line: 95, baseType: !879, size: 8, offset: 72)
!2388 = !DIDerivedType(tag: DW_TAG_member, scope: !1517, file: !1518, line: 1184, baseType: !2389, size: 128, offset: 12416)
!2389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1517, file: !1518, line: 1184, size: 128, elements: !2390)
!2390 = !{!2391, !2392}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2389, file: !1518, line: 1185, baseType: !586, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2389, file: !1518, line: 1186, baseType: !762, size: 128, align: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1517, file: !1518, line: 1190, baseType: !2394, size: 64, offset: 12544)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1518, line: 53, flags: DIFlagFwdDecl)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1517, file: !1518, line: 1192, baseType: !2397, size: 128, offset: 12608)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1454, line: 64, size: 128, elements: !2398)
!2398 = !{!2399, !2400, !2401}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2397, file: !1454, line: 65, baseType: !1110, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2397, file: !1454, line: 67, baseType: !562, size: 32, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2397, file: !1454, line: 68, baseType: !562, size: 32, offset: 96)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1517, file: !1518, line: 1206, baseType: !432, size: 32, offset: 12736)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1517, file: !1518, line: 1207, baseType: !432, size: 32, offset: 12768)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1517, file: !1518, line: 1209, baseType: !721, size: 64, offset: 12800)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1517, file: !1518, line: 1219, baseType: !814, size: 64, offset: 12864)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1517, file: !1518, line: 1220, baseType: !814, size: 64, offset: 12928)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1517, file: !1518, line: 1317, baseType: !432, size: 32, offset: 12992)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1517, file: !1518, line: 1319, baseType: !1516, size: 64, offset: 13056)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1517, file: !1518, line: 1322, baseType: !2410, size: 64, offset: 13120)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2412, line: 56, size: 512, elements: !2413)
!2412 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2413 = !{!2414, !2415, !2416, !2417, !2418, !2419, !2420, !2422}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2411, file: !2412, line: 57, baseType: !2410, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2411, file: !2412, line: 58, baseType: !431, size: 64, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2411, file: !2412, line: 59, baseType: !721, size: 64, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2411, file: !2412, line: 60, baseType: !721, size: 64, offset: 192)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2411, file: !2412, line: 61, baseType: !1205, size: 64, offset: 256)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2411, file: !2412, line: 62, baseType: !7, size: 32, offset: 320)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2411, file: !2412, line: 63, baseType: !2421, size: 64, offset: 384)
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !430, line: 153, baseType: !814)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2411, file: !2412, line: 64, baseType: !2423, size: 64, offset: 448)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1517, file: !1518, line: 1326, baseType: !586, size: 32, offset: 13184)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1517, file: !1518, line: 1342, baseType: !431, size: 64, offset: 13248)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1517, file: !1518, line: 1343, baseType: !815, size: 64, offset: 13312)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1517, file: !1518, line: 1344, baseType: !814, size: 64, offset: 13376)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1517, file: !1518, line: 1345, baseType: !815, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1517, file: !1518, line: 1346, baseType: !815, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1517, file: !1518, line: 1347, baseType: !815, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1517, file: !1518, line: 1348, baseType: !762, size: 128, align: 64, offset: 13504)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1517, file: !1518, line: 1358, baseType: !2434, size: 34816, offset: 13824)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2435, line: 485, size: 34816, elements: !2436)
!2435 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2436 = !{!2437, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2466, !2467, !2468, !2469, !2470, !2471, !2474, !2475, !2476}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2434, file: !2435, line: 487, baseType: !2438, size: 192)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2439, size: 192, elements: !673)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2440, line: 16, size: 64, elements: !2441)
!2440 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2441 = !{!2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2439, file: !2440, line: 17, baseType: !475, size: 16)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2439, file: !2440, line: 18, baseType: !475, size: 16, offset: 16)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2439, file: !2440, line: 19, baseType: !475, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2439, file: !2440, line: 19, baseType: !475, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2439, file: !2440, line: 19, baseType: !475, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2439, file: !2440, line: 19, baseType: !475, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2439, file: !2440, line: 19, baseType: !475, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2439, file: !2440, line: 20, baseType: !475, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2439, file: !2440, line: 20, baseType: !475, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2439, file: !2440, line: 20, baseType: !475, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2439, file: !2440, line: 20, baseType: !475, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2439, file: !2440, line: 20, baseType: !475, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2439, file: !2440, line: 20, baseType: !475, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2434, file: !2435, line: 491, baseType: !721, size: 64, offset: 192)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2434, file: !2435, line: 495, baseType: !477, size: 16, offset: 256)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2434, file: !2435, line: 496, baseType: !477, size: 16, offset: 272)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2434, file: !2435, line: 497, baseType: !477, size: 16, offset: 288)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2434, file: !2435, line: 498, baseType: !477, size: 16, offset: 304)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2434, file: !2435, line: 502, baseType: !721, size: 64, offset: 320)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2434, file: !2435, line: 503, baseType: !721, size: 64, offset: 384)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2434, file: !2435, line: 514, baseType: !2463, size: 256, offset: 448)
!2463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2464, size: 256, elements: !1458)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2435, line: 483, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2434, file: !2435, line: 516, baseType: !721, size: 64, offset: 704)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2434, file: !2435, line: 518, baseType: !721, size: 64, offset: 768)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2434, file: !2435, line: 520, baseType: !721, size: 64, offset: 832)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2434, file: !2435, line: 521, baseType: !721, size: 64, offset: 896)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2434, file: !2435, line: 522, baseType: !721, size: 64, offset: 960)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2434, file: !2435, line: 528, baseType: !2472, size: 64, offset: 1024)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2435, line: 10, flags: DIFlagFwdDecl)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2434, file: !2435, line: 535, baseType: !721, size: 64, offset: 1088)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2434, file: !2435, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2434, file: !2435, line: 540, baseType: !2477, size: 33280, offset: 1536)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2478, line: 317, size: 33280, elements: !2479)
!2478 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2479 = !{!2480, !2481, !2482}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2477, file: !2478, line: 330, baseType: !7, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2477, file: !2478, line: 337, baseType: !721, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2477, file: !2478, line: 348, baseType: !2483, size: 32768, offset: 512)
!2483 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2478, line: 304, size: 32768, elements: !2484)
!2484 = !{!2485, !2500, !2537, !2587, !2600}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2483, file: !2478, line: 305, baseType: !2486, size: 896)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2478, line: 12, size: 896, elements: !2487)
!2487 = !{!2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2499}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2486, file: !2478, line: 13, baseType: !561, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2486, file: !2478, line: 14, baseType: !561, size: 32, offset: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2486, file: !2478, line: 15, baseType: !561, size: 32, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2486, file: !2478, line: 16, baseType: !561, size: 32, offset: 96)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2486, file: !2478, line: 17, baseType: !561, size: 32, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2486, file: !2478, line: 18, baseType: !561, size: 32, offset: 160)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2486, file: !2478, line: 19, baseType: !561, size: 32, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2486, file: !2478, line: 22, baseType: !2496, size: 640, offset: 224)
!2496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 640, elements: !2497)
!2497 = !{!2498}
!2498 = !DISubrange(count: 20)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2486, file: !2478, line: 25, baseType: !561, size: 32, offset: 864)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2483, file: !2478, line: 306, baseType: !2501, size: 4096, align: 128)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2478, line: 34, size: 4096, align: 128, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2522, !2523, !2524, !2528, !2530, !2532}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2501, file: !2478, line: 35, baseType: !475, size: 16)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2501, file: !2478, line: 36, baseType: !475, size: 16, offset: 16)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2501, file: !2478, line: 37, baseType: !475, size: 16, offset: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2501, file: !2478, line: 38, baseType: !475, size: 16, offset: 48)
!2507 = !DIDerivedType(tag: DW_TAG_member, scope: !2501, file: !2478, line: 39, baseType: !2508, size: 128, offset: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2501, file: !2478, line: 39, size: 128, elements: !2509)
!2509 = !{!2510, !2515}
!2510 = !DIDerivedType(tag: DW_TAG_member, scope: !2508, file: !2478, line: 40, baseType: !2511, size: 128)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2508, file: !2478, line: 40, size: 128, elements: !2512)
!2512 = !{!2513, !2514}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2511, file: !2478, line: 41, baseType: !814, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2511, file: !2478, line: 42, baseType: !814, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, scope: !2508, file: !2478, line: 44, baseType: !2516, size: 128)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2508, file: !2478, line: 44, size: 128, elements: !2517)
!2517 = !{!2518, !2519, !2520, !2521}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2516, file: !2478, line: 45, baseType: !561, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2516, file: !2478, line: 46, baseType: !561, size: 32, offset: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2516, file: !2478, line: 47, baseType: !561, size: 32, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2516, file: !2478, line: 48, baseType: !561, size: 32, offset: 96)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2501, file: !2478, line: 51, baseType: !561, size: 32, offset: 192)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2501, file: !2478, line: 52, baseType: !561, size: 32, offset: 224)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2501, file: !2478, line: 55, baseType: !2525, size: 1024, offset: 256)
!2525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 1024, elements: !2526)
!2526 = !{!2527}
!2527 = !DISubrange(count: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2501, file: !2478, line: 58, baseType: !2529, size: 2048, offset: 1280)
!2529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 2048, elements: !677)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2501, file: !2478, line: 60, baseType: !2531, size: 384, offset: 3328)
!2531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 384, elements: !548)
!2532 = !DIDerivedType(tag: DW_TAG_member, scope: !2501, file: !2478, line: 62, baseType: !2533, size: 384, offset: 3712)
!2533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2501, file: !2478, line: 62, size: 384, elements: !2534)
!2534 = !{!2535, !2536}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2533, file: !2478, line: 63, baseType: !2531, size: 384)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2533, file: !2478, line: 64, baseType: !2531, size: 384)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2483, file: !2478, line: 307, baseType: !2538, size: 1088)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2478, line: 79, size: 1088, elements: !2539)
!2539 = !{!2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2586}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2538, file: !2478, line: 80, baseType: !561, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2538, file: !2478, line: 81, baseType: !561, size: 32, offset: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2538, file: !2478, line: 82, baseType: !561, size: 32, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2538, file: !2478, line: 83, baseType: !561, size: 32, offset: 96)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2538, file: !2478, line: 84, baseType: !561, size: 32, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2538, file: !2478, line: 85, baseType: !561, size: 32, offset: 160)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2538, file: !2478, line: 86, baseType: !561, size: 32, offset: 192)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2538, file: !2478, line: 88, baseType: !2496, size: 640, offset: 224)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2538, file: !2478, line: 89, baseType: !483, size: 8, offset: 864)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2538, file: !2478, line: 90, baseType: !483, size: 8, offset: 872)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2538, file: !2478, line: 91, baseType: !483, size: 8, offset: 880)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2538, file: !2478, line: 92, baseType: !483, size: 8, offset: 888)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2538, file: !2478, line: 93, baseType: !483, size: 8, offset: 896)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2538, file: !2478, line: 94, baseType: !483, size: 8, offset: 904)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2538, file: !2478, line: 95, baseType: !2555, size: 64, offset: 960)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2557, line: 11, size: 128, elements: !2558)
!2557 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2558 = !{!2559, !2560}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2556, file: !2557, line: 12, baseType: !707, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2556, file: !2557, line: 13, baseType: !2561, size: 64, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2563, line: 56, size: 1344, elements: !2564)
!2563 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2564 = !{!2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2562, file: !2563, line: 61, baseType: !721, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2562, file: !2563, line: 62, baseType: !721, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2562, file: !2563, line: 63, baseType: !721, size: 64, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2562, file: !2563, line: 64, baseType: !721, size: 64, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2562, file: !2563, line: 65, baseType: !721, size: 64, offset: 256)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2562, file: !2563, line: 66, baseType: !721, size: 64, offset: 320)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2562, file: !2563, line: 68, baseType: !721, size: 64, offset: 384)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2562, file: !2563, line: 69, baseType: !721, size: 64, offset: 448)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2562, file: !2563, line: 70, baseType: !721, size: 64, offset: 512)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2562, file: !2563, line: 71, baseType: !721, size: 64, offset: 576)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2562, file: !2563, line: 72, baseType: !721, size: 64, offset: 640)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2562, file: !2563, line: 73, baseType: !721, size: 64, offset: 704)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2562, file: !2563, line: 74, baseType: !721, size: 64, offset: 768)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2562, file: !2563, line: 75, baseType: !721, size: 64, offset: 832)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2562, file: !2563, line: 76, baseType: !721, size: 64, offset: 896)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2562, file: !2563, line: 81, baseType: !721, size: 64, offset: 960)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2562, file: !2563, line: 83, baseType: !721, size: 64, offset: 1024)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2562, file: !2563, line: 84, baseType: !721, size: 64, offset: 1088)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2562, file: !2563, line: 85, baseType: !721, size: 64, offset: 1152)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2562, file: !2563, line: 86, baseType: !721, size: 64, offset: 1216)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2562, file: !2563, line: 87, baseType: !721, size: 64, offset: 1280)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2538, file: !2478, line: 96, baseType: !561, size: 32, offset: 1024)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2483, file: !2478, line: 308, baseType: !2588, size: 4608, align: 512)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2478, line: 289, size: 4608, align: 512, elements: !2589)
!2589 = !{!2590, !2591, !2598}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2588, file: !2478, line: 290, baseType: !2501, size: 4096, align: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2588, file: !2478, line: 291, baseType: !2592, size: 512, offset: 4096)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2478, line: 268, size: 512, elements: !2593)
!2593 = !{!2594, !2595, !2596}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2592, file: !2478, line: 269, baseType: !814, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2592, file: !2478, line: 270, baseType: !814, size: 64, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2592, file: !2478, line: 271, baseType: !2597, size: 384, offset: 128)
!2597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 384, elements: !611)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2588, file: !2478, line: 292, baseType: !2599, offset: 4608)
!2599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, elements: !2017)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2483, file: !2478, line: 309, baseType: !2601, size: 32768)
!2601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 32768, elements: !2602)
!2602 = !{!2603}
!2603 = !DISubrange(count: 4096)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1513, file: !1112, line: 378, baseType: !2605, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1509, file: !1112, line: 384, baseType: !1798, size: 192, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1361, file: !1112, line: 500, baseType: !632, offset: 6656)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1361, file: !1112, line: 501, baseType: !2609, size: 64, offset: 6656)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1112, line: 387, flags: DIFlagFwdDecl)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1361, file: !1112, line: 516, baseType: !2007, size: 64, offset: 6720)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1361, file: !1112, line: 519, baseType: !749, size: 64, offset: 6784)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1361, file: !1112, line: 521, baseType: !2614, size: 64, offset: 6848)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1112, line: 521, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1361, file: !1112, line: 545, baseType: !591, size: 32, offset: 6912)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1361, file: !1112, line: 548, baseType: !879, size: 8, offset: 6944)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1361, file: !1112, line: 550, baseType: !2619, offset: 6952)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2620, line: 142, elements: !646)
!2620 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1361, file: !1112, line: 554, baseType: !2253, size: 256, offset: 6976)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1361, file: !1112, line: 557, baseType: !561, size: 32, offset: 7232)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1358, file: !1112, line: 565, baseType: !2624, offset: 7296)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, elements: !2625)
!2625 = !{!2626}
!2626 = !DISubrange(count: -1)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1354, file: !1112, line: 151, baseType: !591, size: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1347, file: !1112, line: 156, baseType: !632, offset: 256)
!2629 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !1112, line: 159, baseType: !2630, size: 128)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1116, file: !1112, line: 159, size: 128, elements: !2631)
!2631 = !{!2632, !2635}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2630, file: !1112, line: 161, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1112, line: 161, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2630, file: !1112, line: 162, baseType: !431, size: 64, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1116, file: !1112, line: 176, baseType: !762, size: 128, align: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, scope: !1111, file: !1112, line: 179, baseType: !2638, size: 32, offset: 384)
!2638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1111, file: !1112, line: 179, size: 32, elements: !2639)
!2639 = !{!2640, !2641, !2642, !2643}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2638, file: !1112, line: 184, baseType: !591, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2638, file: !1112, line: 192, baseType: !7, size: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2638, file: !1112, line: 194, baseType: !7, size: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2638, file: !1112, line: 195, baseType: !432, size: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1111, file: !1112, line: 199, baseType: !591, size: 32, offset: 416)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1046, file: !208, line: 1964, baseType: !2646, size: 64, offset: 1344)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!707, !988, !2649}
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2651, line: 12, size: 256, elements: !2652)
!2651 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2652 = !{!2653, !2654, !2655, !2656, !2657}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2650, file: !2651, line: 13, baseType: !429, size: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2650, file: !2651, line: 16, baseType: !432, size: 32, offset: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2650, file: !2651, line: 23, baseType: !721, size: 64, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2650, file: !2651, line: 30, baseType: !721, size: 64, offset: 128)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2650, file: !2651, line: 33, baseType: !2658, size: 64, offset: 192)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1112, line: 27, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1046, file: !208, line: 1966, baseType: !2646, size: 64, offset: 1408)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !989, file: !208, line: 1424, baseType: !2662, size: 64, offset: 448)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2664)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !2665)
!2665 = !{!2666, !2712, !2716, !2720, !2721, !2722, !2723, !2724, !2729, !2734, !2738}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2664, file: !202, line: 323, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!432, !2670}
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !2672)
!2672 = !{!2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2697, !2698, !2699}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2671, file: !202, line: 295, baseType: !1028, size: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2671, file: !202, line: 296, baseType: !602, size: 128, offset: 128)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2671, file: !202, line: 297, baseType: !602, size: 128, offset: 256)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2671, file: !202, line: 298, baseType: !602, size: 128, offset: 384)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2671, file: !202, line: 299, baseType: !1476, size: 192, offset: 512)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2671, file: !202, line: 300, baseType: !632, offset: 704)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2671, file: !202, line: 301, baseType: !591, size: 32, offset: 704)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2671, file: !202, line: 302, baseType: !988, size: 64, offset: 768)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2671, file: !202, line: 303, baseType: !2682, size: 64, offset: 832)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !2683)
!2683 = !{!2684, !2696}
!2684 = !DIDerivedType(tag: DW_TAG_member, scope: !2682, file: !202, line: 69, baseType: !2685, size: 32)
!2685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2682, file: !202, line: 69, size: 32, elements: !2686)
!2686 = !{!2687, !2688, !2689}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2685, file: !202, line: 70, baseType: !827, size: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2685, file: !202, line: 71, baseType: !835, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2685, file: !202, line: 72, baseType: !2690, size: 32)
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2691, line: 24, baseType: !2692)
!2691 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2691, line: 22, size: 32, elements: !2693)
!2693 = !{!2694}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2692, file: !2691, line: 23, baseType: !2695, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2691, line: 20, baseType: !833)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2682, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2671, file: !202, line: 304, baseType: !920, size: 64, offset: 896)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2671, file: !202, line: 305, baseType: !721, size: 64, offset: 960)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2671, file: !202, line: 306, baseType: !2700, size: 576, offset: 1024)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !2701)
!2701 = !{!2702, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2700, file: !202, line: 206, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !922)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2700, file: !202, line: 207, baseType: !2703, size: 64, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2700, file: !202, line: 208, baseType: !2703, size: 64, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2700, file: !202, line: 209, baseType: !2703, size: 64, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2700, file: !202, line: 210, baseType: !2703, size: 64, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2700, file: !202, line: 211, baseType: !2703, size: 64, offset: 320)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2700, file: !202, line: 212, baseType: !2703, size: 64, offset: 384)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2700, file: !202, line: 213, baseType: !928, size: 64, offset: 448)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2700, file: !202, line: 214, baseType: !928, size: 64, offset: 512)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2664, file: !202, line: 324, baseType: !2713, size: 64, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!2670, !988, !432}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2664, file: !202, line: 325, baseType: !2717, size: 64, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{null, !2670}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2664, file: !202, line: 326, baseType: !2667, size: 64, offset: 192)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2664, file: !202, line: 327, baseType: !2667, size: 64, offset: 256)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2664, file: !202, line: 328, baseType: !2667, size: 64, offset: 320)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2664, file: !202, line: 329, baseType: !1074, size: 64, offset: 384)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2664, file: !202, line: 332, baseType: !2725, size: 64, offset: 448)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!2728, !821}
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2664, file: !202, line: 333, baseType: !2730, size: 64, offset: 512)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!432, !821, !2733}
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2664, file: !202, line: 335, baseType: !2735, size: 64, offset: 576)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!432, !821, !2728}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2664, file: !202, line: 337, baseType: !2739, size: 64, offset: 640)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!432, !988, !2742}
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !989, file: !208, line: 1425, baseType: !2744, size: 64, offset: 512)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2746)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !2747)
!2747 = !{!2748, !2752, !2753, !2757, !2758, !2759, !2774, !2797, !2801, !2802, !2825}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2746, file: !202, line: 429, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!432, !988, !432, !432, !938}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2746, file: !202, line: 430, baseType: !1074, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2746, file: !202, line: 431, baseType: !2754, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!432, !988, !7}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2746, file: !202, line: 432, baseType: !2754, size: 64, offset: 192)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2746, file: !202, line: 433, baseType: !1074, size: 64, offset: 256)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2746, file: !202, line: 434, baseType: !2760, size: 64, offset: 320)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!432, !988, !432, !2763}
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !2765)
!2765 = !{!2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2764, file: !202, line: 416, baseType: !432, size: 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2764, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2764, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2764, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2764, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2764, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2764, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2764, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2746, file: !202, line: 435, baseType: !2775, size: 64, offset: 384)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!432, !988, !2682, !2778}
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !2780)
!2780 = !{!2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2779, file: !202, line: 344, baseType: !432, size: 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2779, file: !202, line: 345, baseType: !814, size: 64, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2779, file: !202, line: 346, baseType: !814, size: 64, offset: 128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2779, file: !202, line: 347, baseType: !814, size: 64, offset: 192)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2779, file: !202, line: 348, baseType: !814, size: 64, offset: 256)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2779, file: !202, line: 349, baseType: !814, size: 64, offset: 320)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2779, file: !202, line: 350, baseType: !814, size: 64, offset: 384)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2779, file: !202, line: 351, baseType: !1162, size: 64, offset: 448)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2779, file: !202, line: 353, baseType: !1162, size: 64, offset: 512)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2779, file: !202, line: 354, baseType: !432, size: 32, offset: 576)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2779, file: !202, line: 355, baseType: !432, size: 32, offset: 608)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2779, file: !202, line: 356, baseType: !814, size: 64, offset: 640)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2779, file: !202, line: 357, baseType: !814, size: 64, offset: 704)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2779, file: !202, line: 358, baseType: !814, size: 64, offset: 768)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2779, file: !202, line: 359, baseType: !1162, size: 64, offset: 832)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2779, file: !202, line: 360, baseType: !432, size: 32, offset: 896)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2746, file: !202, line: 436, baseType: !2798, size: 64, offset: 448)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!432, !988, !2742, !2778}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2746, file: !202, line: 438, baseType: !2775, size: 64, offset: 512)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2746, file: !202, line: 439, baseType: !2803, size: 64, offset: 576)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!432, !988, !2806}
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !2808)
!2808 = !{!2809, !2810}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2807, file: !202, line: 410, baseType: !7, size: 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2807, file: !202, line: 411, baseType: !2811, size: 1344, offset: 64)
!2811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2812, size: 1344, elements: !673)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !2813)
!2813 = !{!2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2824}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2812, file: !202, line: 396, baseType: !7, size: 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2812, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2812, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2812, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2812, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2812, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2812, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2812, file: !202, line: 404, baseType: !816, size: 64, offset: 256)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2812, file: !202, line: 405, baseType: !2823, size: 64, offset: 320)
!2823 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !430, line: 126, baseType: !814)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2812, file: !202, line: 406, baseType: !2823, size: 64, offset: 384)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2746, file: !202, line: 440, baseType: !2754, size: 64, offset: 640)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !989, file: !208, line: 1426, baseType: !2827, size: 64, offset: 576)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2829)
!2829 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !989, file: !208, line: 1427, baseType: !721, size: 64, offset: 640)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !989, file: !208, line: 1428, baseType: !721, size: 64, offset: 704)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !989, file: !208, line: 1429, baseType: !721, size: 64, offset: 768)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !989, file: !208, line: 1430, baseType: !779, size: 64, offset: 832)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !989, file: !208, line: 1431, baseType: !1152, size: 256, offset: 896)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !989, file: !208, line: 1432, baseType: !432, size: 32, offset: 1152)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !989, file: !208, line: 1433, baseType: !591, size: 32, offset: 1184)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !989, file: !208, line: 1437, baseType: !2838, size: 64, offset: 1216)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2841)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !989, file: !208, line: 1449, baseType: !2843, size: 64, offset: 1280)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !795, line: 34, size: 64, elements: !2844)
!2844 = !{!2845}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2843, file: !795, line: 35, baseType: !798, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !989, file: !208, line: 1450, baseType: !602, size: 128, offset: 1344)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !989, file: !208, line: 1451, baseType: !2848, size: 64, offset: 1472)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !989, file: !208, line: 1452, baseType: !2219, size: 64, offset: 1536)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !989, file: !208, line: 1453, baseType: !2852, size: 64, offset: 1600)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !989, file: !208, line: 1454, baseType: !1028, size: 128, offset: 1664)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !989, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !989, file: !208, line: 1456, baseType: !2857, size: 2432, offset: 1856)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !2858)
!2858 = !{!2859, !2860, !2861, !2863, !2895}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2857, file: !202, line: 519, baseType: !7, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2857, file: !202, line: 520, baseType: !1152, size: 256, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2857, file: !202, line: 521, baseType: !2862, size: 192, offset: 320)
!2862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !821, size: 192, elements: !673)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2857, file: !202, line: 522, baseType: !2864, size: 1728, offset: 512)
!2864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2865, size: 1728, elements: !673)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !2866)
!2866 = !{!2867, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2865, file: !202, line: 223, baseType: !2868, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !2870)
!2870 = !{!2871, !2872, !2885, !2886}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2869, file: !202, line: 444, baseType: !432, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2869, file: !202, line: 445, baseType: !2873, size: 64, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2875)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !2876)
!2876 = !{!2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2875, file: !202, line: 311, baseType: !1074, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2875, file: !202, line: 312, baseType: !1074, size: 64, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2875, file: !202, line: 313, baseType: !1074, size: 64, offset: 128)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2875, file: !202, line: 314, baseType: !1074, size: 64, offset: 192)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2875, file: !202, line: 315, baseType: !2667, size: 64, offset: 256)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2875, file: !202, line: 316, baseType: !2667, size: 64, offset: 320)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2875, file: !202, line: 317, baseType: !2667, size: 64, offset: 384)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2875, file: !202, line: 318, baseType: !2739, size: 64, offset: 448)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2869, file: !202, line: 446, baseType: !450, size: 64, offset: 128)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2869, file: !202, line: 447, baseType: !2868, size: 64, offset: 192)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2865, file: !202, line: 224, baseType: !432, size: 32, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2865, file: !202, line: 226, baseType: !602, size: 128, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2865, file: !202, line: 227, baseType: !721, size: 64, offset: 256)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2865, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2865, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2865, file: !202, line: 230, baseType: !2703, size: 64, offset: 384)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2865, file: !202, line: 231, baseType: !2703, size: 64, offset: 448)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2865, file: !202, line: 232, baseType: !431, size: 64, offset: 512)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2857, file: !202, line: 523, baseType: !2896, size: 192, offset: 2240)
!2896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2873, size: 192, elements: !673)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !989, file: !208, line: 1458, baseType: !2898, size: 2112, offset: 4288)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !2899)
!2899 = !{!2900, !2901, !2902}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2898, file: !208, line: 1411, baseType: !432, size: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2898, file: !208, line: 1412, baseType: !1777, size: 128, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2898, file: !208, line: 1413, baseType: !2903, size: 1920, offset: 192)
!2903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2904, size: 1920, elements: !673)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2905, line: 12, size: 640, elements: !2906)
!2905 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2906 = !{!2907, !2915, !2916, !2921, !2922}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2904, file: !2905, line: 13, baseType: !2908, size: 320)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2909, line: 17, size: 320, elements: !2910)
!2909 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2910 = !{!2911, !2912, !2913, !2914}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2908, file: !2909, line: 18, baseType: !432, size: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2908, file: !2909, line: 19, baseType: !432, size: 32, offset: 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2908, file: !2909, line: 20, baseType: !1777, size: 128, offset: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2908, file: !2909, line: 22, baseType: !762, size: 128, align: 64, offset: 192)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2904, file: !2905, line: 14, baseType: !505, size: 64, offset: 320)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2904, file: !2905, line: 15, baseType: !2917, size: 64, offset: 384)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2918, line: 16, size: 64, elements: !2919)
!2918 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2919 = !{!2920}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2917, file: !2918, line: 17, baseType: !1516, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2904, file: !2905, line: 16, baseType: !1777, size: 128, offset: 448)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2904, file: !2905, line: 17, baseType: !591, size: 32, offset: 576)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !989, file: !208, line: 1465, baseType: !431, size: 64, offset: 6400)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !989, file: !208, line: 1468, baseType: !561, size: 32, offset: 6464)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !989, file: !208, line: 1470, baseType: !928, size: 64, offset: 6528)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !989, file: !208, line: 1471, baseType: !928, size: 64, offset: 6592)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !989, file: !208, line: 1473, baseType: !562, size: 32, offset: 6656)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !989, file: !208, line: 1474, baseType: !2929, size: 64, offset: 6720)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !989, file: !208, line: 1477, baseType: !2932, size: 256, offset: 6784)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 256, elements: !2526)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !989, file: !208, line: 1478, baseType: !2934, size: 128, offset: 7040)
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2935, line: 18, baseType: !2936)
!2935 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2935, line: 16, size: 128, elements: !2937)
!2937 = !{!2938}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2936, file: !2935, line: 17, baseType: !2939, size: 128)
!2939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 128, elements: !2029)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !989, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !989, file: !208, line: 1481, baseType: !2942, size: 32, offset: 7200)
!2942 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !430, line: 150, baseType: !7)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !989, file: !208, line: 1487, baseType: !1476, size: 192, offset: 7232)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !989, file: !208, line: 1493, baseType: !446, size: 64, offset: 7424)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !989, file: !208, line: 1495, baseType: !2946, size: 64, offset: 7488)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2948)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !777, line: 135, size: 1024, align: 512, elements: !2949)
!2949 = !{!2950, !2954, !2955, !2962, !2968, !2972, !2976, !2980, !2981, !2985, !2989, !2994, !2998}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2948, file: !777, line: 136, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!432, !779, !7}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2948, file: !777, line: 137, baseType: !2951, size: 64, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2948, file: !777, line: 138, baseType: !2956, size: 64, offset: 128)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!432, !2959, !2961}
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2948, file: !777, line: 139, baseType: !2963, size: 64, offset: 192)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!432, !2959, !7, !446, !2966}
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !803)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2948, file: !777, line: 141, baseType: !2969, size: 64, offset: 256)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!432, !2959}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2948, file: !777, line: 142, baseType: !2973, size: 64, offset: 320)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!432, !779}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2948, file: !777, line: 143, baseType: !2977, size: 64, offset: 384)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{null, !779}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2948, file: !777, line: 144, baseType: !2977, size: 64, offset: 448)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2948, file: !777, line: 145, baseType: !2982, size: 64, offset: 512)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !779, !821}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2948, file: !777, line: 146, baseType: !2986, size: 64, offset: 576)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!468, !779, !468, !432}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2948, file: !777, line: 147, baseType: !2990, size: 64, offset: 640)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!775, !2993}
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2948, file: !777, line: 148, baseType: !2995, size: 64, offset: 704)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!432, !938, !879}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2948, file: !777, line: 149, baseType: !2999, size: 64, offset: 768)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!779, !779, !3002}
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !822)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !989, file: !208, line: 1500, baseType: !432, size: 32, offset: 7552)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !989, file: !208, line: 1502, baseType: !3006, size: 448, offset: 7616)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2651, line: 60, size: 448, elements: !3007)
!3007 = !{!3008, !3013, !3014, !3015, !3016, !3017, !3018}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3006, file: !2651, line: 61, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!721, !3012, !2649}
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3006, file: !2651, line: 63, baseType: !3009, size: 64, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3006, file: !2651, line: 66, baseType: !707, size: 64, offset: 128)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3006, file: !2651, line: 67, baseType: !432, size: 32, offset: 192)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3006, file: !2651, line: 68, baseType: !7, size: 32, offset: 224)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3006, file: !2651, line: 71, baseType: !602, size: 128, offset: 256)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3006, file: !2651, line: 77, baseType: !3019, size: 64, offset: 384)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !989, file: !208, line: 1505, baseType: !1156, size: 64, offset: 8064)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !989, file: !208, line: 1508, baseType: !1156, size: 64, offset: 8128)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !989, file: !208, line: 1511, baseType: !432, size: 32, offset: 8192)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !989, file: !208, line: 1514, baseType: !1292, size: 32, offset: 8224)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !989, file: !208, line: 1517, baseType: !3025, size: 64, offset: 8256)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2254, line: 18, flags: DIFlagFwdDecl)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !989, file: !208, line: 1518, baseType: !1024, size: 64, offset: 8320)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !989, file: !208, line: 1525, baseType: !2007, size: 64, offset: 8384)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !989, file: !208, line: 1532, baseType: !3030, size: 64, offset: 8448)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3031, line: 52, size: 64, elements: !3032)
!3031 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3032 = !{!3033}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3030, file: !3031, line: 53, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3031, line: 40, size: 256, elements: !3036)
!3036 = !{!3037, !3038, !3043}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3035, file: !3031, line: 42, baseType: !632)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3035, file: !3031, line: 44, baseType: !3039, size: 192)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3031, line: 28, size: 192, elements: !3040)
!3040 = !{!3041, !3042}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3039, file: !3031, line: 29, baseType: !602, size: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3039, file: !3031, line: 31, baseType: !707, size: 64, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3035, file: !3031, line: 49, baseType: !707, size: 64, offset: 192)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !989, file: !208, line: 1533, baseType: !3030, size: 64, offset: 8512)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !989, file: !208, line: 1534, baseType: !762, size: 128, align: 64, offset: 8576)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !989, file: !208, line: 1535, baseType: !2253, size: 256, offset: 8704)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !989, file: !208, line: 1537, baseType: !1476, size: 192, offset: 8960)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !989, file: !208, line: 1542, baseType: !432, size: 32, offset: 9152)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !989, file: !208, line: 1545, baseType: !632, offset: 9184)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !989, file: !208, line: 1546, baseType: !602, size: 128, offset: 9216)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !989, file: !208, line: 1548, baseType: !632, offset: 9344)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !989, file: !208, line: 1549, baseType: !602, size: 128, offset: 9344)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !822, file: !208, line: 624, baseType: !1123, size: 64, offset: 256)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !822, file: !208, line: 631, baseType: !721, size: 64, offset: 320)
!3055 = !DIDerivedType(tag: DW_TAG_member, scope: !822, file: !208, line: 639, baseType: !3056, size: 32, offset: 384)
!3056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !822, file: !208, line: 639, size: 32, elements: !3057)
!3057 = !{!3058, !3060}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3056, file: !208, line: 640, baseType: !3059, size: 32)
!3059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3056, file: !208, line: 641, baseType: !7, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !822, file: !208, line: 643, baseType: !902, size: 32, offset: 416)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !822, file: !208, line: 644, baseType: !920, size: 64, offset: 448)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !822, file: !208, line: 645, baseType: !924, size: 128, offset: 512)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !822, file: !208, line: 646, baseType: !924, size: 128, offset: 640)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !822, file: !208, line: 647, baseType: !924, size: 128, offset: 768)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !822, file: !208, line: 648, baseType: !632, offset: 896)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !822, file: !208, line: 649, baseType: !477, size: 16, offset: 896)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !822, file: !208, line: 650, baseType: !483, size: 8, offset: 912)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !822, file: !208, line: 651, baseType: !483, size: 8, offset: 920)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !822, file: !208, line: 652, baseType: !2823, size: 64, offset: 960)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !822, file: !208, line: 659, baseType: !721, size: 64, offset: 1024)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !822, file: !208, line: 660, baseType: !1152, size: 256, offset: 1088)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !822, file: !208, line: 662, baseType: !721, size: 64, offset: 1344)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !822, file: !208, line: 663, baseType: !721, size: 64, offset: 1408)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !822, file: !208, line: 665, baseType: !1028, size: 128, offset: 1472)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !822, file: !208, line: 666, baseType: !602, size: 128, offset: 1600)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !822, file: !208, line: 675, baseType: !602, size: 128, offset: 1728)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !822, file: !208, line: 676, baseType: !602, size: 128, offset: 1856)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !822, file: !208, line: 677, baseType: !602, size: 128, offset: 1984)
!3080 = !DIDerivedType(tag: DW_TAG_member, scope: !822, file: !208, line: 678, baseType: !3081, size: 128, offset: 2112)
!3081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !822, file: !208, line: 678, size: 128, elements: !3082)
!3082 = !{!3083, !3084}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3081, file: !208, line: 679, baseType: !1024, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3081, file: !208, line: 680, baseType: !762, size: 128, align: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !822, file: !208, line: 682, baseType: !1158, size: 64, offset: 2240)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !822, file: !208, line: 683, baseType: !1158, size: 64, offset: 2304)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !822, file: !208, line: 684, baseType: !591, size: 32, offset: 2368)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !822, file: !208, line: 685, baseType: !591, size: 32, offset: 2400)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !822, file: !208, line: 686, baseType: !591, size: 32, offset: 2432)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !822, file: !208, line: 688, baseType: !591, size: 32, offset: 2464)
!3091 = !DIDerivedType(tag: DW_TAG_member, scope: !822, file: !208, line: 690, baseType: !3092, size: 64, offset: 2496)
!3092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !822, file: !208, line: 690, size: 64, elements: !3093)
!3093 = !{!3094, !3326}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3092, file: !208, line: 691, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3097)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !3098)
!3098 = !{!3099, !3100, !3104, !3109, !3113, !3114, !3115, !3119, !3132, !3133, !3150, !3154, !3155, !3159, !3160, !3164, !3169, !3170, !3174, !3178, !3286, !3290, !3291, !3295, !3296, !3300, !3304, !3309, !3313, !3317, !3321, !3325}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3097, file: !208, line: 1823, baseType: !450, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3097, file: !208, line: 1824, baseType: !3101, size: 64, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!920, !749, !920, !432}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3097, file: !208, line: 1825, baseType: !3105, size: 64, offset: 128)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!703, !749, !468, !718, !3108}
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3097, file: !208, line: 1826, baseType: !3110, size: 64, offset: 192)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!703, !749, !446, !718, !3108}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3097, file: !208, line: 1827, baseType: !1229, size: 64, offset: 256)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3097, file: !208, line: 1828, baseType: !1229, size: 64, offset: 320)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3097, file: !208, line: 1829, baseType: !3116, size: 64, offset: 384)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!432, !1232, !879}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3097, file: !208, line: 1830, baseType: !3120, size: 64, offset: 448)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!432, !749, !3123}
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !3125)
!3125 = !{!3126, !3131}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3124, file: !208, line: 1777, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !3128)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!432, !3123, !446, !432, !920, !814, !7}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3124, file: !208, line: 1778, baseType: !920, size: 64, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3097, file: !208, line: 1831, baseType: !3120, size: 64, offset: 512)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3097, file: !208, line: 1832, baseType: !3134, size: 64, offset: 576)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!3137, !749, !3139}
!3137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3138, line: 52, baseType: !7)
!3138 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3141, line: 43, size: 128, elements: !3142)
!3141 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!3142 = !{!3143, !3149}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3140, file: !3141, line: 44, baseType: !3144, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3141, line: 37, baseType: !3145)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{null, !749, !3148, !3139}
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3140, file: !3141, line: 45, baseType: !3137, size: 32, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3097, file: !208, line: 1833, baseType: !3151, size: 64, offset: 640)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!707, !749, !7, !721}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3097, file: !208, line: 1834, baseType: !3151, size: 64, offset: 704)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3097, file: !208, line: 1835, baseType: !3156, size: 64, offset: 768)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!432, !749, !1364}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3097, file: !208, line: 1836, baseType: !721, size: 64, offset: 832)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3097, file: !208, line: 1837, baseType: !3161, size: 64, offset: 896)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!432, !821, !749}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3097, file: !208, line: 1838, baseType: !3165, size: 64, offset: 960)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!432, !749, !3168}
!3168 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !431)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3097, file: !208, line: 1839, baseType: !3161, size: 64, offset: 1024)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3097, file: !208, line: 1840, baseType: !3171, size: 64, offset: 1088)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!432, !749, !920, !920, !432}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3097, file: !208, line: 1841, baseType: !3175, size: 64, offset: 1152)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!432, !432, !749, !432}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3097, file: !208, line: 1842, baseType: !3179, size: 64, offset: 1216)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!432, !749, !432, !3182}
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !3184)
!3184 = !{!3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3216, !3217, !3218, !3231, !3262}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3183, file: !208, line: 1063, baseType: !3182, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3183, file: !208, line: 1064, baseType: !602, size: 128, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3183, file: !208, line: 1065, baseType: !1028, size: 128, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3183, file: !208, line: 1066, baseType: !602, size: 128, offset: 320)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3183, file: !208, line: 1069, baseType: !602, size: 128, offset: 448)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3183, file: !208, line: 1072, baseType: !3168, size: 64, offset: 576)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3183, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3183, file: !208, line: 1074, baseType: !485, size: 8, offset: 672)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3183, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3183, file: !208, line: 1076, baseType: !432, size: 32, offset: 736)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3183, file: !208, line: 1077, baseType: !1777, size: 128, offset: 768)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3183, file: !208, line: 1078, baseType: !749, size: 64, offset: 896)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3183, file: !208, line: 1079, baseType: !920, size: 64, offset: 960)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3183, file: !208, line: 1080, baseType: !920, size: 64, offset: 1024)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3183, file: !208, line: 1082, baseType: !3200, size: 64, offset: 1088)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !3202)
!3202 = !{!3203, !3211, !3212, !3213, !3214, !3215}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3201, file: !208, line: 1315, baseType: !3204)
!3204 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3205, line: 20, baseType: !3206)
!3205 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3205, line: 11, elements: !3207)
!3207 = !{!3208}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3206, file: !3205, line: 12, baseType: !3209)
!3209 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !644, line: 33, baseType: !3210)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !644, line: 31, elements: !646)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3201, file: !208, line: 1316, baseType: !432, size: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3201, file: !208, line: 1317, baseType: !432, size: 32, offset: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3201, file: !208, line: 1318, baseType: !3200, size: 64, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3201, file: !208, line: 1319, baseType: !749, size: 64, offset: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3201, file: !208, line: 1320, baseType: !762, size: 128, align: 64, offset: 192)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3183, file: !208, line: 1084, baseType: !721, size: 64, offset: 1152)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3183, file: !208, line: 1085, baseType: !721, size: 64, offset: 1216)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3183, file: !208, line: 1087, baseType: !3219, size: 64, offset: 1280)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3221)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !3222)
!3222 = !{!3223, !3227}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3221, file: !208, line: 1012, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{null, !3182, !3182}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3221, file: !208, line: 1013, baseType: !3228, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{null, !3182}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3183, file: !208, line: 1088, baseType: !3232, size: 64, offset: 1344)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3234)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !3235)
!3235 = !{!3236, !3240, !3244, !3245, !3249, !3253, !3257, !3261}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3234, file: !208, line: 1017, baseType: !3237, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!3168, !3168}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3234, file: !208, line: 1018, baseType: !3241, size: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{null, !3168}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3234, file: !208, line: 1019, baseType: !3228, size: 64, offset: 128)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3234, file: !208, line: 1020, baseType: !3246, size: 64, offset: 192)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!432, !3182, !432}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3234, file: !208, line: 1021, baseType: !3250, size: 64, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!879, !3182}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3234, file: !208, line: 1022, baseType: !3254, size: 64, offset: 320)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!432, !3182, !432, !605}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3234, file: !208, line: 1023, baseType: !3258, size: 64, offset: 384)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{null, !3182, !1206}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3234, file: !208, line: 1024, baseType: !3250, size: 64, offset: 448)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3183, file: !208, line: 1097, baseType: !3263, size: 256, offset: 1408)
!3263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3183, file: !208, line: 1089, size: 256, elements: !3264)
!3264 = !{!3265, !3274, !3280}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3263, file: !208, line: 1090, baseType: !3266, size: 256)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3267, line: 10, size: 256, elements: !3268)
!3267 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3268 = !{!3269, !3270, !3273}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3266, file: !3267, line: 11, baseType: !561, size: 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3266, file: !3267, line: 12, baseType: !3271, size: 64, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3267, line: 5, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3266, file: !3267, line: 13, baseType: !602, size: 128, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3263, file: !208, line: 1091, baseType: !3275, size: 64)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3267, line: 17, size: 64, elements: !3276)
!3276 = !{!3277}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3275, file: !3267, line: 18, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3267, line: 16, flags: DIFlagFwdDecl)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3263, file: !208, line: 1096, baseType: !3281, size: 192)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3263, file: !208, line: 1092, size: 192, elements: !3282)
!3282 = !{!3283, !3284, !3285}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3281, file: !208, line: 1093, baseType: !602, size: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3281, file: !208, line: 1094, baseType: !432, size: 32, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3281, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3097, file: !208, line: 1843, baseType: !3287, size: 64, offset: 1280)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!703, !749, !1110, !432, !718, !3108, !432}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3097, file: !208, line: 1844, baseType: !1404, size: 64, offset: 1344)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3097, file: !208, line: 1845, baseType: !3292, size: 64, offset: 1408)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!432, !432}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3097, file: !208, line: 1846, baseType: !3179, size: 64, offset: 1472)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3097, file: !208, line: 1847, baseType: !3297, size: 64, offset: 1536)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!703, !2394, !749, !3108, !718, !7}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3097, file: !208, line: 1848, baseType: !3301, size: 64, offset: 1600)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!703, !749, !3108, !2394, !718, !7}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3097, file: !208, line: 1849, baseType: !3305, size: 64, offset: 1664)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!432, !749, !707, !3308, !1206}
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3097, file: !208, line: 1850, baseType: !3310, size: 64, offset: 1728)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!707, !749, !432, !920, !920}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3097, file: !208, line: 1852, baseType: !3314, size: 64, offset: 1792)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{null, !1100, !749}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3097, file: !208, line: 1856, baseType: !3318, size: 64, offset: 1856)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!703, !749, !920, !749, !920, !718, !7}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3097, file: !208, line: 1858, baseType: !3322, size: 64, offset: 1920)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!920, !749, !920, !749, !920, !920, !7}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3097, file: !208, line: 1861, baseType: !3171, size: 64, offset: 1984)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3092, file: !208, line: 692, baseType: !1053, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !822, file: !208, line: 694, baseType: !3328, size: 64, offset: 2560)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !3330)
!3330 = !{!3331, !3332, !3333, !3334}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3329, file: !208, line: 1101, baseType: !632)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3329, file: !208, line: 1102, baseType: !602, size: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3329, file: !208, line: 1103, baseType: !602, size: 128, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3329, file: !208, line: 1104, baseType: !602, size: 128, offset: 256)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !822, file: !208, line: 695, baseType: !1124, size: 1216, align: 64, offset: 2624)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !822, file: !208, line: 696, baseType: !602, size: 128, offset: 3840)
!3337 = !DIDerivedType(tag: DW_TAG_member, scope: !822, file: !208, line: 697, baseType: !3338, size: 64, offset: 3968)
!3338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !822, file: !208, line: 697, size: 64, elements: !3339)
!3339 = !{!3340, !3341, !3342, !3353, !3354}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3338, file: !208, line: 698, baseType: !2394, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3338, file: !208, line: 699, baseType: !2848, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3338, file: !208, line: 700, baseType: !3343, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3345, line: 14, size: 832, elements: !3346)
!3345 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3346 = !{!3347, !3348, !3349, !3350, !3351, !3352}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3344, file: !3345, line: 15, baseType: !619, size: 512)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3344, file: !3345, line: 16, baseType: !450, size: 64, offset: 512)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3344, file: !3345, line: 17, baseType: !3095, size: 64, offset: 576)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3344, file: !3345, line: 18, baseType: !602, size: 128, offset: 640)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3344, file: !3345, line: 19, baseType: !902, size: 32, offset: 768)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3344, file: !3345, line: 20, baseType: !7, size: 32, offset: 800)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3338, file: !208, line: 701, baseType: !468, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3338, file: !208, line: 702, baseType: !7, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !822, file: !208, line: 705, baseType: !562, size: 32, offset: 4032)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !822, file: !208, line: 708, baseType: !562, size: 32, offset: 4064)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !822, file: !208, line: 709, baseType: !2929, size: 64, offset: 4096)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !822, file: !208, line: 720, baseType: !431, size: 64, offset: 4160)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !780, file: !777, line: 98, baseType: !3360, size: 256, offset: 448)
!3360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 256, elements: !2526)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !780, file: !777, line: 101, baseType: !3362, size: 32, offset: 704)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3363, line: 25, size: 32, elements: !3364)
!3363 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3364 = !{!3365}
!3365 = !DIDerivedType(tag: DW_TAG_member, scope: !3362, file: !3363, line: 26, baseType: !3366, size: 32)
!3366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3362, file: !3363, line: 26, size: 32, elements: !3367)
!3367 = !{!3368}
!3368 = !DIDerivedType(tag: DW_TAG_member, scope: !3366, file: !3363, line: 30, baseType: !3369, size: 32)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3366, file: !3363, line: 30, size: 32, elements: !3370)
!3370 = !{!3371, !3372}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3369, file: !3363, line: 31, baseType: !632)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3369, file: !3363, line: 32, baseType: !432, size: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !780, file: !777, line: 102, baseType: !2946, size: 64, offset: 768)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !780, file: !777, line: 103, baseType: !988, size: 64, offset: 832)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !780, file: !777, line: 104, baseType: !721, size: 64, offset: 896)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !780, file: !777, line: 105, baseType: !431, size: 64, offset: 960)
!3377 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !777, line: 107, baseType: !3378, size: 128, offset: 1024)
!3378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !780, file: !777, line: 107, size: 128, elements: !3379)
!3379 = !{!3380, !3381}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3378, file: !777, line: 108, baseType: !602, size: 128)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3378, file: !777, line: 109, baseType: !3148, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !780, file: !777, line: 111, baseType: !602, size: 128, offset: 1152)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !780, file: !777, line: 112, baseType: !602, size: 128, offset: 1280)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !780, file: !777, line: 120, baseType: !3385, size: 128, offset: 1408)
!3385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !780, file: !777, line: 116, size: 128, elements: !3386)
!3386 = !{!3387, !3388, !3389}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3385, file: !777, line: 117, baseType: !1028, size: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3385, file: !777, line: 118, baseType: !794, size: 128)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3385, file: !777, line: 119, baseType: !762, size: 128, align: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !750, file: !208, line: 922, baseType: !821, size: 64, offset: 256)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !750, file: !208, line: 923, baseType: !3095, size: 64, offset: 320)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !750, file: !208, line: 929, baseType: !632, offset: 384)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !750, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !750, file: !208, line: 931, baseType: !1156, size: 64, offset: 448)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !750, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !750, file: !208, line: 933, baseType: !2942, size: 32, offset: 544)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !750, file: !208, line: 934, baseType: !1476, size: 192, offset: 576)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !750, file: !208, line: 935, baseType: !920, size: 64, offset: 768)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !750, file: !208, line: 936, baseType: !3400, size: 192, offset: 832)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !3401)
!3401 = !{!3402, !3403, !3404, !3405, !3406, !3407}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3400, file: !208, line: 886, baseType: !3204)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3400, file: !208, line: 887, baseType: !1767, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3400, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3400, file: !208, line: 889, baseType: !827, size: 32, offset: 96)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3400, file: !208, line: 889, baseType: !827, size: 32, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3400, file: !208, line: 890, baseType: !432, size: 32, offset: 160)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !750, file: !208, line: 937, baseType: !1843, size: 64, offset: 1024)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !750, file: !208, line: 938, baseType: !3410, size: 256, offset: 1088)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3415, !3416, !3417}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3410, file: !208, line: 897, baseType: !721, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3410, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3410, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3410, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3410, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3410, file: !208, line: 904, baseType: !920, size: 64, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !750, file: !208, line: 940, baseType: !814, size: 64, offset: 1344)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !750, file: !208, line: 945, baseType: !431, size: 64, offset: 1408)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !750, file: !208, line: 949, baseType: !602, size: 128, offset: 1472)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !750, file: !208, line: 950, baseType: !602, size: 128, offset: 1600)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !750, file: !208, line: 952, baseType: !1123, size: 64, offset: 1728)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !750, file: !208, line: 953, baseType: !1292, size: 32, offset: 1792)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !750, file: !208, line: 954, baseType: !1292, size: 32, offset: 1824)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !740, file: !697, line: 174, baseType: !746, size: 64, offset: 320)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !740, file: !697, line: 176, baseType: !3427, size: 64, offset: 384)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!432, !749, !625, !739, !1364}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !728, file: !697, line: 90, baseType: !723, size: 64, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !728, file: !697, line: 91, baseType: !3432, size: 64, offset: 256)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !687, file: !620, line: 143, baseType: !3434, size: 64, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!3437, !625}
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3439)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !3440)
!3440 = !{!3441, !3442, !3446, !3450, !3456, !3460}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3439, file: !225, line: 40, baseType: !224, size: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3439, file: !225, line: 41, baseType: !3443, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!879}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3439, file: !225, line: 42, baseType: !3447, size: 64, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!431}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3439, file: !225, line: 43, baseType: !3451, size: 64, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!2423, !3454}
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3439, file: !225, line: 44, baseType: !3457, size: 64, offset: 256)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!2423}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3439, file: !225, line: 45, baseType: !470, size: 64, offset: 320)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !687, file: !620, line: 144, baseType: !3462, size: 64, offset: 320)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!2423, !625}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !687, file: !620, line: 145, baseType: !3466, size: 64, offset: 384)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{null, !625, !3469, !3470}
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !619, file: !620, line: 70, baseType: !3472, size: 64, offset: 384)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1008, line: 123, size: 1024, elements: !3474)
!3474 = !{!3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3603, !3604, !3605, !3606, !3607}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3473, file: !1008, line: 124, baseType: !591, size: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3473, file: !1008, line: 125, baseType: !591, size: 32, offset: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3473, file: !1008, line: 135, baseType: !3472, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3473, file: !1008, line: 136, baseType: !446, size: 64, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3473, file: !1008, line: 138, baseType: !1145, size: 192, align: 64, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3473, file: !1008, line: 140, baseType: !2423, size: 64, offset: 384)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3473, file: !1008, line: 141, baseType: !7, size: 32, offset: 448)
!3482 = !DIDerivedType(tag: DW_TAG_member, scope: !3473, file: !1008, line: 142, baseType: !3483, size: 256, offset: 512)
!3483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3473, file: !1008, line: 142, size: 256, elements: !3484)
!3484 = !{!3485, !3531, !3535}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3483, file: !1008, line: 143, baseType: !3486, size: 192)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1008, line: 91, size: 192, elements: !3487)
!3487 = !{!3488, !3489, !3490}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3486, file: !1008, line: 92, baseType: !721, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3486, file: !1008, line: 94, baseType: !1141, size: 64, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3486, file: !1008, line: 100, baseType: !3491, size: 64, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1008, line: 180, size: 704, elements: !3493)
!3493 = !{!3494, !3495, !3496, !3503, !3504, !3505, !3529, !3530}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3492, file: !1008, line: 182, baseType: !3472, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3492, file: !1008, line: 183, baseType: !7, size: 32, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3492, file: !1008, line: 186, baseType: !3497, size: 192, offset: 128)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3498, line: 19, size: 192, elements: !3499)
!3498 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3499 = !{!3500, !3501, !3502}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3497, file: !3498, line: 20, baseType: !1128, size: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3497, file: !3498, line: 21, baseType: !7, size: 32, offset: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3497, file: !3498, line: 22, baseType: !7, size: 32, offset: 160)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3492, file: !1008, line: 187, baseType: !561, size: 32, offset: 320)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3492, file: !1008, line: 188, baseType: !561, size: 32, offset: 352)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3492, file: !1008, line: 189, baseType: !3506, size: 64, offset: 384)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1008, line: 168, size: 320, elements: !3508)
!3508 = !{!3509, !3513, !3517, !3521, !3525}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3507, file: !1008, line: 169, baseType: !3510, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!432, !1100, !3491}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3507, file: !1008, line: 171, baseType: !3514, size: 64, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!432, !3472, !446, !713}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3507, file: !1008, line: 173, baseType: !3518, size: 64, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!432, !3472}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3507, file: !1008, line: 174, baseType: !3522, size: 64, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!432, !3472, !3472, !446}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3507, file: !1008, line: 176, baseType: !3526, size: 64, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!432, !1100, !3472, !3491}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3492, file: !1008, line: 192, baseType: !602, size: 128, offset: 448)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3492, file: !1008, line: 194, baseType: !1777, size: 128, offset: 576)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3483, file: !1008, line: 144, baseType: !3532, size: 64)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1008, line: 103, size: 64, elements: !3533)
!3533 = !{!3534}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3532, file: !1008, line: 104, baseType: !3472, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3483, file: !1008, line: 145, baseType: !3536, size: 256)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1008, line: 107, size: 256, elements: !3537)
!3537 = !{!3538, !3598, !3601, !3602}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3536, file: !1008, line: 108, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3541)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1008, line: 217, size: 768, elements: !3542)
!3542 = !{!3543, !3563, !3567, !3571, !3575, !3579, !3583, !3587, !3588, !3589, !3590, !3594}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3541, file: !1008, line: 222, baseType: !3544, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!432, !3547}
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1008, line: 197, size: 1088, elements: !3549)
!3549 = !{!3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3548, file: !1008, line: 199, baseType: !3472, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3548, file: !1008, line: 200, baseType: !749, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3548, file: !1008, line: 201, baseType: !1100, size: 64, offset: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3548, file: !1008, line: 202, baseType: !431, size: 64, offset: 192)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3548, file: !1008, line: 205, baseType: !1476, size: 192, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3548, file: !1008, line: 206, baseType: !1476, size: 192, offset: 448)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3548, file: !1008, line: 207, baseType: !432, size: 32, offset: 640)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3548, file: !1008, line: 208, baseType: !602, size: 128, offset: 704)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3548, file: !1008, line: 209, baseType: !468, size: 64, offset: 832)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3548, file: !1008, line: 211, baseType: !718, size: 64, offset: 896)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3548, file: !1008, line: 212, baseType: !879, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3548, file: !1008, line: 213, baseType: !879, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3548, file: !1008, line: 214, baseType: !1392, size: 64, offset: 1024)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3541, file: !1008, line: 223, baseType: !3564, size: 64, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{null, !3547}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3541, file: !1008, line: 236, baseType: !3568, size: 64, offset: 128)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!432, !1100, !431}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3541, file: !1008, line: 238, baseType: !3572, size: 64, offset: 192)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!431, !1100, !3108}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3541, file: !1008, line: 239, baseType: !3576, size: 64, offset: 256)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!431, !1100, !431, !3108}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3541, file: !1008, line: 240, baseType: !3580, size: 64, offset: 320)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{null, !1100, !431}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3541, file: !1008, line: 242, baseType: !3584, size: 64, offset: 384)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!703, !3547, !468, !718, !920}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3541, file: !1008, line: 252, baseType: !718, size: 64, offset: 448)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3541, file: !1008, line: 259, baseType: !879, size: 8, offset: 512)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3541, file: !1008, line: 260, baseType: !3584, size: 64, offset: 576)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3541, file: !1008, line: 263, baseType: !3591, size: 64, offset: 640)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!3137, !3547, !3139}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3541, file: !1008, line: 266, baseType: !3595, size: 64, offset: 704)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!432, !3547, !1364}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3536, file: !1008, line: 109, baseType: !3599, size: 64, offset: 64)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1008, line: 31, flags: DIFlagFwdDecl)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3536, file: !1008, line: 110, baseType: !920, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3536, file: !1008, line: 111, baseType: !3472, size: 64, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3473, file: !1008, line: 148, baseType: !431, size: 64, offset: 768)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3473, file: !1008, line: 154, baseType: !814, size: 64, offset: 832)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3473, file: !1008, line: 156, baseType: !477, size: 16, offset: 896)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3473, file: !1008, line: 157, baseType: !713, size: 16, offset: 912)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3473, file: !1008, line: 158, baseType: !3608, size: 64, offset: 960)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1008, line: 32, flags: DIFlagFwdDecl)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !619, file: !620, line: 71, baseType: !582, size: 32, offset: 448)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !619, file: !620, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !619, file: !620, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !619, file: !620, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !619, file: !620, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !619, file: !620, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !616, file: !237, line: 463, baseType: !615, size: 64, offset: 512)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !616, file: !237, line: 465, baseType: !3618, size: 64, offset: 576)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !616, file: !237, line: 467, baseType: !446, size: 64, offset: 640)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !616, file: !237, line: 468, baseType: !3622, size: 64, offset: 704)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3624)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3632, !3637, !3641}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3624, file: !237, line: 88, baseType: !446, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3624, file: !237, line: 89, baseType: !725, size: 64, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3624, file: !237, line: 90, baseType: !3629, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!432, !615, !668}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3624, file: !237, line: 91, baseType: !3633, size: 64, offset: 192)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!468, !615, !3636, !3469, !3470}
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3624, file: !237, line: 93, baseType: !3638, size: 64, offset: 256)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{null, !615}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3624, file: !237, line: 95, baseType: !3642, size: 64, offset: 320)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3644)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3645)
!3645 = !{!3646, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3644, file: !244, line: 279, baseType: !3647, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!432, !615}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3644, file: !244, line: 280, baseType: !3638, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3644, file: !244, line: 281, baseType: !3647, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3644, file: !244, line: 282, baseType: !3647, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3644, file: !244, line: 283, baseType: !3647, size: 64, offset: 256)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3644, file: !244, line: 284, baseType: !3647, size: 64, offset: 320)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3644, file: !244, line: 285, baseType: !3647, size: 64, offset: 384)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3644, file: !244, line: 286, baseType: !3647, size: 64, offset: 448)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3644, file: !244, line: 287, baseType: !3647, size: 64, offset: 512)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3644, file: !244, line: 288, baseType: !3647, size: 64, offset: 576)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3644, file: !244, line: 289, baseType: !3647, size: 64, offset: 640)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3644, file: !244, line: 290, baseType: !3647, size: 64, offset: 704)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3644, file: !244, line: 291, baseType: !3647, size: 64, offset: 768)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3644, file: !244, line: 292, baseType: !3647, size: 64, offset: 832)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3644, file: !244, line: 293, baseType: !3647, size: 64, offset: 896)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3644, file: !244, line: 294, baseType: !3647, size: 64, offset: 960)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3644, file: !244, line: 295, baseType: !3647, size: 64, offset: 1024)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3644, file: !244, line: 296, baseType: !3647, size: 64, offset: 1088)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3644, file: !244, line: 297, baseType: !3647, size: 64, offset: 1152)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3644, file: !244, line: 298, baseType: !3647, size: 64, offset: 1216)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3644, file: !244, line: 299, baseType: !3647, size: 64, offset: 1280)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3644, file: !244, line: 300, baseType: !3647, size: 64, offset: 1344)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3644, file: !244, line: 301, baseType: !3647, size: 64, offset: 1408)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !616, file: !237, line: 470, baseType: !3673, size: 64, offset: 768)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3675, line: 82, size: 1408, elements: !3676)
!3675 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3676 = !{!3677, !3678, !3679, !3680, !3681, !3682, !3683, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3755, !3758, !3759}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3674, file: !3675, line: 83, baseType: !446, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3674, file: !3675, line: 84, baseType: !446, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3674, file: !3675, line: 85, baseType: !615, size: 64, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3674, file: !3675, line: 86, baseType: !725, size: 64, offset: 192)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3674, file: !3675, line: 87, baseType: !725, size: 64, offset: 256)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3674, file: !3675, line: 88, baseType: !725, size: 64, offset: 320)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3674, file: !3675, line: 90, baseType: !3684, size: 64, offset: 384)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!432, !615, !3687}
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3689)
!3689 = !{!3690, !3691, !3692, !3693, !3694, !3695, !3696, !3706, !3719, !3720, !3721, !3722, !3723, !3731, !3732, !3733, !3734, !3735, !3736}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3688, file: !231, line: 96, baseType: !446, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3688, file: !231, line: 97, baseType: !3673, size: 64, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3688, file: !231, line: 99, baseType: !450, size: 64, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3688, file: !231, line: 100, baseType: !446, size: 64, offset: 192)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3688, file: !231, line: 102, baseType: !879, size: 8, offset: 256)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3688, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3688, file: !231, line: 105, baseType: !3697, size: 64, offset: 320)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3699)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3700, line: 262, size: 1600, elements: !3701)
!3700 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3701 = !{!3702, !3703, !3704, !3705}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3699, file: !3700, line: 263, baseType: !2932, size: 256)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3699, file: !3700, line: 264, baseType: !2932, size: 256, offset: 256)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3699, file: !3700, line: 265, baseType: !557, size: 1024, offset: 512)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3699, file: !3700, line: 266, baseType: !2423, size: 64, offset: 1536)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3688, file: !231, line: 106, baseType: !3707, size: 64, offset: 384)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3709)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3700, line: 210, size: 256, elements: !3710)
!3710 = !{!3711, !3715, !3717, !3718}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3709, file: !3700, line: 211, baseType: !3712, size: 72)
!3712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 72, elements: !3713)
!3713 = !{!3714}
!3714 = !DISubrange(count: 9)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3709, file: !3700, line: 212, baseType: !3716, size: 64, offset: 128)
!3716 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3700, line: 14, baseType: !721)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3709, file: !3700, line: 213, baseType: !562, size: 32, offset: 192)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3709, file: !3700, line: 214, baseType: !562, size: 32, offset: 224)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3688, file: !231, line: 108, baseType: !3647, size: 64, offset: 448)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3688, file: !231, line: 109, baseType: !3638, size: 64, offset: 512)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3688, file: !231, line: 110, baseType: !3647, size: 64, offset: 576)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3688, file: !231, line: 111, baseType: !3638, size: 64, offset: 640)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3688, file: !231, line: 112, baseType: !3724, size: 64, offset: 704)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!432, !615, !3727}
!3727 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3728)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3729)
!3729 = !{!3730}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3728, file: !244, line: 51, baseType: !432, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3688, file: !231, line: 113, baseType: !3647, size: 64, offset: 768)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3688, file: !231, line: 114, baseType: !725, size: 64, offset: 832)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3688, file: !231, line: 115, baseType: !725, size: 64, offset: 896)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3688, file: !231, line: 117, baseType: !3642, size: 64, offset: 960)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3688, file: !231, line: 118, baseType: !3638, size: 64, offset: 1024)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3688, file: !231, line: 120, baseType: !3737, size: 64, offset: 1088)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3674, file: !3675, line: 91, baseType: !3629, size: 64, offset: 448)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3674, file: !3675, line: 92, baseType: !3647, size: 64, offset: 512)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3674, file: !3675, line: 93, baseType: !3638, size: 64, offset: 576)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3674, file: !3675, line: 94, baseType: !3647, size: 64, offset: 640)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3674, file: !3675, line: 95, baseType: !3638, size: 64, offset: 704)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3674, file: !3675, line: 97, baseType: !3647, size: 64, offset: 768)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3674, file: !3675, line: 98, baseType: !3647, size: 64, offset: 832)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3674, file: !3675, line: 100, baseType: !3724, size: 64, offset: 896)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3674, file: !3675, line: 101, baseType: !3647, size: 64, offset: 960)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3674, file: !3675, line: 103, baseType: !3647, size: 64, offset: 1024)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3674, file: !3675, line: 105, baseType: !3647, size: 64, offset: 1088)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3674, file: !3675, line: 107, baseType: !3642, size: 64, offset: 1152)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3674, file: !3675, line: 109, baseType: !3752, size: 64, offset: 1216)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3754)
!3754 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3675, line: 109, flags: DIFlagFwdDecl)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3674, file: !3675, line: 111, baseType: !3756, size: 64, offset: 1280)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3675, line: 111, flags: DIFlagFwdDecl)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3674, file: !3675, line: 112, baseType: !1034, offset: 1344)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3674, file: !3675, line: 114, baseType: !879, size: 8, offset: 1344)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !616, file: !237, line: 471, baseType: !3687, size: 64, offset: 832)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !616, file: !237, line: 473, baseType: !431, size: 64, offset: 896)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !616, file: !237, line: 475, baseType: !431, size: 64, offset: 960)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !616, file: !237, line: 480, baseType: !1476, size: 192, offset: 1024)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !616, file: !237, line: 484, baseType: !3765, size: 576, offset: 1216)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3766)
!3766 = !{!3767, !3768, !3769, !3770, !3771, !3772}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3765, file: !237, line: 362, baseType: !602, size: 128)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3765, file: !237, line: 363, baseType: !602, size: 128, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3765, file: !237, line: 364, baseType: !602, size: 128, offset: 256)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3765, file: !237, line: 365, baseType: !602, size: 128, offset: 384)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3765, file: !237, line: 366, baseType: !879, size: 8, offset: 512)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3765, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !616, file: !237, line: 485, baseType: !3774, size: 2304, offset: 1792)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3775)
!3775 = !{!3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3871, !3875}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3774, file: !244, line: 566, baseType: !3727, size: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3774, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3774, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3774, file: !244, line: 569, baseType: !879, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3774, file: !244, line: 570, baseType: !879, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3774, file: !244, line: 571, baseType: !879, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3774, file: !244, line: 572, baseType: !879, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3774, file: !244, line: 573, baseType: !879, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3774, file: !244, line: 574, baseType: !879, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3774, file: !244, line: 575, baseType: !879, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3774, file: !244, line: 576, baseType: !879, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3774, file: !244, line: 577, baseType: !561, size: 32, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3774, file: !244, line: 578, baseType: !632, offset: 96)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3774, file: !244, line: 580, baseType: !602, size: 128, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3774, file: !244, line: 581, baseType: !1798, size: 192, offset: 256)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3774, file: !244, line: 582, baseType: !3792, size: 64, offset: 448)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3794, line: 43, size: 1472, elements: !3795)
!3794 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3795 = !{!3796, !3797, !3798, !3799, !3800, !3803, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3793, file: !3794, line: 44, baseType: !446, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3793, file: !3794, line: 45, baseType: !432, size: 32, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3793, file: !3794, line: 46, baseType: !602, size: 128, offset: 128)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3793, file: !3794, line: 47, baseType: !632, offset: 256)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3793, file: !3794, line: 48, baseType: !3801, size: 64, offset: 256)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3793, file: !3794, line: 49, baseType: !3804, size: 320, offset: 320)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3805, line: 11, size: 320, elements: !3806)
!3805 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3806 = !{!3807, !3808, !3809, !3814}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3804, file: !3805, line: 16, baseType: !1028, size: 128)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3804, file: !3805, line: 17, baseType: !721, size: 64, offset: 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3804, file: !3805, line: 18, baseType: !3810, size: 64, offset: 192)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{null, !3813}
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3804, file: !3805, line: 19, baseType: !561, size: 32, offset: 256)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3793, file: !3794, line: 50, baseType: !721, size: 64, offset: 640)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3793, file: !3794, line: 51, baseType: !1595, size: 64, offset: 704)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3793, file: !3794, line: 52, baseType: !1595, size: 64, offset: 768)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3793, file: !3794, line: 53, baseType: !1595, size: 64, offset: 832)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3793, file: !3794, line: 54, baseType: !1595, size: 64, offset: 896)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3793, file: !3794, line: 55, baseType: !1595, size: 64, offset: 960)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3793, file: !3794, line: 56, baseType: !721, size: 64, offset: 1024)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3793, file: !3794, line: 57, baseType: !721, size: 64, offset: 1088)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3793, file: !3794, line: 58, baseType: !721, size: 64, offset: 1152)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3793, file: !3794, line: 59, baseType: !721, size: 64, offset: 1216)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3793, file: !3794, line: 60, baseType: !721, size: 64, offset: 1280)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3793, file: !3794, line: 61, baseType: !615, size: 64, offset: 1344)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3793, file: !3794, line: 62, baseType: !879, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3793, file: !3794, line: 63, baseType: !879, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3774, file: !244, line: 583, baseType: !879, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3774, file: !244, line: 584, baseType: !879, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3774, file: !244, line: 585, baseType: !879, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3774, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3774, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3774, file: !244, line: 592, baseType: !1587, size: 512, offset: 576)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3774, file: !244, line: 593, baseType: !814, size: 64, offset: 1088)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3774, file: !244, line: 594, baseType: !2253, size: 256, offset: 1152)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3774, file: !244, line: 595, baseType: !1777, size: 128, offset: 1408)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3774, file: !244, line: 596, baseType: !3801, size: 64, offset: 1536)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3774, file: !244, line: 597, baseType: !591, size: 32, offset: 1600)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3774, file: !244, line: 598, baseType: !591, size: 32, offset: 1632)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3774, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3774, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3774, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3774, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3774, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3774, file: !244, line: 604, baseType: !879, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3774, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3774, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3774, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3774, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3774, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3774, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3774, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3774, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3774, file: !244, line: 613, baseType: !432, size: 32, offset: 1792)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3774, file: !244, line: 614, baseType: !432, size: 32, offset: 1824)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3774, file: !244, line: 615, baseType: !814, size: 64, offset: 1856)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3774, file: !244, line: 616, baseType: !814, size: 64, offset: 1920)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3774, file: !244, line: 617, baseType: !814, size: 64, offset: 1984)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3774, file: !244, line: 618, baseType: !814, size: 64, offset: 2048)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3774, file: !244, line: 620, baseType: !3862, size: 64, offset: 2112)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3868}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3863, file: !244, line: 537, baseType: !632)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3863, file: !244, line: 538, baseType: !7, size: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3863, file: !244, line: 540, baseType: !602, size: 128, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3863, file: !244, line: 543, baseType: !3869, size: 64, offset: 192)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3774, file: !244, line: 621, baseType: !3872, size: 64, offset: 2176)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{null, !615, !1735}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3774, file: !244, line: 622, baseType: !3876, size: 64, offset: 2240)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !616, file: !237, line: 486, baseType: !3879, size: 64, offset: 4096)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3881)
!3881 = !{!3882, !3883, !3884, !3888, !3889, !3890}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3880, file: !244, line: 643, baseType: !3644, size: 1472)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3880, file: !244, line: 644, baseType: !3647, size: 64, offset: 1472)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3880, file: !244, line: 645, baseType: !3885, size: 64, offset: 1536)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{null, !615, !879}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3880, file: !244, line: 646, baseType: !3647, size: 64, offset: 1600)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3880, file: !244, line: 647, baseType: !3638, size: 64, offset: 1664)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3880, file: !244, line: 648, baseType: !3638, size: 64, offset: 1728)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !616, file: !237, line: 493, baseType: !3892, size: 64, offset: 4160)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3894)
!3894 = !{!3895, !3896, !3897, !4070, !4071, !4072, !4073, !4074, !4075, !4078, !4079, !4080, !4081, !4082, !4083, !4084}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3893, file: !258, line: 163, baseType: !602, size: 128)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3893, file: !258, line: 164, baseType: !446, size: 64, offset: 128)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3893, file: !258, line: 165, baseType: !3898, size: 64, offset: 192)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3900)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3901)
!3901 = !{!3902, !4020, !4031, !4036, !4040, !4047, !4051, !4055, !4062, !4066}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3900, file: !258, line: 106, baseType: !3903, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!432, !3892, !3906, !257}
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3908, line: 51, size: 1344, elements: !3909)
!3908 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3909 = !{!3910, !3911, !3913, !3914, !4004, !4013, !4014, !4015, !4016, !4017, !4018, !4019}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3907, file: !3908, line: 52, baseType: !446, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3907, file: !3908, line: 53, baseType: !3912, size: 32, offset: 64)
!3912 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3908, line: 28, baseType: !561)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3907, file: !3908, line: 54, baseType: !446, size: 64, offset: 128)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3907, file: !3908, line: 55, baseType: !3915, size: 192, offset: 192)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3916, line: 17, size: 192, elements: !3917)
!3916 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3917 = !{!3918, !3920, !4003}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3915, file: !3916, line: 18, baseType: !3919, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3915, file: !3916, line: 19, baseType: !3921, size: 64, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3923)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3916, line: 110, size: 1152, elements: !3924)
!3924 = !{!3925, !3929, !3933, !3939, !3945, !3949, !3953, !3958, !3962, !3963, !3967, !3971, !3975, !3986, !3987, !3988, !3989, !3999}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3923, file: !3916, line: 111, baseType: !3926, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!3919, !3919}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3923, file: !3916, line: 112, baseType: !3930, size: 64, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{null, !3919}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3923, file: !3916, line: 113, baseType: !3934, size: 64, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!879, !3937}
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3915)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3923, file: !3916, line: 114, baseType: !3940, size: 64, offset: 192)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!2423, !3937, !3943}
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3923, file: !3916, line: 116, baseType: !3946, size: 64, offset: 256)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!879, !3937, !446}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3923, file: !3916, line: 118, baseType: !3950, size: 64, offset: 320)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!432, !3937, !446, !7, !431, !718}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3923, file: !3916, line: 123, baseType: !3954, size: 64, offset: 384)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!432, !3937, !446, !3957, !718}
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3923, file: !3916, line: 126, baseType: !3959, size: 64, offset: 448)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!446, !3937}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3923, file: !3916, line: 127, baseType: !3959, size: 64, offset: 512)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3923, file: !3916, line: 128, baseType: !3964, size: 64, offset: 576)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!3919, !3937}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3923, file: !3916, line: 130, baseType: !3968, size: 64, offset: 640)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!3919, !3937, !3919}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3923, file: !3916, line: 133, baseType: !3972, size: 64, offset: 704)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!3919, !3937, !446}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3923, file: !3916, line: 135, baseType: !3976, size: 64, offset: 768)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!432, !3937, !446, !446, !7, !7, !3979}
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3916, line: 43, size: 640, elements: !3981)
!3981 = !{!3982, !3983, !3984}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3980, file: !3916, line: 44, baseType: !3919, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3980, file: !3916, line: 45, baseType: !7, size: 32, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3980, file: !3916, line: 46, baseType: !3985, size: 512, offset: 128)
!3985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 512, elements: !572)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3923, file: !3916, line: 140, baseType: !3968, size: 64, offset: 832)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3923, file: !3916, line: 143, baseType: !3964, size: 64, offset: 896)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3923, file: !3916, line: 145, baseType: !3926, size: 64, offset: 960)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3923, file: !3916, line: 146, baseType: !3990, size: 64, offset: 1024)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!432, !3937, !3993}
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3916, line: 29, size: 128, elements: !3995)
!3995 = !{!3996, !3997, !3998}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3994, file: !3916, line: 30, baseType: !7, size: 32)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3994, file: !3916, line: 31, baseType: !7, size: 32, offset: 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3994, file: !3916, line: 32, baseType: !3937, size: 64, offset: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3923, file: !3916, line: 148, baseType: !4000, size: 64, offset: 1088)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!432, !3937, !615}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3915, file: !3916, line: 20, baseType: !615, size: 64, offset: 128)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3907, file: !3908, line: 57, baseType: !4005, size: 64, offset: 384)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3908, line: 31, size: 704, elements: !4007)
!4007 = !{!4008, !4009, !4010, !4011, !4012}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4006, file: !3908, line: 32, baseType: !468, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4006, file: !3908, line: 33, baseType: !432, size: 32, offset: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4006, file: !3908, line: 34, baseType: !431, size: 64, offset: 128)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4006, file: !3908, line: 35, baseType: !4005, size: 64, offset: 192)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4006, file: !3908, line: 43, baseType: !740, size: 448, offset: 256)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3907, file: !3908, line: 58, baseType: !4005, size: 64, offset: 448)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3907, file: !3908, line: 59, baseType: !3906, size: 64, offset: 512)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3907, file: !3908, line: 60, baseType: !3906, size: 64, offset: 576)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3907, file: !3908, line: 61, baseType: !3906, size: 64, offset: 640)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3907, file: !3908, line: 63, baseType: !619, size: 512, offset: 704)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3907, file: !3908, line: 65, baseType: !721, size: 64, offset: 1216)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3907, file: !3908, line: 66, baseType: !431, size: 64, offset: 1280)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3900, file: !258, line: 108, baseType: !4021, size: 64, offset: 64)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!432, !3892, !4024, !257}
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !4026)
!4026 = !{!4027, !4028, !4029}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4025, file: !258, line: 64, baseType: !3919, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4025, file: !258, line: 65, baseType: !432, size: 32, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4025, file: !258, line: 66, baseType: !4030, size: 512, offset: 96)
!4030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 512, elements: !2029)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3900, file: !258, line: 110, baseType: !4032, size: 64, offset: 128)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!432, !3892, !7, !4035}
!4035 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !430, line: 164, baseType: !721)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3900, file: !258, line: 111, baseType: !4037, size: 64, offset: 192)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{null, !3892, !7}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3900, file: !258, line: 112, baseType: !4041, size: 64, offset: 256)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!432, !3892, !3906, !4044, !7, !4046, !505}
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3900, file: !258, line: 117, baseType: !4048, size: 64, offset: 320)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!432, !3892, !7, !7, !431}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3900, file: !258, line: 119, baseType: !4052, size: 64, offset: 384)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{null, !3892, !7, !7}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3900, file: !258, line: 121, baseType: !4056, size: 64, offset: 448)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!432, !3892, !4059, !879}
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4061, line: 11, flags: DIFlagFwdDecl)
!4061 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3900, file: !258, line: 122, baseType: !4063, size: 64, offset: 512)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{null, !3892, !4059}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3900, file: !258, line: 123, baseType: !4067, size: 64, offset: 576)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!432, !3892, !4024, !4046, !505}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3893, file: !258, line: 166, baseType: !431, size: 64, offset: 256)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3893, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3893, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3893, file: !258, line: 171, baseType: !3919, size: 64, offset: 384)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3893, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3893, file: !258, line: 173, baseType: !4076, size: 64, offset: 512)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3893, file: !258, line: 175, baseType: !3892, size: 64, offset: 576)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3893, file: !258, line: 182, baseType: !4035, size: 64, offset: 640)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3893, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3893, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3893, file: !258, line: 185, baseType: !1128, size: 128, offset: 768)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3893, file: !258, line: 186, baseType: !1476, size: 192, offset: 896)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3893, file: !258, line: 187, baseType: !4085, offset: 1088)
!4085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2625)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !616, file: !237, line: 499, baseType: !602, size: 128, offset: 4224)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !616, file: !237, line: 502, baseType: !4088, size: 64, offset: 4352)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4090)
!4090 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !616, file: !237, line: 504, baseType: !4092, size: 64, offset: 4416)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !616, file: !237, line: 505, baseType: !814, size: 64, offset: 4480)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !616, file: !237, line: 510, baseType: !814, size: 64, offset: 4544)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !616, file: !237, line: 511, baseType: !4096, size: 64, offset: 4608)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4098)
!4098 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !616, file: !237, line: 513, baseType: !4100, size: 64, offset: 4672)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !4102)
!4102 = !{!4103, !4104}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4101, file: !237, line: 293, baseType: !7, size: 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4101, file: !237, line: 294, baseType: !721, size: 64, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !616, file: !237, line: 515, baseType: !602, size: 128, offset: 4736)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !616, file: !237, line: 526, baseType: !4107, offset: 4864)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4108, line: 5, elements: !646)
!4108 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !616, file: !237, line: 528, baseType: !3906, size: 64, offset: 4864)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !616, file: !237, line: 529, baseType: !3919, size: 64, offset: 4928)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !616, file: !237, line: 534, baseType: !902, size: 32, offset: 4992)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !616, file: !237, line: 535, baseType: !561, size: 32, offset: 5024)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !616, file: !237, line: 537, baseType: !632, offset: 5056)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !616, file: !237, line: 538, baseType: !602, size: 128, offset: 5056)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !616, file: !237, line: 540, baseType: !4116, size: 64, offset: 5184)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4118, line: 54, size: 960, elements: !4119)
!4118 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4119 = !{!4120, !4121, !4122, !4123, !4124, !4125, !4126, !4130, !4134, !4135, !4136, !4137, !4141, !4145, !4146}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4117, file: !4118, line: 55, baseType: !446, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4117, file: !4118, line: 56, baseType: !450, size: 64, offset: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4117, file: !4118, line: 58, baseType: !725, size: 64, offset: 128)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4117, file: !4118, line: 59, baseType: !725, size: 64, offset: 192)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4117, file: !4118, line: 60, baseType: !625, size: 64, offset: 256)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4117, file: !4118, line: 62, baseType: !3629, size: 64, offset: 320)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4117, file: !4118, line: 63, baseType: !4127, size: 64, offset: 384)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!468, !615, !3636}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4117, file: !4118, line: 65, baseType: !4131, size: 64, offset: 448)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{null, !4116}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4117, file: !4118, line: 66, baseType: !3638, size: 64, offset: 512)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4117, file: !4118, line: 68, baseType: !3647, size: 64, offset: 576)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4117, file: !4118, line: 70, baseType: !3437, size: 64, offset: 640)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4117, file: !4118, line: 71, baseType: !4138, size: 64, offset: 704)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!2423, !615}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4117, file: !4118, line: 73, baseType: !4142, size: 64, offset: 768)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{null, !615, !3469, !3470}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4117, file: !4118, line: 75, baseType: !3642, size: 64, offset: 832)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4117, file: !4118, line: 77, baseType: !3756, size: 64, offset: 896)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !616, file: !237, line: 541, baseType: !725, size: 64, offset: 5248)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !616, file: !237, line: 543, baseType: !3638, size: 64, offset: 5312)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !616, file: !237, line: 544, baseType: !4150, size: 64, offset: 5376)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !616, file: !237, line: 545, baseType: !4153, size: 64, offset: 5440)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !616, file: !237, line: 547, baseType: !879, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !616, file: !237, line: 548, baseType: !879, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !616, file: !237, line: 549, baseType: !879, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !616, file: !237, line: 550, baseType: !879, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !598, file: !272, line: 111, baseType: !450, size: 64, offset: 576)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !598, file: !272, line: 113, baseType: !432, size: 32, offset: 640)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !598, file: !272, line: 114, baseType: !4162, size: 64, offset: 704)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4164)
!4164 = !{!4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4179}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4163, file: !272, line: 158, baseType: !602, size: 128)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4163, file: !272, line: 159, baseType: !3095, size: 64, offset: 128)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4163, file: !272, line: 160, baseType: !597, size: 64, offset: 192)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4163, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4163, file: !272, line: 162, baseType: !432, size: 32, offset: 288)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4163, file: !272, line: 163, baseType: !561, size: 32, offset: 320)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4163, file: !272, line: 167, baseType: !432, size: 32, offset: 352)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4163, file: !272, line: 168, baseType: !432, size: 32, offset: 384)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4163, file: !272, line: 169, baseType: !432, size: 32, offset: 416)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4163, file: !272, line: 171, baseType: !1777, size: 128, offset: 448)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4163, file: !272, line: 173, baseType: !4176, size: 64, offset: 576)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!432, !749, !7, !431}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4163, file: !272, line: 187, baseType: !431, size: 64, offset: 640)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !598, file: !272, line: 115, baseType: !1476, size: 192, offset: 768)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !579, file: !51, line: 690, baseType: !431, size: 64, offset: 6144)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !579, file: !51, line: 691, baseType: !431, size: 64, offset: 6208)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !579, file: !51, line: 692, baseType: !431, size: 64, offset: 6272)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !579, file: !51, line: 693, baseType: !431, size: 64, offset: 6336)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !579, file: !51, line: 694, baseType: !431, size: 64, offset: 6400)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !579, file: !51, line: 695, baseType: !4187, size: 3648, offset: 6464)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !4188)
!4188 = !{!4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4252, !4253, !4254, !4255, !4256, !4257, !4258}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4187, file: !51, line: 587, baseType: !561, size: 32)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4187, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4187, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4187, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4187, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4187, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4187, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4187, file: !51, line: 595, baseType: !561, size: 32, offset: 224)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4187, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4187, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4187, file: !51, line: 598, baseType: !561, size: 32, offset: 320)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4187, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4187, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4187, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4187, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4187, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4187, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4187, file: !51, line: 610, baseType: !483, size: 8, offset: 544)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4187, file: !51, line: 611, baseType: !483, size: 8, offset: 552)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4187, file: !51, line: 612, baseType: !483, size: 8, offset: 560)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4187, file: !51, line: 613, baseType: !561, size: 32, offset: 576)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4187, file: !51, line: 614, baseType: !561, size: 32, offset: 608)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4187, file: !51, line: 615, baseType: !483, size: 8, offset: 640)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4187, file: !51, line: 621, baseType: !4213, size: 384, offset: 672)
!4213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4214, size: 384, elements: !673)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4187, file: !51, line: 616, size: 128, elements: !4215)
!4215 = !{!4216, !4217, !4218, !4219}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4214, file: !51, line: 617, baseType: !483, size: 8)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4214, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4214, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4214, file: !51, line: 620, baseType: !483, size: 8, offset: 96)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4187, file: !51, line: 624, baseType: !561, size: 32, offset: 1056)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4187, file: !51, line: 627, baseType: !561, size: 32, offset: 1088)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4187, file: !51, line: 630, baseType: !483, size: 8, offset: 1120)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4187, file: !51, line: 631, baseType: !483, size: 8, offset: 1128)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4187, file: !51, line: 632, baseType: !483, size: 8, offset: 1136)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4187, file: !51, line: 633, baseType: !483, size: 8, offset: 1144)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4187, file: !51, line: 634, baseType: !483, size: 8, offset: 1152)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4187, file: !51, line: 635, baseType: !483, size: 8, offset: 1160)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4187, file: !51, line: 637, baseType: !483, size: 8, offset: 1168)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4187, file: !51, line: 638, baseType: !483, size: 8, offset: 1176)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4187, file: !51, line: 639, baseType: !483, size: 8, offset: 1184)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4187, file: !51, line: 640, baseType: !483, size: 8, offset: 1192)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4187, file: !51, line: 641, baseType: !483, size: 8, offset: 1200)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4187, file: !51, line: 642, baseType: !483, size: 8, offset: 1208)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4187, file: !51, line: 643, baseType: !483, size: 8, offset: 1216)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4187, file: !51, line: 644, baseType: !483, size: 8, offset: 1224)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4187, file: !51, line: 645, baseType: !483, size: 8, offset: 1232)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4187, file: !51, line: 647, baseType: !561, size: 32, offset: 1248)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4187, file: !51, line: 650, baseType: !4239, size: 296, offset: 1280)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !4240)
!4240 = !{!4241, !4242}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4239, file: !6, line: 826, baseType: !484, size: 8)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4239, file: !6, line: 827, baseType: !4243, size: 288, offset: 8)
!4243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4244, size: 288, elements: !1458)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !4245)
!4245 = !{!4246, !4247}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4244, file: !6, line: 804, baseType: !484, size: 8)
!4247 = !DIDerivedType(tag: DW_TAG_member, scope: !4244, file: !6, line: 805, baseType: !4248, size: 64, offset: 8)
!4248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4244, file: !6, line: 805, size: 64, elements: !4249)
!4249 = !{!4250, !4251}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4248, file: !6, line: 806, baseType: !815, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4248, file: !6, line: 807, baseType: !929, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4187, file: !51, line: 651, baseType: !4239, size: 296, offset: 1576)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4187, file: !51, line: 652, baseType: !4239, size: 296, offset: 1872)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4187, file: !51, line: 653, baseType: !4239, size: 296, offset: 2168)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4187, file: !51, line: 654, baseType: !4239, size: 296, offset: 2464)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4187, file: !51, line: 655, baseType: !4239, size: 296, offset: 2760)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4187, file: !51, line: 656, baseType: !4239, size: 296, offset: 3056)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4187, file: !51, line: 657, baseType: !4239, size: 296, offset: 3352)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !579, file: !51, line: 698, baseType: !4260, size: 64, offset: 10112)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!432, !431, !432, !432, !432}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !579, file: !51, line: 699, baseType: !432, size: 32, offset: 10176)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !579, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !551, file: !51, line: 441, baseType: !575, size: 64, offset: 1408)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !551, file: !51, line: 442, baseType: !575, size: 64, offset: 1472)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !551, file: !51, line: 444, baseType: !4268, size: 64, offset: 1536)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!432, !578}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !551, file: !51, line: 445, baseType: !4268, size: 64, offset: 1600)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !551, file: !51, line: 447, baseType: !4273, size: 64, offset: 1664)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!432, !578, !4276, !432}
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !551, file: !51, line: 450, baseType: !4279, size: 64, offset: 1728)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!432, !578, !879, !7, !505, !4282}
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !551, file: !51, line: 457, baseType: !4284, size: 64, offset: 1792)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!50, !578}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !551, file: !51, line: 460, baseType: !4268, size: 64, offset: 1856)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !551, file: !51, line: 461, baseType: !4289, size: 64, offset: 1920)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!432, !578, !4292}
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !4294)
!4294 = !{!4295, !4296, !4297}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4293, file: !51, line: 70, baseType: !432, size: 32)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4293, file: !51, line: 71, baseType: !432, size: 32, offset: 32)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4293, file: !51, line: 72, baseType: !432, size: 32, offset: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !551, file: !51, line: 463, baseType: !4299, size: 64, offset: 1984)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!432, !578, !4302}
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !551, file: !51, line: 466, baseType: !4304, size: 64, offset: 2048)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!432, !578, !4282}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !551, file: !51, line: 467, baseType: !4308, size: 64, offset: 2112)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!432, !578, !1706}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !551, file: !51, line: 468, baseType: !4312, size: 64, offset: 2176)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!432, !578, !4315}
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !551, file: !51, line: 469, baseType: !4312, size: 64, offset: 2240)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !551, file: !51, line: 470, baseType: !4308, size: 64, offset: 2304)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !551, file: !51, line: 472, baseType: !4268, size: 64, offset: 2368)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !551, file: !51, line: 473, baseType: !4320, size: 64, offset: 2432)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!432, !578, !4323}
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !4325)
!4325 = !{!4326, !4328}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4324, file: !6, line: 174, baseType: !4327, size: 48)
!4327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 48, elements: !611)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4324, file: !6, line: 175, baseType: !484, size: 8, offset: 48)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !551, file: !51, line: 474, baseType: !4330, size: 64, offset: 2496)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!432, !578, !4333}
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !4335)
!4335 = !{!4336, !4338, !4339}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4334, file: !6, line: 196, baseType: !4337, size: 32)
!4337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 32, elements: !1458)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4334, file: !6, line: 197, baseType: !484, size: 8, offset: 32)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4334, file: !6, line: 198, baseType: !432, size: 32, offset: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !551, file: !51, line: 475, baseType: !4341, size: 64, offset: 2560)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!432, !578, !171}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !551, file: !51, line: 477, baseType: !4345, size: 64, offset: 2624)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!432, !578, !78}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !551, file: !51, line: 478, baseType: !4349, size: 64, offset: 2688)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!432, !578, !73}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !551, file: !51, line: 480, baseType: !4353, size: 64, offset: 2752)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!432, !578, !707}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !551, file: !51, line: 481, baseType: !4357, size: 64, offset: 2816)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!432, !578, !721}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !551, file: !51, line: 482, baseType: !4361, size: 64, offset: 2880)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!432, !578, !432}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !551, file: !51, line: 483, baseType: !4361, size: 64, offset: 2944)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !551, file: !51, line: 484, baseType: !4268, size: 64, offset: 3008)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !551, file: !51, line: 490, baseType: !4367, size: 64, offset: 3072)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!175, !578}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !551, file: !51, line: 492, baseType: !4371, size: 2304, offset: 3136)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !4372)
!4372 = !{!4373, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4400, !4404, !4405, !4406, !4407, !4408, !4409, !4414, !4419, !4423}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4371, file: !51, line: 228, baseType: !4374, size: 1216)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !4375)
!4375 = !{!4376, !4377, !4378, !4379, !4380, !4381, !4382}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4374, file: !51, line: 89, baseType: !557, size: 1024)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4374, file: !51, line: 91, baseType: !561, size: 32, offset: 1024)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4374, file: !51, line: 92, baseType: !561, size: 32, offset: 1056)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4374, file: !51, line: 93, baseType: !561, size: 32, offset: 1088)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4374, file: !51, line: 95, baseType: !561, size: 32, offset: 1120)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4374, file: !51, line: 96, baseType: !561, size: 32, offset: 1152)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4374, file: !51, line: 97, baseType: !561, size: 32, offset: 1184)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4371, file: !51, line: 230, baseType: !575, size: 64, offset: 1216)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4371, file: !51, line: 231, baseType: !4268, size: 64, offset: 1280)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4371, file: !51, line: 232, baseType: !4268, size: 64, offset: 1344)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4371, file: !51, line: 233, baseType: !4268, size: 64, offset: 1408)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4371, file: !51, line: 234, baseType: !4268, size: 64, offset: 1472)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4371, file: !51, line: 237, baseType: !4268, size: 64, offset: 1536)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4371, file: !51, line: 238, baseType: !4390, size: 64, offset: 1600)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!432, !578, !4393}
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !4395)
!4395 = !{!4396, !4397, !4398, !4399}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4394, file: !51, line: 115, baseType: !7, size: 32)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4394, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4394, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4394, file: !51, line: 118, baseType: !814, size: 64, offset: 128)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4371, file: !51, line: 240, baseType: !4401, size: 64, offset: 1664)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!432, !578, !431}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4371, file: !51, line: 242, baseType: !4308, size: 64, offset: 1728)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4371, file: !51, line: 243, baseType: !4308, size: 64, offset: 1792)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4371, file: !51, line: 244, baseType: !4308, size: 64, offset: 1856)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4371, file: !51, line: 248, baseType: !4308, size: 64, offset: 1920)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4371, file: !51, line: 249, baseType: !4312, size: 64, offset: 1984)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4371, file: !51, line: 250, baseType: !4410, size: 64, offset: 2048)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!432, !578, !4413}
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4371, file: !51, line: 258, baseType: !4415, size: 64, offset: 2112)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{!432, !578, !4418, !432}
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4371, file: !51, line: 267, baseType: !4420, size: 64, offset: 2176)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!432, !578, !561}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4371, file: !51, line: 268, baseType: !4420, size: 64, offset: 2240)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !551, file: !51, line: 493, baseType: !4425, size: 576, offset: 5440)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !4426)
!4426 = !{!4427, !4431, !4435, !4436, !4437, !4438, !4439, !4440, !4441}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4425, file: !51, line: 304, baseType: !4428, size: 64)
!4428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !4429)
!4429 = !{!4430}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4428, file: !51, line: 277, baseType: !468, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4425, file: !51, line: 306, baseType: !4432, size: 64, offset: 64)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{null, !578, !4393}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4425, file: !51, line: 308, baseType: !4312, size: 64, offset: 128)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4425, file: !51, line: 309, baseType: !4410, size: 64, offset: 192)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4425, file: !51, line: 310, baseType: !575, size: 64, offset: 256)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4425, file: !51, line: 311, baseType: !575, size: 64, offset: 320)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4425, file: !51, line: 312, baseType: !575, size: 64, offset: 384)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4425, file: !51, line: 313, baseType: !4361, size: 64, offset: 448)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4425, file: !51, line: 316, baseType: !4401, size: 64, offset: 512)
!4442 = !{i32 7, !"Dwarf Version", i32 4}
!4443 = !{i32 2, !"Debug Info Version", i32 3}
!4444 = !{i32 1, !"wchar_size", i32 2}
!4445 = !{i32 1, !"Code Model", i32 2}
!4446 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4447 = distinct !DISubprogram(name: "mt312_attach", scope: !3, file: !3, line: 777, type: !4448, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !646)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!578, !4450, !4457}
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4452)
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mt312_config", file: !4453, line: 18, size: 32, elements: !4454)
!4453 = !DIFile(filename: "drivers/media/dvb-frontends/mt312.h", directory: "/home/lizy2001/genbc/linux")
!4454 = !{!4455, !4456}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4452, file: !4453, line: 20, baseType: !483, size: 8)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "voltage_inverted", scope: !4452, file: !4453, line: 23, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4459, line: 695, size: 7552, elements: !4460)
!4459 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4460 = !{!4461, !4462, !4463, !4500, !4501, !4515, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4532, !4533, !4534, !4535, !4567, !4578}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4458, file: !4459, line: 696, baseType: !450, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4458, file: !4459, line: 697, baseType: !7, size: 32, offset: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4458, file: !4459, line: 698, baseType: !4464, size: 64, offset: 128)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4466)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4459, line: 519, size: 320, elements: !4467)
!4467 = !{!4468, !4481, !4482, !4495, !4496}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4466, file: !4459, line: 529, baseType: !4469, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!432, !4457, !4472, !432}
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4474, line: 69, size: 128, elements: !4475)
!4474 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4475 = !{!4476, !4477, !4478, !4479}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4473, file: !4474, line: 70, baseType: !476, size: 16)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4473, file: !4474, line: 71, baseType: !476, size: 16, offset: 16)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4473, file: !4474, line: 84, baseType: !476, size: 16, offset: 32)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4473, file: !4474, line: 85, baseType: !4480, size: 64, offset: 64)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4466, file: !4459, line: 531, baseType: !4469, size: 64, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4466, file: !4459, line: 533, baseType: !4483, size: 64, offset: 128)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!432, !4457, !475, !477, !448, !483, !432, !4486}
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4474, line: 135, size: 272, elements: !4488)
!4488 = !{!4489, !4490, !4491}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4487, file: !4474, line: 136, baseType: !484, size: 8)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4487, file: !4474, line: 137, baseType: !476, size: 16)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4487, file: !4474, line: 138, baseType: !4492, size: 272)
!4492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 272, elements: !4493)
!4493 = !{!4494}
!4494 = !DISubrange(count: 34)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4466, file: !4459, line: 536, baseType: !4483, size: 64, offset: 192)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4466, file: !4459, line: 541, baseType: !4497, size: 64, offset: 256)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!561, !4457}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4458, file: !4459, line: 699, baseType: !431, size: 64, offset: 192)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4458, file: !4459, line: 702, baseType: !4502, size: 64, offset: 256)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4504)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4459, line: 557, size: 192, elements: !4505)
!4505 = !{!4506, !4510, !4514}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4504, file: !4459, line: 558, baseType: !4507, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{null, !4457, !7}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4504, file: !4459, line: 559, baseType: !4511, size: 64, offset: 64)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!432, !4457, !7}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4504, file: !4459, line: 560, baseType: !4507, size: 64, offset: 128)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4458, file: !4459, line: 703, baseType: !4516, size: 192, offset: 320)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4517, line: 30, size: 192, elements: !4518)
!4517 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4518 = !{!4519, !4520, !4521}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4516, file: !4517, line: 31, baseType: !1165)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4516, file: !4517, line: 32, baseType: !1137, size: 128)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4516, file: !4517, line: 33, baseType: !1516, size: 64, offset: 128)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4458, file: !4459, line: 704, baseType: !4516, size: 192, offset: 512)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4458, file: !4459, line: 706, baseType: !432, size: 32, offset: 704)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4458, file: !4459, line: 707, baseType: !432, size: 32, offset: 736)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4458, file: !4459, line: 708, baseType: !616, size: 5568, offset: 768)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4458, file: !4459, line: 709, baseType: !721, size: 64, offset: 6336)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4458, file: !4459, line: 713, baseType: !432, size: 32, offset: 6400)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4458, file: !4459, line: 714, baseType: !4529, size: 384, offset: 6432)
!4529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 384, elements: !4530)
!4530 = !{!4531}
!4531 = !DISubrange(count: 48)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4458, file: !4459, line: 715, baseType: !1798, size: 192, offset: 6848)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4458, file: !4459, line: 717, baseType: !1476, size: 192, offset: 7040)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4458, file: !4459, line: 718, baseType: !602, size: 128, offset: 7232)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4458, file: !4459, line: 720, baseType: !4536, size: 64, offset: 7360)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4459, line: 618, size: 832, elements: !4538)
!4538 = !{!4539, !4543, !4544, !4548, !4549, !4550, !4551, !4555, !4556, !4559, !4560, !4563, !4566}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4537, file: !4459, line: 619, baseType: !4540, size: 64)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!432, !4457}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4537, file: !4459, line: 621, baseType: !4540, size: 64, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4537, file: !4459, line: 622, baseType: !4545, size: 64, offset: 128)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{null, !4457, !432}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4537, file: !4459, line: 623, baseType: !4540, size: 64, offset: 192)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4537, file: !4459, line: 624, baseType: !4545, size: 64, offset: 256)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4537, file: !4459, line: 625, baseType: !4540, size: 64, offset: 320)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4537, file: !4459, line: 627, baseType: !4552, size: 64, offset: 384)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{null, !4457}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4537, file: !4459, line: 628, baseType: !4552, size: 64, offset: 448)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4537, file: !4459, line: 631, baseType: !4557, size: 64, offset: 512)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4459, line: 631, flags: DIFlagFwdDecl)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4537, file: !4459, line: 632, baseType: !4557, size: 64, offset: 576)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4537, file: !4459, line: 633, baseType: !4561, size: 64, offset: 640)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4459, line: 633, flags: DIFlagFwdDecl)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4537, file: !4459, line: 634, baseType: !4564, size: 64, offset: 704)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4459, line: 634, flags: DIFlagFwdDecl)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4537, file: !4459, line: 635, baseType: !4564, size: 64, offset: 768)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4458, file: !4459, line: 721, baseType: !4568, size: 64, offset: 7424)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4570)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4459, line: 664, size: 192, elements: !4571)
!4571 = !{!4572, !4573, !4574, !4575, !4576, !4577}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4570, file: !4459, line: 665, baseType: !814, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4570, file: !4459, line: 666, baseType: !432, size: 32, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4570, file: !4459, line: 667, baseType: !475, size: 16, offset: 96)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4570, file: !4459, line: 668, baseType: !475, size: 16, offset: 112)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4570, file: !4459, line: 669, baseType: !475, size: 16, offset: 128)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4570, file: !4459, line: 670, baseType: !475, size: 16, offset: 144)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4458, file: !4459, line: 723, baseType: !3892, size: 64, offset: 7488)
!4579 = !DILocalVariable(name: "config", arg: 1, scope: !4447, file: !3, line: 777, type: !4450)
!4580 = !DILocation(line: 777, column: 62, scope: !4447)
!4581 = !DILocalVariable(name: "i2c", arg: 2, scope: !4447, file: !3, line: 778, type: !4457)
!4582 = !DILocation(line: 778, column: 26, scope: !4447)
!4583 = !DILocalVariable(name: "state", scope: !4447, file: !3, line: 780, type: !4584)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mt312_state", file: !3, line: 29, size: 10560, elements: !4586)
!4586 = !{!4587, !4588, !4589, !4590, !4591, !4592}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4585, file: !3, line: 30, baseType: !4457, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4585, file: !3, line: 32, baseType: !4450, size: 64, offset: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4585, file: !3, line: 33, baseType: !579, size: 10240, offset: 128)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4585, file: !3, line: 35, baseType: !483, size: 8, offset: 10368)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "xtal", scope: !4585, file: !3, line: 36, baseType: !721, size: 64, offset: 10432)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "freq_mult", scope: !4585, file: !3, line: 37, baseType: !483, size: 8, offset: 10496)
!4593 = !DILocation(line: 780, column: 22, scope: !4447)
!4594 = !DILocation(line: 783, column: 10, scope: !4447)
!4595 = !DILocation(line: 783, column: 8, scope: !4447)
!4596 = !DILocation(line: 784, column: 6, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 784, column: 6)
!4598 = !DILocation(line: 784, column: 12, scope: !4597)
!4599 = !DILocation(line: 784, column: 6, scope: !4447)
!4600 = !DILocation(line: 785, column: 3, scope: !4597)
!4601 = !DILocation(line: 788, column: 18, scope: !4447)
!4602 = !DILocation(line: 788, column: 2, scope: !4447)
!4603 = !DILocation(line: 788, column: 9, scope: !4447)
!4604 = !DILocation(line: 788, column: 16, scope: !4447)
!4605 = !DILocation(line: 789, column: 15, scope: !4447)
!4606 = !DILocation(line: 789, column: 2, scope: !4447)
!4607 = !DILocation(line: 789, column: 9, scope: !4447)
!4608 = !DILocation(line: 789, column: 13, scope: !4447)
!4609 = !DILocation(line: 792, column: 20, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 792, column: 6)
!4611 = !DILocation(line: 792, column: 32, scope: !4610)
!4612 = !DILocation(line: 792, column: 39, scope: !4610)
!4613 = !DILocation(line: 792, column: 6, scope: !4610)
!4614 = !DILocation(line: 792, column: 43, scope: !4610)
!4615 = !DILocation(line: 792, column: 6, scope: !4447)
!4616 = !DILocation(line: 793, column: 3, scope: !4610)
!4617 = !DILocation(line: 796, column: 10, scope: !4447)
!4618 = !DILocation(line: 796, column: 17, scope: !4447)
!4619 = !DILocation(line: 796, column: 26, scope: !4447)
!4620 = !DILocation(line: 796, column: 2, scope: !4447)
!4621 = !DILocation(line: 798, column: 37, scope: !4447)
!4622 = !DILocation(line: 798, column: 2, scope: !4447)
!4623 = !DILocation(line: 798, column: 9, scope: !4447)
!4624 = !DILocation(line: 798, column: 18, scope: !4447)
!4625 = !DILocation(line: 798, column: 35, scope: !4447)
!4626 = !DILocation(line: 800, column: 10, scope: !4447)
!4627 = !DILocation(line: 800, column: 17, scope: !4447)
!4628 = !DILocation(line: 800, column: 2, scope: !4447)
!4629 = !DILocation(line: 802, column: 11, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 800, column: 21)
!4631 = !DILocation(line: 802, column: 18, scope: !4630)
!4632 = !DILocation(line: 802, column: 27, scope: !4630)
!4633 = !DILocation(line: 802, column: 31, scope: !4630)
!4634 = !DILocation(line: 802, column: 36, scope: !4630)
!4635 = !DILocation(line: 802, column: 3, scope: !4630)
!4636 = !DILocation(line: 804, column: 3, scope: !4630)
!4637 = !DILocation(line: 804, column: 10, scope: !4630)
!4638 = !DILocation(line: 804, column: 15, scope: !4630)
!4639 = !DILocation(line: 805, column: 3, scope: !4630)
!4640 = !DILocation(line: 805, column: 10, scope: !4630)
!4641 = !DILocation(line: 805, column: 20, scope: !4630)
!4642 = !DILocation(line: 806, column: 3, scope: !4630)
!4643 = !DILocation(line: 808, column: 11, scope: !4630)
!4644 = !DILocation(line: 808, column: 18, scope: !4630)
!4645 = !DILocation(line: 808, column: 27, scope: !4630)
!4646 = !DILocation(line: 808, column: 31, scope: !4630)
!4647 = !DILocation(line: 808, column: 36, scope: !4630)
!4648 = !DILocation(line: 808, column: 3, scope: !4630)
!4649 = !DILocation(line: 810, column: 3, scope: !4630)
!4650 = !DILocation(line: 810, column: 10, scope: !4630)
!4651 = !DILocation(line: 810, column: 15, scope: !4630)
!4652 = !DILocation(line: 811, column: 3, scope: !4630)
!4653 = !DILocation(line: 811, column: 10, scope: !4630)
!4654 = !DILocation(line: 811, column: 20, scope: !4630)
!4655 = !DILocation(line: 812, column: 3, scope: !4630)
!4656 = !DILocation(line: 814, column: 11, scope: !4630)
!4657 = !DILocation(line: 814, column: 18, scope: !4630)
!4658 = !DILocation(line: 814, column: 27, scope: !4630)
!4659 = !DILocation(line: 814, column: 31, scope: !4630)
!4660 = !DILocation(line: 814, column: 36, scope: !4630)
!4661 = !DILocation(line: 814, column: 3, scope: !4630)
!4662 = !DILocation(line: 816, column: 3, scope: !4630)
!4663 = !DILocation(line: 816, column: 10, scope: !4630)
!4664 = !DILocation(line: 816, column: 15, scope: !4630)
!4665 = !DILocation(line: 817, column: 3, scope: !4630)
!4666 = !DILocation(line: 817, column: 10, scope: !4630)
!4667 = !DILocation(line: 817, column: 20, scope: !4630)
!4668 = !DILocation(line: 818, column: 3, scope: !4630)
!4669 = !DILocation(line: 820, column: 3, scope: !4630)
!4670 = !DILocation(line: 821, column: 3, scope: !4630)
!4671 = !DILocation(line: 824, column: 10, scope: !4447)
!4672 = !DILocation(line: 824, column: 17, scope: !4447)
!4673 = !DILocation(line: 824, column: 2, scope: !4447)
!4674 = !DILabel(scope: !4447, name: "error", file: !3, line: 826)
!4675 = !DILocation(line: 826, column: 1, scope: !4447)
!4676 = !DILocation(line: 827, column: 8, scope: !4447)
!4677 = !DILocation(line: 827, column: 2, scope: !4447)
!4678 = !DILocation(line: 828, column: 2, scope: !4447)
!4679 = !DILocation(line: 829, column: 1, scope: !4447)
!4680 = distinct !DISubprogram(name: "kzalloc", scope: !417, file: !417, line: 662, type: !4681, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!431, !718, !429}
!4683 = !DILocalVariable(name: "s", arg: 1, scope: !4684, file: !417, line: 445, type: !1318)
!4684 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !417, file: !417, line: 445, type: !4685, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!431, !1318, !429, !718}
!4687 = !DILocation(line: 445, column: 72, scope: !4684, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 552, column: 10, scope: !4689, inlinedAt: !4692)
!4689 = distinct !DILexicalBlock(scope: !4690, file: !417, line: 540, column: 34)
!4690 = distinct !DILexicalBlock(scope: !4691, file: !417, line: 540, column: 6)
!4691 = distinct !DISubprogram(name: "kmalloc", scope: !417, file: !417, line: 538, type: !4681, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!4692 = distinct !DILocation(line: 664, column: 9, scope: !4680)
!4693 = !DILocalVariable(name: "flags", arg: 2, scope: !4684, file: !417, line: 446, type: !429)
!4694 = !DILocation(line: 446, column: 9, scope: !4684, inlinedAt: !4688)
!4695 = !DILocalVariable(name: "size", arg: 3, scope: !4684, file: !417, line: 446, type: !718)
!4696 = !DILocation(line: 446, column: 23, scope: !4684, inlinedAt: !4688)
!4697 = !DILocalVariable(name: "ret", scope: !4684, file: !417, line: 448, type: !431)
!4698 = !DILocation(line: 448, column: 8, scope: !4684, inlinedAt: !4688)
!4699 = !DILocalVariable(name: "flags", arg: 1, scope: !4700, file: !417, line: 318, type: !429)
!4700 = distinct !DISubprogram(name: "kmalloc_type", scope: !417, file: !417, line: 318, type: !4701, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!416, !429}
!4703 = !DILocation(line: 318, column: 67, scope: !4700, inlinedAt: !4704)
!4704 = distinct !DILocation(line: 553, column: 20, scope: !4689, inlinedAt: !4692)
!4705 = !DILocalVariable(name: "size", arg: 1, scope: !4706, file: !417, line: 346, type: !718)
!4706 = distinct !DISubprogram(name: "kmalloc_index", scope: !417, file: !417, line: 346, type: !4707, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!7, !718}
!4709 = !DILocation(line: 346, column: 58, scope: !4706, inlinedAt: !4710)
!4710 = distinct !DILocation(line: 547, column: 11, scope: !4689, inlinedAt: !4692)
!4711 = !DILocalVariable(name: "size", arg: 1, scope: !4712, file: !417, line: 472, type: !718)
!4712 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !417, file: !417, line: 472, type: !4713, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!431, !718, !429, !7}
!4715 = !DILocation(line: 472, column: 28, scope: !4712, inlinedAt: !4716)
!4716 = distinct !DILocation(line: 481, column: 9, scope: !4717, inlinedAt: !4718)
!4717 = distinct !DISubprogram(name: "kmalloc_large", scope: !417, file: !417, line: 478, type: !4681, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!4718 = distinct !DILocation(line: 545, column: 11, scope: !4719, inlinedAt: !4692)
!4719 = distinct !DILexicalBlock(scope: !4689, file: !417, line: 544, column: 7)
!4720 = !DILocalVariable(name: "flags", arg: 2, scope: !4712, file: !417, line: 472, type: !429)
!4721 = !DILocation(line: 472, column: 40, scope: !4712, inlinedAt: !4716)
!4722 = !DILocalVariable(name: "order", arg: 3, scope: !4712, file: !417, line: 472, type: !7)
!4723 = !DILocation(line: 472, column: 60, scope: !4712, inlinedAt: !4716)
!4724 = !DILocalVariable(name: "size", arg: 1, scope: !4717, file: !417, line: 478, type: !718)
!4725 = !DILocation(line: 478, column: 51, scope: !4717, inlinedAt: !4718)
!4726 = !DILocalVariable(name: "flags", arg: 2, scope: !4717, file: !417, line: 478, type: !429)
!4727 = !DILocation(line: 478, column: 63, scope: !4717, inlinedAt: !4718)
!4728 = !DILocalVariable(name: "order", scope: !4717, file: !417, line: 480, type: !7)
!4729 = !DILocation(line: 480, column: 15, scope: !4717, inlinedAt: !4718)
!4730 = !DILocalVariable(name: "size", arg: 1, scope: !4691, file: !417, line: 538, type: !718)
!4731 = !DILocation(line: 538, column: 45, scope: !4691, inlinedAt: !4692)
!4732 = !DILocalVariable(name: "flags", arg: 2, scope: !4691, file: !417, line: 538, type: !429)
!4733 = !DILocation(line: 538, column: 57, scope: !4691, inlinedAt: !4692)
!4734 = !DILocalVariable(name: "index", scope: !4689, file: !417, line: 542, type: !7)
!4735 = !DILocation(line: 542, column: 16, scope: !4689, inlinedAt: !4692)
!4736 = !DILocalVariable(name: "size", arg: 1, scope: !4680, file: !417, line: 662, type: !718)
!4737 = !DILocation(line: 662, column: 36, scope: !4680)
!4738 = !DILocalVariable(name: "flags", arg: 2, scope: !4680, file: !417, line: 662, type: !429)
!4739 = !DILocation(line: 662, column: 48, scope: !4680)
!4740 = !DILocation(line: 664, column: 17, scope: !4680)
!4741 = !DILocation(line: 664, column: 23, scope: !4680)
!4742 = !DILocation(line: 664, column: 29, scope: !4680)
!4743 = !DILocation(line: 540, column: 27, scope: !4690, inlinedAt: !4692)
!4744 = !DILocation(line: 540, column: 6, scope: !4690, inlinedAt: !4692)
!4745 = !DILocation(line: 540, column: 6, scope: !4691, inlinedAt: !4692)
!4746 = !DILocation(line: 544, column: 7, scope: !4719, inlinedAt: !4692)
!4747 = !DILocation(line: 544, column: 12, scope: !4719, inlinedAt: !4692)
!4748 = !DILocation(line: 544, column: 7, scope: !4689, inlinedAt: !4692)
!4749 = !DILocation(line: 545, column: 25, scope: !4719, inlinedAt: !4692)
!4750 = !DILocation(line: 545, column: 31, scope: !4719, inlinedAt: !4692)
!4751 = !DILocation(line: 480, column: 33, scope: !4717, inlinedAt: !4718)
!4752 = !DILocation(line: 480, column: 23, scope: !4717, inlinedAt: !4718)
!4753 = !DILocation(line: 481, column: 29, scope: !4717, inlinedAt: !4718)
!4754 = !DILocation(line: 481, column: 35, scope: !4717, inlinedAt: !4718)
!4755 = !DILocation(line: 481, column: 42, scope: !4717, inlinedAt: !4718)
!4756 = !DILocation(line: 474, column: 23, scope: !4712, inlinedAt: !4716)
!4757 = !DILocation(line: 474, column: 29, scope: !4712, inlinedAt: !4716)
!4758 = !DILocation(line: 474, column: 36, scope: !4712, inlinedAt: !4716)
!4759 = !DILocation(line: 474, column: 9, scope: !4712, inlinedAt: !4716)
!4760 = !DILocation(line: 545, column: 4, scope: !4719, inlinedAt: !4692)
!4761 = !DILocation(line: 547, column: 25, scope: !4689, inlinedAt: !4692)
!4762 = !DILocation(line: 348, column: 7, scope: !4763, inlinedAt: !4710)
!4763 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 348, column: 6)
!4764 = !DILocation(line: 348, column: 6, scope: !4706, inlinedAt: !4710)
!4765 = !DILocation(line: 349, column: 3, scope: !4763, inlinedAt: !4710)
!4766 = !DILocation(line: 351, column: 6, scope: !4767, inlinedAt: !4710)
!4767 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 351, column: 6)
!4768 = !DILocation(line: 351, column: 11, scope: !4767, inlinedAt: !4710)
!4769 = !DILocation(line: 351, column: 6, scope: !4706, inlinedAt: !4710)
!4770 = !DILocation(line: 352, column: 3, scope: !4767, inlinedAt: !4710)
!4771 = !DILocation(line: 354, column: 32, scope: !4772, inlinedAt: !4710)
!4772 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 354, column: 6)
!4773 = !DILocation(line: 354, column: 37, scope: !4772, inlinedAt: !4710)
!4774 = !DILocation(line: 354, column: 42, scope: !4772, inlinedAt: !4710)
!4775 = !DILocation(line: 354, column: 45, scope: !4772, inlinedAt: !4710)
!4776 = !DILocation(line: 354, column: 50, scope: !4772, inlinedAt: !4710)
!4777 = !DILocation(line: 354, column: 6, scope: !4706, inlinedAt: !4710)
!4778 = !DILocation(line: 355, column: 3, scope: !4772, inlinedAt: !4710)
!4779 = !DILocation(line: 356, column: 32, scope: !4780, inlinedAt: !4710)
!4780 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 356, column: 6)
!4781 = !DILocation(line: 356, column: 37, scope: !4780, inlinedAt: !4710)
!4782 = !DILocation(line: 356, column: 43, scope: !4780, inlinedAt: !4710)
!4783 = !DILocation(line: 356, column: 46, scope: !4780, inlinedAt: !4710)
!4784 = !DILocation(line: 356, column: 51, scope: !4780, inlinedAt: !4710)
!4785 = !DILocation(line: 356, column: 6, scope: !4706, inlinedAt: !4710)
!4786 = !DILocation(line: 357, column: 3, scope: !4780, inlinedAt: !4710)
!4787 = !DILocation(line: 358, column: 6, scope: !4788, inlinedAt: !4710)
!4788 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 358, column: 6)
!4789 = !DILocation(line: 358, column: 11, scope: !4788, inlinedAt: !4710)
!4790 = !DILocation(line: 358, column: 6, scope: !4706, inlinedAt: !4710)
!4791 = !DILocation(line: 358, column: 26, scope: !4788, inlinedAt: !4710)
!4792 = !DILocation(line: 359, column: 6, scope: !4793, inlinedAt: !4710)
!4793 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 359, column: 6)
!4794 = !DILocation(line: 359, column: 11, scope: !4793, inlinedAt: !4710)
!4795 = !DILocation(line: 359, column: 6, scope: !4706, inlinedAt: !4710)
!4796 = !DILocation(line: 359, column: 26, scope: !4793, inlinedAt: !4710)
!4797 = !DILocation(line: 360, column: 6, scope: !4798, inlinedAt: !4710)
!4798 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 360, column: 6)
!4799 = !DILocation(line: 360, column: 11, scope: !4798, inlinedAt: !4710)
!4800 = !DILocation(line: 360, column: 6, scope: !4706, inlinedAt: !4710)
!4801 = !DILocation(line: 360, column: 26, scope: !4798, inlinedAt: !4710)
!4802 = !DILocation(line: 361, column: 6, scope: !4803, inlinedAt: !4710)
!4803 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 361, column: 6)
!4804 = !DILocation(line: 361, column: 11, scope: !4803, inlinedAt: !4710)
!4805 = !DILocation(line: 361, column: 6, scope: !4706, inlinedAt: !4710)
!4806 = !DILocation(line: 361, column: 26, scope: !4803, inlinedAt: !4710)
!4807 = !DILocation(line: 362, column: 6, scope: !4808, inlinedAt: !4710)
!4808 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 362, column: 6)
!4809 = !DILocation(line: 362, column: 11, scope: !4808, inlinedAt: !4710)
!4810 = !DILocation(line: 362, column: 6, scope: !4706, inlinedAt: !4710)
!4811 = !DILocation(line: 362, column: 26, scope: !4808, inlinedAt: !4710)
!4812 = !DILocation(line: 363, column: 6, scope: !4813, inlinedAt: !4710)
!4813 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 363, column: 6)
!4814 = !DILocation(line: 363, column: 11, scope: !4813, inlinedAt: !4710)
!4815 = !DILocation(line: 363, column: 6, scope: !4706, inlinedAt: !4710)
!4816 = !DILocation(line: 363, column: 26, scope: !4813, inlinedAt: !4710)
!4817 = !DILocation(line: 364, column: 6, scope: !4818, inlinedAt: !4710)
!4818 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 364, column: 6)
!4819 = !DILocation(line: 364, column: 11, scope: !4818, inlinedAt: !4710)
!4820 = !DILocation(line: 364, column: 6, scope: !4706, inlinedAt: !4710)
!4821 = !DILocation(line: 364, column: 26, scope: !4818, inlinedAt: !4710)
!4822 = !DILocation(line: 365, column: 6, scope: !4823, inlinedAt: !4710)
!4823 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 365, column: 6)
!4824 = !DILocation(line: 365, column: 11, scope: !4823, inlinedAt: !4710)
!4825 = !DILocation(line: 365, column: 6, scope: !4706, inlinedAt: !4710)
!4826 = !DILocation(line: 365, column: 26, scope: !4823, inlinedAt: !4710)
!4827 = !DILocation(line: 366, column: 6, scope: !4828, inlinedAt: !4710)
!4828 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 366, column: 6)
!4829 = !DILocation(line: 366, column: 11, scope: !4828, inlinedAt: !4710)
!4830 = !DILocation(line: 366, column: 6, scope: !4706, inlinedAt: !4710)
!4831 = !DILocation(line: 366, column: 26, scope: !4828, inlinedAt: !4710)
!4832 = !DILocation(line: 367, column: 6, scope: !4833, inlinedAt: !4710)
!4833 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 367, column: 6)
!4834 = !DILocation(line: 367, column: 11, scope: !4833, inlinedAt: !4710)
!4835 = !DILocation(line: 367, column: 6, scope: !4706, inlinedAt: !4710)
!4836 = !DILocation(line: 367, column: 26, scope: !4833, inlinedAt: !4710)
!4837 = !DILocation(line: 368, column: 6, scope: !4838, inlinedAt: !4710)
!4838 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 368, column: 6)
!4839 = !DILocation(line: 368, column: 11, scope: !4838, inlinedAt: !4710)
!4840 = !DILocation(line: 368, column: 6, scope: !4706, inlinedAt: !4710)
!4841 = !DILocation(line: 368, column: 26, scope: !4838, inlinedAt: !4710)
!4842 = !DILocation(line: 369, column: 6, scope: !4843, inlinedAt: !4710)
!4843 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 369, column: 6)
!4844 = !DILocation(line: 369, column: 11, scope: !4843, inlinedAt: !4710)
!4845 = !DILocation(line: 369, column: 6, scope: !4706, inlinedAt: !4710)
!4846 = !DILocation(line: 369, column: 26, scope: !4843, inlinedAt: !4710)
!4847 = !DILocation(line: 370, column: 6, scope: !4848, inlinedAt: !4710)
!4848 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 370, column: 6)
!4849 = !DILocation(line: 370, column: 11, scope: !4848, inlinedAt: !4710)
!4850 = !DILocation(line: 370, column: 6, scope: !4706, inlinedAt: !4710)
!4851 = !DILocation(line: 370, column: 26, scope: !4848, inlinedAt: !4710)
!4852 = !DILocation(line: 371, column: 6, scope: !4853, inlinedAt: !4710)
!4853 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 371, column: 6)
!4854 = !DILocation(line: 371, column: 11, scope: !4853, inlinedAt: !4710)
!4855 = !DILocation(line: 371, column: 6, scope: !4706, inlinedAt: !4710)
!4856 = !DILocation(line: 371, column: 26, scope: !4853, inlinedAt: !4710)
!4857 = !DILocation(line: 372, column: 6, scope: !4858, inlinedAt: !4710)
!4858 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 372, column: 6)
!4859 = !DILocation(line: 372, column: 11, scope: !4858, inlinedAt: !4710)
!4860 = !DILocation(line: 372, column: 6, scope: !4706, inlinedAt: !4710)
!4861 = !DILocation(line: 372, column: 26, scope: !4858, inlinedAt: !4710)
!4862 = !DILocation(line: 373, column: 6, scope: !4863, inlinedAt: !4710)
!4863 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 373, column: 6)
!4864 = !DILocation(line: 373, column: 11, scope: !4863, inlinedAt: !4710)
!4865 = !DILocation(line: 373, column: 6, scope: !4706, inlinedAt: !4710)
!4866 = !DILocation(line: 373, column: 26, scope: !4863, inlinedAt: !4710)
!4867 = !DILocation(line: 374, column: 6, scope: !4868, inlinedAt: !4710)
!4868 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 374, column: 6)
!4869 = !DILocation(line: 374, column: 11, scope: !4868, inlinedAt: !4710)
!4870 = !DILocation(line: 374, column: 6, scope: !4706, inlinedAt: !4710)
!4871 = !DILocation(line: 374, column: 26, scope: !4868, inlinedAt: !4710)
!4872 = !DILocation(line: 375, column: 6, scope: !4873, inlinedAt: !4710)
!4873 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 375, column: 6)
!4874 = !DILocation(line: 375, column: 11, scope: !4873, inlinedAt: !4710)
!4875 = !DILocation(line: 375, column: 6, scope: !4706, inlinedAt: !4710)
!4876 = !DILocation(line: 375, column: 27, scope: !4873, inlinedAt: !4710)
!4877 = !DILocation(line: 376, column: 6, scope: !4878, inlinedAt: !4710)
!4878 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 376, column: 6)
!4879 = !DILocation(line: 376, column: 11, scope: !4878, inlinedAt: !4710)
!4880 = !DILocation(line: 376, column: 6, scope: !4706, inlinedAt: !4710)
!4881 = !DILocation(line: 376, column: 32, scope: !4878, inlinedAt: !4710)
!4882 = !DILocation(line: 377, column: 6, scope: !4883, inlinedAt: !4710)
!4883 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 377, column: 6)
!4884 = !DILocation(line: 377, column: 11, scope: !4883, inlinedAt: !4710)
!4885 = !DILocation(line: 377, column: 6, scope: !4706, inlinedAt: !4710)
!4886 = !DILocation(line: 377, column: 32, scope: !4883, inlinedAt: !4710)
!4887 = !DILocation(line: 378, column: 6, scope: !4888, inlinedAt: !4710)
!4888 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 378, column: 6)
!4889 = !DILocation(line: 378, column: 11, scope: !4888, inlinedAt: !4710)
!4890 = !DILocation(line: 378, column: 6, scope: !4706, inlinedAt: !4710)
!4891 = !DILocation(line: 378, column: 32, scope: !4888, inlinedAt: !4710)
!4892 = !DILocation(line: 379, column: 6, scope: !4893, inlinedAt: !4710)
!4893 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 379, column: 6)
!4894 = !DILocation(line: 379, column: 11, scope: !4893, inlinedAt: !4710)
!4895 = !DILocation(line: 379, column: 6, scope: !4706, inlinedAt: !4710)
!4896 = !DILocation(line: 379, column: 33, scope: !4893, inlinedAt: !4710)
!4897 = !DILocation(line: 380, column: 6, scope: !4898, inlinedAt: !4710)
!4898 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 380, column: 6)
!4899 = !DILocation(line: 380, column: 11, scope: !4898, inlinedAt: !4710)
!4900 = !DILocation(line: 380, column: 6, scope: !4706, inlinedAt: !4710)
!4901 = !DILocation(line: 380, column: 33, scope: !4898, inlinedAt: !4710)
!4902 = !DILocation(line: 381, column: 6, scope: !4903, inlinedAt: !4710)
!4903 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 381, column: 6)
!4904 = !DILocation(line: 381, column: 11, scope: !4903, inlinedAt: !4710)
!4905 = !DILocation(line: 381, column: 6, scope: !4706, inlinedAt: !4710)
!4906 = !DILocation(line: 381, column: 33, scope: !4903, inlinedAt: !4710)
!4907 = !DILocation(line: 382, column: 2, scope: !4908, inlinedAt: !4710)
!4908 = distinct !DILexicalBlock(scope: !4909, file: !417, line: 382, column: 2)
!4909 = distinct !DILexicalBlock(scope: !4706, file: !417, line: 382, column: 2)
!4910 = !{i32 -2144224932, i32 -2144224903, i32 -2144224857, i32 -2144224799, i32 -2144224745, i32 -2144224691, i32 -2144224636, i32 -2144224605}
!4911 = !DILocation(line: 382, column: 2, scope: !4912, inlinedAt: !4710)
!4912 = distinct !DILexicalBlock(scope: !4913, file: !417, line: 382, column: 2)
!4913 = distinct !DILexicalBlock(scope: !4909, file: !417, line: 382, column: 2)
!4914 = !{i32 -2144224162, i32 -2144224155, i32 -2144224101, i32 -2144224070, i32 -2144224040}
!4915 = !DILocation(line: 382, column: 2, scope: !4913, inlinedAt: !4710)
!4916 = !DILocation(line: 386, column: 1, scope: !4706, inlinedAt: !4710)
!4917 = !DILocation(line: 547, column: 9, scope: !4689, inlinedAt: !4692)
!4918 = !DILocation(line: 549, column: 8, scope: !4919, inlinedAt: !4692)
!4919 = distinct !DILexicalBlock(scope: !4689, file: !417, line: 549, column: 7)
!4920 = !DILocation(line: 549, column: 7, scope: !4689, inlinedAt: !4692)
!4921 = !DILocation(line: 550, column: 4, scope: !4919, inlinedAt: !4692)
!4922 = !DILocation(line: 553, column: 33, scope: !4689, inlinedAt: !4692)
!4923 = !DILocation(line: 325, column: 6, scope: !4924, inlinedAt: !4704)
!4924 = distinct !DILexicalBlock(scope: !4700, file: !417, line: 325, column: 6)
!4925 = !DILocation(line: 325, column: 6, scope: !4700, inlinedAt: !4704)
!4926 = !DILocation(line: 326, column: 3, scope: !4924, inlinedAt: !4704)
!4927 = !DILocation(line: 332, column: 9, scope: !4700, inlinedAt: !4704)
!4928 = !DILocation(line: 332, column: 15, scope: !4700, inlinedAt: !4704)
!4929 = !DILocation(line: 332, column: 2, scope: !4700, inlinedAt: !4704)
!4930 = !DILocation(line: 336, column: 1, scope: !4700, inlinedAt: !4704)
!4931 = !DILocation(line: 553, column: 5, scope: !4689, inlinedAt: !4692)
!4932 = !DILocation(line: 553, column: 41, scope: !4689, inlinedAt: !4692)
!4933 = !DILocation(line: 554, column: 5, scope: !4689, inlinedAt: !4692)
!4934 = !DILocation(line: 554, column: 12, scope: !4689, inlinedAt: !4692)
!4935 = !DILocation(line: 448, column: 31, scope: !4684, inlinedAt: !4688)
!4936 = !DILocation(line: 448, column: 34, scope: !4684, inlinedAt: !4688)
!4937 = !DILocation(line: 448, column: 14, scope: !4684, inlinedAt: !4688)
!4938 = !DILocation(line: 450, column: 22, scope: !4684, inlinedAt: !4688)
!4939 = !DILocation(line: 450, column: 25, scope: !4684, inlinedAt: !4688)
!4940 = !DILocation(line: 450, column: 30, scope: !4684, inlinedAt: !4688)
!4941 = !DILocation(line: 450, column: 36, scope: !4684, inlinedAt: !4688)
!4942 = !DILocation(line: 450, column: 8, scope: !4684, inlinedAt: !4688)
!4943 = !DILocation(line: 450, column: 6, scope: !4684, inlinedAt: !4688)
!4944 = !DILocation(line: 451, column: 9, scope: !4684, inlinedAt: !4688)
!4945 = !DILocation(line: 552, column: 3, scope: !4689, inlinedAt: !4692)
!4946 = !DILocation(line: 557, column: 19, scope: !4691, inlinedAt: !4692)
!4947 = !DILocation(line: 557, column: 25, scope: !4691, inlinedAt: !4692)
!4948 = !DILocation(line: 557, column: 9, scope: !4691, inlinedAt: !4692)
!4949 = !DILocation(line: 557, column: 2, scope: !4691, inlinedAt: !4692)
!4950 = !DILocation(line: 558, column: 1, scope: !4691, inlinedAt: !4692)
!4951 = !DILocation(line: 664, column: 2, scope: !4680)
!4952 = distinct !DISubprogram(name: "mt312_readreg", scope: !3, file: !3, line: 123, type: !4953, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!432, !4584, !4955, !4418}
!4955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!4956 = !DILocalVariable(name: "state", arg: 1, scope: !4952, file: !3, line: 123, type: !4584)
!4957 = !DILocation(line: 123, column: 53, scope: !4952)
!4958 = !DILocalVariable(name: "reg", arg: 2, scope: !4952, file: !3, line: 124, type: !4955)
!4959 = !DILocation(line: 124, column: 31, scope: !4952)
!4960 = !DILocalVariable(name: "val", arg: 3, scope: !4952, file: !3, line: 124, type: !4418)
!4961 = !DILocation(line: 124, column: 40, scope: !4952)
!4962 = !DILocation(line: 126, column: 20, scope: !4952)
!4963 = !DILocation(line: 126, column: 27, scope: !4952)
!4964 = !DILocation(line: 126, column: 32, scope: !4952)
!4965 = !DILocation(line: 126, column: 9, scope: !4952)
!4966 = !DILocation(line: 126, column: 2, scope: !4952)
!4967 = distinct !DISubprogram(name: "get_order", scope: !4968, file: !4968, line: 29, type: !4969, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!4968 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!432, !721}
!4971 = !DILocalVariable(name: "x", arg: 1, scope: !4972, file: !4973, line: 366, type: !815)
!4972 = distinct !DISubprogram(name: "fls64", scope: !4973, file: !4973, line: 366, type: !4974, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!4973 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!432, !815}
!4976 = !DILocation(line: 366, column: 40, scope: !4972, inlinedAt: !4977)
!4977 = distinct !DILocation(line: 46, column: 9, scope: !4967)
!4978 = !DILocalVariable(name: "bitpos", scope: !4972, file: !4973, line: 368, type: !432)
!4979 = !DILocation(line: 368, column: 6, scope: !4972, inlinedAt: !4977)
!4980 = !DILocalVariable(name: "size", arg: 1, scope: !4967, file: !4968, line: 29, type: !721)
!4981 = !DILocation(line: 29, column: 63, scope: !4967)
!4982 = !DILocation(line: 31, column: 27, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4967, file: !4968, line: 31, column: 6)
!4984 = !DILocation(line: 31, column: 6, scope: !4983)
!4985 = !DILocation(line: 31, column: 6, scope: !4967)
!4986 = !DILocation(line: 32, column: 8, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4988, file: !4968, line: 32, column: 7)
!4988 = distinct !DILexicalBlock(scope: !4983, file: !4968, line: 31, column: 34)
!4989 = !DILocation(line: 32, column: 7, scope: !4988)
!4990 = !DILocation(line: 33, column: 4, scope: !4987)
!4991 = !DILocation(line: 35, column: 7, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4988, file: !4968, line: 35, column: 7)
!4993 = !DILocation(line: 35, column: 12, scope: !4992)
!4994 = !DILocation(line: 35, column: 7, scope: !4988)
!4995 = !DILocation(line: 36, column: 4, scope: !4992)
!4996 = !DILocation(line: 38, column: 10, scope: !4988)
!4997 = !DILocation(line: 38, column: 28, scope: !4988)
!4998 = !DILocation(line: 38, column: 41, scope: !4988)
!4999 = !DILocation(line: 38, column: 3, scope: !4988)
!5000 = !DILocation(line: 41, column: 6, scope: !4967)
!5001 = !DILocation(line: 42, column: 7, scope: !4967)
!5002 = !DILocation(line: 46, column: 15, scope: !4967)
!5003 = !DILocation(line: 374, column: 2, scope: !4972, inlinedAt: !4977)
!5004 = !DILocation(line: 376, column: 14, scope: !4972, inlinedAt: !4977)
!5005 = !{i32 259471}
!5006 = !DILocation(line: 377, column: 9, scope: !4972, inlinedAt: !4977)
!5007 = !DILocation(line: 377, column: 16, scope: !4972, inlinedAt: !4977)
!5008 = !DILocation(line: 46, column: 2, scope: !4967)
!5009 = !DILocation(line: 48, column: 1, scope: !4967)
!5010 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5011, file: !5011, line: 30, type: !5012, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!5011 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!432, !814}
!5014 = !DILocation(line: 366, column: 40, scope: !4972, inlinedAt: !5015)
!5015 = distinct !DILocation(line: 32, column: 9, scope: !5010)
!5016 = !DILocation(line: 368, column: 6, scope: !4972, inlinedAt: !5015)
!5017 = !DILocalVariable(name: "n", arg: 1, scope: !5010, file: !5011, line: 30, type: !814)
!5018 = !DILocation(line: 30, column: 21, scope: !5010)
!5019 = !DILocation(line: 32, column: 15, scope: !5010)
!5020 = !DILocation(line: 374, column: 2, scope: !4972, inlinedAt: !5015)
!5021 = !DILocation(line: 376, column: 14, scope: !4972, inlinedAt: !5015)
!5022 = !DILocation(line: 377, column: 9, scope: !4972, inlinedAt: !5015)
!5023 = !DILocation(line: 377, column: 16, scope: !4972, inlinedAt: !5015)
!5024 = !DILocation(line: 32, column: 18, scope: !5010)
!5025 = !DILocation(line: 32, column: 2, scope: !5010)
!5026 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5027, file: !5027, line: 137, type: !5028, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!5027 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!431, !1318, !2423, !718, !429}
!5030 = !DILocalVariable(name: "s", arg: 1, scope: !5026, file: !5027, line: 137, type: !1318)
!5031 = !DILocation(line: 137, column: 54, scope: !5026)
!5032 = !DILocalVariable(name: "object", arg: 2, scope: !5026, file: !5027, line: 137, type: !2423)
!5033 = !DILocation(line: 137, column: 69, scope: !5026)
!5034 = !DILocalVariable(name: "size", arg: 3, scope: !5026, file: !5027, line: 138, type: !718)
!5035 = !DILocation(line: 138, column: 12, scope: !5026)
!5036 = !DILocalVariable(name: "flags", arg: 4, scope: !5026, file: !5027, line: 138, type: !429)
!5037 = !DILocation(line: 138, column: 24, scope: !5026)
!5038 = !DILocation(line: 140, column: 17, scope: !5026)
!5039 = !DILocation(line: 140, column: 2, scope: !5026)
!5040 = distinct !DISubprogram(name: "mt312_read", scope: !3, file: !3, line: 50, type: !5041, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!432, !4584, !4955, !4418, !5043}
!5043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!5044 = !DILocalVariable(name: "state", arg: 1, scope: !5040, file: !3, line: 50, type: !4584)
!5045 = !DILocation(line: 50, column: 43, scope: !5040)
!5046 = !DILocalVariable(name: "reg", arg: 2, scope: !5040, file: !3, line: 50, type: !4955)
!5047 = !DILocation(line: 50, column: 76, scope: !5040)
!5048 = !DILocalVariable(name: "buf", arg: 3, scope: !5040, file: !3, line: 51, type: !4418)
!5049 = !DILocation(line: 51, column: 13, scope: !5040)
!5050 = !DILocalVariable(name: "count", arg: 4, scope: !5040, file: !3, line: 51, type: !5043)
!5051 = !DILocation(line: 51, column: 31, scope: !5040)
!5052 = !DILocalVariable(name: "ret", scope: !5040, file: !3, line: 53, type: !432)
!5053 = !DILocation(line: 53, column: 6, scope: !5040)
!5054 = !DILocalVariable(name: "msg", scope: !5040, file: !3, line: 54, type: !5055)
!5055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4473, size: 256, elements: !1865)
!5056 = !DILocation(line: 54, column: 17, scope: !5040)
!5057 = !DILocalVariable(name: "regbuf", scope: !5040, file: !3, line: 55, type: !5058)
!5058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 8, elements: !1662)
!5059 = !DILocation(line: 55, column: 5, scope: !5040)
!5060 = !DILocation(line: 55, column: 17, scope: !5040)
!5061 = !DILocation(line: 55, column: 19, scope: !5040)
!5062 = !DILocation(line: 57, column: 16, scope: !5040)
!5063 = !DILocation(line: 57, column: 23, scope: !5040)
!5064 = !DILocation(line: 57, column: 31, scope: !5040)
!5065 = !DILocation(line: 57, column: 2, scope: !5040)
!5066 = !DILocation(line: 57, column: 9, scope: !5040)
!5067 = !DILocation(line: 57, column: 14, scope: !5040)
!5068 = !DILocation(line: 58, column: 2, scope: !5040)
!5069 = !DILocation(line: 58, column: 9, scope: !5040)
!5070 = !DILocation(line: 58, column: 15, scope: !5040)
!5071 = !DILocation(line: 59, column: 15, scope: !5040)
!5072 = !DILocation(line: 59, column: 2, scope: !5040)
!5073 = !DILocation(line: 59, column: 9, scope: !5040)
!5074 = !DILocation(line: 59, column: 13, scope: !5040)
!5075 = !DILocation(line: 60, column: 2, scope: !5040)
!5076 = !DILocation(line: 60, column: 9, scope: !5040)
!5077 = !DILocation(line: 60, column: 13, scope: !5040)
!5078 = !DILocation(line: 61, column: 16, scope: !5040)
!5079 = !DILocation(line: 61, column: 23, scope: !5040)
!5080 = !DILocation(line: 61, column: 31, scope: !5040)
!5081 = !DILocation(line: 61, column: 2, scope: !5040)
!5082 = !DILocation(line: 61, column: 9, scope: !5040)
!5083 = !DILocation(line: 61, column: 14, scope: !5040)
!5084 = !DILocation(line: 62, column: 2, scope: !5040)
!5085 = !DILocation(line: 62, column: 9, scope: !5040)
!5086 = !DILocation(line: 62, column: 15, scope: !5040)
!5087 = !DILocation(line: 63, column: 15, scope: !5040)
!5088 = !DILocation(line: 63, column: 2, scope: !5040)
!5089 = !DILocation(line: 63, column: 9, scope: !5040)
!5090 = !DILocation(line: 63, column: 13, scope: !5040)
!5091 = !DILocation(line: 64, column: 15, scope: !5040)
!5092 = !DILocation(line: 64, column: 2, scope: !5040)
!5093 = !DILocation(line: 64, column: 9, scope: !5040)
!5094 = !DILocation(line: 64, column: 13, scope: !5040)
!5095 = !DILocation(line: 66, column: 21, scope: !5040)
!5096 = !DILocation(line: 66, column: 28, scope: !5040)
!5097 = !DILocation(line: 66, column: 33, scope: !5040)
!5098 = !DILocation(line: 66, column: 8, scope: !5040)
!5099 = !DILocation(line: 66, column: 6, scope: !5040)
!5100 = !DILocation(line: 68, column: 6, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5040, file: !3, line: 68, column: 6)
!5102 = !DILocation(line: 68, column: 10, scope: !5101)
!5103 = !DILocation(line: 68, column: 6, scope: !5040)
!5104 = !DILocation(line: 69, column: 50, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5101, file: !3, line: 68, column: 16)
!5106 = !DILocation(line: 69, column: 3, scope: !5105)
!5107 = !DILocation(line: 70, column: 3, scope: !5105)
!5108 = !DILocation(line: 73, column: 6, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5040, file: !3, line: 73, column: 6)
!5110 = !DILocation(line: 73, column: 6, scope: !5040)
!5111 = !DILocalVariable(name: "i", scope: !5112, file: !3, line: 74, type: !432)
!5112 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 73, column: 13)
!5113 = !DILocation(line: 74, column: 7, scope: !5112)
!5114 = !DILocation(line: 75, column: 3, scope: !5112)
!5115 = !DILocation(line: 75, column: 3, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 75, column: 3)
!5117 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 75, column: 3)
!5118 = !DILocation(line: 75, column: 3, scope: !5117)
!5119 = !DILocation(line: 76, column: 10, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 76, column: 3)
!5121 = !DILocation(line: 76, column: 8, scope: !5120)
!5122 = !DILocation(line: 76, column: 15, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 76, column: 3)
!5124 = !DILocation(line: 76, column: 19, scope: !5123)
!5125 = !DILocation(line: 76, column: 17, scope: !5123)
!5126 = !DILocation(line: 76, column: 3, scope: !5120)
!5127 = !DILocation(line: 77, column: 30, scope: !5123)
!5128 = !DILocation(line: 77, column: 34, scope: !5123)
!5129 = !DILocation(line: 77, column: 4, scope: !5123)
!5130 = !DILocation(line: 76, column: 27, scope: !5123)
!5131 = !DILocation(line: 76, column: 3, scope: !5123)
!5132 = distinct !{!5132, !5126, !5133}
!5133 = !DILocation(line: 77, column: 36, scope: !5120)
!5134 = !DILocation(line: 78, column: 3, scope: !5112)
!5135 = !DILocation(line: 79, column: 2, scope: !5112)
!5136 = !DILocation(line: 81, column: 2, scope: !5040)
!5137 = !DILocation(line: 82, column: 1, scope: !5040)
!5138 = distinct !DISubprogram(name: "mt312_release", scope: !3, file: !3, line: 731, type: !576, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!5139 = !DILocalVariable(name: "fe", arg: 1, scope: !5138, file: !3, line: 731, type: !578)
!5140 = !DILocation(line: 731, column: 48, scope: !5138)
!5141 = !DILocalVariable(name: "state", scope: !5138, file: !3, line: 733, type: !4584)
!5142 = !DILocation(line: 733, column: 22, scope: !5138)
!5143 = !DILocation(line: 733, column: 30, scope: !5138)
!5144 = !DILocation(line: 733, column: 34, scope: !5138)
!5145 = !DILocation(line: 734, column: 8, scope: !5138)
!5146 = !DILocation(line: 734, column: 2, scope: !5138)
!5147 = !DILocation(line: 735, column: 1, scope: !5138)
!5148 = distinct !DISubprogram(name: "mt312_initfe", scope: !3, file: !3, line: 231, type: !4269, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!5149 = !DILocalVariable(name: "fe", arg: 1, scope: !5148, file: !3, line: 231, type: !578)
!5150 = !DILocation(line: 231, column: 46, scope: !5148)
!5151 = !DILocalVariable(name: "state", scope: !5148, file: !3, line: 233, type: !4584)
!5152 = !DILocation(line: 233, column: 22, scope: !5148)
!5153 = !DILocation(line: 233, column: 30, scope: !5148)
!5154 = !DILocation(line: 233, column: 34, scope: !5148)
!5155 = !DILocalVariable(name: "ret", scope: !5148, file: !3, line: 234, type: !432)
!5156 = !DILocation(line: 234, column: 6, scope: !5148)
!5157 = !DILocalVariable(name: "buf", scope: !5148, file: !3, line: 235, type: !5158)
!5158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 16, elements: !1865)
!5159 = !DILocation(line: 235, column: 5, scope: !5148)
!5160 = !DILocation(line: 238, column: 23, scope: !5148)
!5161 = !DILocation(line: 239, column: 5, scope: !5148)
!5162 = !DILocation(line: 239, column: 12, scope: !5148)
!5163 = !DILocation(line: 239, column: 22, scope: !5148)
!5164 = !DILocation(line: 239, column: 4, scope: !5148)
!5165 = !DILocation(line: 238, column: 8, scope: !5148)
!5166 = !DILocation(line: 238, column: 6, scope: !5148)
!5167 = !DILocation(line: 240, column: 6, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 240, column: 6)
!5169 = !DILocation(line: 240, column: 10, scope: !5168)
!5170 = !DILocation(line: 240, column: 6, scope: !5148)
!5171 = !DILocation(line: 241, column: 10, scope: !5168)
!5172 = !DILocation(line: 241, column: 3, scope: !5168)
!5173 = !DILocation(line: 244, column: 2, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 244, column: 2)
!5175 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 244, column: 2)
!5176 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 244, column: 2)
!5177 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 244, column: 2)
!5178 = !DILocation(line: 247, column: 20, scope: !5148)
!5179 = !DILocation(line: 247, column: 8, scope: !5148)
!5180 = !DILocation(line: 247, column: 6, scope: !5148)
!5181 = !DILocation(line: 248, column: 6, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 248, column: 6)
!5183 = !DILocation(line: 248, column: 10, scope: !5182)
!5184 = !DILocation(line: 248, column: 6, scope: !5148)
!5185 = !DILocation(line: 249, column: 10, scope: !5182)
!5186 = !DILocation(line: 249, column: 3, scope: !5182)
!5187 = !DILocalVariable(name: "buf_def", scope: !5188, file: !3, line: 254, type: !571)
!5188 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 253, column: 2)
!5189 = !DILocation(line: 254, column: 6, scope: !5188)
!5190 = !DILocation(line: 257, column: 21, scope: !5188)
!5191 = !DILocation(line: 257, column: 39, scope: !5188)
!5192 = !DILocation(line: 257, column: 9, scope: !5188)
!5193 = !DILocation(line: 257, column: 7, scope: !5188)
!5194 = !DILocation(line: 258, column: 7, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 258, column: 7)
!5196 = !DILocation(line: 258, column: 11, scope: !5195)
!5197 = !DILocation(line: 258, column: 7, scope: !5188)
!5198 = !DILocation(line: 259, column: 11, scope: !5195)
!5199 = !DILocation(line: 259, column: 4, scope: !5195)
!5200 = !DILocation(line: 262, column: 10, scope: !5148)
!5201 = !DILocation(line: 262, column: 17, scope: !5148)
!5202 = !DILocation(line: 262, column: 2, scope: !5148)
!5203 = !DILocation(line: 265, column: 24, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 262, column: 21)
!5205 = !DILocation(line: 265, column: 9, scope: !5204)
!5206 = !DILocation(line: 265, column: 7, scope: !5204)
!5207 = !DILocation(line: 266, column: 7, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 266, column: 7)
!5209 = !DILocation(line: 266, column: 11, scope: !5208)
!5210 = !DILocation(line: 266, column: 7, scope: !5204)
!5211 = !DILocation(line: 267, column: 11, scope: !5208)
!5212 = !DILocation(line: 267, column: 4, scope: !5208)
!5213 = !DILocation(line: 270, column: 3, scope: !5204)
!5214 = !DILocation(line: 270, column: 10, scope: !5204)
!5215 = !DILocation(line: 271, column: 3, scope: !5204)
!5216 = !DILocation(line: 271, column: 10, scope: !5204)
!5217 = !DILocation(line: 272, column: 21, scope: !5204)
!5218 = !DILocation(line: 272, column: 37, scope: !5204)
!5219 = !DILocation(line: 272, column: 9, scope: !5204)
!5220 = !DILocation(line: 272, column: 7, scope: !5204)
!5221 = !DILocation(line: 273, column: 7, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 273, column: 7)
!5223 = !DILocation(line: 273, column: 11, scope: !5222)
!5224 = !DILocation(line: 273, column: 7, scope: !5204)
!5225 = !DILocation(line: 274, column: 11, scope: !5222)
!5226 = !DILocation(line: 274, column: 4, scope: !5222)
!5227 = !DILocation(line: 277, column: 24, scope: !5204)
!5228 = !DILocation(line: 277, column: 9, scope: !5204)
!5229 = !DILocation(line: 277, column: 7, scope: !5204)
!5230 = !DILocation(line: 278, column: 7, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 278, column: 7)
!5232 = !DILocation(line: 278, column: 11, scope: !5231)
!5233 = !DILocation(line: 278, column: 7, scope: !5204)
!5234 = !DILocation(line: 279, column: 11, scope: !5231)
!5235 = !DILocation(line: 279, column: 4, scope: !5231)
!5236 = !DILocation(line: 281, column: 24, scope: !5204)
!5237 = !DILocation(line: 281, column: 9, scope: !5204)
!5238 = !DILocation(line: 281, column: 7, scope: !5204)
!5239 = !DILocation(line: 282, column: 7, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 282, column: 7)
!5241 = !DILocation(line: 282, column: 11, scope: !5240)
!5242 = !DILocation(line: 282, column: 7, scope: !5204)
!5243 = !DILocation(line: 283, column: 11, scope: !5240)
!5244 = !DILocation(line: 283, column: 4, scope: !5240)
!5245 = !DILocation(line: 285, column: 3, scope: !5204)
!5246 = !DILocalVariable(name: "__x", scope: !5247, file: !3, line: 289, type: !721)
!5247 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 289, column: 11)
!5248 = !DILocation(line: 289, column: 11, scope: !5247)
!5249 = !DILocalVariable(name: "__d", scope: !5247, file: !3, line: 289, type: !432)
!5250 = !DILocation(line: 289, column: 11, scope: !5148)
!5251 = !DILocation(line: 289, column: 2, scope: !5148)
!5252 = !DILocation(line: 289, column: 9, scope: !5148)
!5253 = !DILocalVariable(name: "__x", scope: !5254, file: !3, line: 292, type: !721)
!5254 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 292, column: 11)
!5255 = !DILocation(line: 292, column: 11, scope: !5254)
!5256 = !DILocalVariable(name: "__d", scope: !5254, file: !3, line: 292, type: !432)
!5257 = !DILocation(line: 292, column: 11, scope: !5148)
!5258 = !DILocation(line: 292, column: 2, scope: !5148)
!5259 = !DILocation(line: 292, column: 9, scope: !5148)
!5260 = !DILocation(line: 294, column: 20, scope: !5148)
!5261 = !DILocation(line: 294, column: 36, scope: !5148)
!5262 = !DILocation(line: 294, column: 8, scope: !5148)
!5263 = !DILocation(line: 294, column: 6, scope: !5148)
!5264 = !DILocation(line: 295, column: 6, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 295, column: 6)
!5266 = !DILocation(line: 295, column: 10, scope: !5265)
!5267 = !DILocation(line: 295, column: 6, scope: !5148)
!5268 = !DILocation(line: 296, column: 10, scope: !5265)
!5269 = !DILocation(line: 296, column: 3, scope: !5265)
!5270 = !DILocation(line: 298, column: 23, scope: !5148)
!5271 = !DILocation(line: 298, column: 8, scope: !5148)
!5272 = !DILocation(line: 298, column: 6, scope: !5148)
!5273 = !DILocation(line: 299, column: 6, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 299, column: 6)
!5275 = !DILocation(line: 299, column: 10, scope: !5274)
!5276 = !DILocation(line: 299, column: 6, scope: !5148)
!5277 = !DILocation(line: 300, column: 10, scope: !5274)
!5278 = !DILocation(line: 300, column: 3, scope: !5274)
!5279 = !DILocation(line: 303, column: 10, scope: !5148)
!5280 = !DILocation(line: 303, column: 17, scope: !5148)
!5281 = !DILocation(line: 303, column: 2, scope: !5148)
!5282 = !DILocation(line: 305, column: 3, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 303, column: 21)
!5284 = !DILocation(line: 305, column: 10, scope: !5283)
!5285 = !DILocation(line: 306, column: 3, scope: !5283)
!5286 = !DILocation(line: 308, column: 3, scope: !5283)
!5287 = !DILocation(line: 308, column: 10, scope: !5283)
!5288 = !DILocation(line: 309, column: 3, scope: !5283)
!5289 = !DILocation(line: 312, column: 23, scope: !5148)
!5290 = !DILocation(line: 312, column: 39, scope: !5148)
!5291 = !DILocation(line: 312, column: 8, scope: !5148)
!5292 = !DILocation(line: 312, column: 6, scope: !5148)
!5293 = !DILocation(line: 313, column: 6, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 313, column: 6)
!5295 = !DILocation(line: 313, column: 10, scope: !5294)
!5296 = !DILocation(line: 313, column: 6, scope: !5148)
!5297 = !DILocation(line: 314, column: 10, scope: !5294)
!5298 = !DILocation(line: 314, column: 3, scope: !5294)
!5299 = !DILocation(line: 317, column: 2, scope: !5148)
!5300 = !DILocation(line: 317, column: 9, scope: !5148)
!5301 = !DILocation(line: 318, column: 2, scope: !5148)
!5302 = !DILocation(line: 318, column: 9, scope: !5148)
!5303 = !DILocation(line: 320, column: 20, scope: !5148)
!5304 = !DILocation(line: 320, column: 40, scope: !5148)
!5305 = !DILocation(line: 320, column: 8, scope: !5148)
!5306 = !DILocation(line: 320, column: 6, scope: !5148)
!5307 = !DILocation(line: 321, column: 6, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 321, column: 6)
!5309 = !DILocation(line: 321, column: 10, scope: !5308)
!5310 = !DILocation(line: 321, column: 6, scope: !5148)
!5311 = !DILocation(line: 322, column: 10, scope: !5308)
!5312 = !DILocation(line: 322, column: 3, scope: !5308)
!5313 = !DILocation(line: 324, column: 23, scope: !5148)
!5314 = !DILocation(line: 324, column: 8, scope: !5148)
!5315 = !DILocation(line: 324, column: 6, scope: !5148)
!5316 = !DILocation(line: 325, column: 6, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 325, column: 6)
!5318 = !DILocation(line: 325, column: 10, scope: !5317)
!5319 = !DILocation(line: 325, column: 6, scope: !5148)
!5320 = !DILocation(line: 326, column: 10, scope: !5317)
!5321 = !DILocation(line: 326, column: 3, scope: !5317)
!5322 = !DILocation(line: 328, column: 2, scope: !5148)
!5323 = !DILocation(line: 329, column: 1, scope: !5148)
!5324 = distinct !DISubprogram(name: "mt312_sleep", scope: !3, file: !3, line: 687, type: !4269, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!5325 = !DILocalVariable(name: "fe", arg: 1, scope: !5324, file: !3, line: 687, type: !578)
!5326 = !DILocation(line: 687, column: 45, scope: !5324)
!5327 = !DILocalVariable(name: "state", scope: !5324, file: !3, line: 689, type: !4584)
!5328 = !DILocation(line: 689, column: 22, scope: !5324)
!5329 = !DILocation(line: 689, column: 30, scope: !5324)
!5330 = !DILocation(line: 689, column: 34, scope: !5324)
!5331 = !DILocalVariable(name: "ret", scope: !5324, file: !3, line: 690, type: !432)
!5332 = !DILocation(line: 690, column: 6, scope: !5324)
!5333 = !DILocalVariable(name: "config", scope: !5324, file: !3, line: 691, type: !483)
!5334 = !DILocation(line: 691, column: 5, scope: !5324)
!5335 = !DILocation(line: 694, column: 20, scope: !5324)
!5336 = !DILocation(line: 694, column: 8, scope: !5324)
!5337 = !DILocation(line: 694, column: 6, scope: !5324)
!5338 = !DILocation(line: 695, column: 6, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 695, column: 6)
!5340 = !DILocation(line: 695, column: 10, scope: !5339)
!5341 = !DILocation(line: 695, column: 6, scope: !5324)
!5342 = !DILocation(line: 696, column: 10, scope: !5339)
!5343 = !DILocation(line: 696, column: 3, scope: !5339)
!5344 = !DILocation(line: 698, column: 6, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 698, column: 6)
!5346 = !DILocation(line: 698, column: 13, scope: !5345)
!5347 = !DILocation(line: 698, column: 16, scope: !5345)
!5348 = !DILocation(line: 698, column: 6, scope: !5324)
!5349 = !DILocation(line: 700, column: 24, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 698, column: 31)
!5351 = !DILocation(line: 700, column: 9, scope: !5350)
!5352 = !DILocation(line: 700, column: 7, scope: !5350)
!5353 = !DILocation(line: 701, column: 7, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 701, column: 7)
!5355 = !DILocation(line: 701, column: 11, scope: !5354)
!5356 = !DILocation(line: 701, column: 7, scope: !5350)
!5357 = !DILocation(line: 702, column: 11, scope: !5354)
!5358 = !DILocation(line: 702, column: 4, scope: !5354)
!5359 = !DILocation(line: 705, column: 24, scope: !5350)
!5360 = !DILocation(line: 705, column: 9, scope: !5350)
!5361 = !DILocation(line: 705, column: 7, scope: !5350)
!5362 = !DILocation(line: 706, column: 7, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 706, column: 7)
!5364 = !DILocation(line: 706, column: 11, scope: !5363)
!5365 = !DILocation(line: 706, column: 7, scope: !5350)
!5366 = !DILocation(line: 707, column: 11, scope: !5363)
!5367 = !DILocation(line: 707, column: 4, scope: !5363)
!5368 = !DILocation(line: 708, column: 2, scope: !5350)
!5369 = !DILocation(line: 710, column: 22, scope: !5324)
!5370 = !DILocation(line: 710, column: 8, scope: !5324)
!5371 = !DILocation(line: 710, column: 6, scope: !5324)
!5372 = !DILocation(line: 711, column: 6, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 711, column: 6)
!5374 = !DILocation(line: 711, column: 10, scope: !5373)
!5375 = !DILocation(line: 711, column: 6, scope: !5324)
!5376 = !DILocation(line: 712, column: 10, scope: !5373)
!5377 = !DILocation(line: 712, column: 3, scope: !5373)
!5378 = !DILocation(line: 715, column: 23, scope: !5324)
!5379 = !DILocation(line: 715, column: 38, scope: !5324)
!5380 = !DILocation(line: 715, column: 45, scope: !5324)
!5381 = !DILocation(line: 715, column: 8, scope: !5324)
!5382 = !DILocation(line: 715, column: 6, scope: !5324)
!5383 = !DILocation(line: 716, column: 6, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 716, column: 6)
!5385 = !DILocation(line: 716, column: 10, scope: !5384)
!5386 = !DILocation(line: 716, column: 6, scope: !5324)
!5387 = !DILocation(line: 717, column: 10, scope: !5384)
!5388 = !DILocation(line: 717, column: 3, scope: !5384)
!5389 = !DILocation(line: 719, column: 2, scope: !5324)
!5390 = !DILocation(line: 720, column: 1, scope: !5324)
!5391 = distinct !DISubprogram(name: "mt312_set_frontend", scope: !3, file: !3, line: 530, type: !4269, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!5392 = !DILocalVariable(name: "fe", arg: 1, scope: !5391, file: !3, line: 530, type: !578)
!5393 = !DILocation(line: 530, column: 52, scope: !5391)
!5394 = !DILocalVariable(name: "p", scope: !5391, file: !3, line: 532, type: !4302)
!5395 = !DILocation(line: 532, column: 34, scope: !5391)
!5396 = !DILocation(line: 532, column: 39, scope: !5391)
!5397 = !DILocation(line: 532, column: 43, scope: !5391)
!5398 = !DILocalVariable(name: "state", scope: !5391, file: !3, line: 533, type: !4584)
!5399 = !DILocation(line: 533, column: 22, scope: !5391)
!5400 = !DILocation(line: 533, column: 30, scope: !5391)
!5401 = !DILocation(line: 533, column: 34, scope: !5391)
!5402 = !DILocalVariable(name: "ret", scope: !5391, file: !3, line: 534, type: !432)
!5403 = !DILocation(line: 534, column: 6, scope: !5391)
!5404 = !DILocalVariable(name: "buf", scope: !5391, file: !3, line: 535, type: !5405)
!5405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 40, elements: !5406)
!5406 = !{!5407}
!5407 = !DISubrange(count: 5)
!5408 = !DILocation(line: 535, column: 5, scope: !5391)
!5409 = !DILocalVariable(name: "config_val", scope: !5391, file: !3, line: 535, type: !483)
!5410 = !DILocation(line: 535, column: 13, scope: !5391)
!5411 = !DILocalVariable(name: "sr", scope: !5391, file: !3, line: 536, type: !475)
!5412 = !DILocation(line: 536, column: 6, scope: !5391)
!5413 = !DILocalVariable(name: "fec_tab", scope: !5391, file: !3, line: 538, type: !5414)
!5414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4277, size: 80, elements: !5415)
!5415 = !{!5416}
!5416 = !DISubrange(count: 10)
!5417 = !DILocation(line: 538, column: 11, scope: !5391)
!5418 = !DILocalVariable(name: "inv_tab", scope: !5391, file: !3, line: 540, type: !5419)
!5419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4277, size: 24, elements: !673)
!5420 = !DILocation(line: 540, column: 11, scope: !5391)
!5421 = !DILocation(line: 542, column: 2, scope: !5391)
!5422 = !DILocation(line: 542, column: 2, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 542, column: 2)
!5424 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 542, column: 2)
!5425 = !DILocation(line: 542, column: 2, scope: !5424)
!5426 = !DILocation(line: 544, column: 7, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 544, column: 6)
!5428 = !DILocation(line: 544, column: 10, scope: !5427)
!5429 = !DILocation(line: 544, column: 22, scope: !5427)
!5430 = !DILocation(line: 544, column: 26, scope: !5427)
!5431 = !DILocation(line: 544, column: 30, scope: !5427)
!5432 = !DILocation(line: 544, column: 35, scope: !5427)
!5433 = !DILocation(line: 544, column: 52, scope: !5427)
!5434 = !DILocation(line: 544, column: 20, scope: !5427)
!5435 = !DILocation(line: 545, column: 6, scope: !5427)
!5436 = !DILocation(line: 545, column: 10, scope: !5427)
!5437 = !DILocation(line: 545, column: 13, scope: !5427)
!5438 = !DILocation(line: 545, column: 25, scope: !5427)
!5439 = !DILocation(line: 545, column: 29, scope: !5427)
!5440 = !DILocation(line: 545, column: 33, scope: !5427)
!5441 = !DILocation(line: 545, column: 38, scope: !5427)
!5442 = !DILocation(line: 545, column: 55, scope: !5427)
!5443 = !DILocation(line: 545, column: 23, scope: !5427)
!5444 = !DILocation(line: 544, column: 6, scope: !5391)
!5445 = !DILocation(line: 546, column: 3, scope: !5427)
!5446 = !DILocation(line: 548, column: 12, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 548, column: 6)
!5448 = !DILocation(line: 548, column: 15, scope: !5447)
!5449 = !DILocation(line: 548, column: 25, scope: !5447)
!5450 = !DILocation(line: 549, column: 6, scope: !5447)
!5451 = !DILocation(line: 549, column: 10, scope: !5447)
!5452 = !DILocation(line: 549, column: 13, scope: !5447)
!5453 = !DILocation(line: 549, column: 23, scope: !5447)
!5454 = !DILocation(line: 548, column: 6, scope: !5391)
!5455 = !DILocation(line: 550, column: 3, scope: !5447)
!5456 = !DILocation(line: 552, column: 7, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 552, column: 6)
!5458 = !DILocation(line: 552, column: 10, scope: !5457)
!5459 = !DILocation(line: 552, column: 24, scope: !5457)
!5460 = !DILocation(line: 552, column: 28, scope: !5457)
!5461 = !DILocation(line: 552, column: 32, scope: !5457)
!5462 = !DILocation(line: 552, column: 37, scope: !5457)
!5463 = !DILocation(line: 552, column: 22, scope: !5457)
!5464 = !DILocation(line: 553, column: 6, scope: !5457)
!5465 = !DILocation(line: 553, column: 10, scope: !5457)
!5466 = !DILocation(line: 553, column: 13, scope: !5457)
!5467 = !DILocation(line: 553, column: 27, scope: !5457)
!5468 = !DILocation(line: 553, column: 31, scope: !5457)
!5469 = !DILocation(line: 553, column: 35, scope: !5457)
!5470 = !DILocation(line: 553, column: 40, scope: !5457)
!5471 = !DILocation(line: 553, column: 25, scope: !5457)
!5472 = !DILocation(line: 552, column: 6, scope: !5391)
!5473 = !DILocation(line: 554, column: 3, scope: !5457)
!5474 = !DILocation(line: 556, column: 12, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 556, column: 6)
!5476 = !DILocation(line: 556, column: 15, scope: !5475)
!5477 = !DILocation(line: 556, column: 25, scope: !5475)
!5478 = !DILocation(line: 557, column: 6, scope: !5475)
!5479 = !DILocation(line: 557, column: 10, scope: !5475)
!5480 = !DILocation(line: 557, column: 13, scope: !5475)
!5481 = !DILocation(line: 557, column: 23, scope: !5475)
!5482 = !DILocation(line: 556, column: 6, scope: !5391)
!5483 = !DILocation(line: 558, column: 3, scope: !5475)
!5484 = !DILocation(line: 560, column: 7, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 560, column: 6)
!5486 = !DILocation(line: 560, column: 10, scope: !5485)
!5487 = !DILocation(line: 560, column: 20, scope: !5485)
!5488 = !DILocation(line: 561, column: 6, scope: !5485)
!5489 = !DILocation(line: 561, column: 10, scope: !5485)
!5490 = !DILocation(line: 561, column: 13, scope: !5485)
!5491 = !DILocation(line: 561, column: 23, scope: !5485)
!5492 = !DILocation(line: 560, column: 6, scope: !5391)
!5493 = !DILocation(line: 562, column: 3, scope: !5485)
!5494 = !DILocation(line: 564, column: 10, scope: !5391)
!5495 = !DILocation(line: 564, column: 17, scope: !5391)
!5496 = !DILocation(line: 564, column: 2, scope: !5391)
!5497 = !DILocation(line: 570, column: 23, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 564, column: 21)
!5499 = !DILocation(line: 570, column: 9, scope: !5498)
!5500 = !DILocation(line: 570, column: 7, scope: !5498)
!5501 = !DILocation(line: 571, column: 7, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 571, column: 7)
!5503 = !DILocation(line: 571, column: 11, scope: !5502)
!5504 = !DILocation(line: 571, column: 7, scope: !5498)
!5505 = !DILocation(line: 572, column: 11, scope: !5502)
!5506 = !DILocation(line: 572, column: 4, scope: !5502)
!5507 = !DILocation(line: 573, column: 7, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 573, column: 7)
!5509 = !DILocation(line: 573, column: 10, scope: !5508)
!5510 = !DILocation(line: 573, column: 22, scope: !5508)
!5511 = !DILocation(line: 573, column: 7, scope: !5498)
!5512 = !DILocation(line: 575, column: 8, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5514, file: !3, line: 575, column: 8)
!5514 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 573, column: 35)
!5515 = !DILocation(line: 575, column: 15, scope: !5513)
!5516 = !DILocation(line: 575, column: 25, scope: !5513)
!5517 = !DILocation(line: 575, column: 8, scope: !5514)
!5518 = !DILocation(line: 577, column: 5, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 575, column: 31)
!5520 = !DILocation(line: 577, column: 12, scope: !5519)
!5521 = !DILocation(line: 577, column: 22, scope: !5519)
!5522 = !DILocation(line: 578, column: 24, scope: !5519)
!5523 = !DILocation(line: 578, column: 11, scope: !5519)
!5524 = !DILocation(line: 578, column: 9, scope: !5519)
!5525 = !DILocation(line: 579, column: 9, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 579, column: 9)
!5527 = !DILocation(line: 579, column: 13, scope: !5526)
!5528 = !DILocation(line: 579, column: 9, scope: !5519)
!5529 = !DILocation(line: 580, column: 13, scope: !5526)
!5530 = !DILocation(line: 580, column: 6, scope: !5526)
!5531 = !DILocation(line: 581, column: 4, scope: !5519)
!5532 = !DILocation(line: 582, column: 3, scope: !5514)
!5533 = !DILocation(line: 583, column: 8, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 583, column: 8)
!5535 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 582, column: 10)
!5536 = !DILocation(line: 583, column: 15, scope: !5534)
!5537 = !DILocation(line: 583, column: 25, scope: !5534)
!5538 = !DILocation(line: 583, column: 8, scope: !5535)
!5539 = !DILocation(line: 585, column: 5, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5534, file: !3, line: 583, column: 31)
!5541 = !DILocation(line: 585, column: 12, scope: !5540)
!5542 = !DILocation(line: 585, column: 22, scope: !5540)
!5543 = !DILocation(line: 586, column: 24, scope: !5540)
!5544 = !DILocation(line: 586, column: 11, scope: !5540)
!5545 = !DILocation(line: 586, column: 9, scope: !5540)
!5546 = !DILocation(line: 587, column: 9, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 587, column: 9)
!5548 = !DILocation(line: 587, column: 13, scope: !5547)
!5549 = !DILocation(line: 587, column: 9, scope: !5540)
!5550 = !DILocation(line: 588, column: 13, scope: !5547)
!5551 = !DILocation(line: 588, column: 6, scope: !5547)
!5552 = !DILocation(line: 589, column: 4, scope: !5540)
!5553 = !DILocation(line: 591, column: 3, scope: !5498)
!5554 = !DILocation(line: 595, column: 3, scope: !5498)
!5555 = !DILocation(line: 598, column: 3, scope: !5498)
!5556 = !DILocation(line: 601, column: 6, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 601, column: 6)
!5558 = !DILocation(line: 601, column: 10, scope: !5557)
!5559 = !DILocation(line: 601, column: 14, scope: !5557)
!5560 = !DILocation(line: 601, column: 24, scope: !5557)
!5561 = !DILocation(line: 601, column: 6, scope: !5391)
!5562 = !DILocation(line: 602, column: 3, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 601, column: 36)
!5564 = !DILocation(line: 602, column: 7, scope: !5563)
!5565 = !DILocation(line: 602, column: 11, scope: !5563)
!5566 = !DILocation(line: 602, column: 21, scope: !5563)
!5567 = !DILocation(line: 602, column: 32, scope: !5563)
!5568 = !DILocation(line: 603, column: 7, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 603, column: 7)
!5570 = !DILocation(line: 603, column: 11, scope: !5569)
!5571 = !DILocation(line: 603, column: 15, scope: !5569)
!5572 = !DILocation(line: 603, column: 7, scope: !5563)
!5573 = !DILocation(line: 604, column: 4, scope: !5569)
!5574 = !DILocation(line: 604, column: 8, scope: !5569)
!5575 = !DILocation(line: 604, column: 12, scope: !5569)
!5576 = !DILocation(line: 604, column: 26, scope: !5569)
!5577 = !DILocation(line: 605, column: 2, scope: !5563)
!5578 = !DILocalVariable(name: "__x", scope: !5579, file: !3, line: 608, type: !7)
!5579 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 608, column: 7)
!5580 = !DILocation(line: 608, column: 7, scope: !5579)
!5581 = !DILocalVariable(name: "__d", scope: !5579, file: !3, line: 608, type: !432)
!5582 = !DILocation(line: 608, column: 7, scope: !5391)
!5583 = !DILocation(line: 608, column: 5, scope: !5391)
!5584 = !DILocation(line: 611, column: 12, scope: !5391)
!5585 = !DILocation(line: 611, column: 15, scope: !5391)
!5586 = !DILocation(line: 611, column: 21, scope: !5391)
!5587 = !DILocation(line: 611, column: 11, scope: !5391)
!5588 = !DILocation(line: 611, column: 2, scope: !5391)
!5589 = !DILocation(line: 611, column: 9, scope: !5391)
!5590 = !DILocation(line: 612, column: 12, scope: !5391)
!5591 = !DILocation(line: 612, column: 15, scope: !5391)
!5592 = !DILocation(line: 612, column: 21, scope: !5391)
!5593 = !DILocation(line: 612, column: 11, scope: !5391)
!5594 = !DILocation(line: 612, column: 2, scope: !5391)
!5595 = !DILocation(line: 612, column: 9, scope: !5391)
!5596 = !DILocation(line: 615, column: 19, scope: !5391)
!5597 = !DILocation(line: 615, column: 22, scope: !5391)
!5598 = !DILocation(line: 615, column: 11, scope: !5391)
!5599 = !DILocation(line: 615, column: 43, scope: !5391)
!5600 = !DILocation(line: 615, column: 46, scope: !5391)
!5601 = !DILocation(line: 615, column: 35, scope: !5391)
!5602 = !DILocation(line: 615, column: 33, scope: !5391)
!5603 = !DILocation(line: 615, column: 2, scope: !5391)
!5604 = !DILocation(line: 615, column: 9, scope: !5391)
!5605 = !DILocation(line: 618, column: 2, scope: !5391)
!5606 = !DILocation(line: 618, column: 9, scope: !5391)
!5607 = !DILocation(line: 620, column: 6, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 620, column: 6)
!5609 = !DILocation(line: 620, column: 9, scope: !5608)
!5610 = !DILocation(line: 620, column: 21, scope: !5608)
!5611 = !DILocation(line: 620, column: 6, scope: !5391)
!5612 = !DILocation(line: 621, column: 3, scope: !5608)
!5613 = !DILocation(line: 621, column: 10, scope: !5608)
!5614 = !DILocation(line: 624, column: 2, scope: !5391)
!5615 = !DILocation(line: 624, column: 9, scope: !5391)
!5616 = !DILocation(line: 626, column: 20, scope: !5391)
!5617 = !DILocation(line: 626, column: 39, scope: !5391)
!5618 = !DILocation(line: 626, column: 8, scope: !5391)
!5619 = !DILocation(line: 626, column: 6, scope: !5391)
!5620 = !DILocation(line: 627, column: 6, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 627, column: 6)
!5622 = !DILocation(line: 627, column: 10, scope: !5621)
!5623 = !DILocation(line: 627, column: 6, scope: !5391)
!5624 = !DILocation(line: 628, column: 10, scope: !5621)
!5625 = !DILocation(line: 628, column: 3, scope: !5621)
!5626 = !DILocation(line: 630, column: 20, scope: !5391)
!5627 = !DILocation(line: 630, column: 8, scope: !5391)
!5628 = !DILocation(line: 630, column: 6, scope: !5391)
!5629 = !DILocation(line: 631, column: 6, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 631, column: 6)
!5631 = !DILocation(line: 631, column: 10, scope: !5630)
!5632 = !DILocation(line: 631, column: 6, scope: !5391)
!5633 = !DILocation(line: 632, column: 10, scope: !5630)
!5634 = !DILocation(line: 632, column: 3, scope: !5630)
!5635 = !DILocation(line: 634, column: 2, scope: !5391)
!5636 = !DILocation(line: 635, column: 1, scope: !5391)
!5637 = distinct !DISubprogram(name: "mt312_get_tune_settings", scope: !3, file: !3, line: 722, type: !4290, scopeLine: 724, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!5638 = !DILocalVariable(name: "fe", arg: 1, scope: !5637, file: !3, line: 722, type: !578)
!5639 = !DILocation(line: 722, column: 57, scope: !5637)
!5640 = !DILocalVariable(name: "fesettings", arg: 2, scope: !5637, file: !3, line: 723, type: !4292)
!5641 = !DILocation(line: 723, column: 38, scope: !5637)
!5642 = !DILocation(line: 725, column: 2, scope: !5637)
!5643 = !DILocation(line: 725, column: 14, scope: !5637)
!5644 = !DILocation(line: 725, column: 27, scope: !5637)
!5645 = !DILocation(line: 726, column: 2, scope: !5637)
!5646 = !DILocation(line: 726, column: 14, scope: !5637)
!5647 = !DILocation(line: 726, column: 24, scope: !5637)
!5648 = !DILocation(line: 727, column: 2, scope: !5637)
!5649 = !DILocation(line: 727, column: 14, scope: !5637)
!5650 = !DILocation(line: 727, column: 24, scope: !5637)
!5651 = !DILocation(line: 728, column: 2, scope: !5637)
!5652 = distinct !DISubprogram(name: "mt312_get_frontend", scope: !3, file: !3, line: 637, type: !4300, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!5653 = !DILocalVariable(name: "fe", arg: 1, scope: !5652, file: !3, line: 637, type: !578)
!5654 = !DILocation(line: 637, column: 52, scope: !5652)
!5655 = !DILocalVariable(name: "p", arg: 2, scope: !5652, file: !3, line: 638, type: !4302)
!5656 = !DILocation(line: 638, column: 42, scope: !5652)
!5657 = !DILocalVariable(name: "state", scope: !5652, file: !3, line: 640, type: !4584)
!5658 = !DILocation(line: 640, column: 22, scope: !5652)
!5659 = !DILocation(line: 640, column: 30, scope: !5652)
!5660 = !DILocation(line: 640, column: 34, scope: !5652)
!5661 = !DILocalVariable(name: "ret", scope: !5652, file: !3, line: 641, type: !432)
!5662 = !DILocation(line: 641, column: 6, scope: !5652)
!5663 = !DILocation(line: 643, column: 28, scope: !5652)
!5664 = !DILocation(line: 643, column: 36, scope: !5652)
!5665 = !DILocation(line: 643, column: 39, scope: !5652)
!5666 = !DILocation(line: 643, column: 8, scope: !5652)
!5667 = !DILocation(line: 643, column: 6, scope: !5652)
!5668 = !DILocation(line: 644, column: 6, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 644, column: 6)
!5670 = !DILocation(line: 644, column: 10, scope: !5669)
!5671 = !DILocation(line: 644, column: 6, scope: !5652)
!5672 = !DILocation(line: 645, column: 10, scope: !5669)
!5673 = !DILocation(line: 645, column: 3, scope: !5669)
!5674 = !DILocation(line: 647, column: 30, scope: !5652)
!5675 = !DILocation(line: 647, column: 38, scope: !5652)
!5676 = !DILocation(line: 647, column: 41, scope: !5652)
!5677 = !DILocation(line: 647, column: 8, scope: !5652)
!5678 = !DILocation(line: 647, column: 6, scope: !5652)
!5679 = !DILocation(line: 648, column: 6, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 648, column: 6)
!5681 = !DILocation(line: 648, column: 10, scope: !5680)
!5682 = !DILocation(line: 648, column: 6, scope: !5652)
!5683 = !DILocation(line: 649, column: 10, scope: !5680)
!5684 = !DILocation(line: 649, column: 3, scope: !5680)
!5685 = !DILocation(line: 651, column: 28, scope: !5652)
!5686 = !DILocation(line: 651, column: 36, scope: !5652)
!5687 = !DILocation(line: 651, column: 39, scope: !5652)
!5688 = !DILocation(line: 651, column: 8, scope: !5652)
!5689 = !DILocation(line: 651, column: 6, scope: !5652)
!5690 = !DILocation(line: 652, column: 6, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 652, column: 6)
!5692 = !DILocation(line: 652, column: 10, scope: !5691)
!5693 = !DILocation(line: 652, column: 6, scope: !5652)
!5694 = !DILocation(line: 653, column: 10, scope: !5691)
!5695 = !DILocation(line: 653, column: 3, scope: !5691)
!5696 = !DILocation(line: 655, column: 2, scope: !5652)
!5697 = !DILocation(line: 656, column: 1, scope: !5652)
!5698 = distinct !DISubprogram(name: "mt312_read_status", scope: !3, file: !3, line: 433, type: !4305, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!5699 = !DILocalVariable(name: "fe", arg: 1, scope: !5698, file: !3, line: 433, type: !578)
!5700 = !DILocation(line: 433, column: 51, scope: !5698)
!5701 = !DILocalVariable(name: "s", arg: 2, scope: !5698, file: !3, line: 433, type: !4282)
!5702 = !DILocation(line: 433, column: 71, scope: !5698)
!5703 = !DILocalVariable(name: "state", scope: !5698, file: !3, line: 435, type: !4584)
!5704 = !DILocation(line: 435, column: 22, scope: !5698)
!5705 = !DILocation(line: 435, column: 30, scope: !5698)
!5706 = !DILocation(line: 435, column: 34, scope: !5698)
!5707 = !DILocalVariable(name: "ret", scope: !5698, file: !3, line: 436, type: !432)
!5708 = !DILocation(line: 436, column: 6, scope: !5698)
!5709 = !DILocalVariable(name: "status", scope: !5698, file: !3, line: 437, type: !5710)
!5710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 24, elements: !673)
!5711 = !DILocation(line: 437, column: 5, scope: !5698)
!5712 = !DILocation(line: 439, column: 3, scope: !5698)
!5713 = !DILocation(line: 439, column: 5, scope: !5698)
!5714 = !DILocation(line: 441, column: 19, scope: !5698)
!5715 = !DILocation(line: 441, column: 39, scope: !5698)
!5716 = !DILocation(line: 441, column: 8, scope: !5698)
!5717 = !DILocation(line: 441, column: 6, scope: !5698)
!5718 = !DILocation(line: 442, column: 6, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 442, column: 6)
!5720 = !DILocation(line: 442, column: 10, scope: !5719)
!5721 = !DILocation(line: 442, column: 6, scope: !5698)
!5722 = !DILocation(line: 443, column: 10, scope: !5719)
!5723 = !DILocation(line: 443, column: 3, scope: !5719)
!5724 = !DILocation(line: 445, column: 2, scope: !5698)
!5725 = !DILocation(line: 445, column: 2, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5727, file: !3, line: 445, column: 2)
!5727 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 445, column: 2)
!5728 = !DILocation(line: 445, column: 2, scope: !5727)
!5729 = !DILocation(line: 448, column: 6, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 448, column: 6)
!5731 = !DILocation(line: 448, column: 16, scope: !5730)
!5732 = !DILocation(line: 448, column: 6, scope: !5698)
!5733 = !DILocation(line: 449, column: 4, scope: !5730)
!5734 = !DILocation(line: 449, column: 6, scope: !5730)
!5735 = !DILocation(line: 449, column: 3, scope: !5730)
!5736 = !DILocation(line: 450, column: 6, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 450, column: 6)
!5738 = !DILocation(line: 450, column: 16, scope: !5737)
!5739 = !DILocation(line: 450, column: 6, scope: !5698)
!5740 = !DILocation(line: 451, column: 4, scope: !5737)
!5741 = !DILocation(line: 451, column: 6, scope: !5737)
!5742 = !DILocation(line: 451, column: 3, scope: !5737)
!5743 = !DILocation(line: 452, column: 6, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 452, column: 6)
!5745 = !DILocation(line: 452, column: 16, scope: !5744)
!5746 = !DILocation(line: 452, column: 6, scope: !5698)
!5747 = !DILocation(line: 453, column: 4, scope: !5744)
!5748 = !DILocation(line: 453, column: 6, scope: !5744)
!5749 = !DILocation(line: 453, column: 3, scope: !5744)
!5750 = !DILocation(line: 454, column: 6, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 454, column: 6)
!5752 = !DILocation(line: 454, column: 16, scope: !5751)
!5753 = !DILocation(line: 454, column: 6, scope: !5698)
!5754 = !DILocation(line: 455, column: 4, scope: !5751)
!5755 = !DILocation(line: 455, column: 6, scope: !5751)
!5756 = !DILocation(line: 455, column: 3, scope: !5751)
!5757 = !DILocation(line: 456, column: 6, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 456, column: 6)
!5759 = !DILocation(line: 456, column: 16, scope: !5758)
!5760 = !DILocation(line: 456, column: 6, scope: !5698)
!5761 = !DILocation(line: 457, column: 4, scope: !5758)
!5762 = !DILocation(line: 457, column: 6, scope: !5758)
!5763 = !DILocation(line: 457, column: 3, scope: !5758)
!5764 = !DILocation(line: 459, column: 2, scope: !5698)
!5765 = !DILocation(line: 460, column: 1, scope: !5698)
!5766 = distinct !DISubprogram(name: "mt312_read_ber", scope: !3, file: !3, line: 462, type: !4309, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!5767 = !DILocalVariable(name: "fe", arg: 1, scope: !5766, file: !3, line: 462, type: !578)
!5768 = !DILocation(line: 462, column: 48, scope: !5766)
!5769 = !DILocalVariable(name: "ber", arg: 2, scope: !5766, file: !3, line: 462, type: !1706)
!5770 = !DILocation(line: 462, column: 57, scope: !5766)
!5771 = !DILocalVariable(name: "state", scope: !5766, file: !3, line: 464, type: !4584)
!5772 = !DILocation(line: 464, column: 22, scope: !5766)
!5773 = !DILocation(line: 464, column: 30, scope: !5766)
!5774 = !DILocation(line: 464, column: 34, scope: !5766)
!5775 = !DILocalVariable(name: "ret", scope: !5766, file: !3, line: 465, type: !432)
!5776 = !DILocation(line: 465, column: 6, scope: !5766)
!5777 = !DILocalVariable(name: "buf", scope: !5766, file: !3, line: 466, type: !5710)
!5778 = !DILocation(line: 466, column: 5, scope: !5766)
!5779 = !DILocation(line: 468, column: 19, scope: !5766)
!5780 = !DILocation(line: 468, column: 39, scope: !5766)
!5781 = !DILocation(line: 468, column: 8, scope: !5766)
!5782 = !DILocation(line: 468, column: 6, scope: !5766)
!5783 = !DILocation(line: 469, column: 6, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5766, file: !3, line: 469, column: 6)
!5785 = !DILocation(line: 469, column: 10, scope: !5784)
!5786 = !DILocation(line: 469, column: 6, scope: !5766)
!5787 = !DILocation(line: 470, column: 10, scope: !5784)
!5788 = !DILocation(line: 470, column: 3, scope: !5784)
!5789 = !DILocation(line: 472, column: 11, scope: !5766)
!5790 = !DILocation(line: 472, column: 18, scope: !5766)
!5791 = !DILocation(line: 472, column: 28, scope: !5766)
!5792 = !DILocation(line: 472, column: 35, scope: !5766)
!5793 = !DILocation(line: 472, column: 25, scope: !5766)
!5794 = !DILocation(line: 472, column: 43, scope: !5766)
!5795 = !DILocation(line: 472, column: 41, scope: !5766)
!5796 = !DILocation(line: 472, column: 51, scope: !5766)
!5797 = !DILocation(line: 472, column: 3, scope: !5766)
!5798 = !DILocation(line: 472, column: 7, scope: !5766)
!5799 = !DILocation(line: 474, column: 2, scope: !5766)
!5800 = !DILocation(line: 475, column: 1, scope: !5766)
!5801 = distinct !DISubprogram(name: "mt312_read_signal_strength", scope: !3, file: !3, line: 477, type: !4313, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!5802 = !DILocalVariable(name: "fe", arg: 1, scope: !5801, file: !3, line: 477, type: !578)
!5803 = !DILocation(line: 477, column: 60, scope: !5801)
!5804 = !DILocalVariable(name: "signal_strength", arg: 2, scope: !5801, file: !3, line: 478, type: !4315)
!5805 = !DILocation(line: 478, column: 16, scope: !5801)
!5806 = !DILocalVariable(name: "state", scope: !5801, file: !3, line: 480, type: !4584)
!5807 = !DILocation(line: 480, column: 22, scope: !5801)
!5808 = !DILocation(line: 480, column: 30, scope: !5801)
!5809 = !DILocation(line: 480, column: 34, scope: !5801)
!5810 = !DILocalVariable(name: "ret", scope: !5801, file: !3, line: 481, type: !432)
!5811 = !DILocation(line: 481, column: 6, scope: !5801)
!5812 = !DILocalVariable(name: "buf", scope: !5801, file: !3, line: 482, type: !5710)
!5813 = !DILocation(line: 482, column: 5, scope: !5801)
!5814 = !DILocalVariable(name: "agc", scope: !5801, file: !3, line: 483, type: !475)
!5815 = !DILocation(line: 483, column: 6, scope: !5801)
!5816 = !DILocalVariable(name: "err_db", scope: !5801, file: !3, line: 484, type: !433)
!5817 = !DILocation(line: 484, column: 6, scope: !5801)
!5818 = !DILocation(line: 486, column: 19, scope: !5801)
!5819 = !DILocation(line: 486, column: 33, scope: !5801)
!5820 = !DILocation(line: 486, column: 8, scope: !5801)
!5821 = !DILocation(line: 486, column: 6, scope: !5801)
!5822 = !DILocation(line: 487, column: 6, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5801, file: !3, line: 487, column: 6)
!5824 = !DILocation(line: 487, column: 10, scope: !5823)
!5825 = !DILocation(line: 487, column: 6, scope: !5801)
!5826 = !DILocation(line: 488, column: 10, scope: !5823)
!5827 = !DILocation(line: 488, column: 3, scope: !5823)
!5828 = !DILocation(line: 490, column: 9, scope: !5801)
!5829 = !DILocation(line: 490, column: 16, scope: !5801)
!5830 = !DILocation(line: 490, column: 25, scope: !5801)
!5831 = !DILocation(line: 490, column: 32, scope: !5801)
!5832 = !DILocation(line: 490, column: 22, scope: !5801)
!5833 = !DILocation(line: 490, column: 8, scope: !5801)
!5834 = !DILocation(line: 490, column: 6, scope: !5801)
!5835 = !DILocation(line: 491, column: 20, scope: !5801)
!5836 = !DILocation(line: 491, column: 27, scope: !5801)
!5837 = !DILocation(line: 491, column: 35, scope: !5801)
!5838 = !DILocation(line: 491, column: 44, scope: !5801)
!5839 = !DILocation(line: 491, column: 51, scope: !5801)
!5840 = !DILocation(line: 491, column: 42, scope: !5801)
!5841 = !DILocation(line: 491, column: 11, scope: !5801)
!5842 = !DILocation(line: 491, column: 57, scope: !5801)
!5843 = !DILocation(line: 491, column: 9, scope: !5801)
!5844 = !DILocation(line: 493, column: 21, scope: !5801)
!5845 = !DILocation(line: 493, column: 3, scope: !5801)
!5846 = !DILocation(line: 493, column: 19, scope: !5801)
!5847 = !DILocation(line: 495, column: 2, scope: !5801)
!5848 = !DILocation(line: 495, column: 2, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5850, file: !3, line: 495, column: 2)
!5850 = distinct !DILexicalBlock(scope: !5801, file: !3, line: 495, column: 2)
!5851 = !DILocation(line: 495, column: 2, scope: !5850)
!5852 = !DILocation(line: 497, column: 2, scope: !5801)
!5853 = !DILocation(line: 498, column: 1, scope: !5801)
!5854 = distinct !DISubprogram(name: "mt312_read_snr", scope: !3, file: !3, line: 500, type: !4313, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!5855 = !DILocalVariable(name: "fe", arg: 1, scope: !5854, file: !3, line: 500, type: !578)
!5856 = !DILocation(line: 500, column: 48, scope: !5854)
!5857 = !DILocalVariable(name: "snr", arg: 2, scope: !5854, file: !3, line: 500, type: !4315)
!5858 = !DILocation(line: 500, column: 57, scope: !5854)
!5859 = !DILocalVariable(name: "state", scope: !5854, file: !3, line: 502, type: !4584)
!5860 = !DILocation(line: 502, column: 22, scope: !5854)
!5861 = !DILocation(line: 502, column: 30, scope: !5854)
!5862 = !DILocation(line: 502, column: 34, scope: !5854)
!5863 = !DILocalVariable(name: "ret", scope: !5854, file: !3, line: 503, type: !432)
!5864 = !DILocation(line: 503, column: 6, scope: !5854)
!5865 = !DILocalVariable(name: "buf", scope: !5854, file: !3, line: 504, type: !5158)
!5866 = !DILocation(line: 504, column: 5, scope: !5854)
!5867 = !DILocation(line: 506, column: 19, scope: !5854)
!5868 = !DILocation(line: 506, column: 35, scope: !5854)
!5869 = !DILocation(line: 506, column: 8, scope: !5854)
!5870 = !DILocation(line: 506, column: 6, scope: !5854)
!5871 = !DILocation(line: 507, column: 6, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5854, file: !3, line: 507, column: 6)
!5873 = !DILocation(line: 507, column: 10, scope: !5872)
!5874 = !DILocation(line: 507, column: 6, scope: !5854)
!5875 = !DILocation(line: 508, column: 10, scope: !5872)
!5876 = !DILocation(line: 508, column: 3, scope: !5872)
!5877 = !DILocation(line: 510, column: 22, scope: !5854)
!5878 = !DILocation(line: 510, column: 29, scope: !5854)
!5879 = !DILocation(line: 510, column: 37, scope: !5854)
!5880 = !DILocation(line: 510, column: 45, scope: !5854)
!5881 = !DILocation(line: 510, column: 43, scope: !5854)
!5882 = !DILocation(line: 510, column: 53, scope: !5854)
!5883 = !DILocation(line: 510, column: 16, scope: !5854)
!5884 = !DILocation(line: 510, column: 9, scope: !5854)
!5885 = !DILocation(line: 510, column: 3, scope: !5854)
!5886 = !DILocation(line: 510, column: 7, scope: !5854)
!5887 = !DILocation(line: 512, column: 2, scope: !5854)
!5888 = !DILocation(line: 513, column: 1, scope: !5854)
!5889 = distinct !DISubprogram(name: "mt312_read_ucblocks", scope: !3, file: !3, line: 515, type: !4309, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!5890 = !DILocalVariable(name: "fe", arg: 1, scope: !5889, file: !3, line: 515, type: !578)
!5891 = !DILocation(line: 515, column: 53, scope: !5889)
!5892 = !DILocalVariable(name: "ubc", arg: 2, scope: !5889, file: !3, line: 515, type: !1706)
!5893 = !DILocation(line: 515, column: 62, scope: !5889)
!5894 = !DILocalVariable(name: "state", scope: !5889, file: !3, line: 517, type: !4584)
!5895 = !DILocation(line: 517, column: 22, scope: !5889)
!5896 = !DILocation(line: 517, column: 30, scope: !5889)
!5897 = !DILocation(line: 517, column: 34, scope: !5889)
!5898 = !DILocalVariable(name: "ret", scope: !5889, file: !3, line: 518, type: !432)
!5899 = !DILocation(line: 518, column: 6, scope: !5889)
!5900 = !DILocalVariable(name: "buf", scope: !5889, file: !3, line: 519, type: !5158)
!5901 = !DILocation(line: 519, column: 5, scope: !5889)
!5902 = !DILocation(line: 521, column: 19, scope: !5889)
!5903 = !DILocation(line: 521, column: 36, scope: !5889)
!5904 = !DILocation(line: 521, column: 8, scope: !5889)
!5905 = !DILocation(line: 521, column: 6, scope: !5889)
!5906 = !DILocation(line: 522, column: 6, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 522, column: 6)
!5908 = !DILocation(line: 522, column: 10, scope: !5907)
!5909 = !DILocation(line: 522, column: 6, scope: !5889)
!5910 = !DILocation(line: 523, column: 10, scope: !5907)
!5911 = !DILocation(line: 523, column: 3, scope: !5907)
!5912 = !DILocation(line: 525, column: 10, scope: !5889)
!5913 = !DILocation(line: 525, column: 17, scope: !5889)
!5914 = !DILocation(line: 525, column: 25, scope: !5889)
!5915 = !DILocation(line: 525, column: 23, scope: !5889)
!5916 = !DILocation(line: 525, column: 3, scope: !5889)
!5917 = !DILocation(line: 525, column: 7, scope: !5889)
!5918 = !DILocation(line: 527, column: 2, scope: !5889)
!5919 = !DILocation(line: 528, column: 1, scope: !5889)
!5920 = distinct !DISubprogram(name: "mt312_send_master_cmd", scope: !3, file: !3, line: 331, type: !4321, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!5921 = !DILocalVariable(name: "fe", arg: 1, scope: !5920, file: !3, line: 331, type: !578)
!5922 = !DILocation(line: 331, column: 55, scope: !5920)
!5923 = !DILocalVariable(name: "c", arg: 2, scope: !5920, file: !3, line: 332, type: !4323)
!5924 = !DILocation(line: 332, column: 36, scope: !5920)
!5925 = !DILocalVariable(name: "state", scope: !5920, file: !3, line: 334, type: !4584)
!5926 = !DILocation(line: 334, column: 22, scope: !5920)
!5927 = !DILocation(line: 334, column: 30, scope: !5920)
!5928 = !DILocation(line: 334, column: 34, scope: !5920)
!5929 = !DILocalVariable(name: "ret", scope: !5920, file: !3, line: 335, type: !432)
!5930 = !DILocation(line: 335, column: 6, scope: !5920)
!5931 = !DILocalVariable(name: "diseqc_mode", scope: !5920, file: !3, line: 336, type: !483)
!5932 = !DILocation(line: 336, column: 5, scope: !5920)
!5933 = !DILocation(line: 338, column: 7, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 338, column: 6)
!5935 = !DILocation(line: 338, column: 10, scope: !5934)
!5936 = !DILocation(line: 338, column: 18, scope: !5934)
!5937 = !DILocation(line: 338, column: 24, scope: !5934)
!5938 = !DILocation(line: 338, column: 28, scope: !5934)
!5939 = !DILocation(line: 338, column: 31, scope: !5934)
!5940 = !DILocation(line: 338, column: 39, scope: !5934)
!5941 = !DILocation(line: 338, column: 6, scope: !5920)
!5942 = !DILocation(line: 339, column: 3, scope: !5934)
!5943 = !DILocation(line: 341, column: 22, scope: !5920)
!5944 = !DILocation(line: 341, column: 8, scope: !5920)
!5945 = !DILocation(line: 341, column: 6, scope: !5920)
!5946 = !DILocation(line: 342, column: 6, scope: !5947)
!5947 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 342, column: 6)
!5948 = !DILocation(line: 342, column: 10, scope: !5947)
!5949 = !DILocation(line: 342, column: 6, scope: !5920)
!5950 = !DILocation(line: 343, column: 10, scope: !5947)
!5951 = !DILocation(line: 343, column: 3, scope: !5947)
!5952 = !DILocation(line: 345, column: 20, scope: !5920)
!5953 = !DILocation(line: 345, column: 50, scope: !5920)
!5954 = !DILocation(line: 345, column: 53, scope: !5920)
!5955 = !DILocation(line: 345, column: 58, scope: !5920)
!5956 = !DILocation(line: 345, column: 61, scope: !5920)
!5957 = !DILocation(line: 345, column: 8, scope: !5920)
!5958 = !DILocation(line: 345, column: 6, scope: !5920)
!5959 = !DILocation(line: 346, column: 6, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 346, column: 6)
!5961 = !DILocation(line: 346, column: 10, scope: !5960)
!5962 = !DILocation(line: 346, column: 6, scope: !5920)
!5963 = !DILocation(line: 347, column: 10, scope: !5960)
!5964 = !DILocation(line: 347, column: 3, scope: !5960)
!5965 = !DILocation(line: 349, column: 23, scope: !5920)
!5966 = !DILocation(line: 350, column: 10, scope: !5920)
!5967 = !DILocation(line: 350, column: 22, scope: !5920)
!5968 = !DILocation(line: 350, column: 34, scope: !5920)
!5969 = !DILocation(line: 350, column: 37, scope: !5920)
!5970 = !DILocation(line: 350, column: 45, scope: !5920)
!5971 = !DILocation(line: 350, column: 50, scope: !5920)
!5972 = !DILocation(line: 350, column: 30, scope: !5920)
!5973 = !DILocation(line: 351, column: 9, scope: !5920)
!5974 = !DILocation(line: 350, column: 9, scope: !5920)
!5975 = !DILocation(line: 349, column: 8, scope: !5920)
!5976 = !DILocation(line: 349, column: 6, scope: !5920)
!5977 = !DILocation(line: 352, column: 6, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 352, column: 6)
!5979 = !DILocation(line: 352, column: 10, scope: !5978)
!5980 = !DILocation(line: 352, column: 6, scope: !5920)
!5981 = !DILocation(line: 353, column: 10, scope: !5978)
!5982 = !DILocation(line: 353, column: 3, scope: !5978)
!5983 = !DILocation(line: 356, column: 2, scope: !5920)
!5984 = !DILocation(line: 359, column: 6, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 359, column: 6)
!5986 = !DILocation(line: 359, column: 9, scope: !5985)
!5987 = !DILocation(line: 359, column: 16, scope: !5985)
!5988 = !DILocation(line: 359, column: 6, scope: !5920)
!5989 = !DILocation(line: 360, column: 24, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5985, file: !3, line: 359, column: 24)
!5991 = !DILocation(line: 360, column: 45, scope: !5990)
!5992 = !DILocation(line: 360, column: 57, scope: !5990)
!5993 = !DILocation(line: 360, column: 44, scope: !5990)
!5994 = !DILocation(line: 360, column: 9, scope: !5990)
!5995 = !DILocation(line: 360, column: 7, scope: !5990)
!5996 = !DILocation(line: 361, column: 7, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5990, file: !3, line: 361, column: 7)
!5998 = !DILocation(line: 361, column: 11, scope: !5997)
!5999 = !DILocation(line: 361, column: 7, scope: !5990)
!6000 = !DILocation(line: 362, column: 11, scope: !5997)
!6001 = !DILocation(line: 362, column: 4, scope: !5997)
!6002 = !DILocation(line: 363, column: 2, scope: !5990)
!6003 = !DILocation(line: 365, column: 2, scope: !5920)
!6004 = !DILocation(line: 366, column: 1, scope: !5920)
!6005 = distinct !DISubprogram(name: "mt312_send_burst", scope: !3, file: !3, line: 368, type: !6006, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!6006 = !DISubroutineType(types: !6007)
!6007 = !{!432, !578, !6008}
!6008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!6009 = !DILocalVariable(name: "fe", arg: 1, scope: !6005, file: !3, line: 368, type: !578)
!6010 = !DILocation(line: 368, column: 50, scope: !6005)
!6011 = !DILocalVariable(name: "c", arg: 2, scope: !6005, file: !3, line: 369, type: !6008)
!6012 = !DILocation(line: 369, column: 35, scope: !6005)
!6013 = !DILocalVariable(name: "state", scope: !6005, file: !3, line: 371, type: !4584)
!6014 = !DILocation(line: 371, column: 22, scope: !6005)
!6015 = !DILocation(line: 371, column: 30, scope: !6005)
!6016 = !DILocation(line: 371, column: 34, scope: !6005)
!6017 = !DILocalVariable(name: "mini_tab", scope: !6005, file: !3, line: 372, type: !6018)
!6018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4277, size: 16, elements: !1865)
!6019 = !DILocation(line: 372, column: 11, scope: !6005)
!6020 = !DILocalVariable(name: "ret", scope: !6005, file: !3, line: 374, type: !432)
!6021 = !DILocation(line: 374, column: 6, scope: !6005)
!6022 = !DILocalVariable(name: "diseqc_mode", scope: !6005, file: !3, line: 375, type: !483)
!6023 = !DILocation(line: 375, column: 5, scope: !6005)
!6024 = !DILocation(line: 377, column: 6, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !6005, file: !3, line: 377, column: 6)
!6026 = !DILocation(line: 377, column: 8, scope: !6025)
!6027 = !DILocation(line: 377, column: 6, scope: !6005)
!6028 = !DILocation(line: 378, column: 3, scope: !6025)
!6029 = !DILocation(line: 380, column: 22, scope: !6005)
!6030 = !DILocation(line: 380, column: 8, scope: !6005)
!6031 = !DILocation(line: 380, column: 6, scope: !6005)
!6032 = !DILocation(line: 381, column: 6, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6005, file: !3, line: 381, column: 6)
!6034 = !DILocation(line: 381, column: 10, scope: !6033)
!6035 = !DILocation(line: 381, column: 6, scope: !6005)
!6036 = !DILocation(line: 382, column: 10, scope: !6033)
!6037 = !DILocation(line: 382, column: 3, scope: !6033)
!6038 = !DILocation(line: 384, column: 23, scope: !6005)
!6039 = !DILocation(line: 385, column: 10, scope: !6005)
!6040 = !DILocation(line: 385, column: 22, scope: !6005)
!6041 = !DILocation(line: 385, column: 41, scope: !6005)
!6042 = !DILocation(line: 385, column: 32, scope: !6005)
!6043 = !DILocation(line: 385, column: 30, scope: !6005)
!6044 = !DILocation(line: 385, column: 9, scope: !6005)
!6045 = !DILocation(line: 384, column: 8, scope: !6005)
!6046 = !DILocation(line: 384, column: 6, scope: !6005)
!6047 = !DILocation(line: 386, column: 6, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6005, file: !3, line: 386, column: 6)
!6049 = !DILocation(line: 386, column: 10, scope: !6048)
!6050 = !DILocation(line: 386, column: 6, scope: !6005)
!6051 = !DILocation(line: 387, column: 10, scope: !6048)
!6052 = !DILocation(line: 387, column: 3, scope: !6048)
!6053 = !DILocation(line: 389, column: 2, scope: !6005)
!6054 = !DILocation(line: 390, column: 1, scope: !6005)
!6055 = distinct !DISubprogram(name: "mt312_set_tone", scope: !3, file: !3, line: 392, type: !6056, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!6056 = !DISubroutineType(types: !6057)
!6057 = !{!432, !578, !6058}
!6058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!6059 = !DILocalVariable(name: "fe", arg: 1, scope: !6055, file: !3, line: 392, type: !578)
!6060 = !DILocation(line: 392, column: 48, scope: !6055)
!6061 = !DILocalVariable(name: "t", arg: 2, scope: !6055, file: !3, line: 393, type: !6058)
!6062 = !DILocation(line: 393, column: 34, scope: !6055)
!6063 = !DILocalVariable(name: "state", scope: !6055, file: !3, line: 395, type: !4584)
!6064 = !DILocation(line: 395, column: 22, scope: !6055)
!6065 = !DILocation(line: 395, column: 30, scope: !6055)
!6066 = !DILocation(line: 395, column: 34, scope: !6055)
!6067 = !DILocalVariable(name: "tone_tab", scope: !6055, file: !3, line: 396, type: !6018)
!6068 = !DILocation(line: 396, column: 11, scope: !6055)
!6069 = !DILocalVariable(name: "ret", scope: !6055, file: !3, line: 398, type: !432)
!6070 = !DILocation(line: 398, column: 6, scope: !6055)
!6071 = !DILocalVariable(name: "diseqc_mode", scope: !6055, file: !3, line: 399, type: !483)
!6072 = !DILocation(line: 399, column: 5, scope: !6055)
!6073 = !DILocation(line: 401, column: 6, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6055, file: !3, line: 401, column: 6)
!6075 = !DILocation(line: 401, column: 8, scope: !6074)
!6076 = !DILocation(line: 401, column: 6, scope: !6055)
!6077 = !DILocation(line: 402, column: 3, scope: !6074)
!6078 = !DILocation(line: 404, column: 22, scope: !6055)
!6079 = !DILocation(line: 404, column: 8, scope: !6055)
!6080 = !DILocation(line: 404, column: 6, scope: !6055)
!6081 = !DILocation(line: 405, column: 6, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6055, file: !3, line: 405, column: 6)
!6083 = !DILocation(line: 405, column: 10, scope: !6082)
!6084 = !DILocation(line: 405, column: 6, scope: !6055)
!6085 = !DILocation(line: 406, column: 10, scope: !6082)
!6086 = !DILocation(line: 406, column: 3, scope: !6082)
!6087 = !DILocation(line: 408, column: 23, scope: !6055)
!6088 = !DILocation(line: 409, column: 10, scope: !6055)
!6089 = !DILocation(line: 409, column: 22, scope: !6055)
!6090 = !DILocation(line: 409, column: 41, scope: !6055)
!6091 = !DILocation(line: 409, column: 32, scope: !6055)
!6092 = !DILocation(line: 409, column: 30, scope: !6055)
!6093 = !DILocation(line: 409, column: 9, scope: !6055)
!6094 = !DILocation(line: 408, column: 8, scope: !6055)
!6095 = !DILocation(line: 408, column: 6, scope: !6055)
!6096 = !DILocation(line: 410, column: 6, scope: !6097)
!6097 = distinct !DILexicalBlock(scope: !6055, file: !3, line: 410, column: 6)
!6098 = !DILocation(line: 410, column: 10, scope: !6097)
!6099 = !DILocation(line: 410, column: 6, scope: !6055)
!6100 = !DILocation(line: 411, column: 10, scope: !6097)
!6101 = !DILocation(line: 411, column: 3, scope: !6097)
!6102 = !DILocation(line: 413, column: 2, scope: !6055)
!6103 = !DILocation(line: 414, column: 1, scope: !6055)
!6104 = distinct !DISubprogram(name: "mt312_set_voltage", scope: !3, file: !3, line: 416, type: !6105, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!6105 = !DISubroutineType(types: !6106)
!6106 = !{!432, !578, !6107}
!6107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!6108 = !DILocalVariable(name: "fe", arg: 1, scope: !6104, file: !3, line: 416, type: !578)
!6109 = !DILocation(line: 416, column: 51, scope: !6104)
!6110 = !DILocalVariable(name: "v", arg: 2, scope: !6104, file: !3, line: 417, type: !6107)
!6111 = !DILocation(line: 417, column: 35, scope: !6104)
!6112 = !DILocalVariable(name: "state", scope: !6104, file: !3, line: 419, type: !4584)
!6113 = !DILocation(line: 419, column: 22, scope: !6104)
!6114 = !DILocation(line: 419, column: 30, scope: !6104)
!6115 = !DILocation(line: 419, column: 34, scope: !6104)
!6116 = !DILocalVariable(name: "volt_tab", scope: !6104, file: !3, line: 420, type: !5419)
!6117 = !DILocation(line: 420, column: 11, scope: !6104)
!6118 = !DILocalVariable(name: "val", scope: !6104, file: !3, line: 421, type: !483)
!6119 = !DILocation(line: 421, column: 5, scope: !6104)
!6120 = !DILocation(line: 423, column: 6, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6104, file: !3, line: 423, column: 6)
!6122 = !DILocation(line: 423, column: 8, scope: !6121)
!6123 = !DILocation(line: 423, column: 6, scope: !6104)
!6124 = !DILocation(line: 424, column: 3, scope: !6121)
!6125 = !DILocation(line: 426, column: 17, scope: !6104)
!6126 = !DILocation(line: 426, column: 8, scope: !6104)
!6127 = !DILocation(line: 426, column: 6, scope: !6104)
!6128 = !DILocation(line: 427, column: 6, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6104, file: !3, line: 427, column: 6)
!6130 = !DILocation(line: 427, column: 13, scope: !6129)
!6131 = !DILocation(line: 427, column: 21, scope: !6129)
!6132 = !DILocation(line: 427, column: 6, scope: !6104)
!6133 = !DILocation(line: 428, column: 7, scope: !6129)
!6134 = !DILocation(line: 428, column: 3, scope: !6129)
!6135 = !DILocation(line: 430, column: 24, scope: !6104)
!6136 = !DILocation(line: 430, column: 44, scope: !6104)
!6137 = !DILocation(line: 430, column: 9, scope: !6104)
!6138 = !DILocation(line: 430, column: 2, scope: !6104)
!6139 = !DILocation(line: 431, column: 1, scope: !6104)
!6140 = distinct !DISubprogram(name: "mt312_i2c_gate_ctrl", scope: !3, file: !3, line: 658, type: !4362, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!6141 = !DILocalVariable(name: "fe", arg: 1, scope: !6140, file: !3, line: 658, type: !578)
!6142 = !DILocation(line: 658, column: 53, scope: !6140)
!6143 = !DILocalVariable(name: "enable", arg: 2, scope: !6140, file: !3, line: 658, type: !432)
!6144 = !DILocation(line: 658, column: 61, scope: !6140)
!6145 = !DILocalVariable(name: "state", scope: !6140, file: !3, line: 660, type: !4584)
!6146 = !DILocation(line: 660, column: 22, scope: !6140)
!6147 = !DILocation(line: 660, column: 30, scope: !6140)
!6148 = !DILocation(line: 660, column: 34, scope: !6140)
!6149 = !DILocalVariable(name: "val", scope: !6140, file: !3, line: 662, type: !483)
!6150 = !DILocation(line: 662, column: 5, scope: !6140)
!6151 = !DILocalVariable(name: "ret", scope: !6140, file: !3, line: 663, type: !432)
!6152 = !DILocation(line: 663, column: 6, scope: !6140)
!6153 = !DILocation(line: 665, column: 10, scope: !6140)
!6154 = !DILocation(line: 665, column: 17, scope: !6140)
!6155 = !DILocation(line: 665, column: 2, scope: !6140)
!6156 = !DILocation(line: 667, column: 23, scope: !6157)
!6157 = distinct !DILexicalBlock(scope: !6140, file: !3, line: 665, column: 21)
!6158 = !DILocation(line: 667, column: 9, scope: !6157)
!6159 = !DILocation(line: 667, column: 7, scope: !6157)
!6160 = !DILocation(line: 668, column: 7, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !6157, file: !3, line: 668, column: 7)
!6162 = !DILocation(line: 668, column: 11, scope: !6161)
!6163 = !DILocation(line: 668, column: 7, scope: !6157)
!6164 = !DILocation(line: 669, column: 4, scope: !6161)
!6165 = !DILocation(line: 672, column: 7, scope: !6157)
!6166 = !DILocation(line: 673, column: 3, scope: !6157)
!6167 = !DILocation(line: 676, column: 6, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6140, file: !3, line: 676, column: 6)
!6169 = !DILocation(line: 676, column: 6, scope: !6140)
!6170 = !DILocation(line: 677, column: 7, scope: !6168)
!6171 = !DILocation(line: 677, column: 3, scope: !6168)
!6172 = !DILocation(line: 679, column: 7, scope: !6168)
!6173 = !DILocation(line: 681, column: 23, scope: !6140)
!6174 = !DILocation(line: 681, column: 40, scope: !6140)
!6175 = !DILocation(line: 681, column: 8, scope: !6140)
!6176 = !DILocation(line: 681, column: 6, scope: !6140)
!6177 = !DILocation(line: 681, column: 2, scope: !6140)
!6178 = !DILabel(scope: !6140, name: "error", file: !3, line: 683)
!6179 = !DILocation(line: 683, column: 1, scope: !6140)
!6180 = !DILocation(line: 684, column: 9, scope: !6140)
!6181 = !DILocation(line: 684, column: 2, scope: !6140)
!6182 = distinct !DISubprogram(name: "mt312_writereg", scope: !3, file: !3, line: 129, type: !6183, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!6183 = !DISubroutineType(types: !6184)
!6184 = !{!432, !4584, !4955, !4277}
!6185 = !DILocalVariable(name: "state", arg: 1, scope: !6182, file: !3, line: 129, type: !4584)
!6186 = !DILocation(line: 129, column: 54, scope: !6182)
!6187 = !DILocalVariable(name: "reg", arg: 2, scope: !6182, file: !3, line: 130, type: !4955)
!6188 = !DILocation(line: 130, column: 32, scope: !6182)
!6189 = !DILocalVariable(name: "val", arg: 3, scope: !6182, file: !3, line: 130, type: !4277)
!6190 = !DILocation(line: 130, column: 46, scope: !6182)
!6191 = !DILocalVariable(name: "tmp", scope: !6182, file: !3, line: 132, type: !483)
!6192 = !DILocation(line: 132, column: 5, scope: !6182)
!6193 = !DILocation(line: 132, column: 11, scope: !6182)
!6194 = !DILocation(line: 135, column: 21, scope: !6182)
!6195 = !DILocation(line: 135, column: 28, scope: !6182)
!6196 = !DILocation(line: 135, column: 9, scope: !6182)
!6197 = !DILocation(line: 135, column: 2, scope: !6182)
!6198 = distinct !DISubprogram(name: "mt312_reset", scope: !3, file: !3, line: 138, type: !6199, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!6199 = !DISubroutineType(types: !6200)
!6200 = !{!432, !4584, !4277}
!6201 = !DILocalVariable(name: "state", arg: 1, scope: !6198, file: !3, line: 138, type: !4584)
!6202 = !DILocation(line: 138, column: 44, scope: !6198)
!6203 = !DILocalVariable(name: "full", arg: 2, scope: !6198, file: !3, line: 138, type: !4277)
!6204 = !DILocation(line: 138, column: 60, scope: !6198)
!6205 = !DILocation(line: 140, column: 24, scope: !6198)
!6206 = !DILocation(line: 140, column: 38, scope: !6198)
!6207 = !DILocation(line: 140, column: 9, scope: !6198)
!6208 = !DILocation(line: 140, column: 2, scope: !6198)
!6209 = distinct !DISubprogram(name: "mt312_write", scope: !3, file: !3, line: 84, type: !6210, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!6210 = !DISubroutineType(types: !6211)
!6211 = !{!432, !4584, !4955, !4276, !5043}
!6212 = !DILocalVariable(name: "state", arg: 1, scope: !6209, file: !3, line: 84, type: !4584)
!6213 = !DILocation(line: 84, column: 44, scope: !6209)
!6214 = !DILocalVariable(name: "reg", arg: 2, scope: !6209, file: !3, line: 84, type: !4955)
!6215 = !DILocation(line: 84, column: 77, scope: !6209)
!6216 = !DILocalVariable(name: "src", arg: 3, scope: !6209, file: !3, line: 85, type: !4276)
!6217 = !DILocation(line: 85, column: 20, scope: !6209)
!6218 = !DILocalVariable(name: "count", arg: 4, scope: !6209, file: !3, line: 85, type: !5043)
!6219 = !DILocation(line: 85, column: 38, scope: !6209)
!6220 = !DILocalVariable(name: "ret", scope: !6209, file: !3, line: 87, type: !432)
!6221 = !DILocation(line: 87, column: 6, scope: !6209)
!6222 = !DILocalVariable(name: "buf", scope: !6209, file: !3, line: 88, type: !6223)
!6223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 512, elements: !677)
!6224 = !DILocation(line: 88, column: 5, scope: !6209)
!6225 = !DILocalVariable(name: "msg", scope: !6209, file: !3, line: 89, type: !4473)
!6226 = !DILocation(line: 89, column: 17, scope: !6209)
!6227 = !DILocation(line: 91, column: 10, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 91, column: 6)
!6229 = !DILocation(line: 91, column: 8, scope: !6228)
!6230 = !DILocation(line: 91, column: 16, scope: !6228)
!6231 = !DILocation(line: 91, column: 6, scope: !6209)
!6232 = !DILocation(line: 93, column: 49, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 91, column: 31)
!6234 = !DILocation(line: 92, column: 3, scope: !6233)
!6235 = !DILocation(line: 94, column: 3, scope: !6233)
!6236 = !DILocation(line: 97, column: 6, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 97, column: 6)
!6238 = !DILocation(line: 97, column: 6, scope: !6209)
!6239 = !DILocalVariable(name: "i", scope: !6240, file: !3, line: 98, type: !432)
!6240 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 97, column: 13)
!6241 = !DILocation(line: 98, column: 7, scope: !6240)
!6242 = !DILocation(line: 99, column: 3, scope: !6240)
!6243 = !DILocation(line: 99, column: 3, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6245, file: !3, line: 99, column: 3)
!6245 = distinct !DILexicalBlock(scope: !6240, file: !3, line: 99, column: 3)
!6246 = !DILocation(line: 99, column: 3, scope: !6245)
!6247 = !DILocation(line: 100, column: 10, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6240, file: !3, line: 100, column: 3)
!6249 = !DILocation(line: 100, column: 8, scope: !6248)
!6250 = !DILocation(line: 100, column: 15, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6248, file: !3, line: 100, column: 3)
!6252 = !DILocation(line: 100, column: 19, scope: !6251)
!6253 = !DILocation(line: 100, column: 17, scope: !6251)
!6254 = !DILocation(line: 100, column: 3, scope: !6248)
!6255 = !DILocation(line: 101, column: 30, scope: !6251)
!6256 = !DILocation(line: 101, column: 34, scope: !6251)
!6257 = !DILocation(line: 101, column: 4, scope: !6251)
!6258 = !DILocation(line: 100, column: 27, scope: !6251)
!6259 = !DILocation(line: 100, column: 3, scope: !6251)
!6260 = distinct !{!6260, !6254, !6261}
!6261 = !DILocation(line: 101, column: 36, scope: !6248)
!6262 = !DILocation(line: 102, column: 3, scope: !6240)
!6263 = !DILocation(line: 103, column: 2, scope: !6240)
!6264 = !DILocation(line: 105, column: 11, scope: !6209)
!6265 = !DILocation(line: 105, column: 2, scope: !6209)
!6266 = !DILocation(line: 105, column: 9, scope: !6209)
!6267 = !DILocation(line: 106, column: 10, scope: !6209)
!6268 = !DILocation(line: 106, column: 18, scope: !6209)
!6269 = !DILocation(line: 106, column: 23, scope: !6209)
!6270 = !DILocation(line: 106, column: 2, scope: !6209)
!6271 = !DILocation(line: 108, column: 13, scope: !6209)
!6272 = !DILocation(line: 108, column: 20, scope: !6209)
!6273 = !DILocation(line: 108, column: 28, scope: !6209)
!6274 = !DILocation(line: 108, column: 6, scope: !6209)
!6275 = !DILocation(line: 108, column: 11, scope: !6209)
!6276 = !DILocation(line: 109, column: 6, scope: !6209)
!6277 = !DILocation(line: 109, column: 12, scope: !6209)
!6278 = !DILocation(line: 110, column: 12, scope: !6209)
!6279 = !DILocation(line: 110, column: 6, scope: !6209)
!6280 = !DILocation(line: 110, column: 10, scope: !6209)
!6281 = !DILocation(line: 111, column: 12, scope: !6209)
!6282 = !DILocation(line: 111, column: 18, scope: !6209)
!6283 = !DILocation(line: 111, column: 6, scope: !6209)
!6284 = !DILocation(line: 111, column: 10, scope: !6209)
!6285 = !DILocation(line: 113, column: 21, scope: !6209)
!6286 = !DILocation(line: 113, column: 28, scope: !6209)
!6287 = !DILocation(line: 113, column: 8, scope: !6209)
!6288 = !DILocation(line: 113, column: 6, scope: !6209)
!6289 = !DILocation(line: 115, column: 6, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 115, column: 6)
!6291 = !DILocation(line: 115, column: 10, scope: !6290)
!6292 = !DILocation(line: 115, column: 6, scope: !6209)
!6293 = !DILocation(line: 116, column: 3, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6290, file: !3, line: 115, column: 16)
!6295 = !DILocation(line: 116, column: 3, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6297, file: !3, line: 116, column: 3)
!6297 = distinct !DILexicalBlock(scope: !6294, file: !3, line: 116, column: 3)
!6298 = !DILocation(line: 116, column: 3, scope: !6297)
!6299 = !DILocation(line: 117, column: 3, scope: !6294)
!6300 = !DILocation(line: 120, column: 2, scope: !6209)
!6301 = !DILocation(line: 121, column: 1, scope: !6209)
!6302 = distinct !DISubprogram(name: "mt312_get_inversion", scope: !3, file: !3, line: 143, type: !6303, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!6303 = !DISubroutineType(types: !6304)
!6304 = !{!432, !4584, !6305}
!6305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!6306 = !DILocalVariable(name: "state", arg: 1, scope: !6302, file: !3, line: 143, type: !4584)
!6307 = !DILocation(line: 143, column: 52, scope: !6302)
!6308 = !DILocalVariable(name: "i", arg: 2, scope: !6302, file: !3, line: 144, type: !6305)
!6309 = !DILocation(line: 144, column: 39, scope: !6302)
!6310 = !DILocalVariable(name: "ret", scope: !6302, file: !3, line: 146, type: !432)
!6311 = !DILocation(line: 146, column: 6, scope: !6302)
!6312 = !DILocalVariable(name: "vit_mode", scope: !6302, file: !3, line: 147, type: !483)
!6313 = !DILocation(line: 147, column: 5, scope: !6302)
!6314 = !DILocation(line: 149, column: 22, scope: !6302)
!6315 = !DILocation(line: 149, column: 8, scope: !6302)
!6316 = !DILocation(line: 149, column: 6, scope: !6302)
!6317 = !DILocation(line: 150, column: 6, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6302, file: !3, line: 150, column: 6)
!6319 = !DILocation(line: 150, column: 10, scope: !6318)
!6320 = !DILocation(line: 150, column: 6, scope: !6302)
!6321 = !DILocation(line: 151, column: 10, scope: !6318)
!6322 = !DILocation(line: 151, column: 3, scope: !6318)
!6323 = !DILocation(line: 153, column: 6, scope: !6324)
!6324 = distinct !DILexicalBlock(scope: !6302, file: !3, line: 153, column: 6)
!6325 = !DILocation(line: 153, column: 15, scope: !6324)
!6326 = !DILocation(line: 153, column: 6, scope: !6302)
!6327 = !DILocation(line: 154, column: 9, scope: !6324)
!6328 = !DILocation(line: 154, column: 18, scope: !6324)
!6329 = !DILocation(line: 154, column: 8, scope: !6324)
!6330 = !DILocation(line: 154, column: 4, scope: !6324)
!6331 = !DILocation(line: 154, column: 6, scope: !6324)
!6332 = !DILocation(line: 154, column: 3, scope: !6324)
!6333 = !DILocation(line: 156, column: 2, scope: !6302)
!6334 = !DILocation(line: 157, column: 1, scope: !6302)
!6335 = distinct !DISubprogram(name: "mt312_get_symbol_rate", scope: !3, file: !3, line: 159, type: !6336, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!6336 = !DISubroutineType(types: !6337)
!6337 = !{!432, !4584, !1706}
!6338 = !DILocalVariable(name: "state", arg: 1, scope: !6335, file: !3, line: 159, type: !4584)
!6339 = !DILocation(line: 159, column: 54, scope: !6335)
!6340 = !DILocalVariable(name: "sr", arg: 2, scope: !6335, file: !3, line: 159, type: !1706)
!6341 = !DILocation(line: 159, column: 66, scope: !6335)
!6342 = !DILocalVariable(name: "ret", scope: !6335, file: !3, line: 161, type: !432)
!6343 = !DILocation(line: 161, column: 6, scope: !6335)
!6344 = !DILocalVariable(name: "sym_rate_h", scope: !6335, file: !3, line: 162, type: !483)
!6345 = !DILocation(line: 162, column: 5, scope: !6335)
!6346 = !DILocalVariable(name: "dec_ratio", scope: !6335, file: !3, line: 163, type: !483)
!6347 = !DILocation(line: 163, column: 5, scope: !6335)
!6348 = !DILocalVariable(name: "sym_rat_op", scope: !6335, file: !3, line: 164, type: !475)
!6349 = !DILocation(line: 164, column: 6, scope: !6335)
!6350 = !DILocalVariable(name: "monitor", scope: !6335, file: !3, line: 165, type: !475)
!6351 = !DILocation(line: 165, column: 6, scope: !6335)
!6352 = !DILocalVariable(name: "buf", scope: !6335, file: !3, line: 166, type: !5158)
!6353 = !DILocation(line: 166, column: 5, scope: !6335)
!6354 = !DILocation(line: 168, column: 22, scope: !6335)
!6355 = !DILocation(line: 168, column: 8, scope: !6335)
!6356 = !DILocation(line: 168, column: 6, scope: !6335)
!6357 = !DILocation(line: 169, column: 6, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6335, file: !3, line: 169, column: 6)
!6359 = !DILocation(line: 169, column: 10, scope: !6358)
!6360 = !DILocation(line: 169, column: 6, scope: !6335)
!6361 = !DILocation(line: 170, column: 10, scope: !6358)
!6362 = !DILocation(line: 170, column: 3, scope: !6358)
!6363 = !DILocation(line: 172, column: 6, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6335, file: !3, line: 172, column: 6)
!6365 = !DILocation(line: 172, column: 17, scope: !6364)
!6366 = !DILocation(line: 172, column: 6, scope: !6335)
!6367 = !DILocation(line: 174, column: 24, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 172, column: 25)
!6369 = !DILocation(line: 174, column: 9, scope: !6368)
!6370 = !DILocation(line: 174, column: 7, scope: !6368)
!6371 = !DILocation(line: 175, column: 7, scope: !6372)
!6372 = distinct !DILexicalBlock(scope: !6368, file: !3, line: 175, column: 7)
!6373 = !DILocation(line: 175, column: 11, scope: !6372)
!6374 = !DILocation(line: 175, column: 7, scope: !6368)
!6375 = !DILocation(line: 176, column: 11, scope: !6372)
!6376 = !DILocation(line: 176, column: 4, scope: !6372)
!6377 = !DILocation(line: 178, column: 20, scope: !6368)
!6378 = !DILocation(line: 178, column: 38, scope: !6368)
!6379 = !DILocation(line: 178, column: 9, scope: !6368)
!6380 = !DILocation(line: 178, column: 7, scope: !6368)
!6381 = !DILocation(line: 179, column: 7, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !6368, file: !3, line: 179, column: 7)
!6383 = !DILocation(line: 179, column: 11, scope: !6382)
!6384 = !DILocation(line: 179, column: 7, scope: !6368)
!6385 = !DILocation(line: 180, column: 11, scope: !6382)
!6386 = !DILocation(line: 180, column: 4, scope: !6382)
!6387 = !DILocation(line: 182, column: 14, scope: !6368)
!6388 = !DILocation(line: 182, column: 21, scope: !6368)
!6389 = !DILocation(line: 182, column: 29, scope: !6368)
!6390 = !DILocation(line: 182, column: 27, scope: !6368)
!6391 = !DILocation(line: 182, column: 13, scope: !6368)
!6392 = !DILocation(line: 182, column: 11, scope: !6368)
!6393 = !DILocation(line: 184, column: 3, scope: !6368)
!6394 = !DILocation(line: 184, column: 3, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6396, file: !3, line: 184, column: 3)
!6396 = distinct !DILexicalBlock(scope: !6368, file: !3, line: 184, column: 3)
!6397 = !DILocation(line: 184, column: 3, scope: !6396)
!6398 = !DILocalVariable(name: "__x", scope: !6399, file: !3, line: 184, type: !432)
!6399 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 184, column: 3)
!6400 = !DILocation(line: 184, column: 3, scope: !6399)
!6401 = !DILocalVariable(name: "__d", scope: !6399, file: !3, line: 184, type: !432)
!6402 = !DILocation(line: 186, column: 2, scope: !6368)
!6403 = !DILocation(line: 187, column: 24, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 186, column: 9)
!6405 = !DILocation(line: 187, column: 9, scope: !6404)
!6406 = !DILocation(line: 187, column: 7, scope: !6404)
!6407 = !DILocation(line: 188, column: 7, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6404, file: !3, line: 188, column: 7)
!6409 = !DILocation(line: 188, column: 11, scope: !6408)
!6410 = !DILocation(line: 188, column: 7, scope: !6404)
!6411 = !DILocation(line: 189, column: 11, scope: !6408)
!6412 = !DILocation(line: 189, column: 4, scope: !6408)
!6413 = !DILocation(line: 191, column: 20, scope: !6404)
!6414 = !DILocation(line: 191, column: 38, scope: !6404)
!6415 = !DILocation(line: 191, column: 9, scope: !6404)
!6416 = !DILocation(line: 191, column: 7, scope: !6404)
!6417 = !DILocation(line: 192, column: 7, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6404, file: !3, line: 192, column: 7)
!6419 = !DILocation(line: 192, column: 11, scope: !6418)
!6420 = !DILocation(line: 192, column: 7, scope: !6404)
!6421 = !DILocation(line: 193, column: 11, scope: !6418)
!6422 = !DILocation(line: 193, column: 4, scope: !6418)
!6423 = !DILocation(line: 195, column: 17, scope: !6404)
!6424 = !DILocation(line: 195, column: 24, scope: !6404)
!6425 = !DILocation(line: 195, column: 30, scope: !6404)
!6426 = !DILocation(line: 195, column: 38, scope: !6404)
!6427 = !DILocation(line: 195, column: 15, scope: !6404)
!6428 = !DILocation(line: 195, column: 13, scope: !6404)
!6429 = !DILocation(line: 197, column: 20, scope: !6404)
!6430 = !DILocation(line: 197, column: 41, scope: !6404)
!6431 = !DILocation(line: 197, column: 9, scope: !6404)
!6432 = !DILocation(line: 197, column: 7, scope: !6404)
!6433 = !DILocation(line: 198, column: 7, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6404, file: !3, line: 198, column: 7)
!6435 = !DILocation(line: 198, column: 11, scope: !6434)
!6436 = !DILocation(line: 198, column: 7, scope: !6404)
!6437 = !DILocation(line: 199, column: 11, scope: !6434)
!6438 = !DILocation(line: 199, column: 4, scope: !6434)
!6439 = !DILocation(line: 201, column: 17, scope: !6404)
!6440 = !DILocation(line: 201, column: 24, scope: !6404)
!6441 = !DILocation(line: 201, column: 32, scope: !6404)
!6442 = !DILocation(line: 201, column: 30, scope: !6404)
!6443 = !DILocation(line: 201, column: 16, scope: !6404)
!6444 = !DILocation(line: 201, column: 14, scope: !6404)
!6445 = !DILocation(line: 203, column: 3, scope: !6404)
!6446 = !DILocation(line: 203, column: 3, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6448, file: !3, line: 203, column: 3)
!6448 = distinct !DILexicalBlock(scope: !6404, file: !3, line: 203, column: 3)
!6449 = !DILocation(line: 203, column: 3, scope: !6448)
!6450 = !DILocation(line: 205, column: 3, scope: !6404)
!6451 = !DILocation(line: 205, column: 3, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6453, file: !3, line: 205, column: 3)
!6453 = distinct !DILexicalBlock(scope: !6404, file: !3, line: 205, column: 3)
!6454 = !DILocation(line: 205, column: 3, scope: !6453)
!6455 = !DILocation(line: 210, column: 2, scope: !6335)
!6456 = !DILocation(line: 211, column: 1, scope: !6335)
!6457 = distinct !DISubprogram(name: "mt312_get_code_rate", scope: !3, file: !3, line: 213, type: !6458, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !646)
!6458 = !DISubroutineType(types: !6459)
!6459 = !{!432, !4584, !6460}
!6460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!6461 = !DILocalVariable(name: "state", arg: 1, scope: !6457, file: !3, line: 213, type: !4584)
!6462 = !DILocation(line: 213, column: 52, scope: !6457)
!6463 = !DILocalVariable(name: "cr", arg: 2, scope: !6457, file: !3, line: 213, type: !6460)
!6464 = !DILocation(line: 213, column: 78, scope: !6457)
!6465 = !DILocalVariable(name: "fec_tab", scope: !6457, file: !3, line: 215, type: !6466)
!6466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6467, size: 256, elements: !572)
!6467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!6468 = !DILocation(line: 215, column: 26, scope: !6457)
!6469 = !DILocalVariable(name: "ret", scope: !6457, file: !3, line: 219, type: !432)
!6470 = !DILocation(line: 219, column: 6, scope: !6457)
!6471 = !DILocalVariable(name: "fec_status", scope: !6457, file: !3, line: 220, type: !483)
!6472 = !DILocation(line: 220, column: 5, scope: !6457)
!6473 = !DILocation(line: 222, column: 22, scope: !6457)
!6474 = !DILocation(line: 222, column: 8, scope: !6457)
!6475 = !DILocation(line: 222, column: 6, scope: !6457)
!6476 = !DILocation(line: 223, column: 6, scope: !6477)
!6477 = distinct !DILexicalBlock(scope: !6457, file: !3, line: 223, column: 6)
!6478 = !DILocation(line: 223, column: 10, scope: !6477)
!6479 = !DILocation(line: 223, column: 6, scope: !6457)
!6480 = !DILocation(line: 224, column: 10, scope: !6477)
!6481 = !DILocation(line: 224, column: 3, scope: !6477)
!6482 = !DILocation(line: 226, column: 17, scope: !6457)
!6483 = !DILocation(line: 226, column: 28, scope: !6457)
!6484 = !DILocation(line: 226, column: 34, scope: !6457)
!6485 = !DILocation(line: 226, column: 8, scope: !6457)
!6486 = !DILocation(line: 226, column: 3, scope: !6457)
!6487 = !DILocation(line: 226, column: 6, scope: !6457)
!6488 = !DILocation(line: 228, column: 2, scope: !6457)
!6489 = !DILocation(line: 229, column: 1, scope: !6457)
