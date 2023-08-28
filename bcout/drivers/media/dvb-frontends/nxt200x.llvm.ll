; ModuleID = '../bcout/drivers/media/dvb-frontends/nxt200x.llvm.bc'
source_filename = "drivers/media/dvb-frontends/nxt200x.c"
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
%struct.nxt200x_config = type { i8, i32 (%struct.dvb_frontend*, i32)* }
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
%struct.nxt200x_state = type { %struct.i2c_adapter*, %struct.nxt200x_config*, %struct.dvb_frontend, i32, i8 }
%struct.firmware = type { i64, i8*, i8* }

@debug = internal global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [29 x i8] c"\016nxt200x: NXT2002 Detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"\016nxt200x: NXT2004 Detected\0A\00", align 1
@nxt200x_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Nextwave NXT200X VSB/QAM frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 860000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 2138798 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @nxt200x_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @nxt200x_init, i32 (%struct.dvb_frontend*)* @nxt200x_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @nxt200x_setup_frontend_parameters, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @nxt200x_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* null, i32 (%struct.dvb_frontend*, i32*)* @nxt200x_read_status, i32 (%struct.dvb_frontend*, i32*)* @nxt200x_read_ber, i32 (%struct.dvb_frontend*, i16*)* @nxt200x_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @nxt200x_read_snr, i32 (%struct.dvb_frontend*, i32*)* @nxt200x_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !403
@.str.2 = private unnamed_addr constant [47 x i8] c"\013nxt200x: Unknown/Unsupported NXT chip: %*ph\0A\00", align 1
@__param_str_debug = internal constant [14 x i8] c"nxt200x.debug\00", align 1, !dbg !4300
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !306
@__UNIQUE_ID_debugtype220 = internal constant [27 x i8] c"nxt200x.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !373
@__UNIQUE_ID_debug221 = internal constant [65 x i8] c"nxt200x.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1, !dbg !378
@__UNIQUE_ID_description222 = internal constant [90 x i8] c"nxt200x.description=NXT200X (ATSC 8VSB & ITU-T J.83 AnnexB 64/256 QAM) Demodulator Driver\00", section ".modinfo", align 1, !dbg !383
@__UNIQUE_ID_author223 = internal constant [84 x i8] c"nxt200x.author=Kirk Lapray, Michael Krufky, Jean-Francois Thibert, and Taylor Jacob\00", section ".modinfo", align 1, !dbg !388
@__UNIQUE_ID_file224 = internal constant [49 x i8] c"nxt200x.file=drivers/media/dvb-frontends/nxt200x\00", section ".modinfo", align 1, !dbg !393
@__UNIQUE_ID_license225 = internal constant [20 x i8] c"nxt200x.license=GPL\00", section ".modinfo", align 1, !dbg !398
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"\014nxt200x: %s: i2c read error (addr 0x%02x, err == %i)\0A\00", align 1
@__func__.nxt200x_readbytes = private unnamed_addr constant [18 x i8] c"nxt200x_readbytes\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"dvb-fe-nxt2002.fw\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"\013nxt200x: %s: No firmware uploaded (timeout or file not found?)\0A\00", align 1
@__func__.nxt2002_init = private unnamed_addr constant [13 x i8] c"nxt2002_init\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"\013nxt200x: %s: Writing firmware to device failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"\016nxt200x: %s: Firmware upload complete\0A\00", align 1
@.str.9 = private unnamed_addr constant [83 x i8] c"\014nxt200x: Timeout waiting for nxt200x to stop. This is ok after firmware upload.\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"\014nxt200x: %s: i2c wr reg=%04x: len=%d is too big!\0A\00", align 1
@__func__.nxt200x_writebytes = private unnamed_addr constant [19 x i8] c"nxt200x_writebytes\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"\014nxt200x: %s: i2c write error (addr 0x%02x, err == %i)\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"dvb-fe-nxt2004.fw\00", align 1
@__func__.nxt2004_init = private unnamed_addr constant [13 x i8] c"nxt2004_init\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"\014nxt200x: Timeout waiting for nxt2004 to init.\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"\014nxt200x: Error writing multireg register 0x%02X\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"\014nxt200x: error writing to tuner\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"\014nxt200x: timeout waiting for tuner lock\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"\014nxt200x: timeout error writing to tuner\0A\00", align 1
@__func__.i2c_writebytes = private unnamed_addr constant [15 x i8] c"i2c_writebytes\00", align 1
@__func__.i2c_readbytes = private unnamed_addr constant [14 x i8] c"i2c_readbytes\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__UNIQUE_ID_author223, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_file224, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license225, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @nxt200x_attach(%struct.nxt200x_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4310 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.nxt200x_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.nxt200x_state*, align 8
  %buf = alloca [5 x i8], align 1
  %tmp = alloca i32, align 4
  store %struct.nxt200x_config* %config, %struct.nxt200x_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt200x_config** %config.addr, metadata !4441, metadata !DIExpression()), !dbg !4442
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4443, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state, metadata !4445, metadata !DIExpression()), !dbg !4455
  store %struct.nxt200x_state* null, %struct.nxt200x_state** %state, align 8, !dbg !4455
  call void @llvm.dbg.declare(metadata [5 x i8]* %buf, metadata !4456, metadata !DIExpression()), !dbg !4460
  %0 = bitcast [5 x i8]* %buf to i8*, !dbg !4460
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 5, i1 false), !dbg !4460
  %call = call i8* @kzalloc(i64 1304, i32 3264) #8, !dbg !4461
  %1 = bitcast i8* %call to %struct.nxt200x_state*, !dbg !4461
  store %struct.nxt200x_state* %1, %struct.nxt200x_state** %state, align 8, !dbg !4462
  %2 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !4463
  %cmp = icmp eq %struct.nxt200x_state* %2, null, !dbg !4465
  br i1 %cmp, label %if.then, label %if.end, !dbg !4466

if.then:                                          ; preds = %entry
  br label %error, !dbg !4467

if.end:                                           ; preds = %entry
  %3 = load %struct.nxt200x_config*, %struct.nxt200x_config** %config.addr, align 8, !dbg !4468
  %4 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !4469
  %config1 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %4, i32 0, i32 1, !dbg !4470
  store %struct.nxt200x_config* %3, %struct.nxt200x_config** %config1, align 8, !dbg !4471
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4472
  %6 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !4473
  %i2c2 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %6, i32 0, i32 0, !dbg !4474
  store %struct.i2c_adapter* %5, %struct.i2c_adapter** %i2c2, align 8, !dbg !4475
  %7 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !4476
  %initialised = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %7, i32 0, i32 4, !dbg !4477
  %bf.load = load i8, i8* %initialised, align 4, !dbg !4478
  %bf.clear = and i8 %bf.load, -2, !dbg !4478
  store i8 %bf.clear, i8* %initialised, align 4, !dbg !4478
  %8 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !4479
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !4480
  %call3 = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %8, i8 zeroext 0, i8* %arraydecay, i8 zeroext 5) #8, !dbg !4481
  br label %do.body, !dbg !4482

do.body:                                          ; preds = %if.end
  %9 = load i32, i32* @debug, align 4, !dbg !4483
  %tobool = icmp ne i32 %9, 0, !dbg !4483
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !4486

if.then4:                                         ; preds = %do.body
  store i32 0, i32* %tmp, align 4, !dbg !4487
  %10 = load i32, i32* %tmp, align 4, !dbg !4490
  br label %if.end5, !dbg !4483

if.end5:                                          ; preds = %if.then4, %do.body
  br label %do.end, !dbg !4486

do.end:                                           ; preds = %if.end5
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !4491
  %11 = load i8, i8* %arrayidx, align 1, !dbg !4491
  %conv = zext i8 %11 to i32, !dbg !4491
  switch i32 %conv, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb7
  ], !dbg !4492

sw.bb:                                            ; preds = %do.end
  %12 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !4493
  %demod_chip = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %12, i32 0, i32 3, !dbg !4495
  store i32 1, i32* %demod_chip, align 8, !dbg !4496
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0)) #9, !dbg !4497
  br label %sw.epilog, !dbg !4498

sw.bb7:                                           ; preds = %do.end
  %13 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !4499
  %demod_chip8 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %13, i32 0, i32 3, !dbg !4500
  store i32 2, i32* %demod_chip8, align 8, !dbg !4501
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !4502
  br label %sw.epilog, !dbg !4503

sw.default:                                       ; preds = %do.end
  br label %error, !dbg !4504

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  %14 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !4505
  %demod_chip10 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %14, i32 0, i32 3, !dbg !4506
  %15 = load i32, i32* %demod_chip10, align 8, !dbg !4506
  switch i32 %15, label %sw.default49 [
    i32 1, label %sw.bb11
    i32 2, label %sw.bb42
  ], !dbg !4507

sw.bb11:                                          ; preds = %sw.epilog
  %arrayidx12 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !4508
  %16 = load i8, i8* %arrayidx12, align 1, !dbg !4508
  %conv13 = zext i8 %16 to i32, !dbg !4508
  %cmp14 = icmp ne i32 %conv13, 4, !dbg !4511
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !4512

if.then16:                                        ; preds = %sw.bb11
  br label %error, !dbg !4513

if.end17:                                         ; preds = %sw.bb11
  %arrayidx18 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 1, !dbg !4514
  %17 = load i8, i8* %arrayidx18, align 1, !dbg !4514
  %conv19 = zext i8 %17 to i32, !dbg !4514
  %cmp20 = icmp ne i32 %conv19, 2, !dbg !4516
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !4517

if.then22:                                        ; preds = %if.end17
  br label %error, !dbg !4518

if.end23:                                         ; preds = %if.end17
  %arrayidx24 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 2, !dbg !4519
  %18 = load i8, i8* %arrayidx24, align 1, !dbg !4519
  %conv25 = zext i8 %18 to i32, !dbg !4519
  %cmp26 = icmp ne i32 %conv25, 17, !dbg !4521
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !4522

if.then28:                                        ; preds = %if.end23
  br label %error, !dbg !4523

if.end29:                                         ; preds = %if.end23
  %arrayidx30 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 3, !dbg !4524
  %19 = load i8, i8* %arrayidx30, align 1, !dbg !4524
  %conv31 = zext i8 %19 to i32, !dbg !4524
  %cmp32 = icmp ne i32 %conv31, 32, !dbg !4526
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !4527

if.then34:                                        ; preds = %if.end29
  br label %error, !dbg !4528

if.end35:                                         ; preds = %if.end29
  %arrayidx36 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 4, !dbg !4529
  %20 = load i8, i8* %arrayidx36, align 1, !dbg !4529
  %conv37 = zext i8 %20 to i32, !dbg !4529
  %cmp38 = icmp ne i32 %conv37, 0, !dbg !4531
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !4532

if.then40:                                        ; preds = %if.end35
  br label %error, !dbg !4533

if.end41:                                         ; preds = %if.end35
  br label %sw.epilog50, !dbg !4534

sw.bb42:                                          ; preds = %sw.epilog
  %arrayidx43 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !4535
  %21 = load i8, i8* %arrayidx43, align 1, !dbg !4535
  %conv44 = zext i8 %21 to i32, !dbg !4535
  %cmp45 = icmp ne i32 %conv44, 5, !dbg !4537
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !4538

if.then47:                                        ; preds = %sw.bb42
  br label %error, !dbg !4539

if.end48:                                         ; preds = %sw.bb42
  br label %sw.epilog50, !dbg !4540

sw.default49:                                     ; preds = %sw.epilog
  br label %error, !dbg !4541

sw.epilog50:                                      ; preds = %if.end48, %if.end41
  %22 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !4542
  %frontend = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %22, i32 0, i32 2, !dbg !4543
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4544
  %23 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4545
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @nxt200x_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4545
  %24 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !4546
  %25 = bitcast %struct.nxt200x_state* %24 to i8*, !dbg !4546
  %26 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !4547
  %frontend51 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %26, i32 0, i32 2, !dbg !4548
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend51, i32 0, i32 3, !dbg !4549
  store i8* %25, i8** %demodulator_priv, align 8, !dbg !4550
  %27 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !4551
  %frontend52 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %27, i32 0, i32 2, !dbg !4552
  store %struct.dvb_frontend* %frontend52, %struct.dvb_frontend** %retval, align 8, !dbg !4553
  br label %return, !dbg !4553

error:                                            ; preds = %sw.default49, %if.then47, %if.then40, %if.then34, %if.then28, %if.then22, %if.then16, %sw.default, %if.then
  call void @llvm.dbg.label(metadata !4554), !dbg !4555
  %28 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !4556
  %29 = bitcast %struct.nxt200x_state* %28 to i8*, !dbg !4556
  call void @kfree(i8* %29) #8, !dbg !4557
  %arraydecay53 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !4558
  %call54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 5, i8* %arraydecay53) #9, !dbg !4558
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4559
  br label %return, !dbg !4559

return:                                           ; preds = %error, %sw.epilog50
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4560
  ret %struct.dvb_frontend* %30, !dbg !4560
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4561 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4564, metadata !DIExpression()), !dbg !4568
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4574, metadata !DIExpression()), !dbg !4575
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4576, metadata !DIExpression()), !dbg !4577
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4578, metadata !DIExpression()), !dbg !4579
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4580, metadata !DIExpression()), !dbg !4584
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4586, metadata !DIExpression()), !dbg !4590
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4592, metadata !DIExpression()), !dbg !4596
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4601, metadata !DIExpression()), !dbg !4602
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4603, metadata !DIExpression()), !dbg !4604
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4605, metadata !DIExpression()), !dbg !4606
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4607, metadata !DIExpression()), !dbg !4608
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4609, metadata !DIExpression()), !dbg !4610
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4611, metadata !DIExpression()), !dbg !4612
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4613, metadata !DIExpression()), !dbg !4614
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4615, metadata !DIExpression()), !dbg !4616
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4617, metadata !DIExpression()), !dbg !4618
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4619, metadata !DIExpression()), !dbg !4620
  %0 = load i64, i64* %size.addr, align 8, !dbg !4621
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4622
  %or = or i32 %1, 256, !dbg !4623
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4624
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4625
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4626

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4627
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4628
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4629

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4630
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4631
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4632
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4633
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4610
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4634
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4635
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4636
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4637
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4638
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4639
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4640
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4640
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4640
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4640
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4640
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4641
  br label %kmalloc.exit, !dbg !4641

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4642
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4643
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4643
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4645

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4646
  br label %kmalloc_index.exit.i, !dbg !4646

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4647
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4649
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4650

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4651
  br label %kmalloc_index.exit.i, !dbg !4651

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4652
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4654
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4655

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4656
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4657
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4658

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4659
  br label %kmalloc_index.exit.i, !dbg !4659

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4660
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4662
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4663

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4664
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4665
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4666

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4667
  br label %kmalloc_index.exit.i, !dbg !4667

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4668
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4670
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4671

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4672
  br label %kmalloc_index.exit.i, !dbg !4672

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4673
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4675
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4676

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4677
  br label %kmalloc_index.exit.i, !dbg !4677

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4678
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4680
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4681

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4682
  br label %kmalloc_index.exit.i, !dbg !4682

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4683
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4685
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4686

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4687
  br label %kmalloc_index.exit.i, !dbg !4687

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4688
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4690
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4691

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4692
  br label %kmalloc_index.exit.i, !dbg !4692

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4693
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4695
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4696

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4697
  br label %kmalloc_index.exit.i, !dbg !4697

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4698
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4700
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4701

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4702
  br label %kmalloc_index.exit.i, !dbg !4702

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4703
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4705
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4706

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4707
  br label %kmalloc_index.exit.i, !dbg !4707

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4708
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4710
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4711

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4712
  br label %kmalloc_index.exit.i, !dbg !4712

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4713
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4715
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4716

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4717
  br label %kmalloc_index.exit.i, !dbg !4717

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4718
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4720
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4721

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4722
  br label %kmalloc_index.exit.i, !dbg !4722

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4723
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4725
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4726

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4727
  br label %kmalloc_index.exit.i, !dbg !4727

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4728
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4730
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4731

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4732
  br label %kmalloc_index.exit.i, !dbg !4732

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4733
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4735
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4736

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4737
  br label %kmalloc_index.exit.i, !dbg !4737

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4738
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4740
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4741

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4742
  br label %kmalloc_index.exit.i, !dbg !4742

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4743
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4745
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4746

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4747
  br label %kmalloc_index.exit.i, !dbg !4747

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4748
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4750
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4751

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4752
  br label %kmalloc_index.exit.i, !dbg !4752

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4753
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4755
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4756

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4757
  br label %kmalloc_index.exit.i, !dbg !4757

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4758
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4760
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4761

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4762
  br label %kmalloc_index.exit.i, !dbg !4762

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4763
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4765
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4766

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4767
  br label %kmalloc_index.exit.i, !dbg !4767

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4768
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4770
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4771

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4772
  br label %kmalloc_index.exit.i, !dbg !4772

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4773
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4775
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4776

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4777
  br label %kmalloc_index.exit.i, !dbg !4777

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4778
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4780
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4781

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4782
  br label %kmalloc_index.exit.i, !dbg !4782

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4783
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4785
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4786

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4787
  br label %kmalloc_index.exit.i, !dbg !4787

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4788, !srcloc !4791
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #10, !dbg !4792, !srcloc !4795
  unreachable, !dbg !4796

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4797
  store i32 %45, i32* %index.i, align 4, !dbg !4798
  %46 = load i32, i32* %index.i, align 4, !dbg !4799
  %tobool.i = icmp ne i32 %46, 0, !dbg !4799
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4801

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4802
  br label %kmalloc.exit, !dbg !4802

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4803
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4804
  %and.i.i = and i32 %48, 17, !dbg !4804
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4804
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4804
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4804
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4804
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4806

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4807
  br label %kmalloc_type.exit.i, !dbg !4807

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4808
  %and2.i.i = and i32 %49, 1, !dbg !4809
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4808
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4808
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4808
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4810
  br label %kmalloc_type.exit.i, !dbg !4810

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4811
  %idxprom.i = zext i32 %51 to i64, !dbg !4812
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4812
  %52 = load i32, i32* %index.i, align 4, !dbg !4813
  %idxprom6.i = zext i32 %52 to i64, !dbg !4812
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4812
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4812
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4814
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4815
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4816
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4817
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4818
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4818
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4818
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4818
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4818
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4579
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4819
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4820
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4821
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4822
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4823
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4824
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4825
  store i8* %62, i8** %retval.i, align 8, !dbg !4826
  br label %kmalloc.exit, !dbg !4826

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4827
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4828
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4829
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4829
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4829
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4829
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4829
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4830
  br label %kmalloc.exit, !dbg !4830

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4831
  ret i8* %65, !dbg !4832
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt200x_readbytes(%struct.nxt200x_state* %state, i8 zeroext %reg, i8* %buf, i8 zeroext %len) #0 !dbg !4833 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.nxt200x_state*, align 8
  %reg.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i8, align 1
  %reg2 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 16
  %err = alloca i32, align 4
  store %struct.nxt200x_state* %state, %struct.nxt200x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state.addr, metadata !4836, metadata !DIExpression()), !dbg !4837
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4838, metadata !DIExpression()), !dbg !4839
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4840, metadata !DIExpression()), !dbg !4841
  store i8 %len, i8* %len.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %len.addr, metadata !4842, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.declare(metadata [1 x i8]* %reg2, metadata !4844, metadata !DIExpression()), !dbg !4846
  %arrayinit.begin = getelementptr inbounds [1 x i8], [1 x i8]* %reg2, i64 0, i64 0, !dbg !4847
  %0 = load i8, i8* %reg.addr, align 1, !dbg !4848
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !4847
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !4849, metadata !DIExpression()), !dbg !4851
  %arrayinit.begin1 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4852
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 0, !dbg !4853
  %1 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !4854
  %config = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %1, i32 0, i32 1, !dbg !4855
  %2 = load %struct.nxt200x_config*, %struct.nxt200x_config** %config, align 8, !dbg !4855
  %demod_address = getelementptr inbounds %struct.nxt200x_config, %struct.nxt200x_config* %2, i32 0, i32 0, !dbg !4856
  %3 = load i8, i8* %demod_address, align 8, !dbg !4856
  %conv = zext i8 %3 to i16, !dbg !4854
  store i16 %conv, i16* %addr, align 16, !dbg !4853
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 1, !dbg !4853
  store i16 0, i16* %flags, align 2, !dbg !4853
  %len2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 2, !dbg !4853
  store i16 1, i16* %len2, align 4, !dbg !4853
  %buf3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 3, !dbg !4853
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %reg2, i64 0, i64 0, !dbg !4857
  store i8* %arraydecay, i8** %buf3, align 8, !dbg !4853
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i64 1, !dbg !4852
  %addr4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4858
  %4 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !4859
  %config5 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %4, i32 0, i32 1, !dbg !4860
  %5 = load %struct.nxt200x_config*, %struct.nxt200x_config** %config5, align 8, !dbg !4860
  %demod_address6 = getelementptr inbounds %struct.nxt200x_config, %struct.nxt200x_config* %5, i32 0, i32 0, !dbg !4861
  %6 = load i8, i8* %demod_address6, align 8, !dbg !4861
  %conv7 = zext i8 %6 to i16, !dbg !4859
  store i16 %conv7, i16* %addr4, align 16, !dbg !4858
  %flags8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4858
  store i16 1, i16* %flags8, align 2, !dbg !4858
  %len9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4858
  %7 = load i8, i8* %len.addr, align 1, !dbg !4862
  %conv10 = zext i8 %7 to i16, !dbg !4862
  store i16 %conv10, i16* %len9, align 4, !dbg !4858
  %buf11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4858
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !4863
  store i8* %8, i8** %buf11, align 8, !dbg !4858
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4864, metadata !DIExpression()), !dbg !4865
  %9 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !4866
  %i2c = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %9, i32 0, i32 0, !dbg !4868
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4868
  %arraydecay12 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4869
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %10, %struct.i2c_msg* %arraydecay12, i32 2) #8, !dbg !4870
  store i32 %call, i32* %err, align 4, !dbg !4871
  %cmp = icmp ne i32 %call, 2, !dbg !4872
  br i1 %cmp, label %if.then, label %if.end, !dbg !4873

if.then:                                          ; preds = %entry
  %11 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !4874
  %config14 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %11, i32 0, i32 1, !dbg !4874
  %12 = load %struct.nxt200x_config*, %struct.nxt200x_config** %config14, align 8, !dbg !4874
  %demod_address15 = getelementptr inbounds %struct.nxt200x_config, %struct.nxt200x_config* %12, i32 0, i32 0, !dbg !4874
  %13 = load i8, i8* %demod_address15, align 8, !dbg !4874
  %conv16 = zext i8 %13 to i32, !dbg !4874
  %14 = load i32, i32* %err, align 4, !dbg !4874
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.nxt200x_readbytes, i64 0, i64 0), i32 %conv16, i32 %14) #9, !dbg !4874
  store i32 -121, i32* %retval, align 4, !dbg !4876
  br label %return, !dbg !4876

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4877
  br label %return, !dbg !4877

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4878
  ret i32 %15, !dbg !4878
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #4

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #4

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4879 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4883, metadata !DIExpression()), !dbg !4888
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4890, metadata !DIExpression()), !dbg !4891
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4892, metadata !DIExpression()), !dbg !4893
  %0 = load i64, i64* %size.addr, align 8, !dbg !4894
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4896
  br i1 %1, label %if.then, label %if.end447, !dbg !4897

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4898
  %tobool = icmp ne i64 %2, 0, !dbg !4898
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4901

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4902
  br label %return, !dbg !4902

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4903
  %cmp = icmp ult i64 %3, 4096, !dbg !4905
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4906

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4907
  br label %return, !dbg !4907

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub = sub i64 %4, 1, !dbg !4908
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4908
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4908

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub4 = sub i64 %6, 1, !dbg !4908
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4908
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4908

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub6 = sub i64 %8, 1, !dbg !4908
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4908
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4908

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4908

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub9 = sub i64 %9, 1, !dbg !4908
  %and = and i64 %sub9, -9223372036854775808, !dbg !4908
  %tobool10 = icmp ne i64 %and, 0, !dbg !4908
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4908

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4908

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub13 = sub i64 %10, 1, !dbg !4908
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4908
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4908
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4908

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4908

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub18 = sub i64 %11, 1, !dbg !4908
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4908
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4908
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4908

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4908

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub23 = sub i64 %12, 1, !dbg !4908
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4908
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4908
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4908

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4908

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub28 = sub i64 %13, 1, !dbg !4908
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4908
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4908
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4908

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4908

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub33 = sub i64 %14, 1, !dbg !4908
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4908
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4908
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4908

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4908

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub38 = sub i64 %15, 1, !dbg !4908
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4908
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4908
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4908

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4908

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub43 = sub i64 %16, 1, !dbg !4908
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4908
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4908
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4908

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4908

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub48 = sub i64 %17, 1, !dbg !4908
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4908
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4908
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4908

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4908

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub53 = sub i64 %18, 1, !dbg !4908
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4908
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4908
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4908

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4908

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub58 = sub i64 %19, 1, !dbg !4908
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4908
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4908
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4908

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4908

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub63 = sub i64 %20, 1, !dbg !4908
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4908
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4908
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4908

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4908

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub68 = sub i64 %21, 1, !dbg !4908
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4908
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4908
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4908

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4908

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub73 = sub i64 %22, 1, !dbg !4908
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4908
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4908
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4908

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4908

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub78 = sub i64 %23, 1, !dbg !4908
  %and79 = and i64 %sub78, 562949953421312, !dbg !4908
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4908
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4908

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4908

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub83 = sub i64 %24, 1, !dbg !4908
  %and84 = and i64 %sub83, 281474976710656, !dbg !4908
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4908
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4908

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4908

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub88 = sub i64 %25, 1, !dbg !4908
  %and89 = and i64 %sub88, 140737488355328, !dbg !4908
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4908
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4908

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4908

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub93 = sub i64 %26, 1, !dbg !4908
  %and94 = and i64 %sub93, 70368744177664, !dbg !4908
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4908
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4908

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4908

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub98 = sub i64 %27, 1, !dbg !4908
  %and99 = and i64 %sub98, 35184372088832, !dbg !4908
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4908
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4908

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4908

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub103 = sub i64 %28, 1, !dbg !4908
  %and104 = and i64 %sub103, 17592186044416, !dbg !4908
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4908
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4908

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4908

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub108 = sub i64 %29, 1, !dbg !4908
  %and109 = and i64 %sub108, 8796093022208, !dbg !4908
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4908
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4908

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4908

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub113 = sub i64 %30, 1, !dbg !4908
  %and114 = and i64 %sub113, 4398046511104, !dbg !4908
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4908
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4908

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4908

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub118 = sub i64 %31, 1, !dbg !4908
  %and119 = and i64 %sub118, 2199023255552, !dbg !4908
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4908
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4908

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4908

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub123 = sub i64 %32, 1, !dbg !4908
  %and124 = and i64 %sub123, 1099511627776, !dbg !4908
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4908
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4908

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4908

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub128 = sub i64 %33, 1, !dbg !4908
  %and129 = and i64 %sub128, 549755813888, !dbg !4908
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4908
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4908

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4908

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub133 = sub i64 %34, 1, !dbg !4908
  %and134 = and i64 %sub133, 274877906944, !dbg !4908
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4908
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4908

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4908

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub138 = sub i64 %35, 1, !dbg !4908
  %and139 = and i64 %sub138, 137438953472, !dbg !4908
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4908
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4908

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4908

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub143 = sub i64 %36, 1, !dbg !4908
  %and144 = and i64 %sub143, 68719476736, !dbg !4908
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4908
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4908

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4908

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub148 = sub i64 %37, 1, !dbg !4908
  %and149 = and i64 %sub148, 34359738368, !dbg !4908
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4908
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4908

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4908

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub153 = sub i64 %38, 1, !dbg !4908
  %and154 = and i64 %sub153, 17179869184, !dbg !4908
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4908
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4908

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4908

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub158 = sub i64 %39, 1, !dbg !4908
  %and159 = and i64 %sub158, 8589934592, !dbg !4908
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4908
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4908

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4908

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub163 = sub i64 %40, 1, !dbg !4908
  %and164 = and i64 %sub163, 4294967296, !dbg !4908
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4908
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4908

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4908

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub168 = sub i64 %41, 1, !dbg !4908
  %and169 = and i64 %sub168, 2147483648, !dbg !4908
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4908
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4908

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4908

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub173 = sub i64 %42, 1, !dbg !4908
  %and174 = and i64 %sub173, 1073741824, !dbg !4908
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4908
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4908

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4908

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub178 = sub i64 %43, 1, !dbg !4908
  %and179 = and i64 %sub178, 536870912, !dbg !4908
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4908
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4908

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4908

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub183 = sub i64 %44, 1, !dbg !4908
  %and184 = and i64 %sub183, 268435456, !dbg !4908
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4908
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4908

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4908

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub188 = sub i64 %45, 1, !dbg !4908
  %and189 = and i64 %sub188, 134217728, !dbg !4908
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4908
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4908

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4908

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub193 = sub i64 %46, 1, !dbg !4908
  %and194 = and i64 %sub193, 67108864, !dbg !4908
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4908
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4908

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4908

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub198 = sub i64 %47, 1, !dbg !4908
  %and199 = and i64 %sub198, 33554432, !dbg !4908
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4908
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4908

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4908

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub203 = sub i64 %48, 1, !dbg !4908
  %and204 = and i64 %sub203, 16777216, !dbg !4908
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4908
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4908

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4908

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub208 = sub i64 %49, 1, !dbg !4908
  %and209 = and i64 %sub208, 8388608, !dbg !4908
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4908
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4908

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4908

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub213 = sub i64 %50, 1, !dbg !4908
  %and214 = and i64 %sub213, 4194304, !dbg !4908
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4908
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4908

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4908

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub218 = sub i64 %51, 1, !dbg !4908
  %and219 = and i64 %sub218, 2097152, !dbg !4908
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4908
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4908

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4908

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub223 = sub i64 %52, 1, !dbg !4908
  %and224 = and i64 %sub223, 1048576, !dbg !4908
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4908
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4908

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4908

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub228 = sub i64 %53, 1, !dbg !4908
  %and229 = and i64 %sub228, 524288, !dbg !4908
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4908
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4908

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4908

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub233 = sub i64 %54, 1, !dbg !4908
  %and234 = and i64 %sub233, 262144, !dbg !4908
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4908
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4908

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4908

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub238 = sub i64 %55, 1, !dbg !4908
  %and239 = and i64 %sub238, 131072, !dbg !4908
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4908
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4908

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4908

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub243 = sub i64 %56, 1, !dbg !4908
  %and244 = and i64 %sub243, 65536, !dbg !4908
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4908
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4908

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4908

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub248 = sub i64 %57, 1, !dbg !4908
  %and249 = and i64 %sub248, 32768, !dbg !4908
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4908
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4908

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4908

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub253 = sub i64 %58, 1, !dbg !4908
  %and254 = and i64 %sub253, 16384, !dbg !4908
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4908
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4908

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4908

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub258 = sub i64 %59, 1, !dbg !4908
  %and259 = and i64 %sub258, 8192, !dbg !4908
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4908
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4908

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4908

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub263 = sub i64 %60, 1, !dbg !4908
  %and264 = and i64 %sub263, 4096, !dbg !4908
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4908
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4908

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4908

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub268 = sub i64 %61, 1, !dbg !4908
  %and269 = and i64 %sub268, 2048, !dbg !4908
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4908
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4908

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4908

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub273 = sub i64 %62, 1, !dbg !4908
  %and274 = and i64 %sub273, 1024, !dbg !4908
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4908
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4908

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4908

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub278 = sub i64 %63, 1, !dbg !4908
  %and279 = and i64 %sub278, 512, !dbg !4908
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4908
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4908

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4908

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub283 = sub i64 %64, 1, !dbg !4908
  %and284 = and i64 %sub283, 256, !dbg !4908
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4908
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4908

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4908

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub288 = sub i64 %65, 1, !dbg !4908
  %and289 = and i64 %sub288, 128, !dbg !4908
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4908
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4908

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4908

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub293 = sub i64 %66, 1, !dbg !4908
  %and294 = and i64 %sub293, 64, !dbg !4908
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4908
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4908

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4908

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub298 = sub i64 %67, 1, !dbg !4908
  %and299 = and i64 %sub298, 32, !dbg !4908
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4908
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4908

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4908

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub303 = sub i64 %68, 1, !dbg !4908
  %and304 = and i64 %sub303, 16, !dbg !4908
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4908
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4908

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4908

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub308 = sub i64 %69, 1, !dbg !4908
  %and309 = and i64 %sub308, 8, !dbg !4908
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4908
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4908

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4908

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub313 = sub i64 %70, 1, !dbg !4908
  %and314 = and i64 %sub313, 4, !dbg !4908
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4908
  %71 = zext i1 %tobool315 to i64, !dbg !4908
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4908
  br label %cond.end, !dbg !4908

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4908
  br label %cond.end317, !dbg !4908

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4908
  br label %cond.end319, !dbg !4908

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4908
  br label %cond.end321, !dbg !4908

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4908
  br label %cond.end323, !dbg !4908

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4908
  br label %cond.end325, !dbg !4908

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4908
  br label %cond.end327, !dbg !4908

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4908
  br label %cond.end329, !dbg !4908

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4908
  br label %cond.end331, !dbg !4908

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4908
  br label %cond.end333, !dbg !4908

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4908
  br label %cond.end335, !dbg !4908

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4908
  br label %cond.end337, !dbg !4908

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4908
  br label %cond.end339, !dbg !4908

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4908
  br label %cond.end341, !dbg !4908

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4908
  br label %cond.end343, !dbg !4908

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4908
  br label %cond.end345, !dbg !4908

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4908
  br label %cond.end347, !dbg !4908

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4908
  br label %cond.end349, !dbg !4908

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4908
  br label %cond.end351, !dbg !4908

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4908
  br label %cond.end353, !dbg !4908

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4908
  br label %cond.end355, !dbg !4908

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4908
  br label %cond.end357, !dbg !4908

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4908
  br label %cond.end359, !dbg !4908

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4908
  br label %cond.end361, !dbg !4908

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4908
  br label %cond.end363, !dbg !4908

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4908
  br label %cond.end365, !dbg !4908

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4908
  br label %cond.end367, !dbg !4908

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4908
  br label %cond.end369, !dbg !4908

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4908
  br label %cond.end371, !dbg !4908

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4908
  br label %cond.end373, !dbg !4908

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4908
  br label %cond.end375, !dbg !4908

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4908
  br label %cond.end377, !dbg !4908

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4908
  br label %cond.end379, !dbg !4908

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4908
  br label %cond.end381, !dbg !4908

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4908
  br label %cond.end383, !dbg !4908

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4908
  br label %cond.end385, !dbg !4908

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4908
  br label %cond.end387, !dbg !4908

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4908
  br label %cond.end389, !dbg !4908

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4908
  br label %cond.end391, !dbg !4908

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4908
  br label %cond.end393, !dbg !4908

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4908
  br label %cond.end395, !dbg !4908

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4908
  br label %cond.end397, !dbg !4908

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4908
  br label %cond.end399, !dbg !4908

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4908
  br label %cond.end401, !dbg !4908

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4908
  br label %cond.end403, !dbg !4908

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4908
  br label %cond.end405, !dbg !4908

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4908
  br label %cond.end407, !dbg !4908

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4908
  br label %cond.end409, !dbg !4908

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4908
  br label %cond.end411, !dbg !4908

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4908
  br label %cond.end413, !dbg !4908

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4908
  br label %cond.end415, !dbg !4908

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4908
  br label %cond.end417, !dbg !4908

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4908
  br label %cond.end419, !dbg !4908

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4908
  br label %cond.end421, !dbg !4908

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4908
  br label %cond.end423, !dbg !4908

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4908
  br label %cond.end425, !dbg !4908

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4908
  br label %cond.end427, !dbg !4908

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4908
  br label %cond.end429, !dbg !4908

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4908
  br label %cond.end431, !dbg !4908

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4908
  br label %cond.end433, !dbg !4908

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4908
  br label %cond.end435, !dbg !4908

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4908
  br label %cond.end437, !dbg !4908

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4908
  br label %cond.end440, !dbg !4908

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4908

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4908
  br label %cond.end444, !dbg !4908

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4908
  %sub443 = sub i64 %72, 1, !dbg !4908
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4908
  br label %cond.end444, !dbg !4908

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4908
  %sub446 = sub i32 %cond445, 12, !dbg !4909
  %add = add i32 %sub446, 1, !dbg !4910
  store i32 %add, i32* %retval, align 4, !dbg !4911
  br label %return, !dbg !4911

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4912
  %dec = add i64 %73, -1, !dbg !4912
  store i64 %dec, i64* %size.addr, align 8, !dbg !4912
  %74 = load i64, i64* %size.addr, align 8, !dbg !4913
  %shr = lshr i64 %74, 12, !dbg !4913
  store i64 %shr, i64* %size.addr, align 8, !dbg !4913
  %75 = load i64, i64* %size.addr, align 8, !dbg !4914
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4891
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4915
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4916
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4915, !srcloc !4917
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4915
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4918
  %add.i = add i32 %79, 1, !dbg !4919
  store i32 %add.i, i32* %retval, align 4, !dbg !4920
  br label %return, !dbg !4920

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4921
  ret i32 %80, !dbg !4921
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4922 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4883, metadata !DIExpression()), !dbg !4926
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4890, metadata !DIExpression()), !dbg !4928
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4929, metadata !DIExpression()), !dbg !4930
  %0 = load i64, i64* %n.addr, align 8, !dbg !4931
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4928
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4932
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4933
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4932, !srcloc !4917
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4932
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4934
  %add.i = add i32 %4, 1, !dbg !4935
  %sub = sub i32 %add.i, 1, !dbg !4936
  ret i32 %sub, !dbg !4937
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4938 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4942, metadata !DIExpression()), !dbg !4943
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4944, metadata !DIExpression()), !dbg !4945
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4946, metadata !DIExpression()), !dbg !4947
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4948, metadata !DIExpression()), !dbg !4949
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4950
  ret i8* %0, !dbg !4951
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nxt200x_release(%struct.dvb_frontend* %fe) #0 !dbg !4952 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.nxt200x_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4953, metadata !DIExpression()), !dbg !4954
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state, metadata !4955, metadata !DIExpression()), !dbg !4956
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4957
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4958
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4958
  %2 = bitcast i8* %1 to %struct.nxt200x_state*, !dbg !4957
  store %struct.nxt200x_state* %2, %struct.nxt200x_state** %state, align 8, !dbg !4956
  %3 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !4959
  %4 = bitcast %struct.nxt200x_state* %3 to i8*, !dbg !4959
  call void @kfree(i8* %4) #8, !dbg !4960
  ret void, !dbg !4961
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt200x_init(%struct.dvb_frontend* %fe) #0 !dbg !4962 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.nxt200x_state*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4963, metadata !DIExpression()), !dbg !4964
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state, metadata !4965, metadata !DIExpression()), !dbg !4966
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4967
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4968
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4968
  %2 = bitcast i8* %1 to %struct.nxt200x_state*, !dbg !4967
  store %struct.nxt200x_state* %2, %struct.nxt200x_state** %state, align 8, !dbg !4966
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4969, metadata !DIExpression()), !dbg !4970
  store i32 0, i32* %ret, align 4, !dbg !4970
  %3 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !4971
  %initialised = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %3, i32 0, i32 4, !dbg !4973
  %bf.load = load i8, i8* %initialised, align 4, !dbg !4973
  %bf.clear = and i8 %bf.load, 1, !dbg !4973
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !4971
  br i1 %tobool, label %if.end, label %if.then, !dbg !4974

if.then:                                          ; preds = %entry
  %4 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !4975
  %demod_chip = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %4, i32 0, i32 3, !dbg !4977
  %5 = load i32, i32* %demod_chip, align 8, !dbg !4977
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ], !dbg !4978

sw.bb:                                            ; preds = %if.then
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4979
  %call = call i32 @nxt2002_init(%struct.dvb_frontend* %6) #8, !dbg !4981
  store i32 %call, i32* %ret, align 4, !dbg !4982
  br label %sw.epilog, !dbg !4983

sw.bb1:                                           ; preds = %if.then
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4984
  %call2 = call i32 @nxt2004_init(%struct.dvb_frontend* %7) #8, !dbg !4985
  store i32 %call2, i32* %ret, align 4, !dbg !4986
  br label %sw.epilog, !dbg !4987

sw.default:                                       ; preds = %if.then
  store i32 -22, i32* %retval, align 4, !dbg !4988
  br label %return, !dbg !4988

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %8 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !4989
  %initialised3 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %8, i32 0, i32 4, !dbg !4990
  %bf.load4 = load i8, i8* %initialised3, align 4, !dbg !4991
  %bf.clear5 = and i8 %bf.load4, -2, !dbg !4991
  %bf.set = or i8 %bf.clear5, 1, !dbg !4991
  store i8 %bf.set, i8* %initialised3, align 4, !dbg !4991
  br label %if.end, !dbg !4992

if.end:                                           ; preds = %sw.epilog, %entry
  %9 = load i32, i32* %ret, align 4, !dbg !4993
  store i32 %9, i32* %retval, align 4, !dbg !4994
  br label %return, !dbg !4994

return:                                           ; preds = %if.end, %sw.default
  %10 = load i32, i32* %retval, align 4, !dbg !4995
  ret i32 %10, !dbg !4995
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt200x_sleep(%struct.dvb_frontend* %fe) #0 !dbg !4996 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4997, metadata !DIExpression()), !dbg !4998
  ret i32 0, !dbg !4999
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt200x_setup_frontend_parameters(%struct.dvb_frontend* %fe) #0 !dbg !5000 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.nxt200x_state*, align 8
  %buf = alloca [5 x i8], align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5001, metadata !DIExpression()), !dbg !5002
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !5003, metadata !DIExpression()), !dbg !5004
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5005
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5006
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !5004
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state, metadata !5007, metadata !DIExpression()), !dbg !5008
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5009
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 3, !dbg !5010
  %2 = load i8*, i8** %demodulator_priv, align 8, !dbg !5010
  %3 = bitcast i8* %2 to %struct.nxt200x_state*, !dbg !5009
  store %struct.nxt200x_state* %3, %struct.nxt200x_state** %state, align 8, !dbg !5008
  call void @llvm.dbg.declare(metadata [5 x i8]* %buf, metadata !5011, metadata !DIExpression()), !dbg !5012
  %4 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5013
  call void @nxt200x_microcontroller_stop(%struct.nxt200x_state* %4) #8, !dbg !5014
  %5 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5015
  %demod_chip = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %5, i32 0, i32 3, !dbg !5017
  %6 = load i32, i32* %demod_chip, align 8, !dbg !5017
  %cmp = icmp eq i32 %6, 2, !dbg !5018
  br i1 %cmp, label %if.then, label %if.end, !dbg !5019

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5020
  store i8 4, i8* %arrayidx, align 1, !dbg !5022
  %7 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5023
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5024
  %call = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %7, i8 zeroext 20, i8* %arraydecay, i8 zeroext 1) #8, !dbg !5025
  %arrayidx1 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5026
  store i8 0, i8* %arrayidx1, align 1, !dbg !5027
  %8 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5028
  %arraydecay2 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5029
  %call3 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %8, i8 zeroext 23, i8* %arraydecay2, i8 zeroext 1) #8, !dbg !5030
  br label %if.end, !dbg !5031

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5032
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %9, i32 0, i32 1, !dbg !5033
  %10 = load i32, i32* %modulation, align 4, !dbg !5033
  switch i32 %10, label %sw.default [
    i32 3, label %sw.bb
    i32 5, label %sw.bb
    i32 7, label %sw.bb9
  ], !dbg !5034

sw.bb:                                            ; preds = %if.end, %if.end
  %11 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5035
  %config = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %11, i32 0, i32 1, !dbg !5038
  %12 = load %struct.nxt200x_config*, %struct.nxt200x_config** %config, align 8, !dbg !5038
  %set_ts_params = getelementptr inbounds %struct.nxt200x_config, %struct.nxt200x_config* %12, i32 0, i32 1, !dbg !5039
  %13 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %set_ts_params, align 8, !dbg !5039
  %tobool = icmp ne i32 (%struct.dvb_frontend*, i32)* %13, null, !dbg !5035
  br i1 %tobool, label %if.then4, label %if.end8, !dbg !5040

if.then4:                                         ; preds = %sw.bb
  %14 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5041
  %config5 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %14, i32 0, i32 1, !dbg !5042
  %15 = load %struct.nxt200x_config*, %struct.nxt200x_config** %config5, align 8, !dbg !5042
  %set_ts_params6 = getelementptr inbounds %struct.nxt200x_config, %struct.nxt200x_config* %15, i32 0, i32 1, !dbg !5043
  %16 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %set_ts_params6, align 8, !dbg !5043
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5044
  %call7 = call i32 %16(%struct.dvb_frontend* %17, i32 1) #8, !dbg !5041
  br label %if.end8, !dbg !5041

if.end8:                                          ; preds = %if.then4, %sw.bb
  br label %sw.epilog, !dbg !5045

sw.bb9:                                           ; preds = %if.end
  %18 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5046
  %config10 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %18, i32 0, i32 1, !dbg !5048
  %19 = load %struct.nxt200x_config*, %struct.nxt200x_config** %config10, align 8, !dbg !5048
  %set_ts_params11 = getelementptr inbounds %struct.nxt200x_config, %struct.nxt200x_config* %19, i32 0, i32 1, !dbg !5049
  %20 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %set_ts_params11, align 8, !dbg !5049
  %tobool12 = icmp ne i32 (%struct.dvb_frontend*, i32)* %20, null, !dbg !5046
  br i1 %tobool12, label %if.then13, label %if.end17, !dbg !5050

if.then13:                                        ; preds = %sw.bb9
  %21 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5051
  %config14 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %21, i32 0, i32 1, !dbg !5052
  %22 = load %struct.nxt200x_config*, %struct.nxt200x_config** %config14, align 8, !dbg !5052
  %set_ts_params15 = getelementptr inbounds %struct.nxt200x_config, %struct.nxt200x_config* %22, i32 0, i32 1, !dbg !5053
  %23 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %set_ts_params15, align 8, !dbg !5053
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5054
  %call16 = call i32 %23(%struct.dvb_frontend* %24, i32 0) #8, !dbg !5051
  br label %if.end17, !dbg !5051

if.end17:                                         ; preds = %if.then13, %sw.bb9
  br label %sw.epilog, !dbg !5055

sw.default:                                       ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5056
  br label %return, !dbg !5056

sw.epilog:                                        ; preds = %if.end17, %if.end8
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5057
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 1, !dbg !5059
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5060
  %calc_regs = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 15, !dbg !5061
  %26 = load i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i8*, i32)** %calc_regs, align 8, !dbg !5061
  %tobool18 = icmp ne i32 (%struct.dvb_frontend*, i8*, i32)* %26, null, !dbg !5057
  br i1 %tobool18, label %if.then19, label %if.end27, !dbg !5062

if.then19:                                        ; preds = %sw.epilog
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5063
  %ops20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 1, !dbg !5065
  %tuner_ops21 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops20, i32 0, i32 30, !dbg !5066
  %calc_regs22 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops21, i32 0, i32 15, !dbg !5067
  %28 = load i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i8*, i32)** %calc_regs22, align 8, !dbg !5067
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5068
  %arraydecay23 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5069
  %call24 = call i32 %28(%struct.dvb_frontend* %29, i8* %arraydecay23, i32 5) #8, !dbg !5063
  %30 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5070
  %arraydecay25 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5071
  %call26 = call i32 @nxt200x_writetuner(%struct.nxt200x_state* %30, i8* %arraydecay25) #8, !dbg !5072
  br label %if.end27, !dbg !5073

if.end27:                                         ; preds = %if.then19, %sw.epilog
  %31 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5074
  call void @nxt200x_agc_reset(%struct.nxt200x_state* %31) #8, !dbg !5075
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5076
  %modulation28 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 1, !dbg !5077
  %33 = load i32, i32* %modulation28, align 4, !dbg !5077
  switch i32 %33, label %sw.default33 [
    i32 3, label %sw.bb29
    i32 5, label %sw.bb29
    i32 7, label %sw.bb31
  ], !dbg !5078

sw.bb29:                                          ; preds = %if.end27, %if.end27
  %arrayidx30 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5079
  store i8 116, i8* %arrayidx30, align 1, !dbg !5081
  br label %sw.epilog34, !dbg !5082

sw.bb31:                                          ; preds = %if.end27
  %arrayidx32 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5083
  store i8 112, i8* %arrayidx32, align 1, !dbg !5084
  br label %sw.epilog34, !dbg !5085

sw.default33:                                     ; preds = %if.end27
  store i32 -22, i32* %retval, align 4, !dbg !5086
  br label %return, !dbg !5086

sw.epilog34:                                      ; preds = %sw.bb31, %sw.bb29
  %34 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5087
  %arraydecay35 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5088
  %call36 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %34, i8 zeroext 66, i8* %arraydecay35, i8 zeroext 1) #8, !dbg !5089
  %35 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5090
  %demod_chip37 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %35, i32 0, i32 3, !dbg !5091
  %36 = load i32, i32* %demod_chip37, align 8, !dbg !5091
  switch i32 %36, label %sw.default42 [
    i32 1, label %sw.bb38
    i32 2, label %sw.bb40
  ], !dbg !5092

sw.bb38:                                          ; preds = %sw.epilog34
  %arrayidx39 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5093
  store i8 -121, i8* %arrayidx39, align 1, !dbg !5095
  br label %sw.epilog43, !dbg !5096

sw.bb40:                                          ; preds = %sw.epilog34
  %arrayidx41 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5097
  store i8 7, i8* %arrayidx41, align 1, !dbg !5098
  br label %sw.epilog43, !dbg !5099

sw.default42:                                     ; preds = %sw.epilog34
  store i32 -22, i32* %retval, align 4, !dbg !5100
  br label %return, !dbg !5100

sw.epilog43:                                      ; preds = %sw.bb40, %sw.bb38
  %37 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5101
  %arraydecay44 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5102
  %call45 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %37, i8 zeroext 87, i8* %arraydecay44, i8 zeroext 1) #8, !dbg !5103
  %arrayidx46 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5104
  store i8 16, i8* %arrayidx46, align 1, !dbg !5105
  %arrayidx47 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 1, !dbg !5106
  store i8 0, i8* %arrayidx47, align 1, !dbg !5107
  %38 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5108
  %demod_chip48 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %38, i32 0, i32 3, !dbg !5109
  %39 = load i32, i32* %demod_chip48, align 8, !dbg !5109
  switch i32 %39, label %sw.default55 [
    i32 1, label %sw.bb49
    i32 2, label %sw.bb52
  ], !dbg !5110

sw.bb49:                                          ; preds = %sw.epilog43
  %40 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5111
  %arraydecay50 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5113
  %call51 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %40, i8 zeroext 88, i8* %arraydecay50, i8 zeroext 2) #8, !dbg !5114
  br label %sw.epilog56, !dbg !5115

sw.bb52:                                          ; preds = %sw.epilog43
  %41 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5116
  %arraydecay53 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5117
  %call54 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %41, i8 zeroext 88, i8* %arraydecay53, i8 zeroext 2) #8, !dbg !5118
  br label %sw.epilog56, !dbg !5119

sw.default55:                                     ; preds = %sw.epilog43
  store i32 -22, i32* %retval, align 4, !dbg !5120
  br label %return, !dbg !5120

sw.epilog56:                                      ; preds = %sw.bb52, %sw.bb49
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5121
  %modulation57 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 1, !dbg !5122
  %43 = load i32, i32* %modulation57, align 4, !dbg !5122
  switch i32 %43, label %sw.default64 [
    i32 3, label %sw.bb58
    i32 5, label %sw.bb60
    i32 7, label %sw.bb62
  ], !dbg !5123

sw.bb58:                                          ; preds = %sw.epilog56
  %arrayidx59 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5124
  store i8 104, i8* %arrayidx59, align 1, !dbg !5126
  br label %sw.epilog65, !dbg !5127

sw.bb60:                                          ; preds = %sw.epilog56
  %arrayidx61 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5128
  store i8 100, i8* %arrayidx61, align 1, !dbg !5129
  br label %sw.epilog65, !dbg !5130

sw.bb62:                                          ; preds = %sw.epilog56
  %arrayidx63 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5131
  store i8 96, i8* %arrayidx63, align 1, !dbg !5132
  br label %sw.epilog65, !dbg !5133

sw.default64:                                     ; preds = %sw.epilog56
  store i32 -22, i32* %retval, align 4, !dbg !5134
  br label %return, !dbg !5134

sw.epilog65:                                      ; preds = %sw.bb62, %sw.bb60, %sw.bb58
  %arrayidx66 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 1, !dbg !5135
  store i8 0, i8* %arrayidx66, align 1, !dbg !5136
  %44 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5137
  %demod_chip67 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %44, i32 0, i32 3, !dbg !5138
  %45 = load i32, i32* %demod_chip67, align 8, !dbg !5138
  switch i32 %45, label %sw.default74 [
    i32 1, label %sw.bb68
    i32 2, label %sw.bb71
  ], !dbg !5139

sw.bb68:                                          ; preds = %sw.epilog65
  %46 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5140
  %arraydecay69 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5142
  %call70 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %46, i8 zeroext 92, i8* %arraydecay69, i8 zeroext 2) #8, !dbg !5143
  br label %sw.epilog75, !dbg !5144

sw.bb71:                                          ; preds = %sw.epilog65
  %47 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5145
  %arraydecay72 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5146
  %call73 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %47, i8 zeroext 92, i8* %arraydecay72, i8 zeroext 2) #8, !dbg !5147
  br label %sw.epilog75, !dbg !5148

sw.default74:                                     ; preds = %sw.epilog65
  store i32 -22, i32* %retval, align 4, !dbg !5149
  br label %return, !dbg !5149

sw.epilog75:                                      ; preds = %sw.bb71, %sw.bb68
  %arrayidx76 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5150
  store i8 5, i8* %arrayidx76, align 1, !dbg !5151
  %48 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5152
  %arraydecay77 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5153
  %call78 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %48, i8 zeroext 67, i8* %arraydecay77, i8 zeroext 1) #8, !dbg !5154
  %49 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5155
  %demod_chip79 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %49, i32 0, i32 3, !dbg !5157
  %50 = load i32, i32* %demod_chip79, align 8, !dbg !5157
  %cmp80 = icmp eq i32 %50, 2, !dbg !5158
  br i1 %cmp80, label %if.then81, label %if.end86, !dbg !5159

if.then81:                                        ; preds = %sw.epilog75
  %arrayidx82 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5160
  store i8 0, i8* %arrayidx82, align 1, !dbg !5162
  %arrayidx83 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 1, !dbg !5163
  store i8 0, i8* %arrayidx83, align 1, !dbg !5164
  %51 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5165
  %arraydecay84 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5166
  %call85 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %51, i8 zeroext 70, i8* %arraydecay84, i8 zeroext 2) #8, !dbg !5167
  br label %if.end86, !dbg !5168

if.end86:                                         ; preds = %if.then81, %sw.epilog75
  %arrayidx87 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5169
  store i8 -128, i8* %arrayidx87, align 1, !dbg !5170
  %arrayidx88 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 1, !dbg !5171
  store i8 0, i8* %arrayidx88, align 1, !dbg !5172
  %52 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5173
  %demod_chip89 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %52, i32 0, i32 3, !dbg !5174
  %53 = load i32, i32* %demod_chip89, align 8, !dbg !5174
  switch i32 %53, label %sw.default96 [
    i32 1, label %sw.bb90
    i32 2, label %sw.bb93
  ], !dbg !5175

sw.bb90:                                          ; preds = %if.end86
  %54 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5176
  %arraydecay91 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5178
  %call92 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %54, i8 zeroext 75, i8* %arraydecay91, i8 zeroext 2) #8, !dbg !5179
  br label %sw.epilog97, !dbg !5180

sw.bb93:                                          ; preds = %if.end86
  %55 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5181
  %arraydecay94 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5182
  %call95 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %55, i8 zeroext 75, i8* %arraydecay94, i8 zeroext 2) #8, !dbg !5183
  br label %sw.epilog97, !dbg !5184

sw.default96:                                     ; preds = %if.end86
  store i32 -22, i32* %retval, align 4, !dbg !5185
  br label %return, !dbg !5185

sw.epilog97:                                      ; preds = %sw.bb93, %sw.bb90
  %arrayidx98 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5186
  store i8 0, i8* %arrayidx98, align 1, !dbg !5187
  %56 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5188
  %arraydecay99 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5189
  %call100 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %56, i8 zeroext 77, i8* %arraydecay99, i8 zeroext 1) #8, !dbg !5190
  %arrayidx101 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5191
  store i8 68, i8* %arrayidx101, align 1, !dbg !5192
  %57 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5193
  %arraydecay102 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5194
  %call103 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %57, i8 zeroext 85, i8* %arraydecay102, i8 zeroext 1) #8, !dbg !5195
  %arrayidx104 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5196
  store i8 4, i8* %arrayidx104, align 1, !dbg !5197
  %58 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5198
  %arraydecay105 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5199
  %call106 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %58, i8 zeroext 65, i8* %arraydecay105, i8 zeroext 1) #8, !dbg !5200
  %59 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5201
  %demod_chip107 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %59, i32 0, i32 3, !dbg !5203
  %60 = load i32, i32* %demod_chip107, align 8, !dbg !5203
  %cmp108 = icmp eq i32 %60, 2, !dbg !5204
  br i1 %cmp108, label %if.then109, label %if.end148, !dbg !5205

if.then109:                                       ; preds = %sw.epilog97
  %61 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5206
  %arraydecay110 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5208
  %call111 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %61, i8 zeroext -128, i8* %arraydecay110, i8 zeroext 1) #8, !dbg !5209
  %arrayidx112 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5210
  store i8 36, i8* %arrayidx112, align 1, !dbg !5211
  %62 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5212
  %arraydecay113 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5213
  %call114 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %62, i8 zeroext -128, i8* %arraydecay113, i8 zeroext 1) #8, !dbg !5214
  %63 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5215
  %arraydecay115 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5216
  %call116 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %63, i8 zeroext 8, i8* %arraydecay115, i8 zeroext 1) #8, !dbg !5217
  %arrayidx117 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5218
  store i8 16, i8* %arrayidx117, align 1, !dbg !5219
  %64 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5220
  %arraydecay118 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5221
  %call119 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %64, i8 zeroext 8, i8* %arraydecay118, i8 zeroext 1) #8, !dbg !5222
  %65 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5223
  %arraydecay120 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5224
  %call121 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %65, i8 zeroext 8, i8* %arraydecay120, i8 zeroext 1) #8, !dbg !5225
  %arrayidx122 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5226
  store i8 0, i8* %arrayidx122, align 1, !dbg !5227
  %66 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5228
  %arraydecay123 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5229
  %call124 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %66, i8 zeroext 8, i8* %arraydecay123, i8 zeroext 1) #8, !dbg !5230
  %67 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5231
  %arraydecay125 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5232
  %call126 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %67, i8 zeroext -128, i8* %arraydecay125, i8 zeroext 1) #8, !dbg !5233
  %arrayidx127 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5234
  store i8 4, i8* %arrayidx127, align 1, !dbg !5235
  %68 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5236
  %arraydecay128 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5237
  %call129 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %68, i8 zeroext -128, i8* %arraydecay128, i8 zeroext 1) #8, !dbg !5238
  %arrayidx130 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5239
  store i8 0, i8* %arrayidx130, align 1, !dbg !5240
  %69 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5241
  %arraydecay131 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5242
  %call132 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %69, i8 zeroext -127, i8* %arraydecay131, i8 zeroext 1) #8, !dbg !5243
  %arrayidx133 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5244
  store i8 -128, i8* %arrayidx133, align 1, !dbg !5245
  %arrayidx134 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 1, !dbg !5246
  store i8 0, i8* %arrayidx134, align 1, !dbg !5247
  %arrayidx135 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 2, !dbg !5248
  store i8 0, i8* %arrayidx135, align 1, !dbg !5249
  %70 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5250
  %arraydecay136 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5251
  %call137 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %70, i8 zeroext -126, i8* %arraydecay136, i8 zeroext 3) #8, !dbg !5252
  %71 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5253
  %arraydecay138 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5254
  %call139 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %71, i8 zeroext -120, i8* %arraydecay138, i8 zeroext 1) #8, !dbg !5255
  %arrayidx140 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5256
  store i8 17, i8* %arrayidx140, align 1, !dbg !5257
  %72 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5258
  %arraydecay141 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5259
  %call142 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %72, i8 zeroext -120, i8* %arraydecay141, i8 zeroext 1) #8, !dbg !5260
  %73 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5261
  %arraydecay143 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5262
  %call144 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %73, i8 zeroext -128, i8* %arraydecay143, i8 zeroext 1) #8, !dbg !5263
  %arrayidx145 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5264
  store i8 68, i8* %arrayidx145, align 1, !dbg !5265
  %74 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5266
  %arraydecay146 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5267
  %call147 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %74, i8 zeroext -128, i8* %arraydecay146, i8 zeroext 1) #8, !dbg !5268
  br label %if.end148, !dbg !5269

if.end148:                                        ; preds = %if.then109, %sw.epilog97
  %75 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5270
  %modulation149 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %75, i32 0, i32 1, !dbg !5271
  %76 = load i32, i32* %modulation149, align 4, !dbg !5271
  switch i32 %76, label %sw.default156 [
    i32 3, label %sw.bb150
    i32 5, label %sw.bb152
    i32 7, label %sw.bb154
  ], !dbg !5272

sw.bb150:                                         ; preds = %if.end148
  %arrayidx151 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5273
  store i8 2, i8* %arrayidx151, align 1, !dbg !5275
  br label %sw.epilog157, !dbg !5276

sw.bb152:                                         ; preds = %if.end148
  %arrayidx153 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5277
  store i8 3, i8* %arrayidx153, align 1, !dbg !5278
  br label %sw.epilog157, !dbg !5279

sw.bb154:                                         ; preds = %if.end148
  %arrayidx155 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5280
  store i8 0, i8* %arrayidx155, align 1, !dbg !5281
  br label %sw.epilog157, !dbg !5282

sw.default156:                                    ; preds = %if.end148
  store i32 -22, i32* %retval, align 4, !dbg !5283
  br label %return, !dbg !5283

sw.epilog157:                                     ; preds = %sw.bb154, %sw.bb152, %sw.bb150
  %77 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5284
  %arraydecay158 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5285
  %call159 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %77, i8 zeroext 48, i8* %arraydecay158, i8 zeroext 1) #8, !dbg !5286
  %arrayidx160 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5287
  store i8 0, i8* %arrayidx160, align 1, !dbg !5288
  %78 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5289
  %arraydecay161 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5290
  %call162 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %78, i8 zeroext 65, i8* %arraydecay161, i8 zeroext 1) #8, !dbg !5291
  %arrayidx163 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5292
  store i8 -128, i8* %arrayidx163, align 1, !dbg !5293
  %arrayidx164 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 1, !dbg !5294
  store i8 0, i8* %arrayidx164, align 1, !dbg !5295
  %79 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5296
  %demod_chip165 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %79, i32 0, i32 3, !dbg !5297
  %80 = load i32, i32* %demod_chip165, align 8, !dbg !5297
  switch i32 %80, label %sw.default176 [
    i32 1, label %sw.bb166
    i32 2, label %sw.bb171
  ], !dbg !5298

sw.bb166:                                         ; preds = %sw.epilog157
  %81 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5299
  %arraydecay167 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5301
  %call168 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %81, i8 zeroext 73, i8* %arraydecay167, i8 zeroext 2) #8, !dbg !5302
  %82 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5303
  %arraydecay169 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5304
  %call170 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %82, i8 zeroext 75, i8* %arraydecay169, i8 zeroext 2) #8, !dbg !5305
  br label %sw.epilog177, !dbg !5306

sw.bb171:                                         ; preds = %sw.epilog157
  %83 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5307
  %arraydecay172 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5308
  %call173 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %83, i8 zeroext 73, i8* %arraydecay172, i8 zeroext 2) #8, !dbg !5309
  %84 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5310
  %arraydecay174 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5311
  %call175 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %84, i8 zeroext 75, i8* %arraydecay174, i8 zeroext 2) #8, !dbg !5312
  br label %sw.epilog177, !dbg !5313

sw.default176:                                    ; preds = %sw.epilog157
  store i32 -22, i32* %retval, align 4, !dbg !5314
  br label %return, !dbg !5314

sw.epilog177:                                     ; preds = %sw.bb171, %sw.bb166
  %arrayidx178 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5315
  store i8 4, i8* %arrayidx178, align 1, !dbg !5316
  %85 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5317
  %arraydecay179 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5318
  %call180 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %85, i8 zeroext 65, i8* %arraydecay179, i8 zeroext 1) #8, !dbg !5319
  %86 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5320
  call void @nxt200x_microcontroller_start(%struct.nxt200x_state* %86) #8, !dbg !5321
  %87 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5322
  %demod_chip181 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %87, i32 0, i32 3, !dbg !5324
  %88 = load i32, i32* %demod_chip181, align 8, !dbg !5324
  %cmp182 = icmp eq i32 %88, 2, !dbg !5325
  br i1 %cmp182, label %if.then183, label %if.end188, !dbg !5326

if.then183:                                       ; preds = %sw.epilog177
  %89 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5327
  call void @nxt2004_microcontroller_init(%struct.nxt200x_state* %89) #8, !dbg !5329
  %arrayidx184 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5330
  store i8 -16, i8* %arrayidx184, align 1, !dbg !5331
  %arrayidx185 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 1, !dbg !5332
  store i8 0, i8* %arrayidx185, align 1, !dbg !5333
  %90 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5334
  %arraydecay186 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !5335
  %call187 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %90, i8 zeroext 92, i8* %arraydecay186, i8 zeroext 2) #8, !dbg !5336
  br label %if.end188, !dbg !5337

if.end188:                                        ; preds = %if.then183, %sw.epilog177
  store i32 0, i32* %retval, align 4, !dbg !5338
  br label %return, !dbg !5338

return:                                           ; preds = %if.end188, %sw.default176, %sw.default156, %sw.default96, %sw.default74, %sw.default64, %sw.default55, %sw.default42, %sw.default33, %sw.default
  %91 = load i32, i32* %retval, align 4, !dbg !5339
  ret i32 %91, !dbg !5339
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt200x_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %fesettings) #0 !dbg !5340 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fesettings.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5341, metadata !DIExpression()), !dbg !5342
  store %struct.dvb_frontend_tune_settings* %fesettings, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %fesettings.addr, metadata !5343, metadata !DIExpression()), !dbg !5344
  %0 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5345
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %0, i32 0, i32 0, !dbg !5346
  store i32 500, i32* %min_delay_ms, align 4, !dbg !5347
  %1 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5348
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %1, i32 0, i32 1, !dbg !5349
  store i32 0, i32* %step_size, align 4, !dbg !5350
  %2 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5351
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %2, i32 0, i32 2, !dbg !5352
  store i32 0, i32* %max_drift, align 4, !dbg !5353
  ret i32 0, !dbg !5354
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt200x_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !5355 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.nxt200x_state*, align 8
  %lock = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5356, metadata !DIExpression()), !dbg !5357
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5358, metadata !DIExpression()), !dbg !5359
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state, metadata !5360, metadata !DIExpression()), !dbg !5361
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5362
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5363
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5363
  %2 = bitcast i8* %1 to %struct.nxt200x_state*, !dbg !5362
  store %struct.nxt200x_state* %2, %struct.nxt200x_state** %state, align 8, !dbg !5361
  call void @llvm.dbg.declare(metadata i8* %lock, metadata !5364, metadata !DIExpression()), !dbg !5365
  %3 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5366
  %call = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %3, i8 zeroext 49, i8* %lock, i8 zeroext 1) #8, !dbg !5367
  %4 = load i32*, i32** %status.addr, align 8, !dbg !5368
  store i32 0, i32* %4, align 4, !dbg !5369
  %5 = load i8, i8* %lock, align 1, !dbg !5370
  %conv = zext i8 %5 to i32, !dbg !5370
  %and = and i32 %conv, 32, !dbg !5372
  %tobool = icmp ne i32 %and, 0, !dbg !5372
  br i1 %tobool, label %if.then, label %if.end, !dbg !5373

if.then:                                          ; preds = %entry
  %6 = load i32*, i32** %status.addr, align 8, !dbg !5374
  %7 = load i32, i32* %6, align 4, !dbg !5376
  %or = or i32 %7, 1, !dbg !5376
  store i32 %or, i32* %6, align 4, !dbg !5376
  %8 = load i32*, i32** %status.addr, align 8, !dbg !5377
  %9 = load i32, i32* %8, align 4, !dbg !5378
  %or1 = or i32 %9, 2, !dbg !5378
  store i32 %or1, i32* %8, align 4, !dbg !5378
  %10 = load i32*, i32** %status.addr, align 8, !dbg !5379
  %11 = load i32, i32* %10, align 4, !dbg !5380
  %or2 = or i32 %11, 4, !dbg !5380
  store i32 %or2, i32* %10, align 4, !dbg !5380
  %12 = load i32*, i32** %status.addr, align 8, !dbg !5381
  %13 = load i32, i32* %12, align 4, !dbg !5382
  %or3 = or i32 %13, 8, !dbg !5382
  store i32 %or3, i32* %12, align 4, !dbg !5382
  %14 = load i32*, i32** %status.addr, align 8, !dbg !5383
  %15 = load i32, i32* %14, align 4, !dbg !5384
  %or4 = or i32 %15, 16, !dbg !5384
  store i32 %or4, i32* %14, align 4, !dbg !5384
  br label %if.end, !dbg !5385

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !5386
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt200x_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5387 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %state = alloca %struct.nxt200x_state*, align 8
  %b = alloca [3 x i8], align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5388, metadata !DIExpression()), !dbg !5389
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5390, metadata !DIExpression()), !dbg !5391
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state, metadata !5392, metadata !DIExpression()), !dbg !5393
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5394
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5395
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5395
  %2 = bitcast i8* %1 to %struct.nxt200x_state*, !dbg !5394
  store %struct.nxt200x_state* %2, %struct.nxt200x_state** %state, align 8, !dbg !5393
  call void @llvm.dbg.declare(metadata [3 x i8]* %b, metadata !5396, metadata !DIExpression()), !dbg !5398
  %3 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5399
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %b, i64 0, i64 0, !dbg !5400
  %call = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %3, i8 zeroext -26, i8* %arraydecay, i8 zeroext 3) #8, !dbg !5401
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %b, i64 0, i64 0, !dbg !5402
  %4 = load i8, i8* %arrayidx, align 1, !dbg !5402
  %conv = zext i8 %4 to i32, !dbg !5402
  %shl = shl i32 %conv, 8, !dbg !5403
  %arrayidx1 = getelementptr [3 x i8], [3 x i8]* %b, i64 0, i64 1, !dbg !5404
  %5 = load i8, i8* %arrayidx1, align 1, !dbg !5404
  %conv2 = zext i8 %5 to i32, !dbg !5404
  %add = add i32 %shl, %conv2, !dbg !5405
  %mul = mul i32 %add, 8, !dbg !5406
  %6 = load i32*, i32** %ber.addr, align 8, !dbg !5407
  store i32 %mul, i32* %6, align 4, !dbg !5408
  ret i32 0, !dbg !5409
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt200x_read_signal_strength(%struct.dvb_frontend* %fe, i16* %strength) #0 !dbg !5410 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %strength.addr = alloca i16*, align 8
  %state = alloca %struct.nxt200x_state*, align 8
  %b = alloca [2 x i8], align 1
  %temp = alloca i16, align 2
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5411, metadata !DIExpression()), !dbg !5412
  store i16* %strength, i16** %strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %strength.addr, metadata !5413, metadata !DIExpression()), !dbg !5414
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state, metadata !5415, metadata !DIExpression()), !dbg !5416
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5417
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5418
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5418
  %2 = bitcast i8* %1 to %struct.nxt200x_state*, !dbg !5417
  store %struct.nxt200x_state* %2, %struct.nxt200x_state** %state, align 8, !dbg !5416
  call void @llvm.dbg.declare(metadata [2 x i8]* %b, metadata !5419, metadata !DIExpression()), !dbg !5421
  call void @llvm.dbg.declare(metadata i16* %temp, metadata !5422, metadata !DIExpression()), !dbg !5423
  store i16 0, i16* %temp, align 2, !dbg !5423
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %b, i64 0, i64 0, !dbg !5424
  store i8 0, i8* %arrayidx, align 1, !dbg !5425
  %3 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5426
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %b, i64 0, i64 0, !dbg !5427
  %call = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %3, i8 zeroext -95, i8* %arraydecay, i8 zeroext 1) #8, !dbg !5428
  %4 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5429
  %arraydecay1 = getelementptr inbounds [2 x i8], [2 x i8]* %b, i64 0, i64 0, !dbg !5430
  %call2 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %4, i8 zeroext -90, i8* %arraydecay1, i8 zeroext 2) #8, !dbg !5431
  %arrayidx3 = getelementptr [2 x i8], [2 x i8]* %b, i64 0, i64 0, !dbg !5432
  %5 = load i8, i8* %arrayidx3, align 1, !dbg !5432
  %conv = zext i8 %5 to i32, !dbg !5432
  %shl = shl i32 %conv, 8, !dbg !5433
  %arrayidx4 = getelementptr [2 x i8], [2 x i8]* %b, i64 0, i64 1, !dbg !5434
  %6 = load i8, i8* %arrayidx4, align 1, !dbg !5434
  %conv5 = zext i8 %6 to i32, !dbg !5434
  %or = or i32 %shl, %conv5, !dbg !5435
  %conv6 = trunc i32 %or to i16, !dbg !5436
  store i16 %conv6, i16* %temp, align 2, !dbg !5437
  %7 = load i16, i16* %temp, align 2, !dbg !5438
  %conv7 = zext i16 %7 to i32, !dbg !5438
  %sub = sub i32 32767, %conv7, !dbg !5439
  %and = and i32 %sub, 4095, !dbg !5440
  %mul = mul i32 %and, 16, !dbg !5441
  %conv8 = trunc i32 %mul to i16, !dbg !5442
  %8 = load i16*, i16** %strength.addr, align 8, !dbg !5443
  store i16 %conv8, i16* %8, align 2, !dbg !5444
  ret i32 0, !dbg !5445
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt200x_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5446 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %state = alloca %struct.nxt200x_state*, align 8
  %b = alloca [2 x i8], align 1
  %temp = alloca i16, align 2
  %temp2 = alloca i16, align 2
  %snrdb = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5447, metadata !DIExpression()), !dbg !5448
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5449, metadata !DIExpression()), !dbg !5450
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state, metadata !5451, metadata !DIExpression()), !dbg !5452
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5453
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5454
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5454
  %2 = bitcast i8* %1 to %struct.nxt200x_state*, !dbg !5453
  store %struct.nxt200x_state* %2, %struct.nxt200x_state** %state, align 8, !dbg !5452
  call void @llvm.dbg.declare(metadata [2 x i8]* %b, metadata !5455, metadata !DIExpression()), !dbg !5456
  call void @llvm.dbg.declare(metadata i16* %temp, metadata !5457, metadata !DIExpression()), !dbg !5458
  store i16 0, i16* %temp, align 2, !dbg !5458
  call void @llvm.dbg.declare(metadata i16* %temp2, metadata !5459, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.declare(metadata i32* %snrdb, metadata !5461, metadata !DIExpression()), !dbg !5462
  store i32 0, i32* %snrdb, align 4, !dbg !5462
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %b, i64 0, i64 0, !dbg !5463
  store i8 0, i8* %arrayidx, align 1, !dbg !5464
  %3 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5465
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %b, i64 0, i64 0, !dbg !5466
  %call = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %3, i8 zeroext -95, i8* %arraydecay, i8 zeroext 1) #8, !dbg !5467
  %4 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5468
  %arraydecay1 = getelementptr inbounds [2 x i8], [2 x i8]* %b, i64 0, i64 0, !dbg !5469
  %call2 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %4, i8 zeroext -90, i8* %arraydecay1, i8 zeroext 2) #8, !dbg !5470
  %arrayidx3 = getelementptr [2 x i8], [2 x i8]* %b, i64 0, i64 0, !dbg !5471
  %5 = load i8, i8* %arrayidx3, align 1, !dbg !5471
  %conv = zext i8 %5 to i32, !dbg !5471
  %shl = shl i32 %conv, 8, !dbg !5472
  %arrayidx4 = getelementptr [2 x i8], [2 x i8]* %b, i64 0, i64 1, !dbg !5473
  %6 = load i8, i8* %arrayidx4, align 1, !dbg !5473
  %conv5 = zext i8 %6 to i32, !dbg !5473
  %or = or i32 %shl, %conv5, !dbg !5474
  %conv6 = trunc i32 %or to i16, !dbg !5475
  store i16 %conv6, i16* %temp, align 2, !dbg !5476
  %7 = load i16, i16* %temp, align 2, !dbg !5477
  %conv7 = zext i16 %7 to i32, !dbg !5477
  %sub = sub i32 32767, %conv7, !dbg !5478
  %conv8 = trunc i32 %sub to i16, !dbg !5479
  store i16 %conv8, i16* %temp2, align 2, !dbg !5480
  %8 = load i16, i16* %temp2, align 2, !dbg !5481
  %conv9 = zext i16 %8 to i32, !dbg !5481
  %cmp = icmp sgt i32 %conv9, 32512, !dbg !5483
  br i1 %cmp, label %if.then, label %if.else, !dbg !5484

if.then:                                          ; preds = %entry
  %9 = load i16, i16* %temp2, align 2, !dbg !5485
  %conv11 = zext i16 %9 to i32, !dbg !5485
  %sub12 = sub i32 %conv11, 32512, !dbg !5486
  %mul = mul i32 6000, %sub12, !dbg !5487
  %div = sdiv i32 %mul, 255, !dbg !5488
  %add = add i32 24000, %div, !dbg !5489
  store i32 %add, i32* %snrdb, align 4, !dbg !5490
  br label %if.end39, !dbg !5491

if.else:                                          ; preds = %entry
  %10 = load i16, i16* %temp2, align 2, !dbg !5492
  %conv13 = zext i16 %10 to i32, !dbg !5492
  %cmp14 = icmp sgt i32 %conv13, 32448, !dbg !5494
  br i1 %cmp14, label %if.then16, label %if.else22, !dbg !5495

if.then16:                                        ; preds = %if.else
  %11 = load i16, i16* %temp2, align 2, !dbg !5496
  %conv17 = zext i16 %11 to i32, !dbg !5496
  %sub18 = sub i32 %conv17, 32448, !dbg !5497
  %mul19 = mul i32 6000, %sub18, !dbg !5498
  %div20 = sdiv i32 %mul19, 64, !dbg !5499
  %add21 = add i32 18000, %div20, !dbg !5500
  store i32 %add21, i32* %snrdb, align 4, !dbg !5501
  br label %if.end38, !dbg !5502

if.else22:                                        ; preds = %if.else
  %12 = load i16, i16* %temp2, align 2, !dbg !5503
  %conv23 = zext i16 %12 to i32, !dbg !5503
  %cmp24 = icmp sgt i32 %conv23, 31744, !dbg !5505
  br i1 %cmp24, label %if.then26, label %if.else32, !dbg !5506

if.then26:                                        ; preds = %if.else22
  %13 = load i16, i16* %temp2, align 2, !dbg !5507
  %conv27 = zext i16 %13 to i32, !dbg !5507
  %sub28 = sub i32 %conv27, 31744, !dbg !5508
  %mul29 = mul i32 6000, %sub28, !dbg !5509
  %div30 = sdiv i32 %mul29, 704, !dbg !5510
  %add31 = add i32 12000, %div30, !dbg !5511
  store i32 %add31, i32* %snrdb, align 4, !dbg !5512
  br label %if.end, !dbg !5513

if.else32:                                        ; preds = %if.else22
  %14 = load i16, i16* %temp2, align 2, !dbg !5514
  %conv33 = zext i16 %14 to i32, !dbg !5514
  %sub34 = sub i32 %conv33, 0, !dbg !5515
  %mul35 = mul i32 12000, %sub34, !dbg !5516
  %div36 = sdiv i32 %mul35, 31744, !dbg !5517
  %add37 = add i32 0, %div36, !dbg !5518
  store i32 %add37, i32* %snrdb, align 4, !dbg !5519
  br label %if.end

if.end:                                           ; preds = %if.else32, %if.then26
  br label %if.end38

if.end38:                                         ; preds = %if.end, %if.then16
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then
  %15 = load i32, i32* %snrdb, align 4, !dbg !5520
  %mul40 = mul i32 %15, 2, !dbg !5521
  %conv41 = trunc i32 %mul40 to i16, !dbg !5520
  %16 = load i16*, i16** %snr.addr, align 8, !dbg !5522
  store i16 %conv41, i16* %16, align 2, !dbg !5523
  ret i32 0, !dbg !5524
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt200x_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !5525 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  %state = alloca %struct.nxt200x_state*, align 8
  %b = alloca [3 x i8], align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5526, metadata !DIExpression()), !dbg !5527
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !5528, metadata !DIExpression()), !dbg !5529
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state, metadata !5530, metadata !DIExpression()), !dbg !5531
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5532
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5533
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5533
  %2 = bitcast i8* %1 to %struct.nxt200x_state*, !dbg !5532
  store %struct.nxt200x_state* %2, %struct.nxt200x_state** %state, align 8, !dbg !5531
  call void @llvm.dbg.declare(metadata [3 x i8]* %b, metadata !5534, metadata !DIExpression()), !dbg !5535
  %3 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5536
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %b, i64 0, i64 0, !dbg !5537
  %call = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %3, i8 zeroext -26, i8* %arraydecay, i8 zeroext 3) #8, !dbg !5538
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %b, i64 0, i64 2, !dbg !5539
  %4 = load i8, i8* %arrayidx, align 1, !dbg !5539
  %conv = zext i8 %4 to i32, !dbg !5539
  %5 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5540
  store i32 %conv, i32* %5, align 4, !dbg !5541
  ret i32 0, !dbg !5542
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt2002_init(%struct.dvb_frontend* %fe) #0 !dbg !5543 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.nxt200x_state*, align 8
  %fw = alloca %struct.firmware*, align 8
  %ret = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5544, metadata !DIExpression()), !dbg !5545
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state, metadata !5546, metadata !DIExpression()), !dbg !5547
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5548
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5549
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5549
  %2 = bitcast i8* %1 to %struct.nxt200x_state*, !dbg !5548
  store %struct.nxt200x_state* %2, %struct.nxt200x_state** %state, align 8, !dbg !5547
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw, metadata !5550, metadata !DIExpression()), !dbg !5559
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5560, metadata !DIExpression()), !dbg !5561
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !5562, metadata !DIExpression()), !dbg !5563
  store i32 0, i32* %tmp, align 4, !dbg !5564
  %3 = load i32, i32* %tmp, align 4, !dbg !5567
  %4 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5568
  %i2c = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %4, i32 0, i32 0, !dbg !5569
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5569
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %5, i32 0, i32 9, !dbg !5570
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5571
  %6 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5571
  %call = call i32 @request_firmware(%struct.firmware** %fw, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), %struct.device* %6) #8, !dbg !5572
  store i32 %call, i32* %ret, align 4, !dbg !5573
  store i32 0, i32* %tmp1, align 4, !dbg !5574
  %7 = load i32, i32* %tmp1, align 4, !dbg !5577
  %8 = load i32, i32* %ret, align 4, !dbg !5578
  %tobool = icmp ne i32 %8, 0, !dbg !5578
  br i1 %tobool, label %if.then, label %if.end, !dbg !5580

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.nxt2002_init, i64 0, i64 0)) #9, !dbg !5581
  %9 = load i32, i32* %ret, align 4, !dbg !5583
  store i32 %9, i32* %retval, align 4, !dbg !5584
  br label %return, !dbg !5584

if.end:                                           ; preds = %entry
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5585
  %11 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5586
  %call3 = call i32 @nxt2002_load_firmware(%struct.dvb_frontend* %10, %struct.firmware* %11) #8, !dbg !5587
  store i32 %call3, i32* %ret, align 4, !dbg !5588
  %12 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5589
  call void @release_firmware(%struct.firmware* %12) #8, !dbg !5590
  %13 = load i32, i32* %ret, align 4, !dbg !5591
  %tobool4 = icmp ne i32 %13, 0, !dbg !5591
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !5593

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.nxt2002_init, i64 0, i64 0)) #9, !dbg !5594
  %14 = load i32, i32* %ret, align 4, !dbg !5596
  store i32 %14, i32* %retval, align 4, !dbg !5597
  br label %return, !dbg !5597

if.end7:                                          ; preds = %if.end
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.nxt2002_init, i64 0, i64 0)) #9, !dbg !5598
  %15 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5599
  call void @nxt200x_microcontroller_stop(%struct.nxt200x_state* %15) #8, !dbg !5600
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5601
  store i8 0, i8* %arrayidx, align 1, !dbg !5602
  %16 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5603
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5604
  %call9 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %16, i8 zeroext 43, i8* %arraydecay, i8 zeroext 1) #8, !dbg !5605
  %17 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5606
  call void @nxt200x_microcontroller_stop(%struct.nxt200x_state* %17) #8, !dbg !5607
  %arrayidx10 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5608
  store i8 15, i8* %arrayidx10, align 1, !dbg !5609
  %18 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5610
  %arraydecay11 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5611
  %call12 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %18, i8 zeroext 8, i8* %arraydecay11, i8 zeroext 1) #8, !dbg !5612
  %arrayidx13 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5613
  store i8 0, i8* %arrayidx13, align 1, !dbg !5614
  %19 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5615
  %arraydecay14 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5616
  %call15 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %19, i8 zeroext 8, i8* %arraydecay14, i8 zeroext 1) #8, !dbg !5617
  %arrayidx16 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5618
  store i8 -15, i8* %arrayidx16, align 1, !dbg !5619
  %20 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5620
  %arraydecay17 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5621
  %call18 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %20, i8 zeroext 87, i8* %arraydecay17, i8 zeroext 1) #8, !dbg !5622
  %arrayidx19 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5623
  store i8 32, i8* %arrayidx19, align 1, !dbg !5624
  %21 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5625
  %arraydecay20 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5626
  %call21 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %21, i8 zeroext 9, i8* %arraydecay20, i8 zeroext 1) #8, !dbg !5627
  %arrayidx22 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5628
  store i8 126, i8* %arrayidx22, align 1, !dbg !5629
  %arrayidx23 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 1, !dbg !5630
  store i8 0, i8* %arrayidx23, align 1, !dbg !5631
  %22 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5632
  %arraydecay24 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5633
  %call25 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %22, i8 zeroext -23, i8* %arraydecay24, i8 zeroext 2) #8, !dbg !5634
  %arrayidx26 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5635
  store i8 0, i8* %arrayidx26, align 1, !dbg !5636
  %23 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5637
  %arraydecay27 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5638
  %call28 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %23, i8 zeroext -52, i8* %arraydecay27, i8 zeroext 1) #8, !dbg !5639
  store i32 0, i32* %retval, align 4, !dbg !5640
  br label %return, !dbg !5640

return:                                           ; preds = %if.end7, %if.then5, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !5641
  ret i32 %24, !dbg !5641
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt2004_init(%struct.dvb_frontend* %fe) #0 !dbg !5642 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.nxt200x_state*, align 8
  %fw = alloca %struct.firmware*, align 8
  %ret = alloca i32, align 4
  %buf = alloca [3 x i8], align 1
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5643, metadata !DIExpression()), !dbg !5644
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state, metadata !5645, metadata !DIExpression()), !dbg !5646
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5647
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5648
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5648
  %2 = bitcast i8* %1 to %struct.nxt200x_state*, !dbg !5647
  store %struct.nxt200x_state* %2, %struct.nxt200x_state** %state, align 8, !dbg !5646
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw, metadata !5649, metadata !DIExpression()), !dbg !5650
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5651, metadata !DIExpression()), !dbg !5652
  call void @llvm.dbg.declare(metadata [3 x i8]* %buf, metadata !5653, metadata !DIExpression()), !dbg !5654
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5655
  store i8 0, i8* %arrayidx, align 1, !dbg !5656
  %3 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5657
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5658
  %call = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %3, i8 zeroext 30, i8* %arraydecay, i8 zeroext 1) #8, !dbg !5659
  store i32 0, i32* %tmp, align 4, !dbg !5660
  %4 = load i32, i32* %tmp, align 4, !dbg !5663
  %5 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5664
  %i2c = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %5, i32 0, i32 0, !dbg !5665
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5665
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %6, i32 0, i32 9, !dbg !5666
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5667
  %7 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5667
  %call1 = call i32 @request_firmware(%struct.firmware** %fw, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), %struct.device* %7) #8, !dbg !5668
  store i32 %call1, i32* %ret, align 4, !dbg !5669
  store i32 0, i32* %tmp2, align 4, !dbg !5670
  %8 = load i32, i32* %tmp2, align 4, !dbg !5673
  %9 = load i32, i32* %ret, align 4, !dbg !5674
  %tobool = icmp ne i32 %9, 0, !dbg !5674
  br i1 %tobool, label %if.then, label %if.end, !dbg !5676

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.nxt2004_init, i64 0, i64 0)) #9, !dbg !5677
  %10 = load i32, i32* %ret, align 4, !dbg !5679
  store i32 %10, i32* %retval, align 4, !dbg !5680
  br label %return, !dbg !5680

if.end:                                           ; preds = %entry
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5681
  %12 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5682
  %call4 = call i32 @nxt2004_load_firmware(%struct.dvb_frontend* %11, %struct.firmware* %12) #8, !dbg !5683
  store i32 %call4, i32* %ret, align 4, !dbg !5684
  %13 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5685
  call void @release_firmware(%struct.firmware* %13) #8, !dbg !5686
  %14 = load i32, i32* %ret, align 4, !dbg !5687
  %tobool5 = icmp ne i32 %14, 0, !dbg !5687
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !5689

if.then6:                                         ; preds = %if.end
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.nxt2004_init, i64 0, i64 0)) #9, !dbg !5690
  %15 = load i32, i32* %ret, align 4, !dbg !5692
  store i32 %15, i32* %retval, align 4, !dbg !5693
  br label %return, !dbg !5693

if.end8:                                          ; preds = %if.end
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.nxt2004_init, i64 0, i64 0)) #9, !dbg !5694
  %arrayidx10 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5695
  store i8 1, i8* %arrayidx10, align 1, !dbg !5696
  %16 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5697
  %arraydecay11 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5698
  %call12 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %16, i8 zeroext 25, i8* %arraydecay11, i8 zeroext 1) #8, !dbg !5699
  %17 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5700
  call void @nxt2004_microcontroller_init(%struct.nxt200x_state* %17) #8, !dbg !5701
  %18 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5702
  call void @nxt200x_microcontroller_stop(%struct.nxt200x_state* %18) #8, !dbg !5703
  %19 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5704
  call void @nxt200x_microcontroller_stop(%struct.nxt200x_state* %19) #8, !dbg !5705
  %20 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5706
  call void @nxt2004_microcontroller_init(%struct.nxt200x_state* %20) #8, !dbg !5707
  %21 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5708
  call void @nxt200x_microcontroller_stop(%struct.nxt200x_state* %21) #8, !dbg !5709
  %arrayidx13 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5710
  store i8 -1, i8* %arrayidx13, align 1, !dbg !5711
  %22 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5712
  %arraydecay14 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5713
  %call15 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %22, i8 zeroext 8, i8* %arraydecay14, i8 zeroext 1) #8, !dbg !5714
  %arrayidx16 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5715
  store i8 0, i8* %arrayidx16, align 1, !dbg !5716
  %23 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5717
  %arraydecay17 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5718
  %call18 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %23, i8 zeroext 8, i8* %arraydecay17, i8 zeroext 1) #8, !dbg !5719
  %arrayidx19 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5720
  store i8 -41, i8* %arrayidx19, align 1, !dbg !5721
  %24 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5722
  %arraydecay20 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5723
  %call21 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %24, i8 zeroext 87, i8* %arraydecay20, i8 zeroext 1) #8, !dbg !5724
  %arrayidx22 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5725
  store i8 7, i8* %arrayidx22, align 1, !dbg !5726
  %arrayidx23 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !5727
  store i8 -2, i8* %arrayidx23, align 1, !dbg !5728
  %25 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5729
  %arraydecay24 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5730
  %call25 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %25, i8 zeroext 53, i8* %arraydecay24, i8 zeroext 2) #8, !dbg !5731
  %arrayidx26 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5732
  store i8 18, i8* %arrayidx26, align 1, !dbg !5733
  %26 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5734
  %arraydecay27 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5735
  %call28 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %26, i8 zeroext 52, i8* %arraydecay27, i8 zeroext 1) #8, !dbg !5736
  %arrayidx29 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5737
  store i8 -128, i8* %arrayidx29, align 1, !dbg !5738
  %27 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5739
  %arraydecay30 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5740
  %call31 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %27, i8 zeroext 33, i8* %arraydecay30, i8 zeroext 1) #8, !dbg !5741
  %arrayidx32 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5742
  store i8 33, i8* %arrayidx32, align 1, !dbg !5743
  %28 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5744
  %arraydecay33 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5745
  %call34 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %28, i8 zeroext 10, i8* %arraydecay33, i8 zeroext 1) #8, !dbg !5746
  %arrayidx35 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5747
  store i8 1, i8* %arrayidx35, align 1, !dbg !5748
  %29 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5749
  %arraydecay36 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5750
  %call37 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %29, i8 zeroext -128, i8* %arraydecay36, i8 zeroext 1) #8, !dbg !5751
  %arrayidx38 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5752
  store i8 126, i8* %arrayidx38, align 1, !dbg !5753
  %arrayidx39 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !5754
  store i8 0, i8* %arrayidx39, align 1, !dbg !5755
  %30 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5756
  %arraydecay40 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5757
  %call41 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %30, i8 zeroext -23, i8* %arraydecay40, i8 zeroext 2) #8, !dbg !5758
  %arrayidx42 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5759
  store i8 0, i8* %arrayidx42, align 1, !dbg !5760
  %31 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5761
  %arraydecay43 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5762
  %call44 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %31, i8 zeroext -52, i8* %arraydecay43, i8 zeroext 1) #8, !dbg !5763
  %32 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5764
  %arraydecay45 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5765
  %call46 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %32, i8 zeroext -128, i8* %arraydecay45, i8 zeroext 1) #8, !dbg !5766
  %arrayidx47 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5767
  store i8 0, i8* %arrayidx47, align 1, !dbg !5768
  %33 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5769
  %arraydecay48 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5770
  %call49 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %33, i8 zeroext -128, i8* %arraydecay48, i8 zeroext 1) #8, !dbg !5771
  %34 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5772
  %arraydecay50 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5773
  %call51 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %34, i8 zeroext 8, i8* %arraydecay50, i8 zeroext 1) #8, !dbg !5774
  %arrayidx52 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5775
  store i8 16, i8* %arrayidx52, align 1, !dbg !5776
  %35 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5777
  %arraydecay53 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5778
  %call54 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %35, i8 zeroext 8, i8* %arraydecay53, i8 zeroext 1) #8, !dbg !5779
  %36 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5780
  %arraydecay55 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5781
  %call56 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %36, i8 zeroext 8, i8* %arraydecay55, i8 zeroext 1) #8, !dbg !5782
  %arrayidx57 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5783
  store i8 0, i8* %arrayidx57, align 1, !dbg !5784
  %37 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5785
  %arraydecay58 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5786
  %call59 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %37, i8 zeroext 8, i8* %arraydecay58, i8 zeroext 1) #8, !dbg !5787
  %38 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5788
  %arraydecay60 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5789
  %call61 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %38, i8 zeroext -128, i8* %arraydecay60, i8 zeroext 1) #8, !dbg !5790
  %arrayidx62 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5791
  store i8 1, i8* %arrayidx62, align 1, !dbg !5792
  %39 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5793
  %arraydecay63 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5794
  %call64 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %39, i8 zeroext -128, i8* %arraydecay63, i8 zeroext 1) #8, !dbg !5795
  %arrayidx65 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5796
  store i8 112, i8* %arrayidx65, align 1, !dbg !5797
  %40 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5798
  %arraydecay66 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5799
  %call67 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %40, i8 zeroext -127, i8* %arraydecay66, i8 zeroext 1) #8, !dbg !5800
  %arrayidx68 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5801
  store i8 49, i8* %arrayidx68, align 1, !dbg !5802
  %arrayidx69 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !5803
  store i8 94, i8* %arrayidx69, align 1, !dbg !5804
  %arrayidx70 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !5805
  store i8 102, i8* %arrayidx70, align 1, !dbg !5806
  %41 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5807
  %arraydecay71 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5808
  %call72 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %41, i8 zeroext -126, i8* %arraydecay71, i8 zeroext 3) #8, !dbg !5809
  %42 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5810
  %arraydecay73 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5811
  %call74 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %42, i8 zeroext -120, i8* %arraydecay73, i8 zeroext 1) #8, !dbg !5812
  %arrayidx75 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5813
  store i8 17, i8* %arrayidx75, align 1, !dbg !5814
  %43 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5815
  %arraydecay76 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5816
  %call77 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %43, i8 zeroext -120, i8* %arraydecay76, i8 zeroext 1) #8, !dbg !5817
  %44 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5818
  %arraydecay78 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5819
  %call79 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %44, i8 zeroext -128, i8* %arraydecay78, i8 zeroext 1) #8, !dbg !5820
  %arrayidx80 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5821
  store i8 64, i8* %arrayidx80, align 1, !dbg !5822
  %45 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5823
  %arraydecay81 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5824
  %call82 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %45, i8 zeroext -128, i8* %arraydecay81, i8 zeroext 1) #8, !dbg !5825
  %46 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5826
  %arraydecay83 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5827
  %call84 = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %46, i8 zeroext 16, i8* %arraydecay83, i8 zeroext 1) #8, !dbg !5828
  %arrayidx85 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5829
  store i8 16, i8* %arrayidx85, align 1, !dbg !5830
  %47 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5831
  %arraydecay86 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5832
  %call87 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %47, i8 zeroext 16, i8* %arraydecay86, i8 zeroext 1) #8, !dbg !5833
  %48 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5834
  %arraydecay88 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5835
  %call89 = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %48, i8 zeroext 10, i8* %arraydecay88, i8 zeroext 1) #8, !dbg !5836
  %arrayidx90 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5837
  store i8 33, i8* %arrayidx90, align 1, !dbg !5838
  %49 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5839
  %arraydecay91 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5840
  %call92 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %49, i8 zeroext 10, i8* %arraydecay91, i8 zeroext 1) #8, !dbg !5841
  %50 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5842
  call void @nxt2004_microcontroller_init(%struct.nxt200x_state* %50) #8, !dbg !5843
  %arrayidx93 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5844
  store i8 33, i8* %arrayidx93, align 1, !dbg !5845
  %51 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5846
  %arraydecay94 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5847
  %call95 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %51, i8 zeroext 10, i8* %arraydecay94, i8 zeroext 1) #8, !dbg !5848
  %arrayidx96 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5849
  store i8 126, i8* %arrayidx96, align 1, !dbg !5850
  %52 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5851
  %arraydecay97 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5852
  %call98 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %52, i8 zeroext -23, i8* %arraydecay97, i8 zeroext 1) #8, !dbg !5853
  %arrayidx99 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5854
  store i8 0, i8* %arrayidx99, align 1, !dbg !5855
  %53 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5856
  %arraydecay100 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5857
  %call101 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %53, i8 zeroext -22, i8* %arraydecay100, i8 zeroext 1) #8, !dbg !5858
  %54 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5859
  %arraydecay102 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5860
  %call103 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %54, i8 zeroext -128, i8* %arraydecay102, i8 zeroext 1) #8, !dbg !5861
  %arrayidx104 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5862
  store i8 0, i8* %arrayidx104, align 1, !dbg !5863
  %55 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5864
  %arraydecay105 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5865
  %call106 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %55, i8 zeroext -128, i8* %arraydecay105, i8 zeroext 1) #8, !dbg !5866
  %56 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5867
  %arraydecay107 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5868
  %call108 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %56, i8 zeroext -128, i8* %arraydecay107, i8 zeroext 1) #8, !dbg !5869
  %arrayidx109 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5870
  store i8 0, i8* %arrayidx109, align 1, !dbg !5871
  %57 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5872
  %arraydecay110 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5873
  %call111 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %57, i8 zeroext -128, i8* %arraydecay110, i8 zeroext 1) #8, !dbg !5874
  %58 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5875
  %arraydecay112 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5876
  %call113 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %58, i8 zeroext 8, i8* %arraydecay112, i8 zeroext 1) #8, !dbg !5877
  %arrayidx114 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5878
  store i8 16, i8* %arrayidx114, align 1, !dbg !5879
  %59 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5880
  %arraydecay115 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5881
  %call116 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %59, i8 zeroext 8, i8* %arraydecay115, i8 zeroext 1) #8, !dbg !5882
  %60 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5883
  %arraydecay117 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5884
  %call118 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %60, i8 zeroext 8, i8* %arraydecay117, i8 zeroext 1) #8, !dbg !5885
  %arrayidx119 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5886
  store i8 0, i8* %arrayidx119, align 1, !dbg !5887
  %61 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5888
  %arraydecay120 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5889
  %call121 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %61, i8 zeroext 8, i8* %arraydecay120, i8 zeroext 1) #8, !dbg !5890
  %62 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5891
  %arraydecay122 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5892
  %call123 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %62, i8 zeroext -128, i8* %arraydecay122, i8 zeroext 1) #8, !dbg !5893
  %arrayidx124 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5894
  store i8 4, i8* %arrayidx124, align 1, !dbg !5895
  %63 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5896
  %arraydecay125 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5897
  %call126 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %63, i8 zeroext -128, i8* %arraydecay125, i8 zeroext 1) #8, !dbg !5898
  %arrayidx127 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5899
  store i8 0, i8* %arrayidx127, align 1, !dbg !5900
  %64 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5901
  %arraydecay128 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5902
  %call129 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %64, i8 zeroext -127, i8* %arraydecay128, i8 zeroext 1) #8, !dbg !5903
  %arrayidx130 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5904
  store i8 -128, i8* %arrayidx130, align 1, !dbg !5905
  %arrayidx131 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !5906
  store i8 0, i8* %arrayidx131, align 1, !dbg !5907
  %arrayidx132 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !5908
  store i8 0, i8* %arrayidx132, align 1, !dbg !5909
  %65 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5910
  %arraydecay133 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5911
  %call134 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %65, i8 zeroext -126, i8* %arraydecay133, i8 zeroext 3) #8, !dbg !5912
  %66 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5913
  %arraydecay135 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5914
  %call136 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %66, i8 zeroext -120, i8* %arraydecay135, i8 zeroext 1) #8, !dbg !5915
  %arrayidx137 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5916
  store i8 17, i8* %arrayidx137, align 1, !dbg !5917
  %67 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5918
  %arraydecay138 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5919
  %call139 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %67, i8 zeroext -120, i8* %arraydecay138, i8 zeroext 1) #8, !dbg !5920
  %68 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5921
  %arraydecay140 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5922
  %call141 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %68, i8 zeroext -128, i8* %arraydecay140, i8 zeroext 1) #8, !dbg !5923
  %arrayidx142 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5924
  store i8 68, i8* %arrayidx142, align 1, !dbg !5925
  %69 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5926
  %arraydecay143 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5927
  %call144 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %69, i8 zeroext -128, i8* %arraydecay143, i8 zeroext 1) #8, !dbg !5928
  %70 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5929
  %arraydecay145 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5930
  %call146 = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %70, i8 zeroext 16, i8* %arraydecay145, i8 zeroext 1) #8, !dbg !5931
  %arrayidx147 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5932
  store i8 18, i8* %arrayidx147, align 1, !dbg !5933
  %71 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5934
  %arraydecay148 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5935
  %call149 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %71, i8 zeroext 16, i8* %arraydecay148, i8 zeroext 1) #8, !dbg !5936
  %arrayidx150 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5937
  store i8 4, i8* %arrayidx150, align 1, !dbg !5938
  %72 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5939
  %arraydecay151 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5940
  %call152 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %72, i8 zeroext 19, i8* %arraydecay151, i8 zeroext 1) #8, !dbg !5941
  %arrayidx153 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5942
  store i8 0, i8* %arrayidx153, align 1, !dbg !5943
  %73 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5944
  %arraydecay154 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5945
  %call155 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %73, i8 zeroext 22, i8* %arraydecay154, i8 zeroext 1) #8, !dbg !5946
  %arrayidx156 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5947
  store i8 4, i8* %arrayidx156, align 1, !dbg !5948
  %74 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5949
  %arraydecay157 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5950
  %call158 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %74, i8 zeroext 20, i8* %arraydecay157, i8 zeroext 1) #8, !dbg !5951
  %arrayidx159 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5952
  store i8 0, i8* %arrayidx159, align 1, !dbg !5953
  %75 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5954
  %arraydecay160 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5955
  %call161 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %75, i8 zeroext 20, i8* %arraydecay160, i8 zeroext 1) #8, !dbg !5956
  %76 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5957
  %arraydecay162 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5958
  %call163 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %76, i8 zeroext 23, i8* %arraydecay162, i8 zeroext 1) #8, !dbg !5959
  %77 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5960
  %arraydecay164 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5961
  %call165 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %77, i8 zeroext 20, i8* %arraydecay164, i8 zeroext 1) #8, !dbg !5962
  %78 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !5963
  %arraydecay166 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5964
  %call167 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %78, i8 zeroext 23, i8* %arraydecay166, i8 zeroext 1) #8, !dbg !5965
  store i32 0, i32* %retval, align 4, !dbg !5966
  br label %return, !dbg !5966

return:                                           ; preds = %if.end8, %if.then6, %if.then
  %79 = load i32, i32* %retval, align 4, !dbg !5967
  ret i32 %79, !dbg !5967
}

; Function Attrs: noredzone
declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt2002_load_firmware(%struct.dvb_frontend* %fe, %struct.firmware* %fw) #0 !dbg !5968 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fw.addr = alloca %struct.firmware*, align 8
  %state = alloca %struct.nxt200x_state*, align 8
  %buf = alloca [3 x i8], align 1
  %written = alloca i8, align 1
  %chunkpos = alloca i8, align 1
  %rambase = alloca i16, align 2
  %position = alloca i16, align 2
  %crc = alloca i16, align 2
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5971, metadata !DIExpression()), !dbg !5972
  store %struct.firmware* %fw, %struct.firmware** %fw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw.addr, metadata !5973, metadata !DIExpression()), !dbg !5974
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state, metadata !5975, metadata !DIExpression()), !dbg !5976
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5977
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5978
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5978
  %2 = bitcast i8* %1 to %struct.nxt200x_state*, !dbg !5977
  store %struct.nxt200x_state* %2, %struct.nxt200x_state** %state, align 8, !dbg !5976
  call void @llvm.dbg.declare(metadata [3 x i8]* %buf, metadata !5979, metadata !DIExpression()), !dbg !5980
  call void @llvm.dbg.declare(metadata i8* %written, metadata !5981, metadata !DIExpression()), !dbg !5982
  store i8 0, i8* %written, align 1, !dbg !5982
  call void @llvm.dbg.declare(metadata i8* %chunkpos, metadata !5983, metadata !DIExpression()), !dbg !5984
  store i8 0, i8* %chunkpos, align 1, !dbg !5984
  call void @llvm.dbg.declare(metadata i16* %rambase, metadata !5985, metadata !DIExpression()), !dbg !5986
  call void @llvm.dbg.declare(metadata i16* %position, metadata !5987, metadata !DIExpression()), !dbg !5988
  call void @llvm.dbg.declare(metadata i16* %crc, metadata !5989, metadata !DIExpression()), !dbg !5990
  store i16 0, i16* %crc, align 2, !dbg !5990
  br label %do.body, !dbg !5991

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5992
  %tobool = icmp ne i32 %3, 0, !dbg !5992
  br i1 %tobool, label %if.then, label %if.end, !dbg !5995

if.then:                                          ; preds = %do.body
  store i32 0, i32* %tmp, align 4, !dbg !5996
  %4 = load i32, i32* %tmp, align 4, !dbg !5999
  br label %if.end, !dbg !5992

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5995

do.end:                                           ; preds = %if.end
  br label %do.body1, !dbg !6000

do.body1:                                         ; preds = %do.end
  %5 = load i32, i32* @debug, align 4, !dbg !6001
  %tobool2 = icmp ne i32 %5, 0, !dbg !6001
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !6004

if.then3:                                         ; preds = %do.body1
  store i32 0, i32* %tmp4, align 4, !dbg !6005
  %6 = load i32, i32* %tmp4, align 4, !dbg !6008
  br label %if.end5, !dbg !6001

if.end5:                                          ; preds = %if.then3, %do.body1
  br label %do.end6, !dbg !6004

do.end6:                                          ; preds = %if.end5
  %7 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !6009
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6010
  %call = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %7, i8 zeroext 16, i8* %arraydecay, i8 zeroext 1) #8, !dbg !6011
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6012
  %8 = load i8, i8* %arrayidx, align 1, !dbg !6012
  %conv = zext i8 %8 to i32, !dbg !6012
  %and = and i32 %conv, 16, !dbg !6014
  %tobool7 = icmp ne i32 %and, 0, !dbg !6014
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !6015

if.then8:                                         ; preds = %do.end6
  store i16 4096, i16* %rambase, align 2, !dbg !6016
  br label %if.end9, !dbg !6017

if.else:                                          ; preds = %do.end6
  store i16 0, i16* %rambase, align 2, !dbg !6018
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  br label %do.body10, !dbg !6019

do.body10:                                        ; preds = %if.end9
  %9 = load i32, i32* @debug, align 4, !dbg !6020
  %tobool11 = icmp ne i32 %9, 0, !dbg !6020
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !6023

if.then12:                                        ; preds = %do.body10
  store i32 0, i32* %tmp13, align 4, !dbg !6024
  %10 = load i32, i32* %tmp13, align 4, !dbg !6027
  br label %if.end14, !dbg !6020

if.end14:                                         ; preds = %if.then12, %do.body10
  br label %do.end15, !dbg !6023

do.end15:                                         ; preds = %if.end14
  %arrayidx16 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6028
  store i8 -128, i8* %arrayidx16, align 1, !dbg !6029
  %11 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !6030
  %arraydecay17 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6031
  %call18 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %11, i8 zeroext 43, i8* %arraydecay17, i8 zeroext 1) #8, !dbg !6032
  store i16 0, i16* %position, align 2, !dbg !6033
  br label %for.cond, !dbg !6035

for.cond:                                         ; preds = %for.inc, %do.end15
  %12 = load i16, i16* %position, align 2, !dbg !6036
  %conv19 = zext i16 %12 to i64, !dbg !6036
  %13 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6038
  %size = getelementptr inbounds %struct.firmware, %struct.firmware* %13, i32 0, i32 0, !dbg !6039
  %14 = load i64, i64* %size, align 8, !dbg !6039
  %cmp = icmp ult i64 %conv19, %14, !dbg !6040
  br i1 %cmp, label %for.body, label %for.end, !dbg !6041

for.body:                                         ; preds = %for.cond
  %15 = load i8, i8* %written, align 1, !dbg !6042
  %conv21 = zext i8 %15 to i32, !dbg !6042
  %cmp22 = icmp eq i32 %conv21, 0, !dbg !6045
  br i1 %cmp22, label %if.then24, label %if.end38, !dbg !6046

if.then24:                                        ; preds = %for.body
  store i16 0, i16* %crc, align 2, !dbg !6047
  store i8 40, i8* %chunkpos, align 1, !dbg !6049
  %16 = load i16, i16* %rambase, align 2, !dbg !6050
  %conv25 = zext i16 %16 to i32, !dbg !6050
  %17 = load i16, i16* %position, align 2, !dbg !6051
  %conv26 = zext i16 %17 to i32, !dbg !6051
  %add = add i32 %conv25, %conv26, !dbg !6052
  %shr = ashr i32 %add, 8, !dbg !6053
  %conv27 = trunc i32 %shr to i8, !dbg !6054
  %arrayidx28 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6055
  store i8 %conv27, i8* %arrayidx28, align 1, !dbg !6056
  %18 = load i16, i16* %rambase, align 2, !dbg !6057
  %conv29 = zext i16 %18 to i32, !dbg !6057
  %19 = load i16, i16* %position, align 2, !dbg !6058
  %conv30 = zext i16 %19 to i32, !dbg !6058
  %add31 = add i32 %conv29, %conv30, !dbg !6059
  %and32 = and i32 %add31, 255, !dbg !6060
  %conv33 = trunc i32 %and32 to i8, !dbg !6061
  %arrayidx34 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !6062
  store i8 %conv33, i8* %arrayidx34, align 1, !dbg !6063
  %arrayidx35 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !6064
  store i8 -127, i8* %arrayidx35, align 1, !dbg !6065
  %20 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !6066
  %arraydecay36 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6067
  %call37 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %20, i8 zeroext 41, i8* %arraydecay36, i8 zeroext 3) #8, !dbg !6068
  br label %if.end38, !dbg !6069

if.end38:                                         ; preds = %if.then24, %for.body
  %21 = load i8, i8* %written, align 1, !dbg !6070
  %inc = add i8 %21, 1, !dbg !6070
  store i8 %inc, i8* %written, align 1, !dbg !6070
  %22 = load i8, i8* %chunkpos, align 1, !dbg !6071
  %inc39 = add i8 %22, 1, !dbg !6071
  store i8 %inc39, i8* %chunkpos, align 1, !dbg !6071
  %23 = load i8, i8* %written, align 1, !dbg !6072
  %conv40 = zext i8 %23 to i32, !dbg !6072
  %rem = srem i32 %conv40, 4, !dbg !6074
  %cmp41 = icmp eq i32 %rem, 0, !dbg !6075
  br i1 %cmp41, label %if.then43, label %if.end47, !dbg !6076

if.then43:                                        ; preds = %if.end38
  %24 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !6077
  %25 = load i8, i8* %chunkpos, align 1, !dbg !6078
  %26 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6079
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 1, !dbg !6080
  %27 = load i8*, i8** %data, align 8, !dbg !6080
  %28 = load i16, i16* %position, align 2, !dbg !6081
  %conv44 = zext i16 %28 to i32, !dbg !6081
  %sub = sub i32 %conv44, 3, !dbg !6082
  %idxprom = sext i32 %sub to i64, !dbg !6079
  %arrayidx45 = getelementptr i8, i8* %27, i64 %idxprom, !dbg !6079
  %call46 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %24, i8 zeroext %25, i8* %arrayidx45, i8 zeroext 4) #8, !dbg !6083
  br label %if.end47, !dbg !6083

if.end47:                                         ; preds = %if.then43, %if.end38
  %29 = load i16, i16* %crc, align 2, !dbg !6084
  %30 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6085
  %data48 = getelementptr inbounds %struct.firmware, %struct.firmware* %30, i32 0, i32 1, !dbg !6086
  %31 = load i8*, i8** %data48, align 8, !dbg !6086
  %32 = load i16, i16* %position, align 2, !dbg !6087
  %idxprom49 = zext i16 %32 to i64, !dbg !6085
  %arrayidx50 = getelementptr i8, i8* %31, i64 %idxprom49, !dbg !6085
  %33 = load i8, i8* %arrayidx50, align 1, !dbg !6085
  %call51 = call zeroext i16 @nxt200x_crc(i16 zeroext %29, i8 zeroext %33) #8, !dbg !6088
  store i16 %call51, i16* %crc, align 2, !dbg !6089
  %34 = load i8, i8* %written, align 1, !dbg !6090
  %conv52 = zext i8 %34 to i32, !dbg !6090
  %cmp53 = icmp eq i32 %conv52, 255, !dbg !6092
  br i1 %cmp53, label %if.then61, label %lor.lhs.false, !dbg !6093

lor.lhs.false:                                    ; preds = %if.end47
  %35 = load i16, i16* %position, align 2, !dbg !6094
  %conv55 = zext i16 %35 to i32, !dbg !6094
  %add56 = add i32 %conv55, 1, !dbg !6095
  %conv57 = sext i32 %add56 to i64, !dbg !6094
  %36 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6096
  %size58 = getelementptr inbounds %struct.firmware, %struct.firmware* %36, i32 0, i32 0, !dbg !6097
  %37 = load i64, i64* %size58, align 8, !dbg !6097
  %cmp59 = icmp eq i64 %conv57, %37, !dbg !6098
  br i1 %cmp59, label %if.then61, label %if.end94, !dbg !6099

if.then61:                                        ; preds = %lor.lhs.false, %if.end47
  %38 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !6100
  %39 = load i8, i8* %chunkpos, align 1, !dbg !6102
  %conv62 = zext i8 %39 to i32, !dbg !6102
  %add63 = add i32 %conv62, 4, !dbg !6103
  %40 = load i8, i8* %written, align 1, !dbg !6104
  %conv64 = zext i8 %40 to i32, !dbg !6104
  %rem65 = srem i32 %conv64, 4, !dbg !6105
  %sub66 = sub i32 %add63, %rem65, !dbg !6106
  %conv67 = trunc i32 %sub66 to i8, !dbg !6102
  %41 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6107
  %data68 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 1, !dbg !6108
  %42 = load i8*, i8** %data68, align 8, !dbg !6108
  %43 = load i16, i16* %position, align 2, !dbg !6109
  %conv69 = zext i16 %43 to i32, !dbg !6109
  %44 = load i8, i8* %written, align 1, !dbg !6110
  %conv70 = zext i8 %44 to i32, !dbg !6110
  %rem71 = srem i32 %conv70, 4, !dbg !6111
  %sub72 = sub i32 %conv69, %rem71, !dbg !6112
  %add73 = add i32 %sub72, 1, !dbg !6113
  %idxprom74 = sext i32 %add73 to i64, !dbg !6107
  %arrayidx75 = getelementptr i8, i8* %42, i64 %idxprom74, !dbg !6107
  %45 = load i8, i8* %written, align 1, !dbg !6114
  %conv76 = zext i8 %45 to i32, !dbg !6114
  %rem77 = srem i32 %conv76, 4, !dbg !6115
  %conv78 = trunc i32 %rem77 to i8, !dbg !6114
  %call79 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %38, i8 zeroext %conv67, i8* %arrayidx75, i8 zeroext %conv78) #8, !dbg !6116
  %46 = load i16, i16* %crc, align 2, !dbg !6117
  %conv80 = zext i16 %46 to i32, !dbg !6117
  %shl = shl i32 %conv80, 8, !dbg !6118
  %conv81 = trunc i32 %shl to i8, !dbg !6117
  %arrayidx82 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6119
  store i8 %conv81, i8* %arrayidx82, align 1, !dbg !6120
  %47 = load i16, i16* %crc, align 2, !dbg !6121
  %conv83 = zext i16 %47 to i32, !dbg !6121
  %and84 = and i32 %conv83, 255, !dbg !6122
  %conv85 = trunc i32 %and84 to i8, !dbg !6121
  %arrayidx86 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !6123
  store i8 %conv85, i8* %arrayidx86, align 1, !dbg !6124
  %48 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !6125
  %arraydecay87 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6126
  %call88 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %48, i8 zeroext 44, i8* %arraydecay87, i8 zeroext 2) #8, !dbg !6127
  %49 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !6128
  %arraydecay89 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6129
  %call90 = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %49, i8 zeroext 42, i8* %arraydecay89, i8 zeroext 1) #8, !dbg !6130
  %arrayidx91 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6131
  store i8 -128, i8* %arrayidx91, align 1, !dbg !6132
  %50 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !6133
  %arraydecay92 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6134
  %call93 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %50, i8 zeroext 43, i8* %arraydecay92, i8 zeroext 1) #8, !dbg !6135
  store i8 0, i8* %written, align 1, !dbg !6136
  br label %if.end94, !dbg !6137

if.end94:                                         ; preds = %if.then61, %lor.lhs.false
  br label %for.inc, !dbg !6138

for.inc:                                          ; preds = %if.end94
  %51 = load i16, i16* %position, align 2, !dbg !6139
  %inc95 = add i16 %51, 1, !dbg !6139
  store i16 %inc95, i16* %position, align 2, !dbg !6139
  br label %for.cond, !dbg !6140, !llvm.loop !6141

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !6143
}

; Function Attrs: noredzone
declare dso_local void @release_firmware(%struct.firmware*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nxt200x_microcontroller_stop(%struct.nxt200x_state* %state) #0 !dbg !6144 {
entry:
  %state.addr = alloca %struct.nxt200x_state*, align 8
  %buf = alloca i8, align 1
  %stopval = alloca i8, align 1
  %counter = alloca i8, align 1
  %tmp = alloca i32, align 4
  store %struct.nxt200x_state* %state, %struct.nxt200x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state.addr, metadata !6147, metadata !DIExpression()), !dbg !6148
  call void @llvm.dbg.declare(metadata i8* %buf, metadata !6149, metadata !DIExpression()), !dbg !6150
  call void @llvm.dbg.declare(metadata i8* %stopval, metadata !6151, metadata !DIExpression()), !dbg !6152
  call void @llvm.dbg.declare(metadata i8* %counter, metadata !6153, metadata !DIExpression()), !dbg !6154
  store i8 0, i8* %counter, align 1, !dbg !6154
  br label %do.body, !dbg !6155

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6156
  %tobool = icmp ne i32 %0, 0, !dbg !6156
  br i1 %tobool, label %if.then, label %if.end, !dbg !6159

if.then:                                          ; preds = %do.body
  store i32 0, i32* %tmp, align 4, !dbg !6160
  %1 = load i32, i32* %tmp, align 4, !dbg !6163
  br label %if.end, !dbg !6156

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6159

do.end:                                           ; preds = %if.end
  %2 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6164
  %demod_chip = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %2, i32 0, i32 3, !dbg !6165
  %3 = load i32, i32* %demod_chip, align 8, !dbg !6165
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ], !dbg !6166

sw.bb:                                            ; preds = %do.end
  store i8 64, i8* %stopval, align 1, !dbg !6167
  br label %sw.epilog, !dbg !6169

sw.bb1:                                           ; preds = %do.end
  store i8 16, i8* %stopval, align 1, !dbg !6170
  br label %sw.epilog, !dbg !6171

sw.default:                                       ; preds = %do.end
  store i8 0, i8* %stopval, align 1, !dbg !6172
  br label %sw.epilog, !dbg !6173

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  store i8 -128, i8* %buf, align 1, !dbg !6174
  %4 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6175
  %call = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %4, i8 zeroext 34, i8* %buf, i8 zeroext 1) #8, !dbg !6176
  br label %while.cond, !dbg !6177

while.cond:                                       ; preds = %if.end8, %sw.epilog
  %5 = load i8, i8* %counter, align 1, !dbg !6178
  %conv = zext i8 %5 to i32, !dbg !6178
  %cmp = icmp slt i32 %conv, 20, !dbg !6179
  br i1 %cmp, label %while.body, label %while.end, !dbg !6177

while.body:                                       ; preds = %while.cond
  %6 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6180
  %call3 = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %6, i8 zeroext 49, i8* %buf, i8 zeroext 1) #8, !dbg !6182
  %7 = load i8, i8* %buf, align 1, !dbg !6183
  %conv4 = zext i8 %7 to i32, !dbg !6183
  %8 = load i8, i8* %stopval, align 1, !dbg !6185
  %conv5 = zext i8 %8 to i32, !dbg !6185
  %and = and i32 %conv4, %conv5, !dbg !6186
  %tobool6 = icmp ne i32 %and, 0, !dbg !6186
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6187

if.then7:                                         ; preds = %while.body
  br label %return, !dbg !6188

if.end8:                                          ; preds = %while.body
  call void @msleep(i32 10) #8, !dbg !6189
  %9 = load i8, i8* %counter, align 1, !dbg !6190
  %inc = add i8 %9, 1, !dbg !6190
  store i8 %inc, i8* %counter, align 1, !dbg !6190
  br label %while.cond, !dbg !6177, !llvm.loop !6191

while.end:                                        ; preds = %while.cond
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !6193
  br label %return, !dbg !6194

return:                                           ; preds = %while.end, %if.then7
  ret void, !dbg !6195
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt200x_writebytes(%struct.nxt200x_state* %state, i8 zeroext %reg, i8* %buf, i8 zeroext %len) #0 !dbg !6196 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.nxt200x_state*, align 8
  %reg.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i8, align 1
  %buf2 = alloca [256 x i8], align 16
  %err = alloca i32, align 4
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.nxt200x_state* %state, %struct.nxt200x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state.addr, metadata !6199, metadata !DIExpression()), !dbg !6200
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !6201, metadata !DIExpression()), !dbg !6202
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6203, metadata !DIExpression()), !dbg !6204
  store i8 %len, i8* %len.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %len.addr, metadata !6205, metadata !DIExpression()), !dbg !6206
  call void @llvm.dbg.declare(metadata [256 x i8]* %buf2, metadata !6207, metadata !DIExpression()), !dbg !6211
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6212, metadata !DIExpression()), !dbg !6213
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !6214, metadata !DIExpression()), !dbg !6215
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !6216
  %0 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6217
  %config = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %0, i32 0, i32 1, !dbg !6218
  %1 = load %struct.nxt200x_config*, %struct.nxt200x_config** %config, align 8, !dbg !6218
  %demod_address = getelementptr inbounds %struct.nxt200x_config, %struct.nxt200x_config* %1, i32 0, i32 0, !dbg !6219
  %2 = load i8, i8* %demod_address, align 8, !dbg !6219
  %conv = zext i8 %2 to i16, !dbg !6217
  store i16 %conv, i16* %addr, align 8, !dbg !6216
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !6216
  store i16 0, i16* %flags, align 2, !dbg !6216
  %len1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !6216
  %3 = load i8, i8* %len.addr, align 1, !dbg !6220
  %conv2 = zext i8 %3 to i32, !dbg !6220
  %add = add i32 %conv2, 1, !dbg !6221
  %conv3 = trunc i32 %add to i16, !dbg !6220
  store i16 %conv3, i16* %len1, align 4, !dbg !6216
  %buf4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !6216
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf2, i64 0, i64 0, !dbg !6222
  store i8* %arraydecay, i8** %buf4, align 8, !dbg !6216
  %4 = load i8, i8* %len.addr, align 1, !dbg !6223
  %conv5 = zext i8 %4 to i32, !dbg !6223
  %add6 = add i32 1, %conv5, !dbg !6225
  %conv7 = sext i32 %add6 to i64, !dbg !6226
  %cmp = icmp ugt i64 %conv7, 256, !dbg !6227
  br i1 %cmp, label %if.then, label %if.end, !dbg !6228

if.then:                                          ; preds = %entry
  %5 = load i8, i8* %reg.addr, align 1, !dbg !6229
  %conv9 = zext i8 %5 to i32, !dbg !6229
  %6 = load i8, i8* %len.addr, align 1, !dbg !6229
  %conv10 = zext i8 %6 to i32, !dbg !6229
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.nxt200x_writebytes, i64 0, i64 0), i32 %conv9, i32 %conv10) #9, !dbg !6229
  store i32 -22, i32* %retval, align 4, !dbg !6231
  br label %return, !dbg !6231

if.end:                                           ; preds = %entry
  %7 = load i8, i8* %reg.addr, align 1, !dbg !6232
  %arrayidx = getelementptr [256 x i8], [256 x i8]* %buf2, i64 0, i64 0, !dbg !6233
  store i8 %7, i8* %arrayidx, align 16, !dbg !6234
  %arrayidx11 = getelementptr [256 x i8], [256 x i8]* %buf2, i64 0, i64 1, !dbg !6235
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !6236
  %9 = load i8, i8* %len.addr, align 1, !dbg !6237
  %conv12 = zext i8 %9 to i64, !dbg !6237
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx11, i8* align 1 %8, i64 %conv12, i1 false), !dbg !6238
  %10 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6239
  %i2c = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %10, i32 0, i32 0, !dbg !6241
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !6241
  %call13 = call i32 @i2c_transfer(%struct.i2c_adapter* %11, %struct.i2c_msg* %msg, i32 1) #8, !dbg !6242
  store i32 %call13, i32* %err, align 4, !dbg !6243
  %cmp14 = icmp ne i32 %call13, 1, !dbg !6244
  br i1 %cmp14, label %if.then16, label %if.end21, !dbg !6245

if.then16:                                        ; preds = %if.end
  %12 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6246
  %config17 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %12, i32 0, i32 1, !dbg !6246
  %13 = load %struct.nxt200x_config*, %struct.nxt200x_config** %config17, align 8, !dbg !6246
  %demod_address18 = getelementptr inbounds %struct.nxt200x_config, %struct.nxt200x_config* %13, i32 0, i32 0, !dbg !6246
  %14 = load i8, i8* %demod_address18, align 8, !dbg !6246
  %conv19 = zext i8 %14 to i32, !dbg !6246
  %15 = load i32, i32* %err, align 4, !dbg !6246
  %call20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.nxt200x_writebytes, i64 0, i64 0), i32 %conv19, i32 %15) #9, !dbg !6246
  store i32 -121, i32* %retval, align 4, !dbg !6248
  br label %return, !dbg !6248

if.end21:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6249
  br label %return, !dbg !6249

return:                                           ; preds = %if.end21, %if.then16, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !6250
  ret i32 %16, !dbg !6250
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @nxt200x_crc(i16 zeroext %crc, i8 zeroext %c) #0 !dbg !6251 {
entry:
  %crc.addr = alloca i16, align 2
  %c.addr = alloca i8, align 1
  %i = alloca i8, align 1
  %input = alloca i16, align 2
  store i16 %crc, i16* %crc.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %crc.addr, metadata !6254, metadata !DIExpression()), !dbg !6255
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !6256, metadata !DIExpression()), !dbg !6257
  call void @llvm.dbg.declare(metadata i8* %i, metadata !6258, metadata !DIExpression()), !dbg !6259
  call void @llvm.dbg.declare(metadata i16* %input, metadata !6260, metadata !DIExpression()), !dbg !6261
  %0 = load i8, i8* %c.addr, align 1, !dbg !6262
  %conv = zext i8 %0 to i16, !dbg !6263
  %conv1 = zext i16 %conv to i32, !dbg !6263
  %and = and i32 %conv1, 255, !dbg !6264
  %conv2 = trunc i32 %and to i16, !dbg !6263
  store i16 %conv2, i16* %input, align 2, !dbg !6261
  %1 = load i16, i16* %input, align 2, !dbg !6265
  %conv3 = zext i16 %1 to i32, !dbg !6265
  %shl = shl i32 %conv3, 8, !dbg !6265
  %conv4 = trunc i32 %shl to i16, !dbg !6265
  store i16 %conv4, i16* %input, align 2, !dbg !6265
  store i8 0, i8* %i, align 1, !dbg !6266
  br label %for.cond, !dbg !6268

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8, i8* %i, align 1, !dbg !6269
  %conv5 = zext i8 %2 to i32, !dbg !6269
  %cmp = icmp slt i32 %conv5, 8, !dbg !6271
  br i1 %cmp, label %for.body, label %for.end, !dbg !6272

for.body:                                         ; preds = %for.cond
  %3 = load i16, i16* %crc.addr, align 2, !dbg !6273
  %conv7 = zext i16 %3 to i32, !dbg !6273
  %4 = load i16, i16* %input, align 2, !dbg !6276
  %conv8 = zext i16 %4 to i32, !dbg !6276
  %xor = xor i32 %conv7, %conv8, !dbg !6277
  %and9 = and i32 %xor, 32768, !dbg !6278
  %tobool = icmp ne i32 %and9, 0, !dbg !6278
  br i1 %tobool, label %if.then, label %if.else, !dbg !6279

if.then:                                          ; preds = %for.body
  %5 = load i16, i16* %crc.addr, align 2, !dbg !6280
  %conv10 = zext i16 %5 to i32, !dbg !6280
  %shl11 = shl i32 %conv10, 1, !dbg !6281
  %xor12 = xor i32 %shl11, 4129, !dbg !6282
  %conv13 = trunc i32 %xor12 to i16, !dbg !6283
  store i16 %conv13, i16* %crc.addr, align 2, !dbg !6284
  br label %if.end, !dbg !6285

if.else:                                          ; preds = %for.body
  %6 = load i16, i16* %crc.addr, align 2, !dbg !6286
  %conv14 = zext i16 %6 to i32, !dbg !6286
  %shl15 = shl i32 %conv14, 1, !dbg !6286
  %conv16 = trunc i32 %shl15 to i16, !dbg !6286
  store i16 %conv16, i16* %crc.addr, align 2, !dbg !6286
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i16, i16* %input, align 2, !dbg !6287
  %conv17 = zext i16 %7 to i32, !dbg !6287
  %shl18 = shl i32 %conv17, 1, !dbg !6287
  %conv19 = trunc i32 %shl18 to i16, !dbg !6287
  store i16 %conv19, i16* %input, align 2, !dbg !6287
  br label %for.inc, !dbg !6288

for.inc:                                          ; preds = %if.end
  %8 = load i8, i8* %i, align 1, !dbg !6289
  %inc = add i8 %8, 1, !dbg !6289
  store i8 %inc, i8* %i, align 1, !dbg !6289
  br label %for.cond, !dbg !6290, !llvm.loop !6291

for.end:                                          ; preds = %for.cond
  %9 = load i16, i16* %crc.addr, align 2, !dbg !6293
  ret i16 %9, !dbg !6294
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt2004_load_firmware(%struct.dvb_frontend* %fe, %struct.firmware* %fw) #0 !dbg !6295 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fw.addr = alloca %struct.firmware*, align 8
  %state = alloca %struct.nxt200x_state*, align 8
  %buf = alloca [3 x i8], align 1
  %rambase = alloca i16, align 2
  %position = alloca i16, align 2
  %crc = alloca i16, align 2
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6296, metadata !DIExpression()), !dbg !6297
  store %struct.firmware* %fw, %struct.firmware** %fw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw.addr, metadata !6298, metadata !DIExpression()), !dbg !6299
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state, metadata !6300, metadata !DIExpression()), !dbg !6301
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6302
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6303
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6303
  %2 = bitcast i8* %1 to %struct.nxt200x_state*, !dbg !6302
  store %struct.nxt200x_state* %2, %struct.nxt200x_state** %state, align 8, !dbg !6301
  call void @llvm.dbg.declare(metadata [3 x i8]* %buf, metadata !6304, metadata !DIExpression()), !dbg !6305
  call void @llvm.dbg.declare(metadata i16* %rambase, metadata !6306, metadata !DIExpression()), !dbg !6307
  call void @llvm.dbg.declare(metadata i16* %position, metadata !6308, metadata !DIExpression()), !dbg !6309
  call void @llvm.dbg.declare(metadata i16* %crc, metadata !6310, metadata !DIExpression()), !dbg !6311
  store i16 0, i16* %crc, align 2, !dbg !6311
  br label %do.body, !dbg !6312

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !6313
  %tobool = icmp ne i32 %3, 0, !dbg !6313
  br i1 %tobool, label %if.then, label %if.end, !dbg !6316

if.then:                                          ; preds = %do.body
  store i32 0, i32* %tmp, align 4, !dbg !6317
  %4 = load i32, i32* %tmp, align 4, !dbg !6320
  br label %if.end, !dbg !6313

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6316

do.end:                                           ; preds = %if.end
  br label %do.body1, !dbg !6321

do.body1:                                         ; preds = %do.end
  %5 = load i32, i32* @debug, align 4, !dbg !6322
  %tobool2 = icmp ne i32 %5, 0, !dbg !6322
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !6325

if.then3:                                         ; preds = %do.body1
  store i32 0, i32* %tmp4, align 4, !dbg !6326
  %6 = load i32, i32* %tmp4, align 4, !dbg !6329
  br label %if.end5, !dbg !6322

if.end5:                                          ; preds = %if.then3, %do.body1
  br label %do.end6, !dbg !6325

do.end6:                                          ; preds = %if.end5
  store i16 4096, i16* %rambase, align 2, !dbg !6330
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6331
  store i8 -128, i8* %arrayidx, align 1, !dbg !6332
  %7 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !6333
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6334
  %call = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %7, i8 zeroext 43, i8* %arraydecay, i8 zeroext 1) #8, !dbg !6335
  store i16 0, i16* %position, align 2, !dbg !6336
  br label %for.cond, !dbg !6338

for.cond:                                         ; preds = %for.inc, %do.end6
  %8 = load i16, i16* %position, align 2, !dbg !6339
  %conv = zext i16 %8 to i64, !dbg !6339
  %9 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6341
  %size = getelementptr inbounds %struct.firmware, %struct.firmware* %9, i32 0, i32 0, !dbg !6342
  %10 = load i64, i64* %size, align 8, !dbg !6342
  %cmp = icmp ult i64 %conv, %10, !dbg !6343
  br i1 %cmp, label %for.body, label %for.end, !dbg !6344

for.body:                                         ; preds = %for.cond
  %11 = load i16, i16* %crc, align 2, !dbg !6345
  %12 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6347
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %12, i32 0, i32 1, !dbg !6348
  %13 = load i8*, i8** %data, align 8, !dbg !6348
  %14 = load i16, i16* %position, align 2, !dbg !6349
  %idxprom = zext i16 %14 to i64, !dbg !6347
  %arrayidx8 = getelementptr i8, i8* %13, i64 %idxprom, !dbg !6347
  %15 = load i8, i8* %arrayidx8, align 1, !dbg !6347
  %call9 = call zeroext i16 @nxt200x_crc(i16 zeroext %11, i8 zeroext %15) #8, !dbg !6350
  store i16 %call9, i16* %crc, align 2, !dbg !6351
  br label %for.inc, !dbg !6352

for.inc:                                          ; preds = %for.body
  %16 = load i16, i16* %position, align 2, !dbg !6353
  %inc = add i16 %16, 1, !dbg !6353
  store i16 %inc, i16* %position, align 2, !dbg !6353
  br label %for.cond, !dbg !6354, !llvm.loop !6355

for.end:                                          ; preds = %for.cond
  %17 = load i16, i16* %rambase, align 2, !dbg !6357
  %conv10 = zext i16 %17 to i32, !dbg !6357
  %shr = ashr i32 %conv10, 8, !dbg !6358
  %conv11 = trunc i32 %shr to i8, !dbg !6357
  %arrayidx12 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6359
  store i8 %conv11, i8* %arrayidx12, align 1, !dbg !6360
  %18 = load i16, i16* %rambase, align 2, !dbg !6361
  %conv13 = zext i16 %18 to i32, !dbg !6361
  %and = and i32 %conv13, 255, !dbg !6362
  %conv14 = trunc i32 %and to i8, !dbg !6361
  %arrayidx15 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !6363
  store i8 %conv14, i8* %arrayidx15, align 1, !dbg !6364
  %arrayidx16 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !6365
  store i8 -127, i8* %arrayidx16, align 1, !dbg !6366
  %19 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !6367
  %arraydecay17 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6368
  %call18 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %19, i8 zeroext 41, i8* %arraydecay17, i8 zeroext 3) #8, !dbg !6369
  store i16 0, i16* %position, align 2, !dbg !6370
  br label %for.cond19, !dbg !6372

for.cond19:                                       ; preds = %cond.end47, %for.end
  %20 = load i16, i16* %position, align 2, !dbg !6373
  %conv20 = zext i16 %20 to i64, !dbg !6373
  %21 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6375
  %size21 = getelementptr inbounds %struct.firmware, %struct.firmware* %21, i32 0, i32 0, !dbg !6376
  %22 = load i64, i64* %size21, align 8, !dbg !6376
  %cmp22 = icmp ult i64 %conv20, %22, !dbg !6377
  br i1 %cmp22, label %for.body24, label %for.end51, !dbg !6378

for.body24:                                       ; preds = %for.cond19
  %23 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !6379
  %24 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6381
  %data25 = getelementptr inbounds %struct.firmware, %struct.firmware* %24, i32 0, i32 1, !dbg !6382
  %25 = load i8*, i8** %data25, align 8, !dbg !6382
  %26 = load i16, i16* %position, align 2, !dbg !6383
  %idxprom26 = zext i16 %26 to i64, !dbg !6381
  %arrayidx27 = getelementptr i8, i8* %25, i64 %idxprom26, !dbg !6381
  %27 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6384
  %size28 = getelementptr inbounds %struct.firmware, %struct.firmware* %27, i32 0, i32 0, !dbg !6385
  %28 = load i64, i64* %size28, align 8, !dbg !6385
  %29 = load i16, i16* %position, align 2, !dbg !6386
  %conv29 = zext i16 %29 to i64, !dbg !6386
  %sub = sub i64 %28, %conv29, !dbg !6387
  %cmp30 = icmp ugt i64 %sub, 255, !dbg !6388
  br i1 %cmp30, label %cond.true, label %cond.false, !dbg !6384

cond.true:                                        ; preds = %for.body24
  br label %cond.end, !dbg !6384

cond.false:                                       ; preds = %for.body24
  %30 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6389
  %size32 = getelementptr inbounds %struct.firmware, %struct.firmware* %30, i32 0, i32 0, !dbg !6390
  %31 = load i64, i64* %size32, align 8, !dbg !6390
  %32 = load i16, i16* %position, align 2, !dbg !6391
  %conv33 = zext i16 %32 to i64, !dbg !6391
  %sub34 = sub i64 %31, %conv33, !dbg !6392
  br label %cond.end, !dbg !6384

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 255, %cond.true ], [ %sub34, %cond.false ], !dbg !6384
  %conv35 = trunc i64 %cond to i8, !dbg !6384
  %call36 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %23, i8 zeroext 44, i8* %arrayidx27, i8 zeroext %conv35) #8, !dbg !6393
  %33 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6394
  %size37 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 0, !dbg !6395
  %34 = load i64, i64* %size37, align 8, !dbg !6395
  %35 = load i16, i16* %position, align 2, !dbg !6396
  %conv38 = zext i16 %35 to i64, !dbg !6396
  %sub39 = sub i64 %34, %conv38, !dbg !6397
  %cmp40 = icmp ugt i64 %sub39, 255, !dbg !6398
  br i1 %cmp40, label %cond.true42, label %cond.false43, !dbg !6394

cond.true42:                                      ; preds = %cond.end
  br label %cond.end47, !dbg !6394

cond.false43:                                     ; preds = %cond.end
  %36 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !6399
  %size44 = getelementptr inbounds %struct.firmware, %struct.firmware* %36, i32 0, i32 0, !dbg !6400
  %37 = load i64, i64* %size44, align 8, !dbg !6400
  %38 = load i16, i16* %position, align 2, !dbg !6401
  %conv45 = zext i16 %38 to i64, !dbg !6401
  %sub46 = sub i64 %37, %conv45, !dbg !6402
  br label %cond.end47, !dbg !6394

cond.end47:                                       ; preds = %cond.false43, %cond.true42
  %cond48 = phi i64 [ 255, %cond.true42 ], [ %sub46, %cond.false43 ], !dbg !6394
  %39 = load i16, i16* %position, align 2, !dbg !6403
  %conv49 = zext i16 %39 to i64, !dbg !6403
  %add = add i64 %conv49, %cond48, !dbg !6403
  %conv50 = trunc i64 %add to i16, !dbg !6403
  store i16 %conv50, i16* %position, align 2, !dbg !6403
  br label %for.cond19, !dbg !6404, !llvm.loop !6405

for.end51:                                        ; preds = %for.cond19
  %40 = load i16, i16* %crc, align 2, !dbg !6407
  %conv52 = zext i16 %40 to i32, !dbg !6407
  %shr53 = ashr i32 %conv52, 8, !dbg !6408
  %conv54 = trunc i32 %shr53 to i8, !dbg !6407
  %arrayidx55 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6409
  store i8 %conv54, i8* %arrayidx55, align 1, !dbg !6410
  %41 = load i16, i16* %crc, align 2, !dbg !6411
  %conv56 = zext i16 %41 to i32, !dbg !6411
  %and57 = and i32 %conv56, 255, !dbg !6412
  %conv58 = trunc i32 %and57 to i8, !dbg !6411
  %arrayidx59 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !6413
  store i8 %conv58, i8* %arrayidx59, align 1, !dbg !6414
  br label %do.body60, !dbg !6415

do.body60:                                        ; preds = %for.end51
  %42 = load i32, i32* @debug, align 4, !dbg !6416
  %tobool61 = icmp ne i32 %42, 0, !dbg !6416
  br i1 %tobool61, label %if.then62, label %if.end64, !dbg !6419

if.then62:                                        ; preds = %do.body60
  store i32 0, i32* %tmp63, align 4, !dbg !6420
  %43 = load i32, i32* %tmp63, align 4, !dbg !6423
  br label %if.end64, !dbg !6416

if.end64:                                         ; preds = %if.then62, %do.body60
  br label %do.end65, !dbg !6419

do.end65:                                         ; preds = %if.end64
  %44 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !6424
  %arraydecay66 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6425
  %call67 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %44, i8 zeroext 44, i8* %arraydecay66, i8 zeroext 2) #8, !dbg !6426
  %45 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !6427
  %arraydecay68 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6428
  %call69 = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %45, i8 zeroext 44, i8* %arraydecay68, i8 zeroext 1) #8, !dbg !6429
  %arrayidx70 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6430
  store i8 -128, i8* %arrayidx70, align 1, !dbg !6431
  %46 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state, align 8, !dbg !6432
  %arraydecay71 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6433
  %call72 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %46, i8 zeroext 43, i8* %arraydecay71, i8 zeroext 1) #8, !dbg !6434
  ret i32 0, !dbg !6435
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nxt2004_microcontroller_init(%struct.nxt200x_state* %state) #0 !dbg !6436 {
entry:
  %state.addr = alloca %struct.nxt200x_state*, align 8
  %buf = alloca [9 x i8], align 1
  %counter = alloca i8, align 1
  %tmp = alloca i32, align 4
  store %struct.nxt200x_state* %state, %struct.nxt200x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state.addr, metadata !6437, metadata !DIExpression()), !dbg !6438
  call void @llvm.dbg.declare(metadata [9 x i8]* %buf, metadata !6439, metadata !DIExpression()), !dbg !6441
  call void @llvm.dbg.declare(metadata i8* %counter, metadata !6442, metadata !DIExpression()), !dbg !6443
  store i8 0, i8* %counter, align 1, !dbg !6443
  br label %do.body, !dbg !6444

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6445
  %tobool = icmp ne i32 %0, 0, !dbg !6445
  br i1 %tobool, label %if.then, label %if.end, !dbg !6448

if.then:                                          ; preds = %do.body
  store i32 0, i32* %tmp, align 4, !dbg !6449
  %1 = load i32, i32* %tmp, align 4, !dbg !6452
  br label %if.end, !dbg !6445

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6448

do.end:                                           ; preds = %if.end
  %arrayidx = getelementptr [9 x i8], [9 x i8]* %buf, i64 0, i64 0, !dbg !6453
  store i8 0, i8* %arrayidx, align 1, !dbg !6454
  %2 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6455
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0, !dbg !6456
  %call = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %2, i8 zeroext 43, i8* %arraydecay, i8 zeroext 1) #8, !dbg !6457
  %arrayidx1 = getelementptr [9 x i8], [9 x i8]* %buf, i64 0, i64 0, !dbg !6458
  store i8 112, i8* %arrayidx1, align 1, !dbg !6459
  %3 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6460
  %arraydecay2 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0, !dbg !6461
  %call3 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %3, i8 zeroext 52, i8* %arraydecay2, i8 zeroext 1) #8, !dbg !6462
  %arrayidx4 = getelementptr [9 x i8], [9 x i8]* %buf, i64 0, i64 0, !dbg !6463
  store i8 4, i8* %arrayidx4, align 1, !dbg !6464
  %4 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6465
  %arraydecay5 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0, !dbg !6466
  %call6 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %4, i8 zeroext 53, i8* %arraydecay5, i8 zeroext 1) #8, !dbg !6467
  %arrayidx7 = getelementptr [9 x i8], [9 x i8]* %buf, i64 0, i64 0, !dbg !6468
  store i8 1, i8* %arrayidx7, align 1, !dbg !6469
  %arrayidx8 = getelementptr [9 x i8], [9 x i8]* %buf, i64 0, i64 1, !dbg !6470
  store i8 35, i8* %arrayidx8, align 1, !dbg !6471
  %arrayidx9 = getelementptr [9 x i8], [9 x i8]* %buf, i64 0, i64 2, !dbg !6472
  store i8 69, i8* %arrayidx9, align 1, !dbg !6473
  %arrayidx10 = getelementptr [9 x i8], [9 x i8]* %buf, i64 0, i64 3, !dbg !6474
  store i8 103, i8* %arrayidx10, align 1, !dbg !6475
  %arrayidx11 = getelementptr [9 x i8], [9 x i8]* %buf, i64 0, i64 4, !dbg !6476
  store i8 -119, i8* %arrayidx11, align 1, !dbg !6477
  %arrayidx12 = getelementptr [9 x i8], [9 x i8]* %buf, i64 0, i64 5, !dbg !6478
  store i8 -85, i8* %arrayidx12, align 1, !dbg !6479
  %arrayidx13 = getelementptr [9 x i8], [9 x i8]* %buf, i64 0, i64 6, !dbg !6480
  store i8 -51, i8* %arrayidx13, align 1, !dbg !6481
  %arrayidx14 = getelementptr [9 x i8], [9 x i8]* %buf, i64 0, i64 7, !dbg !6482
  store i8 -17, i8* %arrayidx14, align 1, !dbg !6483
  %arrayidx15 = getelementptr [9 x i8], [9 x i8]* %buf, i64 0, i64 8, !dbg !6484
  store i8 -64, i8* %arrayidx15, align 1, !dbg !6485
  %5 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6486
  %arraydecay16 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0, !dbg !6487
  %call17 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %5, i8 zeroext 54, i8* %arraydecay16, i8 zeroext 9) #8, !dbg !6488
  %arrayidx18 = getelementptr [9 x i8], [9 x i8]* %buf, i64 0, i64 0, !dbg !6489
  store i8 -128, i8* %arrayidx18, align 1, !dbg !6490
  %6 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6491
  %arraydecay19 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0, !dbg !6492
  %call20 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %6, i8 zeroext 33, i8* %arraydecay19, i8 zeroext 1) #8, !dbg !6493
  br label %while.cond, !dbg !6494

while.cond:                                       ; preds = %if.end29, %do.end
  %7 = load i8, i8* %counter, align 1, !dbg !6495
  %conv = zext i8 %7 to i32, !dbg !6495
  %cmp = icmp slt i32 %conv, 20, !dbg !6496
  br i1 %cmp, label %while.body, label %while.end, !dbg !6494

while.body:                                       ; preds = %while.cond
  %8 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6497
  %arraydecay22 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0, !dbg !6499
  %call23 = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %8, i8 zeroext 33, i8* %arraydecay22, i8 zeroext 1) #8, !dbg !6500
  %arrayidx24 = getelementptr [9 x i8], [9 x i8]* %buf, i64 0, i64 0, !dbg !6501
  %9 = load i8, i8* %arrayidx24, align 1, !dbg !6501
  %conv25 = zext i8 %9 to i32, !dbg !6501
  %cmp26 = icmp eq i32 %conv25, 0, !dbg !6503
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !6504

if.then28:                                        ; preds = %while.body
  br label %return, !dbg !6505

if.end29:                                         ; preds = %while.body
  call void @msleep(i32 10) #8, !dbg !6506
  %10 = load i8, i8* %counter, align 1, !dbg !6507
  %inc = add i8 %10, 1, !dbg !6507
  store i8 %inc, i8* %counter, align 1, !dbg !6507
  br label %while.cond, !dbg !6494, !llvm.loop !6508

while.end:                                        ; preds = %while.cond
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !6510
  br label %return, !dbg !6511

return:                                           ; preds = %while.end, %if.then28
  ret void, !dbg !6512
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %state, i8 zeroext %reg, i8* %data, i8 zeroext %len) #0 !dbg !6513 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.nxt200x_state*, align 8
  %reg.addr = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i8, align 1
  %attr = alloca i8, align 1
  %len2 = alloca i8, align 1
  %buf = alloca i8, align 1
  %tmp = alloca i32, align 4
  store %struct.nxt200x_state* %state, %struct.nxt200x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state.addr, metadata !6514, metadata !DIExpression()), !dbg !6515
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !6516, metadata !DIExpression()), !dbg !6517
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6518, metadata !DIExpression()), !dbg !6519
  store i8 %len, i8* %len.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %len.addr, metadata !6520, metadata !DIExpression()), !dbg !6521
  call void @llvm.dbg.declare(metadata i8* %attr, metadata !6522, metadata !DIExpression()), !dbg !6523
  call void @llvm.dbg.declare(metadata i8* %len2, metadata !6524, metadata !DIExpression()), !dbg !6525
  call void @llvm.dbg.declare(metadata i8* %buf, metadata !6526, metadata !DIExpression()), !dbg !6527
  br label %do.body, !dbg !6528

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6529
  %tobool = icmp ne i32 %0, 0, !dbg !6529
  br i1 %tobool, label %if.then, label %if.end, !dbg !6532

if.then:                                          ; preds = %do.body
  store i32 0, i32* %tmp, align 4, !dbg !6533
  %1 = load i32, i32* %tmp, align 4, !dbg !6536
  br label %if.end, !dbg !6529

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6532

do.end:                                           ; preds = %if.end
  %2 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6537
  %call = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %2, i8 zeroext 53, i8* %reg.addr, i8 zeroext 1) #8, !dbg !6538
  %3 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6539
  %4 = load i8*, i8** %data.addr, align 8, !dbg !6540
  %5 = load i8, i8* %len.addr, align 1, !dbg !6541
  %call1 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %3, i8 zeroext 54, i8* %4, i8 zeroext %5) #8, !dbg !6542
  %6 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6543
  %demod_chip = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %6, i32 0, i32 3, !dbg !6544
  %7 = load i32, i32* %demod_chip, align 8, !dbg !6544
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ], !dbg !6545

sw.bb:                                            ; preds = %do.end
  %8 = load i8, i8* %len.addr, align 1, !dbg !6546
  store i8 %8, i8* %len2, align 1, !dbg !6548
  store i8 2, i8* %buf, align 1, !dbg !6549
  br label %sw.epilog, !dbg !6550

sw.bb2:                                           ; preds = %do.end
  store i8 2, i8* %attr, align 1, !dbg !6551
  %9 = load i8, i8* %reg.addr, align 1, !dbg !6552
  %conv = zext i8 %9 to i32, !dbg !6552
  %and = and i32 %conv, 128, !dbg !6554
  %tobool3 = icmp ne i32 %and, 0, !dbg !6554
  br i1 %tobool3, label %if.then4, label %if.end14, !dbg !6555

if.then4:                                         ; preds = %sw.bb2
  %10 = load i8, i8* %attr, align 1, !dbg !6556
  %conv5 = zext i8 %10 to i32, !dbg !6556
  %shl = shl i32 %conv5, 1, !dbg !6558
  %conv6 = trunc i32 %shl to i8, !dbg !6556
  store i8 %conv6, i8* %attr, align 1, !dbg !6559
  %11 = load i8, i8* %reg.addr, align 1, !dbg !6560
  %conv7 = zext i8 %11 to i32, !dbg !6560
  %and8 = and i32 %conv7, 4, !dbg !6562
  %tobool9 = icmp ne i32 %and8, 0, !dbg !6562
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !6563

if.then10:                                        ; preds = %if.then4
  %12 = load i8, i8* %attr, align 1, !dbg !6564
  %conv11 = zext i8 %12 to i32, !dbg !6564
  %shr = ashr i32 %conv11, 1, !dbg !6565
  %conv12 = trunc i32 %shr to i8, !dbg !6564
  store i8 %conv12, i8* %attr, align 1, !dbg !6566
  br label %if.end13, !dbg !6567

if.end13:                                         ; preds = %if.then10, %if.then4
  br label %if.end14, !dbg !6568

if.end14:                                         ; preds = %if.end13, %sw.bb2
  %13 = load i8, i8* %attr, align 1, !dbg !6569
  %conv15 = zext i8 %13 to i32, !dbg !6569
  %shl16 = shl i32 %conv15, 4, !dbg !6570
  %or = or i32 %shl16, 16, !dbg !6571
  %14 = load i8, i8* %len.addr, align 1, !dbg !6572
  %conv17 = zext i8 %14 to i32, !dbg !6572
  %or18 = or i32 %or, %conv17, !dbg !6573
  %conv19 = trunc i32 %or18 to i8, !dbg !6574
  store i8 %conv19, i8* %len2, align 1, !dbg !6575
  store i8 -128, i8* %buf, align 1, !dbg !6576
  br label %sw.epilog, !dbg !6577

sw.default:                                       ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !6578
  br label %return, !dbg !6578

sw.epilog:                                        ; preds = %if.end14, %sw.bb
  %15 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6579
  %call20 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %15, i8 zeroext 52, i8* %len2, i8 zeroext 1) #8, !dbg !6580
  %16 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6581
  %call21 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %16, i8 zeroext 33, i8* %buf, i8 zeroext 1) #8, !dbg !6582
  %17 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6583
  %call22 = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %17, i8 zeroext 33, i8* %buf, i8 zeroext 1) #8, !dbg !6584
  %18 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6585
  %demod_chip23 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %18, i32 0, i32 3, !dbg !6586
  %19 = load i32, i32* %demod_chip23, align 8, !dbg !6586
  switch i32 %19, label %sw.default36 [
    i32 1, label %sw.bb24
    i32 2, label %sw.bb30
  ], !dbg !6587

sw.bb24:                                          ; preds = %sw.epilog
  %20 = load i8, i8* %buf, align 1, !dbg !6588
  %conv25 = zext i8 %20 to i32, !dbg !6588
  %and26 = and i32 %conv25, 2, !dbg !6591
  %cmp = icmp eq i32 %and26, 0, !dbg !6592
  br i1 %cmp, label %if.then28, label %if.end29, !dbg !6593

if.then28:                                        ; preds = %sw.bb24
  store i32 0, i32* %retval, align 4, !dbg !6594
  br label %return, !dbg !6594

if.end29:                                         ; preds = %sw.bb24
  br label %sw.epilog37, !dbg !6595

sw.bb30:                                          ; preds = %sw.epilog
  %21 = load i8, i8* %buf, align 1, !dbg !6596
  %conv31 = zext i8 %21 to i32, !dbg !6596
  %cmp32 = icmp eq i32 %conv31, 0, !dbg !6598
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !6599

if.then34:                                        ; preds = %sw.bb30
  store i32 0, i32* %retval, align 4, !dbg !6600
  br label %return, !dbg !6600

if.end35:                                         ; preds = %sw.bb30
  br label %sw.epilog37, !dbg !6601

sw.default36:                                     ; preds = %sw.epilog
  store i32 -22, i32* %retval, align 4, !dbg !6602
  br label %return, !dbg !6602

sw.epilog37:                                      ; preds = %if.end35, %if.end29
  %22 = load i8, i8* %reg.addr, align 1, !dbg !6603
  %conv38 = zext i8 %22 to i32, !dbg !6603
  %call39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0), i32 %conv38) #9, !dbg !6603
  store i32 0, i32* %retval, align 4, !dbg !6604
  br label %return, !dbg !6604

return:                                           ; preds = %sw.epilog37, %sw.default36, %if.then34, %if.then28, %sw.default
  %23 = load i32, i32* %retval, align 4, !dbg !6605
  ret i32 %23, !dbg !6605
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %state, i8 zeroext %reg, i8* %data, i8 zeroext %len) #0 !dbg !6606 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.nxt200x_state*, align 8
  %reg.addr = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %buf = alloca i8, align 1
  %len2 = alloca i8, align 1
  %attr = alloca i8, align 1
  %tmp = alloca i32, align 4
  store %struct.nxt200x_state* %state, %struct.nxt200x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state.addr, metadata !6607, metadata !DIExpression()), !dbg !6608
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !6609, metadata !DIExpression()), !dbg !6610
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6611, metadata !DIExpression()), !dbg !6612
  store i8 %len, i8* %len.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %len.addr, metadata !6613, metadata !DIExpression()), !dbg !6614
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6615, metadata !DIExpression()), !dbg !6616
  call void @llvm.dbg.declare(metadata i8* %buf, metadata !6617, metadata !DIExpression()), !dbg !6618
  call void @llvm.dbg.declare(metadata i8* %len2, metadata !6619, metadata !DIExpression()), !dbg !6620
  call void @llvm.dbg.declare(metadata i8* %attr, metadata !6621, metadata !DIExpression()), !dbg !6622
  br label %do.body, !dbg !6623

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6624
  %tobool = icmp ne i32 %0, 0, !dbg !6624
  br i1 %tobool, label %if.then, label %if.end, !dbg !6627

if.then:                                          ; preds = %do.body
  store i32 0, i32* %tmp, align 4, !dbg !6628
  %1 = load i32, i32* %tmp, align 4, !dbg !6631
  br label %if.end, !dbg !6624

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6627

do.end:                                           ; preds = %if.end
  %2 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6632
  %call = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %2, i8 zeroext 53, i8* %reg.addr, i8 zeroext 1) #8, !dbg !6633
  %3 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6634
  %demod_chip = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %3, i32 0, i32 3, !dbg !6635
  %4 = load i32, i32* %demod_chip, align 8, !dbg !6635
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ], !dbg !6636

sw.bb:                                            ; preds = %do.end
  %5 = load i8, i8* %len.addr, align 1, !dbg !6637
  %conv = zext i8 %5 to i32, !dbg !6637
  %and = and i32 %conv, 128, !dbg !6639
  %conv1 = trunc i32 %and to i8, !dbg !6637
  store i8 %conv1, i8* %len2, align 1, !dbg !6640
  %6 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6641
  %call2 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %6, i8 zeroext 52, i8* %len2, i8 zeroext 1) #8, !dbg !6642
  %7 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6643
  %8 = load i8, i8* %reg.addr, align 1, !dbg !6644
  %9 = load i8*, i8** %data.addr, align 8, !dbg !6645
  %10 = load i8, i8* %len.addr, align 1, !dbg !6646
  %call3 = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %7, i8 zeroext %8, i8* %9, i8 zeroext %10) #8, !dbg !6647
  store i32 0, i32* %retval, align 4, !dbg !6648
  br label %return, !dbg !6648

sw.bb4:                                           ; preds = %do.end
  store i8 2, i8* %attr, align 1, !dbg !6649
  %11 = load i8, i8* %reg.addr, align 1, !dbg !6650
  %conv5 = zext i8 %11 to i32, !dbg !6650
  %and6 = and i32 %conv5, 128, !dbg !6652
  %tobool7 = icmp ne i32 %and6, 0, !dbg !6652
  br i1 %tobool7, label %if.then8, label %if.end18, !dbg !6653

if.then8:                                         ; preds = %sw.bb4
  %12 = load i8, i8* %attr, align 1, !dbg !6654
  %conv9 = zext i8 %12 to i32, !dbg !6654
  %shl = shl i32 %conv9, 1, !dbg !6656
  %conv10 = trunc i32 %shl to i8, !dbg !6654
  store i8 %conv10, i8* %attr, align 1, !dbg !6657
  %13 = load i8, i8* %reg.addr, align 1, !dbg !6658
  %conv11 = zext i8 %13 to i32, !dbg !6658
  %and12 = and i32 %conv11, 4, !dbg !6660
  %tobool13 = icmp ne i32 %and12, 0, !dbg !6660
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !6661

if.then14:                                        ; preds = %if.then8
  %14 = load i8, i8* %attr, align 1, !dbg !6662
  %conv15 = zext i8 %14 to i32, !dbg !6662
  %shr = ashr i32 %conv15, 1, !dbg !6663
  %conv16 = trunc i32 %shr to i8, !dbg !6662
  store i8 %conv16, i8* %attr, align 1, !dbg !6664
  br label %if.end17, !dbg !6665

if.end17:                                         ; preds = %if.then14, %if.then8
  br label %if.end18, !dbg !6666

if.end18:                                         ; preds = %if.end17, %sw.bb4
  %15 = load i8, i8* %attr, align 1, !dbg !6667
  %conv19 = zext i8 %15 to i32, !dbg !6667
  %shl20 = shl i32 %conv19, 4, !dbg !6668
  %16 = load i8, i8* %len.addr, align 1, !dbg !6669
  %conv21 = zext i8 %16 to i32, !dbg !6669
  %or = or i32 %shl20, %conv21, !dbg !6670
  %conv22 = trunc i32 %or to i8, !dbg !6671
  store i8 %conv22, i8* %len2, align 1, !dbg !6672
  %17 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6673
  %call23 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %17, i8 zeroext 52, i8* %len2, i8 zeroext 1) #8, !dbg !6674
  store i8 -128, i8* %buf, align 1, !dbg !6675
  %18 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6676
  %call24 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %18, i8 zeroext 33, i8* %buf, i8 zeroext 1) #8, !dbg !6677
  store i32 0, i32* %i, align 4, !dbg !6678
  br label %for.cond, !dbg !6680

for.cond:                                         ; preds = %for.inc, %if.end18
  %19 = load i32, i32* %i, align 4, !dbg !6681
  %20 = load i8, i8* %len.addr, align 1, !dbg !6683
  %conv25 = zext i8 %20 to i32, !dbg !6683
  %cmp = icmp slt i32 %19, %conv25, !dbg !6684
  br i1 %cmp, label %for.body, label %for.end, !dbg !6685

for.body:                                         ; preds = %for.cond
  %21 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6686
  %22 = load i32, i32* %i, align 4, !dbg !6688
  %add = add i32 54, %22, !dbg !6689
  %conv27 = trunc i32 %add to i8, !dbg !6690
  %23 = load i8*, i8** %data.addr, align 8, !dbg !6691
  %24 = load i32, i32* %i, align 4, !dbg !6692
  %idxprom = sext i32 %24 to i64, !dbg !6691
  %arrayidx = getelementptr i8, i8* %23, i64 %idxprom, !dbg !6691
  %call28 = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %21, i8 zeroext %conv27, i8* %arrayidx, i8 zeroext 1) #8, !dbg !6693
  br label %for.inc, !dbg !6694

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !dbg !6695
  %inc = add i32 %25, 1, !dbg !6695
  store i32 %inc, i32* %i, align 4, !dbg !6695
  br label %for.cond, !dbg !6696, !llvm.loop !6697

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !6699
  br label %return, !dbg !6699

sw.default:                                       ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !6700
  br label %return, !dbg !6700

return:                                           ; preds = %sw.default, %for.end, %sw.bb
  %26 = load i32, i32* %retval, align 4, !dbg !6701
  ret i32 %26, !dbg !6701
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nxt200x_writetuner(%struct.nxt200x_state* %state, i8* %data) #0 !dbg !6702 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.nxt200x_state*, align 8
  %data.addr = alloca i8*, align 8
  %buf = alloca i8, align 1
  %count = alloca i8, align 1
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  store %struct.nxt200x_state* %state, %struct.nxt200x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state.addr, metadata !6705, metadata !DIExpression()), !dbg !6706
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6707, metadata !DIExpression()), !dbg !6708
  call void @llvm.dbg.declare(metadata i8* %buf, metadata !6709, metadata !DIExpression()), !dbg !6710
  call void @llvm.dbg.declare(metadata i8* %count, metadata !6711, metadata !DIExpression()), !dbg !6712
  store i8 0, i8* %count, align 1, !dbg !6712
  br label %do.body, !dbg !6713

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6714
  %tobool = icmp ne i32 %0, 0, !dbg !6714
  br i1 %tobool, label %if.then, label %if.end, !dbg !6717

if.then:                                          ; preds = %do.body
  store i32 0, i32* %tmp, align 4, !dbg !6718
  %1 = load i32, i32* %tmp, align 4, !dbg !6721
  br label %if.end, !dbg !6714

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6717

do.end:                                           ; preds = %if.end
  br label %do.body1, !dbg !6722

do.body1:                                         ; preds = %do.end
  %2 = load i32, i32* @debug, align 4, !dbg !6723
  %tobool2 = icmp ne i32 %2, 0, !dbg !6723
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !6726

if.then3:                                         ; preds = %do.body1
  store i32 0, i32* %tmp4, align 4, !dbg !6727
  %3 = load i32, i32* %tmp4, align 4, !dbg !6730
  br label %if.end5, !dbg !6723

if.end5:                                          ; preds = %if.then3, %do.body1
  br label %do.end6, !dbg !6726

do.end6:                                          ; preds = %if.end5
  %4 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6731
  %demod_chip = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %4, i32 0, i32 3, !dbg !6732
  %5 = load i32, i32* %demod_chip, align 8, !dbg !6732
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb19
  ], !dbg !6733

sw.bb:                                            ; preds = %do.end6
  %6 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6734
  %7 = load i8*, i8** %data.addr, align 8, !dbg !6737
  %arrayidx = getelementptr i8, i8* %7, i64 0, !dbg !6737
  %8 = load i8, i8* %arrayidx, align 1, !dbg !6737
  %9 = load i8*, i8** %data.addr, align 8, !dbg !6738
  %add.ptr = getelementptr i8, i8* %9, i64 1, !dbg !6739
  %call = call i32 @i2c_writebytes(%struct.nxt200x_state* %6, i8 zeroext %8, i8* %add.ptr, i8 zeroext 4) #8, !dbg !6740
  %tobool7 = icmp ne i32 %call, 0, !dbg !6740
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !6741

if.then8:                                         ; preds = %sw.bb
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !6742
  br label %if.end10, !dbg !6742

if.end10:                                         ; preds = %if.then8, %sw.bb
  br label %while.cond, !dbg !6743

while.cond:                                       ; preds = %if.end17, %if.end10
  %10 = load i8, i8* %count, align 1, !dbg !6744
  %conv = zext i8 %10 to i32, !dbg !6744
  %cmp = icmp slt i32 %conv, 20, !dbg !6745
  br i1 %cmp, label %while.body, label %while.end, !dbg !6743

while.body:                                       ; preds = %while.cond
  %11 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6746
  %12 = load i8*, i8** %data.addr, align 8, !dbg !6748
  %arrayidx12 = getelementptr i8, i8* %12, i64 0, !dbg !6748
  %13 = load i8, i8* %arrayidx12, align 1, !dbg !6748
  %call13 = call i32 @i2c_readbytes(%struct.nxt200x_state* %11, i8 zeroext %13, i8* %buf, i8 zeroext 1) #8, !dbg !6749
  %14 = load i8, i8* %buf, align 1, !dbg !6750
  %conv14 = zext i8 %14 to i32, !dbg !6750
  %and = and i32 %conv14, 64, !dbg !6752
  %tobool15 = icmp ne i32 %and, 0, !dbg !6752
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6753

if.then16:                                        ; preds = %while.body
  store i32 0, i32* %retval, align 4, !dbg !6754
  br label %return, !dbg !6754

if.end17:                                         ; preds = %while.body
  call void @msleep(i32 100) #8, !dbg !6755
  %15 = load i8, i8* %count, align 1, !dbg !6756
  %inc = add i8 %15, 1, !dbg !6756
  store i8 %inc, i8* %count, align 1, !dbg !6756
  br label %while.cond, !dbg !6743, !llvm.loop !6757

while.end:                                        ; preds = %while.cond
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !6759
  br label %sw.epilog, !dbg !6760

sw.bb19:                                          ; preds = %do.end6
  store i8 3, i8* %buf, align 1, !dbg !6761
  %16 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6762
  %call20 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %16, i8 zeroext 32, i8* %buf, i8 zeroext 1) #8, !dbg !6763
  store i8 4, i8* %buf, align 1, !dbg !6764
  %17 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6765
  %call21 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %17, i8 zeroext 52, i8* %buf, i8 zeroext 1) #8, !dbg !6766
  %18 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6767
  %19 = load i8*, i8** %data.addr, align 8, !dbg !6768
  %add.ptr22 = getelementptr i8, i8* %19, i64 1, !dbg !6769
  %call23 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %18, i8 zeroext 54, i8* %add.ptr22, i8 zeroext 4) #8, !dbg !6770
  %20 = load i8*, i8** %data.addr, align 8, !dbg !6771
  %arrayidx24 = getelementptr i8, i8* %20, i64 0, !dbg !6771
  %21 = load i8, i8* %arrayidx24, align 1, !dbg !6771
  %conv25 = zext i8 %21 to i32, !dbg !6771
  %shl = shl i32 %conv25, 1, !dbg !6772
  %conv26 = trunc i32 %shl to i8, !dbg !6771
  store i8 %conv26, i8* %buf, align 1, !dbg !6773
  %22 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6774
  %call27 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %22, i8 zeroext 53, i8* %buf, i8 zeroext 1) #8, !dbg !6775
  store i8 -128, i8* %buf, align 1, !dbg !6776
  %23 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6777
  %call28 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %23, i8 zeroext 33, i8* %buf, i8 zeroext 1) #8, !dbg !6778
  br label %while.cond29, !dbg !6779

while.cond29:                                     ; preds = %if.end40, %sw.bb19
  %24 = load i8, i8* %count, align 1, !dbg !6780
  %conv30 = zext i8 %24 to i32, !dbg !6780
  %cmp31 = icmp slt i32 %conv30, 20, !dbg !6781
  br i1 %cmp31, label %while.body33, label %while.end42, !dbg !6779

while.body33:                                     ; preds = %while.cond29
  %25 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6782
  %call34 = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %25, i8 zeroext 33, i8* %buf, i8 zeroext 1) #8, !dbg !6784
  %26 = load i8, i8* %buf, align 1, !dbg !6785
  %conv35 = zext i8 %26 to i32, !dbg !6785
  %and36 = and i32 %conv35, 128, !dbg !6787
  %cmp37 = icmp eq i32 %and36, 0, !dbg !6788
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !6789

if.then39:                                        ; preds = %while.body33
  store i32 0, i32* %retval, align 4, !dbg !6790
  br label %return, !dbg !6790

if.end40:                                         ; preds = %while.body33
  call void @msleep(i32 100) #8, !dbg !6791
  %27 = load i8, i8* %count, align 1, !dbg !6792
  %inc41 = add i8 %27, 1, !dbg !6792
  store i8 %inc41, i8* %count, align 1, !dbg !6792
  br label %while.cond29, !dbg !6779, !llvm.loop !6793

while.end42:                                      ; preds = %while.cond29
  %call43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !6795
  br label %sw.epilog, !dbg !6796

sw.default:                                       ; preds = %do.end6
  store i32 -22, i32* %retval, align 4, !dbg !6797
  br label %return, !dbg !6797

sw.epilog:                                        ; preds = %while.end42, %while.end
  store i32 0, i32* %retval, align 4, !dbg !6798
  br label %return, !dbg !6798

return:                                           ; preds = %sw.epilog, %sw.default, %if.then39, %if.then16
  %28 = load i32, i32* %retval, align 4, !dbg !6799
  ret i32 %28, !dbg !6799
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nxt200x_agc_reset(%struct.nxt200x_state* %state) #0 !dbg !6800 {
entry:
  %state.addr = alloca %struct.nxt200x_state*, align 8
  %buf = alloca i8, align 1
  %tmp = alloca i32, align 4
  store %struct.nxt200x_state* %state, %struct.nxt200x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state.addr, metadata !6801, metadata !DIExpression()), !dbg !6802
  call void @llvm.dbg.declare(metadata i8* %buf, metadata !6803, metadata !DIExpression()), !dbg !6804
  br label %do.body, !dbg !6805

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6806
  %tobool = icmp ne i32 %0, 0, !dbg !6806
  br i1 %tobool, label %if.then, label %if.end, !dbg !6809

if.then:                                          ; preds = %do.body
  store i32 0, i32* %tmp, align 4, !dbg !6810
  %1 = load i32, i32* %tmp, align 4, !dbg !6813
  br label %if.end, !dbg !6806

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6809

do.end:                                           ; preds = %if.end
  %2 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6814
  %demod_chip = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %2, i32 0, i32 3, !dbg !6815
  %3 = load i32, i32* %demod_chip, align 8, !dbg !6815
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ], !dbg !6816

sw.bb:                                            ; preds = %do.end
  store i8 8, i8* %buf, align 1, !dbg !6817
  %4 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6819
  %call = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %4, i8 zeroext 8, i8* %buf, i8 zeroext 1) #8, !dbg !6820
  store i8 0, i8* %buf, align 1, !dbg !6821
  %5 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6822
  %call1 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %5, i8 zeroext 8, i8* %buf, i8 zeroext 1) #8, !dbg !6823
  br label %sw.epilog, !dbg !6824

sw.bb2:                                           ; preds = %do.end
  %6 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6825
  %call3 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %6, i8 zeroext 8, i8* %buf, i8 zeroext 1) #8, !dbg !6826
  store i8 8, i8* %buf, align 1, !dbg !6827
  %7 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6828
  %call4 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %7, i8 zeroext 8, i8* %buf, i8 zeroext 1) #8, !dbg !6829
  store i8 0, i8* %buf, align 1, !dbg !6830
  %8 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6831
  %call5 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %8, i8 zeroext 8, i8* %buf, i8 zeroext 1) #8, !dbg !6832
  br label %sw.epilog, !dbg !6833

sw.default:                                       ; preds = %do.end
  br label %sw.epilog, !dbg !6834

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  ret void, !dbg !6835
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nxt200x_microcontroller_start(%struct.nxt200x_state* %state) #0 !dbg !6836 {
entry:
  %state.addr = alloca %struct.nxt200x_state*, align 8
  %buf = alloca i8, align 1
  %tmp = alloca i32, align 4
  store %struct.nxt200x_state* %state, %struct.nxt200x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state.addr, metadata !6837, metadata !DIExpression()), !dbg !6838
  call void @llvm.dbg.declare(metadata i8* %buf, metadata !6839, metadata !DIExpression()), !dbg !6840
  br label %do.body, !dbg !6841

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6842
  %tobool = icmp ne i32 %0, 0, !dbg !6842
  br i1 %tobool, label %if.then, label %if.end, !dbg !6845

if.then:                                          ; preds = %do.body
  store i32 0, i32* %tmp, align 4, !dbg !6846
  %1 = load i32, i32* %tmp, align 4, !dbg !6849
  br label %if.end, !dbg !6842

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6845

do.end:                                           ; preds = %if.end
  store i8 0, i8* %buf, align 1, !dbg !6850
  %2 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6851
  %call = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %2, i8 zeroext 34, i8* %buf, i8 zeroext 1) #8, !dbg !6852
  ret void, !dbg !6853
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_writebytes(%struct.nxt200x_state* %state, i8 zeroext %addr, i8* %buf, i8 zeroext %len) #0 !dbg !6854 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.nxt200x_state*, align 8
  %addr.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i8, align 1
  %err = alloca i32, align 4
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.nxt200x_state* %state, %struct.nxt200x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state.addr, metadata !6855, metadata !DIExpression()), !dbg !6856
  store i8 %addr, i8* %addr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %addr.addr, metadata !6857, metadata !DIExpression()), !dbg !6858
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6859, metadata !DIExpression()), !dbg !6860
  store i8 %len, i8* %len.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %len.addr, metadata !6861, metadata !DIExpression()), !dbg !6862
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6863, metadata !DIExpression()), !dbg !6864
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !6865, metadata !DIExpression()), !dbg !6866
  %addr1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !6867
  %0 = load i8, i8* %addr.addr, align 1, !dbg !6868
  %conv = zext i8 %0 to i16, !dbg !6868
  store i16 %conv, i16* %addr1, align 8, !dbg !6867
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !6867
  store i16 0, i16* %flags, align 2, !dbg !6867
  %len2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !6867
  %1 = load i8, i8* %len.addr, align 1, !dbg !6869
  %conv3 = zext i8 %1 to i16, !dbg !6869
  store i16 %conv3, i16* %len2, align 4, !dbg !6867
  %buf4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !6867
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !6870
  store i8* %2, i8** %buf4, align 8, !dbg !6867
  %3 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6871
  %i2c = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %3, i32 0, i32 0, !dbg !6873
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !6873
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %4, %struct.i2c_msg* %msg, i32 1) #8, !dbg !6874
  store i32 %call, i32* %err, align 4, !dbg !6875
  %cmp = icmp ne i32 %call, 1, !dbg !6876
  br i1 %cmp, label %if.then, label %if.end, !dbg !6877

if.then:                                          ; preds = %entry
  %5 = load i8, i8* %addr.addr, align 1, !dbg !6878
  %conv6 = zext i8 %5 to i32, !dbg !6878
  %6 = load i32, i32* %err, align 4, !dbg !6878
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.i2c_writebytes, i64 0, i64 0), i32 %conv6, i32 %6) #9, !dbg !6878
  store i32 -121, i32* %retval, align 4, !dbg !6880
  br label %return, !dbg !6880

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6881
  br label %return, !dbg !6881

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !6882
  ret i32 %7, !dbg !6882
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_readbytes(%struct.nxt200x_state* %state, i8 zeroext %addr, i8* %buf, i8 zeroext %len) #0 !dbg !6883 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.nxt200x_state*, align 8
  %addr.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i8, align 1
  %err = alloca i32, align 4
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.nxt200x_state* %state, %struct.nxt200x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nxt200x_state** %state.addr, metadata !6884, metadata !DIExpression()), !dbg !6885
  store i8 %addr, i8* %addr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %addr.addr, metadata !6886, metadata !DIExpression()), !dbg !6887
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6888, metadata !DIExpression()), !dbg !6889
  store i8 %len, i8* %len.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %len.addr, metadata !6890, metadata !DIExpression()), !dbg !6891
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6892, metadata !DIExpression()), !dbg !6893
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !6894, metadata !DIExpression()), !dbg !6895
  %addr1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !6896
  %0 = load i8, i8* %addr.addr, align 1, !dbg !6897
  %conv = zext i8 %0 to i16, !dbg !6897
  store i16 %conv, i16* %addr1, align 8, !dbg !6896
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !6896
  store i16 1, i16* %flags, align 2, !dbg !6896
  %len2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !6896
  %1 = load i8, i8* %len.addr, align 1, !dbg !6898
  %conv3 = zext i8 %1 to i16, !dbg !6898
  store i16 %conv3, i16* %len2, align 4, !dbg !6896
  %buf4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !6896
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !6899
  store i8* %2, i8** %buf4, align 8, !dbg !6896
  %3 = load %struct.nxt200x_state*, %struct.nxt200x_state** %state.addr, align 8, !dbg !6900
  %i2c = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %3, i32 0, i32 0, !dbg !6902
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !6902
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %4, %struct.i2c_msg* %msg, i32 1) #8, !dbg !6903
  store i32 %call, i32* %err, align 4, !dbg !6904
  %cmp = icmp ne i32 %call, 1, !dbg !6905
  br i1 %cmp, label %if.then, label %if.end, !dbg !6906

if.then:                                          ; preds = %entry
  %5 = load i8, i8* %addr.addr, align 1, !dbg !6907
  %conv6 = zext i8 %5 to i32, !dbg !6907
  %6 = load i32, i32* %err, align 4, !dbg !6907
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.i2c_readbytes, i64 0, i64 0), i32 %conv6, i32 %6) #9, !dbg !6907
  store i32 -121, i32* %retval, align 4, !dbg !6909
  br label %return, !dbg !6909

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6910
  br label %return, !dbg !6910

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !6911
  ret i32 %7, !dbg !6911
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!llvm.module.flags = !{!4305, !4306, !4307, !4308}
!llvm.ident = !{!4309}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 55, type: !330, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !296, globals: !305, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/nxt200x.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !40, !50, !57, !73, !78, !82, !87, !102, !113, !126, !133, !138, !144, !165, !171, !175, !183, !190, !195, !201, !207, !216, !224, !230, !236, !243, !251, !257, !271, !283, !289}
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
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nxt_chip_t", file: !284, line: 16, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "drivers/media/dvb-frontends/nxt200x.h", directory: "/home/lizy2001/genbc/linux")
!285 = !{!286, !287, !288}
!286 = !DIEnumerator(name: "NXTUNDEFINED", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "NXT2002", value: 1, isUnsigned: true)
!288 = !DIEnumerator(name: "NXT2004", value: 2, isUnsigned: true)
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !290, line: 305, baseType: !7, size: 32, elements: !291)
!290 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!291 = !{!292, !293, !294, !295}
!292 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!293 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!294 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!295 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!296 = !{!297, !299, !300}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !298, line: 148, baseType: !7)
!298 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !301, line: 19, baseType: !302)
!301 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !303, line: 24, baseType: !304)
!303 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!304 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!305 = !{!306, !373, !378, !383, !388, !393, !398, !0, !403, !4300}
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 1228, type: !308, isLocal: true, isDefinition: true, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !310, line: 69, size: 320, elements: !311)
!310 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!311 = !{!312, !316, !320, !341, !343, !347, !351}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !309, file: !310, line: 70, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !309, file: !310, line: 71, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !319, line: 76, flags: DIFlagFwdDecl)
!319 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!320 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !309, file: !310, line: 72, baseType: !321, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !310, line: 47, size: 256, elements: !324)
!324 = !{!325, !326, !332, !337}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !323, file: !310, line: 49, baseType: !7, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !323, file: !310, line: 51, baseType: !327, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!330, !313, !331}
!330 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !323, file: !310, line: 53, baseType: !333, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!330, !336, !331}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !323, file: !310, line: 55, baseType: !338, size: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !299}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !309, file: !310, line: 73, baseType: !342, size: 16, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !309, file: !310, line: 74, baseType: !344, size: 8, offset: 208)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !301, line: 16, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !303, line: 20, baseType: !346)
!346 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !310, line: 75, baseType: !348, size: 8, offset: 216)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !301, line: 17, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !303, line: 21, baseType: !350)
!350 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!351 = !DIDerivedType(tag: DW_TAG_member, scope: !309, file: !310, line: 76, baseType: !352, size: 64, offset: 256)
!352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !309, file: !310, line: 76, size: 64, elements: !353)
!353 = !{!354, !355, !362}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !352, file: !310, line: 77, baseType: !299, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !352, file: !310, line: 78, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !310, line: 86, size: 128, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !358, file: !310, line: 87, baseType: !7, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !358, file: !310, line: 88, baseType: !336, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !352, file: !310, line: 79, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !310, line: 92, size: 256, elements: !366)
!366 = !{!367, !368, !369, !371, !372}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !365, file: !310, line: 94, baseType: !7, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !365, file: !310, line: 95, baseType: !7, size: 32, offset: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !365, file: !310, line: 96, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !365, file: !310, line: 97, baseType: !321, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !365, file: !310, line: 98, baseType: !299, size: 64, offset: 192)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 1228, type: !375, isLocal: true, isDefinition: true, align: 8)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 216, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 27)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 1229, type: !380, isLocal: true, isDefinition: true, align: 8)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 520, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 65)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 1231, type: !385, isLocal: true, isDefinition: true, align: 8)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 720, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 90)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author223", scope: !2, file: !3, line: 1232, type: !390, isLocal: true, isDefinition: true, align: 8)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 672, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 84)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file224", scope: !2, file: !3, line: 1233, type: !395, isLocal: true, isDefinition: true, align: 8)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 392, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 49)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license225", scope: !2, file: !3, line: 1233, type: !400, isLocal: true, isDefinition: true, align: 8)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 160, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 20)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "nxt200x_ops", scope: !2, file: !3, line: 1201, type: !405, isLocal: true, isDefinition: true)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !407)
!407 = !{!408, !425, !429, !4123, !4124, !4125, !4129, !4130, !4136, !4141, !4145, !4146, !4156, !4161, !4165, !4169, !4174, !4175, !4176, !4177, !4187, !4198, !4202, !4206, !4210, !4214, !4218, !4222, !4223, !4224, !4228, !4282}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !406, file: !51, line: 436, baseType: !409, size: 1280)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !410)
!410 = !{!411, !415, !418, !419, !420, !421, !422, !423, !424}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !409, file: !51, line: 339, baseType: !412, size: 1024)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 1024, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !409, file: !51, line: 340, baseType: !416, size: 32, offset: 1024)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !301, line: 21, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !303, line: 27, baseType: !7)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !409, file: !51, line: 341, baseType: !416, size: 32, offset: 1056)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !409, file: !51, line: 342, baseType: !416, size: 32, offset: 1088)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !409, file: !51, line: 343, baseType: !416, size: 32, offset: 1120)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !409, file: !51, line: 344, baseType: !416, size: 32, offset: 1152)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !409, file: !51, line: 345, baseType: !416, size: 32, offset: 1184)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !409, file: !51, line: 346, baseType: !416, size: 32, offset: 1216)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !409, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !406, file: !51, line: 438, baseType: !426, size: 64, offset: 1280)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 64, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 8)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !406, file: !51, line: 440, baseType: !430, size: 64, offset: 1344)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !435)
!435 = !{!436, !450, !451, !4039, !4040, !4041, !4042, !4043, !4044, !4117, !4121, !4122}
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
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !298, line: 168, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 166, size: 32, elements: !448)
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !447, file: !298, line: 167, baseType: !330, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !434, file: !51, line: 688, baseType: !406, size: 6016, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !434, file: !51, line: 689, baseType: !452, size: 64, offset: 6080)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !454)
!454 = !{!455, !456, !462, !463, !464, !468, !469, !4017, !4018, !4019, !4038}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !453, file: !272, line: 102, baseType: !330, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !453, file: !272, line: 103, baseType: !457, size: 128, offset: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !298, line: 178, size: 128, elements: !458)
!458 = !{!459, !461}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !298, line: 179, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !457, file: !298, line: 179, baseType: !460, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !453, file: !272, line: 104, baseType: !457, size: 128, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !453, file: !272, line: 105, baseType: !313, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !453, file: !272, line: 106, baseType: !465, size: 48, offset: 384)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 48, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 6)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !453, file: !272, line: 107, baseType: !299, size: 64, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !453, file: !272, line: 109, baseType: !470, size: 64, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !472)
!472 = !{!473, !3474, !3475, !3478, !3479, !3530, !3618, !3619, !3620, !3621, !3622, !3631, !3736, !3749, !3944, !3945, !3949, !3951, !3952, !3953, !3957, !3963, !3964, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !4005, !4006, !4007, !4010, !4013, !4014, !4015, !4016}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !471, file: !237, line: 462, baseType: !474, size: 512)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !475, line: 64, size: 512, elements: !476)
!475 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!476 = !{!477, !478, !479, !481, !540, !3329, !3468, !3469, !3470, !3471, !3472, !3473}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !474, file: !475, line: 65, baseType: !313, size: 64)
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
!512 = !{!330, !482, !480}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !506, file: !475, line: 158, baseType: !514, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!313, !482, !480}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !506, file: !475, line: 159, baseType: !519, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!330, !482, !480, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !475, line: 148, size: 20736, elements: !525)
!525 = !{!526, !530, !534, !535, !539}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !524, file: !475, line: 149, baseType: !527, size: 192)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 192, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 3)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !524, file: !475, line: 150, baseType: !531, size: 4096, offset: 192)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 4096, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !524, file: !475, line: 151, baseType: !330, size: 32, offset: 4288)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !524, file: !475, line: 152, baseType: !536, size: 16384, offset: 4320)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 16384, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 2048)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !524, file: !475, line: 153, baseType: !330, size: 32, offset: 20704)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !474, file: !475, line: 69, baseType: !541, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !475, line: 138, size: 448, elements: !543)
!543 = !{!544, !548, !577, !579, !3291, !3319, !3323}
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
!557 = !{!558, !480, !563, !336}
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !298, line: 60, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !560, line: 73, baseType: !561)
!560 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !560, line: 15, baseType: !562)
!562 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !552, line: 30, size: 128, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !564, file: !552, line: 31, baseType: !313, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !564, file: !552, line: 32, baseType: !568, size: 16, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !298, line: 19, baseType: !304)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !551, file: !552, line: 232, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!558, !480, !563, !313, !573}
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !298, line: 55, baseType: !574)
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
!584 = !{!585, !586, !590, !3288, !3289}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !583, file: !552, line: 85, baseType: !313, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !583, file: !552, line: 86, baseType: !587, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!568, !480, !563, !330}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !583, file: !552, line: 88, baseType: !591, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!568, !480, !594, !330}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !552, line: 168, size: 448, elements: !596)
!596 = !{!597, !598, !599, !600, !3283, !3284}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !595, file: !552, line: 169, baseType: !564, size: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !595, file: !552, line: 170, baseType: !573, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !595, file: !552, line: 171, baseType: !299, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !595, file: !552, line: 172, baseType: !601, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!558, !604, !480, !594, !336, !775, !573}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !606)
!606 = !{!607, !625, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3266, !3267, !3276, !3277, !3278, !3279, !3280, !3281, !3282}
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
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !298, line: 216, size: 128, align: 64, elements: !618)
!618 = !{!619, !621}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !617, file: !298, line: 217, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !617, file: !298, line: 218, baseType: !622, size: 64, offset: 64)
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
!636 = !{!637, !638, !648, !656, !657, !675, !3217, !3219, !3231, !3232, !3233, !3234, !3235, !3240, !3241, !3242}
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
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !301, line: 23, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !303, line: 31, baseType: !671)
!671 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !658, file: !632, line: 54, baseType: !673, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !635, file: !632, line: 96, baseType: !676, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !678)
!678 = !{!679, !680, !681, !689, !696, !697, !842, !2911, !2912, !2913, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !3185, !3193, !3194, !3195, !3213, !3214, !3215, !3216}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !677, file: !208, line: 611, baseType: !568, size: 16)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !677, file: !208, line: 612, baseType: !304, size: 16, offset: 16)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !677, file: !208, line: 613, baseType: !682, size: 32, offset: 32)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !683, line: 23, baseType: !684)
!683 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !683, line: 21, size: 32, elements: !685)
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !684, file: !683, line: 22, baseType: !687, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !298, line: 32, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !560, line: 49, baseType: !7)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !677, file: !208, line: 614, baseType: !690, size: 32, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !683, line: 28, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !683, line: 26, size: 32, elements: !692)
!692 = !{!693}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !691, file: !683, line: 27, baseType: !694, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !298, line: 33, baseType: !695)
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
!709 = !{!313, !634, !676, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !712, line: 10, size: 128, elements: !713)
!712 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !711, file: !712, line: 11, baseType: !338, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !711, file: !712, line: 12, baseType: !299, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !700, file: !208, line: 1867, baseType: !717, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!330, !676, !330}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !700, file: !208, line: 1868, baseType: !721, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!724, !676, !330}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !700, file: !208, line: 1870, baseType: !727, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!330, !634, !336, !330}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !700, file: !208, line: 1872, baseType: !731, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!330, !676, !634, !568, !734}
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !298, line: 30, baseType: !735)
!735 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !700, file: !208, line: 1873, baseType: !737, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!330, !634, !676, !634}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !700, file: !208, line: 1874, baseType: !741, size: 64, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!330, !676, !634}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !700, file: !208, line: 1875, baseType: !745, size: 64, offset: 512)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!330, !676, !634, !313}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !700, file: !208, line: 1876, baseType: !749, size: 64, offset: 576)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!330, !676, !634, !568}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !700, file: !208, line: 1877, baseType: !741, size: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !700, file: !208, line: 1878, baseType: !754, size: 64, offset: 704)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!330, !676, !634, !568, !757}
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !298, line: 16, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !298, line: 13, baseType: !416)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !700, file: !208, line: 1879, baseType: !760, size: 64, offset: 768)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!330, !676, !634, !676, !634, !7}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !700, file: !208, line: 1881, baseType: !764, size: 64, offset: 832)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!330, !634, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !769)
!769 = !{!770, !771, !772, !773, !774, !778, !786, !787, !788}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !768, file: !208, line: 220, baseType: !7, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !768, file: !208, line: 221, baseType: !568, size: 16, offset: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !768, file: !208, line: 222, baseType: !682, size: 32, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !768, file: !208, line: 223, baseType: !690, size: 32, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !768, file: !208, line: 224, baseType: !775, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !298, line: 46, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !560, line: 88, baseType: !777)
!777 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !768, file: !208, line: 225, baseType: !779, size: 128, offset: 192)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !780, line: 13, size: 128, elements: !781)
!780 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!781 = !{!782, !785}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !779, file: !780, line: 14, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !780, line: 8, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !303, line: 30, baseType: !777)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !779, file: !780, line: 15, baseType: !562, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !768, file: !208, line: 226, baseType: !779, size: 128, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !768, file: !208, line: 227, baseType: !779, size: 128, offset: 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !768, file: !208, line: 234, baseType: !604, size: 64, offset: 576)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !700, file: !208, line: 1882, baseType: !790, size: 64, offset: 896)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!330, !793, !795, !416, !7}
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
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !298, line: 104, baseType: !416)
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
!821 = !{!558, !634, !336, !573}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !700, file: !208, line: 1884, baseType: !823, size: 64, offset: 1024)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!330, !676, !826, !669, !669}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !700, file: !208, line: 1886, baseType: !829, size: 64, offset: 1088)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!330, !676, !832, !330}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !700, file: !208, line: 1887, baseType: !834, size: 64, offset: 1152)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!330, !676, !634, !604, !7, !568}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !700, file: !208, line: 1890, baseType: !749, size: 64, offset: 1216)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !700, file: !208, line: 1891, baseType: !839, size: 64, offset: 1280)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!330, !676, !724, !330}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !677, file: !208, line: 623, baseType: !843, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !845)
!845 = !{!846, !847, !848, !849, !850, !851, !898, !2519, !2601, !2684, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2700, !2704, !2705, !2708, !2709, !2712, !2713, !2714, !2755, !2781, !2782, !2783, !2784, !2785, !2786, !2789, !2791, !2798, !2799, !2801, !2802, !2803, !2862, !2863, !2878, !2879, !2880, !2881, !2882, !2885, !2886, !2887, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !844, file: !208, line: 1417, baseType: !457, size: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !844, file: !208, line: 1418, baseType: !757, size: 32, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !844, file: !208, line: 1419, baseType: !350, size: 8, offset: 160)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !844, file: !208, line: 1420, baseType: !576, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !844, file: !208, line: 1421, baseType: !775, size: 64, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !844, file: !208, line: 1422, baseType: !852, size: 64, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !854)
!854 = !{!855, !856, !857, !864, !868, !872, !876, !877, !878, !888, !891, !892, !893, !895, !896, !897}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !853, file: !208, line: 2229, baseType: !313, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !853, file: !208, line: 2230, baseType: !330, size: 32, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !853, file: !208, line: 2238, baseType: !858, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!330, !861}
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
!871 = !{!634, !852, !330, !313, !299}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !853, file: !208, line: 2242, baseType: !873, size: 64, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !843}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !853, file: !208, line: 2243, baseType: !317, size: 64, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !853, file: !208, line: 2244, baseType: !852, size: 64, offset: 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !853, file: !208, line: 2245, baseType: !879, size: 64, offset: 512)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !298, line: 182, size: 64, elements: !880)
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !879, file: !298, line: 183, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !298, line: 186, size: 128, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !883, file: !298, line: 187, baseType: !882, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !883, file: !298, line: 187, baseType: !887, size: 64, offset: 64)
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
!902 = !{!903, !907, !911, !912, !916, !922, !926, !927, !928, !932, !936, !937, !938, !939, !945, !950, !951, !958, !959, !960, !961, !2503, !2518}
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
!915 = !{null, !676, !330}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !901, file: !208, line: 1941, baseType: !917, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!330, !676, !920}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !901, file: !208, line: 1942, baseType: !923, size: 64, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!330, !676}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !901, file: !208, line: 1943, baseType: !908, size: 64, offset: 384)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !901, file: !208, line: 1944, baseType: !873, size: 64, offset: 448)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !901, file: !208, line: 1945, baseType: !929, size: 64, offset: 512)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!330, !843, !330}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !901, file: !208, line: 1946, baseType: !933, size: 64, offset: 576)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!330, !843}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !901, file: !208, line: 1947, baseType: !933, size: 64, offset: 640)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !901, file: !208, line: 1948, baseType: !933, size: 64, offset: 704)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !901, file: !208, line: 1949, baseType: !933, size: 64, offset: 768)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !901, file: !208, line: 1950, baseType: !940, size: 64, offset: 832)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!330, !634, !943}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !901, file: !208, line: 1951, baseType: !946, size: 64, offset: 896)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!330, !843, !949, !336}
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !901, file: !208, line: 1952, baseType: !873, size: 64, offset: 960)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !901, file: !208, line: 1954, baseType: !952, size: 64, offset: 1024)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!330, !955, !634}
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !957, line: 539, flags: DIFlagFwdDecl)
!957 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!958 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !901, file: !208, line: 1955, baseType: !952, size: 64, offset: 1088)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !901, file: !208, line: 1956, baseType: !952, size: 64, offset: 1152)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !901, file: !208, line: 1957, baseType: !952, size: 64, offset: 1216)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !901, file: !208, line: 1963, baseType: !962, size: 64, offset: 1280)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!330, !843, !965, !297}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !967, line: 68, size: 512, align: 128, elements: !968)
!967 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!968 = !{!969, !970, !2495, !2502}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !966, file: !967, line: 69, baseType: !576, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !967, line: 77, baseType: !971, size: 320, offset: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !967, line: 77, size: 320, elements: !972)
!972 = !{!973, !1154, !1159, !1187, !1195, !1201, !2487, !2494}
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
!987 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !983, file: !984, line: 295, baseType: !297, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !983, file: !984, line: 296, baseType: !299, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !979, file: !208, line: 454, baseType: !297, size: 32, offset: 192)
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
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !298, line: 175, baseType: !1014)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 173, size: 64, elements: !1015)
!1015 = !{!1016}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1014, file: !298, line: 174, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !301, line: 22, baseType: !784)
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
!1033 = !{!330, !965, !920}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1028, file: !208, line: 369, baseType: !1035, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!330, !604, !965}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1028, file: !208, line: 372, baseType: !1039, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!330, !978, !920}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1028, file: !208, line: 375, baseType: !1043, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!330, !965}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1028, file: !208, line: 381, baseType: !1047, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!330, !604, !978, !460, !7}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1028, file: !208, line: 383, baseType: !1051, size: 64, offset: 320)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{null, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1028, file: !208, line: 385, baseType: !1057, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!330, !604, !978, !775, !7, !7, !1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1028, file: !208, line: 388, baseType: !1063, size: 64, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!330, !604, !978, !775, !7, !7, !965, !299}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1028, file: !208, line: 393, baseType: !1067, size: 64, offset: 512)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!1070, !978, !1070}
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !298, line: 125, baseType: !669)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1028, file: !208, line: 394, baseType: !1072, size: 64, offset: 576)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !965, !7, !7}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1028, file: !208, line: 395, baseType: !1076, size: 64, offset: 640)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!330, !965, !297}
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
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1088, file: !208, line: 328, baseType: !299, size: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1088, file: !208, line: 329, baseType: !330, size: 32, offset: 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1088, file: !208, line: 330, baseType: !300, size: 16, offset: 288)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1088, file: !208, line: 331, baseType: !300, size: 16, offset: 304)
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
!1112 = !{!330, !978, !965, !965, !183}
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
!1124 = !{!330, !965, !576, !576}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1028, file: !208, line: 409, baseType: !1126, size: 64, offset: 1152)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !965, !1129, !1129}
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1028, file: !208, line: 410, baseType: !1131, size: 64, offset: 1216)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!330, !978, !965}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1028, file: !208, line: 413, baseType: !1135, size: 64, offset: 1280)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!330, !1138, !604, !1140}
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
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !979, file: !208, line: 470, baseType: !299, size: 64, offset: 1152)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !974, file: !967, line: 87, baseType: !576, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !974, file: !967, line: 94, baseType: !576, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !967, line: 96, baseType: !1155, size: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !967, line: 96, size: 64, elements: !1156)
!1156 = !{!1157}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1155, file: !967, line: 101, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !298, line: 143, baseType: !669)
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
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1167, file: !967, line: 109, baseType: !330, size: 32, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1167, file: !967, line: 110, baseType: !330, size: 32, offset: 96)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1160, file: !967, line: 117, baseType: !1173, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !967, line: 117, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1160, file: !967, line: 119, baseType: !299, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1160, file: !967, line: 120, baseType: !1177, size: 64, offset: 256)
!1177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1160, file: !967, line: 120, size: 64, elements: !1178)
!1178 = !{!1179, !1180, !1181}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1177, file: !967, line: 121, baseType: !299, size: 64)
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
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1188, file: !967, line: 134, baseType: !350, size: 8, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1188, file: !967, line: 135, baseType: !350, size: 8, offset: 72)
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
!1203 = !{!1204, !1205, !1207, !1208, !2486}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1202, file: !967, line: 146, baseType: !576, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1202, file: !967, line: 147, baseType: !1206, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !957, line: 509, baseType: !965)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1202, file: !967, line: 148, baseType: !576, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !967, line: 149, baseType: !1209, size: 64, offset: 192)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1202, file: !967, line: 149, size: 64, elements: !1210)
!1210 = !{!1211, !2485}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1209, file: !967, line: 150, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !967, line: 388, size: 7296, elements: !1214)
!1214 = !{!1215, !2481}
!1215 = !DIDerivedType(tag: DW_TAG_member, scope: !1213, file: !967, line: 389, baseType: !1216, size: 7296)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1213, file: !967, line: 389, size: 7296, elements: !1217)
!1217 = !{!1218, !1256, !1257, !1258, !1262, !1263, !1264, !1265, !1266, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1307, !1315, !1318, !1364, !1365, !2465, !2466, !2469, !2470, !2471, !2474, !2475, !2476, !2479, !2480}
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
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1220, file: !967, line: 362, baseType: !299, size: 64, offset: 1344)
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
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1216, file: !967, line: 452, baseType: !330, size: 32, offset: 768)
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
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1321, file: !1320, line: 37, baseType: !304, size: 16, offset: 448)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1321, file: !1320, line: 40, baseType: !1331, size: 192, offset: 512)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1332, line: 53, size: 192, elements: !1333)
!1332 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1333 = !{!1334, !1335, !1336}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1331, file: !1332, line: 54, baseType: !1011, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1331, file: !1332, line: 55, baseType: !487, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1331, file: !1332, line: 59, baseType: !457, size: 128, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1321, file: !1320, line: 41, baseType: !299, size: 64, offset: 704)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1321, file: !1320, line: 42, baseType: !1339, size: 64, offset: 768)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1341)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1342, line: 13, size: 896, elements: !1343)
!1342 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1341, file: !1342, line: 14, baseType: !299, size: 64)
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
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1321, file: !1320, line: 50, baseType: !300, size: 16, offset: 864)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1321, file: !1320, line: 51, baseType: !1361, size: 16, offset: 880)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !301, line: 18, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !303, line: 23, baseType: !1363)
!1363 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1216, file: !967, line: 495, baseType: !576, size: 64, offset: 6528)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1216, file: !967, line: 497, baseType: !1366, size: 64, offset: 6592)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !967, line: 381, size: 384, elements: !1368)
!1368 = !{!1369, !1370, !2464}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1367, file: !967, line: 382, baseType: !446, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1367, file: !967, line: 383, baseType: !1371, size: 128, offset: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !967, line: 376, size: 128, elements: !1372)
!1372 = !{!1373, !2462}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1371, file: !967, line: 377, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1376, line: 640, size: 48640, elements: !1377)
!1376 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1377 = !{!1378, !1384, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1399, !1417, !1428, !1509, !1510, !1511, !1522, !1523, !1525, !1526, !1527, !1528, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1612, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1650, !1652, !1653, !1654, !1666, !1667, !1668, !1669, !1670, !1671, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1695, !1700, !1882, !1883, !1884, !1885, !1889, !1892, !1895, !1898, !1901, !1905, !2006, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2052, !2053, !2054, !2055, !2056, !2061, !2062, !2063, !2066, !2067, !2070, !2073, !2076, !2079, !2122, !2125, !2126, !2205, !2206, !2209, !2210, !2213, !2214, !2215, !2219, !2220, !2221, !2234, !2235, !2236, !2246, !2251, !2254, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1375, file: !1376, line: 646, baseType: !1379, size: 128)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1380, line: 56, size: 128, elements: !1381)
!1380 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1381 = !{!1382, !1383}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1379, file: !1380, line: 57, baseType: !576, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1379, file: !1380, line: 58, baseType: !416, size: 32, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1375, file: !1376, line: 649, baseType: !1385, size: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !562)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1375, file: !1376, line: 657, baseType: !299, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1375, file: !1376, line: 658, baseType: !441, size: 32, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1375, file: !1376, line: 660, baseType: !7, size: 32, offset: 288)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1375, file: !1376, line: 661, baseType: !7, size: 32, offset: 320)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1375, file: !1376, line: 684, baseType: !330, size: 32, offset: 352)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1375, file: !1376, line: 686, baseType: !330, size: 32, offset: 384)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1375, file: !1376, line: 687, baseType: !330, size: 32, offset: 416)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1375, file: !1376, line: 688, baseType: !330, size: 32, offset: 448)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1375, file: !1376, line: 689, baseType: !7, size: 32, offset: 480)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1375, file: !1376, line: 691, baseType: !1396, size: 64, offset: 512)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1398)
!1398 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1376, line: 691, flags: DIFlagFwdDecl)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1375, file: !1376, line: 692, baseType: !1400, size: 832, offset: 576)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1376, line: 451, size: 832, elements: !1401)
!1401 = !{!1402, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1400, file: !1376, line: 453, baseType: !1403, size: 128)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1376, line: 325, size: 128, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1403, file: !1376, line: 326, baseType: !576, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1403, file: !1376, line: 327, baseType: !416, size: 32, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1400, file: !1376, line: 454, baseType: !1000, size: 192, align: 64, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1400, file: !1376, line: 455, baseType: !457, size: 128, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1400, file: !1376, line: 456, baseType: !7, size: 32, offset: 448)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1400, file: !1376, line: 458, baseType: !669, size: 64, offset: 512)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1400, file: !1376, line: 459, baseType: !669, size: 64, offset: 576)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1400, file: !1376, line: 460, baseType: !669, size: 64, offset: 640)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1400, file: !1376, line: 461, baseType: !669, size: 64, offset: 704)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1400, file: !1376, line: 463, baseType: !669, size: 64, offset: 768)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1400, file: !1376, line: 465, baseType: !1416, offset: 832)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1376, line: 415, elements: !501)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1375, file: !1376, line: 693, baseType: !1418, size: 384, offset: 1408)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1376, line: 489, size: 384, elements: !1419)
!1419 = !{!1420, !1421, !1422, !1423, !1424, !1425, !1426}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1418, file: !1376, line: 490, baseType: !457, size: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1418, file: !1376, line: 491, baseType: !576, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1418, file: !1376, line: 492, baseType: !576, size: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1418, file: !1376, line: 493, baseType: !7, size: 32, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1418, file: !1376, line: 494, baseType: !304, size: 16, offset: 288)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1418, file: !1376, line: 495, baseType: !304, size: 16, offset: 304)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1418, file: !1376, line: 497, baseType: !1427, size: 64, offset: 320)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1375, file: !1376, line: 697, baseType: !1429, size: 1792, offset: 1792)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1376, line: 507, size: 1792, elements: !1430)
!1430 = !{!1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1506, !1507}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1429, file: !1376, line: 508, baseType: !1000, size: 192, align: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1429, file: !1376, line: 515, baseType: !669, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1429, file: !1376, line: 516, baseType: !669, size: 64, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1429, file: !1376, line: 517, baseType: !669, size: 64, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1429, file: !1376, line: 518, baseType: !669, size: 64, offset: 384)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1429, file: !1376, line: 519, baseType: !669, size: 64, offset: 448)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1429, file: !1376, line: 526, baseType: !1017, size: 64, offset: 512)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1429, file: !1376, line: 527, baseType: !669, size: 64, offset: 576)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1429, file: !1376, line: 528, baseType: !7, size: 32, offset: 640)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1429, file: !1376, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1429, file: !1376, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1429, file: !1376, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1429, file: !1376, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1429, file: !1376, line: 563, baseType: !1445, size: 512, offset: 704)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !1446)
!1446 = !{!1447, !1455, !1456, !1461, !1502, !1503, !1504, !1505}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1445, file: !191, line: 119, baseType: !1448, size: 256)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1449, line: 9, size: 256, elements: !1450)
!1449 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1448, file: !1449, line: 10, baseType: !1000, size: 192, align: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1448, file: !1449, line: 11, baseType: !1453, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1454, line: 29, baseType: !1017)
!1454 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1445, file: !191, line: 120, baseType: !1453, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1445, file: !191, line: 121, baseType: !1457, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!190, !1460}
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1445, file: !191, line: 122, baseType: !1462, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !1464)
!1464 = !{!1465, !1483, !1484, !1487, !1492, !1493, !1497, !1501}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1463, file: !191, line: 160, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1467, file: !191, line: 215, baseType: !1020)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1467, file: !191, line: 216, baseType: !7, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1467, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1467, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1467, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1467, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1467, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1467, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1467, file: !191, line: 233, baseType: !1453, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1467, file: !191, line: 234, baseType: !1460, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1467, file: !191, line: 235, baseType: !1453, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1467, file: !191, line: 236, baseType: !1460, size: 64, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1467, file: !191, line: 237, baseType: !1482, size: 4096, offset: 512)
!1482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1463, size: 4096, elements: !427)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1463, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1463, file: !191, line: 162, baseType: !1485, size: 32, offset: 96)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !298, line: 27, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !560, line: 96, baseType: !330)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1463, file: !191, line: 163, baseType: !1488, size: 32, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !640, line: 276, baseType: !1489)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !640, line: 276, size: 32, elements: !1490)
!1490 = !{!1491}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1489, file: !640, line: 276, baseType: !644, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1463, file: !191, line: 164, baseType: !1460, size: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1463, file: !191, line: 165, baseType: !1494, size: 128, offset: 256)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1449, line: 14, size: 128, elements: !1495)
!1495 = !{!1496}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1494, file: !1449, line: 15, baseType: !992, size: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1463, file: !191, line: 166, baseType: !1498, size: 64, offset: 384)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!1453}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1463, file: !191, line: 167, baseType: !1453, size: 64, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1445, file: !191, line: 123, baseType: !348, size: 8, offset: 448)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1445, file: !191, line: 124, baseType: !348, size: 8, offset: 456)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1445, file: !191, line: 125, baseType: !348, size: 8, offset: 464)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1445, file: !191, line: 126, baseType: !348, size: 8, offset: 472)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1429, file: !1376, line: 572, baseType: !1445, size: 512, offset: 1216)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1429, file: !1376, line: 580, baseType: !1508, size: 64, offset: 1728)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1375, file: !1376, line: 721, baseType: !7, size: 32, offset: 3584)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1375, file: !1376, line: 722, baseType: !330, size: 32, offset: 3616)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1375, file: !1376, line: 723, baseType: !1512, size: 64, offset: 3648)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1514)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1515, line: 17, baseType: !1516)
!1515 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1515, line: 17, size: 64, elements: !1517)
!1517 = !{!1518}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1516, file: !1515, line: 17, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 64, elements: !1520)
!1520 = !{!1521}
!1521 = !DISubrange(count: 1)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1375, file: !1376, line: 724, baseType: !1514, size: 64, offset: 3712)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1375, file: !1376, line: 749, baseType: !1524, offset: 3776)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1376, line: 290, elements: !501)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1375, file: !1376, line: 751, baseType: !457, size: 128, offset: 3776)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1375, file: !1376, line: 757, baseType: !1212, size: 64, offset: 3904)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1375, file: !1376, line: 758, baseType: !1212, size: 64, offset: 3968)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1375, file: !1376, line: 761, baseType: !1529, size: 320, offset: 4032)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1309, line: 34, size: 320, elements: !1530)
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1529, file: !1309, line: 35, baseType: !669, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1529, file: !1309, line: 36, baseType: !1533, size: 256, offset: 64)
!1533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1219, size: 256, elements: !1313)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1375, file: !1376, line: 766, baseType: !330, size: 32, offset: 4352)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1375, file: !1376, line: 767, baseType: !330, size: 32, offset: 4384)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1375, file: !1376, line: 768, baseType: !330, size: 32, offset: 4416)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1375, file: !1376, line: 770, baseType: !330, size: 32, offset: 4448)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1375, file: !1376, line: 772, baseType: !576, size: 64, offset: 4480)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1375, file: !1376, line: 775, baseType: !7, size: 32, offset: 4544)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1375, file: !1376, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1375, file: !1376, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1375, file: !1376, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1375, file: !1376, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1375, file: !1376, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1375, file: !1376, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1375, file: !1376, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1375, file: !1376, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1375, file: !1376, line: 831, baseType: !576, size: 64, offset: 4672)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1375, file: !1376, line: 833, baseType: !1550, size: 384, offset: 4736)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !1551)
!1551 = !{!1552, !1557}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1550, file: !196, line: 26, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!562, !1556}
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1550, file: !196, line: 27, baseType: !1558, size: 320, offset: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1550, file: !196, line: 27, size: 320, elements: !1559)
!1559 = !{!1560, !1570, !1597}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1558, file: !196, line: 36, baseType: !1561, size: 320)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1558, file: !196, line: 29, size: 320, elements: !1562)
!1562 = !{!1563, !1565, !1566, !1567, !1568, !1569}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1561, file: !196, line: 30, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1561, file: !196, line: 31, baseType: !416, size: 32, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1561, file: !196, line: 32, baseType: !416, size: 32, offset: 96)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1561, file: !196, line: 33, baseType: !416, size: 32, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1561, file: !196, line: 34, baseType: !669, size: 64, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1561, file: !196, line: 35, baseType: !1564, size: 64, offset: 256)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1558, file: !196, line: 46, baseType: !1571, size: 192)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1558, file: !196, line: 38, size: 192, elements: !1572)
!1572 = !{!1573, !1574, !1575, !1596}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1571, file: !196, line: 39, baseType: !1485, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1571, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !196, line: 41, baseType: !1576, size: 64, offset: 64)
!1576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1571, file: !196, line: 41, size: 64, elements: !1577)
!1577 = !{!1578, !1586}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1576, file: !196, line: 42, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1581, line: 7, size: 128, elements: !1582)
!1581 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1582 = !{!1583, !1585}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1580, file: !1581, line: 8, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !560, line: 93, baseType: !777)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1580, file: !1581, line: 9, baseType: !777, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1576, file: !196, line: 43, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1589, line: 7, size: 64, elements: !1590)
!1589 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1590 = !{!1591, !1595}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1588, file: !1589, line: 8, baseType: !1592, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1589, line: 5, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !301, line: 20, baseType: !1594)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !303, line: 26, baseType: !330)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1588, file: !1589, line: 9, baseType: !1593, size: 32, offset: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1571, file: !196, line: 45, baseType: !669, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1558, file: !196, line: 54, baseType: !1598, size: 256)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1558, file: !196, line: 48, size: 256, elements: !1599)
!1599 = !{!1600, !1608, !1609, !1610, !1611}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1598, file: !196, line: 49, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1603, line: 36, size: 64, elements: !1604)
!1603 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1604 = !{!1605, !1606, !1607}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1602, file: !1603, line: 37, baseType: !330, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1602, file: !1603, line: 38, baseType: !1363, size: 16, offset: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1602, file: !1603, line: 39, baseType: !1363, size: 16, offset: 48)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1598, file: !196, line: 50, baseType: !330, size: 32, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1598, file: !196, line: 51, baseType: !330, size: 32, offset: 96)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1598, file: !196, line: 52, baseType: !576, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1598, file: !196, line: 53, baseType: !576, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1375, file: !1376, line: 835, baseType: !1613, size: 32, offset: 5120)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !298, line: 22, baseType: !1614)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !560, line: 28, baseType: !330)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1375, file: !1376, line: 836, baseType: !1613, size: 32, offset: 5152)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1375, file: !1376, line: 840, baseType: !576, size: 64, offset: 5184)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1375, file: !1376, line: 849, baseType: !1374, size: 64, offset: 5248)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1375, file: !1376, line: 852, baseType: !1374, size: 64, offset: 5312)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1375, file: !1376, line: 857, baseType: !457, size: 128, offset: 5376)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1375, file: !1376, line: 858, baseType: !457, size: 128, offset: 5504)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1375, file: !1376, line: 859, baseType: !1374, size: 64, offset: 5632)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1375, file: !1376, line: 867, baseType: !457, size: 128, offset: 5696)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1375, file: !1376, line: 868, baseType: !457, size: 128, offset: 5824)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1375, file: !1376, line: 871, baseType: !1625, size: 64, offset: 5952)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !1627)
!1627 = !{!1628, !1629, !1630, !1631, !1633, !1634, !1641, !1642}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1626, file: !217, line: 61, baseType: !441, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1626, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1626, file: !217, line: 63, baseType: !487, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1626, file: !217, line: 65, baseType: !1632, size: 256, offset: 64)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !879, size: 256, elements: !1313)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1626, file: !217, line: 66, baseType: !879, size: 64, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1626, file: !217, line: 68, baseType: !1635, size: 128, offset: 384)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1636, line: 40, baseType: !1637)
!1636 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1636, line: 36, size: 128, elements: !1638)
!1638 = !{!1639, !1640}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1637, file: !1636, line: 37, baseType: !487)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1637, file: !1636, line: 38, baseType: !457, size: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1626, file: !217, line: 69, baseType: !617, size: 128, align: 64, offset: 512)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1626, file: !217, line: 70, baseType: !1643, size: 128, offset: 640)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1644, size: 128, elements: !1520)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1644, file: !217, line: 55, baseType: !330, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1644, file: !217, line: 56, baseType: !1648, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1375, file: !1376, line: 872, baseType: !1651, size: 512, offset: 6016)
!1651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 512, elements: !1313)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1375, file: !1376, line: 873, baseType: !457, size: 128, offset: 6528)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1375, file: !1376, line: 874, baseType: !457, size: 128, offset: 6656)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1375, file: !1376, line: 876, baseType: !1655, size: 64, offset: 6784)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1657, line: 26, size: 192, elements: !1658)
!1657 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1656, file: !1657, line: 27, baseType: !7, size: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1656, file: !1657, line: 28, baseType: !1661, size: 128, offset: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1662, line: 43, size: 128, elements: !1663)
!1662 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1661, file: !1662, line: 44, baseType: !1020)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1661, file: !1662, line: 45, baseType: !457, size: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1375, file: !1376, line: 879, baseType: !949, size: 64, offset: 6848)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1375, file: !1376, line: 882, baseType: !949, size: 64, offset: 6912)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1375, file: !1376, line: 884, baseType: !669, size: 64, offset: 6976)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1375, file: !1376, line: 885, baseType: !669, size: 64, offset: 7040)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1375, file: !1376, line: 890, baseType: !669, size: 64, offset: 7104)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1375, file: !1376, line: 891, baseType: !1672, size: 128, offset: 7168)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1376, line: 242, size: 128, elements: !1673)
!1673 = !{!1674, !1675, !1676}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1672, file: !1376, line: 244, baseType: !669, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1672, file: !1376, line: 245, baseType: !669, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1672, file: !1376, line: 246, baseType: !1020, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1375, file: !1376, line: 900, baseType: !576, size: 64, offset: 7296)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1375, file: !1376, line: 901, baseType: !576, size: 64, offset: 7360)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1375, file: !1376, line: 904, baseType: !669, size: 64, offset: 7424)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1375, file: !1376, line: 907, baseType: !669, size: 64, offset: 7488)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1375, file: !1376, line: 910, baseType: !576, size: 64, offset: 7552)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1375, file: !1376, line: 911, baseType: !576, size: 64, offset: 7616)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1375, file: !1376, line: 914, baseType: !1684, size: 640, offset: 7680)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1685, line: 123, size: 640, elements: !1686)
!1685 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1686 = !{!1687, !1693, !1694}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1684, file: !1685, line: 124, baseType: !1688, size: 576)
!1688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1689, size: 576, elements: !528)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1685, line: 108, size: 192, elements: !1690)
!1690 = !{!1691, !1692}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1689, file: !1685, line: 109, baseType: !669, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1689, file: !1685, line: 110, baseType: !1494, size: 128, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1684, file: !1685, line: 125, baseType: !7, size: 32, offset: 576)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1684, file: !1685, line: 126, baseType: !7, size: 32, offset: 608)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1375, file: !1376, line: 917, baseType: !1696, size: 192, offset: 8320)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1685, line: 134, size: 192, elements: !1697)
!1697 = !{!1698, !1699}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1696, file: !1685, line: 135, baseType: !617, size: 128, align: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1696, file: !1685, line: 136, baseType: !7, size: 32, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1375, file: !1376, line: 923, baseType: !1701, size: 64, offset: 8512)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1703)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1704, line: 111, size: 1280, elements: !1705)
!1704 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1725, !1726, !1727, !1728, !1729, !1730, !1835, !1836, !1837, !1838, !1864, !1867, !1877}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1703, file: !1704, line: 112, baseType: !446, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1703, file: !1704, line: 120, baseType: !682, size: 32, offset: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1703, file: !1704, line: 121, baseType: !690, size: 32, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1703, file: !1704, line: 122, baseType: !682, size: 32, offset: 96)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1703, file: !1704, line: 123, baseType: !690, size: 32, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1703, file: !1704, line: 124, baseType: !682, size: 32, offset: 160)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1703, file: !1704, line: 125, baseType: !690, size: 32, offset: 192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1703, file: !1704, line: 126, baseType: !682, size: 32, offset: 224)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1703, file: !1704, line: 127, baseType: !690, size: 32, offset: 256)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1703, file: !1704, line: 128, baseType: !7, size: 32, offset: 288)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1703, file: !1704, line: 129, baseType: !1717, size: 64, offset: 320)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1718, line: 26, baseType: !1719)
!1718 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1718, line: 24, size: 64, elements: !1720)
!1720 = !{!1721}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1719, file: !1718, line: 25, baseType: !1722, size: 64)
!1722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 64, elements: !1723)
!1723 = !{!1724}
!1724 = !DISubrange(count: 2)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1703, file: !1704, line: 130, baseType: !1717, size: 64, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1703, file: !1704, line: 131, baseType: !1717, size: 64, offset: 448)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1703, file: !1704, line: 132, baseType: !1717, size: 64, offset: 512)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1703, file: !1704, line: 133, baseType: !1717, size: 64, offset: 576)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1703, file: !1704, line: 135, baseType: !350, size: 8, offset: 640)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1703, file: !1704, line: 137, baseType: !1731, size: 64, offset: 704)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1733, line: 189, size: 1664, elements: !1734)
!1733 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1734 = !{!1735, !1736, !1739, !1744, !1745, !1748, !1749, !1754, !1755, !1756, !1757, !1759, !1760, !1761, !1762, !1763, !1799, !1820}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1732, file: !1733, line: 190, baseType: !441, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1732, file: !1733, line: 191, baseType: !1737, size: 32, offset: 32)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1733, line: 28, baseType: !1738)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !298, line: 98, baseType: !1593)
!1739 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !1733, line: 192, baseType: !1740, size: 192, offset: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1732, file: !1733, line: 192, size: 192, elements: !1741)
!1741 = !{!1742, !1743}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1740, file: !1733, line: 193, baseType: !457, size: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1740, file: !1733, line: 194, baseType: !1000, size: 192, align: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1732, file: !1733, line: 199, baseType: !1007, size: 256, offset: 256)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1732, file: !1733, line: 200, baseType: !1746, size: 64, offset: 512)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1733, line: 200, flags: DIFlagFwdDecl)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1732, file: !1733, line: 201, baseType: !299, size: 64, offset: 576)
!1749 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !1733, line: 202, baseType: !1750, size: 64, offset: 640)
!1750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1732, file: !1733, line: 202, size: 64, elements: !1751)
!1751 = !{!1752, !1753}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1750, file: !1733, line: 203, baseType: !783, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1750, file: !1733, line: 204, baseType: !783, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1732, file: !1733, line: 206, baseType: !783, size: 64, offset: 704)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1732, file: !1733, line: 207, baseType: !682, size: 32, offset: 768)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1732, file: !1733, line: 208, baseType: !690, size: 32, offset: 800)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1732, file: !1733, line: 209, baseType: !1758, size: 32, offset: 832)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1733, line: 31, baseType: !803)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1732, file: !1733, line: 210, baseType: !304, size: 16, offset: 864)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1732, file: !1733, line: 211, baseType: !304, size: 16, offset: 880)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1732, file: !1733, line: 215, baseType: !1363, size: 16, offset: 896)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1732, file: !1733, line: 222, baseType: !576, size: 64, offset: 960)
!1763 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !1733, line: 239, baseType: !1764, size: 320, offset: 1024)
!1764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1732, file: !1733, line: 239, size: 320, elements: !1765)
!1765 = !{!1766, !1791}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1764, file: !1733, line: 240, baseType: !1767, size: 320)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1733, line: 108, size: 320, elements: !1768)
!1768 = !{!1769, !1770, !1780, !1783, !1790}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1767, file: !1733, line: 110, baseType: !576, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !1733, line: 111, baseType: !1771, size: 64, offset: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1767, file: !1733, line: 111, size: 64, elements: !1772)
!1772 = !{!1773, !1779}
!1773 = !DIDerivedType(tag: DW_TAG_member, scope: !1771, file: !1733, line: 112, baseType: !1774, size: 64)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !1733, line: 112, size: 64, elements: !1775)
!1775 = !{!1776, !1777}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1774, file: !1733, line: 114, baseType: !300, size: 16)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1774, file: !1733, line: 115, baseType: !1778, size: 48, offset: 16)
!1778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 48, elements: !466)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1771, file: !1733, line: 121, baseType: !576, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1767, file: !1733, line: 123, baseType: !1781, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1733, line: 96, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1767, file: !1733, line: 124, baseType: !1784, size: 64, offset: 192)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1733, line: 102, size: 192, elements: !1786)
!1786 = !{!1787, !1788, !1789}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1785, file: !1733, line: 103, baseType: !617, size: 128, align: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1785, file: !1733, line: 104, baseType: !441, size: 32, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1785, file: !1733, line: 105, baseType: !734, size: 8, offset: 160)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1767, file: !1733, line: 125, baseType: !313, size: 64, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_member, scope: !1764, file: !1733, line: 241, baseType: !1792, size: 320)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1764, file: !1733, line: 241, size: 320, elements: !1793)
!1793 = !{!1794, !1795, !1796, !1797, !1798}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1792, file: !1733, line: 242, baseType: !576, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1792, file: !1733, line: 243, baseType: !576, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1792, file: !1733, line: 244, baseType: !1781, size: 64, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1792, file: !1733, line: 245, baseType: !1784, size: 64, offset: 192)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1792, file: !1733, line: 246, baseType: !336, size: 64, offset: 256)
!1799 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !1733, line: 254, baseType: !1800, size: 256, offset: 1344)
!1800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1732, file: !1733, line: 254, size: 256, elements: !1801)
!1801 = !{!1802, !1808}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1800, file: !1733, line: 255, baseType: !1803, size: 256)
!1803 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1733, line: 128, size: 256, elements: !1804)
!1804 = !{!1805, !1806}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1803, file: !1733, line: 129, baseType: !299, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1803, file: !1733, line: 130, baseType: !1807, size: 256)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 256, elements: !1313)
!1808 = !DIDerivedType(tag: DW_TAG_member, scope: !1800, file: !1733, line: 256, baseType: !1809, size: 256)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1800, file: !1733, line: 256, size: 256, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1809, file: !1733, line: 258, baseType: !457, size: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1809, file: !1733, line: 259, baseType: !1813, size: 128, offset: 128)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1814, line: 22, size: 128, elements: !1815)
!1814 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1815 = !{!1816, !1819}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1813, file: !1814, line: 23, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1814, line: 23, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1813, file: !1814, line: 24, baseType: !576, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1732, file: !1733, line: 274, baseType: !1821, size: 64, offset: 1600)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1733, line: 170, size: 192, elements: !1823)
!1823 = !{!1824, !1833, !1834}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1822, file: !1733, line: 171, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1733, line: 165, baseType: !1826)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!330, !1731, !1829, !1831, !1731}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1782)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1803)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1822, file: !1733, line: 172, baseType: !1731, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1822, file: !1733, line: 173, baseType: !1781, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1703, file: !1704, line: 138, baseType: !1731, size: 64, offset: 768)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1703, file: !1704, line: 139, baseType: !1731, size: 64, offset: 832)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1703, file: !1704, line: 140, baseType: !1731, size: 64, offset: 896)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1703, file: !1704, line: 145, baseType: !1839, size: 64, offset: 960)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1841, line: 13, size: 896, elements: !1842)
!1841 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1842 = !{!1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1840, file: !1841, line: 14, baseType: !441, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1840, file: !1841, line: 15, baseType: !446, size: 32, offset: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1840, file: !1841, line: 16, baseType: !446, size: 32, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1840, file: !1841, line: 21, baseType: !1011, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1840, file: !1841, line: 27, baseType: !576, size: 64, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1840, file: !1841, line: 28, baseType: !576, size: 64, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1840, file: !1841, line: 29, baseType: !1011, size: 64, offset: 320)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1840, file: !1841, line: 32, baseType: !883, size: 128, offset: 384)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1840, file: !1841, line: 33, baseType: !682, size: 32, offset: 512)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1840, file: !1841, line: 37, baseType: !1011, size: 64, offset: 576)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1840, file: !1841, line: 44, baseType: !1854, size: 256, offset: 640)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1855, line: 15, size: 256, elements: !1856)
!1855 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1856 = !{!1857, !1858, !1859, !1860, !1861, !1862, !1863}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1854, file: !1855, line: 16, baseType: !1020)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1854, file: !1855, line: 18, baseType: !330, size: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1854, file: !1855, line: 19, baseType: !330, size: 32, offset: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1854, file: !1855, line: 20, baseType: !330, size: 32, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1854, file: !1855, line: 21, baseType: !330, size: 32, offset: 96)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1854, file: !1855, line: 22, baseType: !576, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1854, file: !1855, line: 23, baseType: !576, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1703, file: !1704, line: 146, baseType: !1865, size: 64, offset: 1024)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !683, line: 18, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1703, file: !1704, line: 147, baseType: !1868, size: 64, offset: 1088)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1704, line: 25, size: 64, elements: !1870)
!1870 = !{!1871, !1872, !1873}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1869, file: !1704, line: 26, baseType: !446, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1869, file: !1704, line: 27, baseType: !330, size: 32, offset: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1869, file: !1704, line: 28, baseType: !1874, offset: 64)
!1874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, elements: !1875)
!1875 = !{!1876}
!1876 = !DISubrange(count: 0)
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1703, file: !1704, line: 149, baseType: !1878, size: 128, offset: 1152)
!1878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1703, file: !1704, line: 149, size: 128, elements: !1879)
!1879 = !{!1880, !1881}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1878, file: !1704, line: 150, baseType: !330, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1878, file: !1704, line: 151, baseType: !617, size: 128, align: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1375, file: !1376, line: 926, baseType: !1701, size: 64, offset: 8576)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1375, file: !1376, line: 929, baseType: !1701, size: 64, offset: 8640)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1375, file: !1376, line: 933, baseType: !1731, size: 64, offset: 8704)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1375, file: !1376, line: 943, baseType: !1886, size: 128, offset: 8768)
!1886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 128, elements: !1887)
!1887 = !{!1888}
!1888 = !DISubrange(count: 16)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1375, file: !1376, line: 945, baseType: !1890, size: 64, offset: 8896)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1376, line: 49, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1375, file: !1376, line: 956, baseType: !1893, size: 64, offset: 8960)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1376, line: 45, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1375, file: !1376, line: 959, baseType: !1896, size: 64, offset: 9024)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1376, line: 959, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1375, file: !1376, line: 962, baseType: !1899, size: 64, offset: 9088)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1376, line: 66, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1375, file: !1376, line: 966, baseType: !1902, size: 64, offset: 9152)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1904, line: 35, flags: DIFlagFwdDecl)
!1904 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1375, file: !1376, line: 969, baseType: !1906, size: 64, offset: 9216)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1908, line: 82, size: 7296, elements: !1909)
!1908 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1909 = !{!1910, !1911, !1912, !1913, !1914, !1915, !1916, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1945, !1954, !1955, !1957, !1958, !1959, !1962, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1992, !1993, !2000, !2001, !2002, !2003, !2004, !2005}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1907, file: !1908, line: 83, baseType: !441, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1907, file: !1908, line: 84, baseType: !446, size: 32, offset: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1907, file: !1908, line: 85, baseType: !330, size: 32, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1907, file: !1908, line: 86, baseType: !457, size: 128, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1907, file: !1908, line: 88, baseType: !1635, size: 128, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1907, file: !1908, line: 91, baseType: !1374, size: 64, offset: 384)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1907, file: !1908, line: 94, baseType: !1917, size: 192, offset: 448)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1918, line: 30, size: 192, elements: !1919)
!1918 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1917, file: !1918, line: 31, baseType: !457, size: 128)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1917, file: !1918, line: 32, baseType: !1922, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1923, line: 25, baseType: !1924)
!1923 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1923, line: 23, size: 64, elements: !1925)
!1925 = !{!1926}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1924, file: !1923, line: 24, baseType: !1519, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1907, file: !1908, line: 97, baseType: !879, size: 64, offset: 640)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1907, file: !1908, line: 100, baseType: !330, size: 32, offset: 704)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1907, file: !1908, line: 106, baseType: !330, size: 32, offset: 736)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1907, file: !1908, line: 107, baseType: !1374, size: 64, offset: 768)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1907, file: !1908, line: 110, baseType: !330, size: 32, offset: 832)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1907, file: !1908, line: 111, baseType: !7, size: 32, offset: 864)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1907, file: !1908, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1907, file: !1908, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1907, file: !1908, line: 128, baseType: !330, size: 32, offset: 928)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1907, file: !1908, line: 129, baseType: !457, size: 128, offset: 960)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1907, file: !1908, line: 132, baseType: !1445, size: 512, offset: 1088)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1907, file: !1908, line: 133, baseType: !1453, size: 64, offset: 1600)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1907, file: !1908, line: 140, baseType: !1940, size: 256, offset: 1664)
!1940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1941, size: 256, elements: !1723)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1908, line: 38, size: 128, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1941, file: !1908, line: 39, baseType: !669, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1941, file: !1908, line: 40, baseType: !669, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1907, file: !1908, line: 146, baseType: !1946, size: 192, offset: 1920)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1908, line: 66, size: 192, elements: !1947)
!1947 = !{!1948}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1946, file: !1908, line: 67, baseType: !1949, size: 192)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1908, line: 47, size: 192, elements: !1950)
!1950 = !{!1951, !1952, !1953}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1949, file: !1908, line: 48, baseType: !1013, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1949, file: !1908, line: 49, baseType: !1013, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1949, file: !1908, line: 50, baseType: !1013, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1907, file: !1908, line: 150, baseType: !1684, size: 640, offset: 2112)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1907, file: !1908, line: 153, baseType: !1956, size: 256, offset: 2752)
!1956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1625, size: 256, elements: !1313)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1907, file: !1908, line: 159, baseType: !1625, size: 64, offset: 3008)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1907, file: !1908, line: 162, baseType: !330, size: 32, offset: 3072)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1907, file: !1908, line: 164, baseType: !1960, size: 64, offset: 3136)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1908, line: 164, flags: DIFlagFwdDecl)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1907, file: !1908, line: 175, baseType: !1963, size: 32, offset: 3200)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !640, line: 805, baseType: !1964)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !640, line: 798, size: 32, elements: !1965)
!1965 = !{!1966, !1967}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1964, file: !640, line: 803, baseType: !639, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1964, file: !640, line: 804, baseType: !487, offset: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1907, file: !1908, line: 176, baseType: !669, size: 64, offset: 3264)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1907, file: !1908, line: 176, baseType: !669, size: 64, offset: 3328)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1907, file: !1908, line: 176, baseType: !669, size: 64, offset: 3392)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1907, file: !1908, line: 176, baseType: !669, size: 64, offset: 3456)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1907, file: !1908, line: 177, baseType: !669, size: 64, offset: 3520)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1907, file: !1908, line: 178, baseType: !669, size: 64, offset: 3584)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1907, file: !1908, line: 179, baseType: !1672, size: 128, offset: 3648)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1907, file: !1908, line: 180, baseType: !576, size: 64, offset: 3776)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1907, file: !1908, line: 180, baseType: !576, size: 64, offset: 3840)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1907, file: !1908, line: 180, baseType: !576, size: 64, offset: 3904)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1907, file: !1908, line: 180, baseType: !576, size: 64, offset: 3968)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1907, file: !1908, line: 181, baseType: !576, size: 64, offset: 4032)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1907, file: !1908, line: 181, baseType: !576, size: 64, offset: 4096)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1907, file: !1908, line: 181, baseType: !576, size: 64, offset: 4160)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1907, file: !1908, line: 181, baseType: !576, size: 64, offset: 4224)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1907, file: !1908, line: 182, baseType: !576, size: 64, offset: 4288)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1907, file: !1908, line: 182, baseType: !576, size: 64, offset: 4352)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1907, file: !1908, line: 182, baseType: !576, size: 64, offset: 4416)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1907, file: !1908, line: 182, baseType: !576, size: 64, offset: 4480)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1907, file: !1908, line: 183, baseType: !576, size: 64, offset: 4544)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1907, file: !1908, line: 183, baseType: !576, size: 64, offset: 4608)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1907, file: !1908, line: 184, baseType: !1990, offset: 4672)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1991, line: 12, elements: !501)
!1991 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1907, file: !1908, line: 192, baseType: !671, size: 64, offset: 4672)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1907, file: !1908, line: 203, baseType: !1994, size: 2048, offset: 4736)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1995, size: 2048, elements: !1887)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1996, line: 43, size: 128, elements: !1997)
!1996 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1995, file: !1996, line: 44, baseType: !575, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1995, file: !1996, line: 45, baseType: !575, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1907, file: !1908, line: 220, baseType: !734, size: 8, offset: 6784)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1907, file: !1908, line: 221, baseType: !1363, size: 16, offset: 6800)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1907, file: !1908, line: 222, baseType: !1363, size: 16, offset: 6816)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1907, file: !1908, line: 224, baseType: !1212, size: 64, offset: 6848)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1907, file: !1908, line: 227, baseType: !1331, size: 192, offset: 6912)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1907, file: !1908, line: 233, baseType: !1331, size: 192, offset: 7104)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1375, file: !1376, line: 970, baseType: !2007, size: 64, offset: 9280)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1908, line: 20, size: 16576, elements: !2009)
!2009 = !{!2010, !2011, !2012, !2013}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2008, file: !1908, line: 21, baseType: !487)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2008, file: !1908, line: 22, baseType: !441, size: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2008, file: !1908, line: 23, baseType: !1635, size: 128, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2008, file: !1908, line: 24, baseType: !2014, size: 16384, offset: 192)
!2014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2015, size: 16384, elements: !532)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1918, line: 49, size: 256, elements: !2016)
!2016 = !{!2017}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2015, file: !1918, line: 50, baseType: !2018, size: 256)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1918, line: 35, size: 256, elements: !2019)
!2019 = !{!2020, !2027, !2028, !2034}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2018, file: !1918, line: 37, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2022, line: 19, baseType: !2023)
!2022 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2022, line: 18, baseType: !2025)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !330}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2018, file: !1918, line: 38, baseType: !576, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2018, file: !1918, line: 44, baseType: !2029, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2022, line: 22, baseType: !2030)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2022, line: 21, baseType: !2032)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2018, file: !1918, line: 46, baseType: !1922, size: 64, offset: 192)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1375, file: !1376, line: 971, baseType: !1922, size: 64, offset: 9344)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1375, file: !1376, line: 972, baseType: !1922, size: 64, offset: 9408)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1375, file: !1376, line: 974, baseType: !1922, size: 64, offset: 9472)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1375, file: !1376, line: 975, baseType: !1917, size: 192, offset: 9536)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1375, file: !1376, line: 976, baseType: !576, size: 64, offset: 9728)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1375, file: !1376, line: 977, baseType: !573, size: 64, offset: 9792)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1375, file: !1376, line: 978, baseType: !7, size: 32, offset: 9856)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1375, file: !1376, line: 980, baseType: !620, size: 64, offset: 9920)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1375, file: !1376, line: 989, baseType: !2044, size: 128, offset: 9984)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2045, line: 35, size: 128, elements: !2046)
!2045 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2046 = !{!2047, !2048, !2049}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2044, file: !2045, line: 36, baseType: !330, size: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2044, file: !2045, line: 37, baseType: !446, size: 32, offset: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2044, file: !2045, line: 38, baseType: !2050, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2045, line: 23, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1375, file: !1376, line: 992, baseType: !669, size: 64, offset: 10112)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1375, file: !1376, line: 993, baseType: !669, size: 64, offset: 10176)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1375, file: !1376, line: 996, baseType: !487, offset: 10240)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1375, file: !1376, line: 999, baseType: !1020, offset: 10240)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1375, file: !1376, line: 1001, baseType: !2057, size: 64, offset: 10240)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1376, line: 636, size: 64, elements: !2058)
!2058 = !{!2059}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2057, file: !1376, line: 637, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1375, file: !1376, line: 1005, baseType: !992, size: 128, offset: 10304)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1375, file: !1376, line: 1007, baseType: !1374, size: 64, offset: 10432)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1375, file: !1376, line: 1009, baseType: !2064, size: 64, offset: 10496)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1376, line: 1009, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1375, file: !1376, line: 1043, baseType: !299, size: 64, offset: 10560)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1375, file: !1376, line: 1046, baseType: !2068, size: 64, offset: 10624)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1376, line: 41, flags: DIFlagFwdDecl)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1375, file: !1376, line: 1050, baseType: !2071, size: 64, offset: 10688)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1376, line: 42, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1375, file: !1376, line: 1054, baseType: !2074, size: 64, offset: 10752)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1376, line: 55, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1375, file: !1376, line: 1056, baseType: !2077, size: 64, offset: 10816)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1376, line: 40, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1375, file: !1376, line: 1058, baseType: !2080, size: 64, offset: 10880)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2082, line: 99, size: 704, elements: !2083)
!2082 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2083 = !{!2084, !2085, !2086, !2087, !2088, !2089, !2090, !2109, !2110}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2081, file: !2082, line: 100, baseType: !1011, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2081, file: !2082, line: 101, baseType: !446, size: 32, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2081, file: !2082, line: 102, baseType: !446, size: 32, offset: 96)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2081, file: !2082, line: 105, baseType: !487, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2081, file: !2082, line: 107, baseType: !304, size: 16, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2081, file: !2082, line: 109, baseType: !983, size: 128, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2081, file: !2082, line: 110, baseType: !2091, size: 64, offset: 320)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2082, line: 73, size: 448, elements: !2093)
!2093 = !{!2094, !2097, !2098, !2103, !2108}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2092, file: !2082, line: 74, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2082, line: 74, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2092, file: !2082, line: 75, baseType: !2080, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, scope: !2092, file: !2082, line: 83, baseType: !2099, size: 128, offset: 128)
!2099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2092, file: !2082, line: 83, size: 128, elements: !2100)
!2100 = !{!2101, !2102}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2099, file: !2082, line: 84, baseType: !457, size: 128)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2099, file: !2082, line: 85, baseType: !1173, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, scope: !2092, file: !2082, line: 87, baseType: !2104, size: 128, offset: 256)
!2104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2092, file: !2082, line: 87, size: 128, elements: !2105)
!2105 = !{!2106, !2107}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2104, file: !2082, line: 88, baseType: !883, size: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2104, file: !2082, line: 89, baseType: !617, size: 128, align: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2092, file: !2082, line: 92, baseType: !7, size: 32, offset: 384)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2081, file: !2082, line: 111, baseType: !879, size: 64, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2081, file: !2082, line: 113, baseType: !2111, size: 256, offset: 448)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2112, line: 102, size: 256, elements: !2113)
!2112 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2113 = !{!2114, !2115, !2116}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2111, file: !2112, line: 103, baseType: !1011, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2111, file: !2112, line: 104, baseType: !457, size: 128, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2111, file: !2112, line: 105, baseType: !2117, size: 64, offset: 192)
!2117 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2112, line: 21, baseType: !2118)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{null, !2121}
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1375, file: !1376, line: 1061, baseType: !2123, size: 64, offset: 10944)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1376, line: 43, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1375, file: !1376, line: 1064, baseType: !576, size: 64, offset: 11008)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1375, file: !1376, line: 1065, baseType: !2127, size: 64, offset: 11072)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1918, line: 14, baseType: !2129)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1918, line: 12, size: 384, elements: !2130)
!2130 = !{!2131}
!2131 = !DIDerivedType(tag: DW_TAG_member, scope: !2129, file: !1918, line: 13, baseType: !2132, size: 384)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2129, file: !1918, line: 13, size: 384, elements: !2133)
!2133 = !{!2134, !2135, !2136, !2137}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2132, file: !1918, line: 13, baseType: !330, size: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2132, file: !1918, line: 13, baseType: !330, size: 32, offset: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2132, file: !1918, line: 13, baseType: !330, size: 32, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2132, file: !1918, line: 13, baseType: !2138, size: 256, offset: 128)
!2138 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2139, line: 32, size: 256, elements: !2140)
!2139 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2140 = !{!2141, !2146, !2159, !2165, !2174, !2194, !2199}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2138, file: !2139, line: 37, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2138, file: !2139, line: 34, size: 64, elements: !2143)
!2143 = !{!2144, !2145}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2142, file: !2139, line: 35, baseType: !1614, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2142, file: !2139, line: 36, baseType: !688, size: 32, offset: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2138, file: !2139, line: 45, baseType: !2147, size: 192)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2138, file: !2139, line: 40, size: 192, elements: !2148)
!2148 = !{!2149, !2151, !2152, !2158}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2147, file: !2139, line: 41, baseType: !2150, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !560, line: 95, baseType: !330)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2147, file: !2139, line: 42, baseType: !330, size: 32, offset: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2147, file: !2139, line: 43, baseType: !2153, size: 64, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2139, line: 11, baseType: !2154)
!2154 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2139, line: 8, size: 64, elements: !2155)
!2155 = !{!2156, !2157}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2154, file: !2139, line: 9, baseType: !330, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2154, file: !2139, line: 10, baseType: !299, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2147, file: !2139, line: 44, baseType: !330, size: 32, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2138, file: !2139, line: 52, baseType: !2160, size: 128)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2138, file: !2139, line: 48, size: 128, elements: !2161)
!2161 = !{!2162, !2163, !2164}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2160, file: !2139, line: 49, baseType: !1614, size: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2160, file: !2139, line: 50, baseType: !688, size: 32, offset: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2160, file: !2139, line: 51, baseType: !2153, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2138, file: !2139, line: 61, baseType: !2166, size: 256)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2138, file: !2139, line: 55, size: 256, elements: !2167)
!2167 = !{!2168, !2169, !2170, !2171, !2173}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2166, file: !2139, line: 56, baseType: !1614, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2166, file: !2139, line: 57, baseType: !688, size: 32, offset: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2166, file: !2139, line: 58, baseType: !330, size: 32, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2166, file: !2139, line: 59, baseType: !2172, size: 64, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !560, line: 94, baseType: !561)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2166, file: !2139, line: 60, baseType: !2172, size: 64, offset: 192)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2138, file: !2139, line: 95, baseType: !2175, size: 256)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2138, file: !2139, line: 64, size: 256, elements: !2176)
!2176 = !{!2177, !2178}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2175, file: !2139, line: 65, baseType: !299, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, scope: !2175, file: !2139, line: 77, baseType: !2179, size: 192, offset: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2175, file: !2139, line: 77, size: 192, elements: !2180)
!2180 = !{!2181, !2182, !2189}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2179, file: !2139, line: 82, baseType: !1363, size: 16)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2179, file: !2139, line: 88, baseType: !2183, size: 192)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2179, file: !2139, line: 84, size: 192, elements: !2184)
!2184 = !{!2185, !2187, !2188}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2183, file: !2139, line: 85, baseType: !2186, size: 64)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 64, elements: !427)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2183, file: !2139, line: 86, baseType: !299, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2183, file: !2139, line: 87, baseType: !299, size: 64, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2179, file: !2139, line: 93, baseType: !2190, size: 96)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2179, file: !2139, line: 90, size: 96, elements: !2191)
!2191 = !{!2192, !2193}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2190, file: !2139, line: 91, baseType: !2186, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2190, file: !2139, line: 92, baseType: !417, size: 32, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2138, file: !2139, line: 101, baseType: !2195, size: 128)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2138, file: !2139, line: 98, size: 128, elements: !2196)
!2196 = !{!2197, !2198}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2195, file: !2139, line: 99, baseType: !562, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2195, file: !2139, line: 100, baseType: !330, size: 32, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2138, file: !2139, line: 108, baseType: !2200, size: 128)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2138, file: !2139, line: 104, size: 128, elements: !2201)
!2201 = !{!2202, !2203, !2204}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2200, file: !2139, line: 105, baseType: !299, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2200, file: !2139, line: 106, baseType: !330, size: 32, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2200, file: !2139, line: 107, baseType: !7, size: 32, offset: 96)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1375, file: !1376, line: 1067, baseType: !1990, offset: 11136)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1375, file: !1376, line: 1099, baseType: !2207, size: 64, offset: 11136)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1376, line: 56, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1375, file: !1376, line: 1103, baseType: !457, size: 128, offset: 11200)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1375, file: !1376, line: 1104, baseType: !2211, size: 64, offset: 11328)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1376, line: 46, flags: DIFlagFwdDecl)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1375, file: !1376, line: 1105, baseType: !1331, size: 192, offset: 11392)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1375, file: !1376, line: 1106, baseType: !7, size: 32, offset: 11584)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1375, file: !1376, line: 1109, baseType: !2216, size: 128, offset: 11648)
!2216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2217, size: 128, elements: !1723)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1376, line: 51, flags: DIFlagFwdDecl)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1375, file: !1376, line: 1110, baseType: !1331, size: 192, offset: 11776)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1375, file: !1376, line: 1111, baseType: !457, size: 128, offset: 11968)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1375, file: !1376, line: 1173, baseType: !2222, size: 64, offset: 12096)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2224, line: 62, size: 256, align: 256, elements: !2225)
!2224 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2225 = !{!2226, !2227, !2228, !2233}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2223, file: !2224, line: 75, baseType: !417, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2223, file: !2224, line: 90, baseType: !417, size: 32, offset: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2223, file: !2224, line: 124, baseType: !2229, size: 64, offset: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2223, file: !2224, line: 109, size: 64, elements: !2230)
!2230 = !{!2231, !2232}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2229, file: !2224, line: 110, baseType: !670, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2229, file: !2224, line: 112, baseType: !670, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2223, file: !2224, line: 144, baseType: !417, size: 32, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1375, file: !1376, line: 1174, baseType: !416, size: 32, offset: 12160)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1375, file: !1376, line: 1179, baseType: !576, size: 64, offset: 12224)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1375, file: !1376, line: 1182, baseType: !2237, size: 128, offset: 12288)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1309, line: 76, size: 128, elements: !2238)
!2238 = !{!2239, !2244, !2245}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2237, file: !1309, line: 85, baseType: !2240, size: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2241, line: 7, size: 64, elements: !2242)
!2241 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2242 = !{!2243}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2240, file: !2241, line: 12, baseType: !1516, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2237, file: !1309, line: 88, baseType: !734, size: 8, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2237, file: !1309, line: 95, baseType: !734, size: 8, offset: 72)
!2246 = !DIDerivedType(tag: DW_TAG_member, scope: !1375, file: !1376, line: 1184, baseType: !2247, size: 128, offset: 12416)
!2247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1375, file: !1376, line: 1184, size: 128, elements: !2248)
!2248 = !{!2249, !2250}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2247, file: !1376, line: 1185, baseType: !441, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2247, file: !1376, line: 1186, baseType: !617, size: 128, align: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1375, file: !1376, line: 1190, baseType: !2252, size: 64, offset: 12544)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1376, line: 53, flags: DIFlagFwdDecl)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1375, file: !1376, line: 1192, baseType: !2255, size: 128, offset: 12608)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1309, line: 64, size: 128, elements: !2256)
!2256 = !{!2257, !2258, !2259}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2255, file: !1309, line: 65, baseType: !965, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2255, file: !1309, line: 67, baseType: !417, size: 32, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2255, file: !1309, line: 68, baseType: !417, size: 32, offset: 96)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1375, file: !1376, line: 1206, baseType: !330, size: 32, offset: 12736)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1375, file: !1376, line: 1207, baseType: !330, size: 32, offset: 12768)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1375, file: !1376, line: 1209, baseType: !576, size: 64, offset: 12800)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1375, file: !1376, line: 1219, baseType: !669, size: 64, offset: 12864)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1375, file: !1376, line: 1220, baseType: !669, size: 64, offset: 12928)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1375, file: !1376, line: 1317, baseType: !330, size: 32, offset: 12992)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1375, file: !1376, line: 1319, baseType: !1374, size: 64, offset: 13056)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1375, file: !1376, line: 1322, baseType: !2268, size: 64, offset: 13120)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2270, line: 56, size: 512, elements: !2271)
!2270 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2271 = !{!2272, !2273, !2274, !2275, !2276, !2277, !2278, !2280}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2269, file: !2270, line: 57, baseType: !2268, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2269, file: !2270, line: 58, baseType: !299, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2269, file: !2270, line: 59, baseType: !576, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2269, file: !2270, line: 60, baseType: !576, size: 64, offset: 192)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2269, file: !2270, line: 61, baseType: !1060, size: 64, offset: 256)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2269, file: !2270, line: 62, baseType: !7, size: 32, offset: 320)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2269, file: !2270, line: 63, baseType: !2279, size: 64, offset: 384)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !298, line: 153, baseType: !669)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2269, file: !2270, line: 64, baseType: !2281, size: 64, offset: 448)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1375, file: !1376, line: 1326, baseType: !441, size: 32, offset: 13184)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1375, file: !1376, line: 1342, baseType: !299, size: 64, offset: 13248)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1375, file: !1376, line: 1343, baseType: !670, size: 64, offset: 13312)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1375, file: !1376, line: 1344, baseType: !669, size: 64, offset: 13376)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1375, file: !1376, line: 1345, baseType: !670, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1375, file: !1376, line: 1346, baseType: !670, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1375, file: !1376, line: 1347, baseType: !670, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1375, file: !1376, line: 1348, baseType: !617, size: 128, align: 64, offset: 13504)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1375, file: !1376, line: 1358, baseType: !2292, size: 34816, offset: 13824)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2293, line: 485, size: 34816, elements: !2294)
!2293 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2294 = !{!2295, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2324, !2325, !2326, !2327, !2328, !2329, !2332, !2333, !2334}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2292, file: !2293, line: 487, baseType: !2296, size: 192)
!2296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2297, size: 192, elements: !528)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2298, line: 16, size: 64, elements: !2299)
!2298 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2299 = !{!2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2297, file: !2298, line: 17, baseType: !300, size: 16)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2297, file: !2298, line: 18, baseType: !300, size: 16, offset: 16)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2297, file: !2298, line: 19, baseType: !300, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2297, file: !2298, line: 19, baseType: !300, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2297, file: !2298, line: 19, baseType: !300, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2297, file: !2298, line: 19, baseType: !300, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2297, file: !2298, line: 19, baseType: !300, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2297, file: !2298, line: 20, baseType: !300, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2297, file: !2298, line: 20, baseType: !300, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2297, file: !2298, line: 20, baseType: !300, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2297, file: !2298, line: 20, baseType: !300, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2297, file: !2298, line: 20, baseType: !300, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2297, file: !2298, line: 20, baseType: !300, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2292, file: !2293, line: 491, baseType: !576, size: 64, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2292, file: !2293, line: 495, baseType: !304, size: 16, offset: 256)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2292, file: !2293, line: 496, baseType: !304, size: 16, offset: 272)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2292, file: !2293, line: 497, baseType: !304, size: 16, offset: 288)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2292, file: !2293, line: 498, baseType: !304, size: 16, offset: 304)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2292, file: !2293, line: 502, baseType: !576, size: 64, offset: 320)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2292, file: !2293, line: 503, baseType: !576, size: 64, offset: 384)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2292, file: !2293, line: 514, baseType: !2321, size: 256, offset: 448)
!2321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2322, size: 256, elements: !1313)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2293, line: 483, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2292, file: !2293, line: 516, baseType: !576, size: 64, offset: 704)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2292, file: !2293, line: 518, baseType: !576, size: 64, offset: 768)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2292, file: !2293, line: 520, baseType: !576, size: 64, offset: 832)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2292, file: !2293, line: 521, baseType: !576, size: 64, offset: 896)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2292, file: !2293, line: 522, baseType: !576, size: 64, offset: 960)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2292, file: !2293, line: 528, baseType: !2330, size: 64, offset: 1024)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2293, line: 10, flags: DIFlagFwdDecl)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2292, file: !2293, line: 535, baseType: !576, size: 64, offset: 1088)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2292, file: !2293, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2292, file: !2293, line: 540, baseType: !2335, size: 33280, offset: 1536)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2336, line: 317, size: 33280, elements: !2337)
!2336 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2337 = !{!2338, !2339, !2340}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2335, file: !2336, line: 330, baseType: !7, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2335, file: !2336, line: 337, baseType: !576, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2335, file: !2336, line: 348, baseType: !2341, size: 32768, offset: 512)
!2341 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2336, line: 304, size: 32768, elements: !2342)
!2342 = !{!2343, !2356, !2395, !2445, !2458}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2341, file: !2336, line: 305, baseType: !2344, size: 896)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2336, line: 12, size: 896, elements: !2345)
!2345 = !{!2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2355}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2344, file: !2336, line: 13, baseType: !416, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2344, file: !2336, line: 14, baseType: !416, size: 32, offset: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2344, file: !2336, line: 15, baseType: !416, size: 32, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2344, file: !2336, line: 16, baseType: !416, size: 32, offset: 96)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2344, file: !2336, line: 17, baseType: !416, size: 32, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2344, file: !2336, line: 18, baseType: !416, size: 32, offset: 160)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2344, file: !2336, line: 19, baseType: !416, size: 32, offset: 192)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2344, file: !2336, line: 22, baseType: !2354, size: 640, offset: 224)
!2354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 640, elements: !401)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2344, file: !2336, line: 25, baseType: !416, size: 32, offset: 864)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2341, file: !2336, line: 306, baseType: !2357, size: 4096, align: 128)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2336, line: 34, size: 4096, align: 128, elements: !2358)
!2358 = !{!2359, !2360, !2361, !2362, !2363, !2378, !2379, !2380, !2384, !2386, !2390}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2357, file: !2336, line: 35, baseType: !300, size: 16)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2357, file: !2336, line: 36, baseType: !300, size: 16, offset: 16)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2357, file: !2336, line: 37, baseType: !300, size: 16, offset: 32)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2357, file: !2336, line: 38, baseType: !300, size: 16, offset: 48)
!2363 = !DIDerivedType(tag: DW_TAG_member, scope: !2357, file: !2336, line: 39, baseType: !2364, size: 128, offset: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2357, file: !2336, line: 39, size: 128, elements: !2365)
!2365 = !{!2366, !2371}
!2366 = !DIDerivedType(tag: DW_TAG_member, scope: !2364, file: !2336, line: 40, baseType: !2367, size: 128)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2364, file: !2336, line: 40, size: 128, elements: !2368)
!2368 = !{!2369, !2370}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2367, file: !2336, line: 41, baseType: !669, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2367, file: !2336, line: 42, baseType: !669, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, scope: !2364, file: !2336, line: 44, baseType: !2372, size: 128)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2364, file: !2336, line: 44, size: 128, elements: !2373)
!2373 = !{!2374, !2375, !2376, !2377}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2372, file: !2336, line: 45, baseType: !416, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2372, file: !2336, line: 46, baseType: !416, size: 32, offset: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2372, file: !2336, line: 47, baseType: !416, size: 32, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2372, file: !2336, line: 48, baseType: !416, size: 32, offset: 96)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2357, file: !2336, line: 51, baseType: !416, size: 32, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2357, file: !2336, line: 52, baseType: !416, size: 32, offset: 224)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2357, file: !2336, line: 55, baseType: !2381, size: 1024, offset: 256)
!2381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 1024, elements: !2382)
!2382 = !{!2383}
!2383 = !DISubrange(count: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2357, file: !2336, line: 58, baseType: !2385, size: 2048, offset: 1280)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 2048, elements: !532)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2357, file: !2336, line: 60, baseType: !2387, size: 384, offset: 3328)
!2387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 384, elements: !2388)
!2388 = !{!2389}
!2389 = !DISubrange(count: 12)
!2390 = !DIDerivedType(tag: DW_TAG_member, scope: !2357, file: !2336, line: 62, baseType: !2391, size: 384, offset: 3712)
!2391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2357, file: !2336, line: 62, size: 384, elements: !2392)
!2392 = !{!2393, !2394}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2391, file: !2336, line: 63, baseType: !2387, size: 384)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2391, file: !2336, line: 64, baseType: !2387, size: 384)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2341, file: !2336, line: 307, baseType: !2396, size: 1088)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2336, line: 79, size: 1088, elements: !2397)
!2397 = !{!2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2444}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2396, file: !2336, line: 80, baseType: !416, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2396, file: !2336, line: 81, baseType: !416, size: 32, offset: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2396, file: !2336, line: 82, baseType: !416, size: 32, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2396, file: !2336, line: 83, baseType: !416, size: 32, offset: 96)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2396, file: !2336, line: 84, baseType: !416, size: 32, offset: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2396, file: !2336, line: 85, baseType: !416, size: 32, offset: 160)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2396, file: !2336, line: 86, baseType: !416, size: 32, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2396, file: !2336, line: 88, baseType: !2354, size: 640, offset: 224)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2396, file: !2336, line: 89, baseType: !348, size: 8, offset: 864)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2396, file: !2336, line: 90, baseType: !348, size: 8, offset: 872)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2396, file: !2336, line: 91, baseType: !348, size: 8, offset: 880)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2396, file: !2336, line: 92, baseType: !348, size: 8, offset: 888)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2396, file: !2336, line: 93, baseType: !348, size: 8, offset: 896)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2396, file: !2336, line: 94, baseType: !348, size: 8, offset: 904)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2396, file: !2336, line: 95, baseType: !2413, size: 64, offset: 960)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2415, line: 11, size: 128, elements: !2416)
!2415 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2416 = !{!2417, !2418}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2414, file: !2415, line: 12, baseType: !562, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2414, file: !2415, line: 13, baseType: !2419, size: 64, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2421, line: 56, size: 1344, elements: !2422)
!2421 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2422 = !{!2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2420, file: !2421, line: 61, baseType: !576, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2420, file: !2421, line: 62, baseType: !576, size: 64, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2420, file: !2421, line: 63, baseType: !576, size: 64, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2420, file: !2421, line: 64, baseType: !576, size: 64, offset: 192)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2420, file: !2421, line: 65, baseType: !576, size: 64, offset: 256)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2420, file: !2421, line: 66, baseType: !576, size: 64, offset: 320)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2420, file: !2421, line: 68, baseType: !576, size: 64, offset: 384)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2420, file: !2421, line: 69, baseType: !576, size: 64, offset: 448)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2420, file: !2421, line: 70, baseType: !576, size: 64, offset: 512)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2420, file: !2421, line: 71, baseType: !576, size: 64, offset: 576)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2420, file: !2421, line: 72, baseType: !576, size: 64, offset: 640)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2420, file: !2421, line: 73, baseType: !576, size: 64, offset: 704)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2420, file: !2421, line: 74, baseType: !576, size: 64, offset: 768)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2420, file: !2421, line: 75, baseType: !576, size: 64, offset: 832)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2420, file: !2421, line: 76, baseType: !576, size: 64, offset: 896)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2420, file: !2421, line: 81, baseType: !576, size: 64, offset: 960)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2420, file: !2421, line: 83, baseType: !576, size: 64, offset: 1024)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2420, file: !2421, line: 84, baseType: !576, size: 64, offset: 1088)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2420, file: !2421, line: 85, baseType: !576, size: 64, offset: 1152)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2420, file: !2421, line: 86, baseType: !576, size: 64, offset: 1216)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2420, file: !2421, line: 87, baseType: !576, size: 64, offset: 1280)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2396, file: !2336, line: 96, baseType: !416, size: 32, offset: 1024)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2341, file: !2336, line: 308, baseType: !2446, size: 4608, align: 512)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2336, line: 289, size: 4608, align: 512, elements: !2447)
!2447 = !{!2448, !2449, !2456}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2446, file: !2336, line: 290, baseType: !2357, size: 4096, align: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2446, file: !2336, line: 291, baseType: !2450, size: 512, offset: 4096)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2336, line: 268, size: 512, elements: !2451)
!2451 = !{!2452, !2453, !2454}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2450, file: !2336, line: 269, baseType: !669, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2450, file: !2336, line: 270, baseType: !669, size: 64, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2450, file: !2336, line: 271, baseType: !2455, size: 384, offset: 128)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 384, elements: !466)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2446, file: !2336, line: 292, baseType: !2457, offset: 4608)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, elements: !1875)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2341, file: !2336, line: 309, baseType: !2459, size: 32768)
!2459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 32768, elements: !2460)
!2460 = !{!2461}
!2461 = !DISubrange(count: 4096)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1371, file: !967, line: 378, baseType: !2463, size: 64, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1367, file: !967, line: 384, baseType: !1656, size: 192, offset: 192)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1216, file: !967, line: 500, baseType: !487, offset: 6656)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1216, file: !967, line: 501, baseType: !2467, size: 64, offset: 6656)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !967, line: 387, flags: DIFlagFwdDecl)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1216, file: !967, line: 516, baseType: !1865, size: 64, offset: 6720)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1216, file: !967, line: 519, baseType: !604, size: 64, offset: 6784)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1216, file: !967, line: 521, baseType: !2472, size: 64, offset: 6848)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !967, line: 521, flags: DIFlagFwdDecl)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1216, file: !967, line: 545, baseType: !446, size: 32, offset: 6912)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1216, file: !967, line: 548, baseType: !734, size: 8, offset: 6944)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1216, file: !967, line: 550, baseType: !2477, offset: 6952)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2478, line: 142, elements: !501)
!2478 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1216, file: !967, line: 554, baseType: !2111, size: 256, offset: 6976)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1216, file: !967, line: 557, baseType: !416, size: 32, offset: 7232)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1213, file: !967, line: 565, baseType: !2482, offset: 7296)
!2482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, elements: !2483)
!2483 = !{!2484}
!2484 = !DISubrange(count: -1)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1209, file: !967, line: 151, baseType: !446, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1202, file: !967, line: 156, baseType: !487, offset: 256)
!2487 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !967, line: 159, baseType: !2488, size: 128)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !967, line: 159, size: 128, elements: !2489)
!2489 = !{!2490, !2493}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2488, file: !967, line: 161, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !967, line: 161, flags: DIFlagFwdDecl)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2488, file: !967, line: 162, baseType: !299, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !971, file: !967, line: 176, baseType: !617, size: 128, align: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !967, line: 179, baseType: !2496, size: 32, offset: 384)
!2496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !967, line: 179, size: 32, elements: !2497)
!2497 = !{!2498, !2499, !2500, !2501}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2496, file: !967, line: 184, baseType: !446, size: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2496, file: !967, line: 192, baseType: !7, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2496, file: !967, line: 194, baseType: !7, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2496, file: !967, line: 195, baseType: !330, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !966, file: !967, line: 199, baseType: !446, size: 32, offset: 416)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !901, file: !208, line: 1964, baseType: !2504, size: 64, offset: 1344)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!562, !843, !2507}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2509, line: 12, size: 256, elements: !2510)
!2509 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2510 = !{!2511, !2512, !2513, !2514, !2515}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2508, file: !2509, line: 13, baseType: !297, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2508, file: !2509, line: 16, baseType: !330, size: 32, offset: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2508, file: !2509, line: 23, baseType: !576, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2508, file: !2509, line: 30, baseType: !576, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2508, file: !2509, line: 33, baseType: !2516, size: 64, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !967, line: 27, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !901, file: !208, line: 1966, baseType: !2504, size: 64, offset: 1408)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !844, file: !208, line: 1424, baseType: !2520, size: 64, offset: 448)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2522)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !2523)
!2523 = !{!2524, !2570, !2574, !2578, !2579, !2580, !2581, !2582, !2587, !2592, !2596}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2522, file: !202, line: 323, baseType: !2525, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!330, !2528}
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !2530)
!2530 = !{!2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2555, !2556, !2557}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2529, file: !202, line: 295, baseType: !883, size: 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2529, file: !202, line: 296, baseType: !457, size: 128, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2529, file: !202, line: 297, baseType: !457, size: 128, offset: 256)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2529, file: !202, line: 298, baseType: !457, size: 128, offset: 384)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2529, file: !202, line: 299, baseType: !1331, size: 192, offset: 512)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2529, file: !202, line: 300, baseType: !487, offset: 704)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2529, file: !202, line: 301, baseType: !446, size: 32, offset: 704)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2529, file: !202, line: 302, baseType: !843, size: 64, offset: 768)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2529, file: !202, line: 303, baseType: !2540, size: 64, offset: 832)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !2541)
!2541 = !{!2542, !2554}
!2542 = !DIDerivedType(tag: DW_TAG_member, scope: !2540, file: !202, line: 69, baseType: !2543, size: 32)
!2543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2540, file: !202, line: 69, size: 32, elements: !2544)
!2544 = !{!2545, !2546, !2547}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2543, file: !202, line: 70, baseType: !682, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2543, file: !202, line: 71, baseType: !690, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2543, file: !202, line: 72, baseType: !2548, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2549, line: 24, baseType: !2550)
!2549 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2549, line: 22, size: 32, elements: !2551)
!2551 = !{!2552}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2550, file: !2549, line: 23, baseType: !2553, size: 32)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2549, line: 20, baseType: !688)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2540, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2529, file: !202, line: 304, baseType: !775, size: 64, offset: 896)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2529, file: !202, line: 305, baseType: !576, size: 64, offset: 960)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2529, file: !202, line: 306, baseType: !2558, size: 576, offset: 1024)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !2559)
!2559 = !{!2560, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2558, file: !202, line: 206, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !777)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2558, file: !202, line: 207, baseType: !2561, size: 64, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2558, file: !202, line: 208, baseType: !2561, size: 64, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2558, file: !202, line: 209, baseType: !2561, size: 64, offset: 192)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2558, file: !202, line: 210, baseType: !2561, size: 64, offset: 256)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2558, file: !202, line: 211, baseType: !2561, size: 64, offset: 320)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2558, file: !202, line: 212, baseType: !2561, size: 64, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2558, file: !202, line: 213, baseType: !783, size: 64, offset: 448)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2558, file: !202, line: 214, baseType: !783, size: 64, offset: 512)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2522, file: !202, line: 324, baseType: !2571, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!2528, !843, !330}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2522, file: !202, line: 325, baseType: !2575, size: 64, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{null, !2528}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2522, file: !202, line: 326, baseType: !2525, size: 64, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2522, file: !202, line: 327, baseType: !2525, size: 64, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2522, file: !202, line: 328, baseType: !2525, size: 64, offset: 320)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2522, file: !202, line: 329, baseType: !929, size: 64, offset: 384)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2522, file: !202, line: 332, baseType: !2583, size: 64, offset: 448)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!2586, !676}
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2522, file: !202, line: 333, baseType: !2588, size: 64, offset: 512)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!330, !676, !2591}
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2522, file: !202, line: 335, baseType: !2593, size: 64, offset: 576)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!330, !676, !2586}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2522, file: !202, line: 337, baseType: !2597, size: 64, offset: 640)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!330, !843, !2600}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !844, file: !208, line: 1425, baseType: !2602, size: 64, offset: 512)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2604)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !2605)
!2605 = !{!2606, !2610, !2611, !2615, !2616, !2617, !2632, !2655, !2659, !2660, !2683}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2604, file: !202, line: 429, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!330, !843, !330, !330, !793}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2604, file: !202, line: 430, baseType: !929, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2604, file: !202, line: 431, baseType: !2612, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!330, !843, !7}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2604, file: !202, line: 432, baseType: !2612, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2604, file: !202, line: 433, baseType: !929, size: 64, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2604, file: !202, line: 434, baseType: !2618, size: 64, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!330, !843, !330, !2621}
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !2623)
!2623 = !{!2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2622, file: !202, line: 416, baseType: !330, size: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2622, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2622, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2622, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2622, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2622, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2622, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2622, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2604, file: !202, line: 435, baseType: !2633, size: 64, offset: 384)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!330, !843, !2540, !2636}
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !2638)
!2638 = !{!2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2637, file: !202, line: 344, baseType: !330, size: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2637, file: !202, line: 345, baseType: !669, size: 64, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2637, file: !202, line: 346, baseType: !669, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2637, file: !202, line: 347, baseType: !669, size: 64, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2637, file: !202, line: 348, baseType: !669, size: 64, offset: 256)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2637, file: !202, line: 349, baseType: !669, size: 64, offset: 320)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2637, file: !202, line: 350, baseType: !669, size: 64, offset: 384)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2637, file: !202, line: 351, baseType: !1017, size: 64, offset: 448)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2637, file: !202, line: 353, baseType: !1017, size: 64, offset: 512)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2637, file: !202, line: 354, baseType: !330, size: 32, offset: 576)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2637, file: !202, line: 355, baseType: !330, size: 32, offset: 608)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2637, file: !202, line: 356, baseType: !669, size: 64, offset: 640)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2637, file: !202, line: 357, baseType: !669, size: 64, offset: 704)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2637, file: !202, line: 358, baseType: !669, size: 64, offset: 768)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2637, file: !202, line: 359, baseType: !1017, size: 64, offset: 832)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2637, file: !202, line: 360, baseType: !330, size: 32, offset: 896)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2604, file: !202, line: 436, baseType: !2656, size: 64, offset: 448)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!330, !843, !2600, !2636}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2604, file: !202, line: 438, baseType: !2633, size: 64, offset: 512)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2604, file: !202, line: 439, baseType: !2661, size: 64, offset: 576)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!330, !843, !2664}
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !2666)
!2666 = !{!2667, !2668}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2665, file: !202, line: 410, baseType: !7, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2665, file: !202, line: 411, baseType: !2669, size: 1344, offset: 64)
!2669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2670, size: 1344, elements: !528)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !2671)
!2671 = !{!2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2682}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2670, file: !202, line: 396, baseType: !7, size: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2670, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2670, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2670, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2670, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2670, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2670, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2670, file: !202, line: 404, baseType: !671, size: 64, offset: 256)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2670, file: !202, line: 405, baseType: !2681, size: 64, offset: 320)
!2681 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !298, line: 126, baseType: !669)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2670, file: !202, line: 406, baseType: !2681, size: 64, offset: 384)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2604, file: !202, line: 440, baseType: !2612, size: 64, offset: 640)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !844, file: !208, line: 1426, baseType: !2685, size: 64, offset: 576)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2687)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !844, file: !208, line: 1427, baseType: !576, size: 64, offset: 640)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !844, file: !208, line: 1428, baseType: !576, size: 64, offset: 704)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !844, file: !208, line: 1429, baseType: !576, size: 64, offset: 768)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !844, file: !208, line: 1430, baseType: !634, size: 64, offset: 832)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !844, file: !208, line: 1431, baseType: !1007, size: 256, offset: 896)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !844, file: !208, line: 1432, baseType: !330, size: 32, offset: 1152)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !844, file: !208, line: 1433, baseType: !446, size: 32, offset: 1184)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !844, file: !208, line: 1437, baseType: !2696, size: 64, offset: 1216)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2699)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !844, file: !208, line: 1449, baseType: !2701, size: 64, offset: 1280)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !650, line: 34, size: 64, elements: !2702)
!2702 = !{!2703}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2701, file: !650, line: 35, baseType: !653, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !844, file: !208, line: 1450, baseType: !457, size: 128, offset: 1344)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !844, file: !208, line: 1451, baseType: !2706, size: 64, offset: 1472)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !844, file: !208, line: 1452, baseType: !2077, size: 64, offset: 1536)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !844, file: !208, line: 1453, baseType: !2710, size: 64, offset: 1600)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !844, file: !208, line: 1454, baseType: !883, size: 128, offset: 1664)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !844, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !844, file: !208, line: 1456, baseType: !2715, size: 2432, offset: 1856)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !2716)
!2716 = !{!2717, !2718, !2719, !2721, !2753}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2715, file: !202, line: 519, baseType: !7, size: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2715, file: !202, line: 520, baseType: !1007, size: 256, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2715, file: !202, line: 521, baseType: !2720, size: 192, offset: 320)
!2720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 192, elements: !528)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2715, file: !202, line: 522, baseType: !2722, size: 1728, offset: 512)
!2722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2723, size: 1728, elements: !528)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !2724)
!2724 = !{!2725, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2723, file: !202, line: 223, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !2728)
!2728 = !{!2729, !2730, !2743, !2744}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2727, file: !202, line: 444, baseType: !330, size: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2727, file: !202, line: 445, baseType: !2731, size: 64, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2733)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !2734)
!2734 = !{!2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2733, file: !202, line: 311, baseType: !929, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2733, file: !202, line: 312, baseType: !929, size: 64, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2733, file: !202, line: 313, baseType: !929, size: 64, offset: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2733, file: !202, line: 314, baseType: !929, size: 64, offset: 192)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2733, file: !202, line: 315, baseType: !2525, size: 64, offset: 256)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2733, file: !202, line: 316, baseType: !2525, size: 64, offset: 320)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2733, file: !202, line: 317, baseType: !2525, size: 64, offset: 384)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2733, file: !202, line: 318, baseType: !2597, size: 64, offset: 448)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2727, file: !202, line: 446, baseType: !317, size: 64, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2727, file: !202, line: 447, baseType: !2726, size: 64, offset: 192)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2723, file: !202, line: 224, baseType: !330, size: 32, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2723, file: !202, line: 226, baseType: !457, size: 128, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2723, file: !202, line: 227, baseType: !576, size: 64, offset: 256)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2723, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2723, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2723, file: !202, line: 230, baseType: !2561, size: 64, offset: 384)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2723, file: !202, line: 231, baseType: !2561, size: 64, offset: 448)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2723, file: !202, line: 232, baseType: !299, size: 64, offset: 512)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2715, file: !202, line: 523, baseType: !2754, size: 192, offset: 2240)
!2754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2731, size: 192, elements: !528)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !844, file: !208, line: 1458, baseType: !2756, size: 2112, offset: 4288)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !2757)
!2757 = !{!2758, !2759, !2760}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2756, file: !208, line: 1411, baseType: !330, size: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2756, file: !208, line: 1412, baseType: !1635, size: 128, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2756, file: !208, line: 1413, baseType: !2761, size: 1920, offset: 192)
!2761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2762, size: 1920, elements: !528)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2763, line: 12, size: 640, elements: !2764)
!2763 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2764 = !{!2765, !2773, !2774, !2779, !2780}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2762, file: !2763, line: 13, baseType: !2766, size: 320)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2767, line: 17, size: 320, elements: !2768)
!2767 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2768 = !{!2769, !2770, !2771, !2772}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2766, file: !2767, line: 18, baseType: !330, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2766, file: !2767, line: 19, baseType: !330, size: 32, offset: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2766, file: !2767, line: 20, baseType: !1635, size: 128, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2766, file: !2767, line: 22, baseType: !617, size: 128, align: 64, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2762, file: !2763, line: 14, baseType: !370, size: 64, offset: 320)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2762, file: !2763, line: 15, baseType: !2775, size: 64, offset: 384)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2776, line: 16, size: 64, elements: !2777)
!2776 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2777 = !{!2778}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2775, file: !2776, line: 17, baseType: !1374, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2762, file: !2763, line: 16, baseType: !1635, size: 128, offset: 448)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2762, file: !2763, line: 17, baseType: !446, size: 32, offset: 576)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !844, file: !208, line: 1465, baseType: !299, size: 64, offset: 6400)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !844, file: !208, line: 1468, baseType: !416, size: 32, offset: 6464)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !844, file: !208, line: 1470, baseType: !783, size: 64, offset: 6528)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !844, file: !208, line: 1471, baseType: !783, size: 64, offset: 6592)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !844, file: !208, line: 1473, baseType: !417, size: 32, offset: 6656)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !844, file: !208, line: 1474, baseType: !2787, size: 64, offset: 6720)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !844, file: !208, line: 1477, baseType: !2790, size: 256, offset: 6784)
!2790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 256, elements: !2382)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !844, file: !208, line: 1478, baseType: !2792, size: 128, offset: 7040)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2793, line: 18, baseType: !2794)
!2793 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2793, line: 16, size: 128, elements: !2795)
!2795 = !{!2796}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2794, file: !2793, line: 17, baseType: !2797, size: 128)
!2797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 128, elements: !1887)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !844, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !844, file: !208, line: 1481, baseType: !2800, size: 32, offset: 7200)
!2800 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !298, line: 150, baseType: !7)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !844, file: !208, line: 1487, baseType: !1331, size: 192, offset: 7232)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !844, file: !208, line: 1493, baseType: !313, size: 64, offset: 7424)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !844, file: !208, line: 1495, baseType: !2804, size: 64, offset: 7488)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2806)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !632, line: 135, size: 1024, align: 512, elements: !2807)
!2807 = !{!2808, !2812, !2813, !2820, !2826, !2830, !2834, !2838, !2839, !2843, !2847, !2852, !2856}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2806, file: !632, line: 136, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!330, !634, !7}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2806, file: !632, line: 137, baseType: !2809, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2806, file: !632, line: 138, baseType: !2814, size: 64, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!330, !2817, !2819}
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2806, file: !632, line: 139, baseType: !2821, size: 64, offset: 192)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!330, !2817, !7, !313, !2824}
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2806, file: !632, line: 141, baseType: !2827, size: 64, offset: 256)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!330, !2817}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2806, file: !632, line: 142, baseType: !2831, size: 64, offset: 320)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!330, !634}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2806, file: !632, line: 143, baseType: !2835, size: 64, offset: 384)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{null, !634}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2806, file: !632, line: 144, baseType: !2835, size: 64, offset: 448)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2806, file: !632, line: 145, baseType: !2840, size: 64, offset: 512)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{null, !634, !676}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2806, file: !632, line: 146, baseType: !2844, size: 64, offset: 576)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!336, !634, !336, !330}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2806, file: !632, line: 147, baseType: !2848, size: 64, offset: 640)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!630, !2851}
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2806, file: !632, line: 148, baseType: !2853, size: 64, offset: 704)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!330, !793, !734}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2806, file: !632, line: 149, baseType: !2857, size: 64, offset: 768)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!634, !634, !2860}
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !844, file: !208, line: 1500, baseType: !330, size: 32, offset: 7552)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !844, file: !208, line: 1502, baseType: !2864, size: 448, offset: 7616)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2509, line: 60, size: 448, elements: !2865)
!2865 = !{!2866, !2871, !2872, !2873, !2874, !2875, !2876}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2864, file: !2509, line: 61, baseType: !2867, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!576, !2870, !2507}
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2864, file: !2509, line: 63, baseType: !2867, size: 64, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2864, file: !2509, line: 66, baseType: !562, size: 64, offset: 128)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2864, file: !2509, line: 67, baseType: !330, size: 32, offset: 192)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2864, file: !2509, line: 68, baseType: !7, size: 32, offset: 224)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2864, file: !2509, line: 71, baseType: !457, size: 128, offset: 256)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2864, file: !2509, line: 77, baseType: !2877, size: 64, offset: 384)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !844, file: !208, line: 1505, baseType: !1011, size: 64, offset: 8064)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !844, file: !208, line: 1508, baseType: !1011, size: 64, offset: 8128)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !844, file: !208, line: 1511, baseType: !330, size: 32, offset: 8192)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !844, file: !208, line: 1514, baseType: !1147, size: 32, offset: 8224)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !844, file: !208, line: 1517, baseType: !2883, size: 64, offset: 8256)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2112, line: 18, flags: DIFlagFwdDecl)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !844, file: !208, line: 1518, baseType: !879, size: 64, offset: 8320)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !844, file: !208, line: 1525, baseType: !1865, size: 64, offset: 8384)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !844, file: !208, line: 1532, baseType: !2888, size: 64, offset: 8448)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2889, line: 52, size: 64, elements: !2890)
!2889 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2890 = !{!2891}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2888, file: !2889, line: 53, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2889, line: 40, size: 256, elements: !2894)
!2894 = !{!2895, !2896, !2901}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2893, file: !2889, line: 42, baseType: !487)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2893, file: !2889, line: 44, baseType: !2897, size: 192)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2889, line: 28, size: 192, elements: !2898)
!2898 = !{!2899, !2900}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2897, file: !2889, line: 29, baseType: !457, size: 128)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2897, file: !2889, line: 31, baseType: !562, size: 64, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2893, file: !2889, line: 49, baseType: !562, size: 64, offset: 192)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !844, file: !208, line: 1533, baseType: !2888, size: 64, offset: 8512)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !844, file: !208, line: 1534, baseType: !617, size: 128, align: 64, offset: 8576)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !844, file: !208, line: 1535, baseType: !2111, size: 256, offset: 8704)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !844, file: !208, line: 1537, baseType: !1331, size: 192, offset: 8960)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !844, file: !208, line: 1542, baseType: !330, size: 32, offset: 9152)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !844, file: !208, line: 1545, baseType: !487, offset: 9184)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !844, file: !208, line: 1546, baseType: !457, size: 128, offset: 9216)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !844, file: !208, line: 1548, baseType: !487, offset: 9344)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !844, file: !208, line: 1549, baseType: !457, size: 128, offset: 9344)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !677, file: !208, line: 624, baseType: !978, size: 64, offset: 256)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !677, file: !208, line: 631, baseType: !576, size: 64, offset: 320)
!2913 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !208, line: 639, baseType: !2914, size: 32, offset: 384)
!2914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !208, line: 639, size: 32, elements: !2915)
!2915 = !{!2916, !2918}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2914, file: !208, line: 640, baseType: !2917, size: 32)
!2917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2914, file: !208, line: 641, baseType: !7, size: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !677, file: !208, line: 643, baseType: !757, size: 32, offset: 416)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !677, file: !208, line: 644, baseType: !775, size: 64, offset: 448)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !677, file: !208, line: 645, baseType: !779, size: 128, offset: 512)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !677, file: !208, line: 646, baseType: !779, size: 128, offset: 640)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !677, file: !208, line: 647, baseType: !779, size: 128, offset: 768)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !677, file: !208, line: 648, baseType: !487, offset: 896)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !677, file: !208, line: 649, baseType: !304, size: 16, offset: 896)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !677, file: !208, line: 650, baseType: !348, size: 8, offset: 912)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !677, file: !208, line: 651, baseType: !348, size: 8, offset: 920)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !677, file: !208, line: 652, baseType: !2681, size: 64, offset: 960)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !677, file: !208, line: 659, baseType: !576, size: 64, offset: 1024)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !677, file: !208, line: 660, baseType: !1007, size: 256, offset: 1088)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !677, file: !208, line: 662, baseType: !576, size: 64, offset: 1344)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !677, file: !208, line: 663, baseType: !576, size: 64, offset: 1408)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !677, file: !208, line: 665, baseType: !883, size: 128, offset: 1472)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !677, file: !208, line: 666, baseType: !457, size: 128, offset: 1600)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !677, file: !208, line: 675, baseType: !457, size: 128, offset: 1728)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !677, file: !208, line: 676, baseType: !457, size: 128, offset: 1856)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !677, file: !208, line: 677, baseType: !457, size: 128, offset: 1984)
!2938 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !208, line: 678, baseType: !2939, size: 128, offset: 2112)
!2939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !208, line: 678, size: 128, elements: !2940)
!2940 = !{!2941, !2942}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2939, file: !208, line: 679, baseType: !879, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2939, file: !208, line: 680, baseType: !617, size: 128, align: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !677, file: !208, line: 682, baseType: !1013, size: 64, offset: 2240)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !677, file: !208, line: 683, baseType: !1013, size: 64, offset: 2304)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !677, file: !208, line: 684, baseType: !446, size: 32, offset: 2368)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !677, file: !208, line: 685, baseType: !446, size: 32, offset: 2400)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !677, file: !208, line: 686, baseType: !446, size: 32, offset: 2432)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !677, file: !208, line: 688, baseType: !446, size: 32, offset: 2464)
!2949 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !208, line: 690, baseType: !2950, size: 64, offset: 2496)
!2950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !208, line: 690, size: 64, elements: !2951)
!2951 = !{!2952, !3184}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2950, file: !208, line: 691, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2955)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !2956)
!2956 = !{!2957, !2958, !2962, !2967, !2971, !2972, !2973, !2977, !2990, !2991, !3008, !3012, !3013, !3017, !3018, !3022, !3027, !3028, !3032, !3036, !3144, !3148, !3149, !3153, !3154, !3158, !3162, !3167, !3171, !3175, !3179, !3183}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2955, file: !208, line: 1823, baseType: !317, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2955, file: !208, line: 1824, baseType: !2959, size: 64, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!775, !604, !775, !330}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2955, file: !208, line: 1825, baseType: !2963, size: 64, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!558, !604, !336, !573, !2966}
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2955, file: !208, line: 1826, baseType: !2968, size: 64, offset: 192)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!558, !604, !313, !573, !2966}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2955, file: !208, line: 1827, baseType: !1084, size: 64, offset: 256)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2955, file: !208, line: 1828, baseType: !1084, size: 64, offset: 320)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2955, file: !208, line: 1829, baseType: !2974, size: 64, offset: 384)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!330, !1087, !734}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2955, file: !208, line: 1830, baseType: !2978, size: 64, offset: 448)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!330, !604, !2981}
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !2983)
!2983 = !{!2984, !2989}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2982, file: !208, line: 1777, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !2986)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!330, !2981, !313, !330, !775, !669, !7}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2982, file: !208, line: 1778, baseType: !775, size: 64, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2955, file: !208, line: 1831, baseType: !2978, size: 64, offset: 512)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2955, file: !208, line: 1832, baseType: !2992, size: 64, offset: 576)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!2995, !604, !2997}
!2995 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2996, line: 52, baseType: !7)
!2996 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2999, line: 43, size: 128, elements: !3000)
!2999 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!3000 = !{!3001, !3007}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2998, file: !2999, line: 44, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2999, line: 37, baseType: !3003)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{null, !604, !3006, !2997}
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2998, file: !2999, line: 45, baseType: !2995, size: 32, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2955, file: !208, line: 1833, baseType: !3009, size: 64, offset: 640)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!562, !604, !7, !576}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2955, file: !208, line: 1834, baseType: !3009, size: 64, offset: 704)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2955, file: !208, line: 1835, baseType: !3014, size: 64, offset: 768)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!330, !604, !1219}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2955, file: !208, line: 1836, baseType: !576, size: 64, offset: 832)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2955, file: !208, line: 1837, baseType: !3019, size: 64, offset: 896)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!330, !676, !604}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2955, file: !208, line: 1838, baseType: !3023, size: 64, offset: 960)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!330, !604, !3026}
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !299)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2955, file: !208, line: 1839, baseType: !3019, size: 64, offset: 1024)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2955, file: !208, line: 1840, baseType: !3029, size: 64, offset: 1088)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!330, !604, !775, !775, !330}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2955, file: !208, line: 1841, baseType: !3033, size: 64, offset: 1152)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!330, !330, !604, !330}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2955, file: !208, line: 1842, baseType: !3037, size: 64, offset: 1216)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!330, !604, !330, !3040}
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !3042)
!3042 = !{!3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3074, !3075, !3076, !3089, !3120}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3041, file: !208, line: 1063, baseType: !3040, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3041, file: !208, line: 1064, baseType: !457, size: 128, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3041, file: !208, line: 1065, baseType: !883, size: 128, offset: 192)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3041, file: !208, line: 1066, baseType: !457, size: 128, offset: 320)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3041, file: !208, line: 1069, baseType: !457, size: 128, offset: 448)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3041, file: !208, line: 1072, baseType: !3026, size: 64, offset: 576)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3041, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3041, file: !208, line: 1074, baseType: !350, size: 8, offset: 672)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3041, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3041, file: !208, line: 1076, baseType: !330, size: 32, offset: 736)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3041, file: !208, line: 1077, baseType: !1635, size: 128, offset: 768)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3041, file: !208, line: 1078, baseType: !604, size: 64, offset: 896)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3041, file: !208, line: 1079, baseType: !775, size: 64, offset: 960)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3041, file: !208, line: 1080, baseType: !775, size: 64, offset: 1024)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3041, file: !208, line: 1082, baseType: !3058, size: 64, offset: 1088)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !3060)
!3060 = !{!3061, !3069, !3070, !3071, !3072, !3073}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3059, file: !208, line: 1315, baseType: !3062)
!3062 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3063, line: 20, baseType: !3064)
!3063 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3063, line: 11, elements: !3065)
!3065 = !{!3066}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3064, file: !3063, line: 12, baseType: !3067)
!3067 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !499, line: 33, baseType: !3068)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !499, line: 31, elements: !501)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3059, file: !208, line: 1316, baseType: !330, size: 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3059, file: !208, line: 1317, baseType: !330, size: 32, offset: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3059, file: !208, line: 1318, baseType: !3058, size: 64, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3059, file: !208, line: 1319, baseType: !604, size: 64, offset: 128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3059, file: !208, line: 1320, baseType: !617, size: 128, align: 64, offset: 192)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3041, file: !208, line: 1084, baseType: !576, size: 64, offset: 1152)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3041, file: !208, line: 1085, baseType: !576, size: 64, offset: 1216)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3041, file: !208, line: 1087, baseType: !3077, size: 64, offset: 1280)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3079)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !3080)
!3080 = !{!3081, !3085}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3079, file: !208, line: 1012, baseType: !3082, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !3040, !3040}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3079, file: !208, line: 1013, baseType: !3086, size: 64, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{null, !3040}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3041, file: !208, line: 1088, baseType: !3090, size: 64, offset: 1344)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3092)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !3093)
!3093 = !{!3094, !3098, !3102, !3103, !3107, !3111, !3115, !3119}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3092, file: !208, line: 1017, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!3026, !3026}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3092, file: !208, line: 1018, baseType: !3099, size: 64, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{null, !3026}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3092, file: !208, line: 1019, baseType: !3086, size: 64, offset: 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3092, file: !208, line: 1020, baseType: !3104, size: 64, offset: 192)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!330, !3040, !330}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3092, file: !208, line: 1021, baseType: !3108, size: 64, offset: 256)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!734, !3040}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3092, file: !208, line: 1022, baseType: !3112, size: 64, offset: 320)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!330, !3040, !330, !460}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3092, file: !208, line: 1023, baseType: !3116, size: 64, offset: 384)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{null, !3040, !1061}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3092, file: !208, line: 1024, baseType: !3108, size: 64, offset: 448)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3041, file: !208, line: 1097, baseType: !3121, size: 256, offset: 1408)
!3121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3041, file: !208, line: 1089, size: 256, elements: !3122)
!3122 = !{!3123, !3132, !3138}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3121, file: !208, line: 1090, baseType: !3124, size: 256)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3125, line: 10, size: 256, elements: !3126)
!3125 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3126 = !{!3127, !3128, !3131}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3124, file: !3125, line: 11, baseType: !416, size: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3124, file: !3125, line: 12, baseType: !3129, size: 64, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3125, line: 5, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3124, file: !3125, line: 13, baseType: !457, size: 128, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3121, file: !208, line: 1091, baseType: !3133, size: 64)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3125, line: 17, size: 64, elements: !3134)
!3134 = !{!3135}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3133, file: !3125, line: 18, baseType: !3136, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3125, line: 16, flags: DIFlagFwdDecl)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3121, file: !208, line: 1096, baseType: !3139, size: 192)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !208, line: 1092, size: 192, elements: !3140)
!3140 = !{!3141, !3142, !3143}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3139, file: !208, line: 1093, baseType: !457, size: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3139, file: !208, line: 1094, baseType: !330, size: 32, offset: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3139, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2955, file: !208, line: 1843, baseType: !3145, size: 64, offset: 1280)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!558, !604, !965, !330, !573, !2966, !330}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2955, file: !208, line: 1844, baseType: !1259, size: 64, offset: 1344)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2955, file: !208, line: 1845, baseType: !3150, size: 64, offset: 1408)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!330, !330}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2955, file: !208, line: 1846, baseType: !3037, size: 64, offset: 1472)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2955, file: !208, line: 1847, baseType: !3155, size: 64, offset: 1536)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!558, !2252, !604, !2966, !573, !7}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2955, file: !208, line: 1848, baseType: !3159, size: 64, offset: 1600)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!558, !604, !2966, !2252, !573, !7}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2955, file: !208, line: 1849, baseType: !3163, size: 64, offset: 1664)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!330, !604, !562, !3166, !1061}
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2955, file: !208, line: 1850, baseType: !3168, size: 64, offset: 1728)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!562, !604, !330, !775, !775}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2955, file: !208, line: 1852, baseType: !3172, size: 64, offset: 1792)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{null, !955, !604}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2955, file: !208, line: 1856, baseType: !3176, size: 64, offset: 1856)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!558, !604, !775, !604, !775, !573, !7}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2955, file: !208, line: 1858, baseType: !3180, size: 64, offset: 1920)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!775, !604, !775, !604, !775, !775, !7}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2955, file: !208, line: 1861, baseType: !3029, size: 64, offset: 1984)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2950, file: !208, line: 692, baseType: !908, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !677, file: !208, line: 694, baseType: !3186, size: 64, offset: 2560)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !3188)
!3188 = !{!3189, !3190, !3191, !3192}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3187, file: !208, line: 1101, baseType: !487)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3187, file: !208, line: 1102, baseType: !457, size: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3187, file: !208, line: 1103, baseType: !457, size: 128, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3187, file: !208, line: 1104, baseType: !457, size: 128, offset: 256)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !677, file: !208, line: 695, baseType: !979, size: 1216, align: 64, offset: 2624)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !677, file: !208, line: 696, baseType: !457, size: 128, offset: 3840)
!3195 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !208, line: 697, baseType: !3196, size: 64, offset: 3968)
!3196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !208, line: 697, size: 64, elements: !3197)
!3197 = !{!3198, !3199, !3200, !3211, !3212}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3196, file: !208, line: 698, baseType: !2252, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3196, file: !208, line: 699, baseType: !2706, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3196, file: !208, line: 700, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3203, line: 14, size: 832, elements: !3204)
!3203 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3204 = !{!3205, !3206, !3207, !3208, !3209, !3210}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3202, file: !3203, line: 15, baseType: !474, size: 512)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3202, file: !3203, line: 16, baseType: !317, size: 64, offset: 512)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3202, file: !3203, line: 17, baseType: !2953, size: 64, offset: 576)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3202, file: !3203, line: 18, baseType: !457, size: 128, offset: 640)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3202, file: !3203, line: 19, baseType: !757, size: 32, offset: 768)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3202, file: !3203, line: 20, baseType: !7, size: 32, offset: 800)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3196, file: !208, line: 701, baseType: !336, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3196, file: !208, line: 702, baseType: !7, size: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !677, file: !208, line: 705, baseType: !417, size: 32, offset: 4032)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !677, file: !208, line: 708, baseType: !417, size: 32, offset: 4064)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !677, file: !208, line: 709, baseType: !2787, size: 64, offset: 4096)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !677, file: !208, line: 720, baseType: !299, size: 64, offset: 4160)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !635, file: !632, line: 98, baseType: !3218, size: 256, offset: 448)
!3218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 256, elements: !2382)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !635, file: !632, line: 101, baseType: !3220, size: 32, offset: 704)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3221, line: 25, size: 32, elements: !3222)
!3221 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3222 = !{!3223}
!3223 = !DIDerivedType(tag: DW_TAG_member, scope: !3220, file: !3221, line: 26, baseType: !3224, size: 32)
!3224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3220, file: !3221, line: 26, size: 32, elements: !3225)
!3225 = !{!3226}
!3226 = !DIDerivedType(tag: DW_TAG_member, scope: !3224, file: !3221, line: 30, baseType: !3227, size: 32)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3224, file: !3221, line: 30, size: 32, elements: !3228)
!3228 = !{!3229, !3230}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3227, file: !3221, line: 31, baseType: !487)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3227, file: !3221, line: 32, baseType: !330, size: 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !635, file: !632, line: 102, baseType: !2804, size: 64, offset: 768)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !635, file: !632, line: 103, baseType: !843, size: 64, offset: 832)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !635, file: !632, line: 104, baseType: !576, size: 64, offset: 896)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !635, file: !632, line: 105, baseType: !299, size: 64, offset: 960)
!3235 = !DIDerivedType(tag: DW_TAG_member, scope: !635, file: !632, line: 107, baseType: !3236, size: 128, offset: 1024)
!3236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !635, file: !632, line: 107, size: 128, elements: !3237)
!3237 = !{!3238, !3239}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3236, file: !632, line: 108, baseType: !457, size: 128)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3236, file: !632, line: 109, baseType: !3006, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !635, file: !632, line: 111, baseType: !457, size: 128, offset: 1152)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !635, file: !632, line: 112, baseType: !457, size: 128, offset: 1280)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !635, file: !632, line: 120, baseType: !3243, size: 128, offset: 1408)
!3243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !635, file: !632, line: 116, size: 128, elements: !3244)
!3244 = !{!3245, !3246, !3247}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3243, file: !632, line: 117, baseType: !883, size: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3243, file: !632, line: 118, baseType: !649, size: 128)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3243, file: !632, line: 119, baseType: !617, size: 128, align: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !605, file: !208, line: 922, baseType: !676, size: 64, offset: 256)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !605, file: !208, line: 923, baseType: !2953, size: 64, offset: 320)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !605, file: !208, line: 929, baseType: !487, offset: 384)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !605, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !605, file: !208, line: 931, baseType: !1011, size: 64, offset: 448)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !605, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !605, file: !208, line: 933, baseType: !2800, size: 32, offset: 544)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !605, file: !208, line: 934, baseType: !1331, size: 192, offset: 576)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !605, file: !208, line: 935, baseType: !775, size: 64, offset: 768)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !605, file: !208, line: 936, baseType: !3258, size: 192, offset: 832)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !3259)
!3259 = !{!3260, !3261, !3262, !3263, !3264, !3265}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3258, file: !208, line: 886, baseType: !3062)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3258, file: !208, line: 887, baseType: !1625, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3258, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3258, file: !208, line: 889, baseType: !682, size: 32, offset: 96)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3258, file: !208, line: 889, baseType: !682, size: 32, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3258, file: !208, line: 890, baseType: !330, size: 32, offset: 160)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !605, file: !208, line: 937, baseType: !1701, size: 64, offset: 1024)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !605, file: !208, line: 938, baseType: !3268, size: 256, offset: 1088)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !3269)
!3269 = !{!3270, !3271, !3272, !3273, !3274, !3275}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3268, file: !208, line: 897, baseType: !576, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3268, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3268, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3268, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3268, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3268, file: !208, line: 904, baseType: !775, size: 64, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !605, file: !208, line: 940, baseType: !669, size: 64, offset: 1344)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !605, file: !208, line: 945, baseType: !299, size: 64, offset: 1408)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !605, file: !208, line: 949, baseType: !457, size: 128, offset: 1472)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !605, file: !208, line: 950, baseType: !457, size: 128, offset: 1600)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !605, file: !208, line: 952, baseType: !978, size: 64, offset: 1728)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !605, file: !208, line: 953, baseType: !1147, size: 32, offset: 1792)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !605, file: !208, line: 954, baseType: !1147, size: 32, offset: 1824)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !595, file: !552, line: 174, baseType: !601, size: 64, offset: 320)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !595, file: !552, line: 176, baseType: !3285, size: 64, offset: 384)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!330, !604, !480, !594, !1219}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !583, file: !552, line: 90, baseType: !578, size: 64, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !583, file: !552, line: 91, baseType: !3290, size: 64, offset: 256)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !542, file: !475, line: 143, baseType: !3292, size: 64, offset: 256)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!3295, !480}
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3297)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !3298)
!3298 = !{!3299, !3300, !3304, !3308, !3314, !3318}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3297, file: !225, line: 40, baseType: !224, size: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3297, file: !225, line: 41, baseType: !3301, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!734}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3297, file: !225, line: 42, baseType: !3305, size: 64, offset: 128)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!299}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3297, file: !225, line: 43, baseType: !3309, size: 64, offset: 192)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!2281, !3312}
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3297, file: !225, line: 44, baseType: !3315, size: 64, offset: 256)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!2281}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3297, file: !225, line: 45, baseType: !338, size: 64, offset: 320)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !542, file: !475, line: 144, baseType: !3320, size: 64, offset: 320)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!2281, !480}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !542, file: !475, line: 145, baseType: !3324, size: 64, offset: 384)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{null, !480, !3327, !3328}
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !474, file: !475, line: 70, baseType: !3330, size: 64, offset: 384)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !863, line: 123, size: 1024, elements: !3332)
!3332 = !{!3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3461, !3462, !3463, !3464, !3465}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3331, file: !863, line: 124, baseType: !446, size: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3331, file: !863, line: 125, baseType: !446, size: 32, offset: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3331, file: !863, line: 135, baseType: !3330, size: 64, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3331, file: !863, line: 136, baseType: !313, size: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3331, file: !863, line: 138, baseType: !1000, size: 192, align: 64, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3331, file: !863, line: 140, baseType: !2281, size: 64, offset: 384)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3331, file: !863, line: 141, baseType: !7, size: 32, offset: 448)
!3340 = !DIDerivedType(tag: DW_TAG_member, scope: !3331, file: !863, line: 142, baseType: !3341, size: 256, offset: 512)
!3341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3331, file: !863, line: 142, size: 256, elements: !3342)
!3342 = !{!3343, !3389, !3393}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3341, file: !863, line: 143, baseType: !3344, size: 192)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !863, line: 91, size: 192, elements: !3345)
!3345 = !{!3346, !3347, !3348}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3344, file: !863, line: 92, baseType: !576, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3344, file: !863, line: 94, baseType: !996, size: 64, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3344, file: !863, line: 100, baseType: !3349, size: 64, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !863, line: 180, size: 704, elements: !3351)
!3351 = !{!3352, !3353, !3354, !3361, !3362, !3363, !3387, !3388}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3350, file: !863, line: 182, baseType: !3330, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3350, file: !863, line: 183, baseType: !7, size: 32, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3350, file: !863, line: 186, baseType: !3355, size: 192, offset: 128)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3356, line: 19, size: 192, elements: !3357)
!3356 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3357 = !{!3358, !3359, !3360}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3355, file: !3356, line: 20, baseType: !983, size: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3355, file: !3356, line: 21, baseType: !7, size: 32, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3355, file: !3356, line: 22, baseType: !7, size: 32, offset: 160)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3350, file: !863, line: 187, baseType: !416, size: 32, offset: 320)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3350, file: !863, line: 188, baseType: !416, size: 32, offset: 352)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3350, file: !863, line: 189, baseType: !3364, size: 64, offset: 384)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !863, line: 168, size: 320, elements: !3366)
!3366 = !{!3367, !3371, !3375, !3379, !3383}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3365, file: !863, line: 169, baseType: !3368, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!330, !955, !3349}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3365, file: !863, line: 171, baseType: !3372, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!330, !3330, !313, !568}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3365, file: !863, line: 173, baseType: !3376, size: 64, offset: 128)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!330, !3330}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3365, file: !863, line: 174, baseType: !3380, size: 64, offset: 192)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!330, !3330, !3330, !313}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3365, file: !863, line: 176, baseType: !3384, size: 64, offset: 256)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!330, !955, !3330, !3349}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3350, file: !863, line: 192, baseType: !457, size: 128, offset: 448)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3350, file: !863, line: 194, baseType: !1635, size: 128, offset: 576)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3341, file: !863, line: 144, baseType: !3390, size: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !863, line: 103, size: 64, elements: !3391)
!3391 = !{!3392}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3390, file: !863, line: 104, baseType: !3330, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3341, file: !863, line: 145, baseType: !3394, size: 256)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !863, line: 107, size: 256, elements: !3395)
!3395 = !{!3396, !3456, !3459, !3460}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3394, file: !863, line: 108, baseType: !3397, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3399)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !863, line: 217, size: 768, elements: !3400)
!3400 = !{!3401, !3421, !3425, !3429, !3433, !3437, !3441, !3445, !3446, !3447, !3448, !3452}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3399, file: !863, line: 222, baseType: !3402, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!330, !3405}
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !863, line: 197, size: 1088, elements: !3407)
!3407 = !{!3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3406, file: !863, line: 199, baseType: !3330, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3406, file: !863, line: 200, baseType: !604, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3406, file: !863, line: 201, baseType: !955, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3406, file: !863, line: 202, baseType: !299, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3406, file: !863, line: 205, baseType: !1331, size: 192, offset: 256)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3406, file: !863, line: 206, baseType: !1331, size: 192, offset: 448)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3406, file: !863, line: 207, baseType: !330, size: 32, offset: 640)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3406, file: !863, line: 208, baseType: !457, size: 128, offset: 704)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3406, file: !863, line: 209, baseType: !336, size: 64, offset: 832)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3406, file: !863, line: 211, baseType: !573, size: 64, offset: 896)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3406, file: !863, line: 212, baseType: !734, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3406, file: !863, line: 213, baseType: !734, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3406, file: !863, line: 214, baseType: !1247, size: 64, offset: 1024)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3399, file: !863, line: 223, baseType: !3422, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{null, !3405}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3399, file: !863, line: 236, baseType: !3426, size: 64, offset: 128)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!330, !955, !299}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3399, file: !863, line: 238, baseType: !3430, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!299, !955, !2966}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3399, file: !863, line: 239, baseType: !3434, size: 64, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!299, !955, !299, !2966}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3399, file: !863, line: 240, baseType: !3438, size: 64, offset: 320)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{null, !955, !299}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3399, file: !863, line: 242, baseType: !3442, size: 64, offset: 384)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!558, !3405, !336, !573, !775}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3399, file: !863, line: 252, baseType: !573, size: 64, offset: 448)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3399, file: !863, line: 259, baseType: !734, size: 8, offset: 512)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3399, file: !863, line: 260, baseType: !3442, size: 64, offset: 576)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3399, file: !863, line: 263, baseType: !3449, size: 64, offset: 640)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!2995, !3405, !2997}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3399, file: !863, line: 266, baseType: !3453, size: 64, offset: 704)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!330, !3405, !1219}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3394, file: !863, line: 109, baseType: !3457, size: 64, offset: 64)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !863, line: 31, flags: DIFlagFwdDecl)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3394, file: !863, line: 110, baseType: !775, size: 64, offset: 128)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3394, file: !863, line: 111, baseType: !3330, size: 64, offset: 192)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3331, file: !863, line: 148, baseType: !299, size: 64, offset: 768)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3331, file: !863, line: 154, baseType: !669, size: 64, offset: 832)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3331, file: !863, line: 156, baseType: !304, size: 16, offset: 896)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3331, file: !863, line: 157, baseType: !568, size: 16, offset: 912)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3331, file: !863, line: 158, baseType: !3466, size: 64, offset: 960)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !863, line: 32, flags: DIFlagFwdDecl)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !474, file: !475, line: 71, baseType: !437, size: 32, offset: 448)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !474, file: !475, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !474, file: !475, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !474, file: !475, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !474, file: !475, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !474, file: !475, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !471, file: !237, line: 463, baseType: !470, size: 64, offset: 512)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !471, file: !237, line: 465, baseType: !3476, size: 64, offset: 576)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !471, file: !237, line: 467, baseType: !313, size: 64, offset: 640)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !471, file: !237, line: 468, baseType: !3480, size: 64, offset: 704)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3482)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3483)
!3483 = !{!3484, !3485, !3486, !3490, !3495, !3499}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3482, file: !237, line: 88, baseType: !313, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3482, file: !237, line: 89, baseType: !580, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3482, file: !237, line: 90, baseType: !3487, size: 64, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!330, !470, !523}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3482, file: !237, line: 91, baseType: !3491, size: 64, offset: 192)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!336, !470, !3494, !3327, !3328}
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3482, file: !237, line: 93, baseType: !3496, size: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{null, !470}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3482, file: !237, line: 95, baseType: !3500, size: 64, offset: 320)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3502)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3503)
!3503 = !{!3504, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3502, file: !244, line: 279, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!330, !470}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3502, file: !244, line: 280, baseType: !3496, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3502, file: !244, line: 281, baseType: !3505, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3502, file: !244, line: 282, baseType: !3505, size: 64, offset: 192)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3502, file: !244, line: 283, baseType: !3505, size: 64, offset: 256)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3502, file: !244, line: 284, baseType: !3505, size: 64, offset: 320)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3502, file: !244, line: 285, baseType: !3505, size: 64, offset: 384)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3502, file: !244, line: 286, baseType: !3505, size: 64, offset: 448)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3502, file: !244, line: 287, baseType: !3505, size: 64, offset: 512)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3502, file: !244, line: 288, baseType: !3505, size: 64, offset: 576)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3502, file: !244, line: 289, baseType: !3505, size: 64, offset: 640)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3502, file: !244, line: 290, baseType: !3505, size: 64, offset: 704)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3502, file: !244, line: 291, baseType: !3505, size: 64, offset: 768)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3502, file: !244, line: 292, baseType: !3505, size: 64, offset: 832)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3502, file: !244, line: 293, baseType: !3505, size: 64, offset: 896)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3502, file: !244, line: 294, baseType: !3505, size: 64, offset: 960)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3502, file: !244, line: 295, baseType: !3505, size: 64, offset: 1024)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3502, file: !244, line: 296, baseType: !3505, size: 64, offset: 1088)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3502, file: !244, line: 297, baseType: !3505, size: 64, offset: 1152)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3502, file: !244, line: 298, baseType: !3505, size: 64, offset: 1216)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3502, file: !244, line: 299, baseType: !3505, size: 64, offset: 1280)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3502, file: !244, line: 300, baseType: !3505, size: 64, offset: 1344)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3502, file: !244, line: 301, baseType: !3505, size: 64, offset: 1408)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !471, file: !237, line: 470, baseType: !3531, size: 64, offset: 768)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3533, line: 82, size: 1408, elements: !3534)
!3533 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3534 = !{!3535, !3536, !3537, !3538, !3539, !3540, !3541, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3613, !3616, !3617}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3532, file: !3533, line: 83, baseType: !313, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3532, file: !3533, line: 84, baseType: !313, size: 64, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3532, file: !3533, line: 85, baseType: !470, size: 64, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3532, file: !3533, line: 86, baseType: !580, size: 64, offset: 192)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3532, file: !3533, line: 87, baseType: !580, size: 64, offset: 256)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3532, file: !3533, line: 88, baseType: !580, size: 64, offset: 320)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3532, file: !3533, line: 90, baseType: !3542, size: 64, offset: 384)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!330, !470, !3545}
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3547)
!3547 = !{!3548, !3549, !3550, !3551, !3552, !3553, !3554, !3564, !3577, !3578, !3579, !3580, !3581, !3589, !3590, !3591, !3592, !3593, !3594}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3546, file: !231, line: 96, baseType: !313, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3546, file: !231, line: 97, baseType: !3531, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3546, file: !231, line: 99, baseType: !317, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3546, file: !231, line: 100, baseType: !313, size: 64, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3546, file: !231, line: 102, baseType: !734, size: 8, offset: 256)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3546, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3546, file: !231, line: 105, baseType: !3555, size: 64, offset: 320)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3557)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3558, line: 262, size: 1600, elements: !3559)
!3558 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3559 = !{!3560, !3561, !3562, !3563}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3557, file: !3558, line: 263, baseType: !2790, size: 256)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3557, file: !3558, line: 264, baseType: !2790, size: 256, offset: 256)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3557, file: !3558, line: 265, baseType: !412, size: 1024, offset: 512)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3557, file: !3558, line: 266, baseType: !2281, size: 64, offset: 1536)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3546, file: !231, line: 106, baseType: !3565, size: 64, offset: 384)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3567)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3558, line: 210, size: 256, elements: !3568)
!3568 = !{!3569, !3573, !3575, !3576}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3567, file: !3558, line: 211, baseType: !3570, size: 72)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 72, elements: !3571)
!3571 = !{!3572}
!3572 = !DISubrange(count: 9)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3567, file: !3558, line: 212, baseType: !3574, size: 64, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3558, line: 14, baseType: !576)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3567, file: !3558, line: 213, baseType: !417, size: 32, offset: 192)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3567, file: !3558, line: 214, baseType: !417, size: 32, offset: 224)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3546, file: !231, line: 108, baseType: !3505, size: 64, offset: 448)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3546, file: !231, line: 109, baseType: !3496, size: 64, offset: 512)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3546, file: !231, line: 110, baseType: !3505, size: 64, offset: 576)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3546, file: !231, line: 111, baseType: !3496, size: 64, offset: 640)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3546, file: !231, line: 112, baseType: !3582, size: 64, offset: 704)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!330, !470, !3585}
!3585 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3586)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3587)
!3587 = !{!3588}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3586, file: !244, line: 51, baseType: !330, size: 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3546, file: !231, line: 113, baseType: !3505, size: 64, offset: 768)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3546, file: !231, line: 114, baseType: !580, size: 64, offset: 832)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3546, file: !231, line: 115, baseType: !580, size: 64, offset: 896)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3546, file: !231, line: 117, baseType: !3500, size: 64, offset: 960)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3546, file: !231, line: 118, baseType: !3496, size: 64, offset: 1024)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3546, file: !231, line: 120, baseType: !3595, size: 64, offset: 1088)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3532, file: !3533, line: 91, baseType: !3487, size: 64, offset: 448)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3532, file: !3533, line: 92, baseType: !3505, size: 64, offset: 512)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3532, file: !3533, line: 93, baseType: !3496, size: 64, offset: 576)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3532, file: !3533, line: 94, baseType: !3505, size: 64, offset: 640)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3532, file: !3533, line: 95, baseType: !3496, size: 64, offset: 704)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3532, file: !3533, line: 97, baseType: !3505, size: 64, offset: 768)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3532, file: !3533, line: 98, baseType: !3505, size: 64, offset: 832)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3532, file: !3533, line: 100, baseType: !3582, size: 64, offset: 896)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3532, file: !3533, line: 101, baseType: !3505, size: 64, offset: 960)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3532, file: !3533, line: 103, baseType: !3505, size: 64, offset: 1024)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3532, file: !3533, line: 105, baseType: !3505, size: 64, offset: 1088)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3532, file: !3533, line: 107, baseType: !3500, size: 64, offset: 1152)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3532, file: !3533, line: 109, baseType: !3610, size: 64, offset: 1216)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3612)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3533, line: 109, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3532, file: !3533, line: 111, baseType: !3614, size: 64, offset: 1280)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3533, line: 111, flags: DIFlagFwdDecl)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3532, file: !3533, line: 112, baseType: !889, offset: 1344)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3532, file: !3533, line: 114, baseType: !734, size: 8, offset: 1344)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !471, file: !237, line: 471, baseType: !3545, size: 64, offset: 832)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !471, file: !237, line: 473, baseType: !299, size: 64, offset: 896)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !471, file: !237, line: 475, baseType: !299, size: 64, offset: 960)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !471, file: !237, line: 480, baseType: !1331, size: 192, offset: 1024)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !471, file: !237, line: 484, baseType: !3623, size: 576, offset: 1216)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3628, !3629, !3630}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3623, file: !237, line: 362, baseType: !457, size: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3623, file: !237, line: 363, baseType: !457, size: 128, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3623, file: !237, line: 364, baseType: !457, size: 128, offset: 256)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3623, file: !237, line: 365, baseType: !457, size: 128, offset: 384)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3623, file: !237, line: 366, baseType: !734, size: 8, offset: 512)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3623, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !471, file: !237, line: 485, baseType: !3632, size: 2304, offset: 1792)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3633)
!3633 = !{!3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3729, !3733}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3632, file: !244, line: 566, baseType: !3585, size: 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3632, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3632, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3632, file: !244, line: 569, baseType: !734, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3632, file: !244, line: 570, baseType: !734, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3632, file: !244, line: 571, baseType: !734, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3632, file: !244, line: 572, baseType: !734, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3632, file: !244, line: 573, baseType: !734, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3632, file: !244, line: 574, baseType: !734, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3632, file: !244, line: 575, baseType: !734, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3632, file: !244, line: 576, baseType: !734, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3632, file: !244, line: 577, baseType: !416, size: 32, offset: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3632, file: !244, line: 578, baseType: !487, offset: 96)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3632, file: !244, line: 580, baseType: !457, size: 128, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3632, file: !244, line: 581, baseType: !1656, size: 192, offset: 256)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3632, file: !244, line: 582, baseType: !3650, size: 64, offset: 448)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3652, line: 43, size: 1472, elements: !3653)
!3652 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3653 = !{!3654, !3655, !3656, !3657, !3658, !3661, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3651, file: !3652, line: 44, baseType: !313, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3651, file: !3652, line: 45, baseType: !330, size: 32, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3651, file: !3652, line: 46, baseType: !457, size: 128, offset: 128)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3651, file: !3652, line: 47, baseType: !487, offset: 256)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3651, file: !3652, line: 48, baseType: !3659, size: 64, offset: 256)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3651, file: !3652, line: 49, baseType: !3662, size: 320, offset: 320)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3663, line: 11, size: 320, elements: !3664)
!3663 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3664 = !{!3665, !3666, !3667, !3672}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3662, file: !3663, line: 16, baseType: !883, size: 128)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3662, file: !3663, line: 17, baseType: !576, size: 64, offset: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3662, file: !3663, line: 18, baseType: !3668, size: 64, offset: 192)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{null, !3671}
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3662, file: !3663, line: 19, baseType: !416, size: 32, offset: 256)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3651, file: !3652, line: 50, baseType: !576, size: 64, offset: 640)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3651, file: !3652, line: 51, baseType: !1453, size: 64, offset: 704)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3651, file: !3652, line: 52, baseType: !1453, size: 64, offset: 768)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3651, file: !3652, line: 53, baseType: !1453, size: 64, offset: 832)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3651, file: !3652, line: 54, baseType: !1453, size: 64, offset: 896)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3651, file: !3652, line: 55, baseType: !1453, size: 64, offset: 960)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3651, file: !3652, line: 56, baseType: !576, size: 64, offset: 1024)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3651, file: !3652, line: 57, baseType: !576, size: 64, offset: 1088)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3651, file: !3652, line: 58, baseType: !576, size: 64, offset: 1152)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3651, file: !3652, line: 59, baseType: !576, size: 64, offset: 1216)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3651, file: !3652, line: 60, baseType: !576, size: 64, offset: 1280)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3651, file: !3652, line: 61, baseType: !470, size: 64, offset: 1344)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3651, file: !3652, line: 62, baseType: !734, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3651, file: !3652, line: 63, baseType: !734, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3632, file: !244, line: 583, baseType: !734, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3632, file: !244, line: 584, baseType: !734, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3632, file: !244, line: 585, baseType: !734, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3632, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3632, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3632, file: !244, line: 592, baseType: !1445, size: 512, offset: 576)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3632, file: !244, line: 593, baseType: !669, size: 64, offset: 1088)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3632, file: !244, line: 594, baseType: !2111, size: 256, offset: 1152)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3632, file: !244, line: 595, baseType: !1635, size: 128, offset: 1408)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3632, file: !244, line: 596, baseType: !3659, size: 64, offset: 1536)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3632, file: !244, line: 597, baseType: !446, size: 32, offset: 1600)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3632, file: !244, line: 598, baseType: !446, size: 32, offset: 1632)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3632, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3632, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3632, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3632, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3632, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3632, file: !244, line: 604, baseType: !734, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3632, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3632, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3632, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3632, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3632, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3632, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3632, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3632, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3632, file: !244, line: 613, baseType: !330, size: 32, offset: 1792)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3632, file: !244, line: 614, baseType: !330, size: 32, offset: 1824)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3632, file: !244, line: 615, baseType: !669, size: 64, offset: 1856)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3632, file: !244, line: 616, baseType: !669, size: 64, offset: 1920)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3632, file: !244, line: 617, baseType: !669, size: 64, offset: 1984)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3632, file: !244, line: 618, baseType: !669, size: 64, offset: 2048)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3632, file: !244, line: 620, baseType: !3720, size: 64, offset: 2112)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3722)
!3722 = !{!3723, !3724, !3725, !3726}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3721, file: !244, line: 537, baseType: !487)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3721, file: !244, line: 538, baseType: !7, size: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3721, file: !244, line: 540, baseType: !457, size: 128, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3721, file: !244, line: 543, baseType: !3727, size: 64, offset: 192)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3632, file: !244, line: 621, baseType: !3730, size: 64, offset: 2176)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{null, !470, !1593}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3632, file: !244, line: 622, baseType: !3734, size: 64, offset: 2240)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !471, file: !237, line: 486, baseType: !3737, size: 64, offset: 4096)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3739)
!3739 = !{!3740, !3741, !3742, !3746, !3747, !3748}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3738, file: !244, line: 643, baseType: !3502, size: 1472)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3738, file: !244, line: 644, baseType: !3505, size: 64, offset: 1472)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3738, file: !244, line: 645, baseType: !3743, size: 64, offset: 1536)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{null, !470, !734}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3738, file: !244, line: 646, baseType: !3505, size: 64, offset: 1600)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3738, file: !244, line: 647, baseType: !3496, size: 64, offset: 1664)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3738, file: !244, line: 648, baseType: !3496, size: 64, offset: 1728)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !471, file: !237, line: 493, baseType: !3750, size: 64, offset: 4160)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3752)
!3752 = !{!3753, !3754, !3755, !3928, !3929, !3930, !3931, !3932, !3933, !3936, !3937, !3938, !3939, !3940, !3941, !3942}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3751, file: !258, line: 163, baseType: !457, size: 128)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3751, file: !258, line: 164, baseType: !313, size: 64, offset: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3751, file: !258, line: 165, baseType: !3756, size: 64, offset: 192)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3758)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3759)
!3759 = !{!3760, !3878, !3889, !3894, !3898, !3905, !3909, !3913, !3920, !3924}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3758, file: !258, line: 106, baseType: !3761, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!330, !3750, !3764, !257}
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3766, line: 51, size: 1344, elements: !3767)
!3766 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3767 = !{!3768, !3769, !3771, !3772, !3862, !3871, !3872, !3873, !3874, !3875, !3876, !3877}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3765, file: !3766, line: 52, baseType: !313, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3765, file: !3766, line: 53, baseType: !3770, size: 32, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3766, line: 28, baseType: !416)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3765, file: !3766, line: 54, baseType: !313, size: 64, offset: 128)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3765, file: !3766, line: 55, baseType: !3773, size: 192, offset: 192)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3774, line: 17, size: 192, elements: !3775)
!3774 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3775 = !{!3776, !3778, !3861}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3773, file: !3774, line: 18, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3773, file: !3774, line: 19, baseType: !3779, size: 64, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3781)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3774, line: 110, size: 1152, elements: !3782)
!3782 = !{!3783, !3787, !3791, !3797, !3803, !3807, !3811, !3816, !3820, !3821, !3825, !3829, !3833, !3844, !3845, !3846, !3847, !3857}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3781, file: !3774, line: 111, baseType: !3784, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!3777, !3777}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3781, file: !3774, line: 112, baseType: !3788, size: 64, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{null, !3777}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3781, file: !3774, line: 113, baseType: !3792, size: 64, offset: 128)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!734, !3795}
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3773)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3781, file: !3774, line: 114, baseType: !3798, size: 64, offset: 192)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!2281, !3795, !3801}
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3781, file: !3774, line: 116, baseType: !3804, size: 64, offset: 256)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!734, !3795, !313}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3781, file: !3774, line: 118, baseType: !3808, size: 64, offset: 320)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!330, !3795, !313, !7, !299, !573}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3781, file: !3774, line: 123, baseType: !3812, size: 64, offset: 384)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!330, !3795, !313, !3815, !573}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3781, file: !3774, line: 126, baseType: !3817, size: 64, offset: 448)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!313, !3795}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3781, file: !3774, line: 127, baseType: !3817, size: 64, offset: 512)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3781, file: !3774, line: 128, baseType: !3822, size: 64, offset: 576)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!3777, !3795}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3781, file: !3774, line: 130, baseType: !3826, size: 64, offset: 640)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!3777, !3795, !3777}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3781, file: !3774, line: 133, baseType: !3830, size: 64, offset: 704)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!3777, !3795, !313}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3781, file: !3774, line: 135, baseType: !3834, size: 64, offset: 768)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!330, !3795, !313, !313, !7, !7, !3837}
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3774, line: 43, size: 640, elements: !3839)
!3839 = !{!3840, !3841, !3842}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3838, file: !3774, line: 44, baseType: !3777, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3838, file: !3774, line: 45, baseType: !7, size: 32, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3838, file: !3774, line: 46, baseType: !3843, size: 512, offset: 128)
!3843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 512, elements: !427)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3781, file: !3774, line: 140, baseType: !3826, size: 64, offset: 832)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3781, file: !3774, line: 143, baseType: !3822, size: 64, offset: 896)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3781, file: !3774, line: 145, baseType: !3784, size: 64, offset: 960)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3781, file: !3774, line: 146, baseType: !3848, size: 64, offset: 1024)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!330, !3795, !3851}
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3774, line: 29, size: 128, elements: !3853)
!3853 = !{!3854, !3855, !3856}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3852, file: !3774, line: 30, baseType: !7, size: 32)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3852, file: !3774, line: 31, baseType: !7, size: 32, offset: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3852, file: !3774, line: 32, baseType: !3795, size: 64, offset: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3781, file: !3774, line: 148, baseType: !3858, size: 64, offset: 1088)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!330, !3795, !470}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3773, file: !3774, line: 20, baseType: !470, size: 64, offset: 128)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3765, file: !3766, line: 57, baseType: !3863, size: 64, offset: 384)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3766, line: 31, size: 704, elements: !3865)
!3865 = !{!3866, !3867, !3868, !3869, !3870}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3864, file: !3766, line: 32, baseType: !336, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3864, file: !3766, line: 33, baseType: !330, size: 32, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3864, file: !3766, line: 34, baseType: !299, size: 64, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3864, file: !3766, line: 35, baseType: !3863, size: 64, offset: 192)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3864, file: !3766, line: 43, baseType: !595, size: 448, offset: 256)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3765, file: !3766, line: 58, baseType: !3863, size: 64, offset: 448)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3765, file: !3766, line: 59, baseType: !3764, size: 64, offset: 512)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3765, file: !3766, line: 60, baseType: !3764, size: 64, offset: 576)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3765, file: !3766, line: 61, baseType: !3764, size: 64, offset: 640)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3765, file: !3766, line: 63, baseType: !474, size: 512, offset: 704)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3765, file: !3766, line: 65, baseType: !576, size: 64, offset: 1216)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3765, file: !3766, line: 66, baseType: !299, size: 64, offset: 1280)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3758, file: !258, line: 108, baseType: !3879, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!330, !3750, !3882, !257}
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !3884)
!3884 = !{!3885, !3886, !3887}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3883, file: !258, line: 64, baseType: !3777, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3883, file: !258, line: 65, baseType: !330, size: 32, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3883, file: !258, line: 66, baseType: !3888, size: 512, offset: 96)
!3888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 512, elements: !1887)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3758, file: !258, line: 110, baseType: !3890, size: 64, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!330, !3750, !7, !3893}
!3893 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !298, line: 164, baseType: !576)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3758, file: !258, line: 111, baseType: !3895, size: 64, offset: 192)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{null, !3750, !7}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3758, file: !258, line: 112, baseType: !3899, size: 64, offset: 256)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!330, !3750, !3764, !3902, !7, !3904, !370}
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3758, file: !258, line: 117, baseType: !3906, size: 64, offset: 320)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!330, !3750, !7, !7, !299}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3758, file: !258, line: 119, baseType: !3910, size: 64, offset: 384)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{null, !3750, !7, !7}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3758, file: !258, line: 121, baseType: !3914, size: 64, offset: 448)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!330, !3750, !3917, !734}
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3919, line: 11, flags: DIFlagFwdDecl)
!3919 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3758, file: !258, line: 122, baseType: !3921, size: 64, offset: 512)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{null, !3750, !3917}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3758, file: !258, line: 123, baseType: !3925, size: 64, offset: 576)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!330, !3750, !3882, !3904, !370}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3751, file: !258, line: 166, baseType: !299, size: 64, offset: 256)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3751, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3751, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3751, file: !258, line: 171, baseType: !3777, size: 64, offset: 384)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3751, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3751, file: !258, line: 173, baseType: !3934, size: 64, offset: 512)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3751, file: !258, line: 175, baseType: !3750, size: 64, offset: 576)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3751, file: !258, line: 182, baseType: !3893, size: 64, offset: 640)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3751, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3751, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3751, file: !258, line: 185, baseType: !983, size: 128, offset: 768)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3751, file: !258, line: 186, baseType: !1331, size: 192, offset: 896)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3751, file: !258, line: 187, baseType: !3943, offset: 1088)
!3943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2483)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !471, file: !237, line: 499, baseType: !457, size: 128, offset: 4224)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !471, file: !237, line: 502, baseType: !3946, size: 64, offset: 4352)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3948)
!3948 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !471, file: !237, line: 504, baseType: !3950, size: 64, offset: 4416)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !471, file: !237, line: 505, baseType: !669, size: 64, offset: 4480)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !471, file: !237, line: 510, baseType: !669, size: 64, offset: 4544)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !471, file: !237, line: 511, baseType: !3954, size: 64, offset: 4608)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3956)
!3956 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !471, file: !237, line: 513, baseType: !3958, size: 64, offset: 4672)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !3960)
!3960 = !{!3961, !3962}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3959, file: !237, line: 293, baseType: !7, size: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3959, file: !237, line: 294, baseType: !576, size: 64, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !471, file: !237, line: 515, baseType: !457, size: 128, offset: 4736)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !471, file: !237, line: 526, baseType: !3965, offset: 4864)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3966, line: 5, elements: !501)
!3966 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !471, file: !237, line: 528, baseType: !3764, size: 64, offset: 4864)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !471, file: !237, line: 529, baseType: !3777, size: 64, offset: 4928)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !471, file: !237, line: 534, baseType: !757, size: 32, offset: 4992)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !471, file: !237, line: 535, baseType: !416, size: 32, offset: 5024)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !471, file: !237, line: 537, baseType: !487, offset: 5056)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !471, file: !237, line: 538, baseType: !457, size: 128, offset: 5056)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !471, file: !237, line: 540, baseType: !3974, size: 64, offset: 5184)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3976, line: 54, size: 960, elements: !3977)
!3976 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3977 = !{!3978, !3979, !3980, !3981, !3982, !3983, !3984, !3988, !3992, !3993, !3994, !3995, !3999, !4003, !4004}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3975, file: !3976, line: 55, baseType: !313, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3975, file: !3976, line: 56, baseType: !317, size: 64, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3975, file: !3976, line: 58, baseType: !580, size: 64, offset: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3975, file: !3976, line: 59, baseType: !580, size: 64, offset: 192)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3975, file: !3976, line: 60, baseType: !480, size: 64, offset: 256)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3975, file: !3976, line: 62, baseType: !3487, size: 64, offset: 320)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3975, file: !3976, line: 63, baseType: !3985, size: 64, offset: 384)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!336, !470, !3494}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3975, file: !3976, line: 65, baseType: !3989, size: 64, offset: 448)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{null, !3974}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3975, file: !3976, line: 66, baseType: !3496, size: 64, offset: 512)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3975, file: !3976, line: 68, baseType: !3505, size: 64, offset: 576)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3975, file: !3976, line: 70, baseType: !3295, size: 64, offset: 640)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3975, file: !3976, line: 71, baseType: !3996, size: 64, offset: 704)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!2281, !470}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3975, file: !3976, line: 73, baseType: !4000, size: 64, offset: 768)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{null, !470, !3327, !3328}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3975, file: !3976, line: 75, baseType: !3500, size: 64, offset: 832)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3975, file: !3976, line: 77, baseType: !3614, size: 64, offset: 896)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !471, file: !237, line: 541, baseType: !580, size: 64, offset: 5248)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !471, file: !237, line: 543, baseType: !3496, size: 64, offset: 5312)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !471, file: !237, line: 544, baseType: !4008, size: 64, offset: 5376)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !471, file: !237, line: 545, baseType: !4011, size: 64, offset: 5440)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !471, file: !237, line: 547, baseType: !734, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !471, file: !237, line: 548, baseType: !734, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !471, file: !237, line: 549, baseType: !734, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !471, file: !237, line: 550, baseType: !734, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !453, file: !272, line: 111, baseType: !317, size: 64, offset: 576)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !453, file: !272, line: 113, baseType: !330, size: 32, offset: 640)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !453, file: !272, line: 114, baseType: !4020, size: 64, offset: 704)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4022)
!4022 = !{!4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4037}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4021, file: !272, line: 158, baseType: !457, size: 128)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4021, file: !272, line: 159, baseType: !2953, size: 64, offset: 128)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4021, file: !272, line: 160, baseType: !452, size: 64, offset: 192)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4021, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4021, file: !272, line: 162, baseType: !330, size: 32, offset: 288)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4021, file: !272, line: 163, baseType: !416, size: 32, offset: 320)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4021, file: !272, line: 167, baseType: !330, size: 32, offset: 352)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4021, file: !272, line: 168, baseType: !330, size: 32, offset: 384)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4021, file: !272, line: 169, baseType: !330, size: 32, offset: 416)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4021, file: !272, line: 171, baseType: !1635, size: 128, offset: 448)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4021, file: !272, line: 173, baseType: !4034, size: 64, offset: 576)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!330, !604, !7, !299}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4021, file: !272, line: 187, baseType: !299, size: 64, offset: 640)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !453, file: !272, line: 115, baseType: !1331, size: 192, offset: 768)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !434, file: !51, line: 690, baseType: !299, size: 64, offset: 6144)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !434, file: !51, line: 691, baseType: !299, size: 64, offset: 6208)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !434, file: !51, line: 692, baseType: !299, size: 64, offset: 6272)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !434, file: !51, line: 693, baseType: !299, size: 64, offset: 6336)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !434, file: !51, line: 694, baseType: !299, size: 64, offset: 6400)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !434, file: !51, line: 695, baseType: !4045, size: 3648, offset: 6464)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !4046)
!4046 = !{!4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4110, !4111, !4112, !4113, !4114, !4115, !4116}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4045, file: !51, line: 587, baseType: !416, size: 32)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4045, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4045, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4045, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4045, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4045, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4045, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4045, file: !51, line: 595, baseType: !416, size: 32, offset: 224)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4045, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4045, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4045, file: !51, line: 598, baseType: !416, size: 32, offset: 320)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4045, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4045, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4045, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4045, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4045, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4045, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4045, file: !51, line: 610, baseType: !348, size: 8, offset: 544)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4045, file: !51, line: 611, baseType: !348, size: 8, offset: 552)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4045, file: !51, line: 612, baseType: !348, size: 8, offset: 560)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4045, file: !51, line: 613, baseType: !416, size: 32, offset: 576)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4045, file: !51, line: 614, baseType: !416, size: 32, offset: 608)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4045, file: !51, line: 615, baseType: !348, size: 8, offset: 640)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4045, file: !51, line: 621, baseType: !4071, size: 384, offset: 672)
!4071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4072, size: 384, elements: !528)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4045, file: !51, line: 616, size: 128, elements: !4073)
!4073 = !{!4074, !4075, !4076, !4077}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4072, file: !51, line: 617, baseType: !348, size: 8)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4072, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4072, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4072, file: !51, line: 620, baseType: !348, size: 8, offset: 96)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4045, file: !51, line: 624, baseType: !416, size: 32, offset: 1056)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4045, file: !51, line: 627, baseType: !416, size: 32, offset: 1088)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4045, file: !51, line: 630, baseType: !348, size: 8, offset: 1120)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4045, file: !51, line: 631, baseType: !348, size: 8, offset: 1128)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4045, file: !51, line: 632, baseType: !348, size: 8, offset: 1136)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4045, file: !51, line: 633, baseType: !348, size: 8, offset: 1144)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4045, file: !51, line: 634, baseType: !348, size: 8, offset: 1152)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4045, file: !51, line: 635, baseType: !348, size: 8, offset: 1160)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4045, file: !51, line: 637, baseType: !348, size: 8, offset: 1168)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4045, file: !51, line: 638, baseType: !348, size: 8, offset: 1176)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4045, file: !51, line: 639, baseType: !348, size: 8, offset: 1184)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4045, file: !51, line: 640, baseType: !348, size: 8, offset: 1192)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4045, file: !51, line: 641, baseType: !348, size: 8, offset: 1200)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4045, file: !51, line: 642, baseType: !348, size: 8, offset: 1208)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4045, file: !51, line: 643, baseType: !348, size: 8, offset: 1216)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4045, file: !51, line: 644, baseType: !348, size: 8, offset: 1224)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4045, file: !51, line: 645, baseType: !348, size: 8, offset: 1232)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4045, file: !51, line: 647, baseType: !416, size: 32, offset: 1248)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4045, file: !51, line: 650, baseType: !4097, size: 296, offset: 1280)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !4098)
!4098 = !{!4099, !4100}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4097, file: !6, line: 826, baseType: !349, size: 8)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4097, file: !6, line: 827, baseType: !4101, size: 288, offset: 8)
!4101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4102, size: 288, elements: !1313)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !4103)
!4103 = !{!4104, !4105}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4102, file: !6, line: 804, baseType: !349, size: 8)
!4105 = !DIDerivedType(tag: DW_TAG_member, scope: !4102, file: !6, line: 805, baseType: !4106, size: 64, offset: 8)
!4106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4102, file: !6, line: 805, size: 64, elements: !4107)
!4107 = !{!4108, !4109}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4106, file: !6, line: 806, baseType: !670, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4106, file: !6, line: 807, baseType: !784, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4045, file: !51, line: 651, baseType: !4097, size: 296, offset: 1576)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4045, file: !51, line: 652, baseType: !4097, size: 296, offset: 1872)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4045, file: !51, line: 653, baseType: !4097, size: 296, offset: 2168)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4045, file: !51, line: 654, baseType: !4097, size: 296, offset: 2464)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4045, file: !51, line: 655, baseType: !4097, size: 296, offset: 2760)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4045, file: !51, line: 656, baseType: !4097, size: 296, offset: 3056)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4045, file: !51, line: 657, baseType: !4097, size: 296, offset: 3352)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !434, file: !51, line: 698, baseType: !4118, size: 64, offset: 10112)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!330, !299, !330, !330, !330}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !434, file: !51, line: 699, baseType: !330, size: 32, offset: 10176)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !434, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !406, file: !51, line: 441, baseType: !430, size: 64, offset: 1408)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !406, file: !51, line: 442, baseType: !430, size: 64, offset: 1472)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !406, file: !51, line: 444, baseType: !4126, size: 64, offset: 1536)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!330, !433}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !406, file: !51, line: 445, baseType: !4126, size: 64, offset: 1600)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !406, file: !51, line: 447, baseType: !4131, size: 64, offset: 1664)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!330, !433, !4134, !330}
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !406, file: !51, line: 450, baseType: !4137, size: 64, offset: 1728)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!330, !433, !734, !7, !370, !4140}
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !406, file: !51, line: 457, baseType: !4142, size: 64, offset: 1792)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!50, !433}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !406, file: !51, line: 460, baseType: !4126, size: 64, offset: 1856)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !406, file: !51, line: 461, baseType: !4147, size: 64, offset: 1920)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!330, !433, !4150}
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !4152)
!4152 = !{!4153, !4154, !4155}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4151, file: !51, line: 70, baseType: !330, size: 32)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4151, file: !51, line: 71, baseType: !330, size: 32, offset: 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4151, file: !51, line: 72, baseType: !330, size: 32, offset: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !406, file: !51, line: 463, baseType: !4157, size: 64, offset: 1984)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!330, !433, !4160}
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !406, file: !51, line: 466, baseType: !4162, size: 64, offset: 2048)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!330, !433, !4140}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !406, file: !51, line: 467, baseType: !4166, size: 64, offset: 2112)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!330, !433, !1564}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !406, file: !51, line: 468, baseType: !4170, size: 64, offset: 2176)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!330, !433, !4173}
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !406, file: !51, line: 469, baseType: !4170, size: 64, offset: 2240)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !406, file: !51, line: 470, baseType: !4166, size: 64, offset: 2304)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !406, file: !51, line: 472, baseType: !4126, size: 64, offset: 2368)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !406, file: !51, line: 473, baseType: !4178, size: 64, offset: 2432)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!330, !433, !4181}
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !4183)
!4183 = !{!4184, !4186}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4182, file: !6, line: 174, baseType: !4185, size: 48)
!4185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 48, elements: !466)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4182, file: !6, line: 175, baseType: !349, size: 8, offset: 48)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !406, file: !51, line: 474, baseType: !4188, size: 64, offset: 2496)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!330, !433, !4191}
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !4193)
!4193 = !{!4194, !4196, !4197}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4192, file: !6, line: 196, baseType: !4195, size: 32)
!4195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 32, elements: !1313)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4192, file: !6, line: 197, baseType: !349, size: 8, offset: 32)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4192, file: !6, line: 198, baseType: !330, size: 32, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !406, file: !51, line: 475, baseType: !4199, size: 64, offset: 2560)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!330, !433, !171}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !406, file: !51, line: 477, baseType: !4203, size: 64, offset: 2624)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!330, !433, !78}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !406, file: !51, line: 478, baseType: !4207, size: 64, offset: 2688)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!330, !433, !73}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !406, file: !51, line: 480, baseType: !4211, size: 64, offset: 2752)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!330, !433, !562}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !406, file: !51, line: 481, baseType: !4215, size: 64, offset: 2816)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!330, !433, !576}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !406, file: !51, line: 482, baseType: !4219, size: 64, offset: 2880)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!330, !433, !330}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !406, file: !51, line: 483, baseType: !4219, size: 64, offset: 2944)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !406, file: !51, line: 484, baseType: !4126, size: 64, offset: 3008)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !406, file: !51, line: 490, baseType: !4225, size: 64, offset: 3072)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!175, !433}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !406, file: !51, line: 492, baseType: !4229, size: 2304, offset: 3136)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !4230)
!4230 = !{!4231, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4258, !4262, !4263, !4264, !4265, !4266, !4267, !4272, !4277, !4281}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4229, file: !51, line: 228, baseType: !4232, size: 1216)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !4233)
!4233 = !{!4234, !4235, !4236, !4237, !4238, !4239, !4240}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4232, file: !51, line: 89, baseType: !412, size: 1024)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4232, file: !51, line: 91, baseType: !416, size: 32, offset: 1024)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4232, file: !51, line: 92, baseType: !416, size: 32, offset: 1056)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4232, file: !51, line: 93, baseType: !416, size: 32, offset: 1088)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4232, file: !51, line: 95, baseType: !416, size: 32, offset: 1120)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4232, file: !51, line: 96, baseType: !416, size: 32, offset: 1152)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4232, file: !51, line: 97, baseType: !416, size: 32, offset: 1184)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4229, file: !51, line: 230, baseType: !430, size: 64, offset: 1216)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4229, file: !51, line: 231, baseType: !4126, size: 64, offset: 1280)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4229, file: !51, line: 232, baseType: !4126, size: 64, offset: 1344)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4229, file: !51, line: 233, baseType: !4126, size: 64, offset: 1408)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4229, file: !51, line: 234, baseType: !4126, size: 64, offset: 1472)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4229, file: !51, line: 237, baseType: !4126, size: 64, offset: 1536)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4229, file: !51, line: 238, baseType: !4248, size: 64, offset: 1600)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!330, !433, !4251}
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !4253)
!4253 = !{!4254, !4255, !4256, !4257}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4252, file: !51, line: 115, baseType: !7, size: 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4252, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4252, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4252, file: !51, line: 118, baseType: !669, size: 64, offset: 128)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4229, file: !51, line: 240, baseType: !4259, size: 64, offset: 1664)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!330, !433, !299}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4229, file: !51, line: 242, baseType: !4166, size: 64, offset: 1728)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4229, file: !51, line: 243, baseType: !4166, size: 64, offset: 1792)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4229, file: !51, line: 244, baseType: !4166, size: 64, offset: 1856)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4229, file: !51, line: 248, baseType: !4166, size: 64, offset: 1920)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4229, file: !51, line: 249, baseType: !4170, size: 64, offset: 1984)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4229, file: !51, line: 250, baseType: !4268, size: 64, offset: 2048)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!330, !433, !4271}
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4229, file: !51, line: 258, baseType: !4273, size: 64, offset: 2112)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!330, !433, !4276, !330}
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4229, file: !51, line: 267, baseType: !4278, size: 64, offset: 2176)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!330, !433, !416}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4229, file: !51, line: 268, baseType: !4278, size: 64, offset: 2240)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !406, file: !51, line: 493, baseType: !4283, size: 576, offset: 5440)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !4284)
!4284 = !{!4285, !4289, !4293, !4294, !4295, !4296, !4297, !4298, !4299}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4283, file: !51, line: 304, baseType: !4286, size: 64)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !4287)
!4287 = !{!4288}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4286, file: !51, line: 277, baseType: !336, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4283, file: !51, line: 306, baseType: !4290, size: 64, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{null, !433, !4251}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4283, file: !51, line: 308, baseType: !4170, size: 64, offset: 128)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4283, file: !51, line: 309, baseType: !4268, size: 64, offset: 192)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4283, file: !51, line: 310, baseType: !430, size: 64, offset: 256)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4283, file: !51, line: 311, baseType: !430, size: 64, offset: 320)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4283, file: !51, line: 312, baseType: !430, size: 64, offset: 384)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4283, file: !51, line: 313, baseType: !4219, size: 64, offset: 448)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4283, file: !51, line: 316, baseType: !4259, size: 64, offset: 512)
!4300 = !DIGlobalVariableExpression(var: !4301, expr: !DIExpression())
!4301 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 1228, type: !4302, isLocal: true, isDefinition: true)
!4302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 112, elements: !4303)
!4303 = !{!4304}
!4304 = !DISubrange(count: 14)
!4305 = !{i32 7, !"Dwarf Version", i32 4}
!4306 = !{i32 2, !"Debug Info Version", i32 3}
!4307 = !{i32 1, !"wchar_size", i32 2}
!4308 = !{i32 1, !"Code Model", i32 2}
!4309 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4310 = distinct !DISubprogram(name: "nxt200x_attach", scope: !3, file: !3, line: 1140, type: !4311, scopeLine: 1142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!433, !4313, !4319}
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4315)
!4315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nxt200x_config", file: !284, line: 22, size: 128, elements: !4316)
!4316 = !{!4317, !4318}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4315, file: !284, line: 25, baseType: !348, size: 8)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "set_ts_params", scope: !4315, file: !284, line: 28, baseType: !4219, size: 64, offset: 64)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4321, line: 695, size: 7552, elements: !4322)
!4321 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4322 = !{!4323, !4324, !4325, !4362, !4363, !4377, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4394, !4395, !4396, !4397, !4429, !4440}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4320, file: !4321, line: 696, baseType: !317, size: 64)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4320, file: !4321, line: 697, baseType: !7, size: 32, offset: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4320, file: !4321, line: 698, baseType: !4326, size: 64, offset: 128)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4328)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4321, line: 519, size: 320, elements: !4329)
!4329 = !{!4330, !4343, !4344, !4357, !4358}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4328, file: !4321, line: 529, baseType: !4331, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!330, !4319, !4334, !330}
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4336, line: 69, size: 128, elements: !4337)
!4336 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4337 = !{!4338, !4339, !4340, !4341}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4335, file: !4336, line: 70, baseType: !302, size: 16)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4335, file: !4336, line: 71, baseType: !302, size: 16, offset: 16)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4335, file: !4336, line: 84, baseType: !302, size: 16, offset: 32)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4335, file: !4336, line: 85, baseType: !4342, size: 64, offset: 64)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4328, file: !4321, line: 531, baseType: !4331, size: 64, offset: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4328, file: !4321, line: 533, baseType: !4345, size: 64, offset: 128)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!330, !4319, !300, !304, !315, !348, !330, !4348}
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4336, line: 135, size: 272, elements: !4350)
!4350 = !{!4351, !4352, !4353}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4349, file: !4336, line: 136, baseType: !349, size: 8)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4349, file: !4336, line: 137, baseType: !302, size: 16)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4349, file: !4336, line: 138, baseType: !4354, size: 272)
!4354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 272, elements: !4355)
!4355 = !{!4356}
!4356 = !DISubrange(count: 34)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4328, file: !4321, line: 536, baseType: !4345, size: 64, offset: 192)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4328, file: !4321, line: 541, baseType: !4359, size: 64, offset: 256)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!416, !4319}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4320, file: !4321, line: 699, baseType: !299, size: 64, offset: 192)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4320, file: !4321, line: 702, baseType: !4364, size: 64, offset: 256)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4366)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4321, line: 557, size: 192, elements: !4367)
!4367 = !{!4368, !4372, !4376}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4366, file: !4321, line: 558, baseType: !4369, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{null, !4319, !7}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4366, file: !4321, line: 559, baseType: !4373, size: 64, offset: 64)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!330, !4319, !7}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4366, file: !4321, line: 560, baseType: !4369, size: 64, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4320, file: !4321, line: 703, baseType: !4378, size: 192, offset: 320)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4379, line: 30, size: 192, elements: !4380)
!4379 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4380 = !{!4381, !4382, !4383}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4378, file: !4379, line: 31, baseType: !1020)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4378, file: !4379, line: 32, baseType: !992, size: 128)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4378, file: !4379, line: 33, baseType: !1374, size: 64, offset: 128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4320, file: !4321, line: 704, baseType: !4378, size: 192, offset: 512)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4320, file: !4321, line: 706, baseType: !330, size: 32, offset: 704)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4320, file: !4321, line: 707, baseType: !330, size: 32, offset: 736)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4320, file: !4321, line: 708, baseType: !471, size: 5568, offset: 768)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4320, file: !4321, line: 709, baseType: !576, size: 64, offset: 6336)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4320, file: !4321, line: 713, baseType: !330, size: 32, offset: 6400)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4320, file: !4321, line: 714, baseType: !4391, size: 384, offset: 6432)
!4391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 384, elements: !4392)
!4392 = !{!4393}
!4393 = !DISubrange(count: 48)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4320, file: !4321, line: 715, baseType: !1656, size: 192, offset: 6848)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4320, file: !4321, line: 717, baseType: !1331, size: 192, offset: 7040)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4320, file: !4321, line: 718, baseType: !457, size: 128, offset: 7232)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4320, file: !4321, line: 720, baseType: !4398, size: 64, offset: 7360)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4321, line: 618, size: 832, elements: !4400)
!4400 = !{!4401, !4405, !4406, !4410, !4411, !4412, !4413, !4417, !4418, !4421, !4422, !4425, !4428}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4399, file: !4321, line: 619, baseType: !4402, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!330, !4319}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4399, file: !4321, line: 621, baseType: !4402, size: 64, offset: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4399, file: !4321, line: 622, baseType: !4407, size: 64, offset: 128)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{null, !4319, !330}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4399, file: !4321, line: 623, baseType: !4402, size: 64, offset: 192)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4399, file: !4321, line: 624, baseType: !4407, size: 64, offset: 256)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4399, file: !4321, line: 625, baseType: !4402, size: 64, offset: 320)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4399, file: !4321, line: 627, baseType: !4414, size: 64, offset: 384)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{null, !4319}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4399, file: !4321, line: 628, baseType: !4414, size: 64, offset: 448)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4399, file: !4321, line: 631, baseType: !4419, size: 64, offset: 512)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4321, line: 631, flags: DIFlagFwdDecl)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4399, file: !4321, line: 632, baseType: !4419, size: 64, offset: 576)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4399, file: !4321, line: 633, baseType: !4423, size: 64, offset: 640)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4321, line: 633, flags: DIFlagFwdDecl)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4399, file: !4321, line: 634, baseType: !4426, size: 64, offset: 704)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4321, line: 634, flags: DIFlagFwdDecl)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4399, file: !4321, line: 635, baseType: !4426, size: 64, offset: 768)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4320, file: !4321, line: 721, baseType: !4430, size: 64, offset: 7424)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4432)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4321, line: 664, size: 192, elements: !4433)
!4433 = !{!4434, !4435, !4436, !4437, !4438, !4439}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4432, file: !4321, line: 665, baseType: !669, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4432, file: !4321, line: 666, baseType: !330, size: 32, offset: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4432, file: !4321, line: 667, baseType: !300, size: 16, offset: 96)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4432, file: !4321, line: 668, baseType: !300, size: 16, offset: 112)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4432, file: !4321, line: 669, baseType: !300, size: 16, offset: 128)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4432, file: !4321, line: 670, baseType: !300, size: 16, offset: 144)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4320, file: !4321, line: 723, baseType: !3750, size: 64, offset: 7488)
!4441 = !DILocalVariable(name: "config", arg: 1, scope: !4310, file: !3, line: 1140, type: !4313)
!4442 = !DILocation(line: 1140, column: 66, scope: !4310)
!4443 = !DILocalVariable(name: "i2c", arg: 2, scope: !4310, file: !3, line: 1141, type: !4319)
!4444 = !DILocation(line: 1141, column: 28, scope: !4310)
!4445 = !DILocalVariable(name: "state", scope: !4310, file: !3, line: 1143, type: !4446)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nxt200x_state", file: !3, line: 44, size: 10432, elements: !4448)
!4448 = !{!4449, !4450, !4451, !4452, !4454}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4447, file: !3, line: 46, baseType: !4319, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4447, file: !3, line: 47, baseType: !4313, size: 64, offset: 64)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4447, file: !3, line: 48, baseType: !434, size: 10240, offset: 128)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "demod_chip", scope: !4447, file: !3, line: 51, baseType: !4453, size: 32, offset: 10368)
!4453 = !DIDerivedType(tag: DW_TAG_typedef, name: "nxt_chip_type", file: !284, line: 20, baseType: !283)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "initialised", scope: !4447, file: !3, line: 52, baseType: !348, size: 1, offset: 10400, flags: DIFlagBitField, extraData: i64 10400)
!4455 = !DILocation(line: 1143, column: 24, scope: !4310)
!4456 = !DILocalVariable(name: "buf", scope: !4310, file: !3, line: 1144, type: !4457)
!4457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 40, elements: !4458)
!4458 = !{!4459}
!4459 = !DISubrange(count: 5)
!4460 = !DILocation(line: 1144, column: 5, scope: !4310)
!4461 = !DILocation(line: 1147, column: 10, scope: !4310)
!4462 = !DILocation(line: 1147, column: 8, scope: !4310)
!4463 = !DILocation(line: 1148, column: 6, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 1148, column: 6)
!4465 = !DILocation(line: 1148, column: 12, scope: !4464)
!4466 = !DILocation(line: 1148, column: 6, scope: !4310)
!4467 = !DILocation(line: 1149, column: 3, scope: !4464)
!4468 = !DILocation(line: 1152, column: 18, scope: !4310)
!4469 = !DILocation(line: 1152, column: 2, scope: !4310)
!4470 = !DILocation(line: 1152, column: 9, scope: !4310)
!4471 = !DILocation(line: 1152, column: 16, scope: !4310)
!4472 = !DILocation(line: 1153, column: 15, scope: !4310)
!4473 = !DILocation(line: 1153, column: 2, scope: !4310)
!4474 = !DILocation(line: 1153, column: 9, scope: !4310)
!4475 = !DILocation(line: 1153, column: 13, scope: !4310)
!4476 = !DILocation(line: 1154, column: 2, scope: !4310)
!4477 = !DILocation(line: 1154, column: 9, scope: !4310)
!4478 = !DILocation(line: 1154, column: 21, scope: !4310)
!4479 = !DILocation(line: 1157, column: 20, scope: !4310)
!4480 = !DILocation(line: 1157, column: 33, scope: !4310)
!4481 = !DILocation(line: 1157, column: 2, scope: !4310)
!4482 = !DILocation(line: 1158, column: 2, scope: !4310)
!4483 = !DILocation(line: 1158, column: 2, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 1158, column: 2)
!4485 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 1158, column: 2)
!4486 = !DILocation(line: 1158, column: 2, scope: !4485)
!4487 = !DILocation(line: 1158, column: 2, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 1158, column: 2)
!4489 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 1158, column: 2)
!4490 = !DILocation(line: 1158, column: 2, scope: !4489)
!4491 = !DILocation(line: 1161, column: 10, scope: !4310)
!4492 = !DILocation(line: 1161, column: 2, scope: !4310)
!4493 = !DILocation(line: 1163, column: 4, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 1161, column: 18)
!4495 = !DILocation(line: 1163, column: 11, scope: !4494)
!4496 = !DILocation(line: 1163, column: 22, scope: !4494)
!4497 = !DILocation(line: 1164, column: 4, scope: !4494)
!4498 = !DILocation(line: 1165, column: 4, scope: !4494)
!4499 = !DILocation(line: 1167, column: 4, scope: !4494)
!4500 = !DILocation(line: 1167, column: 11, scope: !4494)
!4501 = !DILocation(line: 1167, column: 22, scope: !4494)
!4502 = !DILocation(line: 1168, column: 4, scope: !4494)
!4503 = !DILocation(line: 1169, column: 4, scope: !4494)
!4504 = !DILocation(line: 1171, column: 4, scope: !4494)
!4505 = !DILocation(line: 1175, column: 10, scope: !4310)
!4506 = !DILocation(line: 1175, column: 17, scope: !4310)
!4507 = !DILocation(line: 1175, column: 2, scope: !4310)
!4508 = !DILocation(line: 1177, column: 8, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 1177, column: 8)
!4510 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 1175, column: 29)
!4511 = !DILocation(line: 1177, column: 15, scope: !4509)
!4512 = !DILocation(line: 1177, column: 8, scope: !4510)
!4513 = !DILocation(line: 1177, column: 24, scope: !4509)
!4514 = !DILocation(line: 1178, column: 8, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 1178, column: 8)
!4516 = !DILocation(line: 1178, column: 15, scope: !4515)
!4517 = !DILocation(line: 1178, column: 8, scope: !4510)
!4518 = !DILocation(line: 1178, column: 24, scope: !4515)
!4519 = !DILocation(line: 1179, column: 8, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 1179, column: 8)
!4521 = !DILocation(line: 1179, column: 15, scope: !4520)
!4522 = !DILocation(line: 1179, column: 8, scope: !4510)
!4523 = !DILocation(line: 1179, column: 24, scope: !4520)
!4524 = !DILocation(line: 1180, column: 8, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 1180, column: 8)
!4526 = !DILocation(line: 1180, column: 15, scope: !4525)
!4527 = !DILocation(line: 1180, column: 8, scope: !4510)
!4528 = !DILocation(line: 1180, column: 24, scope: !4525)
!4529 = !DILocation(line: 1181, column: 8, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 1181, column: 8)
!4531 = !DILocation(line: 1181, column: 15, scope: !4530)
!4532 = !DILocation(line: 1181, column: 8, scope: !4510)
!4533 = !DILocation(line: 1181, column: 24, scope: !4530)
!4534 = !DILocation(line: 1182, column: 4, scope: !4510)
!4535 = !DILocation(line: 1184, column: 8, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 1184, column: 8)
!4537 = !DILocation(line: 1184, column: 15, scope: !4536)
!4538 = !DILocation(line: 1184, column: 8, scope: !4510)
!4539 = !DILocation(line: 1184, column: 24, scope: !4536)
!4540 = !DILocation(line: 1185, column: 4, scope: !4510)
!4541 = !DILocation(line: 1187, column: 4, scope: !4510)
!4542 = !DILocation(line: 1191, column: 10, scope: !4310)
!4543 = !DILocation(line: 1191, column: 17, scope: !4310)
!4544 = !DILocation(line: 1191, column: 26, scope: !4310)
!4545 = !DILocation(line: 1191, column: 2, scope: !4310)
!4546 = !DILocation(line: 1192, column: 37, scope: !4310)
!4547 = !DILocation(line: 1192, column: 2, scope: !4310)
!4548 = !DILocation(line: 1192, column: 9, scope: !4310)
!4549 = !DILocation(line: 1192, column: 18, scope: !4310)
!4550 = !DILocation(line: 1192, column: 35, scope: !4310)
!4551 = !DILocation(line: 1193, column: 10, scope: !4310)
!4552 = !DILocation(line: 1193, column: 17, scope: !4310)
!4553 = !DILocation(line: 1193, column: 2, scope: !4310)
!4554 = !DILabel(scope: !4310, name: "error", file: !3, line: 1195)
!4555 = !DILocation(line: 1195, column: 1, scope: !4310)
!4556 = !DILocation(line: 1196, column: 8, scope: !4310)
!4557 = !DILocation(line: 1196, column: 2, scope: !4310)
!4558 = !DILocation(line: 1197, column: 2, scope: !4310)
!4559 = !DILocation(line: 1198, column: 2, scope: !4310)
!4560 = !DILocation(line: 1199, column: 1, scope: !4310)
!4561 = distinct !DISubprogram(name: "kzalloc", scope: !290, file: !290, line: 662, type: !4562, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!299, !573, !297}
!4564 = !DILocalVariable(name: "s", arg: 1, scope: !4565, file: !290, line: 445, type: !1173)
!4565 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !290, file: !290, line: 445, type: !4566, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!299, !1173, !297, !573}
!4568 = !DILocation(line: 445, column: 72, scope: !4565, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 552, column: 10, scope: !4570, inlinedAt: !4573)
!4570 = distinct !DILexicalBlock(scope: !4571, file: !290, line: 540, column: 34)
!4571 = distinct !DILexicalBlock(scope: !4572, file: !290, line: 540, column: 6)
!4572 = distinct !DISubprogram(name: "kmalloc", scope: !290, file: !290, line: 538, type: !4562, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4573 = distinct !DILocation(line: 664, column: 9, scope: !4561)
!4574 = !DILocalVariable(name: "flags", arg: 2, scope: !4565, file: !290, line: 446, type: !297)
!4575 = !DILocation(line: 446, column: 9, scope: !4565, inlinedAt: !4569)
!4576 = !DILocalVariable(name: "size", arg: 3, scope: !4565, file: !290, line: 446, type: !573)
!4577 = !DILocation(line: 446, column: 23, scope: !4565, inlinedAt: !4569)
!4578 = !DILocalVariable(name: "ret", scope: !4565, file: !290, line: 448, type: !299)
!4579 = !DILocation(line: 448, column: 8, scope: !4565, inlinedAt: !4569)
!4580 = !DILocalVariable(name: "flags", arg: 1, scope: !4581, file: !290, line: 318, type: !297)
!4581 = distinct !DISubprogram(name: "kmalloc_type", scope: !290, file: !290, line: 318, type: !4582, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!289, !297}
!4584 = !DILocation(line: 318, column: 67, scope: !4581, inlinedAt: !4585)
!4585 = distinct !DILocation(line: 553, column: 20, scope: !4570, inlinedAt: !4573)
!4586 = !DILocalVariable(name: "size", arg: 1, scope: !4587, file: !290, line: 346, type: !573)
!4587 = distinct !DISubprogram(name: "kmalloc_index", scope: !290, file: !290, line: 346, type: !4588, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!7, !573}
!4590 = !DILocation(line: 346, column: 58, scope: !4587, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 547, column: 11, scope: !4570, inlinedAt: !4573)
!4592 = !DILocalVariable(name: "size", arg: 1, scope: !4593, file: !290, line: 472, type: !573)
!4593 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !290, file: !290, line: 472, type: !4594, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!299, !573, !297, !7}
!4596 = !DILocation(line: 472, column: 28, scope: !4593, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 481, column: 9, scope: !4598, inlinedAt: !4599)
!4598 = distinct !DISubprogram(name: "kmalloc_large", scope: !290, file: !290, line: 478, type: !4562, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4599 = distinct !DILocation(line: 545, column: 11, scope: !4600, inlinedAt: !4573)
!4600 = distinct !DILexicalBlock(scope: !4570, file: !290, line: 544, column: 7)
!4601 = !DILocalVariable(name: "flags", arg: 2, scope: !4593, file: !290, line: 472, type: !297)
!4602 = !DILocation(line: 472, column: 40, scope: !4593, inlinedAt: !4597)
!4603 = !DILocalVariable(name: "order", arg: 3, scope: !4593, file: !290, line: 472, type: !7)
!4604 = !DILocation(line: 472, column: 60, scope: !4593, inlinedAt: !4597)
!4605 = !DILocalVariable(name: "size", arg: 1, scope: !4598, file: !290, line: 478, type: !573)
!4606 = !DILocation(line: 478, column: 51, scope: !4598, inlinedAt: !4599)
!4607 = !DILocalVariable(name: "flags", arg: 2, scope: !4598, file: !290, line: 478, type: !297)
!4608 = !DILocation(line: 478, column: 63, scope: !4598, inlinedAt: !4599)
!4609 = !DILocalVariable(name: "order", scope: !4598, file: !290, line: 480, type: !7)
!4610 = !DILocation(line: 480, column: 15, scope: !4598, inlinedAt: !4599)
!4611 = !DILocalVariable(name: "size", arg: 1, scope: !4572, file: !290, line: 538, type: !573)
!4612 = !DILocation(line: 538, column: 45, scope: !4572, inlinedAt: !4573)
!4613 = !DILocalVariable(name: "flags", arg: 2, scope: !4572, file: !290, line: 538, type: !297)
!4614 = !DILocation(line: 538, column: 57, scope: !4572, inlinedAt: !4573)
!4615 = !DILocalVariable(name: "index", scope: !4570, file: !290, line: 542, type: !7)
!4616 = !DILocation(line: 542, column: 16, scope: !4570, inlinedAt: !4573)
!4617 = !DILocalVariable(name: "size", arg: 1, scope: !4561, file: !290, line: 662, type: !573)
!4618 = !DILocation(line: 662, column: 36, scope: !4561)
!4619 = !DILocalVariable(name: "flags", arg: 2, scope: !4561, file: !290, line: 662, type: !297)
!4620 = !DILocation(line: 662, column: 48, scope: !4561)
!4621 = !DILocation(line: 664, column: 17, scope: !4561)
!4622 = !DILocation(line: 664, column: 23, scope: !4561)
!4623 = !DILocation(line: 664, column: 29, scope: !4561)
!4624 = !DILocation(line: 540, column: 27, scope: !4571, inlinedAt: !4573)
!4625 = !DILocation(line: 540, column: 6, scope: !4571, inlinedAt: !4573)
!4626 = !DILocation(line: 540, column: 6, scope: !4572, inlinedAt: !4573)
!4627 = !DILocation(line: 544, column: 7, scope: !4600, inlinedAt: !4573)
!4628 = !DILocation(line: 544, column: 12, scope: !4600, inlinedAt: !4573)
!4629 = !DILocation(line: 544, column: 7, scope: !4570, inlinedAt: !4573)
!4630 = !DILocation(line: 545, column: 25, scope: !4600, inlinedAt: !4573)
!4631 = !DILocation(line: 545, column: 31, scope: !4600, inlinedAt: !4573)
!4632 = !DILocation(line: 480, column: 33, scope: !4598, inlinedAt: !4599)
!4633 = !DILocation(line: 480, column: 23, scope: !4598, inlinedAt: !4599)
!4634 = !DILocation(line: 481, column: 29, scope: !4598, inlinedAt: !4599)
!4635 = !DILocation(line: 481, column: 35, scope: !4598, inlinedAt: !4599)
!4636 = !DILocation(line: 481, column: 42, scope: !4598, inlinedAt: !4599)
!4637 = !DILocation(line: 474, column: 23, scope: !4593, inlinedAt: !4597)
!4638 = !DILocation(line: 474, column: 29, scope: !4593, inlinedAt: !4597)
!4639 = !DILocation(line: 474, column: 36, scope: !4593, inlinedAt: !4597)
!4640 = !DILocation(line: 474, column: 9, scope: !4593, inlinedAt: !4597)
!4641 = !DILocation(line: 545, column: 4, scope: !4600, inlinedAt: !4573)
!4642 = !DILocation(line: 547, column: 25, scope: !4570, inlinedAt: !4573)
!4643 = !DILocation(line: 348, column: 7, scope: !4644, inlinedAt: !4591)
!4644 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 348, column: 6)
!4645 = !DILocation(line: 348, column: 6, scope: !4587, inlinedAt: !4591)
!4646 = !DILocation(line: 349, column: 3, scope: !4644, inlinedAt: !4591)
!4647 = !DILocation(line: 351, column: 6, scope: !4648, inlinedAt: !4591)
!4648 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 351, column: 6)
!4649 = !DILocation(line: 351, column: 11, scope: !4648, inlinedAt: !4591)
!4650 = !DILocation(line: 351, column: 6, scope: !4587, inlinedAt: !4591)
!4651 = !DILocation(line: 352, column: 3, scope: !4648, inlinedAt: !4591)
!4652 = !DILocation(line: 354, column: 32, scope: !4653, inlinedAt: !4591)
!4653 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 354, column: 6)
!4654 = !DILocation(line: 354, column: 37, scope: !4653, inlinedAt: !4591)
!4655 = !DILocation(line: 354, column: 42, scope: !4653, inlinedAt: !4591)
!4656 = !DILocation(line: 354, column: 45, scope: !4653, inlinedAt: !4591)
!4657 = !DILocation(line: 354, column: 50, scope: !4653, inlinedAt: !4591)
!4658 = !DILocation(line: 354, column: 6, scope: !4587, inlinedAt: !4591)
!4659 = !DILocation(line: 355, column: 3, scope: !4653, inlinedAt: !4591)
!4660 = !DILocation(line: 356, column: 32, scope: !4661, inlinedAt: !4591)
!4661 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 356, column: 6)
!4662 = !DILocation(line: 356, column: 37, scope: !4661, inlinedAt: !4591)
!4663 = !DILocation(line: 356, column: 43, scope: !4661, inlinedAt: !4591)
!4664 = !DILocation(line: 356, column: 46, scope: !4661, inlinedAt: !4591)
!4665 = !DILocation(line: 356, column: 51, scope: !4661, inlinedAt: !4591)
!4666 = !DILocation(line: 356, column: 6, scope: !4587, inlinedAt: !4591)
!4667 = !DILocation(line: 357, column: 3, scope: !4661, inlinedAt: !4591)
!4668 = !DILocation(line: 358, column: 6, scope: !4669, inlinedAt: !4591)
!4669 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 358, column: 6)
!4670 = !DILocation(line: 358, column: 11, scope: !4669, inlinedAt: !4591)
!4671 = !DILocation(line: 358, column: 6, scope: !4587, inlinedAt: !4591)
!4672 = !DILocation(line: 358, column: 26, scope: !4669, inlinedAt: !4591)
!4673 = !DILocation(line: 359, column: 6, scope: !4674, inlinedAt: !4591)
!4674 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 359, column: 6)
!4675 = !DILocation(line: 359, column: 11, scope: !4674, inlinedAt: !4591)
!4676 = !DILocation(line: 359, column: 6, scope: !4587, inlinedAt: !4591)
!4677 = !DILocation(line: 359, column: 26, scope: !4674, inlinedAt: !4591)
!4678 = !DILocation(line: 360, column: 6, scope: !4679, inlinedAt: !4591)
!4679 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 360, column: 6)
!4680 = !DILocation(line: 360, column: 11, scope: !4679, inlinedAt: !4591)
!4681 = !DILocation(line: 360, column: 6, scope: !4587, inlinedAt: !4591)
!4682 = !DILocation(line: 360, column: 26, scope: !4679, inlinedAt: !4591)
!4683 = !DILocation(line: 361, column: 6, scope: !4684, inlinedAt: !4591)
!4684 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 361, column: 6)
!4685 = !DILocation(line: 361, column: 11, scope: !4684, inlinedAt: !4591)
!4686 = !DILocation(line: 361, column: 6, scope: !4587, inlinedAt: !4591)
!4687 = !DILocation(line: 361, column: 26, scope: !4684, inlinedAt: !4591)
!4688 = !DILocation(line: 362, column: 6, scope: !4689, inlinedAt: !4591)
!4689 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 362, column: 6)
!4690 = !DILocation(line: 362, column: 11, scope: !4689, inlinedAt: !4591)
!4691 = !DILocation(line: 362, column: 6, scope: !4587, inlinedAt: !4591)
!4692 = !DILocation(line: 362, column: 26, scope: !4689, inlinedAt: !4591)
!4693 = !DILocation(line: 363, column: 6, scope: !4694, inlinedAt: !4591)
!4694 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 363, column: 6)
!4695 = !DILocation(line: 363, column: 11, scope: !4694, inlinedAt: !4591)
!4696 = !DILocation(line: 363, column: 6, scope: !4587, inlinedAt: !4591)
!4697 = !DILocation(line: 363, column: 26, scope: !4694, inlinedAt: !4591)
!4698 = !DILocation(line: 364, column: 6, scope: !4699, inlinedAt: !4591)
!4699 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 364, column: 6)
!4700 = !DILocation(line: 364, column: 11, scope: !4699, inlinedAt: !4591)
!4701 = !DILocation(line: 364, column: 6, scope: !4587, inlinedAt: !4591)
!4702 = !DILocation(line: 364, column: 26, scope: !4699, inlinedAt: !4591)
!4703 = !DILocation(line: 365, column: 6, scope: !4704, inlinedAt: !4591)
!4704 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 365, column: 6)
!4705 = !DILocation(line: 365, column: 11, scope: !4704, inlinedAt: !4591)
!4706 = !DILocation(line: 365, column: 6, scope: !4587, inlinedAt: !4591)
!4707 = !DILocation(line: 365, column: 26, scope: !4704, inlinedAt: !4591)
!4708 = !DILocation(line: 366, column: 6, scope: !4709, inlinedAt: !4591)
!4709 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 366, column: 6)
!4710 = !DILocation(line: 366, column: 11, scope: !4709, inlinedAt: !4591)
!4711 = !DILocation(line: 366, column: 6, scope: !4587, inlinedAt: !4591)
!4712 = !DILocation(line: 366, column: 26, scope: !4709, inlinedAt: !4591)
!4713 = !DILocation(line: 367, column: 6, scope: !4714, inlinedAt: !4591)
!4714 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 367, column: 6)
!4715 = !DILocation(line: 367, column: 11, scope: !4714, inlinedAt: !4591)
!4716 = !DILocation(line: 367, column: 6, scope: !4587, inlinedAt: !4591)
!4717 = !DILocation(line: 367, column: 26, scope: !4714, inlinedAt: !4591)
!4718 = !DILocation(line: 368, column: 6, scope: !4719, inlinedAt: !4591)
!4719 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 368, column: 6)
!4720 = !DILocation(line: 368, column: 11, scope: !4719, inlinedAt: !4591)
!4721 = !DILocation(line: 368, column: 6, scope: !4587, inlinedAt: !4591)
!4722 = !DILocation(line: 368, column: 26, scope: !4719, inlinedAt: !4591)
!4723 = !DILocation(line: 369, column: 6, scope: !4724, inlinedAt: !4591)
!4724 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 369, column: 6)
!4725 = !DILocation(line: 369, column: 11, scope: !4724, inlinedAt: !4591)
!4726 = !DILocation(line: 369, column: 6, scope: !4587, inlinedAt: !4591)
!4727 = !DILocation(line: 369, column: 26, scope: !4724, inlinedAt: !4591)
!4728 = !DILocation(line: 370, column: 6, scope: !4729, inlinedAt: !4591)
!4729 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 370, column: 6)
!4730 = !DILocation(line: 370, column: 11, scope: !4729, inlinedAt: !4591)
!4731 = !DILocation(line: 370, column: 6, scope: !4587, inlinedAt: !4591)
!4732 = !DILocation(line: 370, column: 26, scope: !4729, inlinedAt: !4591)
!4733 = !DILocation(line: 371, column: 6, scope: !4734, inlinedAt: !4591)
!4734 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 371, column: 6)
!4735 = !DILocation(line: 371, column: 11, scope: !4734, inlinedAt: !4591)
!4736 = !DILocation(line: 371, column: 6, scope: !4587, inlinedAt: !4591)
!4737 = !DILocation(line: 371, column: 26, scope: !4734, inlinedAt: !4591)
!4738 = !DILocation(line: 372, column: 6, scope: !4739, inlinedAt: !4591)
!4739 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 372, column: 6)
!4740 = !DILocation(line: 372, column: 11, scope: !4739, inlinedAt: !4591)
!4741 = !DILocation(line: 372, column: 6, scope: !4587, inlinedAt: !4591)
!4742 = !DILocation(line: 372, column: 26, scope: !4739, inlinedAt: !4591)
!4743 = !DILocation(line: 373, column: 6, scope: !4744, inlinedAt: !4591)
!4744 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 373, column: 6)
!4745 = !DILocation(line: 373, column: 11, scope: !4744, inlinedAt: !4591)
!4746 = !DILocation(line: 373, column: 6, scope: !4587, inlinedAt: !4591)
!4747 = !DILocation(line: 373, column: 26, scope: !4744, inlinedAt: !4591)
!4748 = !DILocation(line: 374, column: 6, scope: !4749, inlinedAt: !4591)
!4749 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 374, column: 6)
!4750 = !DILocation(line: 374, column: 11, scope: !4749, inlinedAt: !4591)
!4751 = !DILocation(line: 374, column: 6, scope: !4587, inlinedAt: !4591)
!4752 = !DILocation(line: 374, column: 26, scope: !4749, inlinedAt: !4591)
!4753 = !DILocation(line: 375, column: 6, scope: !4754, inlinedAt: !4591)
!4754 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 375, column: 6)
!4755 = !DILocation(line: 375, column: 11, scope: !4754, inlinedAt: !4591)
!4756 = !DILocation(line: 375, column: 6, scope: !4587, inlinedAt: !4591)
!4757 = !DILocation(line: 375, column: 27, scope: !4754, inlinedAt: !4591)
!4758 = !DILocation(line: 376, column: 6, scope: !4759, inlinedAt: !4591)
!4759 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 376, column: 6)
!4760 = !DILocation(line: 376, column: 11, scope: !4759, inlinedAt: !4591)
!4761 = !DILocation(line: 376, column: 6, scope: !4587, inlinedAt: !4591)
!4762 = !DILocation(line: 376, column: 32, scope: !4759, inlinedAt: !4591)
!4763 = !DILocation(line: 377, column: 6, scope: !4764, inlinedAt: !4591)
!4764 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 377, column: 6)
!4765 = !DILocation(line: 377, column: 11, scope: !4764, inlinedAt: !4591)
!4766 = !DILocation(line: 377, column: 6, scope: !4587, inlinedAt: !4591)
!4767 = !DILocation(line: 377, column: 32, scope: !4764, inlinedAt: !4591)
!4768 = !DILocation(line: 378, column: 6, scope: !4769, inlinedAt: !4591)
!4769 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 378, column: 6)
!4770 = !DILocation(line: 378, column: 11, scope: !4769, inlinedAt: !4591)
!4771 = !DILocation(line: 378, column: 6, scope: !4587, inlinedAt: !4591)
!4772 = !DILocation(line: 378, column: 32, scope: !4769, inlinedAt: !4591)
!4773 = !DILocation(line: 379, column: 6, scope: !4774, inlinedAt: !4591)
!4774 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 379, column: 6)
!4775 = !DILocation(line: 379, column: 11, scope: !4774, inlinedAt: !4591)
!4776 = !DILocation(line: 379, column: 6, scope: !4587, inlinedAt: !4591)
!4777 = !DILocation(line: 379, column: 33, scope: !4774, inlinedAt: !4591)
!4778 = !DILocation(line: 380, column: 6, scope: !4779, inlinedAt: !4591)
!4779 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 380, column: 6)
!4780 = !DILocation(line: 380, column: 11, scope: !4779, inlinedAt: !4591)
!4781 = !DILocation(line: 380, column: 6, scope: !4587, inlinedAt: !4591)
!4782 = !DILocation(line: 380, column: 33, scope: !4779, inlinedAt: !4591)
!4783 = !DILocation(line: 381, column: 6, scope: !4784, inlinedAt: !4591)
!4784 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 381, column: 6)
!4785 = !DILocation(line: 381, column: 11, scope: !4784, inlinedAt: !4591)
!4786 = !DILocation(line: 381, column: 6, scope: !4587, inlinedAt: !4591)
!4787 = !DILocation(line: 381, column: 33, scope: !4784, inlinedAt: !4591)
!4788 = !DILocation(line: 382, column: 2, scope: !4789, inlinedAt: !4591)
!4789 = distinct !DILexicalBlock(scope: !4790, file: !290, line: 382, column: 2)
!4790 = distinct !DILexicalBlock(scope: !4587, file: !290, line: 382, column: 2)
!4791 = !{i32 -2144218116, i32 -2144218087, i32 -2144218041, i32 -2144217983, i32 -2144217929, i32 -2144217875, i32 -2144217820, i32 -2144217789}
!4792 = !DILocation(line: 382, column: 2, scope: !4793, inlinedAt: !4591)
!4793 = distinct !DILexicalBlock(scope: !4794, file: !290, line: 382, column: 2)
!4794 = distinct !DILexicalBlock(scope: !4790, file: !290, line: 382, column: 2)
!4795 = !{i32 -2144217346, i32 -2144217339, i32 -2144217285, i32 -2144217254, i32 -2144217224}
!4796 = !DILocation(line: 382, column: 2, scope: !4794, inlinedAt: !4591)
!4797 = !DILocation(line: 386, column: 1, scope: !4587, inlinedAt: !4591)
!4798 = !DILocation(line: 547, column: 9, scope: !4570, inlinedAt: !4573)
!4799 = !DILocation(line: 549, column: 8, scope: !4800, inlinedAt: !4573)
!4800 = distinct !DILexicalBlock(scope: !4570, file: !290, line: 549, column: 7)
!4801 = !DILocation(line: 549, column: 7, scope: !4570, inlinedAt: !4573)
!4802 = !DILocation(line: 550, column: 4, scope: !4800, inlinedAt: !4573)
!4803 = !DILocation(line: 553, column: 33, scope: !4570, inlinedAt: !4573)
!4804 = !DILocation(line: 325, column: 6, scope: !4805, inlinedAt: !4585)
!4805 = distinct !DILexicalBlock(scope: !4581, file: !290, line: 325, column: 6)
!4806 = !DILocation(line: 325, column: 6, scope: !4581, inlinedAt: !4585)
!4807 = !DILocation(line: 326, column: 3, scope: !4805, inlinedAt: !4585)
!4808 = !DILocation(line: 332, column: 9, scope: !4581, inlinedAt: !4585)
!4809 = !DILocation(line: 332, column: 15, scope: !4581, inlinedAt: !4585)
!4810 = !DILocation(line: 332, column: 2, scope: !4581, inlinedAt: !4585)
!4811 = !DILocation(line: 336, column: 1, scope: !4581, inlinedAt: !4585)
!4812 = !DILocation(line: 553, column: 5, scope: !4570, inlinedAt: !4573)
!4813 = !DILocation(line: 553, column: 41, scope: !4570, inlinedAt: !4573)
!4814 = !DILocation(line: 554, column: 5, scope: !4570, inlinedAt: !4573)
!4815 = !DILocation(line: 554, column: 12, scope: !4570, inlinedAt: !4573)
!4816 = !DILocation(line: 448, column: 31, scope: !4565, inlinedAt: !4569)
!4817 = !DILocation(line: 448, column: 34, scope: !4565, inlinedAt: !4569)
!4818 = !DILocation(line: 448, column: 14, scope: !4565, inlinedAt: !4569)
!4819 = !DILocation(line: 450, column: 22, scope: !4565, inlinedAt: !4569)
!4820 = !DILocation(line: 450, column: 25, scope: !4565, inlinedAt: !4569)
!4821 = !DILocation(line: 450, column: 30, scope: !4565, inlinedAt: !4569)
!4822 = !DILocation(line: 450, column: 36, scope: !4565, inlinedAt: !4569)
!4823 = !DILocation(line: 450, column: 8, scope: !4565, inlinedAt: !4569)
!4824 = !DILocation(line: 450, column: 6, scope: !4565, inlinedAt: !4569)
!4825 = !DILocation(line: 451, column: 9, scope: !4565, inlinedAt: !4569)
!4826 = !DILocation(line: 552, column: 3, scope: !4570, inlinedAt: !4573)
!4827 = !DILocation(line: 557, column: 19, scope: !4572, inlinedAt: !4573)
!4828 = !DILocation(line: 557, column: 25, scope: !4572, inlinedAt: !4573)
!4829 = !DILocation(line: 557, column: 9, scope: !4572, inlinedAt: !4573)
!4830 = !DILocation(line: 557, column: 2, scope: !4572, inlinedAt: !4573)
!4831 = !DILocation(line: 558, column: 1, scope: !4572, inlinedAt: !4573)
!4832 = !DILocation(line: 664, column: 2, scope: !4561)
!4833 = distinct !DISubprogram(name: "nxt200x_readbytes", scope: !3, file: !3, line: 108, type: !4834, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!330, !4446, !348, !4276, !348}
!4836 = !DILocalVariable(name: "state", arg: 1, scope: !4833, file: !3, line: 108, type: !4446)
!4837 = !DILocation(line: 108, column: 52, scope: !4833)
!4838 = !DILocalVariable(name: "reg", arg: 2, scope: !4833, file: !3, line: 108, type: !348)
!4839 = !DILocation(line: 108, column: 62, scope: !4833)
!4840 = !DILocalVariable(name: "buf", arg: 3, scope: !4833, file: !3, line: 108, type: !4276)
!4841 = !DILocation(line: 108, column: 71, scope: !4833)
!4842 = !DILocalVariable(name: "len", arg: 4, scope: !4833, file: !3, line: 108, type: !348)
!4843 = !DILocation(line: 108, column: 79, scope: !4833)
!4844 = !DILocalVariable(name: "reg2", scope: !4833, file: !3, line: 110, type: !4845)
!4845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 8, elements: !1520)
!4846 = !DILocation(line: 110, column: 5, scope: !4833)
!4847 = !DILocation(line: 110, column: 15, scope: !4833)
!4848 = !DILocation(line: 110, column: 17, scope: !4833)
!4849 = !DILocalVariable(name: "msg", scope: !4833, file: !3, line: 112, type: !4850)
!4850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4335, size: 256, elements: !1723)
!4851 = !DILocation(line: 112, column: 17, scope: !4833)
!4852 = !DILocation(line: 112, column: 26, scope: !4833)
!4853 = !DILocation(line: 112, column: 28, scope: !4833)
!4854 = !DILocation(line: 112, column: 38, scope: !4833)
!4855 = !DILocation(line: 112, column: 45, scope: !4833)
!4856 = !DILocation(line: 112, column: 53, scope: !4833)
!4857 = !DILocation(line: 112, column: 87, scope: !4833)
!4858 = !DILocation(line: 113, column: 4, scope: !4833)
!4859 = !DILocation(line: 113, column: 14, scope: !4833)
!4860 = !DILocation(line: 113, column: 21, scope: !4833)
!4861 = !DILocation(line: 113, column: 29, scope: !4833)
!4862 = !DILocation(line: 113, column: 82, scope: !4833)
!4863 = !DILocation(line: 113, column: 70, scope: !4833)
!4864 = !DILocalVariable(name: "err", scope: !4833, file: !3, line: 115, type: !330)
!4865 = !DILocation(line: 115, column: 6, scope: !4833)
!4866 = !DILocation(line: 117, column: 27, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 117, column: 6)
!4868 = !DILocation(line: 117, column: 34, scope: !4867)
!4869 = !DILocation(line: 117, column: 39, scope: !4867)
!4870 = !DILocation(line: 117, column: 13, scope: !4867)
!4871 = !DILocation(line: 117, column: 11, scope: !4867)
!4872 = !DILocation(line: 117, column: 48, scope: !4867)
!4873 = !DILocation(line: 117, column: 6, scope: !4833)
!4874 = !DILocation(line: 118, column: 3, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4867, file: !3, line: 117, column: 54)
!4876 = !DILocation(line: 120, column: 3, scope: !4875)
!4877 = !DILocation(line: 122, column: 2, scope: !4833)
!4878 = !DILocation(line: 123, column: 1, scope: !4833)
!4879 = distinct !DISubprogram(name: "get_order", scope: !4880, file: !4880, line: 29, type: !4881, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4880 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!330, !576}
!4883 = !DILocalVariable(name: "x", arg: 1, scope: !4884, file: !4885, line: 366, type: !670)
!4884 = distinct !DISubprogram(name: "fls64", scope: !4885, file: !4885, line: 366, type: !4886, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4885 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!330, !670}
!4888 = !DILocation(line: 366, column: 40, scope: !4884, inlinedAt: !4889)
!4889 = distinct !DILocation(line: 46, column: 9, scope: !4879)
!4890 = !DILocalVariable(name: "bitpos", scope: !4884, file: !4885, line: 368, type: !330)
!4891 = !DILocation(line: 368, column: 6, scope: !4884, inlinedAt: !4889)
!4892 = !DILocalVariable(name: "size", arg: 1, scope: !4879, file: !4880, line: 29, type: !576)
!4893 = !DILocation(line: 29, column: 63, scope: !4879)
!4894 = !DILocation(line: 31, column: 27, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4879, file: !4880, line: 31, column: 6)
!4896 = !DILocation(line: 31, column: 6, scope: !4895)
!4897 = !DILocation(line: 31, column: 6, scope: !4879)
!4898 = !DILocation(line: 32, column: 8, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4900, file: !4880, line: 32, column: 7)
!4900 = distinct !DILexicalBlock(scope: !4895, file: !4880, line: 31, column: 34)
!4901 = !DILocation(line: 32, column: 7, scope: !4900)
!4902 = !DILocation(line: 33, column: 4, scope: !4899)
!4903 = !DILocation(line: 35, column: 7, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4900, file: !4880, line: 35, column: 7)
!4905 = !DILocation(line: 35, column: 12, scope: !4904)
!4906 = !DILocation(line: 35, column: 7, scope: !4900)
!4907 = !DILocation(line: 36, column: 4, scope: !4904)
!4908 = !DILocation(line: 38, column: 10, scope: !4900)
!4909 = !DILocation(line: 38, column: 28, scope: !4900)
!4910 = !DILocation(line: 38, column: 41, scope: !4900)
!4911 = !DILocation(line: 38, column: 3, scope: !4900)
!4912 = !DILocation(line: 41, column: 6, scope: !4879)
!4913 = !DILocation(line: 42, column: 7, scope: !4879)
!4914 = !DILocation(line: 46, column: 15, scope: !4879)
!4915 = !DILocation(line: 374, column: 2, scope: !4884, inlinedAt: !4889)
!4916 = !DILocation(line: 376, column: 14, scope: !4884, inlinedAt: !4889)
!4917 = !{i32 268610}
!4918 = !DILocation(line: 377, column: 9, scope: !4884, inlinedAt: !4889)
!4919 = !DILocation(line: 377, column: 16, scope: !4884, inlinedAt: !4889)
!4920 = !DILocation(line: 46, column: 2, scope: !4879)
!4921 = !DILocation(line: 48, column: 1, scope: !4879)
!4922 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4923, file: !4923, line: 30, type: !4924, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4923 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!330, !669}
!4926 = !DILocation(line: 366, column: 40, scope: !4884, inlinedAt: !4927)
!4927 = distinct !DILocation(line: 32, column: 9, scope: !4922)
!4928 = !DILocation(line: 368, column: 6, scope: !4884, inlinedAt: !4927)
!4929 = !DILocalVariable(name: "n", arg: 1, scope: !4922, file: !4923, line: 30, type: !669)
!4930 = !DILocation(line: 30, column: 21, scope: !4922)
!4931 = !DILocation(line: 32, column: 15, scope: !4922)
!4932 = !DILocation(line: 374, column: 2, scope: !4884, inlinedAt: !4927)
!4933 = !DILocation(line: 376, column: 14, scope: !4884, inlinedAt: !4927)
!4934 = !DILocation(line: 377, column: 9, scope: !4884, inlinedAt: !4927)
!4935 = !DILocation(line: 377, column: 16, scope: !4884, inlinedAt: !4927)
!4936 = !DILocation(line: 32, column: 18, scope: !4922)
!4937 = !DILocation(line: 32, column: 2, scope: !4922)
!4938 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4939, file: !4939, line: 137, type: !4940, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4939 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!299, !1173, !2281, !573, !297}
!4942 = !DILocalVariable(name: "s", arg: 1, scope: !4938, file: !4939, line: 137, type: !1173)
!4943 = !DILocation(line: 137, column: 54, scope: !4938)
!4944 = !DILocalVariable(name: "object", arg: 2, scope: !4938, file: !4939, line: 137, type: !2281)
!4945 = !DILocation(line: 137, column: 69, scope: !4938)
!4946 = !DILocalVariable(name: "size", arg: 3, scope: !4938, file: !4939, line: 138, type: !573)
!4947 = !DILocation(line: 138, column: 12, scope: !4938)
!4948 = !DILocalVariable(name: "flags", arg: 4, scope: !4938, file: !4939, line: 138, type: !297)
!4949 = !DILocation(line: 138, column: 24, scope: !4938)
!4950 = !DILocation(line: 140, column: 17, scope: !4938)
!4951 = !DILocation(line: 140, column: 2, scope: !4938)
!4952 = distinct !DISubprogram(name: "nxt200x_release", scope: !3, file: !3, line: 1132, type: !431, scopeLine: 1133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4953 = !DILocalVariable(name: "fe", arg: 1, scope: !4952, file: !3, line: 1132, type: !433)
!4954 = !DILocation(line: 1132, column: 50, scope: !4952)
!4955 = !DILocalVariable(name: "state", scope: !4952, file: !3, line: 1134, type: !4446)
!4956 = !DILocation(line: 1134, column: 24, scope: !4952)
!4957 = !DILocation(line: 1134, column: 32, scope: !4952)
!4958 = !DILocation(line: 1134, column: 36, scope: !4952)
!4959 = !DILocation(line: 1135, column: 8, scope: !4952)
!4960 = !DILocation(line: 1135, column: 2, scope: !4952)
!4961 = !DILocation(line: 1136, column: 1, scope: !4952)
!4962 = distinct !DISubprogram(name: "nxt200x_init", scope: !3, file: !3, line: 1102, type: !4127, scopeLine: 1103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4963 = !DILocalVariable(name: "fe", arg: 1, scope: !4962, file: !3, line: 1102, type: !433)
!4964 = !DILocation(line: 1102, column: 46, scope: !4962)
!4965 = !DILocalVariable(name: "state", scope: !4962, file: !3, line: 1104, type: !4446)
!4966 = !DILocation(line: 1104, column: 24, scope: !4962)
!4967 = !DILocation(line: 1104, column: 32, scope: !4962)
!4968 = !DILocation(line: 1104, column: 36, scope: !4962)
!4969 = !DILocalVariable(name: "ret", scope: !4962, file: !3, line: 1105, type: !330)
!4970 = !DILocation(line: 1105, column: 6, scope: !4962)
!4971 = !DILocation(line: 1107, column: 7, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 1107, column: 6)
!4973 = !DILocation(line: 1107, column: 14, scope: !4972)
!4974 = !DILocation(line: 1107, column: 6, scope: !4962)
!4975 = !DILocation(line: 1108, column: 11, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 1107, column: 27)
!4977 = !DILocation(line: 1108, column: 18, scope: !4976)
!4978 = !DILocation(line: 1108, column: 3, scope: !4976)
!4979 = !DILocation(line: 1110, column: 24, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 1108, column: 30)
!4981 = !DILocation(line: 1110, column: 11, scope: !4980)
!4982 = !DILocation(line: 1110, column: 9, scope: !4980)
!4983 = !DILocation(line: 1111, column: 5, scope: !4980)
!4984 = !DILocation(line: 1113, column: 24, scope: !4980)
!4985 = !DILocation(line: 1113, column: 11, scope: !4980)
!4986 = !DILocation(line: 1113, column: 9, scope: !4980)
!4987 = !DILocation(line: 1114, column: 5, scope: !4980)
!4988 = !DILocation(line: 1116, column: 5, scope: !4980)
!4989 = !DILocation(line: 1119, column: 3, scope: !4976)
!4990 = !DILocation(line: 1119, column: 10, scope: !4976)
!4991 = !DILocation(line: 1119, column: 22, scope: !4976)
!4992 = !DILocation(line: 1120, column: 2, scope: !4976)
!4993 = !DILocation(line: 1121, column: 9, scope: !4962)
!4994 = !DILocation(line: 1121, column: 2, scope: !4962)
!4995 = !DILocation(line: 1122, column: 1, scope: !4962)
!4996 = distinct !DISubprogram(name: "nxt200x_sleep", scope: !3, file: !3, line: 862, type: !4127, scopeLine: 863, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4997 = !DILocalVariable(name: "fe", arg: 1, scope: !4996, file: !3, line: 862, type: !433)
!4998 = !DILocation(line: 862, column: 47, scope: !4996)
!4999 = !DILocation(line: 864, column: 2, scope: !4996)
!5000 = distinct !DISubprogram(name: "nxt200x_setup_frontend_parameters", scope: !3, file: !3, line: 525, type: !4127, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5001 = !DILocalVariable(name: "fe", arg: 1, scope: !5000, file: !3, line: 525, type: !433)
!5002 = !DILocation(line: 525, column: 67, scope: !5000)
!5003 = !DILocalVariable(name: "p", scope: !5000, file: !3, line: 527, type: !4160)
!5004 = !DILocation(line: 527, column: 34, scope: !5000)
!5005 = !DILocation(line: 527, column: 39, scope: !5000)
!5006 = !DILocation(line: 527, column: 43, scope: !5000)
!5007 = !DILocalVariable(name: "state", scope: !5000, file: !3, line: 528, type: !4446)
!5008 = !DILocation(line: 528, column: 24, scope: !5000)
!5009 = !DILocation(line: 528, column: 32, scope: !5000)
!5010 = !DILocation(line: 528, column: 36, scope: !5000)
!5011 = !DILocalVariable(name: "buf", scope: !5000, file: !3, line: 529, type: !4457)
!5012 = !DILocation(line: 529, column: 5, scope: !5000)
!5013 = !DILocation(line: 532, column: 31, scope: !5000)
!5014 = !DILocation(line: 532, column: 2, scope: !5000)
!5015 = !DILocation(line: 534, column: 6, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 534, column: 6)
!5017 = !DILocation(line: 534, column: 13, scope: !5016)
!5018 = !DILocation(line: 534, column: 24, scope: !5016)
!5019 = !DILocation(line: 534, column: 6, scope: !5000)
!5020 = !DILocation(line: 536, column: 3, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5016, file: !3, line: 534, column: 36)
!5022 = !DILocation(line: 536, column: 10, scope: !5021)
!5023 = !DILocation(line: 537, column: 22, scope: !5021)
!5024 = !DILocation(line: 537, column: 35, scope: !5021)
!5025 = !DILocation(line: 537, column: 3, scope: !5021)
!5026 = !DILocation(line: 538, column: 3, scope: !5021)
!5027 = !DILocation(line: 538, column: 10, scope: !5021)
!5028 = !DILocation(line: 539, column: 22, scope: !5021)
!5029 = !DILocation(line: 539, column: 35, scope: !5021)
!5030 = !DILocation(line: 539, column: 3, scope: !5021)
!5031 = !DILocation(line: 540, column: 2, scope: !5021)
!5032 = !DILocation(line: 543, column: 10, scope: !5000)
!5033 = !DILocation(line: 543, column: 13, scope: !5000)
!5034 = !DILocation(line: 543, column: 2, scope: !5000)
!5035 = !DILocation(line: 548, column: 8, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 548, column: 8)
!5037 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 543, column: 25)
!5038 = !DILocation(line: 548, column: 15, scope: !5036)
!5039 = !DILocation(line: 548, column: 23, scope: !5036)
!5040 = !DILocation(line: 548, column: 8, scope: !5037)
!5041 = !DILocation(line: 549, column: 5, scope: !5036)
!5042 = !DILocation(line: 549, column: 12, scope: !5036)
!5043 = !DILocation(line: 549, column: 20, scope: !5036)
!5044 = !DILocation(line: 549, column: 34, scope: !5036)
!5045 = !DILocation(line: 550, column: 4, scope: !5037)
!5046 = !DILocation(line: 553, column: 8, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 553, column: 8)
!5048 = !DILocation(line: 553, column: 15, scope: !5047)
!5049 = !DILocation(line: 553, column: 23, scope: !5047)
!5050 = !DILocation(line: 553, column: 8, scope: !5037)
!5051 = !DILocation(line: 554, column: 5, scope: !5047)
!5052 = !DILocation(line: 554, column: 12, scope: !5047)
!5053 = !DILocation(line: 554, column: 20, scope: !5047)
!5054 = !DILocation(line: 554, column: 34, scope: !5047)
!5055 = !DILocation(line: 555, column: 4, scope: !5037)
!5056 = !DILocation(line: 557, column: 4, scope: !5037)
!5057 = !DILocation(line: 561, column: 6, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 561, column: 6)
!5059 = !DILocation(line: 561, column: 10, scope: !5058)
!5060 = !DILocation(line: 561, column: 14, scope: !5058)
!5061 = !DILocation(line: 561, column: 24, scope: !5058)
!5062 = !DILocation(line: 561, column: 6, scope: !5000)
!5063 = !DILocation(line: 563, column: 3, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 561, column: 35)
!5065 = !DILocation(line: 563, column: 7, scope: !5064)
!5066 = !DILocation(line: 563, column: 11, scope: !5064)
!5067 = !DILocation(line: 563, column: 21, scope: !5064)
!5068 = !DILocation(line: 563, column: 31, scope: !5064)
!5069 = !DILocation(line: 563, column: 35, scope: !5064)
!5070 = !DILocation(line: 566, column: 22, scope: !5064)
!5071 = !DILocation(line: 566, column: 29, scope: !5064)
!5072 = !DILocation(line: 566, column: 3, scope: !5064)
!5073 = !DILocation(line: 567, column: 2, scope: !5064)
!5074 = !DILocation(line: 570, column: 20, scope: !5000)
!5075 = !DILocation(line: 570, column: 2, scope: !5000)
!5076 = !DILocation(line: 573, column: 10, scope: !5000)
!5077 = !DILocation(line: 573, column: 13, scope: !5000)
!5078 = !DILocation(line: 573, column: 2, scope: !5000)
!5079 = !DILocation(line: 576, column: 4, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 573, column: 25)
!5081 = !DILocation(line: 576, column: 11, scope: !5080)
!5082 = !DILocation(line: 577, column: 4, scope: !5080)
!5083 = !DILocation(line: 579, column: 4, scope: !5080)
!5084 = !DILocation(line: 579, column: 11, scope: !5080)
!5085 = !DILocation(line: 580, column: 4, scope: !5080)
!5086 = !DILocation(line: 582, column: 4, scope: !5080)
!5087 = !DILocation(line: 585, column: 21, scope: !5000)
!5088 = !DILocation(line: 585, column: 34, scope: !5000)
!5089 = !DILocation(line: 585, column: 2, scope: !5000)
!5090 = !DILocation(line: 588, column: 10, scope: !5000)
!5091 = !DILocation(line: 588, column: 17, scope: !5000)
!5092 = !DILocation(line: 588, column: 2, scope: !5000)
!5093 = !DILocation(line: 590, column: 4, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 588, column: 29)
!5095 = !DILocation(line: 590, column: 11, scope: !5094)
!5096 = !DILocation(line: 591, column: 4, scope: !5094)
!5097 = !DILocation(line: 593, column: 4, scope: !5094)
!5098 = !DILocation(line: 593, column: 11, scope: !5094)
!5099 = !DILocation(line: 594, column: 4, scope: !5094)
!5100 = !DILocation(line: 596, column: 4, scope: !5094)
!5101 = !DILocation(line: 599, column: 21, scope: !5000)
!5102 = !DILocation(line: 599, column: 34, scope: !5000)
!5103 = !DILocation(line: 599, column: 2, scope: !5000)
!5104 = !DILocation(line: 602, column: 2, scope: !5000)
!5105 = !DILocation(line: 602, column: 9, scope: !5000)
!5106 = !DILocation(line: 603, column: 2, scope: !5000)
!5107 = !DILocation(line: 603, column: 9, scope: !5000)
!5108 = !DILocation(line: 604, column: 10, scope: !5000)
!5109 = !DILocation(line: 604, column: 17, scope: !5000)
!5110 = !DILocation(line: 604, column: 2, scope: !5000)
!5111 = !DILocation(line: 606, column: 31, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 604, column: 29)
!5113 = !DILocation(line: 606, column: 44, scope: !5112)
!5114 = !DILocation(line: 606, column: 4, scope: !5112)
!5115 = !DILocation(line: 607, column: 4, scope: !5112)
!5116 = !DILocation(line: 609, column: 23, scope: !5112)
!5117 = !DILocation(line: 609, column: 36, scope: !5112)
!5118 = !DILocation(line: 609, column: 4, scope: !5112)
!5119 = !DILocation(line: 610, column: 4, scope: !5112)
!5120 = !DILocation(line: 612, column: 4, scope: !5112)
!5121 = !DILocation(line: 617, column: 10, scope: !5000)
!5122 = !DILocation(line: 617, column: 13, scope: !5000)
!5123 = !DILocation(line: 617, column: 2, scope: !5000)
!5124 = !DILocation(line: 619, column: 5, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 617, column: 25)
!5126 = !DILocation(line: 619, column: 12, scope: !5125)
!5127 = !DILocation(line: 620, column: 5, scope: !5125)
!5128 = !DILocation(line: 622, column: 5, scope: !5125)
!5129 = !DILocation(line: 622, column: 12, scope: !5125)
!5130 = !DILocation(line: 623, column: 5, scope: !5125)
!5131 = !DILocation(line: 625, column: 5, scope: !5125)
!5132 = !DILocation(line: 625, column: 12, scope: !5125)
!5133 = !DILocation(line: 626, column: 5, scope: !5125)
!5134 = !DILocation(line: 628, column: 5, scope: !5125)
!5135 = !DILocation(line: 631, column: 2, scope: !5000)
!5136 = !DILocation(line: 631, column: 9, scope: !5000)
!5137 = !DILocation(line: 632, column: 10, scope: !5000)
!5138 = !DILocation(line: 632, column: 17, scope: !5000)
!5139 = !DILocation(line: 632, column: 2, scope: !5000)
!5140 = !DILocation(line: 634, column: 31, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 632, column: 29)
!5142 = !DILocation(line: 634, column: 44, scope: !5141)
!5143 = !DILocation(line: 634, column: 4, scope: !5141)
!5144 = !DILocation(line: 635, column: 4, scope: !5141)
!5145 = !DILocation(line: 637, column: 23, scope: !5141)
!5146 = !DILocation(line: 637, column: 36, scope: !5141)
!5147 = !DILocation(line: 637, column: 4, scope: !5141)
!5148 = !DILocation(line: 638, column: 4, scope: !5141)
!5149 = !DILocation(line: 640, column: 4, scope: !5141)
!5150 = !DILocation(line: 645, column: 2, scope: !5000)
!5151 = !DILocation(line: 645, column: 9, scope: !5000)
!5152 = !DILocation(line: 646, column: 21, scope: !5000)
!5153 = !DILocation(line: 646, column: 34, scope: !5000)
!5154 = !DILocation(line: 646, column: 2, scope: !5000)
!5155 = !DILocation(line: 648, column: 6, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 648, column: 6)
!5157 = !DILocation(line: 648, column: 13, scope: !5156)
!5158 = !DILocation(line: 648, column: 24, scope: !5156)
!5159 = !DILocation(line: 648, column: 6, scope: !5000)
!5160 = !DILocation(line: 650, column: 3, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 648, column: 36)
!5162 = !DILocation(line: 650, column: 10, scope: !5161)
!5163 = !DILocation(line: 651, column: 3, scope: !5161)
!5164 = !DILocation(line: 651, column: 10, scope: !5161)
!5165 = !DILocation(line: 652, column: 22, scope: !5161)
!5166 = !DILocation(line: 652, column: 35, scope: !5161)
!5167 = !DILocation(line: 652, column: 3, scope: !5161)
!5168 = !DILocation(line: 653, column: 2, scope: !5161)
!5169 = !DILocation(line: 656, column: 2, scope: !5000)
!5170 = !DILocation(line: 656, column: 9, scope: !5000)
!5171 = !DILocation(line: 657, column: 2, scope: !5000)
!5172 = !DILocation(line: 657, column: 9, scope: !5000)
!5173 = !DILocation(line: 658, column: 10, scope: !5000)
!5174 = !DILocation(line: 658, column: 17, scope: !5000)
!5175 = !DILocation(line: 658, column: 2, scope: !5000)
!5176 = !DILocation(line: 660, column: 31, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 658, column: 29)
!5178 = !DILocation(line: 660, column: 44, scope: !5177)
!5179 = !DILocation(line: 660, column: 4, scope: !5177)
!5180 = !DILocation(line: 661, column: 4, scope: !5177)
!5181 = !DILocation(line: 663, column: 23, scope: !5177)
!5182 = !DILocation(line: 663, column: 36, scope: !5177)
!5183 = !DILocation(line: 663, column: 4, scope: !5177)
!5184 = !DILocation(line: 664, column: 4, scope: !5177)
!5185 = !DILocation(line: 666, column: 4, scope: !5177)
!5186 = !DILocation(line: 671, column: 2, scope: !5000)
!5187 = !DILocation(line: 671, column: 9, scope: !5000)
!5188 = !DILocation(line: 672, column: 21, scope: !5000)
!5189 = !DILocation(line: 672, column: 34, scope: !5000)
!5190 = !DILocation(line: 672, column: 2, scope: !5000)
!5191 = !DILocation(line: 675, column: 2, scope: !5000)
!5192 = !DILocation(line: 675, column: 9, scope: !5000)
!5193 = !DILocation(line: 676, column: 21, scope: !5000)
!5194 = !DILocation(line: 676, column: 34, scope: !5000)
!5195 = !DILocation(line: 676, column: 2, scope: !5000)
!5196 = !DILocation(line: 679, column: 2, scope: !5000)
!5197 = !DILocation(line: 679, column: 9, scope: !5000)
!5198 = !DILocation(line: 680, column: 21, scope: !5000)
!5199 = !DILocation(line: 680, column: 34, scope: !5000)
!5200 = !DILocation(line: 680, column: 2, scope: !5000)
!5201 = !DILocation(line: 682, column: 6, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 682, column: 6)
!5203 = !DILocation(line: 682, column: 13, scope: !5202)
!5204 = !DILocation(line: 682, column: 24, scope: !5202)
!5205 = !DILocation(line: 682, column: 6, scope: !5000)
!5206 = !DILocation(line: 683, column: 29, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 682, column: 36)
!5208 = !DILocation(line: 683, column: 42, scope: !5207)
!5209 = !DILocation(line: 683, column: 3, scope: !5207)
!5210 = !DILocation(line: 684, column: 3, scope: !5207)
!5211 = !DILocation(line: 684, column: 10, scope: !5207)
!5212 = !DILocation(line: 685, column: 30, scope: !5207)
!5213 = !DILocation(line: 685, column: 43, scope: !5207)
!5214 = !DILocation(line: 685, column: 3, scope: !5207)
!5215 = !DILocation(line: 688, column: 29, scope: !5207)
!5216 = !DILocation(line: 688, column: 42, scope: !5207)
!5217 = !DILocation(line: 688, column: 3, scope: !5207)
!5218 = !DILocation(line: 689, column: 3, scope: !5207)
!5219 = !DILocation(line: 689, column: 10, scope: !5207)
!5220 = !DILocation(line: 690, column: 30, scope: !5207)
!5221 = !DILocation(line: 690, column: 43, scope: !5207)
!5222 = !DILocation(line: 690, column: 3, scope: !5207)
!5223 = !DILocation(line: 691, column: 29, scope: !5207)
!5224 = !DILocation(line: 691, column: 42, scope: !5207)
!5225 = !DILocation(line: 691, column: 3, scope: !5207)
!5226 = !DILocation(line: 692, column: 3, scope: !5207)
!5227 = !DILocation(line: 692, column: 10, scope: !5207)
!5228 = !DILocation(line: 693, column: 30, scope: !5207)
!5229 = !DILocation(line: 693, column: 43, scope: !5207)
!5230 = !DILocation(line: 693, column: 3, scope: !5207)
!5231 = !DILocation(line: 695, column: 29, scope: !5207)
!5232 = !DILocation(line: 695, column: 42, scope: !5207)
!5233 = !DILocation(line: 695, column: 3, scope: !5207)
!5234 = !DILocation(line: 696, column: 3, scope: !5207)
!5235 = !DILocation(line: 696, column: 10, scope: !5207)
!5236 = !DILocation(line: 697, column: 30, scope: !5207)
!5237 = !DILocation(line: 697, column: 43, scope: !5207)
!5238 = !DILocation(line: 697, column: 3, scope: !5207)
!5239 = !DILocation(line: 698, column: 3, scope: !5207)
!5240 = !DILocation(line: 698, column: 10, scope: !5207)
!5241 = !DILocation(line: 699, column: 30, scope: !5207)
!5242 = !DILocation(line: 699, column: 43, scope: !5207)
!5243 = !DILocation(line: 699, column: 3, scope: !5207)
!5244 = !DILocation(line: 700, column: 3, scope: !5207)
!5245 = !DILocation(line: 700, column: 10, scope: !5207)
!5246 = !DILocation(line: 700, column: 18, scope: !5207)
!5247 = !DILocation(line: 700, column: 25, scope: !5207)
!5248 = !DILocation(line: 700, column: 33, scope: !5207)
!5249 = !DILocation(line: 700, column: 40, scope: !5207)
!5250 = !DILocation(line: 701, column: 30, scope: !5207)
!5251 = !DILocation(line: 701, column: 43, scope: !5207)
!5252 = !DILocation(line: 701, column: 3, scope: !5207)
!5253 = !DILocation(line: 702, column: 29, scope: !5207)
!5254 = !DILocation(line: 702, column: 42, scope: !5207)
!5255 = !DILocation(line: 702, column: 3, scope: !5207)
!5256 = !DILocation(line: 703, column: 3, scope: !5207)
!5257 = !DILocation(line: 703, column: 10, scope: !5207)
!5258 = !DILocation(line: 704, column: 30, scope: !5207)
!5259 = !DILocation(line: 704, column: 43, scope: !5207)
!5260 = !DILocation(line: 704, column: 3, scope: !5207)
!5261 = !DILocation(line: 705, column: 29, scope: !5207)
!5262 = !DILocation(line: 705, column: 42, scope: !5207)
!5263 = !DILocation(line: 705, column: 3, scope: !5207)
!5264 = !DILocation(line: 706, column: 3, scope: !5207)
!5265 = !DILocation(line: 706, column: 10, scope: !5207)
!5266 = !DILocation(line: 707, column: 30, scope: !5207)
!5267 = !DILocation(line: 707, column: 43, scope: !5207)
!5268 = !DILocation(line: 707, column: 3, scope: !5207)
!5269 = !DILocation(line: 708, column: 2, scope: !5207)
!5270 = !DILocation(line: 711, column: 10, scope: !5000)
!5271 = !DILocation(line: 711, column: 13, scope: !5000)
!5272 = !DILocation(line: 711, column: 2, scope: !5000)
!5273 = !DILocation(line: 713, column: 5, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 711, column: 25)
!5275 = !DILocation(line: 713, column: 12, scope: !5274)
!5276 = !DILocation(line: 714, column: 5, scope: !5274)
!5277 = !DILocation(line: 716, column: 5, scope: !5274)
!5278 = !DILocation(line: 716, column: 12, scope: !5274)
!5279 = !DILocation(line: 717, column: 5, scope: !5274)
!5280 = !DILocation(line: 719, column: 5, scope: !5274)
!5281 = !DILocation(line: 719, column: 12, scope: !5274)
!5282 = !DILocation(line: 720, column: 5, scope: !5274)
!5283 = !DILocation(line: 722, column: 5, scope: !5274)
!5284 = !DILocation(line: 725, column: 21, scope: !5000)
!5285 = !DILocation(line: 725, column: 34, scope: !5000)
!5286 = !DILocation(line: 725, column: 2, scope: !5000)
!5287 = !DILocation(line: 728, column: 2, scope: !5000)
!5288 = !DILocation(line: 728, column: 9, scope: !5000)
!5289 = !DILocation(line: 729, column: 21, scope: !5000)
!5290 = !DILocation(line: 729, column: 34, scope: !5000)
!5291 = !DILocation(line: 729, column: 2, scope: !5000)
!5292 = !DILocation(line: 732, column: 2, scope: !5000)
!5293 = !DILocation(line: 732, column: 9, scope: !5000)
!5294 = !DILocation(line: 733, column: 2, scope: !5000)
!5295 = !DILocation(line: 733, column: 9, scope: !5000)
!5296 = !DILocation(line: 734, column: 10, scope: !5000)
!5297 = !DILocation(line: 734, column: 17, scope: !5000)
!5298 = !DILocation(line: 734, column: 2, scope: !5000)
!5299 = !DILocation(line: 736, column: 31, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 734, column: 29)
!5301 = !DILocation(line: 736, column: 44, scope: !5300)
!5302 = !DILocation(line: 736, column: 4, scope: !5300)
!5303 = !DILocation(line: 737, column: 31, scope: !5300)
!5304 = !DILocation(line: 737, column: 44, scope: !5300)
!5305 = !DILocation(line: 737, column: 4, scope: !5300)
!5306 = !DILocation(line: 738, column: 4, scope: !5300)
!5307 = !DILocation(line: 740, column: 23, scope: !5300)
!5308 = !DILocation(line: 740, column: 36, scope: !5300)
!5309 = !DILocation(line: 740, column: 4, scope: !5300)
!5310 = !DILocation(line: 741, column: 23, scope: !5300)
!5311 = !DILocation(line: 741, column: 36, scope: !5300)
!5312 = !DILocation(line: 741, column: 4, scope: !5300)
!5313 = !DILocation(line: 742, column: 4, scope: !5300)
!5314 = !DILocation(line: 744, column: 4, scope: !5300)
!5315 = !DILocation(line: 749, column: 2, scope: !5000)
!5316 = !DILocation(line: 749, column: 9, scope: !5000)
!5317 = !DILocation(line: 750, column: 21, scope: !5000)
!5318 = !DILocation(line: 750, column: 34, scope: !5000)
!5319 = !DILocation(line: 750, column: 2, scope: !5000)
!5320 = !DILocation(line: 752, column: 32, scope: !5000)
!5321 = !DILocation(line: 752, column: 2, scope: !5000)
!5322 = !DILocation(line: 754, column: 6, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 754, column: 6)
!5324 = !DILocation(line: 754, column: 13, scope: !5323)
!5325 = !DILocation(line: 754, column: 24, scope: !5323)
!5326 = !DILocation(line: 754, column: 6, scope: !5000)
!5327 = !DILocation(line: 755, column: 32, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5323, file: !3, line: 754, column: 36)
!5329 = !DILocation(line: 755, column: 3, scope: !5328)
!5330 = !DILocation(line: 758, column: 3, scope: !5328)
!5331 = !DILocation(line: 758, column: 10, scope: !5328)
!5332 = !DILocation(line: 759, column: 3, scope: !5328)
!5333 = !DILocation(line: 759, column: 10, scope: !5328)
!5334 = !DILocation(line: 760, column: 22, scope: !5328)
!5335 = !DILocation(line: 760, column: 35, scope: !5328)
!5336 = !DILocation(line: 760, column: 3, scope: !5328)
!5337 = !DILocation(line: 761, column: 2, scope: !5328)
!5338 = !DILocation(line: 766, column: 2, scope: !5000)
!5339 = !DILocation(line: 767, column: 1, scope: !5000)
!5340 = distinct !DISubprogram(name: "nxt200x_get_tune_settings", scope: !3, file: !3, line: 1124, type: !4148, scopeLine: 1125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5341 = !DILocalVariable(name: "fe", arg: 1, scope: !5340, file: !3, line: 1124, type: !433)
!5342 = !DILocation(line: 1124, column: 59, scope: !5340)
!5343 = !DILocalVariable(name: "fesettings", arg: 2, scope: !5340, file: !3, line: 1124, type: !4150)
!5344 = !DILocation(line: 1124, column: 98, scope: !5340)
!5345 = !DILocation(line: 1126, column: 2, scope: !5340)
!5346 = !DILocation(line: 1126, column: 14, scope: !5340)
!5347 = !DILocation(line: 1126, column: 27, scope: !5340)
!5348 = !DILocation(line: 1127, column: 2, scope: !5340)
!5349 = !DILocation(line: 1127, column: 14, scope: !5340)
!5350 = !DILocation(line: 1127, column: 24, scope: !5340)
!5351 = !DILocation(line: 1128, column: 2, scope: !5340)
!5352 = !DILocation(line: 1128, column: 14, scope: !5340)
!5353 = !DILocation(line: 1128, column: 24, scope: !5340)
!5354 = !DILocation(line: 1129, column: 2, scope: !5340)
!5355 = distinct !DISubprogram(name: "nxt200x_read_status", scope: !3, file: !3, line: 769, type: !4163, scopeLine: 770, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5356 = !DILocalVariable(name: "fe", arg: 1, scope: !5355, file: !3, line: 769, type: !433)
!5357 = !DILocation(line: 769, column: 53, scope: !5355)
!5358 = !DILocalVariable(name: "status", arg: 2, scope: !5355, file: !3, line: 769, type: !4140)
!5359 = !DILocation(line: 769, column: 73, scope: !5355)
!5360 = !DILocalVariable(name: "state", scope: !5355, file: !3, line: 771, type: !4446)
!5361 = !DILocation(line: 771, column: 24, scope: !5355)
!5362 = !DILocation(line: 771, column: 32, scope: !5355)
!5363 = !DILocation(line: 771, column: 36, scope: !5355)
!5364 = !DILocalVariable(name: "lock", scope: !5355, file: !3, line: 772, type: !348)
!5365 = !DILocation(line: 772, column: 5, scope: !5355)
!5366 = !DILocation(line: 773, column: 20, scope: !5355)
!5367 = !DILocation(line: 773, column: 2, scope: !5355)
!5368 = !DILocation(line: 775, column: 3, scope: !5355)
!5369 = !DILocation(line: 775, column: 10, scope: !5355)
!5370 = !DILocation(line: 776, column: 6, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5355, file: !3, line: 776, column: 6)
!5372 = !DILocation(line: 776, column: 11, scope: !5371)
!5373 = !DILocation(line: 776, column: 6, scope: !5355)
!5374 = !DILocation(line: 777, column: 4, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 776, column: 19)
!5376 = !DILocation(line: 777, column: 11, scope: !5375)
!5377 = !DILocation(line: 778, column: 4, scope: !5375)
!5378 = !DILocation(line: 778, column: 11, scope: !5375)
!5379 = !DILocation(line: 779, column: 4, scope: !5375)
!5380 = !DILocation(line: 779, column: 11, scope: !5375)
!5381 = !DILocation(line: 780, column: 4, scope: !5375)
!5382 = !DILocation(line: 780, column: 11, scope: !5375)
!5383 = !DILocation(line: 781, column: 4, scope: !5375)
!5384 = !DILocation(line: 781, column: 11, scope: !5375)
!5385 = !DILocation(line: 782, column: 2, scope: !5375)
!5386 = !DILocation(line: 783, column: 2, scope: !5355)
!5387 = distinct !DISubprogram(name: "nxt200x_read_ber", scope: !3, file: !3, line: 786, type: !4167, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5388 = !DILocalVariable(name: "fe", arg: 1, scope: !5387, file: !3, line: 786, type: !433)
!5389 = !DILocation(line: 786, column: 50, scope: !5387)
!5390 = !DILocalVariable(name: "ber", arg: 2, scope: !5387, file: !3, line: 786, type: !1564)
!5391 = !DILocation(line: 786, column: 59, scope: !5387)
!5392 = !DILocalVariable(name: "state", scope: !5387, file: !3, line: 788, type: !4446)
!5393 = !DILocation(line: 788, column: 24, scope: !5387)
!5394 = !DILocation(line: 788, column: 32, scope: !5387)
!5395 = !DILocation(line: 788, column: 36, scope: !5387)
!5396 = !DILocalVariable(name: "b", scope: !5387, file: !3, line: 789, type: !5397)
!5397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 24, elements: !528)
!5398 = !DILocation(line: 789, column: 5, scope: !5387)
!5399 = !DILocation(line: 791, column: 28, scope: !5387)
!5400 = !DILocation(line: 791, column: 41, scope: !5387)
!5401 = !DILocation(line: 791, column: 2, scope: !5387)
!5402 = !DILocation(line: 793, column: 11, scope: !5387)
!5403 = !DILocation(line: 793, column: 16, scope: !5387)
!5404 = !DILocation(line: 793, column: 24, scope: !5387)
!5405 = !DILocation(line: 793, column: 22, scope: !5387)
!5406 = !DILocation(line: 793, column: 30, scope: !5387)
!5407 = !DILocation(line: 793, column: 3, scope: !5387)
!5408 = !DILocation(line: 793, column: 7, scope: !5387)
!5409 = !DILocation(line: 795, column: 2, scope: !5387)
!5410 = distinct !DISubprogram(name: "nxt200x_read_signal_strength", scope: !3, file: !3, line: 798, type: !4171, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5411 = !DILocalVariable(name: "fe", arg: 1, scope: !5410, file: !3, line: 798, type: !433)
!5412 = !DILocation(line: 798, column: 62, scope: !5410)
!5413 = !DILocalVariable(name: "strength", arg: 2, scope: !5410, file: !3, line: 798, type: !4173)
!5414 = !DILocation(line: 798, column: 71, scope: !5410)
!5415 = !DILocalVariable(name: "state", scope: !5410, file: !3, line: 800, type: !4446)
!5416 = !DILocation(line: 800, column: 24, scope: !5410)
!5417 = !DILocation(line: 800, column: 32, scope: !5410)
!5418 = !DILocation(line: 800, column: 36, scope: !5410)
!5419 = !DILocalVariable(name: "b", scope: !5410, file: !3, line: 801, type: !5420)
!5420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 16, elements: !1723)
!5421 = !DILocation(line: 801, column: 5, scope: !5410)
!5422 = !DILocalVariable(name: "temp", scope: !5410, file: !3, line: 802, type: !300)
!5423 = !DILocation(line: 802, column: 6, scope: !5410)
!5424 = !DILocation(line: 805, column: 2, scope: !5410)
!5425 = !DILocation(line: 805, column: 7, scope: !5410)
!5426 = !DILocation(line: 806, column: 21, scope: !5410)
!5427 = !DILocation(line: 806, column: 34, scope: !5410)
!5428 = !DILocation(line: 806, column: 2, scope: !5410)
!5429 = !DILocation(line: 809, column: 28, scope: !5410)
!5430 = !DILocation(line: 809, column: 41, scope: !5410)
!5431 = !DILocation(line: 809, column: 2, scope: !5410)
!5432 = !DILocation(line: 811, column: 10, scope: !5410)
!5433 = !DILocation(line: 811, column: 15, scope: !5410)
!5434 = !DILocation(line: 811, column: 23, scope: !5410)
!5435 = !DILocation(line: 811, column: 21, scope: !5410)
!5436 = !DILocation(line: 811, column: 9, scope: !5410)
!5437 = !DILocation(line: 811, column: 7, scope: !5410)
!5438 = !DILocation(line: 812, column: 25, scope: !5410)
!5439 = !DILocation(line: 812, column: 23, scope: !5410)
!5440 = !DILocation(line: 812, column: 31, scope: !5410)
!5441 = !DILocation(line: 812, column: 41, scope: !5410)
!5442 = !DILocation(line: 812, column: 14, scope: !5410)
!5443 = !DILocation(line: 812, column: 3, scope: !5410)
!5444 = !DILocation(line: 812, column: 12, scope: !5410)
!5445 = !DILocation(line: 814, column: 2, scope: !5410)
!5446 = distinct !DISubprogram(name: "nxt200x_read_snr", scope: !3, file: !3, line: 817, type: !4171, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5447 = !DILocalVariable(name: "fe", arg: 1, scope: !5446, file: !3, line: 817, type: !433)
!5448 = !DILocation(line: 817, column: 50, scope: !5446)
!5449 = !DILocalVariable(name: "snr", arg: 2, scope: !5446, file: !3, line: 817, type: !4173)
!5450 = !DILocation(line: 817, column: 59, scope: !5446)
!5451 = !DILocalVariable(name: "state", scope: !5446, file: !3, line: 820, type: !4446)
!5452 = !DILocation(line: 820, column: 24, scope: !5446)
!5453 = !DILocation(line: 820, column: 32, scope: !5446)
!5454 = !DILocation(line: 820, column: 36, scope: !5446)
!5455 = !DILocalVariable(name: "b", scope: !5446, file: !3, line: 821, type: !5420)
!5456 = !DILocation(line: 821, column: 5, scope: !5446)
!5457 = !DILocalVariable(name: "temp", scope: !5446, file: !3, line: 822, type: !300)
!5458 = !DILocation(line: 822, column: 6, scope: !5446)
!5459 = !DILocalVariable(name: "temp2", scope: !5446, file: !3, line: 822, type: !300)
!5460 = !DILocation(line: 822, column: 16, scope: !5446)
!5461 = !DILocalVariable(name: "snrdb", scope: !5446, file: !3, line: 823, type: !416)
!5462 = !DILocation(line: 823, column: 6, scope: !5446)
!5463 = !DILocation(line: 826, column: 2, scope: !5446)
!5464 = !DILocation(line: 826, column: 7, scope: !5446)
!5465 = !DILocation(line: 827, column: 21, scope: !5446)
!5466 = !DILocation(line: 827, column: 34, scope: !5446)
!5467 = !DILocation(line: 827, column: 2, scope: !5446)
!5468 = !DILocation(line: 830, column: 28, scope: !5446)
!5469 = !DILocation(line: 830, column: 41, scope: !5446)
!5470 = !DILocation(line: 830, column: 2, scope: !5446)
!5471 = !DILocation(line: 832, column: 10, scope: !5446)
!5472 = !DILocation(line: 832, column: 15, scope: !5446)
!5473 = !DILocation(line: 832, column: 23, scope: !5446)
!5474 = !DILocation(line: 832, column: 21, scope: !5446)
!5475 = !DILocation(line: 832, column: 9, scope: !5446)
!5476 = !DILocation(line: 832, column: 7, scope: !5446)
!5477 = !DILocation(line: 833, column: 19, scope: !5446)
!5478 = !DILocation(line: 833, column: 17, scope: !5446)
!5479 = !DILocation(line: 833, column: 10, scope: !5446)
!5480 = !DILocation(line: 833, column: 8, scope: !5446)
!5481 = !DILocation(line: 836, column: 6, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5446, file: !3, line: 836, column: 6)
!5483 = !DILocation(line: 836, column: 12, scope: !5482)
!5484 = !DILocation(line: 836, column: 6, scope: !5446)
!5485 = !DILocation(line: 837, column: 40, scope: !5482)
!5486 = !DILocation(line: 837, column: 46, scope: !5482)
!5487 = !DILocation(line: 837, column: 36, scope: !5482)
!5488 = !DILocation(line: 837, column: 57, scope: !5482)
!5489 = !DILocation(line: 837, column: 19, scope: !5482)
!5490 = !DILocation(line: 837, column: 9, scope: !5482)
!5491 = !DILocation(line: 837, column: 3, scope: !5482)
!5492 = !DILocation(line: 838, column: 11, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 838, column: 11)
!5494 = !DILocation(line: 838, column: 17, scope: !5493)
!5495 = !DILocation(line: 838, column: 11, scope: !5482)
!5496 = !DILocation(line: 839, column: 40, scope: !5493)
!5497 = !DILocation(line: 839, column: 46, scope: !5493)
!5498 = !DILocation(line: 839, column: 36, scope: !5493)
!5499 = !DILocation(line: 839, column: 57, scope: !5493)
!5500 = !DILocation(line: 839, column: 19, scope: !5493)
!5501 = !DILocation(line: 839, column: 9, scope: !5493)
!5502 = !DILocation(line: 839, column: 3, scope: !5493)
!5503 = !DILocation(line: 840, column: 11, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 840, column: 11)
!5505 = !DILocation(line: 840, column: 17, scope: !5504)
!5506 = !DILocation(line: 840, column: 11, scope: !5493)
!5507 = !DILocation(line: 841, column: 40, scope: !5504)
!5508 = !DILocation(line: 841, column: 46, scope: !5504)
!5509 = !DILocation(line: 841, column: 36, scope: !5504)
!5510 = !DILocation(line: 841, column: 57, scope: !5504)
!5511 = !DILocation(line: 841, column: 19, scope: !5504)
!5512 = !DILocation(line: 841, column: 9, scope: !5504)
!5513 = !DILocation(line: 841, column: 3, scope: !5504)
!5514 = !DILocation(line: 843, column: 38, scope: !5504)
!5515 = !DILocation(line: 843, column: 44, scope: !5504)
!5516 = !DILocation(line: 843, column: 34, scope: !5504)
!5517 = !DILocation(line: 843, column: 50, scope: !5504)
!5518 = !DILocation(line: 843, column: 18, scope: !5504)
!5519 = !DILocation(line: 843, column: 9, scope: !5504)
!5520 = !DILocation(line: 846, column: 9, scope: !5446)
!5521 = !DILocation(line: 846, column: 15, scope: !5446)
!5522 = !DILocation(line: 846, column: 3, scope: !5446)
!5523 = !DILocation(line: 846, column: 7, scope: !5446)
!5524 = !DILocation(line: 848, column: 2, scope: !5446)
!5525 = distinct !DISubprogram(name: "nxt200x_read_ucblocks", scope: !3, file: !3, line: 851, type: !4167, scopeLine: 852, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5526 = !DILocalVariable(name: "fe", arg: 1, scope: !5525, file: !3, line: 851, type: !433)
!5527 = !DILocation(line: 851, column: 55, scope: !5525)
!5528 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !5525, file: !3, line: 851, type: !1564)
!5529 = !DILocation(line: 851, column: 64, scope: !5525)
!5530 = !DILocalVariable(name: "state", scope: !5525, file: !3, line: 853, type: !4446)
!5531 = !DILocation(line: 853, column: 24, scope: !5525)
!5532 = !DILocation(line: 853, column: 32, scope: !5525)
!5533 = !DILocation(line: 853, column: 36, scope: !5525)
!5534 = !DILocalVariable(name: "b", scope: !5525, file: !3, line: 854, type: !5397)
!5535 = !DILocation(line: 854, column: 5, scope: !5525)
!5536 = !DILocation(line: 856, column: 28, scope: !5525)
!5537 = !DILocation(line: 856, column: 41, scope: !5525)
!5538 = !DILocation(line: 856, column: 2, scope: !5525)
!5539 = !DILocation(line: 857, column: 14, scope: !5525)
!5540 = !DILocation(line: 857, column: 3, scope: !5525)
!5541 = !DILocation(line: 857, column: 12, scope: !5525)
!5542 = !DILocation(line: 859, column: 2, scope: !5525)
!5543 = distinct !DISubprogram(name: "nxt2002_init", scope: !3, file: !3, line: 867, type: !4127, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5544 = !DILocalVariable(name: "fe", arg: 1, scope: !5543, file: !3, line: 867, type: !433)
!5545 = !DILocation(line: 867, column: 46, scope: !5543)
!5546 = !DILocalVariable(name: "state", scope: !5543, file: !3, line: 869, type: !4446)
!5547 = !DILocation(line: 869, column: 24, scope: !5543)
!5548 = !DILocation(line: 869, column: 32, scope: !5543)
!5549 = !DILocation(line: 869, column: 36, scope: !5543)
!5550 = !DILocalVariable(name: "fw", scope: !5543, file: !3, line: 870, type: !5551)
!5551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5552, size: 64)
!5552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5553)
!5553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !5554, line: 12, size: 192, elements: !5555)
!5554 = !DIFile(filename: "./include/linux/firmware.h", directory: "/home/lizy2001/genbc/linux")
!5555 = !{!5556, !5557, !5558}
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5553, file: !5554, line: 13, baseType: !573, size: 64)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5553, file: !5554, line: 14, baseType: !4134, size: 64, offset: 64)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5553, file: !5554, line: 17, baseType: !299, size: 64, offset: 128)
!5559 = !DILocation(line: 870, column: 25, scope: !5543)
!5560 = !DILocalVariable(name: "ret", scope: !5543, file: !3, line: 871, type: !330)
!5561 = !DILocation(line: 871, column: 6, scope: !5543)
!5562 = !DILocalVariable(name: "buf", scope: !5543, file: !3, line: 872, type: !5420)
!5563 = !DILocation(line: 872, column: 5, scope: !5543)
!5564 = !DILocation(line: 875, column: 2, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 875, column: 2)
!5566 = distinct !DILexicalBlock(scope: !5543, file: !3, line: 875, column: 2)
!5567 = !DILocation(line: 875, column: 2, scope: !5566)
!5568 = !DILocation(line: 878, column: 11, scope: !5543)
!5569 = !DILocation(line: 878, column: 18, scope: !5543)
!5570 = !DILocation(line: 878, column: 23, scope: !5543)
!5571 = !DILocation(line: 878, column: 27, scope: !5543)
!5572 = !DILocation(line: 877, column: 8, scope: !5543)
!5573 = !DILocation(line: 877, column: 6, scope: !5543)
!5574 = !DILocation(line: 879, column: 2, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 879, column: 2)
!5576 = distinct !DILexicalBlock(scope: !5543, file: !3, line: 879, column: 2)
!5577 = !DILocation(line: 879, column: 2, scope: !5576)
!5578 = !DILocation(line: 880, column: 6, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5543, file: !3, line: 880, column: 6)
!5580 = !DILocation(line: 880, column: 6, scope: !5543)
!5581 = !DILocation(line: 881, column: 3, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 880, column: 11)
!5583 = !DILocation(line: 883, column: 10, scope: !5582)
!5584 = !DILocation(line: 883, column: 3, scope: !5582)
!5585 = !DILocation(line: 886, column: 30, scope: !5543)
!5586 = !DILocation(line: 886, column: 34, scope: !5543)
!5587 = !DILocation(line: 886, column: 8, scope: !5543)
!5588 = !DILocation(line: 886, column: 6, scope: !5543)
!5589 = !DILocation(line: 887, column: 19, scope: !5543)
!5590 = !DILocation(line: 887, column: 2, scope: !5543)
!5591 = !DILocation(line: 888, column: 6, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5543, file: !3, line: 888, column: 6)
!5593 = !DILocation(line: 888, column: 6, scope: !5543)
!5594 = !DILocation(line: 889, column: 3, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5592, file: !3, line: 888, column: 11)
!5596 = !DILocation(line: 890, column: 10, scope: !5595)
!5597 = !DILocation(line: 890, column: 3, scope: !5595)
!5598 = !DILocation(line: 892, column: 2, scope: !5543)
!5599 = !DILocation(line: 895, column: 31, scope: !5543)
!5600 = !DILocation(line: 895, column: 2, scope: !5543)
!5601 = !DILocation(line: 898, column: 2, scope: !5543)
!5602 = !DILocation(line: 898, column: 8, scope: !5543)
!5603 = !DILocation(line: 899, column: 21, scope: !5543)
!5604 = !DILocation(line: 899, column: 34, scope: !5543)
!5605 = !DILocation(line: 899, column: 2, scope: !5543)
!5606 = !DILocation(line: 902, column: 31, scope: !5543)
!5607 = !DILocation(line: 902, column: 2, scope: !5543)
!5608 = !DILocation(line: 905, column: 2, scope: !5543)
!5609 = !DILocation(line: 905, column: 9, scope: !5543)
!5610 = !DILocation(line: 906, column: 21, scope: !5543)
!5611 = !DILocation(line: 906, column: 34, scope: !5543)
!5612 = !DILocation(line: 906, column: 2, scope: !5543)
!5613 = !DILocation(line: 907, column: 2, scope: !5543)
!5614 = !DILocation(line: 907, column: 9, scope: !5543)
!5615 = !DILocation(line: 908, column: 21, scope: !5543)
!5616 = !DILocation(line: 908, column: 34, scope: !5543)
!5617 = !DILocation(line: 908, column: 2, scope: !5543)
!5618 = !DILocation(line: 911, column: 2, scope: !5543)
!5619 = !DILocation(line: 911, column: 9, scope: !5543)
!5620 = !DILocation(line: 912, column: 21, scope: !5543)
!5621 = !DILocation(line: 912, column: 34, scope: !5543)
!5622 = !DILocation(line: 912, column: 2, scope: !5543)
!5623 = !DILocation(line: 915, column: 2, scope: !5543)
!5624 = !DILocation(line: 915, column: 9, scope: !5543)
!5625 = !DILocation(line: 916, column: 21, scope: !5543)
!5626 = !DILocation(line: 916, column: 34, scope: !5543)
!5627 = !DILocation(line: 916, column: 2, scope: !5543)
!5628 = !DILocation(line: 919, column: 2, scope: !5543)
!5629 = !DILocation(line: 919, column: 9, scope: !5543)
!5630 = !DILocation(line: 920, column: 2, scope: !5543)
!5631 = !DILocation(line: 920, column: 9, scope: !5543)
!5632 = !DILocation(line: 921, column: 21, scope: !5543)
!5633 = !DILocation(line: 921, column: 34, scope: !5543)
!5634 = !DILocation(line: 921, column: 2, scope: !5543)
!5635 = !DILocation(line: 924, column: 2, scope: !5543)
!5636 = !DILocation(line: 924, column: 9, scope: !5543)
!5637 = !DILocation(line: 925, column: 21, scope: !5543)
!5638 = !DILocation(line: 925, column: 34, scope: !5543)
!5639 = !DILocation(line: 925, column: 2, scope: !5543)
!5640 = !DILocation(line: 927, column: 2, scope: !5543)
!5641 = !DILocation(line: 928, column: 1, scope: !5543)
!5642 = distinct !DISubprogram(name: "nxt2004_init", scope: !3, file: !3, line: 930, type: !4127, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5643 = !DILocalVariable(name: "fe", arg: 1, scope: !5642, file: !3, line: 930, type: !433)
!5644 = !DILocation(line: 930, column: 46, scope: !5642)
!5645 = !DILocalVariable(name: "state", scope: !5642, file: !3, line: 932, type: !4446)
!5646 = !DILocation(line: 932, column: 24, scope: !5642)
!5647 = !DILocation(line: 932, column: 32, scope: !5642)
!5648 = !DILocation(line: 932, column: 36, scope: !5642)
!5649 = !DILocalVariable(name: "fw", scope: !5642, file: !3, line: 933, type: !5551)
!5650 = !DILocation(line: 933, column: 25, scope: !5642)
!5651 = !DILocalVariable(name: "ret", scope: !5642, file: !3, line: 934, type: !330)
!5652 = !DILocation(line: 934, column: 6, scope: !5642)
!5653 = !DILocalVariable(name: "buf", scope: !5642, file: !3, line: 935, type: !5397)
!5654 = !DILocation(line: 935, column: 5, scope: !5642)
!5655 = !DILocation(line: 938, column: 2, scope: !5642)
!5656 = !DILocation(line: 938, column: 8, scope: !5642)
!5657 = !DILocation(line: 939, column: 21, scope: !5642)
!5658 = !DILocation(line: 939, column: 34, scope: !5642)
!5659 = !DILocation(line: 939, column: 2, scope: !5642)
!5660 = !DILocation(line: 942, column: 2, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 942, column: 2)
!5662 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 942, column: 2)
!5663 = !DILocation(line: 942, column: 2, scope: !5662)
!5664 = !DILocation(line: 945, column: 11, scope: !5642)
!5665 = !DILocation(line: 945, column: 18, scope: !5642)
!5666 = !DILocation(line: 945, column: 23, scope: !5642)
!5667 = !DILocation(line: 945, column: 27, scope: !5642)
!5668 = !DILocation(line: 944, column: 8, scope: !5642)
!5669 = !DILocation(line: 944, column: 6, scope: !5642)
!5670 = !DILocation(line: 946, column: 2, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 946, column: 2)
!5672 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 946, column: 2)
!5673 = !DILocation(line: 946, column: 2, scope: !5672)
!5674 = !DILocation(line: 947, column: 6, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 947, column: 6)
!5676 = !DILocation(line: 947, column: 6, scope: !5642)
!5677 = !DILocation(line: 948, column: 3, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 947, column: 11)
!5679 = !DILocation(line: 950, column: 10, scope: !5678)
!5680 = !DILocation(line: 950, column: 3, scope: !5678)
!5681 = !DILocation(line: 953, column: 30, scope: !5642)
!5682 = !DILocation(line: 953, column: 34, scope: !5642)
!5683 = !DILocation(line: 953, column: 8, scope: !5642)
!5684 = !DILocation(line: 953, column: 6, scope: !5642)
!5685 = !DILocation(line: 954, column: 19, scope: !5642)
!5686 = !DILocation(line: 954, column: 2, scope: !5642)
!5687 = !DILocation(line: 955, column: 6, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 955, column: 6)
!5689 = !DILocation(line: 955, column: 6, scope: !5642)
!5690 = !DILocation(line: 956, column: 3, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5688, file: !3, line: 955, column: 11)
!5692 = !DILocation(line: 957, column: 10, scope: !5691)
!5693 = !DILocation(line: 957, column: 3, scope: !5691)
!5694 = !DILocation(line: 959, column: 2, scope: !5642)
!5695 = !DILocation(line: 962, column: 2, scope: !5642)
!5696 = !DILocation(line: 962, column: 9, scope: !5642)
!5697 = !DILocation(line: 963, column: 21, scope: !5642)
!5698 = !DILocation(line: 963, column: 34, scope: !5642)
!5699 = !DILocation(line: 963, column: 2, scope: !5642)
!5700 = !DILocation(line: 965, column: 31, scope: !5642)
!5701 = !DILocation(line: 965, column: 2, scope: !5642)
!5702 = !DILocation(line: 966, column: 31, scope: !5642)
!5703 = !DILocation(line: 966, column: 2, scope: !5642)
!5704 = !DILocation(line: 967, column: 31, scope: !5642)
!5705 = !DILocation(line: 967, column: 2, scope: !5642)
!5706 = !DILocation(line: 968, column: 31, scope: !5642)
!5707 = !DILocation(line: 968, column: 2, scope: !5642)
!5708 = !DILocation(line: 969, column: 31, scope: !5642)
!5709 = !DILocation(line: 969, column: 2, scope: !5642)
!5710 = !DILocation(line: 972, column: 2, scope: !5642)
!5711 = !DILocation(line: 972, column: 9, scope: !5642)
!5712 = !DILocation(line: 973, column: 29, scope: !5642)
!5713 = !DILocation(line: 973, column: 42, scope: !5642)
!5714 = !DILocation(line: 973, column: 2, scope: !5642)
!5715 = !DILocation(line: 974, column: 2, scope: !5642)
!5716 = !DILocation(line: 974, column: 9, scope: !5642)
!5717 = !DILocation(line: 975, column: 29, scope: !5642)
!5718 = !DILocation(line: 975, column: 42, scope: !5642)
!5719 = !DILocation(line: 975, column: 2, scope: !5642)
!5720 = !DILocation(line: 978, column: 2, scope: !5642)
!5721 = !DILocation(line: 978, column: 9, scope: !5642)
!5722 = !DILocation(line: 979, column: 21, scope: !5642)
!5723 = !DILocation(line: 979, column: 34, scope: !5642)
!5724 = !DILocation(line: 979, column: 2, scope: !5642)
!5725 = !DILocation(line: 982, column: 2, scope: !5642)
!5726 = !DILocation(line: 982, column: 9, scope: !5642)
!5727 = !DILocation(line: 983, column: 2, scope: !5642)
!5728 = !DILocation(line: 983, column: 9, scope: !5642)
!5729 = !DILocation(line: 984, column: 21, scope: !5642)
!5730 = !DILocation(line: 984, column: 34, scope: !5642)
!5731 = !DILocation(line: 984, column: 2, scope: !5642)
!5732 = !DILocation(line: 985, column: 2, scope: !5642)
!5733 = !DILocation(line: 985, column: 9, scope: !5642)
!5734 = !DILocation(line: 986, column: 21, scope: !5642)
!5735 = !DILocation(line: 986, column: 34, scope: !5642)
!5736 = !DILocation(line: 986, column: 2, scope: !5642)
!5737 = !DILocation(line: 987, column: 2, scope: !5642)
!5738 = !DILocation(line: 987, column: 9, scope: !5642)
!5739 = !DILocation(line: 988, column: 21, scope: !5642)
!5740 = !DILocation(line: 988, column: 34, scope: !5642)
!5741 = !DILocation(line: 988, column: 2, scope: !5642)
!5742 = !DILocation(line: 991, column: 2, scope: !5642)
!5743 = !DILocation(line: 991, column: 9, scope: !5642)
!5744 = !DILocation(line: 992, column: 21, scope: !5642)
!5745 = !DILocation(line: 992, column: 34, scope: !5642)
!5746 = !DILocation(line: 992, column: 2, scope: !5642)
!5747 = !DILocation(line: 995, column: 2, scope: !5642)
!5748 = !DILocation(line: 995, column: 9, scope: !5642)
!5749 = !DILocation(line: 996, column: 29, scope: !5642)
!5750 = !DILocation(line: 996, column: 42, scope: !5642)
!5751 = !DILocation(line: 996, column: 2, scope: !5642)
!5752 = !DILocation(line: 999, column: 2, scope: !5642)
!5753 = !DILocation(line: 999, column: 9, scope: !5642)
!5754 = !DILocation(line: 1000, column: 2, scope: !5642)
!5755 = !DILocation(line: 1000, column: 9, scope: !5642)
!5756 = !DILocation(line: 1001, column: 21, scope: !5642)
!5757 = !DILocation(line: 1001, column: 34, scope: !5642)
!5758 = !DILocation(line: 1001, column: 2, scope: !5642)
!5759 = !DILocation(line: 1004, column: 2, scope: !5642)
!5760 = !DILocation(line: 1004, column: 9, scope: !5642)
!5761 = !DILocation(line: 1005, column: 21, scope: !5642)
!5762 = !DILocation(line: 1005, column: 34, scope: !5642)
!5763 = !DILocation(line: 1005, column: 2, scope: !5642)
!5764 = !DILocation(line: 1008, column: 28, scope: !5642)
!5765 = !DILocation(line: 1008, column: 41, scope: !5642)
!5766 = !DILocation(line: 1008, column: 2, scope: !5642)
!5767 = !DILocation(line: 1009, column: 2, scope: !5642)
!5768 = !DILocation(line: 1009, column: 9, scope: !5642)
!5769 = !DILocation(line: 1010, column: 29, scope: !5642)
!5770 = !DILocation(line: 1010, column: 42, scope: !5642)
!5771 = !DILocation(line: 1010, column: 2, scope: !5642)
!5772 = !DILocation(line: 1013, column: 28, scope: !5642)
!5773 = !DILocation(line: 1013, column: 41, scope: !5642)
!5774 = !DILocation(line: 1013, column: 2, scope: !5642)
!5775 = !DILocation(line: 1014, column: 2, scope: !5642)
!5776 = !DILocation(line: 1014, column: 9, scope: !5642)
!5777 = !DILocation(line: 1015, column: 29, scope: !5642)
!5778 = !DILocation(line: 1015, column: 42, scope: !5642)
!5779 = !DILocation(line: 1015, column: 2, scope: !5642)
!5780 = !DILocation(line: 1016, column: 28, scope: !5642)
!5781 = !DILocation(line: 1016, column: 41, scope: !5642)
!5782 = !DILocation(line: 1016, column: 2, scope: !5642)
!5783 = !DILocation(line: 1017, column: 2, scope: !5642)
!5784 = !DILocation(line: 1017, column: 9, scope: !5642)
!5785 = !DILocation(line: 1018, column: 29, scope: !5642)
!5786 = !DILocation(line: 1018, column: 42, scope: !5642)
!5787 = !DILocation(line: 1018, column: 2, scope: !5642)
!5788 = !DILocation(line: 1021, column: 28, scope: !5642)
!5789 = !DILocation(line: 1021, column: 41, scope: !5642)
!5790 = !DILocation(line: 1021, column: 2, scope: !5642)
!5791 = !DILocation(line: 1022, column: 2, scope: !5642)
!5792 = !DILocation(line: 1022, column: 9, scope: !5642)
!5793 = !DILocation(line: 1023, column: 29, scope: !5642)
!5794 = !DILocation(line: 1023, column: 42, scope: !5642)
!5795 = !DILocation(line: 1023, column: 2, scope: !5642)
!5796 = !DILocation(line: 1024, column: 2, scope: !5642)
!5797 = !DILocation(line: 1024, column: 9, scope: !5642)
!5798 = !DILocation(line: 1025, column: 29, scope: !5642)
!5799 = !DILocation(line: 1025, column: 42, scope: !5642)
!5800 = !DILocation(line: 1025, column: 2, scope: !5642)
!5801 = !DILocation(line: 1026, column: 2, scope: !5642)
!5802 = !DILocation(line: 1026, column: 9, scope: !5642)
!5803 = !DILocation(line: 1026, column: 17, scope: !5642)
!5804 = !DILocation(line: 1026, column: 24, scope: !5642)
!5805 = !DILocation(line: 1026, column: 32, scope: !5642)
!5806 = !DILocation(line: 1026, column: 39, scope: !5642)
!5807 = !DILocation(line: 1027, column: 29, scope: !5642)
!5808 = !DILocation(line: 1027, column: 42, scope: !5642)
!5809 = !DILocation(line: 1027, column: 2, scope: !5642)
!5810 = !DILocation(line: 1029, column: 28, scope: !5642)
!5811 = !DILocation(line: 1029, column: 41, scope: !5642)
!5812 = !DILocation(line: 1029, column: 2, scope: !5642)
!5813 = !DILocation(line: 1030, column: 2, scope: !5642)
!5814 = !DILocation(line: 1030, column: 9, scope: !5642)
!5815 = !DILocation(line: 1031, column: 29, scope: !5642)
!5816 = !DILocation(line: 1031, column: 42, scope: !5642)
!5817 = !DILocation(line: 1031, column: 2, scope: !5642)
!5818 = !DILocation(line: 1032, column: 28, scope: !5642)
!5819 = !DILocation(line: 1032, column: 41, scope: !5642)
!5820 = !DILocation(line: 1032, column: 2, scope: !5642)
!5821 = !DILocation(line: 1033, column: 2, scope: !5642)
!5822 = !DILocation(line: 1033, column: 9, scope: !5642)
!5823 = !DILocation(line: 1034, column: 29, scope: !5642)
!5824 = !DILocation(line: 1034, column: 42, scope: !5642)
!5825 = !DILocation(line: 1034, column: 2, scope: !5642)
!5826 = !DILocation(line: 1036, column: 20, scope: !5642)
!5827 = !DILocation(line: 1036, column: 33, scope: !5642)
!5828 = !DILocation(line: 1036, column: 2, scope: !5642)
!5829 = !DILocation(line: 1037, column: 2, scope: !5642)
!5830 = !DILocation(line: 1037, column: 9, scope: !5642)
!5831 = !DILocation(line: 1038, column: 21, scope: !5642)
!5832 = !DILocation(line: 1038, column: 34, scope: !5642)
!5833 = !DILocation(line: 1038, column: 2, scope: !5642)
!5834 = !DILocation(line: 1039, column: 20, scope: !5642)
!5835 = !DILocation(line: 1039, column: 33, scope: !5642)
!5836 = !DILocation(line: 1039, column: 2, scope: !5642)
!5837 = !DILocation(line: 1040, column: 2, scope: !5642)
!5838 = !DILocation(line: 1040, column: 9, scope: !5642)
!5839 = !DILocation(line: 1041, column: 21, scope: !5642)
!5840 = !DILocation(line: 1041, column: 34, scope: !5642)
!5841 = !DILocation(line: 1041, column: 2, scope: !5642)
!5842 = !DILocation(line: 1043, column: 31, scope: !5642)
!5843 = !DILocation(line: 1043, column: 2, scope: !5642)
!5844 = !DILocation(line: 1045, column: 2, scope: !5642)
!5845 = !DILocation(line: 1045, column: 9, scope: !5642)
!5846 = !DILocation(line: 1046, column: 21, scope: !5642)
!5847 = !DILocation(line: 1046, column: 34, scope: !5642)
!5848 = !DILocation(line: 1046, column: 2, scope: !5642)
!5849 = !DILocation(line: 1047, column: 2, scope: !5642)
!5850 = !DILocation(line: 1047, column: 9, scope: !5642)
!5851 = !DILocation(line: 1048, column: 21, scope: !5642)
!5852 = !DILocation(line: 1048, column: 34, scope: !5642)
!5853 = !DILocation(line: 1048, column: 2, scope: !5642)
!5854 = !DILocation(line: 1049, column: 2, scope: !5642)
!5855 = !DILocation(line: 1049, column: 9, scope: !5642)
!5856 = !DILocation(line: 1050, column: 21, scope: !5642)
!5857 = !DILocation(line: 1050, column: 34, scope: !5642)
!5858 = !DILocation(line: 1050, column: 2, scope: !5642)
!5859 = !DILocation(line: 1052, column: 28, scope: !5642)
!5860 = !DILocation(line: 1052, column: 41, scope: !5642)
!5861 = !DILocation(line: 1052, column: 2, scope: !5642)
!5862 = !DILocation(line: 1053, column: 2, scope: !5642)
!5863 = !DILocation(line: 1053, column: 9, scope: !5642)
!5864 = !DILocation(line: 1054, column: 29, scope: !5642)
!5865 = !DILocation(line: 1054, column: 42, scope: !5642)
!5866 = !DILocation(line: 1054, column: 2, scope: !5642)
!5867 = !DILocation(line: 1055, column: 28, scope: !5642)
!5868 = !DILocation(line: 1055, column: 41, scope: !5642)
!5869 = !DILocation(line: 1055, column: 2, scope: !5642)
!5870 = !DILocation(line: 1056, column: 2, scope: !5642)
!5871 = !DILocation(line: 1056, column: 9, scope: !5642)
!5872 = !DILocation(line: 1057, column: 29, scope: !5642)
!5873 = !DILocation(line: 1057, column: 42, scope: !5642)
!5874 = !DILocation(line: 1057, column: 2, scope: !5642)
!5875 = !DILocation(line: 1060, column: 28, scope: !5642)
!5876 = !DILocation(line: 1060, column: 41, scope: !5642)
!5877 = !DILocation(line: 1060, column: 2, scope: !5642)
!5878 = !DILocation(line: 1061, column: 2, scope: !5642)
!5879 = !DILocation(line: 1061, column: 9, scope: !5642)
!5880 = !DILocation(line: 1062, column: 29, scope: !5642)
!5881 = !DILocation(line: 1062, column: 42, scope: !5642)
!5882 = !DILocation(line: 1062, column: 2, scope: !5642)
!5883 = !DILocation(line: 1063, column: 28, scope: !5642)
!5884 = !DILocation(line: 1063, column: 41, scope: !5642)
!5885 = !DILocation(line: 1063, column: 2, scope: !5642)
!5886 = !DILocation(line: 1064, column: 2, scope: !5642)
!5887 = !DILocation(line: 1064, column: 9, scope: !5642)
!5888 = !DILocation(line: 1065, column: 29, scope: !5642)
!5889 = !DILocation(line: 1065, column: 42, scope: !5642)
!5890 = !DILocation(line: 1065, column: 2, scope: !5642)
!5891 = !DILocation(line: 1067, column: 28, scope: !5642)
!5892 = !DILocation(line: 1067, column: 41, scope: !5642)
!5893 = !DILocation(line: 1067, column: 2, scope: !5642)
!5894 = !DILocation(line: 1068, column: 2, scope: !5642)
!5895 = !DILocation(line: 1068, column: 9, scope: !5642)
!5896 = !DILocation(line: 1069, column: 29, scope: !5642)
!5897 = !DILocation(line: 1069, column: 42, scope: !5642)
!5898 = !DILocation(line: 1069, column: 2, scope: !5642)
!5899 = !DILocation(line: 1070, column: 2, scope: !5642)
!5900 = !DILocation(line: 1070, column: 9, scope: !5642)
!5901 = !DILocation(line: 1071, column: 29, scope: !5642)
!5902 = !DILocation(line: 1071, column: 42, scope: !5642)
!5903 = !DILocation(line: 1071, column: 2, scope: !5642)
!5904 = !DILocation(line: 1072, column: 2, scope: !5642)
!5905 = !DILocation(line: 1072, column: 9, scope: !5642)
!5906 = !DILocation(line: 1072, column: 17, scope: !5642)
!5907 = !DILocation(line: 1072, column: 24, scope: !5642)
!5908 = !DILocation(line: 1072, column: 32, scope: !5642)
!5909 = !DILocation(line: 1072, column: 39, scope: !5642)
!5910 = !DILocation(line: 1073, column: 29, scope: !5642)
!5911 = !DILocation(line: 1073, column: 42, scope: !5642)
!5912 = !DILocation(line: 1073, column: 2, scope: !5642)
!5913 = !DILocation(line: 1075, column: 28, scope: !5642)
!5914 = !DILocation(line: 1075, column: 41, scope: !5642)
!5915 = !DILocation(line: 1075, column: 2, scope: !5642)
!5916 = !DILocation(line: 1076, column: 2, scope: !5642)
!5917 = !DILocation(line: 1076, column: 9, scope: !5642)
!5918 = !DILocation(line: 1077, column: 29, scope: !5642)
!5919 = !DILocation(line: 1077, column: 42, scope: !5642)
!5920 = !DILocation(line: 1077, column: 2, scope: !5642)
!5921 = !DILocation(line: 1079, column: 28, scope: !5642)
!5922 = !DILocation(line: 1079, column: 41, scope: !5642)
!5923 = !DILocation(line: 1079, column: 2, scope: !5642)
!5924 = !DILocation(line: 1080, column: 2, scope: !5642)
!5925 = !DILocation(line: 1080, column: 9, scope: !5642)
!5926 = !DILocation(line: 1081, column: 29, scope: !5642)
!5927 = !DILocation(line: 1081, column: 42, scope: !5642)
!5928 = !DILocation(line: 1081, column: 2, scope: !5642)
!5929 = !DILocation(line: 1084, column: 20, scope: !5642)
!5930 = !DILocation(line: 1084, column: 33, scope: !5642)
!5931 = !DILocation(line: 1084, column: 2, scope: !5642)
!5932 = !DILocation(line: 1085, column: 2, scope: !5642)
!5933 = !DILocation(line: 1085, column: 9, scope: !5642)
!5934 = !DILocation(line: 1086, column: 21, scope: !5642)
!5935 = !DILocation(line: 1086, column: 34, scope: !5642)
!5936 = !DILocation(line: 1086, column: 2, scope: !5642)
!5937 = !DILocation(line: 1087, column: 2, scope: !5642)
!5938 = !DILocation(line: 1087, column: 9, scope: !5642)
!5939 = !DILocation(line: 1088, column: 21, scope: !5642)
!5940 = !DILocation(line: 1088, column: 34, scope: !5642)
!5941 = !DILocation(line: 1088, column: 2, scope: !5642)
!5942 = !DILocation(line: 1089, column: 2, scope: !5642)
!5943 = !DILocation(line: 1089, column: 9, scope: !5642)
!5944 = !DILocation(line: 1090, column: 21, scope: !5642)
!5945 = !DILocation(line: 1090, column: 34, scope: !5642)
!5946 = !DILocation(line: 1090, column: 2, scope: !5642)
!5947 = !DILocation(line: 1091, column: 2, scope: !5642)
!5948 = !DILocation(line: 1091, column: 9, scope: !5642)
!5949 = !DILocation(line: 1092, column: 21, scope: !5642)
!5950 = !DILocation(line: 1092, column: 34, scope: !5642)
!5951 = !DILocation(line: 1092, column: 2, scope: !5642)
!5952 = !DILocation(line: 1093, column: 2, scope: !5642)
!5953 = !DILocation(line: 1093, column: 9, scope: !5642)
!5954 = !DILocation(line: 1094, column: 21, scope: !5642)
!5955 = !DILocation(line: 1094, column: 34, scope: !5642)
!5956 = !DILocation(line: 1094, column: 2, scope: !5642)
!5957 = !DILocation(line: 1095, column: 21, scope: !5642)
!5958 = !DILocation(line: 1095, column: 34, scope: !5642)
!5959 = !DILocation(line: 1095, column: 2, scope: !5642)
!5960 = !DILocation(line: 1096, column: 21, scope: !5642)
!5961 = !DILocation(line: 1096, column: 34, scope: !5642)
!5962 = !DILocation(line: 1096, column: 2, scope: !5642)
!5963 = !DILocation(line: 1097, column: 21, scope: !5642)
!5964 = !DILocation(line: 1097, column: 34, scope: !5642)
!5965 = !DILocation(line: 1097, column: 2, scope: !5642)
!5966 = !DILocation(line: 1099, column: 2, scope: !5642)
!5967 = !DILocation(line: 1100, column: 1, scope: !5642)
!5968 = distinct !DISubprogram(name: "nxt2002_load_firmware", scope: !3, file: !3, line: 407, type: !5969, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5969 = !DISubroutineType(types: !5970)
!5970 = !{!330, !433, !5551}
!5971 = !DILocalVariable(name: "fe", arg: 1, scope: !5968, file: !3, line: 407, type: !433)
!5972 = !DILocation(line: 407, column: 56, scope: !5968)
!5973 = !DILocalVariable(name: "fw", arg: 2, scope: !5968, file: !3, line: 407, type: !5551)
!5974 = !DILocation(line: 407, column: 83, scope: !5968)
!5975 = !DILocalVariable(name: "state", scope: !5968, file: !3, line: 410, type: !4446)
!5976 = !DILocation(line: 410, column: 24, scope: !5968)
!5977 = !DILocation(line: 410, column: 32, scope: !5968)
!5978 = !DILocation(line: 410, column: 36, scope: !5968)
!5979 = !DILocalVariable(name: "buf", scope: !5968, file: !3, line: 411, type: !5397)
!5980 = !DILocation(line: 411, column: 5, scope: !5968)
!5981 = !DILocalVariable(name: "written", scope: !5968, file: !3, line: 411, type: !348)
!5982 = !DILocation(line: 411, column: 13, scope: !5968)
!5983 = !DILocalVariable(name: "chunkpos", scope: !5968, file: !3, line: 411, type: !348)
!5984 = !DILocation(line: 411, column: 26, scope: !5968)
!5985 = !DILocalVariable(name: "rambase", scope: !5968, file: !3, line: 412, type: !300)
!5986 = !DILocation(line: 412, column: 6, scope: !5968)
!5987 = !DILocalVariable(name: "position", scope: !5968, file: !3, line: 412, type: !300)
!5988 = !DILocation(line: 412, column: 15, scope: !5968)
!5989 = !DILocalVariable(name: "crc", scope: !5968, file: !3, line: 412, type: !300)
!5990 = !DILocation(line: 412, column: 25, scope: !5968)
!5991 = !DILocation(line: 414, column: 2, scope: !5968)
!5992 = !DILocation(line: 414, column: 2, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 414, column: 2)
!5994 = distinct !DILexicalBlock(scope: !5968, file: !3, line: 414, column: 2)
!5995 = !DILocation(line: 414, column: 2, scope: !5994)
!5996 = !DILocation(line: 414, column: 2, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5998, file: !3, line: 414, column: 2)
!5998 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 414, column: 2)
!5999 = !DILocation(line: 414, column: 2, scope: !5998)
!6000 = !DILocation(line: 415, column: 2, scope: !5968)
!6001 = !DILocation(line: 415, column: 2, scope: !6002)
!6002 = distinct !DILexicalBlock(scope: !6003, file: !3, line: 415, column: 2)
!6003 = distinct !DILexicalBlock(scope: !5968, file: !3, line: 415, column: 2)
!6004 = !DILocation(line: 415, column: 2, scope: !6003)
!6005 = !DILocation(line: 415, column: 2, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !6007, file: !3, line: 415, column: 2)
!6007 = distinct !DILexicalBlock(scope: !6002, file: !3, line: 415, column: 2)
!6008 = !DILocation(line: 415, column: 2, scope: !6007)
!6009 = !DILocation(line: 418, column: 20, scope: !5968)
!6010 = !DILocation(line: 418, column: 33, scope: !5968)
!6011 = !DILocation(line: 418, column: 2, scope: !5968)
!6012 = !DILocation(line: 420, column: 6, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !5968, file: !3, line: 420, column: 6)
!6014 = !DILocation(line: 420, column: 13, scope: !6013)
!6015 = !DILocation(line: 420, column: 6, scope: !5968)
!6016 = !DILocation(line: 421, column: 11, scope: !6013)
!6017 = !DILocation(line: 421, column: 3, scope: !6013)
!6018 = !DILocation(line: 423, column: 11, scope: !6013)
!6019 = !DILocation(line: 425, column: 2, scope: !5968)
!6020 = !DILocation(line: 425, column: 2, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !6022, file: !3, line: 425, column: 2)
!6022 = distinct !DILexicalBlock(scope: !5968, file: !3, line: 425, column: 2)
!6023 = !DILocation(line: 425, column: 2, scope: !6022)
!6024 = !DILocation(line: 425, column: 2, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !6026, file: !3, line: 425, column: 2)
!6026 = distinct !DILexicalBlock(scope: !6021, file: !3, line: 425, column: 2)
!6027 = !DILocation(line: 425, column: 2, scope: !6026)
!6028 = !DILocation(line: 428, column: 2, scope: !5968)
!6029 = !DILocation(line: 428, column: 9, scope: !5968)
!6030 = !DILocation(line: 429, column: 21, scope: !5968)
!6031 = !DILocation(line: 429, column: 34, scope: !5968)
!6032 = !DILocation(line: 429, column: 2, scope: !5968)
!6033 = !DILocation(line: 431, column: 16, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !5968, file: !3, line: 431, column: 2)
!6035 = !DILocation(line: 431, column: 7, scope: !6034)
!6036 = !DILocation(line: 431, column: 21, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !6034, file: !3, line: 431, column: 2)
!6038 = !DILocation(line: 431, column: 32, scope: !6037)
!6039 = !DILocation(line: 431, column: 36, scope: !6037)
!6040 = !DILocation(line: 431, column: 30, scope: !6037)
!6041 = !DILocation(line: 431, column: 2, scope: !6034)
!6042 = !DILocation(line: 432, column: 7, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6044, file: !3, line: 432, column: 7)
!6044 = distinct !DILexicalBlock(scope: !6037, file: !3, line: 431, column: 54)
!6045 = !DILocation(line: 432, column: 15, scope: !6043)
!6046 = !DILocation(line: 432, column: 7, scope: !6044)
!6047 = !DILocation(line: 433, column: 8, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6043, file: !3, line: 432, column: 21)
!6049 = !DILocation(line: 434, column: 13, scope: !6048)
!6050 = !DILocation(line: 435, column: 15, scope: !6048)
!6051 = !DILocation(line: 435, column: 25, scope: !6048)
!6052 = !DILocation(line: 435, column: 23, scope: !6048)
!6053 = !DILocation(line: 435, column: 35, scope: !6048)
!6054 = !DILocation(line: 435, column: 13, scope: !6048)
!6055 = !DILocation(line: 435, column: 4, scope: !6048)
!6056 = !DILocation(line: 435, column: 11, scope: !6048)
!6057 = !DILocation(line: 436, column: 14, scope: !6048)
!6058 = !DILocation(line: 436, column: 24, scope: !6048)
!6059 = !DILocation(line: 436, column: 22, scope: !6048)
!6060 = !DILocation(line: 436, column: 34, scope: !6048)
!6061 = !DILocation(line: 436, column: 13, scope: !6048)
!6062 = !DILocation(line: 436, column: 4, scope: !6048)
!6063 = !DILocation(line: 436, column: 11, scope: !6048)
!6064 = !DILocation(line: 437, column: 4, scope: !6048)
!6065 = !DILocation(line: 437, column: 11, scope: !6048)
!6066 = !DILocation(line: 439, column: 23, scope: !6048)
!6067 = !DILocation(line: 439, column: 36, scope: !6048)
!6068 = !DILocation(line: 439, column: 4, scope: !6048)
!6069 = !DILocation(line: 440, column: 3, scope: !6048)
!6070 = !DILocation(line: 441, column: 10, scope: !6044)
!6071 = !DILocation(line: 442, column: 11, scope: !6044)
!6072 = !DILocation(line: 444, column: 8, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !6044, file: !3, line: 444, column: 7)
!6074 = !DILocation(line: 444, column: 16, scope: !6073)
!6075 = !DILocation(line: 444, column: 21, scope: !6073)
!6076 = !DILocation(line: 444, column: 7, scope: !6044)
!6077 = !DILocation(line: 445, column: 23, scope: !6073)
!6078 = !DILocation(line: 445, column: 30, scope: !6073)
!6079 = !DILocation(line: 445, column: 41, scope: !6073)
!6080 = !DILocation(line: 445, column: 45, scope: !6073)
!6081 = !DILocation(line: 445, column: 50, scope: !6073)
!6082 = !DILocation(line: 445, column: 58, scope: !6073)
!6083 = !DILocation(line: 445, column: 4, scope: !6073)
!6084 = !DILocation(line: 447, column: 21, scope: !6044)
!6085 = !DILocation(line: 447, column: 26, scope: !6044)
!6086 = !DILocation(line: 447, column: 30, scope: !6044)
!6087 = !DILocation(line: 447, column: 35, scope: !6044)
!6088 = !DILocation(line: 447, column: 9, scope: !6044)
!6089 = !DILocation(line: 447, column: 7, scope: !6044)
!6090 = !DILocation(line: 449, column: 8, scope: !6091)
!6091 = distinct !DILexicalBlock(scope: !6044, file: !3, line: 449, column: 7)
!6092 = !DILocation(line: 449, column: 16, scope: !6091)
!6093 = !DILocation(line: 449, column: 24, scope: !6091)
!6094 = !DILocation(line: 449, column: 28, scope: !6091)
!6095 = !DILocation(line: 449, column: 36, scope: !6091)
!6096 = !DILocation(line: 449, column: 42, scope: !6091)
!6097 = !DILocation(line: 449, column: 46, scope: !6091)
!6098 = !DILocation(line: 449, column: 39, scope: !6091)
!6099 = !DILocation(line: 449, column: 7, scope: !6044)
!6100 = !DILocation(line: 451, column: 23, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6091, file: !3, line: 449, column: 53)
!6102 = !DILocation(line: 451, column: 30, scope: !6101)
!6103 = !DILocation(line: 451, column: 38, scope: !6101)
!6104 = !DILocation(line: 451, column: 42, scope: !6101)
!6105 = !DILocation(line: 451, column: 50, scope: !6101)
!6106 = !DILocation(line: 451, column: 40, scope: !6101)
!6107 = !DILocation(line: 452, column: 6, scope: !6101)
!6108 = !DILocation(line: 452, column: 10, scope: !6101)
!6109 = !DILocation(line: 452, column: 15, scope: !6101)
!6110 = !DILocation(line: 452, column: 25, scope: !6101)
!6111 = !DILocation(line: 452, column: 33, scope: !6101)
!6112 = !DILocation(line: 452, column: 23, scope: !6101)
!6113 = !DILocation(line: 452, column: 37, scope: !6101)
!6114 = !DILocation(line: 453, column: 5, scope: !6101)
!6115 = !DILocation(line: 453, column: 13, scope: !6101)
!6116 = !DILocation(line: 451, column: 4, scope: !6101)
!6117 = !DILocation(line: 454, column: 13, scope: !6101)
!6118 = !DILocation(line: 454, column: 17, scope: !6101)
!6119 = !DILocation(line: 454, column: 4, scope: !6101)
!6120 = !DILocation(line: 454, column: 11, scope: !6101)
!6121 = !DILocation(line: 455, column: 13, scope: !6101)
!6122 = !DILocation(line: 455, column: 17, scope: !6101)
!6123 = !DILocation(line: 455, column: 4, scope: !6101)
!6124 = !DILocation(line: 455, column: 11, scope: !6101)
!6125 = !DILocation(line: 458, column: 23, scope: !6101)
!6126 = !DILocation(line: 458, column: 36, scope: !6101)
!6127 = !DILocation(line: 458, column: 4, scope: !6101)
!6128 = !DILocation(line: 461, column: 22, scope: !6101)
!6129 = !DILocation(line: 461, column: 35, scope: !6101)
!6130 = !DILocation(line: 461, column: 4, scope: !6101)
!6131 = !DILocation(line: 464, column: 4, scope: !6101)
!6132 = !DILocation(line: 464, column: 11, scope: !6101)
!6133 = !DILocation(line: 465, column: 23, scope: !6101)
!6134 = !DILocation(line: 465, column: 36, scope: !6101)
!6135 = !DILocation(line: 465, column: 4, scope: !6101)
!6136 = !DILocation(line: 467, column: 12, scope: !6101)
!6137 = !DILocation(line: 468, column: 3, scope: !6101)
!6138 = !DILocation(line: 469, column: 2, scope: !6044)
!6139 = !DILocation(line: 431, column: 50, scope: !6037)
!6140 = !DILocation(line: 431, column: 2, scope: !6037)
!6141 = distinct !{!6141, !6041, !6142}
!6142 = !DILocation(line: 469, column: 2, scope: !6034)
!6143 = !DILocation(line: 471, column: 2, scope: !5968)
!6144 = distinct !DISubprogram(name: "nxt200x_microcontroller_stop", scope: !3, file: !3, line: 249, type: !6145, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!6145 = !DISubroutineType(types: !6146)
!6146 = !{null, !4446}
!6147 = !DILocalVariable(name: "state", arg: 1, scope: !6144, file: !3, line: 249, type: !4446)
!6148 = !DILocation(line: 249, column: 65, scope: !6144)
!6149 = !DILocalVariable(name: "buf", scope: !6144, file: !3, line: 251, type: !348)
!6150 = !DILocation(line: 251, column: 5, scope: !6144)
!6151 = !DILocalVariable(name: "stopval", scope: !6144, file: !3, line: 251, type: !348)
!6152 = !DILocation(line: 251, column: 10, scope: !6144)
!6153 = !DILocalVariable(name: "counter", scope: !6144, file: !3, line: 251, type: !348)
!6154 = !DILocation(line: 251, column: 19, scope: !6144)
!6155 = !DILocation(line: 252, column: 2, scope: !6144)
!6156 = !DILocation(line: 252, column: 2, scope: !6157)
!6157 = distinct !DILexicalBlock(scope: !6158, file: !3, line: 252, column: 2)
!6158 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 252, column: 2)
!6159 = !DILocation(line: 252, column: 2, scope: !6158)
!6160 = !DILocation(line: 252, column: 2, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !6162, file: !3, line: 252, column: 2)
!6162 = distinct !DILexicalBlock(scope: !6157, file: !3, line: 252, column: 2)
!6163 = !DILocation(line: 252, column: 2, scope: !6162)
!6164 = !DILocation(line: 255, column: 10, scope: !6144)
!6165 = !DILocation(line: 255, column: 17, scope: !6144)
!6166 = !DILocation(line: 255, column: 2, scope: !6144)
!6167 = !DILocation(line: 257, column: 12, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 255, column: 29)
!6169 = !DILocation(line: 258, column: 4, scope: !6168)
!6170 = !DILocation(line: 260, column: 12, scope: !6168)
!6171 = !DILocation(line: 261, column: 4, scope: !6168)
!6172 = !DILocation(line: 263, column: 12, scope: !6168)
!6173 = !DILocation(line: 264, column: 4, scope: !6168)
!6174 = !DILocation(line: 267, column: 6, scope: !6144)
!6175 = !DILocation(line: 268, column: 21, scope: !6144)
!6176 = !DILocation(line: 268, column: 2, scope: !6144)
!6177 = !DILocation(line: 270, column: 2, scope: !6144)
!6178 = !DILocation(line: 270, column: 9, scope: !6144)
!6179 = !DILocation(line: 270, column: 17, scope: !6144)
!6180 = !DILocation(line: 271, column: 21, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 270, column: 23)
!6182 = !DILocation(line: 271, column: 3, scope: !6181)
!6183 = !DILocation(line: 272, column: 7, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6181, file: !3, line: 272, column: 7)
!6185 = !DILocation(line: 272, column: 13, scope: !6184)
!6186 = !DILocation(line: 272, column: 11, scope: !6184)
!6187 = !DILocation(line: 272, column: 7, scope: !6181)
!6188 = !DILocation(line: 273, column: 4, scope: !6184)
!6189 = !DILocation(line: 274, column: 3, scope: !6181)
!6190 = !DILocation(line: 275, column: 10, scope: !6181)
!6191 = distinct !{!6191, !6177, !6192}
!6192 = !DILocation(line: 276, column: 2, scope: !6144)
!6193 = !DILocation(line: 278, column: 2, scope: !6144)
!6194 = !DILocation(line: 279, column: 2, scope: !6144)
!6195 = !DILocation(line: 280, column: 1, scope: !6144)
!6196 = distinct !DISubprogram(name: "nxt200x_writebytes", scope: !3, file: !3, line: 84, type: !6197, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!6197 = !DISubroutineType(types: !6198)
!6198 = !{!330, !4446, !348, !4134, !348}
!6199 = !DILocalVariable(name: "state", arg: 1, scope: !6196, file: !3, line: 84, type: !4446)
!6200 = !DILocation(line: 84, column: 54, scope: !6196)
!6201 = !DILocalVariable(name: "reg", arg: 2, scope: !6196, file: !3, line: 84, type: !348)
!6202 = !DILocation(line: 84, column: 64, scope: !6196)
!6203 = !DILocalVariable(name: "buf", arg: 3, scope: !6196, file: !3, line: 85, type: !4134)
!6204 = !DILocation(line: 85, column: 21, scope: !6196)
!6205 = !DILocalVariable(name: "len", arg: 4, scope: !6196, file: !3, line: 85, type: !348)
!6206 = !DILocation(line: 85, column: 29, scope: !6196)
!6207 = !DILocalVariable(name: "buf2", scope: !6196, file: !3, line: 87, type: !6208)
!6208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 2048, elements: !6209)
!6209 = !{!6210}
!6210 = !DISubrange(count: 256)
!6211 = !DILocation(line: 87, column: 5, scope: !6196)
!6212 = !DILocalVariable(name: "err", scope: !6196, file: !3, line: 88, type: !330)
!6213 = !DILocation(line: 88, column: 6, scope: !6196)
!6214 = !DILocalVariable(name: "msg", scope: !6196, file: !3, line: 89, type: !4335)
!6215 = !DILocation(line: 89, column: 17, scope: !6196)
!6216 = !DILocation(line: 89, column: 23, scope: !6196)
!6217 = !DILocation(line: 89, column: 33, scope: !6196)
!6218 = !DILocation(line: 89, column: 40, scope: !6196)
!6219 = !DILocation(line: 89, column: 48, scope: !6196)
!6220 = !DILocation(line: 89, column: 95, scope: !6196)
!6221 = !DILocation(line: 89, column: 99, scope: !6196)
!6222 = !DILocation(line: 89, column: 82, scope: !6196)
!6223 = !DILocation(line: 91, column: 10, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6196, file: !3, line: 91, column: 6)
!6225 = !DILocation(line: 91, column: 8, scope: !6224)
!6226 = !DILocation(line: 91, column: 6, scope: !6224)
!6227 = !DILocation(line: 91, column: 14, scope: !6224)
!6228 = !DILocation(line: 91, column: 6, scope: !6196)
!6229 = !DILocation(line: 92, column: 3, scope: !6230)
!6230 = distinct !DILexicalBlock(scope: !6224, file: !3, line: 91, column: 30)
!6231 = !DILocation(line: 94, column: 3, scope: !6230)
!6232 = !DILocation(line: 97, column: 12, scope: !6196)
!6233 = !DILocation(line: 97, column: 2, scope: !6196)
!6234 = !DILocation(line: 97, column: 10, scope: !6196)
!6235 = !DILocation(line: 98, column: 10, scope: !6196)
!6236 = !DILocation(line: 98, column: 19, scope: !6196)
!6237 = !DILocation(line: 98, column: 24, scope: !6196)
!6238 = !DILocation(line: 98, column: 2, scope: !6196)
!6239 = !DILocation(line: 100, column: 27, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6196, file: !3, line: 100, column: 6)
!6241 = !DILocation(line: 100, column: 34, scope: !6240)
!6242 = !DILocation(line: 100, column: 13, scope: !6240)
!6243 = !DILocation(line: 100, column: 11, scope: !6240)
!6244 = !DILocation(line: 100, column: 49, scope: !6240)
!6245 = !DILocation(line: 100, column: 6, scope: !6196)
!6246 = !DILocation(line: 101, column: 3, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6240, file: !3, line: 100, column: 55)
!6248 = !DILocation(line: 103, column: 3, scope: !6247)
!6249 = !DILocation(line: 105, column: 2, scope: !6196)
!6250 = !DILocation(line: 106, column: 1, scope: !6196)
!6251 = distinct !DISubprogram(name: "nxt200x_crc", scope: !3, file: !3, line: 125, type: !6252, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!6252 = !DISubroutineType(types: !6253)
!6253 = !{!300, !300, !348}
!6254 = !DILocalVariable(name: "crc", arg: 1, scope: !6251, file: !3, line: 125, type: !300)
!6255 = !DILocation(line: 125, column: 28, scope: !6251)
!6256 = !DILocalVariable(name: "c", arg: 2, scope: !6251, file: !3, line: 125, type: !348)
!6257 = !DILocation(line: 125, column: 36, scope: !6251)
!6258 = !DILocalVariable(name: "i", scope: !6251, file: !3, line: 127, type: !348)
!6259 = !DILocation(line: 127, column: 5, scope: !6251)
!6260 = !DILocalVariable(name: "input", scope: !6251, file: !3, line: 128, type: !300)
!6261 = !DILocation(line: 128, column: 6, scope: !6251)
!6262 = !DILocation(line: 128, column: 20, scope: !6251)
!6263 = !DILocation(line: 128, column: 14, scope: !6251)
!6264 = !DILocation(line: 128, column: 22, scope: !6251)
!6265 = !DILocation(line: 130, column: 7, scope: !6251)
!6266 = !DILocation(line: 131, column: 7, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6251, file: !3, line: 131, column: 2)
!6268 = !DILocation(line: 131, column: 6, scope: !6267)
!6269 = !DILocation(line: 131, column: 11, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6267, file: !3, line: 131, column: 2)
!6271 = !DILocation(line: 131, column: 12, scope: !6270)
!6272 = !DILocation(line: 131, column: 2, scope: !6267)
!6273 = !DILocation(line: 132, column: 7, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6275, file: !3, line: 132, column: 6)
!6275 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 131, column: 21)
!6276 = !DILocation(line: 132, column: 11, scope: !6274)
!6277 = !DILocation(line: 132, column: 10, scope: !6274)
!6278 = !DILocation(line: 132, column: 18, scope: !6274)
!6279 = !DILocation(line: 132, column: 6, scope: !6275)
!6280 = !DILocation(line: 133, column: 9, scope: !6274)
!6281 = !DILocation(line: 133, column: 12, scope: !6274)
!6282 = !DILocation(line: 133, column: 16, scope: !6274)
!6283 = !DILocation(line: 133, column: 8, scope: !6274)
!6284 = !DILocation(line: 133, column: 7, scope: !6274)
!6285 = !DILocation(line: 133, column: 4, scope: !6274)
!6286 = !DILocation(line: 135, column: 7, scope: !6274)
!6287 = !DILocation(line: 136, column: 8, scope: !6275)
!6288 = !DILocation(line: 137, column: 2, scope: !6275)
!6289 = !DILocation(line: 131, column: 17, scope: !6270)
!6290 = !DILocation(line: 131, column: 2, scope: !6270)
!6291 = distinct !{!6291, !6272, !6292}
!6292 = !DILocation(line: 137, column: 2, scope: !6267)
!6293 = !DILocation(line: 138, column: 9, scope: !6251)
!6294 = !DILocation(line: 138, column: 2, scope: !6251)
!6295 = distinct !DISubprogram(name: "nxt2004_load_firmware", scope: !3, file: !3, line: 474, type: !5969, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!6296 = !DILocalVariable(name: "fe", arg: 1, scope: !6295, file: !3, line: 474, type: !433)
!6297 = !DILocation(line: 474, column: 56, scope: !6295)
!6298 = !DILocalVariable(name: "fw", arg: 2, scope: !6295, file: !3, line: 474, type: !5551)
!6299 = !DILocation(line: 474, column: 83, scope: !6295)
!6300 = !DILocalVariable(name: "state", scope: !6295, file: !3, line: 477, type: !4446)
!6301 = !DILocation(line: 477, column: 24, scope: !6295)
!6302 = !DILocation(line: 477, column: 32, scope: !6295)
!6303 = !DILocation(line: 477, column: 36, scope: !6295)
!6304 = !DILocalVariable(name: "buf", scope: !6295, file: !3, line: 478, type: !5397)
!6305 = !DILocation(line: 478, column: 5, scope: !6295)
!6306 = !DILocalVariable(name: "rambase", scope: !6295, file: !3, line: 479, type: !300)
!6307 = !DILocation(line: 479, column: 6, scope: !6295)
!6308 = !DILocalVariable(name: "position", scope: !6295, file: !3, line: 479, type: !300)
!6309 = !DILocation(line: 479, column: 15, scope: !6295)
!6310 = !DILocalVariable(name: "crc", scope: !6295, file: !3, line: 479, type: !300)
!6311 = !DILocation(line: 479, column: 25, scope: !6295)
!6312 = !DILocation(line: 481, column: 2, scope: !6295)
!6313 = !DILocation(line: 481, column: 2, scope: !6314)
!6314 = distinct !DILexicalBlock(scope: !6315, file: !3, line: 481, column: 2)
!6315 = distinct !DILexicalBlock(scope: !6295, file: !3, line: 481, column: 2)
!6316 = !DILocation(line: 481, column: 2, scope: !6315)
!6317 = !DILocation(line: 481, column: 2, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6319, file: !3, line: 481, column: 2)
!6319 = distinct !DILexicalBlock(scope: !6314, file: !3, line: 481, column: 2)
!6320 = !DILocation(line: 481, column: 2, scope: !6319)
!6321 = !DILocation(line: 482, column: 2, scope: !6295)
!6322 = !DILocation(line: 482, column: 2, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6324, file: !3, line: 482, column: 2)
!6324 = distinct !DILexicalBlock(scope: !6295, file: !3, line: 482, column: 2)
!6325 = !DILocation(line: 482, column: 2, scope: !6324)
!6326 = !DILocation(line: 482, column: 2, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6328, file: !3, line: 482, column: 2)
!6328 = distinct !DILexicalBlock(scope: !6323, file: !3, line: 482, column: 2)
!6329 = !DILocation(line: 482, column: 2, scope: !6328)
!6330 = !DILocation(line: 485, column: 10, scope: !6295)
!6331 = !DILocation(line: 488, column: 2, scope: !6295)
!6332 = !DILocation(line: 488, column: 9, scope: !6295)
!6333 = !DILocation(line: 489, column: 21, scope: !6295)
!6334 = !DILocation(line: 489, column: 34, scope: !6295)
!6335 = !DILocation(line: 489, column: 2, scope: !6295)
!6336 = !DILocation(line: 492, column: 16, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6295, file: !3, line: 492, column: 2)
!6338 = !DILocation(line: 492, column: 7, scope: !6337)
!6339 = !DILocation(line: 492, column: 21, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6337, file: !3, line: 492, column: 2)
!6341 = !DILocation(line: 492, column: 32, scope: !6340)
!6342 = !DILocation(line: 492, column: 36, scope: !6340)
!6343 = !DILocation(line: 492, column: 30, scope: !6340)
!6344 = !DILocation(line: 492, column: 2, scope: !6337)
!6345 = !DILocation(line: 493, column: 21, scope: !6346)
!6346 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 492, column: 54)
!6347 = !DILocation(line: 493, column: 26, scope: !6346)
!6348 = !DILocation(line: 493, column: 30, scope: !6346)
!6349 = !DILocation(line: 493, column: 35, scope: !6346)
!6350 = !DILocation(line: 493, column: 9, scope: !6346)
!6351 = !DILocation(line: 493, column: 7, scope: !6346)
!6352 = !DILocation(line: 494, column: 2, scope: !6346)
!6353 = !DILocation(line: 492, column: 50, scope: !6340)
!6354 = !DILocation(line: 492, column: 2, scope: !6340)
!6355 = distinct !{!6355, !6344, !6356}
!6356 = !DILocation(line: 494, column: 2, scope: !6337)
!6357 = !DILocation(line: 496, column: 11, scope: !6295)
!6358 = !DILocation(line: 496, column: 19, scope: !6295)
!6359 = !DILocation(line: 496, column: 2, scope: !6295)
!6360 = !DILocation(line: 496, column: 9, scope: !6295)
!6361 = !DILocation(line: 497, column: 11, scope: !6295)
!6362 = !DILocation(line: 497, column: 19, scope: !6295)
!6363 = !DILocation(line: 497, column: 2, scope: !6295)
!6364 = !DILocation(line: 497, column: 9, scope: !6295)
!6365 = !DILocation(line: 498, column: 2, scope: !6295)
!6366 = !DILocation(line: 498, column: 9, scope: !6295)
!6367 = !DILocation(line: 500, column: 21, scope: !6295)
!6368 = !DILocation(line: 500, column: 32, scope: !6295)
!6369 = !DILocation(line: 500, column: 2, scope: !6295)
!6370 = !DILocation(line: 502, column: 16, scope: !6371)
!6371 = distinct !DILexicalBlock(scope: !6295, file: !3, line: 502, column: 2)
!6372 = !DILocation(line: 502, column: 7, scope: !6371)
!6373 = !DILocation(line: 502, column: 21, scope: !6374)
!6374 = distinct !DILexicalBlock(scope: !6371, file: !3, line: 502, column: 2)
!6375 = !DILocation(line: 502, column: 32, scope: !6374)
!6376 = !DILocation(line: 502, column: 36, scope: !6374)
!6377 = !DILocation(line: 502, column: 30, scope: !6374)
!6378 = !DILocation(line: 502, column: 2, scope: !6371)
!6379 = !DILocation(line: 503, column: 22, scope: !6380)
!6380 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 502, column: 43)
!6381 = !DILocation(line: 503, column: 36, scope: !6380)
!6382 = !DILocation(line: 503, column: 40, scope: !6380)
!6383 = !DILocation(line: 503, column: 45, scope: !6380)
!6384 = !DILocation(line: 504, column: 4, scope: !6380)
!6385 = !DILocation(line: 504, column: 8, scope: !6380)
!6386 = !DILocation(line: 504, column: 13, scope: !6380)
!6387 = !DILocation(line: 504, column: 12, scope: !6380)
!6388 = !DILocation(line: 504, column: 22, scope: !6380)
!6389 = !DILocation(line: 504, column: 36, scope: !6380)
!6390 = !DILocation(line: 504, column: 40, scope: !6380)
!6391 = !DILocation(line: 504, column: 45, scope: !6380)
!6392 = !DILocation(line: 504, column: 44, scope: !6380)
!6393 = !DILocation(line: 503, column: 3, scope: !6380)
!6394 = !DILocation(line: 505, column: 16, scope: !6380)
!6395 = !DILocation(line: 505, column: 20, scope: !6380)
!6396 = !DILocation(line: 505, column: 25, scope: !6380)
!6397 = !DILocation(line: 505, column: 24, scope: !6380)
!6398 = !DILocation(line: 505, column: 34, scope: !6380)
!6399 = !DILocation(line: 505, column: 48, scope: !6380)
!6400 = !DILocation(line: 505, column: 52, scope: !6380)
!6401 = !DILocation(line: 505, column: 57, scope: !6380)
!6402 = !DILocation(line: 505, column: 56, scope: !6380)
!6403 = !DILocation(line: 505, column: 12, scope: !6380)
!6404 = !DILocation(line: 502, column: 2, scope: !6374)
!6405 = distinct !{!6405, !6378, !6406}
!6406 = !DILocation(line: 506, column: 2, scope: !6371)
!6407 = !DILocation(line: 507, column: 11, scope: !6295)
!6408 = !DILocation(line: 507, column: 15, scope: !6295)
!6409 = !DILocation(line: 507, column: 2, scope: !6295)
!6410 = !DILocation(line: 507, column: 9, scope: !6295)
!6411 = !DILocation(line: 508, column: 11, scope: !6295)
!6412 = !DILocation(line: 508, column: 15, scope: !6295)
!6413 = !DILocation(line: 508, column: 2, scope: !6295)
!6414 = !DILocation(line: 508, column: 9, scope: !6295)
!6415 = !DILocation(line: 510, column: 2, scope: !6295)
!6416 = !DILocation(line: 510, column: 2, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6418, file: !3, line: 510, column: 2)
!6418 = distinct !DILexicalBlock(scope: !6295, file: !3, line: 510, column: 2)
!6419 = !DILocation(line: 510, column: 2, scope: !6418)
!6420 = !DILocation(line: 510, column: 2, scope: !6421)
!6421 = distinct !DILexicalBlock(scope: !6422, file: !3, line: 510, column: 2)
!6422 = distinct !DILexicalBlock(scope: !6417, file: !3, line: 510, column: 2)
!6423 = !DILocation(line: 510, column: 2, scope: !6422)
!6424 = !DILocation(line: 513, column: 21, scope: !6295)
!6425 = !DILocation(line: 513, column: 34, scope: !6295)
!6426 = !DILocation(line: 513, column: 2, scope: !6295)
!6427 = !DILocation(line: 516, column: 20, scope: !6295)
!6428 = !DILocation(line: 516, column: 33, scope: !6295)
!6429 = !DILocation(line: 516, column: 2, scope: !6295)
!6430 = !DILocation(line: 519, column: 2, scope: !6295)
!6431 = !DILocation(line: 519, column: 9, scope: !6295)
!6432 = !DILocation(line: 520, column: 21, scope: !6295)
!6433 = !DILocation(line: 520, column: 34, scope: !6295)
!6434 = !DILocation(line: 520, column: 2, scope: !6295)
!6435 = !DILocation(line: 522, column: 2, scope: !6295)
!6436 = distinct !DISubprogram(name: "nxt2004_microcontroller_init", scope: !3, file: !3, line: 291, type: !6145, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!6437 = !DILocalVariable(name: "state", arg: 1, scope: !6436, file: !3, line: 291, type: !4446)
!6438 = !DILocation(line: 291, column: 65, scope: !6436)
!6439 = !DILocalVariable(name: "buf", scope: !6436, file: !3, line: 293, type: !6440)
!6440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 72, elements: !3571)
!6441 = !DILocation(line: 293, column: 5, scope: !6436)
!6442 = !DILocalVariable(name: "counter", scope: !6436, file: !3, line: 294, type: !348)
!6443 = !DILocation(line: 294, column: 5, scope: !6436)
!6444 = !DILocation(line: 295, column: 2, scope: !6436)
!6445 = !DILocation(line: 295, column: 2, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6447, file: !3, line: 295, column: 2)
!6447 = distinct !DILexicalBlock(scope: !6436, file: !3, line: 295, column: 2)
!6448 = !DILocation(line: 295, column: 2, scope: !6447)
!6449 = !DILocation(line: 295, column: 2, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6451, file: !3, line: 295, column: 2)
!6451 = distinct !DILexicalBlock(scope: !6446, file: !3, line: 295, column: 2)
!6452 = !DILocation(line: 295, column: 2, scope: !6451)
!6453 = !DILocation(line: 297, column: 2, scope: !6436)
!6454 = !DILocation(line: 297, column: 9, scope: !6436)
!6455 = !DILocation(line: 298, column: 21, scope: !6436)
!6456 = !DILocation(line: 298, column: 34, scope: !6436)
!6457 = !DILocation(line: 298, column: 2, scope: !6436)
!6458 = !DILocation(line: 299, column: 2, scope: !6436)
!6459 = !DILocation(line: 299, column: 9, scope: !6436)
!6460 = !DILocation(line: 300, column: 21, scope: !6436)
!6461 = !DILocation(line: 300, column: 34, scope: !6436)
!6462 = !DILocation(line: 300, column: 2, scope: !6436)
!6463 = !DILocation(line: 301, column: 2, scope: !6436)
!6464 = !DILocation(line: 301, column: 9, scope: !6436)
!6465 = !DILocation(line: 302, column: 21, scope: !6436)
!6466 = !DILocation(line: 302, column: 34, scope: !6436)
!6467 = !DILocation(line: 302, column: 2, scope: !6436)
!6468 = !DILocation(line: 303, column: 2, scope: !6436)
!6469 = !DILocation(line: 303, column: 9, scope: !6436)
!6470 = !DILocation(line: 303, column: 17, scope: !6436)
!6471 = !DILocation(line: 303, column: 24, scope: !6436)
!6472 = !DILocation(line: 303, column: 32, scope: !6436)
!6473 = !DILocation(line: 303, column: 39, scope: !6436)
!6474 = !DILocation(line: 303, column: 47, scope: !6436)
!6475 = !DILocation(line: 303, column: 54, scope: !6436)
!6476 = !DILocation(line: 303, column: 62, scope: !6436)
!6477 = !DILocation(line: 303, column: 69, scope: !6436)
!6478 = !DILocation(line: 304, column: 2, scope: !6436)
!6479 = !DILocation(line: 304, column: 9, scope: !6436)
!6480 = !DILocation(line: 304, column: 17, scope: !6436)
!6481 = !DILocation(line: 304, column: 24, scope: !6436)
!6482 = !DILocation(line: 304, column: 32, scope: !6436)
!6483 = !DILocation(line: 304, column: 39, scope: !6436)
!6484 = !DILocation(line: 304, column: 47, scope: !6436)
!6485 = !DILocation(line: 304, column: 54, scope: !6436)
!6486 = !DILocation(line: 305, column: 21, scope: !6436)
!6487 = !DILocation(line: 305, column: 34, scope: !6436)
!6488 = !DILocation(line: 305, column: 2, scope: !6436)
!6489 = !DILocation(line: 306, column: 2, scope: !6436)
!6490 = !DILocation(line: 306, column: 9, scope: !6436)
!6491 = !DILocation(line: 307, column: 21, scope: !6436)
!6492 = !DILocation(line: 307, column: 34, scope: !6436)
!6493 = !DILocation(line: 307, column: 2, scope: !6436)
!6494 = !DILocation(line: 309, column: 2, scope: !6436)
!6495 = !DILocation(line: 309, column: 9, scope: !6436)
!6496 = !DILocation(line: 309, column: 17, scope: !6436)
!6497 = !DILocation(line: 310, column: 21, scope: !6498)
!6498 = distinct !DILexicalBlock(scope: !6436, file: !3, line: 309, column: 23)
!6499 = !DILocation(line: 310, column: 34, scope: !6498)
!6500 = !DILocation(line: 310, column: 3, scope: !6498)
!6501 = !DILocation(line: 311, column: 7, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6498, file: !3, line: 311, column: 7)
!6503 = !DILocation(line: 311, column: 14, scope: !6502)
!6504 = !DILocation(line: 311, column: 7, scope: !6498)
!6505 = !DILocation(line: 312, column: 4, scope: !6502)
!6506 = !DILocation(line: 313, column: 3, scope: !6498)
!6507 = !DILocation(line: 314, column: 10, scope: !6498)
!6508 = distinct !{!6508, !6494, !6509}
!6509 = !DILocation(line: 315, column: 2, scope: !6436)
!6510 = !DILocation(line: 317, column: 2, scope: !6436)
!6511 = !DILocation(line: 319, column: 2, scope: !6436)
!6512 = !DILocation(line: 320, column: 1, scope: !6436)
!6513 = distinct !DISubprogram(name: "nxt200x_writereg_multibyte", scope: !3, file: !3, line: 141, type: !4834, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!6514 = !DILocalVariable(name: "state", arg: 1, scope: !6513, file: !3, line: 141, type: !4446)
!6515 = !DILocation(line: 141, column: 62, scope: !6513)
!6516 = !DILocalVariable(name: "reg", arg: 2, scope: !6513, file: !3, line: 141, type: !348)
!6517 = !DILocation(line: 141, column: 72, scope: !6513)
!6518 = !DILocalVariable(name: "data", arg: 3, scope: !6513, file: !3, line: 141, type: !4276)
!6519 = !DILocation(line: 141, column: 81, scope: !6513)
!6520 = !DILocalVariable(name: "len", arg: 4, scope: !6513, file: !3, line: 141, type: !348)
!6521 = !DILocation(line: 141, column: 90, scope: !6513)
!6522 = !DILocalVariable(name: "attr", scope: !6513, file: !3, line: 143, type: !348)
!6523 = !DILocation(line: 143, column: 5, scope: !6513)
!6524 = !DILocalVariable(name: "len2", scope: !6513, file: !3, line: 143, type: !348)
!6525 = !DILocation(line: 143, column: 11, scope: !6513)
!6526 = !DILocalVariable(name: "buf", scope: !6513, file: !3, line: 143, type: !348)
!6527 = !DILocation(line: 143, column: 17, scope: !6513)
!6528 = !DILocation(line: 144, column: 2, scope: !6513)
!6529 = !DILocation(line: 144, column: 2, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6531, file: !3, line: 144, column: 2)
!6531 = distinct !DILexicalBlock(scope: !6513, file: !3, line: 144, column: 2)
!6532 = !DILocation(line: 144, column: 2, scope: !6531)
!6533 = !DILocation(line: 144, column: 2, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6535, file: !3, line: 144, column: 2)
!6535 = distinct !DILexicalBlock(scope: !6530, file: !3, line: 144, column: 2)
!6536 = !DILocation(line: 144, column: 2, scope: !6535)
!6537 = !DILocation(line: 147, column: 21, scope: !6513)
!6538 = !DILocation(line: 147, column: 2, scope: !6513)
!6539 = !DILocation(line: 150, column: 21, scope: !6513)
!6540 = !DILocation(line: 150, column: 34, scope: !6513)
!6541 = !DILocation(line: 150, column: 40, scope: !6513)
!6542 = !DILocation(line: 150, column: 2, scope: !6513)
!6543 = !DILocation(line: 152, column: 10, scope: !6513)
!6544 = !DILocation(line: 152, column: 17, scope: !6513)
!6545 = !DILocation(line: 152, column: 2, scope: !6513)
!6546 = !DILocation(line: 154, column: 11, scope: !6547)
!6547 = distinct !DILexicalBlock(scope: !6513, file: !3, line: 152, column: 29)
!6548 = !DILocation(line: 154, column: 9, scope: !6547)
!6549 = !DILocation(line: 155, column: 8, scope: !6547)
!6550 = !DILocation(line: 156, column: 4, scope: !6547)
!6551 = !DILocation(line: 159, column: 9, scope: !6547)
!6552 = !DILocation(line: 160, column: 8, scope: !6553)
!6553 = distinct !DILexicalBlock(scope: !6547, file: !3, line: 160, column: 8)
!6554 = !DILocation(line: 160, column: 12, scope: !6553)
!6555 = !DILocation(line: 160, column: 8, scope: !6547)
!6556 = !DILocation(line: 161, column: 12, scope: !6557)
!6557 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 160, column: 20)
!6558 = !DILocation(line: 161, column: 17, scope: !6557)
!6559 = !DILocation(line: 161, column: 10, scope: !6557)
!6560 = !DILocation(line: 162, column: 9, scope: !6561)
!6561 = distinct !DILexicalBlock(scope: !6557, file: !3, line: 162, column: 9)
!6562 = !DILocation(line: 162, column: 13, scope: !6561)
!6563 = !DILocation(line: 162, column: 9, scope: !6557)
!6564 = !DILocation(line: 163, column: 13, scope: !6561)
!6565 = !DILocation(line: 163, column: 18, scope: !6561)
!6566 = !DILocation(line: 163, column: 11, scope: !6561)
!6567 = !DILocation(line: 163, column: 6, scope: !6561)
!6568 = !DILocation(line: 164, column: 4, scope: !6557)
!6569 = !DILocation(line: 166, column: 13, scope: !6547)
!6570 = !DILocation(line: 166, column: 18, scope: !6547)
!6571 = !DILocation(line: 166, column: 24, scope: !6547)
!6572 = !DILocation(line: 166, column: 34, scope: !6547)
!6573 = !DILocation(line: 166, column: 32, scope: !6547)
!6574 = !DILocation(line: 166, column: 11, scope: !6547)
!6575 = !DILocation(line: 166, column: 9, scope: !6547)
!6576 = !DILocation(line: 167, column: 8, scope: !6547)
!6577 = !DILocation(line: 168, column: 4, scope: !6547)
!6578 = !DILocation(line: 170, column: 4, scope: !6547)
!6579 = !DILocation(line: 175, column: 21, scope: !6513)
!6580 = !DILocation(line: 175, column: 2, scope: !6513)
!6581 = !DILocation(line: 178, column: 21, scope: !6513)
!6582 = !DILocation(line: 178, column: 2, scope: !6513)
!6583 = !DILocation(line: 180, column: 20, scope: !6513)
!6584 = !DILocation(line: 180, column: 2, scope: !6513)
!6585 = !DILocation(line: 182, column: 10, scope: !6513)
!6586 = !DILocation(line: 182, column: 17, scope: !6513)
!6587 = !DILocation(line: 182, column: 2, scope: !6513)
!6588 = !DILocation(line: 184, column: 9, scope: !6589)
!6589 = distinct !DILexicalBlock(scope: !6590, file: !3, line: 184, column: 8)
!6590 = distinct !DILexicalBlock(scope: !6513, file: !3, line: 182, column: 29)
!6591 = !DILocation(line: 184, column: 13, scope: !6589)
!6592 = !DILocation(line: 184, column: 21, scope: !6589)
!6593 = !DILocation(line: 184, column: 8, scope: !6590)
!6594 = !DILocation(line: 185, column: 5, scope: !6589)
!6595 = !DILocation(line: 186, column: 4, scope: !6590)
!6596 = !DILocation(line: 188, column: 8, scope: !6597)
!6597 = distinct !DILexicalBlock(scope: !6590, file: !3, line: 188, column: 8)
!6598 = !DILocation(line: 188, column: 12, scope: !6597)
!6599 = !DILocation(line: 188, column: 8, scope: !6590)
!6600 = !DILocation(line: 189, column: 5, scope: !6597)
!6601 = !DILocation(line: 190, column: 4, scope: !6590)
!6602 = !DILocation(line: 192, column: 4, scope: !6590)
!6603 = !DILocation(line: 196, column: 2, scope: !6513)
!6604 = !DILocation(line: 198, column: 2, scope: !6513)
!6605 = !DILocation(line: 199, column: 1, scope: !6513)
!6606 = distinct !DISubprogram(name: "nxt200x_readreg_multibyte", scope: !3, file: !3, line: 201, type: !4834, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!6607 = !DILocalVariable(name: "state", arg: 1, scope: !6606, file: !3, line: 201, type: !4446)
!6608 = !DILocation(line: 201, column: 61, scope: !6606)
!6609 = !DILocalVariable(name: "reg", arg: 2, scope: !6606, file: !3, line: 201, type: !348)
!6610 = !DILocation(line: 201, column: 71, scope: !6606)
!6611 = !DILocalVariable(name: "data", arg: 3, scope: !6606, file: !3, line: 201, type: !4276)
!6612 = !DILocation(line: 201, column: 80, scope: !6606)
!6613 = !DILocalVariable(name: "len", arg: 4, scope: !6606, file: !3, line: 201, type: !348)
!6614 = !DILocation(line: 201, column: 89, scope: !6606)
!6615 = !DILocalVariable(name: "i", scope: !6606, file: !3, line: 203, type: !330)
!6616 = !DILocation(line: 203, column: 6, scope: !6606)
!6617 = !DILocalVariable(name: "buf", scope: !6606, file: !3, line: 204, type: !348)
!6618 = !DILocation(line: 204, column: 5, scope: !6606)
!6619 = !DILocalVariable(name: "len2", scope: !6606, file: !3, line: 204, type: !348)
!6620 = !DILocation(line: 204, column: 10, scope: !6606)
!6621 = !DILocalVariable(name: "attr", scope: !6606, file: !3, line: 204, type: !348)
!6622 = !DILocation(line: 204, column: 16, scope: !6606)
!6623 = !DILocation(line: 205, column: 2, scope: !6606)
!6624 = !DILocation(line: 205, column: 2, scope: !6625)
!6625 = distinct !DILexicalBlock(scope: !6626, file: !3, line: 205, column: 2)
!6626 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 205, column: 2)
!6627 = !DILocation(line: 205, column: 2, scope: !6626)
!6628 = !DILocation(line: 205, column: 2, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6630, file: !3, line: 205, column: 2)
!6630 = distinct !DILexicalBlock(scope: !6625, file: !3, line: 205, column: 2)
!6631 = !DILocation(line: 205, column: 2, scope: !6630)
!6632 = !DILocation(line: 208, column: 21, scope: !6606)
!6633 = !DILocation(line: 208, column: 2, scope: !6606)
!6634 = !DILocation(line: 210, column: 10, scope: !6606)
!6635 = !DILocation(line: 210, column: 17, scope: !6606)
!6636 = !DILocation(line: 210, column: 2, scope: !6606)
!6637 = !DILocation(line: 213, column: 11, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 210, column: 29)
!6639 = !DILocation(line: 213, column: 15, scope: !6638)
!6640 = !DILocation(line: 213, column: 9, scope: !6638)
!6641 = !DILocation(line: 214, column: 23, scope: !6638)
!6642 = !DILocation(line: 214, column: 4, scope: !6638)
!6643 = !DILocation(line: 217, column: 22, scope: !6638)
!6644 = !DILocation(line: 217, column: 29, scope: !6638)
!6645 = !DILocation(line: 217, column: 34, scope: !6638)
!6646 = !DILocation(line: 217, column: 40, scope: !6638)
!6647 = !DILocation(line: 217, column: 4, scope: !6638)
!6648 = !DILocation(line: 218, column: 4, scope: !6638)
!6649 = !DILocation(line: 222, column: 9, scope: !6638)
!6650 = !DILocation(line: 223, column: 8, scope: !6651)
!6651 = distinct !DILexicalBlock(scope: !6638, file: !3, line: 223, column: 8)
!6652 = !DILocation(line: 223, column: 12, scope: !6651)
!6653 = !DILocation(line: 223, column: 8, scope: !6638)
!6654 = !DILocation(line: 224, column: 12, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6651, file: !3, line: 223, column: 20)
!6656 = !DILocation(line: 224, column: 17, scope: !6655)
!6657 = !DILocation(line: 224, column: 10, scope: !6655)
!6658 = !DILocation(line: 225, column: 9, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6655, file: !3, line: 225, column: 9)
!6660 = !DILocation(line: 225, column: 13, scope: !6659)
!6661 = !DILocation(line: 225, column: 9, scope: !6655)
!6662 = !DILocation(line: 226, column: 13, scope: !6659)
!6663 = !DILocation(line: 226, column: 18, scope: !6659)
!6664 = !DILocation(line: 226, column: 11, scope: !6659)
!6665 = !DILocation(line: 226, column: 6, scope: !6659)
!6666 = !DILocation(line: 227, column: 4, scope: !6655)
!6667 = !DILocation(line: 230, column: 12, scope: !6638)
!6668 = !DILocation(line: 230, column: 17, scope: !6638)
!6669 = !DILocation(line: 230, column: 25, scope: !6638)
!6670 = !DILocation(line: 230, column: 23, scope: !6638)
!6671 = !DILocation(line: 230, column: 11, scope: !6638)
!6672 = !DILocation(line: 230, column: 9, scope: !6638)
!6673 = !DILocation(line: 231, column: 23, scope: !6638)
!6674 = !DILocation(line: 231, column: 4, scope: !6638)
!6675 = !DILocation(line: 234, column: 8, scope: !6638)
!6676 = !DILocation(line: 235, column: 23, scope: !6638)
!6677 = !DILocation(line: 235, column: 4, scope: !6638)
!6678 = !DILocation(line: 238, column: 10, scope: !6679)
!6679 = distinct !DILexicalBlock(scope: !6638, file: !3, line: 238, column: 4)
!6680 = !DILocation(line: 238, column: 8, scope: !6679)
!6681 = !DILocation(line: 238, column: 15, scope: !6682)
!6682 = distinct !DILexicalBlock(scope: !6679, file: !3, line: 238, column: 4)
!6683 = !DILocation(line: 238, column: 19, scope: !6682)
!6684 = !DILocation(line: 238, column: 17, scope: !6682)
!6685 = !DILocation(line: 238, column: 4, scope: !6679)
!6686 = !DILocation(line: 239, column: 23, scope: !6687)
!6687 = distinct !DILexicalBlock(scope: !6682, file: !3, line: 238, column: 29)
!6688 = !DILocation(line: 239, column: 37, scope: !6687)
!6689 = !DILocation(line: 239, column: 35, scope: !6687)
!6690 = !DILocation(line: 239, column: 30, scope: !6687)
!6691 = !DILocation(line: 239, column: 41, scope: !6687)
!6692 = !DILocation(line: 239, column: 46, scope: !6687)
!6693 = !DILocation(line: 239, column: 5, scope: !6687)
!6694 = !DILocation(line: 240, column: 4, scope: !6687)
!6695 = !DILocation(line: 238, column: 25, scope: !6682)
!6696 = !DILocation(line: 238, column: 4, scope: !6682)
!6697 = distinct !{!6697, !6685, !6698}
!6698 = !DILocation(line: 240, column: 4, scope: !6679)
!6699 = !DILocation(line: 241, column: 4, scope: !6638)
!6700 = !DILocation(line: 244, column: 4, scope: !6638)
!6701 = !DILocation(line: 247, column: 1, scope: !6606)
!6702 = distinct !DISubprogram(name: "nxt200x_writetuner", scope: !3, file: !3, line: 322, type: !6703, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!6703 = !DISubroutineType(types: !6704)
!6704 = !{!330, !4446, !4276}
!6705 = !DILocalVariable(name: "state", arg: 1, scope: !6702, file: !3, line: 322, type: !4446)
!6706 = !DILocation(line: 322, column: 54, scope: !6702)
!6707 = !DILocalVariable(name: "data", arg: 2, scope: !6702, file: !3, line: 322, type: !4276)
!6708 = !DILocation(line: 322, column: 65, scope: !6702)
!6709 = !DILocalVariable(name: "buf", scope: !6702, file: !3, line: 324, type: !348)
!6710 = !DILocation(line: 324, column: 5, scope: !6702)
!6711 = !DILocalVariable(name: "count", scope: !6702, file: !3, line: 324, type: !348)
!6712 = !DILocation(line: 324, column: 10, scope: !6702)
!6713 = !DILocation(line: 326, column: 2, scope: !6702)
!6714 = !DILocation(line: 326, column: 2, scope: !6715)
!6715 = distinct !DILexicalBlock(scope: !6716, file: !3, line: 326, column: 2)
!6716 = distinct !DILexicalBlock(scope: !6702, file: !3, line: 326, column: 2)
!6717 = !DILocation(line: 326, column: 2, scope: !6716)
!6718 = !DILocation(line: 326, column: 2, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6720, file: !3, line: 326, column: 2)
!6720 = distinct !DILexicalBlock(scope: !6715, file: !3, line: 326, column: 2)
!6721 = !DILocation(line: 326, column: 2, scope: !6720)
!6722 = !DILocation(line: 328, column: 2, scope: !6702)
!6723 = !DILocation(line: 328, column: 2, scope: !6724)
!6724 = distinct !DILexicalBlock(scope: !6725, file: !3, line: 328, column: 2)
!6725 = distinct !DILexicalBlock(scope: !6702, file: !3, line: 328, column: 2)
!6726 = !DILocation(line: 328, column: 2, scope: !6725)
!6727 = !DILocation(line: 328, column: 2, scope: !6728)
!6728 = distinct !DILexicalBlock(scope: !6729, file: !3, line: 328, column: 2)
!6729 = distinct !DILexicalBlock(scope: !6724, file: !3, line: 328, column: 2)
!6730 = !DILocation(line: 328, column: 2, scope: !6729)
!6731 = !DILocation(line: 332, column: 10, scope: !6702)
!6732 = !DILocation(line: 332, column: 17, scope: !6702)
!6733 = !DILocation(line: 332, column: 2, scope: !6702)
!6734 = !DILocation(line: 334, column: 23, scope: !6735)
!6735 = distinct !DILexicalBlock(scope: !6736, file: !3, line: 334, column: 8)
!6736 = distinct !DILexicalBlock(scope: !6702, file: !3, line: 332, column: 29)
!6737 = !DILocation(line: 334, column: 30, scope: !6735)
!6738 = !DILocation(line: 334, column: 39, scope: !6735)
!6739 = !DILocation(line: 334, column: 43, scope: !6735)
!6740 = !DILocation(line: 334, column: 8, scope: !6735)
!6741 = !DILocation(line: 334, column: 8, scope: !6736)
!6742 = !DILocation(line: 335, column: 5, scope: !6735)
!6743 = !DILocation(line: 337, column: 4, scope: !6736)
!6744 = !DILocation(line: 337, column: 11, scope: !6736)
!6745 = !DILocation(line: 337, column: 17, scope: !6736)
!6746 = !DILocation(line: 338, column: 19, scope: !6747)
!6747 = distinct !DILexicalBlock(scope: !6736, file: !3, line: 337, column: 23)
!6748 = !DILocation(line: 338, column: 26, scope: !6747)
!6749 = !DILocation(line: 338, column: 5, scope: !6747)
!6750 = !DILocation(line: 339, column: 9, scope: !6751)
!6751 = distinct !DILexicalBlock(scope: !6747, file: !3, line: 339, column: 9)
!6752 = !DILocation(line: 339, column: 13, scope: !6751)
!6753 = !DILocation(line: 339, column: 9, scope: !6747)
!6754 = !DILocation(line: 340, column: 6, scope: !6751)
!6755 = !DILocation(line: 341, column: 5, scope: !6747)
!6756 = !DILocation(line: 342, column: 10, scope: !6747)
!6757 = distinct !{!6757, !6743, !6758}
!6758 = !DILocation(line: 343, column: 4, scope: !6736)
!6759 = !DILocation(line: 344, column: 4, scope: !6736)
!6760 = !DILocation(line: 345, column: 4, scope: !6736)
!6761 = !DILocation(line: 348, column: 8, scope: !6736)
!6762 = !DILocation(line: 349, column: 23, scope: !6736)
!6763 = !DILocation(line: 349, column: 4, scope: !6736)
!6764 = !DILocation(line: 352, column: 8, scope: !6736)
!6765 = !DILocation(line: 353, column: 23, scope: !6736)
!6766 = !DILocation(line: 353, column: 4, scope: !6736)
!6767 = !DILocation(line: 356, column: 23, scope: !6736)
!6768 = !DILocation(line: 356, column: 36, scope: !6736)
!6769 = !DILocation(line: 356, column: 40, scope: !6736)
!6770 = !DILocation(line: 356, column: 4, scope: !6736)
!6771 = !DILocation(line: 359, column: 10, scope: !6736)
!6772 = !DILocation(line: 359, column: 18, scope: !6736)
!6773 = !DILocation(line: 359, column: 8, scope: !6736)
!6774 = !DILocation(line: 360, column: 23, scope: !6736)
!6775 = !DILocation(line: 360, column: 4, scope: !6736)
!6776 = !DILocation(line: 363, column: 8, scope: !6736)
!6777 = !DILocation(line: 364, column: 23, scope: !6736)
!6778 = !DILocation(line: 364, column: 4, scope: !6736)
!6779 = !DILocation(line: 366, column: 4, scope: !6736)
!6780 = !DILocation(line: 366, column: 11, scope: !6736)
!6781 = !DILocation(line: 366, column: 17, scope: !6736)
!6782 = !DILocation(line: 367, column: 23, scope: !6783)
!6783 = distinct !DILexicalBlock(scope: !6736, file: !3, line: 366, column: 23)
!6784 = !DILocation(line: 367, column: 5, scope: !6783)
!6785 = !DILocation(line: 368, column: 10, scope: !6786)
!6786 = distinct !DILexicalBlock(scope: !6783, file: !3, line: 368, column: 9)
!6787 = !DILocation(line: 368, column: 14, scope: !6786)
!6788 = !DILocation(line: 368, column: 21, scope: !6786)
!6789 = !DILocation(line: 368, column: 9, scope: !6783)
!6790 = !DILocation(line: 369, column: 6, scope: !6786)
!6791 = !DILocation(line: 370, column: 5, scope: !6783)
!6792 = !DILocation(line: 371, column: 10, scope: !6783)
!6793 = distinct !{!6793, !6779, !6794}
!6794 = !DILocation(line: 372, column: 4, scope: !6736)
!6795 = !DILocation(line: 373, column: 4, scope: !6736)
!6796 = !DILocation(line: 374, column: 4, scope: !6736)
!6797 = !DILocation(line: 376, column: 4, scope: !6736)
!6798 = !DILocation(line: 379, column: 2, scope: !6702)
!6799 = !DILocation(line: 380, column: 1, scope: !6702)
!6800 = distinct !DISubprogram(name: "nxt200x_agc_reset", scope: !3, file: !3, line: 382, type: !6145, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!6801 = !DILocalVariable(name: "state", arg: 1, scope: !6800, file: !3, line: 382, type: !4446)
!6802 = !DILocation(line: 382, column: 53, scope: !6800)
!6803 = !DILocalVariable(name: "buf", scope: !6800, file: !3, line: 384, type: !348)
!6804 = !DILocation(line: 384, column: 5, scope: !6800)
!6805 = !DILocation(line: 385, column: 2, scope: !6800)
!6806 = !DILocation(line: 385, column: 2, scope: !6807)
!6807 = distinct !DILexicalBlock(scope: !6808, file: !3, line: 385, column: 2)
!6808 = distinct !DILexicalBlock(scope: !6800, file: !3, line: 385, column: 2)
!6809 = !DILocation(line: 385, column: 2, scope: !6808)
!6810 = !DILocation(line: 385, column: 2, scope: !6811)
!6811 = distinct !DILexicalBlock(scope: !6812, file: !3, line: 385, column: 2)
!6812 = distinct !DILexicalBlock(scope: !6807, file: !3, line: 385, column: 2)
!6813 = !DILocation(line: 385, column: 2, scope: !6812)
!6814 = !DILocation(line: 387, column: 10, scope: !6800)
!6815 = !DILocation(line: 387, column: 17, scope: !6800)
!6816 = !DILocation(line: 387, column: 2, scope: !6800)
!6817 = !DILocation(line: 389, column: 8, scope: !6818)
!6818 = distinct !DILexicalBlock(scope: !6800, file: !3, line: 387, column: 29)
!6819 = !DILocation(line: 390, column: 23, scope: !6818)
!6820 = !DILocation(line: 390, column: 4, scope: !6818)
!6821 = !DILocation(line: 391, column: 8, scope: !6818)
!6822 = !DILocation(line: 392, column: 23, scope: !6818)
!6823 = !DILocation(line: 392, column: 4, scope: !6818)
!6824 = !DILocation(line: 393, column: 4, scope: !6818)
!6825 = !DILocation(line: 395, column: 30, scope: !6818)
!6826 = !DILocation(line: 395, column: 4, scope: !6818)
!6827 = !DILocation(line: 396, column: 8, scope: !6818)
!6828 = !DILocation(line: 397, column: 31, scope: !6818)
!6829 = !DILocation(line: 397, column: 4, scope: !6818)
!6830 = !DILocation(line: 398, column: 8, scope: !6818)
!6831 = !DILocation(line: 399, column: 31, scope: !6818)
!6832 = !DILocation(line: 399, column: 4, scope: !6818)
!6833 = !DILocation(line: 400, column: 4, scope: !6818)
!6834 = !DILocation(line: 402, column: 4, scope: !6818)
!6835 = !DILocation(line: 404, column: 2, scope: !6800)
!6836 = distinct !DISubprogram(name: "nxt200x_microcontroller_start", scope: !3, file: !3, line: 282, type: !6145, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!6837 = !DILocalVariable(name: "state", arg: 1, scope: !6836, file: !3, line: 282, type: !4446)
!6838 = !DILocation(line: 282, column: 66, scope: !6836)
!6839 = !DILocalVariable(name: "buf", scope: !6836, file: !3, line: 284, type: !348)
!6840 = !DILocation(line: 284, column: 5, scope: !6836)
!6841 = !DILocation(line: 285, column: 2, scope: !6836)
!6842 = !DILocation(line: 285, column: 2, scope: !6843)
!6843 = distinct !DILexicalBlock(scope: !6844, file: !3, line: 285, column: 2)
!6844 = distinct !DILexicalBlock(scope: !6836, file: !3, line: 285, column: 2)
!6845 = !DILocation(line: 285, column: 2, scope: !6844)
!6846 = !DILocation(line: 285, column: 2, scope: !6847)
!6847 = distinct !DILexicalBlock(scope: !6848, file: !3, line: 285, column: 2)
!6848 = distinct !DILexicalBlock(scope: !6843, file: !3, line: 285, column: 2)
!6849 = !DILocation(line: 285, column: 2, scope: !6848)
!6850 = !DILocation(line: 287, column: 6, scope: !6836)
!6851 = !DILocation(line: 288, column: 21, scope: !6836)
!6852 = !DILocation(line: 288, column: 2, scope: !6836)
!6853 = !DILocation(line: 289, column: 1, scope: !6836)
!6854 = distinct !DISubprogram(name: "i2c_writebytes", scope: !3, file: !3, line: 58, type: !4834, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!6855 = !DILocalVariable(name: "state", arg: 1, scope: !6854, file: !3, line: 58, type: !4446)
!6856 = !DILocation(line: 58, column: 50, scope: !6854)
!6857 = !DILocalVariable(name: "addr", arg: 2, scope: !6854, file: !3, line: 58, type: !348)
!6858 = !DILocation(line: 58, column: 60, scope: !6854)
!6859 = !DILocalVariable(name: "buf", arg: 3, scope: !6854, file: !3, line: 58, type: !4276)
!6860 = !DILocation(line: 58, column: 70, scope: !6854)
!6861 = !DILocalVariable(name: "len", arg: 4, scope: !6854, file: !3, line: 58, type: !348)
!6862 = !DILocation(line: 58, column: 78, scope: !6854)
!6863 = !DILocalVariable(name: "err", scope: !6854, file: !3, line: 60, type: !330)
!6864 = !DILocation(line: 60, column: 6, scope: !6854)
!6865 = !DILocalVariable(name: "msg", scope: !6854, file: !3, line: 61, type: !4335)
!6866 = !DILocation(line: 61, column: 17, scope: !6854)
!6867 = !DILocation(line: 61, column: 23, scope: !6854)
!6868 = !DILocation(line: 61, column: 33, scope: !6854)
!6869 = !DILocation(line: 61, column: 70, scope: !6854)
!6870 = !DILocation(line: 61, column: 58, scope: !6854)
!6871 = !DILocation(line: 63, column: 27, scope: !6872)
!6872 = distinct !DILexicalBlock(scope: !6854, file: !3, line: 63, column: 6)
!6873 = !DILocation(line: 63, column: 34, scope: !6872)
!6874 = !DILocation(line: 63, column: 13, scope: !6872)
!6875 = !DILocation(line: 63, column: 11, scope: !6872)
!6876 = !DILocation(line: 63, column: 49, scope: !6872)
!6877 = !DILocation(line: 63, column: 6, scope: !6854)
!6878 = !DILocation(line: 64, column: 3, scope: !6879)
!6879 = distinct !DILexicalBlock(scope: !6872, file: !3, line: 63, column: 55)
!6880 = !DILocation(line: 66, column: 3, scope: !6879)
!6881 = !DILocation(line: 68, column: 2, scope: !6854)
!6882 = !DILocation(line: 69, column: 1, scope: !6854)
!6883 = distinct !DISubprogram(name: "i2c_readbytes", scope: !3, file: !3, line: 71, type: !4834, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!6884 = !DILocalVariable(name: "state", arg: 1, scope: !6883, file: !3, line: 71, type: !4446)
!6885 = !DILocation(line: 71, column: 48, scope: !6883)
!6886 = !DILocalVariable(name: "addr", arg: 2, scope: !6883, file: !3, line: 71, type: !348)
!6887 = !DILocation(line: 71, column: 58, scope: !6883)
!6888 = !DILocalVariable(name: "buf", arg: 3, scope: !6883, file: !3, line: 71, type: !4276)
!6889 = !DILocation(line: 71, column: 68, scope: !6883)
!6890 = !DILocalVariable(name: "len", arg: 4, scope: !6883, file: !3, line: 71, type: !348)
!6891 = !DILocation(line: 71, column: 76, scope: !6883)
!6892 = !DILocalVariable(name: "err", scope: !6883, file: !3, line: 73, type: !330)
!6893 = !DILocation(line: 73, column: 6, scope: !6883)
!6894 = !DILocalVariable(name: "msg", scope: !6883, file: !3, line: 74, type: !4335)
!6895 = !DILocation(line: 74, column: 17, scope: !6883)
!6896 = !DILocation(line: 74, column: 23, scope: !6883)
!6897 = !DILocation(line: 74, column: 33, scope: !6883)
!6898 = !DILocation(line: 74, column: 77, scope: !6883)
!6899 = !DILocation(line: 74, column: 65, scope: !6883)
!6900 = !DILocation(line: 76, column: 27, scope: !6901)
!6901 = distinct !DILexicalBlock(scope: !6883, file: !3, line: 76, column: 6)
!6902 = !DILocation(line: 76, column: 34, scope: !6901)
!6903 = !DILocation(line: 76, column: 13, scope: !6901)
!6904 = !DILocation(line: 76, column: 11, scope: !6901)
!6905 = !DILocation(line: 76, column: 49, scope: !6901)
!6906 = !DILocation(line: 76, column: 6, scope: !6883)
!6907 = !DILocation(line: 77, column: 3, scope: !6908)
!6908 = distinct !DILexicalBlock(scope: !6901, file: !3, line: 76, column: 55)
!6909 = !DILocation(line: 79, column: 3, scope: !6908)
!6910 = !DILocation(line: 81, column: 2, scope: !6883)
!6911 = !DILocation(line: 82, column: 1, scope: !6883)
