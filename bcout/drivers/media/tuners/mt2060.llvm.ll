; ModuleID = '../bcout/drivers/media/tuners/mt2060.llvm.bc'
source_filename = "drivers/media/tuners/mt2060.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_mt2060_driver_init6:\09\09\09"
module asm ".long\09mt2060_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i8*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)* }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, %struct.dvb_adapter*, i8*, i8*, i8*, i8*, i8*, %struct.dtv_frontend_properties, i32 (i8*, i32, i32, i32)*, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)*, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i64)*, i32 (%struct.dvb_frontend*, i64)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, void (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i8*)* }
%struct.analog_demod_info = type { i8* }
%struct.analog_parameters = type { i32, i32, i32, i64 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.66, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.66 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.62 }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.4, %union.anon.54, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.54 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.55, i32 }
%union.anon.55 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.48, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.18, [0 x i64] }
%struct.anon.18 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.19, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.19 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.25, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.26, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.27, %union.anon.31, %struct.key_restriction* }
%union.anon.25 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.26 = type { i64 }
%union.anon.27 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.28, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.28 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.31 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.47, i32, [12 x i8] }
%union.anon.47 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.48 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.49, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.52 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i64, i64 }
%union.anon.52 = type { [12 x i32] }
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
%union.anon.64 = type { %struct.list_head }
%union.anon.65 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.56, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.57, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.58, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.56 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.57 = type { %struct.callback_head }
%union.anon.58 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.7 }
%union.anon.7 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.61 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.59 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.59 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.dvb_device = type { %struct.list_head, %struct.file_operations*, %struct.dvb_adapter*, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, i32 (%struct.file*, i32, i8*)*, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.0 }>
%union.anon.0 = type { i64 }
%struct.i2c_driver = type { i32, i32 (%struct.i2c_client*, %struct.i2c_device_id*)*, i32 (%struct.i2c_client*)*, i32 (%struct.i2c_client*)*, void (%struct.i2c_client*)*, void (%struct.i2c_client*, i32, i32)*, i32 (%struct.i2c_client*, i32, i8*)*, %struct.device_driver, %struct.i2c_device_id*, i32 (%struct.i2c_client*, %struct.i2c_board_info*)*, i16*, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], %struct.i2c_adapter*, %struct.device, i32, i32, %struct.list_head }
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
%struct.i2c_device_id = type { [20 x i8], i64 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, i8*, i8*, %struct.device_node*, %struct.fwnode_handle*, %struct.property_entry*, %struct.resource*, i32, i32 }
%struct.property_entry = type { i8*, i64, i8, i32, %union.anon.67 }
%union.anon.67 = type { i8* }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.kmem_cache = type opaque
%struct.mt2060_config = type { i8, i8 }
%struct.mt2060_priv = type { %struct.mt2060_config*, %struct.i2c_adapter*, %struct.i2c_client*, %struct.mt2060_config, i8, i32, i16, i8, i8 }
%struct.mt2060_platform_data = type { i8, i16, i8, %struct.dvb_frontend* }

@__param_str_debug = internal constant [13 x i8] c"mt2060.debug\00", align 1, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !425
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !318
@__UNIQUE_ID_debugtype220 = internal constant [26 x i8] c"mt2060.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !386
@__UNIQUE_ID_debug221 = internal constant [55 x i8] c"mt2060.parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1, !dbg !391
@.str = private unnamed_addr constant [46 x i8] c"\016MT2060: successfully identified (IF1 = %d)\0A\00", align 1
@mt2060_tuner_ops = internal constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Microtune MT2060\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48000000, i32 860000000, i32 50000, i32 0, i32 0, i32 0 }, void (%struct.dvb_frontend*)* @mt2060_release, i32 (%struct.dvb_frontend*)* @mt2060_init, i32 (%struct.dvb_frontend*)* @mt2060_sleep, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @mt2060_set_params, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* null, i32 (%struct.dvb_frontend*, i8*)* null, i32 (%struct.dvb_frontend*, i32*)* @mt2060_get_frequency, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i32*)* @mt2060_get_if_frequency, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i16*)* null, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null }, align 8, !dbg !427
@__UNIQUE_ID___addressable_mt2060_driver_init224 = internal global i8* bitcast (i32 ()* @mt2060_driver_init to i8*), section ".discard.addressable", align 8, !dbg !396
@mt2060_driver = internal global %struct.i2c_driver { i32 0, i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mt2060_probe, i32 (%struct.i2c_client*)* @mt2060_remove, i32 (%struct.i2c_client*)* null, void (%struct.i2c_client*)* null, void (%struct.i2c_client*, i32, i32)* null, i32 (%struct.i2c_client*, i32, i8*)* null, %struct.device_driver { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 1, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.i2c_device_id* getelementptr inbounds ([2 x %struct.i2c_device_id], [2 x %struct.i2c_device_id]* @mt2060_id_table, i32 0, i32 0), i32 (%struct.i2c_client*, %struct.i2c_board_info*)* null, i16* null, %struct.list_head zeroinitializer }, align 8, !dbg !4331
@__exitcall_mt2060_driver_exit = internal global void ()* @mt2060_driver_exit, section ".exitcall.exit", align 8, !dbg !398
@__UNIQUE_ID_author225 = internal constant [28 x i8] c"mt2060.author=Olivier DANET\00", section ".modinfo", align 1, !dbg !405
@__UNIQUE_ID_description226 = internal constant [57 x i8] c"mt2060.description=Microtune MT2060 silicon tuner driver\00", section ".modinfo", align 1, !dbg !410
@__UNIQUE_ID_file227 = internal constant [40 x i8] c"mt2060.file=drivers/media/tuners/mt2060\00", section ".modinfo", align 1, !dbg !415
@__UNIQUE_ID_license228 = internal constant [19 x i8] c"mt2060.license=GPL\00", section ".modinfo", align 1, !dbg !420
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\014mt2060 I2C read failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\014mt2060 I2C write failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"\017MT2060: IF1: %dMHz\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"\017MT2060: PLL freq=%dkHz  f_lo1=%dkHz  f_lo2=%dkHz\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"\017MT2060: PLL div1=%d  num1=%d  div2=%d  num2=%d\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"\017MT2060: PLL [1..5]: %2x %2x %2x %2x %2x\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"\014mt2060 I2C write failed (len=%i)\0A\00", align 1
@mt2060_config1 = internal global [6 x i8] c"\01?t\00\08\93", align 1, !dbg !4324
@mt2060_config2 = internal global [10 x i8] c"\09 \1E0\FF\80\FF\00,B", align 1, !dbg !4326
@.str.10 = private unnamed_addr constant [41 x i8] c"\017MT2060: calibration was successful: %d\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"\017MT2060: FMCAL timed out\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"mt2060\00", align 1
@mt2060_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mt2060\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0 }, %struct.i2c_device_id zeroinitializer], align 16, !dbg !4559
@.str.13 = private unnamed_addr constant [38 x i8] c"Cannot proceed without platform data\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Microtune MT2060 successfully identified\0A\00", align 1
@llvm.used = appending global [10 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_mt2060_driver_init224 to i8*), i8* bitcast (void ()* @mt2060_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_mt2060_driver_exit to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_author225, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__UNIQUE_ID_description226, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__UNIQUE_ID_file227, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license228, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @mt2060_attach(%struct.dvb_frontend* %fe, %struct.i2c_adapter* %i2c, %struct.mt2060_config* %cfg, i16 zeroext %if1) #0 !dbg !4570 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %cfg.addr = alloca %struct.mt2060_config*, align 8
  %if1.addr = alloca i16, align 2
  %priv = alloca %struct.mt2060_priv*, align 8
  %id = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4579, metadata !DIExpression()), !dbg !4580
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4581, metadata !DIExpression()), !dbg !4582
  store %struct.mt2060_config* %cfg, %struct.mt2060_config** %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mt2060_config** %cfg.addr, metadata !4583, metadata !DIExpression()), !dbg !4584
  store i16 %if1, i16* %if1.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %if1.addr, metadata !4585, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.declare(metadata %struct.mt2060_priv** %priv, metadata !4587, metadata !DIExpression()), !dbg !4601
  store %struct.mt2060_priv* null, %struct.mt2060_priv** %priv, align 8, !dbg !4601
  call void @llvm.dbg.declare(metadata i8* %id, metadata !4602, metadata !DIExpression()), !dbg !4603
  store i8 0, i8* %id, align 1, !dbg !4603
  %call = call i8* @kzalloc(i64 40, i32 3264) #9, !dbg !4604
  %0 = bitcast i8* %call to %struct.mt2060_priv*, !dbg !4604
  store %struct.mt2060_priv* %0, %struct.mt2060_priv** %priv, align 8, !dbg !4605
  %1 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !4606
  %cmp = icmp eq %struct.mt2060_priv* %1, null, !dbg !4608
  br i1 %cmp, label %if.then, label %if.end, !dbg !4609

if.then:                                          ; preds = %entry
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4610
  br label %return, !dbg !4610

if.end:                                           ; preds = %entry
  %2 = load %struct.mt2060_config*, %struct.mt2060_config** %cfg.addr, align 8, !dbg !4611
  %3 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !4612
  %cfg1 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %3, i32 0, i32 0, !dbg !4613
  store %struct.mt2060_config* %2, %struct.mt2060_config** %cfg1, align 8, !dbg !4614
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4615
  %5 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !4616
  %i2c2 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %5, i32 0, i32 1, !dbg !4617
  store %struct.i2c_adapter* %4, %struct.i2c_adapter** %i2c2, align 8, !dbg !4618
  %6 = load i16, i16* %if1.addr, align 2, !dbg !4619
  %7 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !4620
  %if1_freq = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %7, i32 0, i32 6, !dbg !4621
  store i16 %6, i16* %if1_freq, align 8, !dbg !4622
  %8 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !4623
  %i2c_max_regs = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %8, i32 0, i32 4, !dbg !4624
  store i8 -1, i8* %i2c_max_regs, align 2, !dbg !4625
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4626
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1, !dbg !4628
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 26, !dbg !4629
  %10 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !4629
  %tobool = icmp ne i32 (%struct.dvb_frontend*, i32)* %10, null, !dbg !4626
  br i1 %tobool, label %if.then3, label %if.end7, !dbg !4630

if.then3:                                         ; preds = %if.end
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4631
  %ops4 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1, !dbg !4632
  %i2c_gate_ctrl5 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops4, i32 0, i32 26, !dbg !4633
  %12 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl5, align 8, !dbg !4633
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4634
  %call6 = call i32 %12(%struct.dvb_frontend* %13, i32 1) #9, !dbg !4631
  br label %if.end7, !dbg !4631

if.end7:                                          ; preds = %if.then3, %if.end
  %14 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !4635
  %call8 = call i32 @mt2060_readreg(%struct.mt2060_priv* %14, i8 zeroext 0, i8* %id) #9, !dbg !4637
  %cmp9 = icmp ne i32 %call8, 0, !dbg !4638
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4639

if.then10:                                        ; preds = %if.end7
  %15 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !4640
  %16 = bitcast %struct.mt2060_priv* %15 to i8*, !dbg !4640
  call void @kfree(i8* %16) #9, !dbg !4642
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4643
  br label %return, !dbg !4643

if.end11:                                         ; preds = %if.end7
  %17 = load i8, i8* %id, align 1, !dbg !4644
  %conv = zext i8 %17 to i32, !dbg !4644
  %cmp12 = icmp ne i32 %conv, 99, !dbg !4646
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !4647

if.then14:                                        ; preds = %if.end11
  %18 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !4648
  %19 = bitcast %struct.mt2060_priv* %18 to i8*, !dbg !4648
  call void @kfree(i8* %19) #9, !dbg !4650
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4651
  br label %return, !dbg !4651

if.end15:                                         ; preds = %if.end11
  %20 = load i16, i16* %if1.addr, align 2, !dbg !4652
  %conv16 = zext i16 %20 to i32, !dbg !4652
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %conv16) #10, !dbg !4653
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4654
  %ops18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 1, !dbg !4655
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops18, i32 0, i32 30, !dbg !4656
  %22 = bitcast %struct.dvb_tuner_ops* %tuner_ops to i8*, !dbg !4657
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 getelementptr inbounds (%struct.dvb_tuner_ops, %struct.dvb_tuner_ops* @mt2060_tuner_ops, i32 0, i32 0, i32 0, i32 0), i64 288, i1 false), !dbg !4657
  %23 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !4658
  %24 = bitcast %struct.mt2060_priv* %23 to i8*, !dbg !4658
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4659
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 4, !dbg !4660
  store i8* %24, i8** %tuner_priv, align 8, !dbg !4661
  %26 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !4662
  call void @mt2060_calibrate(%struct.mt2060_priv* %26) #9, !dbg !4663
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4664
  %ops19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 1, !dbg !4666
  %i2c_gate_ctrl20 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops19, i32 0, i32 26, !dbg !4667
  %28 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl20, align 8, !dbg !4667
  %tobool21 = icmp ne i32 (%struct.dvb_frontend*, i32)* %28, null, !dbg !4664
  br i1 %tobool21, label %if.then22, label %if.end26, !dbg !4668

if.then22:                                        ; preds = %if.end15
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4669
  %ops23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %29, i32 0, i32 1, !dbg !4670
  %i2c_gate_ctrl24 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops23, i32 0, i32 26, !dbg !4671
  %30 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl24, align 8, !dbg !4671
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4672
  %call25 = call i32 %30(%struct.dvb_frontend* %31, i32 0) #9, !dbg !4669
  br label %if.end26, !dbg !4669

if.end26:                                         ; preds = %if.then22, %if.end15
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4673
  store %struct.dvb_frontend* %32, %struct.dvb_frontend** %retval, align 8, !dbg !4674
  br label %return, !dbg !4674

return:                                           ; preds = %if.end26, %if.then14, %if.then10, %if.then
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4675
  ret %struct.dvb_frontend* %33, !dbg !4675
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4676 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4679, metadata !DIExpression()), !dbg !4683
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4689, metadata !DIExpression()), !dbg !4690
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4691, metadata !DIExpression()), !dbg !4692
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4693, metadata !DIExpression()), !dbg !4694
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4695, metadata !DIExpression()), !dbg !4699
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4701, metadata !DIExpression()), !dbg !4705
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4707, metadata !DIExpression()), !dbg !4711
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4716, metadata !DIExpression()), !dbg !4717
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4718, metadata !DIExpression()), !dbg !4719
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4720, metadata !DIExpression()), !dbg !4721
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4722, metadata !DIExpression()), !dbg !4723
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4724, metadata !DIExpression()), !dbg !4725
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4726, metadata !DIExpression()), !dbg !4727
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4728, metadata !DIExpression()), !dbg !4729
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4730, metadata !DIExpression()), !dbg !4731
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4732, metadata !DIExpression()), !dbg !4733
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4734, metadata !DIExpression()), !dbg !4735
  %0 = load i64, i64* %size.addr, align 8, !dbg !4736
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4737
  %or = or i32 %1, 256, !dbg !4738
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4739
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !4740
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4741

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4742
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4743
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4744

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4745
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4746
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4747
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !4748
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4725
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4749
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4750
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4751
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4752
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4753
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4754
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !4755
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4755
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4755
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4755
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !4755
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4756
  br label %kmalloc.exit, !dbg !4756

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4757
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4758
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4758
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4760

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4761
  br label %kmalloc_index.exit.i, !dbg !4761

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4762
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4764
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4765

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4766
  br label %kmalloc_index.exit.i, !dbg !4766

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4767
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4769
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4770

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4771
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4772
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4773

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4774
  br label %kmalloc_index.exit.i, !dbg !4774

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4775
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4777
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4778

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4779
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4780
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4781

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4782
  br label %kmalloc_index.exit.i, !dbg !4782

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4783
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4785
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4786

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4787
  br label %kmalloc_index.exit.i, !dbg !4787

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4788
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4790
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4791

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4792
  br label %kmalloc_index.exit.i, !dbg !4792

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4793
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4795
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4796

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4797
  br label %kmalloc_index.exit.i, !dbg !4797

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4798
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4800
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4801

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4802
  br label %kmalloc_index.exit.i, !dbg !4802

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4803
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4805
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4806

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4807
  br label %kmalloc_index.exit.i, !dbg !4807

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4808
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4810
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4811

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4812
  br label %kmalloc_index.exit.i, !dbg !4812

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4813
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4815
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4816

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4817
  br label %kmalloc_index.exit.i, !dbg !4817

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4818
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4820
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4821

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4822
  br label %kmalloc_index.exit.i, !dbg !4822

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4823
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4825
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4826

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4827
  br label %kmalloc_index.exit.i, !dbg !4827

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4828
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4830
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4831

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4832
  br label %kmalloc_index.exit.i, !dbg !4832

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4833
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4835
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4836

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4837
  br label %kmalloc_index.exit.i, !dbg !4837

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4838
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4840
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4841

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4842
  br label %kmalloc_index.exit.i, !dbg !4842

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4843
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4845
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4846

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4847
  br label %kmalloc_index.exit.i, !dbg !4847

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4848
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4850
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4851

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4852
  br label %kmalloc_index.exit.i, !dbg !4852

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4853
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4855
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4856

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4857
  br label %kmalloc_index.exit.i, !dbg !4857

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4858
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4860
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4861

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4862
  br label %kmalloc_index.exit.i, !dbg !4862

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4863
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4865
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4866

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4867
  br label %kmalloc_index.exit.i, !dbg !4867

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4868
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4870
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4871

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4872
  br label %kmalloc_index.exit.i, !dbg !4872

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4873
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4875
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4876

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4877
  br label %kmalloc_index.exit.i, !dbg !4877

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4878
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4880
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4881

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4882
  br label %kmalloc_index.exit.i, !dbg !4882

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4883
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4885
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4886

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4887
  br label %kmalloc_index.exit.i, !dbg !4887

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4888
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4890
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4891

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4892
  br label %kmalloc_index.exit.i, !dbg !4892

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4893
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4895
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4896

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4897
  br label %kmalloc_index.exit.i, !dbg !4897

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4898
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4900
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4901

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4902
  br label %kmalloc_index.exit.i, !dbg !4902

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !4903, !srcloc !4906
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 106) #11, !dbg !4907, !srcloc !4910
  unreachable, !dbg !4911

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4912
  store i32 %45, i32* %index.i, align 4, !dbg !4913
  %46 = load i32, i32* %index.i, align 4, !dbg !4914
  %tobool.i = icmp ne i32 %46, 0, !dbg !4914
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4916

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4917
  br label %kmalloc.exit, !dbg !4917

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4918
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4919
  %and.i.i = and i32 %48, 17, !dbg !4919
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4919
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4919
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4919
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4919
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4921

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4922
  br label %kmalloc_type.exit.i, !dbg !4922

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4923
  %and2.i.i = and i32 %49, 1, !dbg !4924
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4923
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4923
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4923
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4925
  br label %kmalloc_type.exit.i, !dbg !4925

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4926
  %idxprom.i = zext i32 %51 to i64, !dbg !4927
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4927
  %52 = load i32, i32* %index.i, align 4, !dbg !4928
  %idxprom6.i = zext i32 %52 to i64, !dbg !4927
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4927
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4927
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4929
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4930
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4931
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4932
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !4933
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4933
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4933
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4933
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !4933
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4694
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4934
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4935
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4936
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4937
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !4938
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4939
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4940
  store i8* %62, i8** %retval.i, align 8, !dbg !4941
  br label %kmalloc.exit, !dbg !4941

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4942
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4943
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !4944
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4944
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4944
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4944
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !4944
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4945
  br label %kmalloc.exit, !dbg !4945

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4946
  ret i8* %65, !dbg !4947
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt2060_readreg(%struct.mt2060_priv* %priv, i8 zeroext %reg, i8* %val) #0 !dbg !4948 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4679, metadata !DIExpression()), !dbg !4951
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4689, metadata !DIExpression()), !dbg !4954
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4691, metadata !DIExpression()), !dbg !4955
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4693, metadata !DIExpression()), !dbg !4956
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4695, metadata !DIExpression()), !dbg !4957
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4701, metadata !DIExpression()), !dbg !4959
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4707, metadata !DIExpression()), !dbg !4961
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4716, metadata !DIExpression()), !dbg !4964
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4718, metadata !DIExpression()), !dbg !4965
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4720, metadata !DIExpression()), !dbg !4966
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4722, metadata !DIExpression()), !dbg !4967
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4724, metadata !DIExpression()), !dbg !4968
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4726, metadata !DIExpression()), !dbg !4969
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4728, metadata !DIExpression()), !dbg !4970
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4730, metadata !DIExpression()), !dbg !4971
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.mt2060_priv*, align 8
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8*, align 8
  %msg = alloca [2 x %struct.i2c_msg], align 16
  %rc = alloca i32, align 4
  %b = alloca i8*, align 8
  store %struct.mt2060_priv* %priv, %struct.mt2060_priv** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mt2060_priv** %priv.addr, metadata !4972, metadata !DIExpression()), !dbg !4973
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4974, metadata !DIExpression()), !dbg !4975
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !4976, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !4978, metadata !DIExpression()), !dbg !4980
  %arrayinit.begin = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4981
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 0, !dbg !4982
  %0 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !4983
  %cfg = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %0, i32 0, i32 0, !dbg !4984
  %1 = load %struct.mt2060_config*, %struct.mt2060_config** %cfg, align 8, !dbg !4984
  %i2c_address = getelementptr inbounds %struct.mt2060_config, %struct.mt2060_config* %1, i32 0, i32 0, !dbg !4985
  %2 = load i8, i8* %i2c_address, align 1, !dbg !4985
  %conv = zext i8 %2 to i16, !dbg !4983
  store i16 %conv, i16* %addr, align 16, !dbg !4982
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 1, !dbg !4982
  store i16 0, i16* %flags, align 2, !dbg !4982
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 2, !dbg !4982
  store i16 1, i16* %len, align 4, !dbg !4982
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 3, !dbg !4982
  store i8* null, i8** %buf, align 8, !dbg !4982
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i64 1, !dbg !4981
  %addr1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4986
  %3 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !4987
  %cfg2 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %3, i32 0, i32 0, !dbg !4988
  %4 = load %struct.mt2060_config*, %struct.mt2060_config** %cfg2, align 8, !dbg !4988
  %i2c_address3 = getelementptr inbounds %struct.mt2060_config, %struct.mt2060_config* %4, i32 0, i32 0, !dbg !4989
  %5 = load i8, i8* %i2c_address3, align 1, !dbg !4989
  %conv4 = zext i8 %5 to i16, !dbg !4987
  store i16 %conv4, i16* %addr1, align 16, !dbg !4986
  %flags5 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4986
  store i16 1, i16* %flags5, align 2, !dbg !4986
  %len6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4986
  store i16 1, i16* %len6, align 4, !dbg !4986
  %buf7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4986
  store i8* null, i8** %buf7, align 8, !dbg !4986
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4990, metadata !DIExpression()), !dbg !4991
  store i32 0, i32* %rc, align 4, !dbg !4991
  call void @llvm.dbg.declare(metadata i8** %b, metadata !4992, metadata !DIExpression()), !dbg !4993
  store i64 2, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4994
  %7 = call i1 @llvm.is.constant.i64(i64 %6) #11, !dbg !4995
  br i1 %7, label %if.then.i, label %if.end9.i, !dbg !4996

if.then.i:                                        ; preds = %entry
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !4997
  %cmp.i = icmp ugt i64 %8, 8192, !dbg !4998
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4999

if.then1.i:                                       ; preds = %if.then.i
  %9 = load i64, i64* %size.addr.i, align 8, !dbg !5000
  %10 = load i32, i32* %flags.addr.i, align 4, !dbg !5001
  store i64 %9, i64* %size.addr.i.i, align 8
  store i32 %10, i32* %flags.addr.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i, align 8, !dbg !5002
  %call.i.i = call i32 @get_order(i64 %11) #12, !dbg !5003
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4968
  %12 = load i64, i64* %size.addr.i.i, align 8, !dbg !5004
  %13 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5005
  %14 = load i32, i32* %order.i.i, align 4, !dbg !5006
  store i64 %12, i64* %size.addr.i.i.i, align 8
  store i32 %13, i32* %flags.addr.i.i.i, align 4
  store i32 %14, i32* %order.addr.i.i.i, align 4
  %15 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5007
  %16 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5008
  %17 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5009
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %15, i32 %16, i32 %17) #13, !dbg !5010
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5010
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5010
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5010
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !5010
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5011
  br label %kmalloc.exit, !dbg !5011

if.end.i:                                         ; preds = %if.then.i
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !5012
  store i64 %18, i64* %size.addr.i11.i, align 8
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5013
  %tobool.i.i = icmp ne i64 %19, 0, !dbg !5013
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5014

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5015
  br label %kmalloc_index.exit.i, !dbg !5015

if.end.i.i:                                       ; preds = %if.end.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5016
  %cmp.i.i = icmp ule i64 %20, 8, !dbg !5017
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5018

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5019
  br label %kmalloc_index.exit.i, !dbg !5019

if.end2.i.i:                                      ; preds = %if.end.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5020
  %cmp3.i.i = icmp ugt i64 %21, 64, !dbg !5021
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5022

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5023
  %cmp4.i.i = icmp ule i64 %22, 96, !dbg !5024
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5025

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5026
  br label %kmalloc_index.exit.i, !dbg !5026

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5027
  %cmp7.i.i = icmp ugt i64 %23, 128, !dbg !5028
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5029

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5030
  %cmp9.i.i = icmp ule i64 %24, 192, !dbg !5031
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5032

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5033
  br label %kmalloc_index.exit.i, !dbg !5033

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5034
  %cmp12.i.i = icmp ule i64 %25, 8, !dbg !5035
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5036

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5037
  br label %kmalloc_index.exit.i, !dbg !5037

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5038
  %cmp15.i.i = icmp ule i64 %26, 16, !dbg !5039
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5040

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5041
  br label %kmalloc_index.exit.i, !dbg !5041

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5042
  %cmp18.i.i = icmp ule i64 %27, 32, !dbg !5043
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5044

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5045
  br label %kmalloc_index.exit.i, !dbg !5045

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5046
  %cmp21.i.i = icmp ule i64 %28, 64, !dbg !5047
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5048

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5049
  br label %kmalloc_index.exit.i, !dbg !5049

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5050
  %cmp24.i.i = icmp ule i64 %29, 128, !dbg !5051
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5052

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5053
  br label %kmalloc_index.exit.i, !dbg !5053

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5054
  %cmp27.i.i = icmp ule i64 %30, 256, !dbg !5055
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5056

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5057
  br label %kmalloc_index.exit.i, !dbg !5057

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5058
  %cmp30.i.i = icmp ule i64 %31, 512, !dbg !5059
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5060

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5061
  br label %kmalloc_index.exit.i, !dbg !5061

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5062
  %cmp33.i.i = icmp ule i64 %32, 1024, !dbg !5063
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5064

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5065
  br label %kmalloc_index.exit.i, !dbg !5065

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5066
  %cmp36.i.i = icmp ule i64 %33, 2048, !dbg !5067
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5068

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5069
  br label %kmalloc_index.exit.i, !dbg !5069

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5070
  %cmp39.i.i = icmp ule i64 %34, 4096, !dbg !5071
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5072

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5073
  br label %kmalloc_index.exit.i, !dbg !5073

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5074
  %cmp42.i.i = icmp ule i64 %35, 8192, !dbg !5075
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5076

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5077
  br label %kmalloc_index.exit.i, !dbg !5077

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5078
  %cmp45.i.i = icmp ule i64 %36, 16384, !dbg !5079
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5080

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5081
  br label %kmalloc_index.exit.i, !dbg !5081

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5082
  %cmp48.i.i = icmp ule i64 %37, 32768, !dbg !5083
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5084

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5085
  br label %kmalloc_index.exit.i, !dbg !5085

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5086
  %cmp51.i.i = icmp ule i64 %38, 65536, !dbg !5087
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5088

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5089
  br label %kmalloc_index.exit.i, !dbg !5089

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5090
  %cmp54.i.i = icmp ule i64 %39, 131072, !dbg !5091
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5092

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5093
  br label %kmalloc_index.exit.i, !dbg !5093

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5094
  %cmp57.i.i = icmp ule i64 %40, 262144, !dbg !5095
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5096

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5097
  br label %kmalloc_index.exit.i, !dbg !5097

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5098
  %cmp60.i.i = icmp ule i64 %41, 524288, !dbg !5099
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5100

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5101
  br label %kmalloc_index.exit.i, !dbg !5101

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5102
  %cmp63.i.i = icmp ule i64 %42, 1048576, !dbg !5103
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5104

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5105
  br label %kmalloc_index.exit.i, !dbg !5105

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5106
  %cmp66.i.i = icmp ule i64 %43, 2097152, !dbg !5107
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5108

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5109
  br label %kmalloc_index.exit.i, !dbg !5109

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5110
  %cmp69.i.i = icmp ule i64 %44, 4194304, !dbg !5111
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5112

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5113
  br label %kmalloc_index.exit.i, !dbg !5113

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5114
  %cmp72.i.i = icmp ule i64 %45, 8388608, !dbg !5115
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5116

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5117
  br label %kmalloc_index.exit.i, !dbg !5117

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5118
  %cmp75.i.i = icmp ule i64 %46, 16777216, !dbg !5119
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5120

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5121
  br label %kmalloc_index.exit.i, !dbg !5121

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5122
  %cmp78.i.i = icmp ule i64 %47, 33554432, !dbg !5123
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5124

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5125
  br label %kmalloc_index.exit.i, !dbg !5125

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5126
  %cmp81.i.i = icmp ule i64 %48, 67108864, !dbg !5127
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5128

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5129
  br label %kmalloc_index.exit.i, !dbg !5129

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5130, !srcloc !4906
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 106) #11, !dbg !5131, !srcloc !4910
  unreachable, !dbg !5132

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %49 = load i32, i32* %retval.i.i, align 4, !dbg !5133
  store i32 %49, i32* %index.i, align 4, !dbg !5134
  %50 = load i32, i32* %index.i, align 4, !dbg !5135
  %tobool.i = icmp ne i32 %50, 0, !dbg !5135
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5136

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5137
  br label %kmalloc.exit, !dbg !5137

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %51 = load i32, i32* %flags.addr.i, align 4, !dbg !5138
  store i32 %51, i32* %flags.addr.i13.i, align 4
  %52 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5139
  %and.i.i = and i32 %52, 17, !dbg !5139
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5139
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5139
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5139
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5139
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5140

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5141
  br label %kmalloc_type.exit.i, !dbg !5141

if.end.i16.i:                                     ; preds = %if.end4.i
  %53 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5142
  %and2.i.i = and i32 %53, 1, !dbg !5143
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5142
  %54 = zext i1 %tobool3.i.i to i64, !dbg !5142
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5142
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5144
  br label %kmalloc_type.exit.i, !dbg !5144

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %55 = load i32, i32* %retval.i12.i, align 4, !dbg !5145
  %idxprom.i = zext i32 %55 to i64, !dbg !5146
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5146
  %56 = load i32, i32* %index.i, align 4, !dbg !5147
  %idxprom6.i = zext i32 %56 to i64, !dbg !5146
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5146
  %57 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5146
  %58 = load i32, i32* %flags.addr.i, align 4, !dbg !5148
  %59 = load i64, i64* %size.addr.i, align 8, !dbg !5149
  store %struct.kmem_cache* %57, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %58, i32* %flags.addr.i17.i, align 4
  store i64 %59, i64* %size.addr.i18.i, align 8
  %60 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5150
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5151
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %60, i32 %61) #13, !dbg !5152
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5152
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5152
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5152
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5152
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4956
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5153
  %63 = load i8*, i8** %ret.i.i, align 8, !dbg !5154
  %64 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5155
  %65 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5156
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %62, i8* %63, i64 %64, i32 %65) #13, !dbg !5157
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5158
  %66 = load i8*, i8** %ret.i.i, align 8, !dbg !5159
  store i8* %66, i8** %retval.i, align 8, !dbg !5160
  br label %kmalloc.exit, !dbg !5160

if.end9.i:                                        ; preds = %entry
  %67 = load i64, i64* %size.addr.i, align 8, !dbg !5161
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !5162
  %call10.i = call noalias i8* @__kmalloc(i64 %67, i32 %68) #13, !dbg !5163
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5163
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5163
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5163
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5163
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5164
  br label %kmalloc.exit, !dbg !5164

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %69 = load i8*, i8** %retval.i, align 8, !dbg !5165
  store i8* %69, i8** %b, align 8, !dbg !5166
  %70 = load i8*, i8** %b, align 8, !dbg !5167
  %tobool = icmp ne i8* %70, null, !dbg !5167
  br i1 %tobool, label %if.end, label %if.then, !dbg !5169

if.then:                                          ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !5170
  br label %return, !dbg !5170

if.end:                                           ; preds = %kmalloc.exit
  %71 = load i8, i8* %reg.addr, align 1, !dbg !5171
  %72 = load i8*, i8** %b, align 8, !dbg !5172
  %arrayidx = getelementptr i8, i8* %72, i64 0, !dbg !5172
  store i8 %71, i8* %arrayidx, align 1, !dbg !5173
  %73 = load i8*, i8** %b, align 8, !dbg !5174
  %arrayidx8 = getelementptr i8, i8* %73, i64 1, !dbg !5174
  store i8 0, i8* %arrayidx8, align 1, !dbg !5175
  %74 = load i8*, i8** %b, align 8, !dbg !5176
  %arrayidx9 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !5177
  %buf10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx9, i32 0, i32 3, !dbg !5178
  store i8* %74, i8** %buf10, align 8, !dbg !5179
  %75 = load i8*, i8** %b, align 8, !dbg !5180
  %add.ptr = getelementptr i8, i8* %75, i64 1, !dbg !5181
  %arrayidx11 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !5182
  %buf12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx11, i32 0, i32 3, !dbg !5183
  store i8* %add.ptr, i8** %buf12, align 8, !dbg !5184
  %76 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !5185
  %i2c = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %76, i32 0, i32 1, !dbg !5187
  %77 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5187
  %arraydecay = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !5188
  %call13 = call i32 @i2c_transfer(%struct.i2c_adapter* %77, %struct.i2c_msg* %arraydecay, i32 2) #9, !dbg !5189
  %cmp = icmp ne i32 %call13, 2, !dbg !5190
  br i1 %cmp, label %if.then15, label %if.end17, !dbg !5191

if.then15:                                        ; preds = %if.end
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !5192
  store i32 -121, i32* %rc, align 4, !dbg !5194
  br label %if.end17, !dbg !5195

if.end17:                                         ; preds = %if.then15, %if.end
  %78 = load i8*, i8** %b, align 8, !dbg !5196
  %arrayidx18 = getelementptr i8, i8* %78, i64 1, !dbg !5196
  %79 = load i8, i8* %arrayidx18, align 1, !dbg !5196
  %80 = load i8*, i8** %val.addr, align 8, !dbg !5197
  store i8 %79, i8* %80, align 1, !dbg !5198
  %81 = load i8*, i8** %b, align 8, !dbg !5199
  call void @kfree(i8* %81) #9, !dbg !5200
  %82 = load i32, i32* %rc, align 4, !dbg !5201
  store i32 %82, i32* %retval, align 4, !dbg !5202
  br label %return, !dbg !5202

return:                                           ; preds = %if.end17, %if.then
  %83 = load i32, i32* %retval, align 4, !dbg !5203
  ret i32 %83, !dbg !5203
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mt2060_calibrate(%struct.mt2060_priv* %priv) #0 !dbg !5204 {
entry:
  %priv.addr = alloca %struct.mt2060_priv*, align 8
  %b = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.mt2060_priv* %priv, %struct.mt2060_priv** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mt2060_priv** %priv.addr, metadata !5207, metadata !DIExpression()), !dbg !5208
  call void @llvm.dbg.declare(metadata i8* %b, metadata !5209, metadata !DIExpression()), !dbg !5210
  store i8 0, i8* %b, align 1, !dbg !5210
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5211, metadata !DIExpression()), !dbg !5212
  store i32 0, i32* %i, align 4, !dbg !5212
  %0 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !5213
  %call = call i32 @mt2060_writeregs(%struct.mt2060_priv* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @mt2060_config1, i64 0, i64 0), i8 zeroext 6) #9, !dbg !5215
  %tobool = icmp ne i32 %call, 0, !dbg !5215
  br i1 %tobool, label %if.then, label %if.end, !dbg !5216

if.then:                                          ; preds = %entry
  br label %if.end58, !dbg !5217

if.end:                                           ; preds = %entry
  %1 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !5218
  %call1 = call i32 @mt2060_writeregs(%struct.mt2060_priv* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @mt2060_config2, i64 0, i64 0), i8 zeroext 10) #9, !dbg !5220
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5220
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5221

if.then3:                                         ; preds = %if.end
  br label %if.end58, !dbg !5222

if.end4:                                          ; preds = %if.end
  %2 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !5223
  %3 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !5224
  %cfg = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %3, i32 0, i32 0, !dbg !5225
  %4 = load %struct.mt2060_config*, %struct.mt2060_config** %cfg, align 8, !dbg !5225
  %clock_out = getelementptr inbounds %struct.mt2060_config, %struct.mt2060_config* %4, i32 0, i32 1, !dbg !5226
  %5 = load i8, i8* %clock_out, align 1, !dbg !5226
  %conv = zext i8 %5 to i32, !dbg !5224
  %shl = shl i32 %conv, 6, !dbg !5227
  %or = or i32 %shl, 48, !dbg !5228
  %conv5 = trunc i32 %or to i8, !dbg !5229
  %call6 = call i32 @mt2060_writereg(%struct.mt2060_priv* %2, i8 zeroext 11, i8 zeroext %conv5) #9, !dbg !5230
  br label %do.body, !dbg !5231

do.body:                                          ; preds = %do.cond, %if.end4
  %6 = load i8, i8* %b, align 1, !dbg !5232
  %conv7 = zext i8 %6 to i32, !dbg !5232
  %or8 = or i32 %conv7, 64, !dbg !5232
  %conv9 = trunc i32 %or8 to i8, !dbg !5232
  store i8 %conv9, i8* %b, align 1, !dbg !5232
  %7 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !5234
  %8 = load i8, i8* %b, align 1, !dbg !5235
  %call10 = call i32 @mt2060_writereg(%struct.mt2060_priv* %7, i8 zeroext 3, i8 zeroext %8) #9, !dbg !5236
  call void @msleep(i32 20) #9, !dbg !5237
  %9 = load i32, i32* %i, align 4, !dbg !5238
  %cmp = icmp eq i32 %9, 0, !dbg !5240
  br i1 %cmp, label %if.then12, label %if.end19, !dbg !5241

if.then12:                                        ; preds = %do.body
  %10 = load i8, i8* %b, align 1, !dbg !5242
  %conv13 = zext i8 %10 to i32, !dbg !5242
  %or14 = or i32 %conv13, 128, !dbg !5242
  %conv15 = trunc i32 %or14 to i8, !dbg !5242
  store i8 %conv15, i8* %b, align 1, !dbg !5242
  %11 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !5244
  %12 = load i8, i8* %b, align 1, !dbg !5245
  %call16 = call i32 @mt2060_writereg(%struct.mt2060_priv* %11, i8 zeroext 3, i8 zeroext %12) #9, !dbg !5246
  %13 = load i8, i8* %b, align 1, !dbg !5247
  %conv17 = zext i8 %13 to i32, !dbg !5247
  %and = and i32 %conv17, -129, !dbg !5247
  %conv18 = trunc i32 %and to i8, !dbg !5247
  store i8 %conv18, i8* %b, align 1, !dbg !5247
  call void @msleep(i32 20) #9, !dbg !5248
  br label %if.end19, !dbg !5249

if.end19:                                         ; preds = %if.then12, %do.body
  %14 = load i8, i8* %b, align 1, !dbg !5250
  %conv20 = zext i8 %14 to i32, !dbg !5250
  %and21 = and i32 %conv20, -65, !dbg !5250
  %conv22 = trunc i32 %and21 to i8, !dbg !5250
  store i8 %conv22, i8* %b, align 1, !dbg !5250
  %15 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !5251
  %16 = load i8, i8* %b, align 1, !dbg !5252
  %call23 = call i32 @mt2060_writereg(%struct.mt2060_priv* %15, i8 zeroext 3, i8 zeroext %16) #9, !dbg !5253
  call void @msleep(i32 20) #9, !dbg !5254
  %17 = load i32, i32* %i, align 4, !dbg !5255
  %inc = add i32 %17, 1, !dbg !5255
  store i32 %inc, i32* %i, align 4, !dbg !5255
  br label %do.cond, !dbg !5256

do.cond:                                          ; preds = %if.end19
  %18 = load i32, i32* %i, align 4, !dbg !5257
  %cmp24 = icmp slt i32 %18, 9, !dbg !5258
  br i1 %cmp24, label %do.body, label %do.end, !dbg !5256, !llvm.loop !5259

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4, !dbg !5261
  br label %while.cond, !dbg !5262

while.cond:                                       ; preds = %while.body, %do.end
  %19 = load i32, i32* %i, align 4, !dbg !5263
  %inc26 = add i32 %19, 1, !dbg !5263
  store i32 %inc26, i32* %i, align 4, !dbg !5263
  %cmp27 = icmp slt i32 %19, 10, !dbg !5264
  br i1 %cmp27, label %land.lhs.true, label %land.end, !dbg !5265

land.lhs.true:                                    ; preds = %while.cond
  %20 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !5266
  %call29 = call i32 @mt2060_readreg(%struct.mt2060_priv* %20, i8 zeroext 8, i8* %b) #9, !dbg !5267
  %cmp30 = icmp eq i32 %call29, 0, !dbg !5268
  br i1 %cmp30, label %land.rhs, label %land.end, !dbg !5269

land.rhs:                                         ; preds = %land.lhs.true
  %21 = load i8, i8* %b, align 1, !dbg !5270
  %conv32 = zext i8 %21 to i32, !dbg !5270
  %and33 = and i32 %conv32, 64, !dbg !5271
  %cmp34 = icmp eq i32 %and33, 0, !dbg !5272
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %22 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp34, %land.rhs ], !dbg !5273
  br i1 %22, label %while.body, label %while.end, !dbg !5262

while.body:                                       ; preds = %land.end
  call void @msleep(i32 20) #9, !dbg !5274
  br label %while.cond, !dbg !5262, !llvm.loop !5275

while.end:                                        ; preds = %land.end
  %23 = load i32, i32* %i, align 4, !dbg !5277
  %cmp36 = icmp sle i32 %23, 10, !dbg !5279
  br i1 %cmp36, label %if.then38, label %if.else, !dbg !5280

if.then38:                                        ; preds = %while.end
  %24 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !5281
  %25 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !5283
  %fmfreq = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %25, i32 0, i32 7, !dbg !5284
  %call39 = call i32 @mt2060_readreg(%struct.mt2060_priv* %24, i8 zeroext 7, i8* %fmfreq) #9, !dbg !5285
  br label %do.body40, !dbg !5286

do.body40:                                        ; preds = %if.then38
  %26 = load i32, i32* @debug, align 4, !dbg !5287
  %tobool41 = icmp ne i32 %26, 0, !dbg !5287
  br i1 %tobool41, label %if.then42, label %if.end47, !dbg !5290

if.then42:                                        ; preds = %do.body40
  %27 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !5291
  %fmfreq43 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %27, i32 0, i32 7, !dbg !5291
  %28 = load i8, i8* %fmfreq43, align 2, !dbg !5291
  %conv44 = zext i8 %28 to i32, !dbg !5291
  %call45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %conv44) #10, !dbg !5291
  %call46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !5291
  br label %if.end47, !dbg !5291

if.end47:                                         ; preds = %if.then42, %do.body40
  br label %do.end49, !dbg !5290

do.end49:                                         ; preds = %if.end47
  br label %if.end58, !dbg !5293

if.else:                                          ; preds = %while.end
  br label %do.body50, !dbg !5294

do.body50:                                        ; preds = %if.else
  %29 = load i32, i32* @debug, align 4, !dbg !5295
  %tobool51 = icmp ne i32 %29, 0, !dbg !5295
  br i1 %tobool51, label %if.then52, label %if.end55, !dbg !5298

if.then52:                                        ; preds = %do.body50
  %call53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !5299
  %call54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !5299
  br label %if.end55, !dbg !5299

if.end55:                                         ; preds = %if.then52, %do.body50
  br label %do.end57, !dbg !5298

do.end57:                                         ; preds = %if.end55
  br label %if.end58

if.end58:                                         ; preds = %if.then, %if.then3, %do.end57, %do.end49
  ret void, !dbg !5301
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @mt2060_driver_init() #5 section ".init.text" !dbg !5302 {
entry:
  %call = call i32 @i2c_register_driver(%struct.module* null, %struct.i2c_driver* @mt2060_driver) #9, !dbg !5305
  ret i32 %call, !dbg !5305
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @mt2060_driver_exit() #5 section ".exit.text" !dbg !5306 {
entry:
  call void @i2c_del_driver(%struct.i2c_driver* @mt2060_driver) #9, !dbg !5307
  ret void, !dbg !5307
}

; Function Attrs: noredzone
declare dso_local void @i2c_del_driver(%struct.i2c_driver*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5308 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5312, metadata !DIExpression()), !dbg !5317
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5319, metadata !DIExpression()), !dbg !5320
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5321, metadata !DIExpression()), !dbg !5322
  %0 = load i64, i64* %size.addr, align 8, !dbg !5323
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5325
  br i1 %1, label %if.then, label %if.end447, !dbg !5326

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5327
  %tobool = icmp ne i64 %2, 0, !dbg !5327
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5330

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5331
  br label %return, !dbg !5331

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5332
  %cmp = icmp ult i64 %3, 4096, !dbg !5334
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5335

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5336
  br label %return, !dbg !5336

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub = sub i64 %4, 1, !dbg !5337
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5337
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5337

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub4 = sub i64 %6, 1, !dbg !5337
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5337
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5337

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub6 = sub i64 %8, 1, !dbg !5337
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5337
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5337

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5337

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub9 = sub i64 %9, 1, !dbg !5337
  %and = and i64 %sub9, -9223372036854775808, !dbg !5337
  %tobool10 = icmp ne i64 %and, 0, !dbg !5337
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5337

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5337

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub13 = sub i64 %10, 1, !dbg !5337
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5337
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5337
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5337

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5337

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub18 = sub i64 %11, 1, !dbg !5337
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5337
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5337
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5337

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5337

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub23 = sub i64 %12, 1, !dbg !5337
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5337
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5337
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5337

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5337

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub28 = sub i64 %13, 1, !dbg !5337
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5337
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5337
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5337

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5337

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub33 = sub i64 %14, 1, !dbg !5337
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5337
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5337
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5337

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5337

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub38 = sub i64 %15, 1, !dbg !5337
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5337
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5337
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5337

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5337

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub43 = sub i64 %16, 1, !dbg !5337
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5337
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5337
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5337

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5337

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub48 = sub i64 %17, 1, !dbg !5337
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5337
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5337
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5337

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5337

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub53 = sub i64 %18, 1, !dbg !5337
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5337
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5337
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5337

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5337

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub58 = sub i64 %19, 1, !dbg !5337
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5337
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5337
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5337

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5337

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub63 = sub i64 %20, 1, !dbg !5337
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5337
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5337
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5337

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5337

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub68 = sub i64 %21, 1, !dbg !5337
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5337
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5337
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5337

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5337

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub73 = sub i64 %22, 1, !dbg !5337
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5337
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5337
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5337

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5337

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub78 = sub i64 %23, 1, !dbg !5337
  %and79 = and i64 %sub78, 562949953421312, !dbg !5337
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5337
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5337

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5337

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub83 = sub i64 %24, 1, !dbg !5337
  %and84 = and i64 %sub83, 281474976710656, !dbg !5337
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5337
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5337

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5337

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub88 = sub i64 %25, 1, !dbg !5337
  %and89 = and i64 %sub88, 140737488355328, !dbg !5337
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5337
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5337

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5337

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub93 = sub i64 %26, 1, !dbg !5337
  %and94 = and i64 %sub93, 70368744177664, !dbg !5337
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5337
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5337

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5337

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub98 = sub i64 %27, 1, !dbg !5337
  %and99 = and i64 %sub98, 35184372088832, !dbg !5337
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5337
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5337

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5337

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub103 = sub i64 %28, 1, !dbg !5337
  %and104 = and i64 %sub103, 17592186044416, !dbg !5337
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5337
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5337

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5337

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub108 = sub i64 %29, 1, !dbg !5337
  %and109 = and i64 %sub108, 8796093022208, !dbg !5337
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5337
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5337

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5337

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub113 = sub i64 %30, 1, !dbg !5337
  %and114 = and i64 %sub113, 4398046511104, !dbg !5337
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5337
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5337

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5337

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub118 = sub i64 %31, 1, !dbg !5337
  %and119 = and i64 %sub118, 2199023255552, !dbg !5337
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5337
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5337

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5337

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub123 = sub i64 %32, 1, !dbg !5337
  %and124 = and i64 %sub123, 1099511627776, !dbg !5337
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5337
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5337

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5337

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub128 = sub i64 %33, 1, !dbg !5337
  %and129 = and i64 %sub128, 549755813888, !dbg !5337
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5337
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5337

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5337

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub133 = sub i64 %34, 1, !dbg !5337
  %and134 = and i64 %sub133, 274877906944, !dbg !5337
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5337
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5337

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5337

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub138 = sub i64 %35, 1, !dbg !5337
  %and139 = and i64 %sub138, 137438953472, !dbg !5337
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5337
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5337

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5337

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub143 = sub i64 %36, 1, !dbg !5337
  %and144 = and i64 %sub143, 68719476736, !dbg !5337
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5337
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5337

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5337

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub148 = sub i64 %37, 1, !dbg !5337
  %and149 = and i64 %sub148, 34359738368, !dbg !5337
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5337
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5337

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5337

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub153 = sub i64 %38, 1, !dbg !5337
  %and154 = and i64 %sub153, 17179869184, !dbg !5337
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5337
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5337

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5337

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub158 = sub i64 %39, 1, !dbg !5337
  %and159 = and i64 %sub158, 8589934592, !dbg !5337
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5337
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5337

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5337

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub163 = sub i64 %40, 1, !dbg !5337
  %and164 = and i64 %sub163, 4294967296, !dbg !5337
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5337
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5337

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5337

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub168 = sub i64 %41, 1, !dbg !5337
  %and169 = and i64 %sub168, 2147483648, !dbg !5337
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5337
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5337

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5337

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub173 = sub i64 %42, 1, !dbg !5337
  %and174 = and i64 %sub173, 1073741824, !dbg !5337
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5337
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5337

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5337

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub178 = sub i64 %43, 1, !dbg !5337
  %and179 = and i64 %sub178, 536870912, !dbg !5337
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5337
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5337

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5337

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub183 = sub i64 %44, 1, !dbg !5337
  %and184 = and i64 %sub183, 268435456, !dbg !5337
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5337
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5337

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5337

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub188 = sub i64 %45, 1, !dbg !5337
  %and189 = and i64 %sub188, 134217728, !dbg !5337
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5337
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5337

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5337

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub193 = sub i64 %46, 1, !dbg !5337
  %and194 = and i64 %sub193, 67108864, !dbg !5337
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5337
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5337

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5337

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub198 = sub i64 %47, 1, !dbg !5337
  %and199 = and i64 %sub198, 33554432, !dbg !5337
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5337
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5337

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5337

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub203 = sub i64 %48, 1, !dbg !5337
  %and204 = and i64 %sub203, 16777216, !dbg !5337
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5337
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5337

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5337

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub208 = sub i64 %49, 1, !dbg !5337
  %and209 = and i64 %sub208, 8388608, !dbg !5337
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5337
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5337

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5337

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub213 = sub i64 %50, 1, !dbg !5337
  %and214 = and i64 %sub213, 4194304, !dbg !5337
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5337
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5337

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5337

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub218 = sub i64 %51, 1, !dbg !5337
  %and219 = and i64 %sub218, 2097152, !dbg !5337
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5337
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5337

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5337

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub223 = sub i64 %52, 1, !dbg !5337
  %and224 = and i64 %sub223, 1048576, !dbg !5337
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5337
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5337

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5337

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub228 = sub i64 %53, 1, !dbg !5337
  %and229 = and i64 %sub228, 524288, !dbg !5337
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5337
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5337

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5337

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub233 = sub i64 %54, 1, !dbg !5337
  %and234 = and i64 %sub233, 262144, !dbg !5337
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5337
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5337

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5337

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub238 = sub i64 %55, 1, !dbg !5337
  %and239 = and i64 %sub238, 131072, !dbg !5337
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5337
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5337

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5337

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub243 = sub i64 %56, 1, !dbg !5337
  %and244 = and i64 %sub243, 65536, !dbg !5337
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5337
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5337

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5337

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub248 = sub i64 %57, 1, !dbg !5337
  %and249 = and i64 %sub248, 32768, !dbg !5337
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5337
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5337

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5337

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub253 = sub i64 %58, 1, !dbg !5337
  %and254 = and i64 %sub253, 16384, !dbg !5337
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5337
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5337

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5337

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub258 = sub i64 %59, 1, !dbg !5337
  %and259 = and i64 %sub258, 8192, !dbg !5337
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5337
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5337

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5337

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub263 = sub i64 %60, 1, !dbg !5337
  %and264 = and i64 %sub263, 4096, !dbg !5337
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5337
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5337

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5337

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub268 = sub i64 %61, 1, !dbg !5337
  %and269 = and i64 %sub268, 2048, !dbg !5337
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5337
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5337

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5337

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub273 = sub i64 %62, 1, !dbg !5337
  %and274 = and i64 %sub273, 1024, !dbg !5337
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5337
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5337

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5337

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub278 = sub i64 %63, 1, !dbg !5337
  %and279 = and i64 %sub278, 512, !dbg !5337
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5337
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5337

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5337

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub283 = sub i64 %64, 1, !dbg !5337
  %and284 = and i64 %sub283, 256, !dbg !5337
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5337
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5337

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5337

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub288 = sub i64 %65, 1, !dbg !5337
  %and289 = and i64 %sub288, 128, !dbg !5337
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5337
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5337

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5337

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub293 = sub i64 %66, 1, !dbg !5337
  %and294 = and i64 %sub293, 64, !dbg !5337
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5337
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5337

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5337

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub298 = sub i64 %67, 1, !dbg !5337
  %and299 = and i64 %sub298, 32, !dbg !5337
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5337
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5337

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5337

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub303 = sub i64 %68, 1, !dbg !5337
  %and304 = and i64 %sub303, 16, !dbg !5337
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5337
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5337

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5337

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub308 = sub i64 %69, 1, !dbg !5337
  %and309 = and i64 %sub308, 8, !dbg !5337
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5337
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5337

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5337

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub313 = sub i64 %70, 1, !dbg !5337
  %and314 = and i64 %sub313, 4, !dbg !5337
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5337
  %71 = zext i1 %tobool315 to i64, !dbg !5337
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5337
  br label %cond.end, !dbg !5337

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5337
  br label %cond.end317, !dbg !5337

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5337
  br label %cond.end319, !dbg !5337

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5337
  br label %cond.end321, !dbg !5337

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5337
  br label %cond.end323, !dbg !5337

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5337
  br label %cond.end325, !dbg !5337

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5337
  br label %cond.end327, !dbg !5337

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5337
  br label %cond.end329, !dbg !5337

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5337
  br label %cond.end331, !dbg !5337

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5337
  br label %cond.end333, !dbg !5337

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5337
  br label %cond.end335, !dbg !5337

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5337
  br label %cond.end337, !dbg !5337

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5337
  br label %cond.end339, !dbg !5337

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5337
  br label %cond.end341, !dbg !5337

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5337
  br label %cond.end343, !dbg !5337

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5337
  br label %cond.end345, !dbg !5337

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5337
  br label %cond.end347, !dbg !5337

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5337
  br label %cond.end349, !dbg !5337

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5337
  br label %cond.end351, !dbg !5337

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5337
  br label %cond.end353, !dbg !5337

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5337
  br label %cond.end355, !dbg !5337

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5337
  br label %cond.end357, !dbg !5337

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5337
  br label %cond.end359, !dbg !5337

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5337
  br label %cond.end361, !dbg !5337

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5337
  br label %cond.end363, !dbg !5337

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5337
  br label %cond.end365, !dbg !5337

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5337
  br label %cond.end367, !dbg !5337

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5337
  br label %cond.end369, !dbg !5337

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5337
  br label %cond.end371, !dbg !5337

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5337
  br label %cond.end373, !dbg !5337

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5337
  br label %cond.end375, !dbg !5337

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5337
  br label %cond.end377, !dbg !5337

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5337
  br label %cond.end379, !dbg !5337

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5337
  br label %cond.end381, !dbg !5337

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5337
  br label %cond.end383, !dbg !5337

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5337
  br label %cond.end385, !dbg !5337

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5337
  br label %cond.end387, !dbg !5337

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5337
  br label %cond.end389, !dbg !5337

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5337
  br label %cond.end391, !dbg !5337

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5337
  br label %cond.end393, !dbg !5337

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5337
  br label %cond.end395, !dbg !5337

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5337
  br label %cond.end397, !dbg !5337

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5337
  br label %cond.end399, !dbg !5337

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5337
  br label %cond.end401, !dbg !5337

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5337
  br label %cond.end403, !dbg !5337

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5337
  br label %cond.end405, !dbg !5337

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5337
  br label %cond.end407, !dbg !5337

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5337
  br label %cond.end409, !dbg !5337

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5337
  br label %cond.end411, !dbg !5337

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5337
  br label %cond.end413, !dbg !5337

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5337
  br label %cond.end415, !dbg !5337

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5337
  br label %cond.end417, !dbg !5337

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5337
  br label %cond.end419, !dbg !5337

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5337
  br label %cond.end421, !dbg !5337

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5337
  br label %cond.end423, !dbg !5337

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5337
  br label %cond.end425, !dbg !5337

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5337
  br label %cond.end427, !dbg !5337

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5337
  br label %cond.end429, !dbg !5337

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5337
  br label %cond.end431, !dbg !5337

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5337
  br label %cond.end433, !dbg !5337

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5337
  br label %cond.end435, !dbg !5337

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5337
  br label %cond.end437, !dbg !5337

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5337
  br label %cond.end440, !dbg !5337

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5337

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5337
  br label %cond.end444, !dbg !5337

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5337
  %sub443 = sub i64 %72, 1, !dbg !5337
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5337
  br label %cond.end444, !dbg !5337

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5337
  %sub446 = sub i32 %cond445, 12, !dbg !5338
  %add = add i32 %sub446, 1, !dbg !5339
  store i32 %add, i32* %retval, align 4, !dbg !5340
  br label %return, !dbg !5340

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5341
  %dec = add i64 %73, -1, !dbg !5341
  store i64 %dec, i64* %size.addr, align 8, !dbg !5341
  %74 = load i64, i64* %size.addr, align 8, !dbg !5342
  %shr = lshr i64 %74, 12, !dbg !5342
  store i64 %shr, i64* %size.addr, align 8, !dbg !5342
  %75 = load i64, i64* %size.addr, align 8, !dbg !5343
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5320
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5344
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5345
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5344, !srcloc !5346
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5344
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5347
  %add.i = add i32 %79, 1, !dbg !5348
  store i32 %add.i, i32* %retval, align 4, !dbg !5349
  br label %return, !dbg !5349

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5350
  ret i32 %80, !dbg !5350
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5351 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5312, metadata !DIExpression()), !dbg !5355
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5319, metadata !DIExpression()), !dbg !5357
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5358, metadata !DIExpression()), !dbg !5359
  %0 = load i64, i64* %n.addr, align 8, !dbg !5360
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5357
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5361
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5362
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5361, !srcloc !5346
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5361
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5363
  %add.i = add i32 %4, 1, !dbg !5364
  %sub = sub i32 %add.i, 1, !dbg !5365
  ret i32 %sub, !dbg !5366
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5367 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5371, metadata !DIExpression()), !dbg !5372
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5373, metadata !DIExpression()), !dbg !5374
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5375, metadata !DIExpression()), !dbg !5376
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5377, metadata !DIExpression()), !dbg !5378
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5379
  ret i8* %0, !dbg !5380
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mt2060_release(%struct.dvb_frontend* %fe) #0 !dbg !5381 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5382, metadata !DIExpression()), !dbg !5383
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5384
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5385
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5385
  call void @kfree(i8* %1) #9, !dbg !5386
  %2 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5387
  %tuner_priv1 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %2, i32 0, i32 4, !dbg !5388
  store i8* null, i8** %tuner_priv1, align 8, !dbg !5389
  ret void, !dbg !5390
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt2060_init(%struct.dvb_frontend* %fe) #0 !dbg !5391 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.mt2060_priv*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5392, metadata !DIExpression()), !dbg !5393
  call void @llvm.dbg.declare(metadata %struct.mt2060_priv** %priv, metadata !5394, metadata !DIExpression()), !dbg !5395
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5396
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5397
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5397
  %2 = bitcast i8* %1 to %struct.mt2060_priv*, !dbg !5396
  store %struct.mt2060_priv* %2, %struct.mt2060_priv** %priv, align 8, !dbg !5395
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5398, metadata !DIExpression()), !dbg !5399
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5400
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 1, !dbg !5402
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 26, !dbg !5403
  %4 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5403
  %tobool = icmp ne i32 (%struct.dvb_frontend*, i32)* %4, null, !dbg !5400
  br i1 %tobool, label %if.then, label %if.end, !dbg !5404

if.then:                                          ; preds = %entry
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5405
  %ops1 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 1, !dbg !5406
  %i2c_gate_ctrl2 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops1, i32 0, i32 26, !dbg !5407
  %6 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl2, align 8, !dbg !5407
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5408
  %call = call i32 %6(%struct.dvb_frontend* %7, i32 1) #9, !dbg !5405
  br label %if.end, !dbg !5405

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !5409
  %sleep = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %8, i32 0, i32 8, !dbg !5411
  %9 = load i8, i8* %sleep, align 1, !dbg !5411
  %tobool3 = trunc i8 %9 to i1, !dbg !5411
  br i1 %tobool3, label %if.then4, label %if.end9, !dbg !5412

if.then4:                                         ; preds = %if.end
  %10 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !5413
  %call5 = call i32 @mt2060_writereg(%struct.mt2060_priv* %10, i8 zeroext 9, i8 zeroext 32) #9, !dbg !5415
  store i32 %call5, i32* %ret, align 4, !dbg !5416
  %11 = load i32, i32* %ret, align 4, !dbg !5417
  %tobool6 = icmp ne i32 %11, 0, !dbg !5417
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5419

if.then7:                                         ; preds = %if.then4
  br label %err_i2c_gate_ctrl, !dbg !5420

if.end8:                                          ; preds = %if.then4
  br label %if.end9, !dbg !5421

if.end9:                                          ; preds = %if.end8, %if.end
  %12 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !5422
  %13 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !5423
  %cfg = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %13, i32 0, i32 0, !dbg !5424
  %14 = load %struct.mt2060_config*, %struct.mt2060_config** %cfg, align 8, !dbg !5424
  %clock_out = getelementptr inbounds %struct.mt2060_config, %struct.mt2060_config* %14, i32 0, i32 1, !dbg !5425
  %15 = load i8, i8* %clock_out, align 1, !dbg !5425
  %conv = zext i8 %15 to i32, !dbg !5423
  %shl = shl i32 %conv, 6, !dbg !5426
  %or = or i32 %shl, 51, !dbg !5427
  %conv10 = trunc i32 %or to i8, !dbg !5428
  %call11 = call i32 @mt2060_writereg(%struct.mt2060_priv* %12, i8 zeroext 11, i8 zeroext %conv10) #9, !dbg !5429
  store i32 %call11, i32* %ret, align 4, !dbg !5430
  br label %err_i2c_gate_ctrl, !dbg !5431

err_i2c_gate_ctrl:                                ; preds = %if.end9, %if.then7
  call void @llvm.dbg.label(metadata !5432), !dbg !5433
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5434
  %ops12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1, !dbg !5436
  %i2c_gate_ctrl13 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops12, i32 0, i32 26, !dbg !5437
  %17 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl13, align 8, !dbg !5437
  %tobool14 = icmp ne i32 (%struct.dvb_frontend*, i32)* %17, null, !dbg !5434
  br i1 %tobool14, label %if.then15, label %if.end19, !dbg !5438

if.then15:                                        ; preds = %err_i2c_gate_ctrl
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5439
  %ops16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 1, !dbg !5440
  %i2c_gate_ctrl17 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops16, i32 0, i32 26, !dbg !5441
  %19 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl17, align 8, !dbg !5441
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5442
  %call18 = call i32 %19(%struct.dvb_frontend* %20, i32 0) #9, !dbg !5439
  br label %if.end19, !dbg !5439

if.end19:                                         ; preds = %if.then15, %err_i2c_gate_ctrl
  %21 = load i32, i32* %ret, align 4, !dbg !5443
  ret i32 %21, !dbg !5444
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt2060_sleep(%struct.dvb_frontend* %fe) #0 !dbg !5445 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.mt2060_priv*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5446, metadata !DIExpression()), !dbg !5447
  call void @llvm.dbg.declare(metadata %struct.mt2060_priv** %priv, metadata !5448, metadata !DIExpression()), !dbg !5449
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5450
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5451
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5451
  %2 = bitcast i8* %1 to %struct.mt2060_priv*, !dbg !5450
  store %struct.mt2060_priv* %2, %struct.mt2060_priv** %priv, align 8, !dbg !5449
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5452, metadata !DIExpression()), !dbg !5453
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5454
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 1, !dbg !5456
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 26, !dbg !5457
  %4 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5457
  %tobool = icmp ne i32 (%struct.dvb_frontend*, i32)* %4, null, !dbg !5454
  br i1 %tobool, label %if.then, label %if.end, !dbg !5458

if.then:                                          ; preds = %entry
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5459
  %ops1 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 1, !dbg !5460
  %i2c_gate_ctrl2 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops1, i32 0, i32 26, !dbg !5461
  %6 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl2, align 8, !dbg !5461
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5462
  %call = call i32 %6(%struct.dvb_frontend* %7, i32 1) #9, !dbg !5459
  br label %if.end, !dbg !5459

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !5463
  %9 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !5464
  %cfg = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %9, i32 0, i32 0, !dbg !5465
  %10 = load %struct.mt2060_config*, %struct.mt2060_config** %cfg, align 8, !dbg !5465
  %clock_out = getelementptr inbounds %struct.mt2060_config, %struct.mt2060_config* %10, i32 0, i32 1, !dbg !5466
  %11 = load i8, i8* %clock_out, align 1, !dbg !5466
  %conv = zext i8 %11 to i32, !dbg !5464
  %shl = shl i32 %conv, 6, !dbg !5467
  %or = or i32 %shl, 48, !dbg !5468
  %conv3 = trunc i32 %or to i8, !dbg !5469
  %call4 = call i32 @mt2060_writereg(%struct.mt2060_priv* %8, i8 zeroext 11, i8 zeroext %conv3) #9, !dbg !5470
  store i32 %call4, i32* %ret, align 4, !dbg !5471
  %12 = load i32, i32* %ret, align 4, !dbg !5472
  %tobool5 = icmp ne i32 %12, 0, !dbg !5472
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5474

if.then6:                                         ; preds = %if.end
  br label %err_i2c_gate_ctrl, !dbg !5475

if.end7:                                          ; preds = %if.end
  %13 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !5476
  %sleep = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %13, i32 0, i32 8, !dbg !5478
  %14 = load i8, i8* %sleep, align 1, !dbg !5478
  %tobool8 = trunc i8 %14 to i1, !dbg !5478
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !5479

if.then9:                                         ; preds = %if.end7
  %15 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !5480
  %call10 = call i32 @mt2060_writereg(%struct.mt2060_priv* %15, i8 zeroext 9, i8 zeroext -24) #9, !dbg !5481
  store i32 %call10, i32* %ret, align 4, !dbg !5482
  br label %if.end11, !dbg !5483

if.end11:                                         ; preds = %if.then9, %if.end7
  br label %err_i2c_gate_ctrl, !dbg !5478

err_i2c_gate_ctrl:                                ; preds = %if.end11, %if.then6
  call void @llvm.dbg.label(metadata !5484), !dbg !5485
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5486
  %ops12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1, !dbg !5488
  %i2c_gate_ctrl13 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops12, i32 0, i32 26, !dbg !5489
  %17 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl13, align 8, !dbg !5489
  %tobool14 = icmp ne i32 (%struct.dvb_frontend*, i32)* %17, null, !dbg !5486
  br i1 %tobool14, label %if.then15, label %if.end19, !dbg !5490

if.then15:                                        ; preds = %err_i2c_gate_ctrl
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5491
  %ops16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 1, !dbg !5492
  %i2c_gate_ctrl17 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops16, i32 0, i32 26, !dbg !5493
  %19 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl17, align 8, !dbg !5493
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5494
  %call18 = call i32 %19(%struct.dvb_frontend* %20, i32 0) #9, !dbg !5491
  br label %if.end19, !dbg !5491

if.end19:                                         ; preds = %if.then15, %err_i2c_gate_ctrl
  %21 = load i32, i32* %ret, align 4, !dbg !5495
  ret i32 %21, !dbg !5496
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt2060_set_params(%struct.dvb_frontend* %fe) #0 !dbg !5497 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %priv = alloca %struct.mt2060_priv*, align 8
  %i = alloca i32, align 4
  %freq = alloca i32, align 4
  %lnaband = alloca i8, align 1
  %f_lo1 = alloca i32, align 4
  %f_lo2 = alloca i32, align 4
  %div1 = alloca i32, align 4
  %num1 = alloca i32, align 4
  %div2 = alloca i32, align 4
  %num2 = alloca i32, align 4
  %b = alloca [8 x i8], align 1
  %if1 = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5498, metadata !DIExpression()), !dbg !5499
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5500, metadata !DIExpression()), !dbg !5501
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5502
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5503
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5501
  call void @llvm.dbg.declare(metadata %struct.mt2060_priv** %priv, metadata !5504, metadata !DIExpression()), !dbg !5505
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5506, metadata !DIExpression()), !dbg !5507
  store i32 0, i32* %i, align 4, !dbg !5507
  call void @llvm.dbg.declare(metadata i32* %freq, metadata !5508, metadata !DIExpression()), !dbg !5509
  call void @llvm.dbg.declare(metadata i8* %lnaband, metadata !5510, metadata !DIExpression()), !dbg !5511
  call void @llvm.dbg.declare(metadata i32* %f_lo1, metadata !5512, metadata !DIExpression()), !dbg !5513
  call void @llvm.dbg.declare(metadata i32* %f_lo2, metadata !5514, metadata !DIExpression()), !dbg !5515
  call void @llvm.dbg.declare(metadata i32* %div1, metadata !5516, metadata !DIExpression()), !dbg !5517
  call void @llvm.dbg.declare(metadata i32* %num1, metadata !5518, metadata !DIExpression()), !dbg !5519
  call void @llvm.dbg.declare(metadata i32* %div2, metadata !5520, metadata !DIExpression()), !dbg !5521
  call void @llvm.dbg.declare(metadata i32* %num2, metadata !5522, metadata !DIExpression()), !dbg !5523
  call void @llvm.dbg.declare(metadata [8 x i8]* %b, metadata !5524, metadata !DIExpression()), !dbg !5525
  call void @llvm.dbg.declare(metadata i32* %if1, metadata !5526, metadata !DIExpression()), !dbg !5527
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5528
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 4, !dbg !5529
  %2 = load i8*, i8** %tuner_priv, align 8, !dbg !5529
  %3 = bitcast i8* %2 to %struct.mt2060_priv*, !dbg !5528
  store %struct.mt2060_priv* %3, %struct.mt2060_priv** %priv, align 8, !dbg !5530
  %4 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !5531
  %if1_freq = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %4, i32 0, i32 6, !dbg !5532
  %5 = load i16, i16* %if1_freq, align 8, !dbg !5532
  %conv = zext i16 %5 to i32, !dbg !5531
  store i32 %conv, i32* %if1, align 4, !dbg !5533
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %b, i64 0, i64 0, !dbg !5534
  store i8 12, i8* %arrayidx, align 1, !dbg !5535
  %arrayidx1 = getelementptr [8 x i8], [8 x i8]* %b, i64 0, i64 1, !dbg !5536
  store i8 -1, i8* %arrayidx1, align 1, !dbg !5537
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5538
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1, !dbg !5540
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 26, !dbg !5541
  %7 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5541
  %tobool = icmp ne i32 (%struct.dvb_frontend*, i32)* %7, null, !dbg !5538
  br i1 %tobool, label %if.then, label %if.end, !dbg !5542

if.then:                                          ; preds = %entry
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5543
  %ops2 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1, !dbg !5544
  %i2c_gate_ctrl3 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops2, i32 0, i32 26, !dbg !5545
  %9 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl3, align 8, !dbg !5545
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5546
  %call = call i32 %9(%struct.dvb_frontend* %10, i32 1) #9, !dbg !5543
  br label %if.end, !dbg !5543

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !5547
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %b, i64 0, i64 0, !dbg !5548
  %call4 = call i32 @mt2060_writeregs(%struct.mt2060_priv* %11, i8* %arraydecay, i8 zeroext 2) #9, !dbg !5549
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5550
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 0, !dbg !5551
  %13 = load i32, i32* %frequency, align 4, !dbg !5551
  %div = udiv i32 %13, 1000, !dbg !5552
  store i32 %div, i32* %freq, align 4, !dbg !5553
  %14 = load i32, i32* %freq, align 4, !dbg !5554
  %15 = load i32, i32* %if1, align 4, !dbg !5555
  %mul = mul i32 %15, 1000, !dbg !5556
  %add = add i32 %14, %mul, !dbg !5557
  store i32 %add, i32* %f_lo1, align 4, !dbg !5558
  %16 = load i32, i32* %f_lo1, align 4, !dbg !5559
  %div5 = udiv i32 %16, 250, !dbg !5560
  %mul6 = mul i32 %div5, 250, !dbg !5561
  store i32 %mul6, i32* %f_lo1, align 4, !dbg !5562
  %17 = load i32, i32* %f_lo1, align 4, !dbg !5563
  %18 = load i32, i32* %freq, align 4, !dbg !5564
  %sub = sub i32 %17, %18, !dbg !5565
  %sub7 = sub i32 %sub, 36150, !dbg !5566
  store i32 %sub7, i32* %f_lo2, align 4, !dbg !5567
  %19 = load i32, i32* %f_lo2, align 4, !dbg !5568
  %add8 = add i32 %19, 25, !dbg !5569
  %div9 = udiv i32 %add8, 50, !dbg !5570
  %mul10 = mul i32 %div9, 50, !dbg !5571
  store i32 %mul10, i32* %f_lo2, align 4, !dbg !5572
  %20 = load i32, i32* %f_lo1, align 4, !dbg !5573
  %21 = load i32, i32* %f_lo2, align 4, !dbg !5574
  %sub11 = sub i32 %20, %21, !dbg !5575
  %sub12 = sub i32 %sub11, 36150, !dbg !5576
  %mul13 = mul i32 %sub12, 1000, !dbg !5577
  %22 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !5578
  %frequency14 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %22, i32 0, i32 5, !dbg !5579
  store i32 %mul13, i32* %frequency14, align 4, !dbg !5580
  %23 = load i32, i32* %f_lo1, align 4, !dbg !5581
  %div15 = udiv i32 %23, 250, !dbg !5582
  store i32 %div15, i32* %num1, align 4, !dbg !5583
  %24 = load i32, i32* %num1, align 4, !dbg !5584
  %div16 = udiv i32 %24, 64, !dbg !5585
  store i32 %div16, i32* %div1, align 4, !dbg !5586
  %25 = load i32, i32* %num1, align 4, !dbg !5587
  %and = and i32 %25, 63, !dbg !5587
  store i32 %and, i32* %num1, align 4, !dbg !5587
  %26 = load i32, i32* %f_lo2, align 4, !dbg !5588
  %mul17 = mul i32 %26, 64, !dbg !5589
  %div18 = udiv i32 %mul17, 125, !dbg !5590
  store i32 %div18, i32* %num2, align 4, !dbg !5591
  %27 = load i32, i32* %num2, align 4, !dbg !5592
  %div19 = udiv i32 %27, 8192, !dbg !5593
  store i32 %div19, i32* %div2, align 4, !dbg !5594
  %28 = load i32, i32* %num2, align 4, !dbg !5595
  %and20 = and i32 %28, 8191, !dbg !5595
  store i32 %and20, i32* %num2, align 4, !dbg !5595
  %29 = load i32, i32* %freq, align 4, !dbg !5596
  %cmp = icmp ule i32 %29, 95000, !dbg !5598
  br i1 %cmp, label %if.then22, label %if.else, !dbg !5599

if.then22:                                        ; preds = %if.end
  store i8 -80, i8* %lnaband, align 1, !dbg !5600
  br label %if.end68, !dbg !5601

if.else:                                          ; preds = %if.end
  %30 = load i32, i32* %freq, align 4, !dbg !5602
  %cmp23 = icmp ule i32 %30, 180000, !dbg !5604
  br i1 %cmp23, label %if.then25, label %if.else26, !dbg !5605

if.then25:                                        ; preds = %if.else
  store i8 -96, i8* %lnaband, align 1, !dbg !5606
  br label %if.end67, !dbg !5607

if.else26:                                        ; preds = %if.else
  %31 = load i32, i32* %freq, align 4, !dbg !5608
  %cmp27 = icmp ule i32 %31, 260000, !dbg !5610
  br i1 %cmp27, label %if.then29, label %if.else30, !dbg !5611

if.then29:                                        ; preds = %if.else26
  store i8 -112, i8* %lnaband, align 1, !dbg !5612
  br label %if.end66, !dbg !5613

if.else30:                                        ; preds = %if.else26
  %32 = load i32, i32* %freq, align 4, !dbg !5614
  %cmp31 = icmp ule i32 %32, 335000, !dbg !5616
  br i1 %cmp31, label %if.then33, label %if.else34, !dbg !5617

if.then33:                                        ; preds = %if.else30
  store i8 -128, i8* %lnaband, align 1, !dbg !5618
  br label %if.end65, !dbg !5619

if.else34:                                        ; preds = %if.else30
  %33 = load i32, i32* %freq, align 4, !dbg !5620
  %cmp35 = icmp ule i32 %33, 425000, !dbg !5622
  br i1 %cmp35, label %if.then37, label %if.else38, !dbg !5623

if.then37:                                        ; preds = %if.else34
  store i8 112, i8* %lnaband, align 1, !dbg !5624
  br label %if.end64, !dbg !5625

if.else38:                                        ; preds = %if.else34
  %34 = load i32, i32* %freq, align 4, !dbg !5626
  %cmp39 = icmp ule i32 %34, 480000, !dbg !5628
  br i1 %cmp39, label %if.then41, label %if.else42, !dbg !5629

if.then41:                                        ; preds = %if.else38
  store i8 96, i8* %lnaband, align 1, !dbg !5630
  br label %if.end63, !dbg !5631

if.else42:                                        ; preds = %if.else38
  %35 = load i32, i32* %freq, align 4, !dbg !5632
  %cmp43 = icmp ule i32 %35, 570000, !dbg !5634
  br i1 %cmp43, label %if.then45, label %if.else46, !dbg !5635

if.then45:                                        ; preds = %if.else42
  store i8 80, i8* %lnaband, align 1, !dbg !5636
  br label %if.end62, !dbg !5637

if.else46:                                        ; preds = %if.else42
  %36 = load i32, i32* %freq, align 4, !dbg !5638
  %cmp47 = icmp ule i32 %36, 645000, !dbg !5640
  br i1 %cmp47, label %if.then49, label %if.else50, !dbg !5641

if.then49:                                        ; preds = %if.else46
  store i8 64, i8* %lnaband, align 1, !dbg !5642
  br label %if.end61, !dbg !5643

if.else50:                                        ; preds = %if.else46
  %37 = load i32, i32* %freq, align 4, !dbg !5644
  %cmp51 = icmp ule i32 %37, 730000, !dbg !5646
  br i1 %cmp51, label %if.then53, label %if.else54, !dbg !5647

if.then53:                                        ; preds = %if.else50
  store i8 48, i8* %lnaband, align 1, !dbg !5648
  br label %if.end60, !dbg !5649

if.else54:                                        ; preds = %if.else50
  %38 = load i32, i32* %freq, align 4, !dbg !5650
  %cmp55 = icmp ule i32 %38, 810000, !dbg !5652
  br i1 %cmp55, label %if.then57, label %if.else58, !dbg !5653

if.then57:                                        ; preds = %if.else54
  store i8 32, i8* %lnaband, align 1, !dbg !5654
  br label %if.end59, !dbg !5655

if.else58:                                        ; preds = %if.else54
  store i8 16, i8* %lnaband, align 1, !dbg !5656
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.then57
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then53
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then49
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then45
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then41
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then37
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then33
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then29
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then25
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then22
  %arrayidx69 = getelementptr [8 x i8], [8 x i8]* %b, i64 0, i64 0, !dbg !5657
  store i8 1, i8* %arrayidx69, align 1, !dbg !5658
  %39 = load i8, i8* %lnaband, align 1, !dbg !5659
  %conv70 = zext i8 %39 to i32, !dbg !5659
  %40 = load i32, i32* %num1, align 4, !dbg !5660
  %shr = lshr i32 %40, 2, !dbg !5661
  %and71 = and i32 %shr, 15, !dbg !5662
  %or = or i32 %conv70, %and71, !dbg !5663
  %conv72 = trunc i32 %or to i8, !dbg !5659
  %arrayidx73 = getelementptr [8 x i8], [8 x i8]* %b, i64 0, i64 1, !dbg !5664
  store i8 %conv72, i8* %arrayidx73, align 1, !dbg !5665
  %41 = load i32, i32* %div1, align 4, !dbg !5666
  %conv74 = trunc i32 %41 to i8, !dbg !5666
  %arrayidx75 = getelementptr [8 x i8], [8 x i8]* %b, i64 0, i64 2, !dbg !5667
  store i8 %conv74, i8* %arrayidx75, align 1, !dbg !5668
  %42 = load i32, i32* %num2, align 4, !dbg !5669
  %and76 = and i32 %42, 15, !dbg !5670
  %43 = load i32, i32* %num1, align 4, !dbg !5671
  %and77 = and i32 %43, 3, !dbg !5672
  %shl = shl i32 %and77, 4, !dbg !5673
  %or78 = or i32 %and76, %shl, !dbg !5674
  %conv79 = trunc i32 %or78 to i8, !dbg !5675
  %arrayidx80 = getelementptr [8 x i8], [8 x i8]* %b, i64 0, i64 3, !dbg !5676
  store i8 %conv79, i8* %arrayidx80, align 1, !dbg !5677
  %44 = load i32, i32* %num2, align 4, !dbg !5678
  %shr81 = lshr i32 %44, 4, !dbg !5679
  %conv82 = trunc i32 %shr81 to i8, !dbg !5678
  %arrayidx83 = getelementptr [8 x i8], [8 x i8]* %b, i64 0, i64 4, !dbg !5680
  store i8 %conv82, i8* %arrayidx83, align 1, !dbg !5681
  %45 = load i32, i32* %num2, align 4, !dbg !5682
  %shr84 = lshr i32 %45, 12, !dbg !5683
  %and85 = and i32 %shr84, 1, !dbg !5684
  %46 = load i32, i32* %div2, align 4, !dbg !5685
  %shl86 = shl i32 %46, 1, !dbg !5686
  %or87 = or i32 %and85, %shl86, !dbg !5687
  %conv88 = trunc i32 %or87 to i8, !dbg !5688
  %arrayidx89 = getelementptr [8 x i8], [8 x i8]* %b, i64 0, i64 5, !dbg !5689
  store i8 %conv88, i8* %arrayidx89, align 1, !dbg !5690
  br label %do.body, !dbg !5691

do.body:                                          ; preds = %if.end68
  %47 = load i32, i32* @debug, align 4, !dbg !5692
  %tobool90 = icmp ne i32 %47, 0, !dbg !5692
  br i1 %tobool90, label %if.then91, label %if.end94, !dbg !5695

if.then91:                                        ; preds = %do.body
  %48 = load i32, i32* %if1, align 4, !dbg !5696
  %call92 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %48) #10, !dbg !5696
  %call93 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !5696
  br label %if.end94, !dbg !5696

if.end94:                                         ; preds = %if.then91, %do.body
  br label %do.end, !dbg !5695

do.end:                                           ; preds = %if.end94
  br label %do.body95, !dbg !5698

do.body95:                                        ; preds = %do.end
  %49 = load i32, i32* @debug, align 4, !dbg !5699
  %tobool96 = icmp ne i32 %49, 0, !dbg !5699
  br i1 %tobool96, label %if.then97, label %if.end100, !dbg !5702

if.then97:                                        ; preds = %do.body95
  %50 = load i32, i32* %freq, align 4, !dbg !5703
  %51 = load i32, i32* %f_lo1, align 4, !dbg !5703
  %52 = load i32, i32* %f_lo2, align 4, !dbg !5703
  %call98 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %50, i32 %51, i32 %52) #10, !dbg !5703
  %call99 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !5703
  br label %if.end100, !dbg !5703

if.end100:                                        ; preds = %if.then97, %do.body95
  br label %do.end101, !dbg !5702

do.end101:                                        ; preds = %if.end100
  br label %do.body102, !dbg !5705

do.body102:                                       ; preds = %do.end101
  %53 = load i32, i32* @debug, align 4, !dbg !5706
  %tobool103 = icmp ne i32 %53, 0, !dbg !5706
  br i1 %tobool103, label %if.then104, label %if.end107, !dbg !5709

if.then104:                                       ; preds = %do.body102
  %54 = load i32, i32* %div1, align 4, !dbg !5710
  %55 = load i32, i32* %num1, align 4, !dbg !5710
  %56 = load i32, i32* %div2, align 4, !dbg !5710
  %57 = load i32, i32* %num2, align 4, !dbg !5710
  %call105 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %54, i32 %55, i32 %56, i32 %57) #10, !dbg !5710
  %call106 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !5710
  br label %if.end107, !dbg !5710

if.end107:                                        ; preds = %if.then104, %do.body102
  br label %do.end108, !dbg !5709

do.end108:                                        ; preds = %if.end107
  br label %do.body109, !dbg !5712

do.body109:                                       ; preds = %do.end108
  %58 = load i32, i32* @debug, align 4, !dbg !5713
  %tobool110 = icmp ne i32 %58, 0, !dbg !5713
  br i1 %tobool110, label %if.then111, label %if.end124, !dbg !5716

if.then111:                                       ; preds = %do.body109
  %arrayidx112 = getelementptr [8 x i8], [8 x i8]* %b, i64 0, i64 1, !dbg !5717
  %59 = load i8, i8* %arrayidx112, align 1, !dbg !5717
  %conv113 = zext i8 %59 to i32, !dbg !5717
  %arrayidx114 = getelementptr [8 x i8], [8 x i8]* %b, i64 0, i64 2, !dbg !5717
  %60 = load i8, i8* %arrayidx114, align 1, !dbg !5717
  %conv115 = zext i8 %60 to i32, !dbg !5717
  %arrayidx116 = getelementptr [8 x i8], [8 x i8]* %b, i64 0, i64 3, !dbg !5717
  %61 = load i8, i8* %arrayidx116, align 1, !dbg !5717
  %conv117 = zext i8 %61 to i32, !dbg !5717
  %arrayidx118 = getelementptr [8 x i8], [8 x i8]* %b, i64 0, i64 4, !dbg !5717
  %62 = load i8, i8* %arrayidx118, align 1, !dbg !5717
  %conv119 = zext i8 %62 to i32, !dbg !5717
  %arrayidx120 = getelementptr [8 x i8], [8 x i8]* %b, i64 0, i64 5, !dbg !5717
  %63 = load i8, i8* %arrayidx120, align 1, !dbg !5717
  %conv121 = zext i8 %63 to i32, !dbg !5717
  %call122 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %conv113, i32 %conv115, i32 %conv117, i32 %conv119, i32 %conv121) #10, !dbg !5717
  %call123 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !5717
  br label %if.end124, !dbg !5717

if.end124:                                        ; preds = %if.then111, %do.body109
  br label %do.end125, !dbg !5716

do.end125:                                        ; preds = %if.end124
  %64 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !5719
  %arraydecay126 = getelementptr inbounds [8 x i8], [8 x i8]* %b, i64 0, i64 0, !dbg !5720
  %call127 = call i32 @mt2060_writeregs(%struct.mt2060_priv* %64, i8* %arraydecay126, i8 zeroext 6) #9, !dbg !5721
  store i32 0, i32* %i, align 4, !dbg !5722
  br label %do.body128, !dbg !5723

do.body128:                                       ; preds = %do.cond, %do.end125
  %65 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !5724
  %arraydecay129 = getelementptr inbounds [8 x i8], [8 x i8]* %b, i64 0, i64 0, !dbg !5726
  %call130 = call i32 @mt2060_readreg(%struct.mt2060_priv* %65, i8 zeroext 6, i8* %arraydecay129) #9, !dbg !5727
  %arrayidx131 = getelementptr [8 x i8], [8 x i8]* %b, i64 0, i64 0, !dbg !5728
  %66 = load i8, i8* %arrayidx131, align 1, !dbg !5728
  %conv132 = zext i8 %66 to i32, !dbg !5728
  %and133 = and i32 %conv132, 136, !dbg !5730
  %cmp134 = icmp eq i32 %and133, 136, !dbg !5731
  br i1 %cmp134, label %if.then136, label %if.end137, !dbg !5732

if.then136:                                       ; preds = %do.body128
  br label %do.end140, !dbg !5733

if.end137:                                        ; preds = %do.body128
  call void @msleep(i32 4) #9, !dbg !5734
  %67 = load i32, i32* %i, align 4, !dbg !5735
  %inc = add i32 %67, 1, !dbg !5735
  store i32 %inc, i32* %i, align 4, !dbg !5735
  br label %do.cond, !dbg !5736

do.cond:                                          ; preds = %if.end137
  %68 = load i32, i32* %i, align 4, !dbg !5737
  %cmp138 = icmp slt i32 %68, 10, !dbg !5738
  br i1 %cmp138, label %do.body128, label %do.end140, !dbg !5736, !llvm.loop !5739

do.end140:                                        ; preds = %do.cond, %if.then136
  %69 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5741
  %ops141 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %69, i32 0, i32 1, !dbg !5743
  %i2c_gate_ctrl142 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops141, i32 0, i32 26, !dbg !5744
  %70 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl142, align 8, !dbg !5744
  %tobool143 = icmp ne i32 (%struct.dvb_frontend*, i32)* %70, null, !dbg !5741
  br i1 %tobool143, label %if.then144, label %if.end148, !dbg !5745

if.then144:                                       ; preds = %do.end140
  %71 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5746
  %ops145 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %71, i32 0, i32 1, !dbg !5747
  %i2c_gate_ctrl146 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops145, i32 0, i32 26, !dbg !5748
  %72 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl146, align 8, !dbg !5748
  %73 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5749
  %call147 = call i32 %72(%struct.dvb_frontend* %73, i32 0) #9, !dbg !5746
  br label %if.end148, !dbg !5746

if.end148:                                        ; preds = %if.then144, %do.end140
  ret i32 0, !dbg !5750
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt2060_get_frequency(%struct.dvb_frontend* %fe, i32* %frequency) #0 !dbg !5751 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %frequency.addr = alloca i32*, align 8
  %priv = alloca %struct.mt2060_priv*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5752, metadata !DIExpression()), !dbg !5753
  store i32* %frequency, i32** %frequency.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %frequency.addr, metadata !5754, metadata !DIExpression()), !dbg !5755
  call void @llvm.dbg.declare(metadata %struct.mt2060_priv** %priv, metadata !5756, metadata !DIExpression()), !dbg !5757
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5758
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5759
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5759
  %2 = bitcast i8* %1 to %struct.mt2060_priv*, !dbg !5758
  store %struct.mt2060_priv* %2, %struct.mt2060_priv** %priv, align 8, !dbg !5757
  %3 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv, align 8, !dbg !5760
  %frequency1 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %3, i32 0, i32 5, !dbg !5761
  %4 = load i32, i32* %frequency1, align 4, !dbg !5761
  %5 = load i32*, i32** %frequency.addr, align 8, !dbg !5762
  store i32 %4, i32* %5, align 4, !dbg !5763
  ret i32 0, !dbg !5764
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt2060_get_if_frequency(%struct.dvb_frontend* %fe, i32* %frequency) #0 !dbg !5765 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %frequency.addr = alloca i32*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5766, metadata !DIExpression()), !dbg !5767
  store i32* %frequency, i32** %frequency.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %frequency.addr, metadata !5768, metadata !DIExpression()), !dbg !5769
  %0 = load i32*, i32** %frequency.addr, align 8, !dbg !5770
  store i32 36150000, i32* %0, align 4, !dbg !5771
  ret i32 0, !dbg !5772
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt2060_writereg(%struct.mt2060_priv* %priv, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !5773 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4679, metadata !DIExpression()), !dbg !5776
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4689, metadata !DIExpression()), !dbg !5779
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4691, metadata !DIExpression()), !dbg !5780
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4693, metadata !DIExpression()), !dbg !5781
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4695, metadata !DIExpression()), !dbg !5782
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4701, metadata !DIExpression()), !dbg !5784
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4707, metadata !DIExpression()), !dbg !5786
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4716, metadata !DIExpression()), !dbg !5789
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4718, metadata !DIExpression()), !dbg !5790
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4720, metadata !DIExpression()), !dbg !5791
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4722, metadata !DIExpression()), !dbg !5792
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4724, metadata !DIExpression()), !dbg !5793
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4726, metadata !DIExpression()), !dbg !5794
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4728, metadata !DIExpression()), !dbg !5795
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4730, metadata !DIExpression()), !dbg !5796
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.mt2060_priv*, align 8
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  %msg = alloca %struct.i2c_msg, align 8
  %buf1 = alloca i8*, align 8
  %rc = alloca i32, align 4
  store %struct.mt2060_priv* %priv, %struct.mt2060_priv** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mt2060_priv** %priv.addr, metadata !5797, metadata !DIExpression()), !dbg !5798
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5799, metadata !DIExpression()), !dbg !5800
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !5801, metadata !DIExpression()), !dbg !5802
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5803, metadata !DIExpression()), !dbg !5804
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5805
  %0 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !5806
  %cfg = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %0, i32 0, i32 0, !dbg !5807
  %1 = load %struct.mt2060_config*, %struct.mt2060_config** %cfg, align 8, !dbg !5807
  %i2c_address = getelementptr inbounds %struct.mt2060_config, %struct.mt2060_config* %1, i32 0, i32 0, !dbg !5808
  %2 = load i8, i8* %i2c_address, align 1, !dbg !5808
  %conv = zext i8 %2 to i16, !dbg !5806
  store i16 %conv, i16* %addr, align 8, !dbg !5805
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5805
  store i16 0, i16* %flags, align 2, !dbg !5805
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5805
  store i16 2, i16* %len, align 4, !dbg !5805
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5805
  store i8* null, i8** %buf, align 8, !dbg !5805
  call void @llvm.dbg.declare(metadata i8** %buf1, metadata !5809, metadata !DIExpression()), !dbg !5810
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5811, metadata !DIExpression()), !dbg !5812
  store i32 0, i32* %rc, align 4, !dbg !5812
  store i64 2, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !5813
  %4 = call i1 @llvm.is.constant.i64(i64 %3) #11, !dbg !5814
  br i1 %4, label %if.then.i, label %if.end9.i, !dbg !5815

if.then.i:                                        ; preds = %entry
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5816
  %cmp.i = icmp ugt i64 %5, 8192, !dbg !5817
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5818

if.then1.i:                                       ; preds = %if.then.i
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5819
  %7 = load i32, i32* %flags.addr.i, align 4, !dbg !5820
  store i64 %6, i64* %size.addr.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i, align 4
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5821
  %call.i.i = call i32 @get_order(i64 %8) #12, !dbg !5822
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5793
  %9 = load i64, i64* %size.addr.i.i, align 8, !dbg !5823
  %10 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5824
  %11 = load i32, i32* %order.i.i, align 4, !dbg !5825
  store i64 %9, i64* %size.addr.i.i.i, align 8
  store i32 %10, i32* %flags.addr.i.i.i, align 4
  store i32 %11, i32* %order.addr.i.i.i, align 4
  %12 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5826
  %13 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5827
  %14 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5828
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %12, i32 %13, i32 %14) #13, !dbg !5829
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5829
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5829
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5829
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !5829
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5830
  br label %kmalloc.exit, !dbg !5830

if.end.i:                                         ; preds = %if.then.i
  %15 = load i64, i64* %size.addr.i, align 8, !dbg !5831
  store i64 %15, i64* %size.addr.i11.i, align 8
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5832
  %tobool.i.i = icmp ne i64 %16, 0, !dbg !5832
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5833

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5834
  br label %kmalloc_index.exit.i, !dbg !5834

if.end.i.i:                                       ; preds = %if.end.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5835
  %cmp.i.i = icmp ule i64 %17, 8, !dbg !5836
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5837

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5838
  br label %kmalloc_index.exit.i, !dbg !5838

if.end2.i.i:                                      ; preds = %if.end.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5839
  %cmp3.i.i = icmp ugt i64 %18, 64, !dbg !5840
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5841

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5842
  %cmp4.i.i = icmp ule i64 %19, 96, !dbg !5843
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5844

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5845
  br label %kmalloc_index.exit.i, !dbg !5845

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5846
  %cmp7.i.i = icmp ugt i64 %20, 128, !dbg !5847
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5848

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5849
  %cmp9.i.i = icmp ule i64 %21, 192, !dbg !5850
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5851

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5852
  br label %kmalloc_index.exit.i, !dbg !5852

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5853
  %cmp12.i.i = icmp ule i64 %22, 8, !dbg !5854
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5855

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5856
  br label %kmalloc_index.exit.i, !dbg !5856

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5857
  %cmp15.i.i = icmp ule i64 %23, 16, !dbg !5858
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5859

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5860
  br label %kmalloc_index.exit.i, !dbg !5860

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5861
  %cmp18.i.i = icmp ule i64 %24, 32, !dbg !5862
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5863

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5864
  br label %kmalloc_index.exit.i, !dbg !5864

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5865
  %cmp21.i.i = icmp ule i64 %25, 64, !dbg !5866
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5867

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5868
  br label %kmalloc_index.exit.i, !dbg !5868

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5869
  %cmp24.i.i = icmp ule i64 %26, 128, !dbg !5870
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5871

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5872
  br label %kmalloc_index.exit.i, !dbg !5872

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5873
  %cmp27.i.i = icmp ule i64 %27, 256, !dbg !5874
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5875

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5876
  br label %kmalloc_index.exit.i, !dbg !5876

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5877
  %cmp30.i.i = icmp ule i64 %28, 512, !dbg !5878
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5879

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5880
  br label %kmalloc_index.exit.i, !dbg !5880

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5881
  %cmp33.i.i = icmp ule i64 %29, 1024, !dbg !5882
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5883

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5884
  br label %kmalloc_index.exit.i, !dbg !5884

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5885
  %cmp36.i.i = icmp ule i64 %30, 2048, !dbg !5886
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5887

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5888
  br label %kmalloc_index.exit.i, !dbg !5888

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5889
  %cmp39.i.i = icmp ule i64 %31, 4096, !dbg !5890
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5891

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5892
  br label %kmalloc_index.exit.i, !dbg !5892

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5893
  %cmp42.i.i = icmp ule i64 %32, 8192, !dbg !5894
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5895

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5896
  br label %kmalloc_index.exit.i, !dbg !5896

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5897
  %cmp45.i.i = icmp ule i64 %33, 16384, !dbg !5898
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5899

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5900
  br label %kmalloc_index.exit.i, !dbg !5900

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5901
  %cmp48.i.i = icmp ule i64 %34, 32768, !dbg !5902
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5903

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5904
  br label %kmalloc_index.exit.i, !dbg !5904

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5905
  %cmp51.i.i = icmp ule i64 %35, 65536, !dbg !5906
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5907

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5908
  br label %kmalloc_index.exit.i, !dbg !5908

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5909
  %cmp54.i.i = icmp ule i64 %36, 131072, !dbg !5910
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5911

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5912
  br label %kmalloc_index.exit.i, !dbg !5912

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5913
  %cmp57.i.i = icmp ule i64 %37, 262144, !dbg !5914
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5915

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5916
  br label %kmalloc_index.exit.i, !dbg !5916

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5917
  %cmp60.i.i = icmp ule i64 %38, 524288, !dbg !5918
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5919

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5920
  br label %kmalloc_index.exit.i, !dbg !5920

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5921
  %cmp63.i.i = icmp ule i64 %39, 1048576, !dbg !5922
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5923

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5924
  br label %kmalloc_index.exit.i, !dbg !5924

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5925
  %cmp66.i.i = icmp ule i64 %40, 2097152, !dbg !5926
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5927

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5928
  br label %kmalloc_index.exit.i, !dbg !5928

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5929
  %cmp69.i.i = icmp ule i64 %41, 4194304, !dbg !5930
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5931

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5932
  br label %kmalloc_index.exit.i, !dbg !5932

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5933
  %cmp72.i.i = icmp ule i64 %42, 8388608, !dbg !5934
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5935

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5936
  br label %kmalloc_index.exit.i, !dbg !5936

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5937
  %cmp75.i.i = icmp ule i64 %43, 16777216, !dbg !5938
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5939

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5940
  br label %kmalloc_index.exit.i, !dbg !5940

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5941
  %cmp78.i.i = icmp ule i64 %44, 33554432, !dbg !5942
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5943

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5944
  br label %kmalloc_index.exit.i, !dbg !5944

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5945
  %cmp81.i.i = icmp ule i64 %45, 67108864, !dbg !5946
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5947

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5948
  br label %kmalloc_index.exit.i, !dbg !5948

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5949, !srcloc !4906
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 106) #11, !dbg !5950, !srcloc !4910
  unreachable, !dbg !5951

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %46 = load i32, i32* %retval.i.i, align 4, !dbg !5952
  store i32 %46, i32* %index.i, align 4, !dbg !5953
  %47 = load i32, i32* %index.i, align 4, !dbg !5954
  %tobool.i = icmp ne i32 %47, 0, !dbg !5954
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5955

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5956
  br label %kmalloc.exit, !dbg !5956

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %48 = load i32, i32* %flags.addr.i, align 4, !dbg !5957
  store i32 %48, i32* %flags.addr.i13.i, align 4
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5958
  %and.i.i = and i32 %49, 17, !dbg !5958
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5958
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5958
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5958
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5958
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5959

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5960
  br label %kmalloc_type.exit.i, !dbg !5960

if.end.i16.i:                                     ; preds = %if.end4.i
  %50 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5961
  %and2.i.i = and i32 %50, 1, !dbg !5962
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5961
  %51 = zext i1 %tobool3.i.i to i64, !dbg !5961
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5961
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5963
  br label %kmalloc_type.exit.i, !dbg !5963

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %52 = load i32, i32* %retval.i12.i, align 4, !dbg !5964
  %idxprom.i = zext i32 %52 to i64, !dbg !5965
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5965
  %53 = load i32, i32* %index.i, align 4, !dbg !5966
  %idxprom6.i = zext i32 %53 to i64, !dbg !5965
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5965
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5965
  %55 = load i32, i32* %flags.addr.i, align 4, !dbg !5967
  %56 = load i64, i64* %size.addr.i, align 8, !dbg !5968
  store %struct.kmem_cache* %54, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %55, i32* %flags.addr.i17.i, align 4
  store i64 %56, i64* %size.addr.i18.i, align 8
  %57 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5969
  %58 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5970
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %57, i32 %58) #13, !dbg !5971
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5971
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5971
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5971
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5971
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5781
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5972
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !5973
  %61 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5974
  %62 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5975
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %59, i8* %60, i64 %61, i32 %62) #13, !dbg !5976
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5977
  %63 = load i8*, i8** %ret.i.i, align 8, !dbg !5978
  store i8* %63, i8** %retval.i, align 8, !dbg !5979
  br label %kmalloc.exit, !dbg !5979

if.end9.i:                                        ; preds = %entry
  %64 = load i64, i64* %size.addr.i, align 8, !dbg !5980
  %65 = load i32, i32* %flags.addr.i, align 4, !dbg !5981
  %call10.i = call noalias i8* @__kmalloc(i64 %64, i32 %65) #13, !dbg !5982
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5982
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5982
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5982
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5982
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5983
  br label %kmalloc.exit, !dbg !5983

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %66 = load i8*, i8** %retval.i, align 8, !dbg !5984
  store i8* %66, i8** %buf1, align 8, !dbg !5985
  %67 = load i8*, i8** %buf1, align 8, !dbg !5986
  %tobool = icmp ne i8* %67, null, !dbg !5986
  br i1 %tobool, label %if.end, label %if.then, !dbg !5988

if.then:                                          ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !5989
  br label %return, !dbg !5989

if.end:                                           ; preds = %kmalloc.exit
  %68 = load i8, i8* %reg.addr, align 1, !dbg !5990
  %69 = load i8*, i8** %buf1, align 8, !dbg !5991
  %arrayidx = getelementptr i8, i8* %69, i64 0, !dbg !5991
  store i8 %68, i8* %arrayidx, align 1, !dbg !5992
  %70 = load i8, i8* %val.addr, align 1, !dbg !5993
  %71 = load i8*, i8** %buf1, align 8, !dbg !5994
  %arrayidx2 = getelementptr i8, i8* %71, i64 1, !dbg !5994
  store i8 %70, i8* %arrayidx2, align 1, !dbg !5995
  %72 = load i8*, i8** %buf1, align 8, !dbg !5996
  %buf3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5997
  store i8* %72, i8** %buf3, align 8, !dbg !5998
  %73 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !5999
  %i2c = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %73, i32 0, i32 1, !dbg !6001
  %74 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !6001
  %call4 = call i32 @i2c_transfer(%struct.i2c_adapter* %74, %struct.i2c_msg* %msg, i32 1) #9, !dbg !6002
  %cmp = icmp ne i32 %call4, 1, !dbg !6003
  br i1 %cmp, label %if.then6, label %if.end8, !dbg !6004

if.then6:                                         ; preds = %if.end
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !6005
  store i32 -121, i32* %rc, align 4, !dbg !6007
  br label %if.end8, !dbg !6008

if.end8:                                          ; preds = %if.then6, %if.end
  %75 = load i8*, i8** %buf1, align 8, !dbg !6009
  call void @kfree(i8* %75) #9, !dbg !6010
  %76 = load i32, i32* %rc, align 4, !dbg !6011
  store i32 %76, i32* %retval, align 4, !dbg !6012
  br label %return, !dbg !6012

return:                                           ; preds = %if.end8, %if.then
  %77 = load i32, i32* %retval, align 4, !dbg !6013
  ret i32 %77, !dbg !6013
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt2060_writeregs(%struct.mt2060_priv* %priv, i8* %buf, i8 zeroext %len) #0 !dbg !6014 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4679, metadata !DIExpression()), !dbg !6017
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4689, metadata !DIExpression()), !dbg !6020
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4691, metadata !DIExpression()), !dbg !6021
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4693, metadata !DIExpression()), !dbg !6022
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4695, metadata !DIExpression()), !dbg !6023
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4701, metadata !DIExpression()), !dbg !6025
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4707, metadata !DIExpression()), !dbg !6027
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4716, metadata !DIExpression()), !dbg !6030
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4718, metadata !DIExpression()), !dbg !6031
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4720, metadata !DIExpression()), !dbg !6032
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4722, metadata !DIExpression()), !dbg !6033
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4724, metadata !DIExpression()), !dbg !6034
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4726, metadata !DIExpression()), !dbg !6035
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4728, metadata !DIExpression()), !dbg !6036
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4730, metadata !DIExpression()), !dbg !6037
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.mt2060_priv*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i8, align 1
  %rem = alloca i32, align 4
  %val_len = alloca i32, align 4
  %xfer_buf = alloca i8*, align 8
  %rc = alloca i32, align 4
  %msg = alloca %struct.i2c_msg, align 8
  %__UNIQUE_ID___x222 = alloca i32, align 4
  %__UNIQUE_ID___y223 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.mt2060_priv* %priv, %struct.mt2060_priv** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mt2060_priv** %priv.addr, metadata !6038, metadata !DIExpression()), !dbg !6039
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6040, metadata !DIExpression()), !dbg !6041
  store i8 %len, i8* %len.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %len.addr, metadata !6042, metadata !DIExpression()), !dbg !6043
  call void @llvm.dbg.declare(metadata i32* %rem, metadata !6044, metadata !DIExpression()), !dbg !6045
  call void @llvm.dbg.declare(metadata i32* %val_len, metadata !6046, metadata !DIExpression()), !dbg !6047
  call void @llvm.dbg.declare(metadata i8** %xfer_buf, metadata !6048, metadata !DIExpression()), !dbg !6049
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !6050, metadata !DIExpression()), !dbg !6051
  store i32 0, i32* %rc, align 4, !dbg !6051
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !6052, metadata !DIExpression()), !dbg !6053
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !6054
  %0 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !6055
  %cfg = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %0, i32 0, i32 0, !dbg !6056
  %1 = load %struct.mt2060_config*, %struct.mt2060_config** %cfg, align 8, !dbg !6056
  %i2c_address = getelementptr inbounds %struct.mt2060_config, %struct.mt2060_config* %1, i32 0, i32 0, !dbg !6057
  %2 = load i8, i8* %i2c_address, align 1, !dbg !6057
  %conv = zext i8 %2 to i16, !dbg !6055
  store i16 %conv, i16* %addr, align 8, !dbg !6054
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !6054
  store i16 0, i16* %flags, align 2, !dbg !6054
  %len1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !6054
  store i16 0, i16* %len1, align 4, !dbg !6054
  %buf2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !6054
  store i8* null, i8** %buf2, align 8, !dbg !6054
  store i64 16, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !6058
  %4 = call i1 @llvm.is.constant.i64(i64 %3) #11, !dbg !6059
  br i1 %4, label %if.then.i, label %if.end9.i, !dbg !6060

if.then.i:                                        ; preds = %entry
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !6061
  %cmp.i = icmp ugt i64 %5, 8192, !dbg !6062
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6063

if.then1.i:                                       ; preds = %if.then.i
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6064
  %7 = load i32, i32* %flags.addr.i, align 4, !dbg !6065
  store i64 %6, i64* %size.addr.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i, align 4
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !6066
  %call.i.i = call i32 @get_order(i64 %8) #12, !dbg !6067
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !6034
  %9 = load i64, i64* %size.addr.i.i, align 8, !dbg !6068
  %10 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6069
  %11 = load i32, i32* %order.i.i, align 4, !dbg !6070
  store i64 %9, i64* %size.addr.i.i.i, align 8
  store i32 %10, i32* %flags.addr.i.i.i, align 4
  store i32 %11, i32* %order.addr.i.i.i, align 4
  %12 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6071
  %13 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6072
  %14 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6073
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %12, i32 %13, i32 %14) #13, !dbg !6074
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6074
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6074
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6074
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !6074
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6075
  br label %kmalloc.exit, !dbg !6075

if.end.i:                                         ; preds = %if.then.i
  %15 = load i64, i64* %size.addr.i, align 8, !dbg !6076
  store i64 %15, i64* %size.addr.i11.i, align 8
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6077
  %tobool.i.i = icmp ne i64 %16, 0, !dbg !6077
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6078

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6079
  br label %kmalloc_index.exit.i, !dbg !6079

if.end.i.i:                                       ; preds = %if.end.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6080
  %cmp.i.i = icmp ule i64 %17, 8, !dbg !6081
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6082

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6083
  br label %kmalloc_index.exit.i, !dbg !6083

if.end2.i.i:                                      ; preds = %if.end.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6084
  %cmp3.i.i = icmp ugt i64 %18, 64, !dbg !6085
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6086

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6087
  %cmp4.i.i = icmp ule i64 %19, 96, !dbg !6088
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6089

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6090
  br label %kmalloc_index.exit.i, !dbg !6090

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6091
  %cmp7.i.i = icmp ugt i64 %20, 128, !dbg !6092
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6093

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6094
  %cmp9.i.i = icmp ule i64 %21, 192, !dbg !6095
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6096

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6097
  br label %kmalloc_index.exit.i, !dbg !6097

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6098
  %cmp12.i.i = icmp ule i64 %22, 8, !dbg !6099
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6100

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6101
  br label %kmalloc_index.exit.i, !dbg !6101

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6102
  %cmp15.i.i = icmp ule i64 %23, 16, !dbg !6103
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6104

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6105
  br label %kmalloc_index.exit.i, !dbg !6105

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6106
  %cmp18.i.i = icmp ule i64 %24, 32, !dbg !6107
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6108

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6109
  br label %kmalloc_index.exit.i, !dbg !6109

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6110
  %cmp21.i.i = icmp ule i64 %25, 64, !dbg !6111
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6112

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6113
  br label %kmalloc_index.exit.i, !dbg !6113

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6114
  %cmp24.i.i = icmp ule i64 %26, 128, !dbg !6115
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6116

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6117
  br label %kmalloc_index.exit.i, !dbg !6117

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6118
  %cmp27.i.i = icmp ule i64 %27, 256, !dbg !6119
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6120

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6121
  br label %kmalloc_index.exit.i, !dbg !6121

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6122
  %cmp30.i.i = icmp ule i64 %28, 512, !dbg !6123
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6124

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6125
  br label %kmalloc_index.exit.i, !dbg !6125

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6126
  %cmp33.i.i = icmp ule i64 %29, 1024, !dbg !6127
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6128

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6129
  br label %kmalloc_index.exit.i, !dbg !6129

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6130
  %cmp36.i.i = icmp ule i64 %30, 2048, !dbg !6131
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6132

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6133
  br label %kmalloc_index.exit.i, !dbg !6133

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6134
  %cmp39.i.i = icmp ule i64 %31, 4096, !dbg !6135
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6136

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6137
  br label %kmalloc_index.exit.i, !dbg !6137

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6138
  %cmp42.i.i = icmp ule i64 %32, 8192, !dbg !6139
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6140

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6141
  br label %kmalloc_index.exit.i, !dbg !6141

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6142
  %cmp45.i.i = icmp ule i64 %33, 16384, !dbg !6143
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6144

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6145
  br label %kmalloc_index.exit.i, !dbg !6145

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6146
  %cmp48.i.i = icmp ule i64 %34, 32768, !dbg !6147
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6148

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6149
  br label %kmalloc_index.exit.i, !dbg !6149

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6150
  %cmp51.i.i = icmp ule i64 %35, 65536, !dbg !6151
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6152

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6153
  br label %kmalloc_index.exit.i, !dbg !6153

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6154
  %cmp54.i.i = icmp ule i64 %36, 131072, !dbg !6155
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6156

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6157
  br label %kmalloc_index.exit.i, !dbg !6157

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6158
  %cmp57.i.i = icmp ule i64 %37, 262144, !dbg !6159
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6160

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6161
  br label %kmalloc_index.exit.i, !dbg !6161

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6162
  %cmp60.i.i = icmp ule i64 %38, 524288, !dbg !6163
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6164

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6165
  br label %kmalloc_index.exit.i, !dbg !6165

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6166
  %cmp63.i.i = icmp ule i64 %39, 1048576, !dbg !6167
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6168

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6169
  br label %kmalloc_index.exit.i, !dbg !6169

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6170
  %cmp66.i.i = icmp ule i64 %40, 2097152, !dbg !6171
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6172

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6173
  br label %kmalloc_index.exit.i, !dbg !6173

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6174
  %cmp69.i.i = icmp ule i64 %41, 4194304, !dbg !6175
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6176

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6177
  br label %kmalloc_index.exit.i, !dbg !6177

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6178
  %cmp72.i.i = icmp ule i64 %42, 8388608, !dbg !6179
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6180

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6181
  br label %kmalloc_index.exit.i, !dbg !6181

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6182
  %cmp75.i.i = icmp ule i64 %43, 16777216, !dbg !6183
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6184

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6185
  br label %kmalloc_index.exit.i, !dbg !6185

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6186
  %cmp78.i.i = icmp ule i64 %44, 33554432, !dbg !6187
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6188

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6189
  br label %kmalloc_index.exit.i, !dbg !6189

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6190
  %cmp81.i.i = icmp ule i64 %45, 67108864, !dbg !6191
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6192

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6193
  br label %kmalloc_index.exit.i, !dbg !6193

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !6194, !srcloc !4906
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 106) #11, !dbg !6195, !srcloc !4910
  unreachable, !dbg !6196

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %46 = load i32, i32* %retval.i.i, align 4, !dbg !6197
  store i32 %46, i32* %index.i, align 4, !dbg !6198
  %47 = load i32, i32* %index.i, align 4, !dbg !6199
  %tobool.i = icmp ne i32 %47, 0, !dbg !6199
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6200

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6201
  br label %kmalloc.exit, !dbg !6201

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %48 = load i32, i32* %flags.addr.i, align 4, !dbg !6202
  store i32 %48, i32* %flags.addr.i13.i, align 4
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6203
  %and.i.i = and i32 %49, 17, !dbg !6203
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6203
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6203
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6203
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6203
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6204

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6205
  br label %kmalloc_type.exit.i, !dbg !6205

if.end.i16.i:                                     ; preds = %if.end4.i
  %50 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6206
  %and2.i.i = and i32 %50, 1, !dbg !6207
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6206
  %51 = zext i1 %tobool3.i.i to i64, !dbg !6206
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6206
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6208
  br label %kmalloc_type.exit.i, !dbg !6208

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %52 = load i32, i32* %retval.i12.i, align 4, !dbg !6209
  %idxprom.i = zext i32 %52 to i64, !dbg !6210
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6210
  %53 = load i32, i32* %index.i, align 4, !dbg !6211
  %idxprom6.i = zext i32 %53 to i64, !dbg !6210
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6210
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6210
  %55 = load i32, i32* %flags.addr.i, align 4, !dbg !6212
  %56 = load i64, i64* %size.addr.i, align 8, !dbg !6213
  store %struct.kmem_cache* %54, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %55, i32* %flags.addr.i17.i, align 4
  store i64 %56, i64* %size.addr.i18.i, align 8
  %57 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6214
  %58 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6215
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %57, i32 %58) #13, !dbg !6216
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6216
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6216
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6216
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !6216
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !6022
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6217
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !6218
  %61 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6219
  %62 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6220
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %59, i8* %60, i64 %61, i32 %62) #13, !dbg !6221
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6222
  %63 = load i8*, i8** %ret.i.i, align 8, !dbg !6223
  store i8* %63, i8** %retval.i, align 8, !dbg !6224
  br label %kmalloc.exit, !dbg !6224

if.end9.i:                                        ; preds = %entry
  %64 = load i64, i64* %size.addr.i, align 8, !dbg !6225
  %65 = load i32, i32* %flags.addr.i, align 4, !dbg !6226
  %call10.i = call noalias i8* @__kmalloc(i64 %64, i32 %65) #13, !dbg !6227
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6227
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6227
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6227
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !6227
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6228
  br label %kmalloc.exit, !dbg !6228

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %66 = load i8*, i8** %retval.i, align 8, !dbg !6229
  store i8* %66, i8** %xfer_buf, align 8, !dbg !6230
  %67 = load i8*, i8** %xfer_buf, align 8, !dbg !6231
  %tobool = icmp ne i8* %67, null, !dbg !6231
  br i1 %tobool, label %if.end, label %if.then, !dbg !6233

if.then:                                          ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !6234
  br label %return, !dbg !6234

if.end:                                           ; preds = %kmalloc.exit
  %68 = load i8*, i8** %xfer_buf, align 8, !dbg !6235
  %buf3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !6236
  store i8* %68, i8** %buf3, align 8, !dbg !6237
  %69 = load i8, i8* %len.addr, align 1, !dbg !6238
  %conv4 = zext i8 %69 to i32, !dbg !6238
  %sub = sub i32 %conv4, 1, !dbg !6240
  store i32 %sub, i32* %rem, align 4, !dbg !6241
  br label %for.cond, !dbg !6242

for.cond:                                         ; preds = %for.inc, %if.end
  %70 = load i32, i32* %rem, align 4, !dbg !6243
  %cmp = icmp sgt i32 %70, 0, !dbg !6245
  br i1 %cmp, label %for.body, label %for.end, !dbg !6246

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x222, metadata !6247, metadata !DIExpression()), !dbg !6250
  %71 = load i32, i32* %rem, align 4, !dbg !6250
  store i32 %71, i32* %__UNIQUE_ID___x222, align 4, !dbg !6250
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y223, metadata !6251, metadata !DIExpression()), !dbg !6250
  %72 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !6250
  %i2c_max_regs = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %72, i32 0, i32 4, !dbg !6250
  %73 = load i8, i8* %i2c_max_regs, align 2, !dbg !6250
  %conv6 = zext i8 %73 to i32, !dbg !6250
  store i32 %conv6, i32* %__UNIQUE_ID___y223, align 4, !dbg !6250
  %74 = load i32, i32* %__UNIQUE_ID___x222, align 4, !dbg !6250
  %75 = load i32, i32* %__UNIQUE_ID___y223, align 4, !dbg !6250
  %cmp7 = icmp slt i32 %74, %75, !dbg !6250
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !6250

cond.true:                                        ; preds = %for.body
  %76 = load i32, i32* %__UNIQUE_ID___x222, align 4, !dbg !6250
  br label %cond.end, !dbg !6250

cond.false:                                       ; preds = %for.body
  %77 = load i32, i32* %__UNIQUE_ID___y223, align 4, !dbg !6250
  br label %cond.end, !dbg !6250

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %76, %cond.true ], [ %77, %cond.false ], !dbg !6250
  store i32 %cond, i32* %tmp, align 4, !dbg !6250
  %78 = load i32, i32* %tmp, align 4, !dbg !6250
  store i32 %78, i32* %val_len, align 4, !dbg !6252
  %79 = load i32, i32* %val_len, align 4, !dbg !6253
  %add = add i32 1, %79, !dbg !6254
  %conv9 = trunc i32 %add to i16, !dbg !6255
  %len10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !6256
  store i16 %conv9, i16* %len10, align 4, !dbg !6257
  %80 = load i8*, i8** %buf.addr, align 8, !dbg !6258
  %arrayidx = getelementptr i8, i8* %80, i64 0, !dbg !6258
  %81 = load i8, i8* %arrayidx, align 1, !dbg !6258
  %conv11 = zext i8 %81 to i32, !dbg !6258
  %82 = load i8, i8* %len.addr, align 1, !dbg !6259
  %conv12 = zext i8 %82 to i32, !dbg !6259
  %add13 = add i32 %conv11, %conv12, !dbg !6260
  %sub14 = sub i32 %add13, 1, !dbg !6261
  %83 = load i32, i32* %rem, align 4, !dbg !6262
  %sub15 = sub i32 %sub14, %83, !dbg !6263
  %conv16 = trunc i32 %sub15 to i8, !dbg !6258
  %84 = load i8*, i8** %xfer_buf, align 8, !dbg !6264
  %arrayidx17 = getelementptr i8, i8* %84, i64 0, !dbg !6264
  store i8 %conv16, i8* %arrayidx17, align 1, !dbg !6265
  %85 = load i8*, i8** %xfer_buf, align 8, !dbg !6266
  %arrayidx18 = getelementptr i8, i8* %85, i64 1, !dbg !6266
  %86 = load i8*, i8** %buf.addr, align 8, !dbg !6267
  %87 = load i8, i8* %len.addr, align 1, !dbg !6268
  %conv19 = zext i8 %87 to i32, !dbg !6268
  %add20 = add i32 1, %conv19, !dbg !6269
  %sub21 = sub i32 %add20, 1, !dbg !6270
  %88 = load i32, i32* %rem, align 4, !dbg !6271
  %sub22 = sub i32 %sub21, %88, !dbg !6272
  %idxprom = sext i32 %sub22 to i64, !dbg !6267
  %arrayidx23 = getelementptr i8, i8* %86, i64 %idxprom, !dbg !6267
  %89 = load i32, i32* %val_len, align 4, !dbg !6273
  %conv24 = sext i32 %89 to i64, !dbg !6273
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx18, i8* align 1 %arrayidx23, i64 %conv24, i1 false), !dbg !6274
  %90 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !6275
  %i2c = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %90, i32 0, i32 1, !dbg !6277
  %91 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !6277
  %call25 = call i32 @i2c_transfer(%struct.i2c_adapter* %91, %struct.i2c_msg* %msg, i32 1) #9, !dbg !6278
  %cmp26 = icmp ne i32 %call25, 1, !dbg !6279
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !6280

if.then28:                                        ; preds = %cond.end
  %92 = load i32, i32* %val_len, align 4, !dbg !6281
  %call29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %92) #10, !dbg !6283
  store i32 -121, i32* %rc, align 4, !dbg !6284
  br label %for.end, !dbg !6285

if.end30:                                         ; preds = %cond.end
  br label %for.inc, !dbg !6286

for.inc:                                          ; preds = %if.end30
  %93 = load %struct.mt2060_priv*, %struct.mt2060_priv** %priv.addr, align 8, !dbg !6287
  %i2c_max_regs31 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %93, i32 0, i32 4, !dbg !6288
  %94 = load i8, i8* %i2c_max_regs31, align 2, !dbg !6288
  %conv32 = zext i8 %94 to i32, !dbg !6287
  %95 = load i32, i32* %rem, align 4, !dbg !6289
  %sub33 = sub i32 %95, %conv32, !dbg !6289
  store i32 %sub33, i32* %rem, align 4, !dbg !6289
  br label %for.cond, !dbg !6290, !llvm.loop !6291

for.end:                                          ; preds = %if.then28, %for.cond
  %96 = load i8*, i8** %xfer_buf, align 8, !dbg !6293
  call void @kfree(i8* %96) #9, !dbg !6294
  %97 = load i32, i32* %rc, align 4, !dbg !6295
  store i32 %97, i32* %retval, align 4, !dbg !6296
  br label %return, !dbg !6296

return:                                           ; preds = %for.end, %if.then
  %98 = load i32, i32* %retval, align 4, !dbg !6297
  ret i32 %98, !dbg !6297
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @i2c_register_driver(%struct.module*, %struct.i2c_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt2060_probe(%struct.i2c_client* %client, %struct.i2c_device_id* %id) #0 !dbg !6298 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca %struct.i2c_client*, align 8
  %id.addr = alloca %struct.i2c_device_id*, align 8
  %pdata = alloca %struct.mt2060_platform_data*, align 8
  %fe = alloca %struct.dvb_frontend*, align 8
  %dev1 = alloca %struct.mt2060_priv*, align 8
  %ret = alloca i32, align 4
  %chip_id = alloca i8, align 1
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !6299, metadata !DIExpression()), !dbg !6300
  store %struct.i2c_device_id* %id, %struct.i2c_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_device_id** %id.addr, metadata !6301, metadata !DIExpression()), !dbg !6302
  call void @llvm.dbg.declare(metadata %struct.mt2060_platform_data** %pdata, metadata !6303, metadata !DIExpression()), !dbg !6311
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6312
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !6313
  %platform_data = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 7, !dbg !6314
  %1 = load i8*, i8** %platform_data, align 8, !dbg !6314
  %2 = bitcast i8* %1 to %struct.mt2060_platform_data*, !dbg !6312
  store %struct.mt2060_platform_data* %2, %struct.mt2060_platform_data** %pdata, align 8, !dbg !6311
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe, metadata !6315, metadata !DIExpression()), !dbg !6316
  call void @llvm.dbg.declare(metadata %struct.mt2060_priv** %dev1, metadata !6317, metadata !DIExpression()), !dbg !6318
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6319, metadata !DIExpression()), !dbg !6320
  call void @llvm.dbg.declare(metadata i8* %chip_id, metadata !6321, metadata !DIExpression()), !dbg !6322
  %3 = load %struct.mt2060_platform_data*, %struct.mt2060_platform_data** %pdata, align 8, !dbg !6323
  %tobool = icmp ne %struct.mt2060_platform_data* %3, null, !dbg !6323
  br i1 %tobool, label %if.end, label %if.then, !dbg !6325

if.then:                                          ; preds = %entry
  %4 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6326
  %dev2 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 4, !dbg !6326
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !6326
  store i32 -22, i32* %ret, align 4, !dbg !6328
  br label %err, !dbg !6329

if.end:                                           ; preds = %entry
  %5 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6330
  %dev3 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %5, i32 0, i32 4, !dbg !6331
  %call = call i8* @devm_kzalloc(%struct.device* %dev3, i64 40, i32 3264) #9, !dbg !6332
  %6 = bitcast i8* %call to %struct.mt2060_priv*, !dbg !6332
  store %struct.mt2060_priv* %6, %struct.mt2060_priv** %dev1, align 8, !dbg !6333
  %7 = load %struct.mt2060_priv*, %struct.mt2060_priv** %dev1, align 8, !dbg !6334
  %tobool4 = icmp ne %struct.mt2060_priv* %7, null, !dbg !6334
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6336

if.then5:                                         ; preds = %if.end
  store i32 -12, i32* %ret, align 4, !dbg !6337
  br label %err, !dbg !6339

if.end6:                                          ; preds = %if.end
  %8 = load %struct.mt2060_platform_data*, %struct.mt2060_platform_data** %pdata, align 8, !dbg !6340
  %dvb_frontend = getelementptr inbounds %struct.mt2060_platform_data, %struct.mt2060_platform_data* %8, i32 0, i32 3, !dbg !6341
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %dvb_frontend, align 8, !dbg !6341
  store %struct.dvb_frontend* %9, %struct.dvb_frontend** %fe, align 8, !dbg !6342
  %10 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6343
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1, !dbg !6344
  %11 = load i16, i16* %addr, align 2, !dbg !6344
  %conv = trunc i16 %11 to i8, !dbg !6343
  %12 = load %struct.mt2060_priv*, %struct.mt2060_priv** %dev1, align 8, !dbg !6345
  %config = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %12, i32 0, i32 3, !dbg !6346
  %i2c_address = getelementptr inbounds %struct.mt2060_config, %struct.mt2060_config* %config, i32 0, i32 0, !dbg !6347
  store i8 %conv, i8* %i2c_address, align 8, !dbg !6348
  %13 = load %struct.mt2060_platform_data*, %struct.mt2060_platform_data** %pdata, align 8, !dbg !6349
  %clock_out = getelementptr inbounds %struct.mt2060_platform_data, %struct.mt2060_platform_data* %13, i32 0, i32 0, !dbg !6350
  %14 = load i8, i8* %clock_out, align 8, !dbg !6350
  %15 = load %struct.mt2060_priv*, %struct.mt2060_priv** %dev1, align 8, !dbg !6351
  %config7 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %15, i32 0, i32 3, !dbg !6352
  %clock_out8 = getelementptr inbounds %struct.mt2060_config, %struct.mt2060_config* %config7, i32 0, i32 1, !dbg !6353
  store i8 %14, i8* %clock_out8, align 1, !dbg !6354
  %16 = load %struct.mt2060_priv*, %struct.mt2060_priv** %dev1, align 8, !dbg !6355
  %config9 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %16, i32 0, i32 3, !dbg !6356
  %17 = load %struct.mt2060_priv*, %struct.mt2060_priv** %dev1, align 8, !dbg !6357
  %cfg = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %17, i32 0, i32 0, !dbg !6358
  store %struct.mt2060_config* %config9, %struct.mt2060_config** %cfg, align 8, !dbg !6359
  %18 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6360
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 3, !dbg !6361
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !6361
  %20 = load %struct.mt2060_priv*, %struct.mt2060_priv** %dev1, align 8, !dbg !6362
  %i2c = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %20, i32 0, i32 1, !dbg !6363
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %i2c, align 8, !dbg !6364
  %21 = load %struct.mt2060_platform_data*, %struct.mt2060_platform_data** %pdata, align 8, !dbg !6365
  %if1 = getelementptr inbounds %struct.mt2060_platform_data, %struct.mt2060_platform_data* %21, i32 0, i32 1, !dbg !6366
  %22 = load i16, i16* %if1, align 2, !dbg !6366
  %conv10 = zext i16 %22 to i32, !dbg !6365
  %tobool11 = icmp ne i32 %conv10, 0, !dbg !6365
  br i1 %tobool11, label %cond.true, label %cond.false, !dbg !6365

cond.true:                                        ; preds = %if.end6
  %23 = load %struct.mt2060_platform_data*, %struct.mt2060_platform_data** %pdata, align 8, !dbg !6367
  %if112 = getelementptr inbounds %struct.mt2060_platform_data, %struct.mt2060_platform_data* %23, i32 0, i32 1, !dbg !6368
  %24 = load i16, i16* %if112, align 2, !dbg !6368
  %conv13 = zext i16 %24 to i32, !dbg !6367
  br label %cond.end, !dbg !6365

cond.false:                                       ; preds = %if.end6
  br label %cond.end, !dbg !6365

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv13, %cond.true ], [ 1220, %cond.false ], !dbg !6365
  %conv14 = trunc i32 %cond to i16, !dbg !6365
  %25 = load %struct.mt2060_priv*, %struct.mt2060_priv** %dev1, align 8, !dbg !6369
  %if1_freq = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %25, i32 0, i32 6, !dbg !6370
  store i16 %conv14, i16* %if1_freq, align 8, !dbg !6371
  %26 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6372
  %27 = load %struct.mt2060_priv*, %struct.mt2060_priv** %dev1, align 8, !dbg !6373
  %client15 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %27, i32 0, i32 2, !dbg !6374
  store %struct.i2c_client* %26, %struct.i2c_client** %client15, align 8, !dbg !6375
  %28 = load %struct.mt2060_platform_data*, %struct.mt2060_platform_data** %pdata, align 8, !dbg !6376
  %i2c_write_max = getelementptr inbounds %struct.mt2060_platform_data, %struct.mt2060_platform_data* %28, i32 0, i32 2, !dbg !6377
  %bf.load = load i8, i8* %i2c_write_max, align 4, !dbg !6377
  %bf.clear = and i8 %bf.load, 31, !dbg !6377
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6377
  %tobool16 = icmp ne i32 %bf.cast, 0, !dbg !6376
  br i1 %tobool16, label %cond.true17, label %cond.false22, !dbg !6376

cond.true17:                                      ; preds = %cond.end
  %29 = load %struct.mt2060_platform_data*, %struct.mt2060_platform_data** %pdata, align 8, !dbg !6378
  %i2c_write_max18 = getelementptr inbounds %struct.mt2060_platform_data, %struct.mt2060_platform_data* %29, i32 0, i32 2, !dbg !6379
  %bf.load19 = load i8, i8* %i2c_write_max18, align 4, !dbg !6379
  %bf.clear20 = and i8 %bf.load19, 31, !dbg !6379
  %bf.cast21 = zext i8 %bf.clear20 to i32, !dbg !6379
  %sub = sub i32 %bf.cast21, 1, !dbg !6380
  br label %cond.end23, !dbg !6376

cond.false22:                                     ; preds = %cond.end
  br label %cond.end23, !dbg !6376

cond.end23:                                       ; preds = %cond.false22, %cond.true17
  %cond24 = phi i32 [ %sub, %cond.true17 ], [ -1, %cond.false22 ], !dbg !6376
  %conv25 = trunc i32 %cond24 to i8, !dbg !6376
  %30 = load %struct.mt2060_priv*, %struct.mt2060_priv** %dev1, align 8, !dbg !6381
  %i2c_max_regs = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %30, i32 0, i32 4, !dbg !6382
  store i8 %conv25, i8* %i2c_max_regs, align 2, !dbg !6383
  %31 = load %struct.mt2060_priv*, %struct.mt2060_priv** %dev1, align 8, !dbg !6384
  %sleep = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %31, i32 0, i32 8, !dbg !6385
  store i8 1, i8* %sleep, align 1, !dbg !6386
  %32 = load %struct.mt2060_priv*, %struct.mt2060_priv** %dev1, align 8, !dbg !6387
  %call26 = call i32 @mt2060_readreg(%struct.mt2060_priv* %32, i8 zeroext 0, i8* %chip_id) #9, !dbg !6388
  store i32 %call26, i32* %ret, align 4, !dbg !6389
  %33 = load i32, i32* %ret, align 4, !dbg !6390
  %tobool27 = icmp ne i32 %33, 0, !dbg !6390
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !6392

if.then28:                                        ; preds = %cond.end23
  store i32 -19, i32* %ret, align 4, !dbg !6393
  br label %err, !dbg !6395

if.end29:                                         ; preds = %cond.end23
  %34 = load i8, i8* %chip_id, align 1, !dbg !6396
  %conv30 = zext i8 %34 to i32, !dbg !6396
  %cmp = icmp ne i32 %conv30, 99, !dbg !6398
  br i1 %cmp, label %if.then32, label %if.end33, !dbg !6399

if.then32:                                        ; preds = %if.end29
  store i32 -19, i32* %ret, align 4, !dbg !6400
  br label %err, !dbg !6402

if.end33:                                         ; preds = %if.end29
  %35 = load %struct.mt2060_priv*, %struct.mt2060_priv** %dev1, align 8, !dbg !6403
  %call34 = call i32 @mt2060_writereg(%struct.mt2060_priv* %35, i8 zeroext 9, i8 zeroext 32) #9, !dbg !6404
  store i32 %call34, i32* %ret, align 4, !dbg !6405
  %36 = load i32, i32* %ret, align 4, !dbg !6406
  %tobool35 = icmp ne i32 %36, 0, !dbg !6406
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !6408

if.then36:                                        ; preds = %if.end33
  br label %err, !dbg !6409

if.end37:                                         ; preds = %if.end33
  %37 = load %struct.mt2060_priv*, %struct.mt2060_priv** %dev1, align 8, !dbg !6410
  call void @mt2060_calibrate(%struct.mt2060_priv* %37) #9, !dbg !6411
  %38 = load %struct.mt2060_priv*, %struct.mt2060_priv** %dev1, align 8, !dbg !6412
  %call38 = call i32 @mt2060_writereg(%struct.mt2060_priv* %38, i8 zeroext 9, i8 zeroext -24) #9, !dbg !6413
  store i32 %call38, i32* %ret, align 4, !dbg !6414
  %39 = load i32, i32* %ret, align 4, !dbg !6415
  %tobool39 = icmp ne i32 %39, 0, !dbg !6415
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !6417

if.then40:                                        ; preds = %if.end37
  br label %err, !dbg !6418

if.end41:                                         ; preds = %if.end37
  %40 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6419
  %dev42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 4, !dbg !6419
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !6419
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe, align 8, !dbg !6420
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %41, i32 0, i32 1, !dbg !6421
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !6422
  %42 = bitcast %struct.dvb_tuner_ops* %tuner_ops to i8*, !dbg !6423
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 getelementptr inbounds (%struct.dvb_tuner_ops, %struct.dvb_tuner_ops* @mt2060_tuner_ops, i32 0, i32 0, i32 0, i32 0), i64 288, i1 false), !dbg !6423
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe, align 8, !dbg !6424
  %ops43 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %43, i32 0, i32 1, !dbg !6425
  %tuner_ops44 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops43, i32 0, i32 30, !dbg !6426
  %release = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops44, i32 0, i32 1, !dbg !6427
  store void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)** %release, align 8, !dbg !6428
  %44 = load %struct.mt2060_priv*, %struct.mt2060_priv** %dev1, align 8, !dbg !6429
  %45 = bitcast %struct.mt2060_priv* %44 to i8*, !dbg !6429
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe, align 8, !dbg !6430
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %46, i32 0, i32 4, !dbg !6431
  store i8* %45, i8** %tuner_priv, align 8, !dbg !6432
  %47 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6433
  %48 = load %struct.mt2060_priv*, %struct.mt2060_priv** %dev1, align 8, !dbg !6434
  %49 = bitcast %struct.mt2060_priv* %48 to i8*, !dbg !6434
  call void @i2c_set_clientdata(%struct.i2c_client* %47, i8* %49) #9, !dbg !6435
  store i32 0, i32* %retval, align 4, !dbg !6436
  br label %return, !dbg !6436

err:                                              ; preds = %if.then40, %if.then36, %if.then32, %if.then28, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !6437), !dbg !6438
  %50 = load i32, i32* %ret, align 4, !dbg !6439
  store i32 %50, i32* %retval, align 4, !dbg !6440
  br label %return, !dbg !6440

return:                                           ; preds = %err, %if.end41
  %51 = load i32, i32* %retval, align 4, !dbg !6441
  ret i32 %51, !dbg !6441
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mt2060_remove(%struct.i2c_client* %client) #0 !dbg !6442 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !6443, metadata !DIExpression()), !dbg !6444
  ret i32 0, !dbg !6445
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #0 !dbg !6446 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6449, metadata !DIExpression()), !dbg !6450
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6451, metadata !DIExpression()), !dbg !6452
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !6453, metadata !DIExpression()), !dbg !6454
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6455
  %1 = load i64, i64* %size.addr, align 8, !dbg !6456
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !6457
  %or = or i32 %2, 256, !dbg !6458
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #9, !dbg !6459
  ret i8* %call, !dbg !6460
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_set_clientdata(%struct.i2c_client* %client, i8* %data) #0 !dbg !6461 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !6464, metadata !DIExpression()), !dbg !6465
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6466, metadata !DIExpression()), !dbg !6467
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6468
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !6469
  %1 = load i8*, i8** %data.addr, align 8, !dbg !6470
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !6471
  ret void, !dbg !6472
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !6473 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6476, metadata !DIExpression()), !dbg !6477
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6478, metadata !DIExpression()), !dbg !6479
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6480
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6481
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !6482
  store i8* %0, i8** %driver_data, align 8, !dbg !6483
  ret void, !dbg !6484
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4565, !4566, !4567, !4568}
!llvm.ident = !{!4569}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 22, type: !4562, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !309, globals: !317, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/tuners/mt2060.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !40, !50, !57, !73, !78, !82, !87, !102, !113, !126, !133, !138, !144, !165, !171, !175, !183, !190, !195, !201, !207, !216, !224, !230, !236, !243, !251, !257, !271, !283, !290, !295, !304}
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
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "i2c_alert_protocol", file: !291, line: 215, baseType: !7, size: 32, elements: !292)
!291 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!292 = !{!293, !294}
!293 = !DIEnumerator(name: "I2C_PROTOCOL_SMBUS_ALERT", value: 0, isUnsigned: true)
!294 = !DIEnumerator(name: "I2C_PROTOCOL_SMBUS_HOST_NOTIFY", value: 1, isUnsigned: true)
!295 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !296, line: 19, baseType: !7, size: 32, elements: !297)
!296 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!297 = !{!298, !299, !300, !301, !302, !303}
!298 = !DIEnumerator(name: "DEV_PROP_U8", value: 0, isUnsigned: true)
!299 = !DIEnumerator(name: "DEV_PROP_U16", value: 1, isUnsigned: true)
!300 = !DIEnumerator(name: "DEV_PROP_U32", value: 2, isUnsigned: true)
!301 = !DIEnumerator(name: "DEV_PROP_U64", value: 3, isUnsigned: true)
!302 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4, isUnsigned: true)
!303 = !DIEnumerator(name: "DEV_PROP_REF", value: 5, isUnsigned: true)
!304 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !305, line: 10, baseType: !7, size: 32, elements: !306)
!305 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!306 = !{!307, !308}
!307 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!308 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!309 = !{!310, !312, !313, !314}
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !311, line: 148, baseType: !7)
!311 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!313 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !316, line: 76, flags: DIFlagFwdDecl)
!316 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!317 = !{!318, !386, !391, !396, !398, !405, !410, !415, !420, !425, !0, !427, !4324, !4326, !4331, !4559}
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 22, type: !320, isLocal: true, isDefinition: true, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !322, line: 69, size: 320, elements: !323)
!322 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!323 = !{!324, !328, !329, !349, !356, !360, !364}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !321, file: !322, line: 70, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !321, file: !322, line: 71, baseType: !314, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !321, file: !322, line: 72, baseType: !330, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !322, line: 47, size: 256, elements: !333)
!333 = !{!334, !335, !340, !345}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !322, line: 49, baseType: !7, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !332, file: !322, line: 51, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!313, !325, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !332, file: !322, line: 53, baseType: !341, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!313, !344, !339}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !332, file: !322, line: 55, baseType: !346, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !312}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !321, file: !322, line: 73, baseType: !350, size: 16, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !352, line: 19, baseType: !353)
!352 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !354, line: 24, baseType: !355)
!354 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!355 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !321, file: !322, line: 74, baseType: !357, size: 8, offset: 208)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !352, line: 16, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !354, line: 20, baseType: !359)
!359 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !322, line: 75, baseType: !361, size: 8, offset: 216)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !352, line: 17, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !354, line: 21, baseType: !363)
!363 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!364 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !322, line: 76, baseType: !365, size: 64, offset: 256)
!365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !322, line: 76, size: 64, elements: !366)
!366 = !{!367, !368, !375}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !365, file: !322, line: 77, baseType: !312, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !365, file: !322, line: 78, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !322, line: 86, size: 128, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !371, file: !322, line: 87, baseType: !7, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !371, file: !322, line: 88, baseType: !344, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !365, file: !322, line: 79, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !322, line: 92, size: 256, elements: !379)
!379 = !{!380, !381, !382, !384, !385}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !378, file: !322, line: 94, baseType: !7, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !378, file: !322, line: 95, baseType: !7, size: 32, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !378, file: !322, line: 96, baseType: !383, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !378, file: !322, line: 97, baseType: !330, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !378, file: !322, line: 98, baseType: !312, size: 64, offset: 192)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 22, type: !388, isLocal: true, isDefinition: true, align: 8)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 208, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 26)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 23, type: !393, isLocal: true, isDefinition: true, align: 8)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 440, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 55)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mt2060_driver_init224", scope: !2, file: !3, line: 535, type: !312, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "__exitcall_mt2060_driver_exit", scope: !2, file: !3, line: 535, type: !400, isLocal: true, isDefinition: true)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !401, line: 117, baseType: !402)
!401 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{null}
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author225", scope: !2, file: !3, line: 537, type: !407, isLocal: true, isDefinition: true, align: 8)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 224, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 28)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description226", scope: !2, file: !3, line: 538, type: !412, isLocal: true, isDefinition: true, align: 8)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 456, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 57)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file227", scope: !2, file: !3, line: 539, type: !417, isLocal: true, isDefinition: true, align: 8)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 320, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 40)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license228", scope: !2, file: !3, line: 539, type: !422, isLocal: true, isDefinition: true, align: 8)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 152, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 19)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 21, type: !313, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(name: "mt2060_tuner_ops", scope: !2, file: !3, line: 386, type: !429, isLocal: true, isDefinition: true)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !431)
!431 = !{!432, !447, !4298, !4299, !4300, !4301, !4302, !4303, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4319, !4323}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !430, file: !51, line: 228, baseType: !433, size: 1216)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !434)
!434 = !{!435, !439, !442, !443, !444, !445, !446}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !433, file: !51, line: 89, baseType: !436, size: 1024)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 1024, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !433, file: !51, line: 91, baseType: !440, size: 32, offset: 1024)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !352, line: 21, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !354, line: 27, baseType: !7)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !433, file: !51, line: 92, baseType: !440, size: 32, offset: 1056)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !433, file: !51, line: 93, baseType: !440, size: 32, offset: 1088)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !433, file: !51, line: 95, baseType: !440, size: 32, offset: 1120)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !433, file: !51, line: 96, baseType: !440, size: 32, offset: 1152)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !433, file: !51, line: 97, baseType: !440, size: 32, offset: 1184)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !430, file: !51, line: 230, baseType: !448, size: 64, offset: 1216)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !451}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !453)
!453 = !{!454, !468, !716, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4296, !4297}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !452, file: !51, line: 687, baseType: !455, size: 32)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !456, line: 19, size: 32, elements: !457)
!456 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !455, file: !456, line: 20, baseType: !459, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !460, line: 113, baseType: !461)
!460 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !460, line: 111, size: 32, elements: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !461, file: !460, line: 112, baseType: !464, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !311, line: 168, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !311, line: 166, size: 32, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !465, file: !311, line: 167, baseType: !313, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !452, file: !51, line: 688, baseType: !469, size: 6016, offset: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !470)
!470 = !{!471, !483, !487, !488, !489, !490, !494, !495, !501, !508, !512, !513, !523, !608, !612, !617, !622, !623, !624, !625, !637, !648, !652, !656, !660, !665, !670, !674, !675, !676, !680, !681}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !469, file: !51, line: 436, baseType: !472, size: 1280)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481, !482}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !472, file: !51, line: 339, baseType: !436, size: 1024)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !472, file: !51, line: 340, baseType: !440, size: 32, offset: 1024)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !472, file: !51, line: 341, baseType: !440, size: 32, offset: 1056)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !472, file: !51, line: 342, baseType: !440, size: 32, offset: 1088)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !472, file: !51, line: 343, baseType: !440, size: 32, offset: 1120)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !472, file: !51, line: 344, baseType: !440, size: 32, offset: 1152)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !472, file: !51, line: 345, baseType: !440, size: 32, offset: 1184)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !472, file: !51, line: 346, baseType: !440, size: 32, offset: 1216)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !472, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !469, file: !51, line: 438, baseType: !484, size: 64, offset: 1280)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 64, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 8)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !469, file: !51, line: 440, baseType: !448, size: 64, offset: 1344)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !469, file: !51, line: 441, baseType: !448, size: 64, offset: 1408)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !469, file: !51, line: 442, baseType: !448, size: 64, offset: 1472)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !469, file: !51, line: 444, baseType: !491, size: 64, offset: 1536)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!313, !451}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !469, file: !51, line: 445, baseType: !491, size: 64, offset: 1600)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !469, file: !51, line: 447, baseType: !496, size: 64, offset: 1664)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!313, !451, !499, !313}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !469, file: !51, line: 450, baseType: !502, size: 64, offset: 1728)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!313, !451, !505, !7, !383, !507}
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !311, line: 30, baseType: !506)
!506 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !469, file: !51, line: 457, baseType: !509, size: 64, offset: 1792)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!50, !451}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !469, file: !51, line: 460, baseType: !491, size: 64, offset: 1856)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !469, file: !51, line: 461, baseType: !514, size: 64, offset: 1920)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!313, !451, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !519)
!519 = !{!520, !521, !522}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !518, file: !51, line: 70, baseType: !313, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !518, file: !51, line: 71, baseType: !313, size: 32, offset: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !518, file: !51, line: 72, baseType: !313, size: 32, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !469, file: !51, line: 463, baseType: !524, size: 64, offset: 1984)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!313, !451, !527}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !529)
!529 = !{!530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !601, !602, !603, !604, !605, !606, !607}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !528, file: !51, line: 587, baseType: !440, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !528, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !528, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !528, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !528, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !528, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !528, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !528, file: !51, line: 595, baseType: !440, size: 32, offset: 224)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !528, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !528, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !528, file: !51, line: 598, baseType: !440, size: 32, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !528, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !528, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !528, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !528, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !528, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !528, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !528, file: !51, line: 610, baseType: !361, size: 8, offset: 544)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !528, file: !51, line: 611, baseType: !361, size: 8, offset: 552)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !528, file: !51, line: 612, baseType: !361, size: 8, offset: 560)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !528, file: !51, line: 613, baseType: !440, size: 32, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !528, file: !51, line: 614, baseType: !440, size: 32, offset: 608)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !528, file: !51, line: 615, baseType: !361, size: 8, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !528, file: !51, line: 621, baseType: !554, size: 384, offset: 672)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 384, elements: !561)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !528, file: !51, line: 616, size: 128, elements: !556)
!556 = !{!557, !558, !559, !560}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !555, file: !51, line: 617, baseType: !361, size: 8)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !555, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !555, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !555, file: !51, line: 620, baseType: !361, size: 8, offset: 96)
!561 = !{!562}
!562 = !DISubrange(count: 3)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !528, file: !51, line: 624, baseType: !440, size: 32, offset: 1056)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !528, file: !51, line: 627, baseType: !440, size: 32, offset: 1088)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !528, file: !51, line: 630, baseType: !361, size: 8, offset: 1120)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !528, file: !51, line: 631, baseType: !361, size: 8, offset: 1128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !528, file: !51, line: 632, baseType: !361, size: 8, offset: 1136)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !528, file: !51, line: 633, baseType: !361, size: 8, offset: 1144)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !528, file: !51, line: 634, baseType: !361, size: 8, offset: 1152)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !528, file: !51, line: 635, baseType: !361, size: 8, offset: 1160)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !528, file: !51, line: 637, baseType: !361, size: 8, offset: 1168)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !528, file: !51, line: 638, baseType: !361, size: 8, offset: 1176)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !528, file: !51, line: 639, baseType: !361, size: 8, offset: 1184)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !528, file: !51, line: 640, baseType: !361, size: 8, offset: 1192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !528, file: !51, line: 641, baseType: !361, size: 8, offset: 1200)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !528, file: !51, line: 642, baseType: !361, size: 8, offset: 1208)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !528, file: !51, line: 643, baseType: !361, size: 8, offset: 1216)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !528, file: !51, line: 644, baseType: !361, size: 8, offset: 1224)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !528, file: !51, line: 645, baseType: !361, size: 8, offset: 1232)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !528, file: !51, line: 647, baseType: !440, size: 32, offset: 1248)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !528, file: !51, line: 650, baseType: !582, size: 296, offset: 1280)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !582, file: !6, line: 826, baseType: !362, size: 8)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !582, file: !6, line: 827, baseType: !586, size: 288, offset: 8)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 288, elements: !599)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !588)
!588 = !{!589, !590}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !587, file: !6, line: 804, baseType: !362, size: 8)
!590 = !DIDerivedType(tag: DW_TAG_member, scope: !587, file: !6, line: 805, baseType: !591, size: 64, offset: 8)
!591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !587, file: !6, line: 805, size: 64, elements: !592)
!592 = !{!593, !596}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !591, file: !6, line: 806, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !354, line: 31, baseType: !595)
!595 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !591, file: !6, line: 807, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !354, line: 30, baseType: !598)
!598 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!599 = !{!600}
!600 = !DISubrange(count: 4)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !528, file: !51, line: 651, baseType: !582, size: 296, offset: 1576)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !528, file: !51, line: 652, baseType: !582, size: 296, offset: 1872)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !528, file: !51, line: 653, baseType: !582, size: 296, offset: 2168)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !528, file: !51, line: 654, baseType: !582, size: 296, offset: 2464)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !528, file: !51, line: 655, baseType: !582, size: 296, offset: 2760)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !528, file: !51, line: 656, baseType: !582, size: 296, offset: 3056)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !528, file: !51, line: 657, baseType: !582, size: 296, offset: 3352)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !469, file: !51, line: 466, baseType: !609, size: 64, offset: 2048)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!313, !451, !507}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !469, file: !51, line: 467, baseType: !613, size: 64, offset: 2112)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!313, !451, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !469, file: !51, line: 468, baseType: !618, size: 64, offset: 2176)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!313, !451, !621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !469, file: !51, line: 469, baseType: !618, size: 64, offset: 2240)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !469, file: !51, line: 470, baseType: !613, size: 64, offset: 2304)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !469, file: !51, line: 472, baseType: !491, size: 64, offset: 2368)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !469, file: !51, line: 473, baseType: !626, size: 64, offset: 2432)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!313, !451, !629}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !631)
!631 = !{!632, !636}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !630, file: !6, line: 174, baseType: !633, size: 48)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 48, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 6)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !630, file: !6, line: 175, baseType: !362, size: 8, offset: 48)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !469, file: !51, line: 474, baseType: !638, size: 64, offset: 2496)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!313, !451, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !643)
!643 = !{!644, !646, !647}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !642, file: !6, line: 196, baseType: !645, size: 32)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 32, elements: !599)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !642, file: !6, line: 197, baseType: !362, size: 8, offset: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !642, file: !6, line: 198, baseType: !313, size: 32, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !469, file: !51, line: 475, baseType: !649, size: 64, offset: 2560)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!313, !451, !171}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !469, file: !51, line: 477, baseType: !653, size: 64, offset: 2624)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!313, !451, !78}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !469, file: !51, line: 478, baseType: !657, size: 64, offset: 2688)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!313, !451, !73}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !469, file: !51, line: 480, baseType: !661, size: 64, offset: 2752)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!313, !451, !664}
!664 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !469, file: !51, line: 481, baseType: !666, size: 64, offset: 2816)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!313, !451, !669}
!669 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !469, file: !51, line: 482, baseType: !671, size: 64, offset: 2880)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!313, !451, !313}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !469, file: !51, line: 483, baseType: !671, size: 64, offset: 2944)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !469, file: !51, line: 484, baseType: !491, size: 64, offset: 3008)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !469, file: !51, line: 490, baseType: !677, size: 64, offset: 3072)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!175, !451}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !469, file: !51, line: 492, baseType: !430, size: 2304, offset: 3136)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !469, file: !51, line: 493, baseType: !682, size: 576, offset: 5440)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !683)
!683 = !{!684, !688, !700, !701, !708, !709, !710, !711, !712}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !682, file: !51, line: 304, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !685, file: !51, line: 277, baseType: !344, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !682, file: !51, line: 306, baseType: !689, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !451, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !694)
!694 = !{!695, !696, !697, !698}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !693, file: !51, line: 115, baseType: !7, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !693, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !693, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !693, file: !51, line: 118, baseType: !699, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !352, line: 23, baseType: !594)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !682, file: !51, line: 308, baseType: !618, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !682, file: !51, line: 309, baseType: !702, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!313, !451, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !352, line: 20, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !354, line: 26, baseType: !313)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !682, file: !51, line: 310, baseType: !448, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !682, file: !51, line: 311, baseType: !448, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !682, file: !51, line: 312, baseType: !448, size: 64, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !682, file: !51, line: 313, baseType: !671, size: 64, offset: 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !682, file: !51, line: 316, baseType: !713, size: 64, offset: 512)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!313, !451, !312}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !452, file: !51, line: 689, baseType: !717, size: 64, offset: 6080)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !719)
!719 = !{!720, !721, !727, !728, !729, !731, !732, !4264, !4265, !4266, !4285}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !718, file: !272, line: 102, baseType: !313, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !718, file: !272, line: 103, baseType: !722, size: 128, offset: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !311, line: 178, size: 128, elements: !723)
!723 = !{!724, !726}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !722, file: !311, line: 179, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !722, file: !311, line: 179, baseType: !725, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !718, file: !272, line: 104, baseType: !722, size: 128, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !718, file: !272, line: 105, baseType: !325, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !718, file: !272, line: 106, baseType: !730, size: 48, offset: 384)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 48, elements: !634)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !718, file: !272, line: 107, baseType: !312, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !718, file: !272, line: 109, baseType: !733, size: 64, offset: 512)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !735)
!735 = !{!736, !3721, !3722, !3725, !3726, !3777, !3865, !3866, !3867, !3868, !3869, !3878, !3983, !3996, !4191, !4192, !4196, !4198, !4199, !4200, !4204, !4210, !4211, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4252, !4253, !4254, !4257, !4260, !4261, !4262, !4263}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !734, file: !237, line: 462, baseType: !737, size: 512)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !738, line: 64, size: 512, elements: !739)
!738 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!739 = !{!740, !741, !742, !744, !801, !3576, !3715, !3716, !3717, !3718, !3719, !3720}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !737, file: !738, line: 65, baseType: !325, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !737, file: !738, line: 66, baseType: !722, size: 128, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !737, file: !738, line: 67, baseType: !743, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !737, file: !738, line: 68, baseType: !745, size: 64, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !738, line: 192, size: 704, elements: !747)
!747 = !{!748, !749, !765, !766}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !746, file: !738, line: 193, baseType: !722, size: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !746, file: !738, line: 194, baseType: !750, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !751, line: 83, baseType: !752)
!751 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !751, line: 71, elements: !753)
!753 = !{!754}
!754 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !751, line: 72, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !752, file: !751, line: 72, elements: !756)
!756 = !{!757}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !755, file: !751, line: 73, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !751, line: 20, elements: !759)
!759 = !{!760}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !758, file: !751, line: 21, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !762, line: 25, baseType: !763)
!762 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !762, line: 25, elements: !764)
!764 = !{}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !746, file: !738, line: 195, baseType: !737, size: 512, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !746, file: !738, line: 196, baseType: !767, size: 64, offset: 640)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !738, line: 156, size: 192, elements: !770)
!770 = !{!771, !776, !781}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !769, file: !738, line: 157, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!313, !745, !743}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !769, file: !738, line: 158, baseType: !777, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!325, !745, !743}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !769, file: !738, line: 159, baseType: !782, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!313, !745, !743, !786}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !738, line: 148, size: 20736, elements: !788)
!788 = !{!789, !791, !795, !796, !800}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !787, file: !738, line: 149, baseType: !790, size: 192)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 192, elements: !561)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !787, file: !738, line: 150, baseType: !792, size: 4096, offset: 192)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 4096, elements: !793)
!793 = !{!794}
!794 = !DISubrange(count: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !787, file: !738, line: 151, baseType: !313, size: 32, offset: 4288)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !787, file: !738, line: 152, baseType: !797, size: 16384, offset: 4320)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 16384, elements: !798)
!798 = !{!799}
!799 = !DISubrange(count: 2048)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !787, file: !738, line: 153, baseType: !313, size: 32, offset: 20704)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !737, file: !738, line: 69, baseType: !802, size: 64, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !738, line: 138, size: 448, elements: !804)
!804 = !{!805, !809, !836, !838, !3538, !3566, !3570}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !803, file: !738, line: 139, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !743}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !803, file: !738, line: 140, baseType: !810, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !812)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !813, line: 230, size: 128, elements: !814)
!813 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!814 = !{!815, !829}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !812, file: !813, line: 231, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!819, !743, !823, !344}
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !311, line: 60, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !821, line: 73, baseType: !822)
!821 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !821, line: 15, baseType: !664)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !813, line: 30, size: 128, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !824, file: !813, line: 31, baseType: !325, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !824, file: !813, line: 32, baseType: !828, size: 16, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !311, line: 19, baseType: !355)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !812, file: !813, line: 232, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!819, !743, !823, !325, !833}
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !311, line: 55, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !821, line: 72, baseType: !835)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !821, line: 16, baseType: !669)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !803, file: !738, line: 141, baseType: !837, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !803, file: !738, line: 142, baseType: !839, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !813, line: 84, size: 320, elements: !843)
!843 = !{!844, !845, !849, !3535, !3536}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !842, file: !813, line: 85, baseType: !325, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !842, file: !813, line: 86, baseType: !846, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!828, !743, !823, !313}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !842, file: !813, line: 88, baseType: !850, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!828, !743, !853, !313}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !813, line: 168, size: 448, elements: !855)
!855 = !{!856, !857, !858, !859, !3530, !3531}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !854, file: !813, line: 169, baseType: !824, size: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !854, file: !813, line: 170, baseType: !833, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !854, file: !813, line: 171, baseType: !312, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !854, file: !813, line: 172, baseType: !860, size: 64, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!819, !863, !743, !853, !344, !1029, !833}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !865)
!865 = !{!866, !884, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3513, !3514, !3523, !3524, !3525, !3526, !3527, !3528, !3529}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !864, file: !208, line: 920, baseType: !867, size: 128)
!867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !208, line: 917, size: 128, elements: !868)
!868 = !{!869, !875}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !867, file: !208, line: 918, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !871, line: 58, size: 64, elements: !872)
!871 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!872 = !{!873}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !870, file: !871, line: 59, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !867, file: !208, line: 919, baseType: !876, size: 128, align: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !311, line: 216, size: 128, align: 64, elements: !877)
!877 = !{!878, !880}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !876, file: !311, line: 217, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !876, file: !311, line: 218, baseType: !881, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{null, !879}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !864, file: !208, line: 921, baseType: !885, size: 128, offset: 128)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !886, line: 8, size: 128, elements: !887)
!886 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!887 = !{!888, !892}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !885, file: !886, line: 9, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !891, line: 18, flags: DIFlagFwdDecl)
!891 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!892 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !885, file: !886, line: 10, baseType: !893, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !891, line: 89, size: 1536, elements: !895)
!895 = !{!896, !897, !907, !915, !916, !931, !3464, !3466, !3478, !3479, !3480, !3481, !3482, !3487, !3488, !3489}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !894, file: !891, line: 91, baseType: !7, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !894, file: !891, line: 92, baseType: !898, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !899, line: 277, baseType: !900)
!899 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !899, line: 277, size: 32, elements: !901)
!901 = !{!902}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !900, file: !899, line: 277, baseType: !903, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !899, line: 70, baseType: !904)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !899, line: 65, size: 32, elements: !905)
!905 = !{!906}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !904, file: !899, line: 66, baseType: !7, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !894, file: !891, line: 93, baseType: !908, size: 128, offset: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !909, line: 38, size: 128, elements: !910)
!909 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!910 = !{!911, !913}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !908, file: !909, line: 39, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !908, file: !909, line: 39, baseType: !914, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !894, file: !891, line: 94, baseType: !893, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !894, file: !891, line: 95, baseType: !917, size: 128, offset: 256)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !891, line: 47, size: 128, elements: !918)
!918 = !{!919, !928}
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !891, line: 48, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !891, line: 48, size: 64, elements: !921)
!921 = !{!922, !927}
!922 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !891, line: 49, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !920, file: !891, line: 49, size: 64, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !923, file: !891, line: 50, baseType: !440, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !923, file: !891, line: 50, baseType: !440, size: 32, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !920, file: !891, line: 52, baseType: !699, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !917, file: !891, line: 54, baseType: !929, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !894, file: !891, line: 96, baseType: !932, size: 64, offset: 384)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !934)
!934 = !{!935, !936, !937, !945, !952, !953, !1094, !3158, !3159, !3160, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3432, !3440, !3441, !3442, !3460, !3461, !3462, !3463}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !933, file: !208, line: 611, baseType: !828, size: 16)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !933, file: !208, line: 612, baseType: !355, size: 16, offset: 16)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !933, file: !208, line: 613, baseType: !938, size: 32, offset: 32)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !939, line: 23, baseType: !940)
!939 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !939, line: 21, size: 32, elements: !941)
!941 = !{!942}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !940, file: !939, line: 22, baseType: !943, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !311, line: 32, baseType: !944)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !821, line: 49, baseType: !7)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !933, file: !208, line: 614, baseType: !946, size: 32, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !939, line: 28, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !939, line: 26, size: 32, elements: !948)
!948 = !{!949}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !947, file: !939, line: 27, baseType: !950, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !311, line: 33, baseType: !951)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !821, line: 50, baseType: !7)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !933, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !933, file: !208, line: 622, baseType: !954, size: 64, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !957)
!957 = !{!958, !962, !972, !976, !982, !986, !990, !994, !998, !1002, !1006, !1007, !1013, !1017, !1041, !1070, !1074, !1080, !1085, !1089, !1090}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !956, file: !208, line: 1865, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!893, !932, !893, !7}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !956, file: !208, line: 1866, baseType: !963, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!325, !893, !932, !966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !968, line: 10, size: 128, elements: !969)
!968 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !967, file: !968, line: 11, baseType: !346, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !967, file: !968, line: 12, baseType: !312, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !956, file: !208, line: 1867, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!313, !932, !313}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !956, file: !208, line: 1868, baseType: !977, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!980, !932, !313}
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !956, file: !208, line: 1870, baseType: !983, size: 64, offset: 256)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!313, !893, !344, !313}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !956, file: !208, line: 1872, baseType: !987, size: 64, offset: 320)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!313, !932, !893, !828, !505}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !956, file: !208, line: 1873, baseType: !991, size: 64, offset: 384)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!313, !893, !932, !893}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !956, file: !208, line: 1874, baseType: !995, size: 64, offset: 448)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!313, !932, !893}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !956, file: !208, line: 1875, baseType: !999, size: 64, offset: 512)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!313, !932, !893, !325}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !956, file: !208, line: 1876, baseType: !1003, size: 64, offset: 576)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!313, !932, !893, !828}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !956, file: !208, line: 1877, baseType: !995, size: 64, offset: 640)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !956, file: !208, line: 1878, baseType: !1008, size: 64, offset: 704)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!313, !932, !893, !828, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !311, line: 16, baseType: !1012)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !311, line: 13, baseType: !440)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !956, file: !208, line: 1879, baseType: !1014, size: 64, offset: 768)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!313, !932, !893, !932, !893, !7}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !956, file: !208, line: 1881, baseType: !1018, size: 64, offset: 832)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!313, !893, !1021}
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !1023)
!1023 = !{!1024, !1025, !1026, !1027, !1028, !1031, !1038, !1039, !1040}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1022, file: !208, line: 220, baseType: !7, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1022, file: !208, line: 221, baseType: !828, size: 16, offset: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1022, file: !208, line: 222, baseType: !938, size: 32, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1022, file: !208, line: 223, baseType: !946, size: 32, offset: 96)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1022, file: !208, line: 224, baseType: !1029, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !311, line: 46, baseType: !1030)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !821, line: 88, baseType: !598)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1022, file: !208, line: 225, baseType: !1032, size: 128, offset: 192)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1033, line: 13, size: 128, elements: !1034)
!1033 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1034 = !{!1035, !1037}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1032, file: !1033, line: 14, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1033, line: 8, baseType: !597)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1032, file: !1033, line: 15, baseType: !664, size: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1022, file: !208, line: 226, baseType: !1032, size: 128, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1022, file: !208, line: 227, baseType: !1032, size: 128, offset: 448)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1022, file: !208, line: 234, baseType: !863, size: 64, offset: 576)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !956, file: !208, line: 1882, baseType: !1042, size: 64, offset: 896)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!313, !1045, !1047, !440, !7}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !885)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1049, line: 22, size: 1152, elements: !1050)
!1049 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!1050 = !{!1051, !1052, !1053, !1054, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1048, file: !1049, line: 23, baseType: !440, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1048, file: !1049, line: 24, baseType: !828, size: 16, offset: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1048, file: !1049, line: 25, baseType: !7, size: 32, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1048, file: !1049, line: 26, baseType: !1055, size: 32, offset: 96)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !311, line: 104, baseType: !440)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1048, file: !1049, line: 27, baseType: !699, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1048, file: !1049, line: 28, baseType: !699, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1048, file: !1049, line: 37, baseType: !699, size: 64, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1048, file: !1049, line: 38, baseType: !1011, size: 32, offset: 320)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1048, file: !1049, line: 39, baseType: !1011, size: 32, offset: 352)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1048, file: !1049, line: 40, baseType: !938, size: 32, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1048, file: !1049, line: 41, baseType: !946, size: 32, offset: 416)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1048, file: !1049, line: 42, baseType: !1029, size: 64, offset: 448)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1048, file: !1049, line: 43, baseType: !1032, size: 128, offset: 512)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1048, file: !1049, line: 44, baseType: !1032, size: 128, offset: 640)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1048, file: !1049, line: 45, baseType: !1032, size: 128, offset: 768)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1048, file: !1049, line: 46, baseType: !1032, size: 128, offset: 896)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1048, file: !1049, line: 47, baseType: !699, size: 64, offset: 1024)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1048, file: !1049, line: 48, baseType: !699, size: 64, offset: 1088)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !956, file: !208, line: 1883, baseType: !1071, size: 64, offset: 960)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!819, !893, !344, !833}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !956, file: !208, line: 1884, baseType: !1075, size: 64, offset: 1024)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!313, !932, !1078, !699, !699}
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !956, file: !208, line: 1886, baseType: !1081, size: 64, offset: 1088)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!313, !932, !1084, !313}
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !956, file: !208, line: 1887, baseType: !1086, size: 64, offset: 1152)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!313, !932, !893, !863, !7, !828}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !956, file: !208, line: 1890, baseType: !1003, size: 64, offset: 1216)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !956, file: !208, line: 1891, baseType: !1091, size: 64, offset: 1280)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!313, !932, !980, !313}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !933, file: !208, line: 623, baseType: !1095, size: 64, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103, !1150, !2766, !2848, !2931, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2947, !2951, !2952, !2955, !2956, !2959, !2960, !2961, !3002, !3028, !3029, !3030, !3031, !3032, !3033, !3036, !3038, !3045, !3046, !3048, !3049, !3050, !3109, !3110, !3125, !3126, !3127, !3128, !3129, !3132, !3133, !3134, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1096, file: !208, line: 1417, baseType: !722, size: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1096, file: !208, line: 1418, baseType: !1011, size: 32, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1096, file: !208, line: 1419, baseType: !363, size: 8, offset: 160)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1096, file: !208, line: 1420, baseType: !669, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1096, file: !208, line: 1421, baseType: !1029, size: 64, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1096, file: !208, line: 1422, baseType: !1104, size: 64, offset: 320)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1116, !1120, !1124, !1128, !1129, !1130, !1140, !1143, !1144, !1145, !1147, !1148, !1149}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1105, file: !208, line: 2229, baseType: !325, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1105, file: !208, line: 2230, baseType: !313, size: 32, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1105, file: !208, line: 2238, baseType: !1110, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!313, !1113}
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1115, line: 28, flags: DIFlagFwdDecl)
!1115 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1105, file: !208, line: 2239, baseType: !1117, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1119)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1105, file: !208, line: 2240, baseType: !1121, size: 64, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!893, !1104, !313, !325, !312}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1105, file: !208, line: 2242, baseType: !1125, size: 64, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !1095}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1105, file: !208, line: 2243, baseType: !314, size: 64, offset: 384)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1105, file: !208, line: 2244, baseType: !1104, size: 64, offset: 448)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1105, file: !208, line: 2245, baseType: !1131, size: 64, offset: 512)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !311, line: 182, size: 64, elements: !1132)
!1132 = !{!1133}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1131, file: !311, line: 183, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !311, line: 186, size: 128, elements: !1136)
!1136 = !{!1137, !1138}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1135, file: !311, line: 187, baseType: !1134, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1135, file: !311, line: 187, baseType: !1139, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1105, file: !208, line: 2247, baseType: !1141, offset: 576)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1142, line: 187, elements: !764)
!1142 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1105, file: !208, line: 2248, baseType: !1141, offset: 576)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1105, file: !208, line: 2249, baseType: !1141, offset: 576)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1105, file: !208, line: 2250, baseType: !1146, offset: 576)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1141, elements: !561)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1105, file: !208, line: 2252, baseType: !1141, offset: 576)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1105, file: !208, line: 2253, baseType: !1141, offset: 576)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1105, file: !208, line: 2254, baseType: !1141, offset: 576)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1096, file: !208, line: 1423, baseType: !1151, size: 64, offset: 384)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1153)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !1154)
!1154 = !{!1155, !1159, !1163, !1164, !1168, !1174, !1178, !1179, !1180, !1184, !1188, !1189, !1190, !1191, !1197, !1202, !1203, !1210, !1211, !1212, !1213, !2750, !2765}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1153, file: !208, line: 1936, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!932, !1095}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1153, file: !208, line: 1937, baseType: !1160, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !932}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1153, file: !208, line: 1938, baseType: !1160, size: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1153, file: !208, line: 1940, baseType: !1165, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !932, !313}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1153, file: !208, line: 1941, baseType: !1169, size: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!313, !932, !1172}
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1153, file: !208, line: 1942, baseType: !1175, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!313, !932}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1153, file: !208, line: 1943, baseType: !1160, size: 64, offset: 384)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1153, file: !208, line: 1944, baseType: !1125, size: 64, offset: 448)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1153, file: !208, line: 1945, baseType: !1181, size: 64, offset: 512)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!313, !1095, !313}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1153, file: !208, line: 1946, baseType: !1185, size: 64, offset: 576)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!313, !1095}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1153, file: !208, line: 1947, baseType: !1185, size: 64, offset: 640)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1153, file: !208, line: 1948, baseType: !1185, size: 64, offset: 704)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1153, file: !208, line: 1949, baseType: !1185, size: 64, offset: 768)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1153, file: !208, line: 1950, baseType: !1192, size: 64, offset: 832)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!313, !893, !1195}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1153, file: !208, line: 1951, baseType: !1198, size: 64, offset: 896)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!313, !1095, !1201, !344}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1153, file: !208, line: 1952, baseType: !1125, size: 64, offset: 960)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1153, file: !208, line: 1954, baseType: !1204, size: 64, offset: 1024)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!313, !1207, !893}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1209, line: 539, flags: DIFlagFwdDecl)
!1209 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1153, file: !208, line: 1955, baseType: !1204, size: 64, offset: 1088)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1153, file: !208, line: 1956, baseType: !1204, size: 64, offset: 1152)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1153, file: !208, line: 1957, baseType: !1204, size: 64, offset: 1216)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1153, file: !208, line: 1963, baseType: !1214, size: 64, offset: 1280)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!313, !1095, !1217, !310}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1219, line: 68, size: 512, align: 128, elements: !1220)
!1219 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1220 = !{!1221, !1222, !2742, !2749}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1218, file: !1219, line: 69, baseType: !669, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1219, line: 77, baseType: !1223, size: 320, offset: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !1219, line: 77, size: 320, elements: !1224)
!1224 = !{!1225, !1406, !1411, !1439, !1447, !1453, !2734, !2741}
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !1219, line: 78, baseType: !1226, size: 320)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !1219, line: 78, size: 320, elements: !1227)
!1227 = !{!1228, !1229, !1404, !1405}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1226, file: !1219, line: 84, baseType: !722, size: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1226, file: !1219, line: 86, baseType: !1230, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !1232)
!1232 = !{!1233, !1234, !1241, !1242, !1243, !1258, !1274, !1275, !1276, !1277, !1397, !1398, !1401, !1402, !1403}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1231, file: !208, line: 452, baseType: !932, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1231, file: !208, line: 453, baseType: !1235, size: 128, offset: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1236, line: 292, size: 128, elements: !1237)
!1236 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1237 = !{!1238, !1239, !1240}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1235, file: !1236, line: 293, baseType: !750)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1235, file: !1236, line: 295, baseType: !310, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1235, file: !1236, line: 296, baseType: !312, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1231, file: !208, line: 454, baseType: !310, size: 32, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1231, file: !208, line: 455, baseType: !464, size: 32, offset: 224)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1231, file: !208, line: 460, baseType: !1244, size: 128, offset: 256)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1245, line: 125, size: 128, elements: !1246)
!1245 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!1246 = !{!1247, !1257}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1244, file: !1245, line: 126, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1245, line: 31, size: 64, elements: !1249)
!1249 = !{!1250}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1248, file: !1245, line: 32, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1245, line: 24, size: 192, align: 64, elements: !1253)
!1253 = !{!1254, !1255, !1256}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1252, file: !1245, line: 25, baseType: !669, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1252, file: !1245, line: 26, baseType: !1251, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1252, file: !1245, line: 27, baseType: !1251, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1244, file: !1245, line: 127, baseType: !1251, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1231, file: !208, line: 461, baseType: !1259, size: 256, offset: 384)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1260, line: 35, size: 256, elements: !1261)
!1260 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1261 = !{!1262, !1270, !1271, !1273}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1259, file: !1260, line: 36, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1264, line: 13, baseType: !1265)
!1264 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !311, line: 175, baseType: !1266)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !311, line: 173, size: 64, elements: !1267)
!1267 = !{!1268}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1266, file: !311, line: 174, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !352, line: 22, baseType: !597)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1259, file: !1260, line: 42, baseType: !1263, size: 64, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1259, file: !1260, line: 46, baseType: !1272, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !751, line: 29, baseType: !758)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1259, file: !1260, line: 47, baseType: !722, size: 128, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1231, file: !208, line: 462, baseType: !669, size: 64, offset: 640)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1231, file: !208, line: 463, baseType: !669, size: 64, offset: 704)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1231, file: !208, line: 464, baseType: !669, size: 64, offset: 768)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1231, file: !208, line: 465, baseType: !1278, size: 64, offset: 832)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1280)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1281)
!1281 = !{!1282, !1286, !1290, !1294, !1298, !1302, !1308, !1314, !1318, !1323, !1327, !1331, !1335, !1361, !1365, !1371, !1372, !1373, !1377, !1382, !1386, !1393}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1280, file: !208, line: 368, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!313, !1217, !1172}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1280, file: !208, line: 369, baseType: !1287, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!313, !863, !1217}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1280, file: !208, line: 372, baseType: !1291, size: 64, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!313, !1230, !1172}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1280, file: !208, line: 375, baseType: !1295, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!313, !1217}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1280, file: !208, line: 381, baseType: !1299, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!313, !863, !1230, !725, !7}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1280, file: !208, line: 383, baseType: !1303, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{null, !1306}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1280, file: !208, line: 385, baseType: !1309, size: 64, offset: 384)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!313, !863, !1230, !1029, !7, !7, !1312, !1313}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1280, file: !208, line: 388, baseType: !1315, size: 64, offset: 448)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!313, !863, !1230, !1029, !7, !7, !1217, !312}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1280, file: !208, line: 393, baseType: !1319, size: 64, offset: 512)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!1322, !1230, !1322}
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !311, line: 125, baseType: !699)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1280, file: !208, line: 394, baseType: !1324, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{null, !1217, !7, !7}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1280, file: !208, line: 395, baseType: !1328, size: 64, offset: 640)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!313, !1217, !310}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1280, file: !208, line: 396, baseType: !1332, size: 64, offset: 704)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{null, !1217}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1280, file: !208, line: 397, baseType: !1336, size: 64, offset: 768)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!819, !1339, !1359}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1341)
!1341 = !{!1342, !1343, !1344, !1348, !1349, !1350, !1351, !1352}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1340, file: !208, line: 321, baseType: !863, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1340, file: !208, line: 326, baseType: !1029, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1340, file: !208, line: 327, baseType: !1345, size: 64, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{null, !1339, !664, !664}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1340, file: !208, line: 328, baseType: !312, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1340, file: !208, line: 329, baseType: !313, size: 32, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1340, file: !208, line: 330, baseType: !351, size: 16, offset: 288)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1340, file: !208, line: 331, baseType: !351, size: 16, offset: 304)
!1352 = !DIDerivedType(tag: DW_TAG_member, scope: !1340, file: !208, line: 332, baseType: !1353, size: 64, offset: 320)
!1353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1340, file: !208, line: 332, size: 64, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1353, file: !208, line: 333, baseType: !7, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1353, file: !208, line: 334, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1280, file: !208, line: 402, baseType: !1362, size: 64, offset: 832)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!313, !1230, !1217, !1217, !183}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1280, file: !208, line: 404, baseType: !1366, size: 64, offset: 896)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!505, !1217, !1369}
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1370, line: 305, baseType: !7)
!1370 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1280, file: !208, line: 405, baseType: !1332, size: 64, offset: 960)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1280, file: !208, line: 406, baseType: !1295, size: 64, offset: 1024)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1280, file: !208, line: 407, baseType: !1374, size: 64, offset: 1088)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!313, !1217, !669, !669}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1280, file: !208, line: 409, baseType: !1378, size: 64, offset: 1152)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !1217, !1381, !1381}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1280, file: !208, line: 410, baseType: !1383, size: 64, offset: 1216)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!313, !1230, !1217}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1280, file: !208, line: 413, baseType: !1387, size: 64, offset: 1280)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!313, !1390, !863, !1392}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1280, file: !208, line: 415, baseType: !1394, size: 64, offset: 1344)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !863}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1231, file: !208, line: 466, baseType: !669, size: 64, offset: 896)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1231, file: !208, line: 467, baseType: !1399, size: 32, offset: 960)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1400, line: 8, baseType: !440)
!1400 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1231, file: !208, line: 468, baseType: !750, offset: 992)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1231, file: !208, line: 469, baseType: !722, size: 128, offset: 1024)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1231, file: !208, line: 470, baseType: !312, size: 64, offset: 1152)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1226, file: !1219, line: 87, baseType: !669, size: 64, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1226, file: !1219, line: 94, baseType: !669, size: 64, offset: 256)
!1406 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !1219, line: 96, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !1219, line: 96, size: 64, elements: !1408)
!1408 = !{!1409}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1407, file: !1219, line: 101, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !311, line: 143, baseType: !699)
!1411 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !1219, line: 103, baseType: !1412, size: 320)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !1219, line: 103, size: 320, elements: !1413)
!1413 = !{!1414, !1424, !1427, !1428}
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !1219, line: 104, baseType: !1415, size: 128)
!1415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1412, file: !1219, line: 104, size: 128, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1415, file: !1219, line: 105, baseType: !722, size: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !1219, line: 106, baseType: !1419, size: 128)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1415, file: !1219, line: 106, size: 128, elements: !1420)
!1420 = !{!1421, !1422, !1423}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1419, file: !1219, line: 107, baseType: !1217, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1419, file: !1219, line: 109, baseType: !313, size: 32, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1419, file: !1219, line: 110, baseType: !313, size: 32, offset: 96)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1412, file: !1219, line: 117, baseType: !1425, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1219, line: 117, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1412, file: !1219, line: 119, baseType: !312, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !1219, line: 120, baseType: !1429, size: 64, offset: 256)
!1429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1412, file: !1219, line: 120, size: 64, elements: !1430)
!1430 = !{!1431, !1432, !1433}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1429, file: !1219, line: 121, baseType: !312, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1429, file: !1219, line: 122, baseType: !669, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1429, file: !1219, line: 123, baseType: !1434, size: 32)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1429, file: !1219, line: 123, size: 32, elements: !1435)
!1435 = !{!1436, !1437, !1438}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1434, file: !1219, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1434, file: !1219, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1434, file: !1219, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1439 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !1219, line: 130, baseType: !1440, size: 192)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !1219, line: 130, size: 192, elements: !1441)
!1441 = !{!1442, !1443, !1444, !1445, !1446}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1440, file: !1219, line: 131, baseType: !669, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1440, file: !1219, line: 134, baseType: !363, size: 8, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1440, file: !1219, line: 135, baseType: !363, size: 8, offset: 72)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1440, file: !1219, line: 136, baseType: !464, size: 32, offset: 96)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1440, file: !1219, line: 137, baseType: !7, size: 32, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !1219, line: 139, baseType: !1448, size: 256)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !1219, line: 139, size: 256, elements: !1449)
!1449 = !{!1450, !1451, !1452}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1448, file: !1219, line: 140, baseType: !669, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1448, file: !1219, line: 141, baseType: !464, size: 32, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1448, file: !1219, line: 143, baseType: !722, size: 128, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !1219, line: 145, baseType: !1454, size: 256)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !1219, line: 145, size: 256, elements: !1455)
!1455 = !{!1456, !1457, !1459, !1460, !2733}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1454, file: !1219, line: 146, baseType: !669, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1454, file: !1219, line: 147, baseType: !1458, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1209, line: 509, baseType: !1217)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1454, file: !1219, line: 148, baseType: !669, size: 64, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !1219, line: 149, baseType: !1461, size: 64, offset: 192)
!1461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !1219, line: 149, size: 64, elements: !1462)
!1462 = !{!1463, !2732}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1461, file: !1219, line: 150, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1219, line: 388, size: 7296, elements: !1466)
!1466 = !{!1467, !2728}
!1467 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !1219, line: 389, baseType: !1468, size: 7296)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1465, file: !1219, line: 389, size: 7296, elements: !1469)
!1469 = !{!1470, !1508, !1509, !1510, !1514, !1515, !1516, !1517, !1518, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1559, !1565, !1568, !1614, !1615, !2712, !2713, !2716, !2717, !2718, !2721, !2722, !2723, !2726, !2727}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1468, file: !1219, line: 390, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1219, line: 305, size: 1472, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1488, !1489, !1494, !1495, !1498, !1502, !1503, !1504, !1505, !1506}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1472, file: !1219, line: 308, baseType: !669, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1472, file: !1219, line: 309, baseType: !669, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1472, file: !1219, line: 313, baseType: !1471, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1472, file: !1219, line: 313, baseType: !1471, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1472, file: !1219, line: 315, baseType: !1252, size: 192, align: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1472, file: !1219, line: 323, baseType: !669, size: 64, offset: 448)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1472, file: !1219, line: 327, baseType: !1464, size: 64, offset: 512)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1472, file: !1219, line: 333, baseType: !1482, size: 64, offset: 576)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1209, line: 284, baseType: !1483)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1209, line: 284, size: 64, elements: !1484)
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1483, file: !1209, line: 284, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1487, line: 19, baseType: !669)
!1487 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1472, file: !1219, line: 334, baseType: !669, size: 64, offset: 640)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1472, file: !1219, line: 343, baseType: !1490, size: 256, offset: 704)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1472, file: !1219, line: 340, size: 256, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1490, file: !1219, line: 341, baseType: !1252, size: 192, align: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1490, file: !1219, line: 342, baseType: !669, size: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1472, file: !1219, line: 351, baseType: !722, size: 128, offset: 960)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1472, file: !1219, line: 353, baseType: !1496, size: 64, offset: 1088)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1219, line: 353, flags: DIFlagFwdDecl)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1472, file: !1219, line: 356, baseType: !1499, size: 64, offset: 1152)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1501)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1219, line: 356, flags: DIFlagFwdDecl)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1472, file: !1219, line: 359, baseType: !669, size: 64, offset: 1216)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1472, file: !1219, line: 361, baseType: !863, size: 64, offset: 1280)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1472, file: !1219, line: 362, baseType: !312, size: 64, offset: 1344)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1472, file: !1219, line: 365, baseType: !1263, size: 64, offset: 1408)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1472, file: !1219, line: 373, baseType: !1507, offset: 1472)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1219, line: 296, elements: !764)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1468, file: !1219, line: 391, baseType: !1248, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1468, file: !1219, line: 392, baseType: !699, size: 64, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1468, file: !1219, line: 394, baseType: !1511, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!669, !863, !669, !669, !669, !669}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1468, file: !1219, line: 398, baseType: !669, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1468, file: !1219, line: 399, baseType: !669, size: 64, offset: 320)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1468, file: !1219, line: 405, baseType: !669, size: 64, offset: 384)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1468, file: !1219, line: 406, baseType: !669, size: 64, offset: 448)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1468, file: !1219, line: 407, baseType: !1519, size: 64, offset: 512)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1209, line: 286, baseType: !1521)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1209, line: 286, size: 64, elements: !1522)
!1522 = !{!1523}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1521, file: !1209, line: 286, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1487, line: 18, baseType: !669)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1468, file: !1219, line: 416, baseType: !464, size: 32, offset: 576)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1468, file: !1219, line: 428, baseType: !464, size: 32, offset: 608)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1468, file: !1219, line: 437, baseType: !464, size: 32, offset: 640)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1468, file: !1219, line: 447, baseType: !464, size: 32, offset: 672)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1468, file: !1219, line: 450, baseType: !1263, size: 64, offset: 704)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1468, file: !1219, line: 452, baseType: !313, size: 32, offset: 768)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1468, file: !1219, line: 454, baseType: !750, offset: 800)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1468, file: !1219, line: 457, baseType: !1259, size: 256, offset: 832)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1468, file: !1219, line: 459, baseType: !722, size: 128, offset: 1088)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1468, file: !1219, line: 466, baseType: !669, size: 64, offset: 1216)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1468, file: !1219, line: 467, baseType: !669, size: 64, offset: 1280)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1468, file: !1219, line: 469, baseType: !669, size: 64, offset: 1344)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1468, file: !1219, line: 470, baseType: !669, size: 64, offset: 1408)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1468, file: !1219, line: 471, baseType: !1265, size: 64, offset: 1472)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1468, file: !1219, line: 472, baseType: !669, size: 64, offset: 1536)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1468, file: !1219, line: 473, baseType: !669, size: 64, offset: 1600)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1468, file: !1219, line: 474, baseType: !669, size: 64, offset: 1664)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1468, file: !1219, line: 475, baseType: !669, size: 64, offset: 1728)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1468, file: !1219, line: 477, baseType: !750, offset: 1792)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1468, file: !1219, line: 478, baseType: !669, size: 64, offset: 1792)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1468, file: !1219, line: 478, baseType: !669, size: 64, offset: 1856)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1468, file: !1219, line: 478, baseType: !669, size: 64, offset: 1920)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1468, file: !1219, line: 478, baseType: !669, size: 64, offset: 1984)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1468, file: !1219, line: 479, baseType: !669, size: 64, offset: 2048)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1468, file: !1219, line: 479, baseType: !669, size: 64, offset: 2112)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1468, file: !1219, line: 479, baseType: !669, size: 64, offset: 2176)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1468, file: !1219, line: 480, baseType: !669, size: 64, offset: 2240)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1468, file: !1219, line: 480, baseType: !669, size: 64, offset: 2304)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1468, file: !1219, line: 480, baseType: !669, size: 64, offset: 2368)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1468, file: !1219, line: 480, baseType: !669, size: 64, offset: 2432)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1468, file: !1219, line: 482, baseType: !1556, size: 2816, offset: 2496)
!1556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 2816, elements: !1557)
!1557 = !{!1558}
!1558 = !DISubrange(count: 44)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1468, file: !1219, line: 488, baseType: !1560, size: 256, offset: 5312)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1561, line: 60, size: 256, elements: !1562)
!1561 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1562 = !{!1563}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1560, file: !1561, line: 61, baseType: !1564, size: 256)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1263, size: 256, elements: !599)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1468, file: !1219, line: 490, baseType: !1566, size: 64, offset: 5568)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1219, line: 490, flags: DIFlagFwdDecl)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1468, file: !1219, line: 493, baseType: !1569, size: 896, offset: 5632)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1570, line: 53, baseType: !1571)
!1570 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1570, line: 13, size: 896, elements: !1572)
!1572 = !{!1573, !1574, !1575, !1576, !1579, !1580, !1587, !1588, !1608, !1609, !1610}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1571, file: !1570, line: 18, baseType: !699, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1571, file: !1570, line: 28, baseType: !1265, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1571, file: !1570, line: 31, baseType: !1259, size: 256, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1571, file: !1570, line: 32, baseType: !1577, size: 64, offset: 384)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1570, line: 32, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1571, file: !1570, line: 37, baseType: !355, size: 16, offset: 448)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1571, file: !1570, line: 40, baseType: !1581, size: 192, offset: 512)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1582, line: 53, size: 192, elements: !1583)
!1582 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1583 = !{!1584, !1585, !1586}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1581, file: !1582, line: 54, baseType: !1263, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1581, file: !1582, line: 55, baseType: !750, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1581, file: !1582, line: 59, baseType: !722, size: 128, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1571, file: !1570, line: 41, baseType: !312, size: 64, offset: 704)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1571, file: !1570, line: 42, baseType: !1589, size: 64, offset: 768)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1592, line: 13, size: 896, elements: !1593)
!1592 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1593 = !{!1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1591, file: !1592, line: 14, baseType: !312, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1591, file: !1592, line: 15, baseType: !669, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1591, file: !1592, line: 17, baseType: !669, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1591, file: !1592, line: 17, baseType: !669, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1591, file: !1592, line: 19, baseType: !664, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1591, file: !1592, line: 21, baseType: !664, size: 64, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1591, file: !1592, line: 22, baseType: !664, size: 64, offset: 384)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1591, file: !1592, line: 23, baseType: !664, size: 64, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1591, file: !1592, line: 24, baseType: !664, size: 64, offset: 512)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1591, file: !1592, line: 25, baseType: !664, size: 64, offset: 576)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1591, file: !1592, line: 26, baseType: !664, size: 64, offset: 640)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1591, file: !1592, line: 27, baseType: !664, size: 64, offset: 704)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1591, file: !1592, line: 28, baseType: !664, size: 64, offset: 768)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1591, file: !1592, line: 29, baseType: !664, size: 64, offset: 832)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1571, file: !1570, line: 44, baseType: !464, size: 32, offset: 832)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1571, file: !1570, line: 50, baseType: !351, size: 16, offset: 864)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1571, file: !1570, line: 51, baseType: !1611, size: 16, offset: 880)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !352, line: 18, baseType: !1612)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !354, line: 23, baseType: !1613)
!1613 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1468, file: !1219, line: 495, baseType: !669, size: 64, offset: 6528)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1468, file: !1219, line: 497, baseType: !1616, size: 64, offset: 6592)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1219, line: 381, size: 384, elements: !1618)
!1618 = !{!1619, !1620, !2711}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1617, file: !1219, line: 382, baseType: !464, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1617, file: !1219, line: 383, baseType: !1621, size: 128, offset: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1219, line: 376, size: 128, elements: !1622)
!1622 = !{!1623, !2709}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1621, file: !1219, line: 377, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1626, line: 640, size: 48640, elements: !1627)
!1626 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1627 = !{!1628, !1634, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1649, !1667, !1678, !1759, !1760, !1761, !1772, !1773, !1775, !1776, !1777, !1778, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1859, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1897, !1899, !1900, !1901, !1913, !1914, !1915, !1916, !1917, !1918, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1942, !1947, !2129, !2130, !2131, !2132, !2136, !2139, !2142, !2145, !2148, !2152, !2253, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2297, !2298, !2299, !2300, !2301, !2306, !2307, !2308, !2311, !2312, !2315, !2318, !2321, !2324, !2367, !2370, !2371, !2450, !2451, !2454, !2455, !2458, !2459, !2460, !2464, !2465, !2466, !2479, !2480, !2481, !2491, !2496, !2499, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1625, file: !1626, line: 646, baseType: !1629, size: 128)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1630, line: 56, size: 128, elements: !1631)
!1630 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1631 = !{!1632, !1633}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1629, file: !1630, line: 57, baseType: !669, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1629, file: !1630, line: 58, baseType: !440, size: 32, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1625, file: !1626, line: 649, baseType: !1635, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !664)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1625, file: !1626, line: 657, baseType: !312, size: 64, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1625, file: !1626, line: 658, baseType: !459, size: 32, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1625, file: !1626, line: 660, baseType: !7, size: 32, offset: 288)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1625, file: !1626, line: 661, baseType: !7, size: 32, offset: 320)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1625, file: !1626, line: 684, baseType: !313, size: 32, offset: 352)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1625, file: !1626, line: 686, baseType: !313, size: 32, offset: 384)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1625, file: !1626, line: 687, baseType: !313, size: 32, offset: 416)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1625, file: !1626, line: 688, baseType: !313, size: 32, offset: 448)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1625, file: !1626, line: 689, baseType: !7, size: 32, offset: 480)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1625, file: !1626, line: 691, baseType: !1646, size: 64, offset: 512)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1648)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1626, line: 691, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1625, file: !1626, line: 692, baseType: !1650, size: 832, offset: 576)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1626, line: 451, size: 832, elements: !1651)
!1651 = !{!1652, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1650, file: !1626, line: 453, baseType: !1653, size: 128)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1626, line: 325, size: 128, elements: !1654)
!1654 = !{!1655, !1656}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1653, file: !1626, line: 326, baseType: !669, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1653, file: !1626, line: 327, baseType: !440, size: 32, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1650, file: !1626, line: 454, baseType: !1252, size: 192, align: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1650, file: !1626, line: 455, baseType: !722, size: 128, offset: 320)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1650, file: !1626, line: 456, baseType: !7, size: 32, offset: 448)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1650, file: !1626, line: 458, baseType: !699, size: 64, offset: 512)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1650, file: !1626, line: 459, baseType: !699, size: 64, offset: 576)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1650, file: !1626, line: 460, baseType: !699, size: 64, offset: 640)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1650, file: !1626, line: 461, baseType: !699, size: 64, offset: 704)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1650, file: !1626, line: 463, baseType: !699, size: 64, offset: 768)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1650, file: !1626, line: 465, baseType: !1666, offset: 832)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1626, line: 415, elements: !764)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1625, file: !1626, line: 693, baseType: !1668, size: 384, offset: 1408)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1626, line: 489, size: 384, elements: !1669)
!1669 = !{!1670, !1671, !1672, !1673, !1674, !1675, !1676}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1668, file: !1626, line: 490, baseType: !722, size: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1668, file: !1626, line: 491, baseType: !669, size: 64, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1668, file: !1626, line: 492, baseType: !669, size: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1668, file: !1626, line: 493, baseType: !7, size: 32, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1668, file: !1626, line: 494, baseType: !355, size: 16, offset: 288)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1668, file: !1626, line: 495, baseType: !355, size: 16, offset: 304)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1668, file: !1626, line: 497, baseType: !1677, size: 64, offset: 320)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1625, file: !1626, line: 697, baseType: !1679, size: 1792, offset: 1792)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1626, line: 507, size: 1792, elements: !1680)
!1680 = !{!1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1756, !1757}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1679, file: !1626, line: 508, baseType: !1252, size: 192, align: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1679, file: !1626, line: 515, baseType: !699, size: 64, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1679, file: !1626, line: 516, baseType: !699, size: 64, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1679, file: !1626, line: 517, baseType: !699, size: 64, offset: 320)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1679, file: !1626, line: 518, baseType: !699, size: 64, offset: 384)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1679, file: !1626, line: 519, baseType: !699, size: 64, offset: 448)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1679, file: !1626, line: 526, baseType: !1269, size: 64, offset: 512)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1679, file: !1626, line: 527, baseType: !699, size: 64, offset: 576)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1679, file: !1626, line: 528, baseType: !7, size: 32, offset: 640)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1679, file: !1626, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1679, file: !1626, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1679, file: !1626, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1679, file: !1626, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1679, file: !1626, line: 563, baseType: !1695, size: 512, offset: 704)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !1696)
!1696 = !{!1697, !1705, !1706, !1711, !1752, !1753, !1754, !1755}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1695, file: !191, line: 119, baseType: !1698, size: 256)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1699, line: 9, size: 256, elements: !1700)
!1699 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1700 = !{!1701, !1702}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1698, file: !1699, line: 10, baseType: !1252, size: 192, align: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1698, file: !1699, line: 11, baseType: !1703, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1704, line: 29, baseType: !1269)
!1704 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1695, file: !191, line: 120, baseType: !1703, size: 64, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1695, file: !191, line: 121, baseType: !1707, size: 64, offset: 320)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!190, !1710}
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1695, file: !191, line: 122, baseType: !1712, size: 64, offset: 384)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !1714)
!1714 = !{!1715, !1733, !1734, !1737, !1742, !1743, !1747, !1751}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1713, file: !191, line: 160, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !1718)
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1717, file: !191, line: 215, baseType: !1272)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1717, file: !191, line: 216, baseType: !7, size: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1717, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1717, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1717, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1717, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1717, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1717, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1717, file: !191, line: 233, baseType: !1703, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1717, file: !191, line: 234, baseType: !1710, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1717, file: !191, line: 235, baseType: !1703, size: 64, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1717, file: !191, line: 236, baseType: !1710, size: 64, offset: 320)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1717, file: !191, line: 237, baseType: !1732, size: 4096, offset: 512)
!1732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1713, size: 4096, elements: !485)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1713, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1713, file: !191, line: 162, baseType: !1735, size: 32, offset: 96)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !311, line: 27, baseType: !1736)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !821, line: 96, baseType: !313)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1713, file: !191, line: 163, baseType: !1738, size: 32, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !899, line: 276, baseType: !1739)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !899, line: 276, size: 32, elements: !1740)
!1740 = !{!1741}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1739, file: !899, line: 276, baseType: !903, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1713, file: !191, line: 164, baseType: !1710, size: 64, offset: 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1713, file: !191, line: 165, baseType: !1744, size: 128, offset: 256)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1699, line: 14, size: 128, elements: !1745)
!1745 = !{!1746}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1744, file: !1699, line: 15, baseType: !1244, size: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1713, file: !191, line: 166, baseType: !1748, size: 64, offset: 384)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!1703}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1713, file: !191, line: 167, baseType: !1703, size: 64, offset: 448)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1695, file: !191, line: 123, baseType: !361, size: 8, offset: 448)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1695, file: !191, line: 124, baseType: !361, size: 8, offset: 456)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1695, file: !191, line: 125, baseType: !361, size: 8, offset: 464)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1695, file: !191, line: 126, baseType: !361, size: 8, offset: 472)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1679, file: !1626, line: 572, baseType: !1695, size: 512, offset: 1216)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1679, file: !1626, line: 580, baseType: !1758, size: 64, offset: 1728)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1625, file: !1626, line: 721, baseType: !7, size: 32, offset: 3584)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1625, file: !1626, line: 722, baseType: !313, size: 32, offset: 3616)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1625, file: !1626, line: 723, baseType: !1762, size: 64, offset: 3648)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1764)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1765, line: 17, baseType: !1766)
!1765 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1765, line: 17, size: 64, elements: !1767)
!1767 = !{!1768}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1766, file: !1765, line: 17, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 64, elements: !1770)
!1770 = !{!1771}
!1771 = !DISubrange(count: 1)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1625, file: !1626, line: 724, baseType: !1764, size: 64, offset: 3712)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1625, file: !1626, line: 749, baseType: !1774, offset: 3776)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1626, line: 290, elements: !764)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1625, file: !1626, line: 751, baseType: !722, size: 128, offset: 3776)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1625, file: !1626, line: 757, baseType: !1464, size: 64, offset: 3904)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1625, file: !1626, line: 758, baseType: !1464, size: 64, offset: 3968)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1625, file: !1626, line: 761, baseType: !1779, size: 320, offset: 4032)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1561, line: 34, size: 320, elements: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1779, file: !1561, line: 35, baseType: !699, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1779, file: !1561, line: 36, baseType: !1783, size: 256, offset: 64)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1471, size: 256, elements: !599)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1625, file: !1626, line: 766, baseType: !313, size: 32, offset: 4352)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1625, file: !1626, line: 767, baseType: !313, size: 32, offset: 4384)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1625, file: !1626, line: 768, baseType: !313, size: 32, offset: 4416)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1625, file: !1626, line: 770, baseType: !313, size: 32, offset: 4448)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1625, file: !1626, line: 772, baseType: !669, size: 64, offset: 4480)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1625, file: !1626, line: 775, baseType: !7, size: 32, offset: 4544)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1625, file: !1626, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1625, file: !1626, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1625, file: !1626, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1625, file: !1626, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1625, file: !1626, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1625, file: !1626, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1625, file: !1626, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1625, file: !1626, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1625, file: !1626, line: 831, baseType: !669, size: 64, offset: 4672)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1625, file: !1626, line: 833, baseType: !1800, size: 384, offset: 4736)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !1801)
!1801 = !{!1802, !1807}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1800, file: !196, line: 26, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!664, !1806}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, scope: !1800, file: !196, line: 27, baseType: !1808, size: 320, offset: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1800, file: !196, line: 27, size: 320, elements: !1809)
!1809 = !{!1810, !1819, !1844}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1808, file: !196, line: 36, baseType: !1811, size: 320)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1808, file: !196, line: 29, size: 320, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1816, !1817, !1818}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1811, file: !196, line: 30, baseType: !616, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1811, file: !196, line: 31, baseType: !440, size: 32, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1811, file: !196, line: 32, baseType: !440, size: 32, offset: 96)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1811, file: !196, line: 33, baseType: !440, size: 32, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1811, file: !196, line: 34, baseType: !699, size: 64, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1811, file: !196, line: 35, baseType: !616, size: 64, offset: 256)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1808, file: !196, line: 46, baseType: !1820, size: 192)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1808, file: !196, line: 38, size: 192, elements: !1821)
!1821 = !{!1822, !1823, !1824, !1843}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1820, file: !196, line: 39, baseType: !1735, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1820, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !196, line: 41, baseType: !1825, size: 64, offset: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1820, file: !196, line: 41, size: 64, elements: !1826)
!1826 = !{!1827, !1835}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1825, file: !196, line: 42, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1830, line: 7, size: 128, elements: !1831)
!1830 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1831 = !{!1832, !1834}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1829, file: !1830, line: 8, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !821, line: 93, baseType: !598)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1829, file: !1830, line: 9, baseType: !598, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1825, file: !196, line: 43, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1838, line: 7, size: 64, elements: !1839)
!1838 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !{!1840, !1842}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1837, file: !1838, line: 8, baseType: !1841, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1838, line: 5, baseType: !706)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1837, file: !1838, line: 9, baseType: !706, size: 32, offset: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1820, file: !196, line: 45, baseType: !699, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1808, file: !196, line: 54, baseType: !1845, size: 256)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1808, file: !196, line: 48, size: 256, elements: !1846)
!1846 = !{!1847, !1855, !1856, !1857, !1858}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1845, file: !196, line: 49, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1850, line: 36, size: 64, elements: !1851)
!1850 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1851 = !{!1852, !1853, !1854}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1849, file: !1850, line: 37, baseType: !313, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1849, file: !1850, line: 38, baseType: !1613, size: 16, offset: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1849, file: !1850, line: 39, baseType: !1613, size: 16, offset: 48)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1845, file: !196, line: 50, baseType: !313, size: 32, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1845, file: !196, line: 51, baseType: !313, size: 32, offset: 96)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1845, file: !196, line: 52, baseType: !669, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1845, file: !196, line: 53, baseType: !669, size: 64, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1625, file: !1626, line: 835, baseType: !1860, size: 32, offset: 5120)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !311, line: 22, baseType: !1861)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !821, line: 28, baseType: !313)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1625, file: !1626, line: 836, baseType: !1860, size: 32, offset: 5152)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1625, file: !1626, line: 840, baseType: !669, size: 64, offset: 5184)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1625, file: !1626, line: 849, baseType: !1624, size: 64, offset: 5248)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1625, file: !1626, line: 852, baseType: !1624, size: 64, offset: 5312)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1625, file: !1626, line: 857, baseType: !722, size: 128, offset: 5376)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1625, file: !1626, line: 858, baseType: !722, size: 128, offset: 5504)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1625, file: !1626, line: 859, baseType: !1624, size: 64, offset: 5632)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1625, file: !1626, line: 867, baseType: !722, size: 128, offset: 5696)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1625, file: !1626, line: 868, baseType: !722, size: 128, offset: 5824)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1625, file: !1626, line: 871, baseType: !1872, size: 64, offset: 5952)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !1874)
!1874 = !{!1875, !1876, !1877, !1878, !1880, !1881, !1888, !1889}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1873, file: !217, line: 61, baseType: !459, size: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1873, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1873, file: !217, line: 63, baseType: !750, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1873, file: !217, line: 65, baseType: !1879, size: 256, offset: 64)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1131, size: 256, elements: !599)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1873, file: !217, line: 66, baseType: !1131, size: 64, offset: 320)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1873, file: !217, line: 68, baseType: !1882, size: 128, offset: 384)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1883, line: 40, baseType: !1884)
!1883 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1883, line: 36, size: 128, elements: !1885)
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1884, file: !1883, line: 37, baseType: !750)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1884, file: !1883, line: 38, baseType: !722, size: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1873, file: !217, line: 69, baseType: !876, size: 128, align: 64, offset: 512)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1873, file: !217, line: 70, baseType: !1890, size: 128, offset: 640)
!1890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1891, size: 128, elements: !1770)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !1892)
!1892 = !{!1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1891, file: !217, line: 55, baseType: !313, size: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1891, file: !217, line: 56, baseType: !1895, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1625, file: !1626, line: 872, baseType: !1898, size: 512, offset: 6016)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1135, size: 512, elements: !599)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1625, file: !1626, line: 873, baseType: !722, size: 128, offset: 6528)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1625, file: !1626, line: 874, baseType: !722, size: 128, offset: 6656)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1625, file: !1626, line: 876, baseType: !1902, size: 64, offset: 6784)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1904, line: 26, size: 192, elements: !1905)
!1904 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1905 = !{!1906, !1907}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1903, file: !1904, line: 27, baseType: !7, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1903, file: !1904, line: 28, baseType: !1908, size: 128, offset: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1909, line: 43, size: 128, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1910 = !{!1911, !1912}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1908, file: !1909, line: 44, baseType: !1272)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1908, file: !1909, line: 45, baseType: !722, size: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1625, file: !1626, line: 879, baseType: !1201, size: 64, offset: 6848)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1625, file: !1626, line: 882, baseType: !1201, size: 64, offset: 6912)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1625, file: !1626, line: 884, baseType: !699, size: 64, offset: 6976)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1625, file: !1626, line: 885, baseType: !699, size: 64, offset: 7040)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1625, file: !1626, line: 890, baseType: !699, size: 64, offset: 7104)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1625, file: !1626, line: 891, baseType: !1919, size: 128, offset: 7168)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1626, line: 242, size: 128, elements: !1920)
!1920 = !{!1921, !1922, !1923}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1919, file: !1626, line: 244, baseType: !699, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1919, file: !1626, line: 245, baseType: !699, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1919, file: !1626, line: 246, baseType: !1272, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1625, file: !1626, line: 900, baseType: !669, size: 64, offset: 7296)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1625, file: !1626, line: 901, baseType: !669, size: 64, offset: 7360)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1625, file: !1626, line: 904, baseType: !699, size: 64, offset: 7424)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1625, file: !1626, line: 907, baseType: !699, size: 64, offset: 7488)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1625, file: !1626, line: 910, baseType: !669, size: 64, offset: 7552)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1625, file: !1626, line: 911, baseType: !669, size: 64, offset: 7616)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1625, file: !1626, line: 914, baseType: !1931, size: 640, offset: 7680)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1932, line: 123, size: 640, elements: !1933)
!1932 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1933 = !{!1934, !1940, !1941}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1931, file: !1932, line: 124, baseType: !1935, size: 576)
!1935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1936, size: 576, elements: !561)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1932, line: 108, size: 192, elements: !1937)
!1937 = !{!1938, !1939}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1936, file: !1932, line: 109, baseType: !699, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1936, file: !1932, line: 110, baseType: !1744, size: 128, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1931, file: !1932, line: 125, baseType: !7, size: 32, offset: 576)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1931, file: !1932, line: 126, baseType: !7, size: 32, offset: 608)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1625, file: !1626, line: 917, baseType: !1943, size: 192, offset: 8320)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1932, line: 134, size: 192, elements: !1944)
!1944 = !{!1945, !1946}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1943, file: !1932, line: 135, baseType: !876, size: 128, align: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1943, file: !1932, line: 136, baseType: !7, size: 32, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1625, file: !1626, line: 923, baseType: !1948, size: 64, offset: 8512)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1950)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1951, line: 111, size: 1280, elements: !1952)
!1951 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1972, !1973, !1974, !1975, !1976, !1977, !2082, !2083, !2084, !2085, !2111, !2114, !2124}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1950, file: !1951, line: 112, baseType: !464, size: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1950, file: !1951, line: 120, baseType: !938, size: 32, offset: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1950, file: !1951, line: 121, baseType: !946, size: 32, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1950, file: !1951, line: 122, baseType: !938, size: 32, offset: 96)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1950, file: !1951, line: 123, baseType: !946, size: 32, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1950, file: !1951, line: 124, baseType: !938, size: 32, offset: 160)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1950, file: !1951, line: 125, baseType: !946, size: 32, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1950, file: !1951, line: 126, baseType: !938, size: 32, offset: 224)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1950, file: !1951, line: 127, baseType: !946, size: 32, offset: 256)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1950, file: !1951, line: 128, baseType: !7, size: 32, offset: 288)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1950, file: !1951, line: 129, baseType: !1964, size: 64, offset: 320)
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1965, line: 26, baseType: !1966)
!1965 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1965, line: 24, size: 64, elements: !1967)
!1967 = !{!1968}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1966, file: !1965, line: 25, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 64, elements: !1970)
!1970 = !{!1971}
!1971 = !DISubrange(count: 2)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1950, file: !1951, line: 130, baseType: !1964, size: 64, offset: 384)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1950, file: !1951, line: 131, baseType: !1964, size: 64, offset: 448)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1950, file: !1951, line: 132, baseType: !1964, size: 64, offset: 512)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1950, file: !1951, line: 133, baseType: !1964, size: 64, offset: 576)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1950, file: !1951, line: 135, baseType: !363, size: 8, offset: 640)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1950, file: !1951, line: 137, baseType: !1978, size: 64, offset: 704)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1980, line: 189, size: 1664, elements: !1981)
!1980 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1981 = !{!1982, !1983, !1986, !1991, !1992, !1995, !1996, !2001, !2002, !2003, !2004, !2006, !2007, !2008, !2009, !2010, !2046, !2067}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1979, file: !1980, line: 190, baseType: !459, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1979, file: !1980, line: 191, baseType: !1984, size: 32, offset: 32)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1980, line: 28, baseType: !1985)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !311, line: 98, baseType: !706)
!1986 = !DIDerivedType(tag: DW_TAG_member, scope: !1979, file: !1980, line: 192, baseType: !1987, size: 192, offset: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1979, file: !1980, line: 192, size: 192, elements: !1988)
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1987, file: !1980, line: 193, baseType: !722, size: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1987, file: !1980, line: 194, baseType: !1252, size: 192, align: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1979, file: !1980, line: 199, baseType: !1259, size: 256, offset: 256)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1979, file: !1980, line: 200, baseType: !1993, size: 64, offset: 512)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1980, line: 200, flags: DIFlagFwdDecl)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1979, file: !1980, line: 201, baseType: !312, size: 64, offset: 576)
!1996 = !DIDerivedType(tag: DW_TAG_member, scope: !1979, file: !1980, line: 202, baseType: !1997, size: 64, offset: 640)
!1997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1979, file: !1980, line: 202, size: 64, elements: !1998)
!1998 = !{!1999, !2000}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1997, file: !1980, line: 203, baseType: !1036, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1997, file: !1980, line: 204, baseType: !1036, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1979, file: !1980, line: 206, baseType: !1036, size: 64, offset: 704)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1979, file: !1980, line: 207, baseType: !938, size: 32, offset: 768)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1979, file: !1980, line: 208, baseType: !946, size: 32, offset: 800)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1979, file: !1980, line: 209, baseType: !2005, size: 32, offset: 832)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1980, line: 31, baseType: !1055)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1979, file: !1980, line: 210, baseType: !355, size: 16, offset: 864)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1979, file: !1980, line: 211, baseType: !355, size: 16, offset: 880)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1979, file: !1980, line: 215, baseType: !1613, size: 16, offset: 896)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1979, file: !1980, line: 222, baseType: !669, size: 64, offset: 960)
!2010 = !DIDerivedType(tag: DW_TAG_member, scope: !1979, file: !1980, line: 239, baseType: !2011, size: 320, offset: 1024)
!2011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1979, file: !1980, line: 239, size: 320, elements: !2012)
!2012 = !{!2013, !2038}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2011, file: !1980, line: 240, baseType: !2014, size: 320)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1980, line: 108, size: 320, elements: !2015)
!2015 = !{!2016, !2017, !2027, !2030, !2037}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2014, file: !1980, line: 110, baseType: !669, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, scope: !2014, file: !1980, line: 111, baseType: !2018, size: 64, offset: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2014, file: !1980, line: 111, size: 64, elements: !2019)
!2019 = !{!2020, !2026}
!2020 = !DIDerivedType(tag: DW_TAG_member, scope: !2018, file: !1980, line: 112, baseType: !2021, size: 64)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2018, file: !1980, line: 112, size: 64, elements: !2022)
!2022 = !{!2023, !2024}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2021, file: !1980, line: 114, baseType: !351, size: 16)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2021, file: !1980, line: 115, baseType: !2025, size: 48, offset: 16)
!2025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 48, elements: !634)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2018, file: !1980, line: 121, baseType: !669, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2014, file: !1980, line: 123, baseType: !2028, size: 64, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1980, line: 96, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2014, file: !1980, line: 124, baseType: !2031, size: 64, offset: 192)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1980, line: 102, size: 192, elements: !2033)
!2033 = !{!2034, !2035, !2036}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2032, file: !1980, line: 103, baseType: !876, size: 128, align: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2032, file: !1980, line: 104, baseType: !459, size: 32, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2032, file: !1980, line: 105, baseType: !505, size: 8, offset: 160)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2014, file: !1980, line: 125, baseType: !325, size: 64, offset: 256)
!2038 = !DIDerivedType(tag: DW_TAG_member, scope: !2011, file: !1980, line: 241, baseType: !2039, size: 320)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !1980, line: 241, size: 320, elements: !2040)
!2040 = !{!2041, !2042, !2043, !2044, !2045}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2039, file: !1980, line: 242, baseType: !669, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2039, file: !1980, line: 243, baseType: !669, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2039, file: !1980, line: 244, baseType: !2028, size: 64, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2039, file: !1980, line: 245, baseType: !2031, size: 64, offset: 192)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2039, file: !1980, line: 246, baseType: !344, size: 64, offset: 256)
!2046 = !DIDerivedType(tag: DW_TAG_member, scope: !1979, file: !1980, line: 254, baseType: !2047, size: 256, offset: 1344)
!2047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1979, file: !1980, line: 254, size: 256, elements: !2048)
!2048 = !{!2049, !2055}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2047, file: !1980, line: 255, baseType: !2050, size: 256)
!2050 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1980, line: 128, size: 256, elements: !2051)
!2051 = !{!2052, !2053}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2050, file: !1980, line: 129, baseType: !312, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2050, file: !1980, line: 130, baseType: !2054, size: 256)
!2054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 256, elements: !599)
!2055 = !DIDerivedType(tag: DW_TAG_member, scope: !2047, file: !1980, line: 256, baseType: !2056, size: 256)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2047, file: !1980, line: 256, size: 256, elements: !2057)
!2057 = !{!2058, !2059}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2056, file: !1980, line: 258, baseType: !722, size: 128)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2056, file: !1980, line: 259, baseType: !2060, size: 128, offset: 128)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2061, line: 22, size: 128, elements: !2062)
!2061 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2062 = !{!2063, !2066}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2060, file: !2061, line: 23, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2061, line: 23, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2060, file: !2061, line: 24, baseType: !669, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1979, file: !1980, line: 274, baseType: !2068, size: 64, offset: 1600)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1980, line: 170, size: 192, elements: !2070)
!2070 = !{!2071, !2080, !2081}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2069, file: !1980, line: 171, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1980, line: 165, baseType: !2073)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!313, !1978, !2076, !2078, !1978}
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2029)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2050)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2069, file: !1980, line: 172, baseType: !1978, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2069, file: !1980, line: 173, baseType: !2028, size: 64, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1950, file: !1951, line: 138, baseType: !1978, size: 64, offset: 768)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1950, file: !1951, line: 139, baseType: !1978, size: 64, offset: 832)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1950, file: !1951, line: 140, baseType: !1978, size: 64, offset: 896)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1950, file: !1951, line: 145, baseType: !2086, size: 64, offset: 960)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2088, line: 13, size: 896, elements: !2089)
!2088 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2089 = !{!2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2087, file: !2088, line: 14, baseType: !459, size: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2087, file: !2088, line: 15, baseType: !464, size: 32, offset: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2087, file: !2088, line: 16, baseType: !464, size: 32, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2087, file: !2088, line: 21, baseType: !1263, size: 64, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2087, file: !2088, line: 27, baseType: !669, size: 64, offset: 192)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2087, file: !2088, line: 28, baseType: !669, size: 64, offset: 256)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2087, file: !2088, line: 29, baseType: !1263, size: 64, offset: 320)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2087, file: !2088, line: 32, baseType: !1135, size: 128, offset: 384)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2087, file: !2088, line: 33, baseType: !938, size: 32, offset: 512)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2087, file: !2088, line: 37, baseType: !1263, size: 64, offset: 576)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2087, file: !2088, line: 44, baseType: !2101, size: 256, offset: 640)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2102, line: 15, size: 256, elements: !2103)
!2102 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2103 = !{!2104, !2105, !2106, !2107, !2108, !2109, !2110}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2101, file: !2102, line: 16, baseType: !1272)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2101, file: !2102, line: 18, baseType: !313, size: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2101, file: !2102, line: 19, baseType: !313, size: 32, offset: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2101, file: !2102, line: 20, baseType: !313, size: 32, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2101, file: !2102, line: 21, baseType: !313, size: 32, offset: 96)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2101, file: !2102, line: 22, baseType: !669, size: 64, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2101, file: !2102, line: 23, baseType: !669, size: 64, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1950, file: !1951, line: 146, baseType: !2112, size: 64, offset: 1024)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !939, line: 18, flags: DIFlagFwdDecl)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1950, file: !1951, line: 147, baseType: !2115, size: 64, offset: 1088)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1951, line: 25, size: 64, elements: !2117)
!2117 = !{!2118, !2119, !2120}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2116, file: !1951, line: 26, baseType: !464, size: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2116, file: !1951, line: 27, baseType: !313, size: 32, offset: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2116, file: !1951, line: 28, baseType: !2121, offset: 64)
!2121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !946, elements: !2122)
!2122 = !{!2123}
!2123 = !DISubrange(count: 0)
!2124 = !DIDerivedType(tag: DW_TAG_member, scope: !1950, file: !1951, line: 149, baseType: !2125, size: 128, offset: 1152)
!2125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1950, file: !1951, line: 149, size: 128, elements: !2126)
!2126 = !{!2127, !2128}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2125, file: !1951, line: 150, baseType: !313, size: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2125, file: !1951, line: 151, baseType: !876, size: 128, align: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1625, file: !1626, line: 926, baseType: !1948, size: 64, offset: 8576)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1625, file: !1626, line: 929, baseType: !1948, size: 64, offset: 8640)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1625, file: !1626, line: 933, baseType: !1978, size: 64, offset: 8704)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1625, file: !1626, line: 943, baseType: !2133, size: 128, offset: 8768)
!2133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 128, elements: !2134)
!2134 = !{!2135}
!2135 = !DISubrange(count: 16)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1625, file: !1626, line: 945, baseType: !2137, size: 64, offset: 8896)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1626, line: 49, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1625, file: !1626, line: 956, baseType: !2140, size: 64, offset: 8960)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1626, line: 45, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1625, file: !1626, line: 959, baseType: !2143, size: 64, offset: 9024)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1626, line: 959, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1625, file: !1626, line: 962, baseType: !2146, size: 64, offset: 9088)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1626, line: 66, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1625, file: !1626, line: 966, baseType: !2149, size: 64, offset: 9152)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2151, line: 35, flags: DIFlagFwdDecl)
!2151 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1625, file: !1626, line: 969, baseType: !2153, size: 64, offset: 9216)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2155, line: 82, size: 7296, elements: !2156)
!2155 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2156 = !{!2157, !2158, !2159, !2160, !2161, !2162, !2163, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2192, !2201, !2202, !2204, !2205, !2206, !2209, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2239, !2240, !2247, !2248, !2249, !2250, !2251, !2252}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2154, file: !2155, line: 83, baseType: !459, size: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2154, file: !2155, line: 84, baseType: !464, size: 32, offset: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2154, file: !2155, line: 85, baseType: !313, size: 32, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2154, file: !2155, line: 86, baseType: !722, size: 128, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2154, file: !2155, line: 88, baseType: !1882, size: 128, offset: 256)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2154, file: !2155, line: 91, baseType: !1624, size: 64, offset: 384)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2154, file: !2155, line: 94, baseType: !2164, size: 192, offset: 448)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2165, line: 30, size: 192, elements: !2166)
!2165 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2166 = !{!2167, !2168}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2164, file: !2165, line: 31, baseType: !722, size: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2164, file: !2165, line: 32, baseType: !2169, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2170, line: 25, baseType: !2171)
!2170 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2170, line: 23, size: 64, elements: !2172)
!2172 = !{!2173}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2171, file: !2170, line: 24, baseType: !1769, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2154, file: !2155, line: 97, baseType: !1131, size: 64, offset: 640)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2154, file: !2155, line: 100, baseType: !313, size: 32, offset: 704)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2154, file: !2155, line: 106, baseType: !313, size: 32, offset: 736)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2154, file: !2155, line: 107, baseType: !1624, size: 64, offset: 768)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2154, file: !2155, line: 110, baseType: !313, size: 32, offset: 832)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2154, file: !2155, line: 111, baseType: !7, size: 32, offset: 864)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2154, file: !2155, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2154, file: !2155, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2154, file: !2155, line: 128, baseType: !313, size: 32, offset: 928)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2154, file: !2155, line: 129, baseType: !722, size: 128, offset: 960)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2154, file: !2155, line: 132, baseType: !1695, size: 512, offset: 1088)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2154, file: !2155, line: 133, baseType: !1703, size: 64, offset: 1600)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2154, file: !2155, line: 140, baseType: !2187, size: 256, offset: 1664)
!2187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2188, size: 256, elements: !1970)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2155, line: 38, size: 128, elements: !2189)
!2189 = !{!2190, !2191}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2188, file: !2155, line: 39, baseType: !699, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2188, file: !2155, line: 40, baseType: !699, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2154, file: !2155, line: 146, baseType: !2193, size: 192, offset: 1920)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2155, line: 66, size: 192, elements: !2194)
!2194 = !{!2195}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2193, file: !2155, line: 67, baseType: !2196, size: 192)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2155, line: 47, size: 192, elements: !2197)
!2197 = !{!2198, !2199, !2200}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2196, file: !2155, line: 48, baseType: !1265, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2196, file: !2155, line: 49, baseType: !1265, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2196, file: !2155, line: 50, baseType: !1265, size: 64, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2154, file: !2155, line: 150, baseType: !1931, size: 640, offset: 2112)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2154, file: !2155, line: 153, baseType: !2203, size: 256, offset: 2752)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1872, size: 256, elements: !599)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2154, file: !2155, line: 159, baseType: !1872, size: 64, offset: 3008)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2154, file: !2155, line: 162, baseType: !313, size: 32, offset: 3072)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2154, file: !2155, line: 164, baseType: !2207, size: 64, offset: 3136)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2155, line: 164, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2154, file: !2155, line: 175, baseType: !2210, size: 32, offset: 3200)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !899, line: 805, baseType: !2211)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !899, line: 798, size: 32, elements: !2212)
!2212 = !{!2213, !2214}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2211, file: !899, line: 803, baseType: !898, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2211, file: !899, line: 804, baseType: !750, offset: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2154, file: !2155, line: 176, baseType: !699, size: 64, offset: 3264)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2154, file: !2155, line: 176, baseType: !699, size: 64, offset: 3328)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2154, file: !2155, line: 176, baseType: !699, size: 64, offset: 3392)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2154, file: !2155, line: 176, baseType: !699, size: 64, offset: 3456)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2154, file: !2155, line: 177, baseType: !699, size: 64, offset: 3520)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2154, file: !2155, line: 178, baseType: !699, size: 64, offset: 3584)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2154, file: !2155, line: 179, baseType: !1919, size: 128, offset: 3648)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2154, file: !2155, line: 180, baseType: !669, size: 64, offset: 3776)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2154, file: !2155, line: 180, baseType: !669, size: 64, offset: 3840)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2154, file: !2155, line: 180, baseType: !669, size: 64, offset: 3904)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2154, file: !2155, line: 180, baseType: !669, size: 64, offset: 3968)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2154, file: !2155, line: 181, baseType: !669, size: 64, offset: 4032)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2154, file: !2155, line: 181, baseType: !669, size: 64, offset: 4096)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2154, file: !2155, line: 181, baseType: !669, size: 64, offset: 4160)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2154, file: !2155, line: 181, baseType: !669, size: 64, offset: 4224)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2154, file: !2155, line: 182, baseType: !669, size: 64, offset: 4288)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2154, file: !2155, line: 182, baseType: !669, size: 64, offset: 4352)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2154, file: !2155, line: 182, baseType: !669, size: 64, offset: 4416)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2154, file: !2155, line: 182, baseType: !669, size: 64, offset: 4480)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2154, file: !2155, line: 183, baseType: !669, size: 64, offset: 4544)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2154, file: !2155, line: 183, baseType: !669, size: 64, offset: 4608)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2154, file: !2155, line: 184, baseType: !2237, offset: 4672)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2238, line: 12, elements: !764)
!2238 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2154, file: !2155, line: 192, baseType: !595, size: 64, offset: 4672)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2154, file: !2155, line: 203, baseType: !2241, size: 2048, offset: 4736)
!2241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2242, size: 2048, elements: !2134)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2243, line: 43, size: 128, elements: !2244)
!2243 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2244 = !{!2245, !2246}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2242, file: !2243, line: 44, baseType: !835, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2242, file: !2243, line: 45, baseType: !835, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2154, file: !2155, line: 220, baseType: !505, size: 8, offset: 6784)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2154, file: !2155, line: 221, baseType: !1613, size: 16, offset: 6800)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2154, file: !2155, line: 222, baseType: !1613, size: 16, offset: 6816)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2154, file: !2155, line: 224, baseType: !1464, size: 64, offset: 6848)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2154, file: !2155, line: 227, baseType: !1581, size: 192, offset: 6912)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2154, file: !2155, line: 233, baseType: !1581, size: 192, offset: 7104)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1625, file: !1626, line: 970, baseType: !2254, size: 64, offset: 9280)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2155, line: 20, size: 16576, elements: !2256)
!2256 = !{!2257, !2258, !2259, !2260}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2255, file: !2155, line: 21, baseType: !750)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2255, file: !2155, line: 22, baseType: !459, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2255, file: !2155, line: 23, baseType: !1882, size: 128, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2255, file: !2155, line: 24, baseType: !2261, size: 16384, offset: 192)
!2261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2262, size: 16384, elements: !793)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2165, line: 49, size: 256, elements: !2263)
!2263 = !{!2264}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2262, file: !2165, line: 50, baseType: !2265, size: 256)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2165, line: 35, size: 256, elements: !2266)
!2266 = !{!2267, !2274, !2275, !2279}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2265, file: !2165, line: 37, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2269, line: 19, baseType: !2270)
!2269 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2269, line: 18, baseType: !2272)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{null, !313}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2265, file: !2165, line: 38, baseType: !669, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2265, file: !2165, line: 44, baseType: !2276, size: 64, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2269, line: 22, baseType: !2277)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2269, line: 21, baseType: !403)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2265, file: !2165, line: 46, baseType: !2169, size: 64, offset: 192)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1625, file: !1626, line: 971, baseType: !2169, size: 64, offset: 9344)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1625, file: !1626, line: 972, baseType: !2169, size: 64, offset: 9408)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1625, file: !1626, line: 974, baseType: !2169, size: 64, offset: 9472)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1625, file: !1626, line: 975, baseType: !2164, size: 192, offset: 9536)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1625, file: !1626, line: 976, baseType: !669, size: 64, offset: 9728)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1625, file: !1626, line: 977, baseType: !833, size: 64, offset: 9792)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1625, file: !1626, line: 978, baseType: !7, size: 32, offset: 9856)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1625, file: !1626, line: 980, baseType: !879, size: 64, offset: 9920)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1625, file: !1626, line: 989, baseType: !2289, size: 128, offset: 9984)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2290, line: 35, size: 128, elements: !2291)
!2290 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2291 = !{!2292, !2293, !2294}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2289, file: !2290, line: 36, baseType: !313, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2289, file: !2290, line: 37, baseType: !464, size: 32, offset: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2289, file: !2290, line: 38, baseType: !2295, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2290, line: 23, flags: DIFlagFwdDecl)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1625, file: !1626, line: 992, baseType: !699, size: 64, offset: 10112)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1625, file: !1626, line: 993, baseType: !699, size: 64, offset: 10176)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1625, file: !1626, line: 996, baseType: !750, offset: 10240)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1625, file: !1626, line: 999, baseType: !1272, offset: 10240)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1625, file: !1626, line: 1001, baseType: !2302, size: 64, offset: 10240)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1626, line: 636, size: 64, elements: !2303)
!2303 = !{!2304}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2302, file: !1626, line: 637, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1625, file: !1626, line: 1005, baseType: !1244, size: 128, offset: 10304)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1625, file: !1626, line: 1007, baseType: !1624, size: 64, offset: 10432)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1625, file: !1626, line: 1009, baseType: !2309, size: 64, offset: 10496)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1626, line: 1009, flags: DIFlagFwdDecl)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1625, file: !1626, line: 1043, baseType: !312, size: 64, offset: 10560)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1625, file: !1626, line: 1046, baseType: !2313, size: 64, offset: 10624)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1626, line: 41, flags: DIFlagFwdDecl)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1625, file: !1626, line: 1050, baseType: !2316, size: 64, offset: 10688)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1626, line: 42, flags: DIFlagFwdDecl)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1625, file: !1626, line: 1054, baseType: !2319, size: 64, offset: 10752)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1626, line: 55, flags: DIFlagFwdDecl)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1625, file: !1626, line: 1056, baseType: !2322, size: 64, offset: 10816)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1626, line: 40, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1625, file: !1626, line: 1058, baseType: !2325, size: 64, offset: 10880)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2327, line: 99, size: 704, elements: !2328)
!2327 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2328 = !{!2329, !2330, !2331, !2332, !2333, !2334, !2335, !2354, !2355}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2326, file: !2327, line: 100, baseType: !1263, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2326, file: !2327, line: 101, baseType: !464, size: 32, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2326, file: !2327, line: 102, baseType: !464, size: 32, offset: 96)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2326, file: !2327, line: 105, baseType: !750, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2326, file: !2327, line: 107, baseType: !355, size: 16, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2326, file: !2327, line: 109, baseType: !1235, size: 128, offset: 192)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2326, file: !2327, line: 110, baseType: !2336, size: 64, offset: 320)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2327, line: 73, size: 448, elements: !2338)
!2338 = !{!2339, !2342, !2343, !2348, !2353}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2337, file: !2327, line: 74, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2327, line: 74, flags: DIFlagFwdDecl)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2337, file: !2327, line: 75, baseType: !2325, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !2337, file: !2327, line: 83, baseType: !2344, size: 128, offset: 128)
!2344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2337, file: !2327, line: 83, size: 128, elements: !2345)
!2345 = !{!2346, !2347}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2344, file: !2327, line: 84, baseType: !722, size: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2344, file: !2327, line: 85, baseType: !1425, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, scope: !2337, file: !2327, line: 87, baseType: !2349, size: 128, offset: 256)
!2349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2337, file: !2327, line: 87, size: 128, elements: !2350)
!2350 = !{!2351, !2352}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2349, file: !2327, line: 88, baseType: !1135, size: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2349, file: !2327, line: 89, baseType: !876, size: 128, align: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2337, file: !2327, line: 92, baseType: !7, size: 32, offset: 384)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2326, file: !2327, line: 111, baseType: !1131, size: 64, offset: 384)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2326, file: !2327, line: 113, baseType: !2356, size: 256, offset: 448)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2357, line: 102, size: 256, elements: !2358)
!2357 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2358 = !{!2359, !2360, !2361}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2356, file: !2357, line: 103, baseType: !1263, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2356, file: !2357, line: 104, baseType: !722, size: 128, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2356, file: !2357, line: 105, baseType: !2362, size: 64, offset: 192)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2357, line: 21, baseType: !2363)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{null, !2366}
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1625, file: !1626, line: 1061, baseType: !2368, size: 64, offset: 10944)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1626, line: 43, flags: DIFlagFwdDecl)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1625, file: !1626, line: 1064, baseType: !669, size: 64, offset: 11008)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1625, file: !1626, line: 1065, baseType: !2372, size: 64, offset: 11072)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2165, line: 14, baseType: !2374)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2165, line: 12, size: 384, elements: !2375)
!2375 = !{!2376}
!2376 = !DIDerivedType(tag: DW_TAG_member, scope: !2374, file: !2165, line: 13, baseType: !2377, size: 384)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2374, file: !2165, line: 13, size: 384, elements: !2378)
!2378 = !{!2379, !2380, !2381, !2382}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2377, file: !2165, line: 13, baseType: !313, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2377, file: !2165, line: 13, baseType: !313, size: 32, offset: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2377, file: !2165, line: 13, baseType: !313, size: 32, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2377, file: !2165, line: 13, baseType: !2383, size: 256, offset: 128)
!2383 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2384, line: 32, size: 256, elements: !2385)
!2384 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2385 = !{!2386, !2391, !2404, !2410, !2419, !2439, !2444}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2383, file: !2384, line: 37, baseType: !2387, size: 64)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2383, file: !2384, line: 34, size: 64, elements: !2388)
!2388 = !{!2389, !2390}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2387, file: !2384, line: 35, baseType: !1861, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2387, file: !2384, line: 36, baseType: !944, size: 32, offset: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2383, file: !2384, line: 45, baseType: !2392, size: 192)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2383, file: !2384, line: 40, size: 192, elements: !2393)
!2393 = !{!2394, !2396, !2397, !2403}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2392, file: !2384, line: 41, baseType: !2395, size: 32)
!2395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !821, line: 95, baseType: !313)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2392, file: !2384, line: 42, baseType: !313, size: 32, offset: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2392, file: !2384, line: 43, baseType: !2398, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2384, line: 11, baseType: !2399)
!2399 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2384, line: 8, size: 64, elements: !2400)
!2400 = !{!2401, !2402}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2399, file: !2384, line: 9, baseType: !313, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2399, file: !2384, line: 10, baseType: !312, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2392, file: !2384, line: 44, baseType: !313, size: 32, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2383, file: !2384, line: 52, baseType: !2405, size: 128)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2383, file: !2384, line: 48, size: 128, elements: !2406)
!2406 = !{!2407, !2408, !2409}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2405, file: !2384, line: 49, baseType: !1861, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2405, file: !2384, line: 50, baseType: !944, size: 32, offset: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2405, file: !2384, line: 51, baseType: !2398, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2383, file: !2384, line: 61, baseType: !2411, size: 256)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2383, file: !2384, line: 55, size: 256, elements: !2412)
!2412 = !{!2413, !2414, !2415, !2416, !2418}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2411, file: !2384, line: 56, baseType: !1861, size: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2411, file: !2384, line: 57, baseType: !944, size: 32, offset: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2411, file: !2384, line: 58, baseType: !313, size: 32, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2411, file: !2384, line: 59, baseType: !2417, size: 64, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !821, line: 94, baseType: !822)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2411, file: !2384, line: 60, baseType: !2417, size: 64, offset: 192)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2383, file: !2384, line: 95, baseType: !2420, size: 256)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2383, file: !2384, line: 64, size: 256, elements: !2421)
!2421 = !{!2422, !2423}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2420, file: !2384, line: 65, baseType: !312, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, scope: !2420, file: !2384, line: 77, baseType: !2424, size: 192, offset: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2420, file: !2384, line: 77, size: 192, elements: !2425)
!2425 = !{!2426, !2427, !2434}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2424, file: !2384, line: 82, baseType: !1613, size: 16)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2424, file: !2384, line: 88, baseType: !2428, size: 192)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2424, file: !2384, line: 84, size: 192, elements: !2429)
!2429 = !{!2430, !2432, !2433}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2428, file: !2384, line: 85, baseType: !2431, size: 64)
!2431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 64, elements: !485)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2428, file: !2384, line: 86, baseType: !312, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2428, file: !2384, line: 87, baseType: !312, size: 64, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2424, file: !2384, line: 93, baseType: !2435, size: 96)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2424, file: !2384, line: 90, size: 96, elements: !2436)
!2436 = !{!2437, !2438}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2435, file: !2384, line: 91, baseType: !2431, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2435, file: !2384, line: 92, baseType: !441, size: 32, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2383, file: !2384, line: 101, baseType: !2440, size: 128)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2383, file: !2384, line: 98, size: 128, elements: !2441)
!2441 = !{!2442, !2443}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2440, file: !2384, line: 99, baseType: !664, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2440, file: !2384, line: 100, baseType: !313, size: 32, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2383, file: !2384, line: 108, baseType: !2445, size: 128)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2383, file: !2384, line: 104, size: 128, elements: !2446)
!2446 = !{!2447, !2448, !2449}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2445, file: !2384, line: 105, baseType: !312, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2445, file: !2384, line: 106, baseType: !313, size: 32, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2445, file: !2384, line: 107, baseType: !7, size: 32, offset: 96)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1625, file: !1626, line: 1067, baseType: !2237, offset: 11136)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1625, file: !1626, line: 1099, baseType: !2452, size: 64, offset: 11136)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1626, line: 56, flags: DIFlagFwdDecl)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1625, file: !1626, line: 1103, baseType: !722, size: 128, offset: 11200)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1625, file: !1626, line: 1104, baseType: !2456, size: 64, offset: 11328)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1626, line: 46, flags: DIFlagFwdDecl)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1625, file: !1626, line: 1105, baseType: !1581, size: 192, offset: 11392)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1625, file: !1626, line: 1106, baseType: !7, size: 32, offset: 11584)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1625, file: !1626, line: 1109, baseType: !2461, size: 128, offset: 11648)
!2461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2462, size: 128, elements: !1970)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1626, line: 51, flags: DIFlagFwdDecl)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1625, file: !1626, line: 1110, baseType: !1581, size: 192, offset: 11776)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1625, file: !1626, line: 1111, baseType: !722, size: 128, offset: 11968)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1625, file: !1626, line: 1173, baseType: !2467, size: 64, offset: 12096)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2469, line: 62, size: 256, align: 256, elements: !2470)
!2469 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2470 = !{!2471, !2472, !2473, !2478}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2468, file: !2469, line: 75, baseType: !441, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2468, file: !2469, line: 90, baseType: !441, size: 32, offset: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2468, file: !2469, line: 124, baseType: !2474, size: 64, offset: 64)
!2474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2468, file: !2469, line: 109, size: 64, elements: !2475)
!2475 = !{!2476, !2477}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2474, file: !2469, line: 110, baseType: !594, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2474, file: !2469, line: 112, baseType: !594, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2468, file: !2469, line: 144, baseType: !441, size: 32, offset: 128)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1625, file: !1626, line: 1174, baseType: !440, size: 32, offset: 12160)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1625, file: !1626, line: 1179, baseType: !669, size: 64, offset: 12224)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1625, file: !1626, line: 1182, baseType: !2482, size: 128, offset: 12288)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1561, line: 76, size: 128, elements: !2483)
!2483 = !{!2484, !2489, !2490}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2482, file: !1561, line: 85, baseType: !2485, size: 64)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2486, line: 7, size: 64, elements: !2487)
!2486 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2487 = !{!2488}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2485, file: !2486, line: 12, baseType: !1766, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2482, file: !1561, line: 88, baseType: !505, size: 8, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2482, file: !1561, line: 95, baseType: !505, size: 8, offset: 72)
!2491 = !DIDerivedType(tag: DW_TAG_member, scope: !1625, file: !1626, line: 1184, baseType: !2492, size: 128, offset: 12416)
!2492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1625, file: !1626, line: 1184, size: 128, elements: !2493)
!2493 = !{!2494, !2495}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2492, file: !1626, line: 1185, baseType: !459, size: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2492, file: !1626, line: 1186, baseType: !876, size: 128, align: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1625, file: !1626, line: 1190, baseType: !2497, size: 64, offset: 12544)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1626, line: 53, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1625, file: !1626, line: 1192, baseType: !2500, size: 128, offset: 12608)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1561, line: 64, size: 128, elements: !2501)
!2501 = !{!2502, !2503, !2504}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2500, file: !1561, line: 65, baseType: !1217, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2500, file: !1561, line: 67, baseType: !441, size: 32, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2500, file: !1561, line: 68, baseType: !441, size: 32, offset: 96)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1625, file: !1626, line: 1206, baseType: !313, size: 32, offset: 12736)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1625, file: !1626, line: 1207, baseType: !313, size: 32, offset: 12768)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1625, file: !1626, line: 1209, baseType: !669, size: 64, offset: 12800)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1625, file: !1626, line: 1219, baseType: !699, size: 64, offset: 12864)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1625, file: !1626, line: 1220, baseType: !699, size: 64, offset: 12928)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1625, file: !1626, line: 1317, baseType: !313, size: 32, offset: 12992)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1625, file: !1626, line: 1319, baseType: !1624, size: 64, offset: 13056)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1625, file: !1626, line: 1322, baseType: !2513, size: 64, offset: 13120)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2515, line: 56, size: 512, elements: !2516)
!2515 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2516 = !{!2517, !2518, !2519, !2520, !2521, !2522, !2523, !2525}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2514, file: !2515, line: 57, baseType: !2513, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2514, file: !2515, line: 58, baseType: !312, size: 64, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2514, file: !2515, line: 59, baseType: !669, size: 64, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2514, file: !2515, line: 60, baseType: !669, size: 64, offset: 192)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2514, file: !2515, line: 61, baseType: !1312, size: 64, offset: 256)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2514, file: !2515, line: 62, baseType: !7, size: 32, offset: 320)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2514, file: !2515, line: 63, baseType: !2524, size: 64, offset: 384)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !311, line: 153, baseType: !699)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2514, file: !2515, line: 64, baseType: !2526, size: 64, offset: 448)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1625, file: !1626, line: 1326, baseType: !459, size: 32, offset: 13184)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1625, file: !1626, line: 1342, baseType: !312, size: 64, offset: 13248)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1625, file: !1626, line: 1343, baseType: !594, size: 64, offset: 13312)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1625, file: !1626, line: 1344, baseType: !699, size: 64, offset: 13376)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1625, file: !1626, line: 1345, baseType: !594, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1625, file: !1626, line: 1346, baseType: !594, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1625, file: !1626, line: 1347, baseType: !594, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1625, file: !1626, line: 1348, baseType: !876, size: 128, align: 64, offset: 13504)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1625, file: !1626, line: 1358, baseType: !2537, size: 34816, offset: 13824)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2538, line: 485, size: 34816, elements: !2539)
!2538 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2539 = !{!2540, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2569, !2570, !2571, !2572, !2573, !2574, !2577, !2578, !2579}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2537, file: !2538, line: 487, baseType: !2541, size: 192)
!2541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2542, size: 192, elements: !561)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2543, line: 16, size: 64, elements: !2544)
!2543 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2544 = !{!2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2542, file: !2543, line: 17, baseType: !351, size: 16)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2542, file: !2543, line: 18, baseType: !351, size: 16, offset: 16)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2542, file: !2543, line: 19, baseType: !351, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2542, file: !2543, line: 19, baseType: !351, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2542, file: !2543, line: 19, baseType: !351, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2542, file: !2543, line: 19, baseType: !351, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2542, file: !2543, line: 19, baseType: !351, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2542, file: !2543, line: 20, baseType: !351, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2542, file: !2543, line: 20, baseType: !351, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2542, file: !2543, line: 20, baseType: !351, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2542, file: !2543, line: 20, baseType: !351, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2542, file: !2543, line: 20, baseType: !351, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2542, file: !2543, line: 20, baseType: !351, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2537, file: !2538, line: 491, baseType: !669, size: 64, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2537, file: !2538, line: 495, baseType: !355, size: 16, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2537, file: !2538, line: 496, baseType: !355, size: 16, offset: 272)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2537, file: !2538, line: 497, baseType: !355, size: 16, offset: 288)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2537, file: !2538, line: 498, baseType: !355, size: 16, offset: 304)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2537, file: !2538, line: 502, baseType: !669, size: 64, offset: 320)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2537, file: !2538, line: 503, baseType: !669, size: 64, offset: 384)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2537, file: !2538, line: 514, baseType: !2566, size: 256, offset: 448)
!2566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2567, size: 256, elements: !599)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2538, line: 483, flags: DIFlagFwdDecl)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2537, file: !2538, line: 516, baseType: !669, size: 64, offset: 704)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2537, file: !2538, line: 518, baseType: !669, size: 64, offset: 768)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2537, file: !2538, line: 520, baseType: !669, size: 64, offset: 832)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2537, file: !2538, line: 521, baseType: !669, size: 64, offset: 896)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2537, file: !2538, line: 522, baseType: !669, size: 64, offset: 960)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2537, file: !2538, line: 528, baseType: !2575, size: 64, offset: 1024)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2538, line: 10, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2537, file: !2538, line: 535, baseType: !669, size: 64, offset: 1088)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2537, file: !2538, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2537, file: !2538, line: 540, baseType: !2580, size: 33280, offset: 1536)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2581, line: 317, size: 33280, elements: !2582)
!2581 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2582 = !{!2583, !2584, !2585}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2580, file: !2581, line: 330, baseType: !7, size: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2580, file: !2581, line: 337, baseType: !669, size: 64, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2580, file: !2581, line: 348, baseType: !2586, size: 32768, offset: 512)
!2586 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2581, line: 304, size: 32768, elements: !2587)
!2587 = !{!2588, !2603, !2642, !2692, !2705}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2586, file: !2581, line: 305, baseType: !2589, size: 896)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2581, line: 12, size: 896, elements: !2590)
!2590 = !{!2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2602}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2589, file: !2581, line: 13, baseType: !440, size: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2589, file: !2581, line: 14, baseType: !440, size: 32, offset: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2589, file: !2581, line: 15, baseType: !440, size: 32, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2589, file: !2581, line: 16, baseType: !440, size: 32, offset: 96)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2589, file: !2581, line: 17, baseType: !440, size: 32, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2589, file: !2581, line: 18, baseType: !440, size: 32, offset: 160)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2589, file: !2581, line: 19, baseType: !440, size: 32, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2589, file: !2581, line: 22, baseType: !2599, size: 640, offset: 224)
!2599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 640, elements: !2600)
!2600 = !{!2601}
!2601 = !DISubrange(count: 20)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2589, file: !2581, line: 25, baseType: !440, size: 32, offset: 864)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2586, file: !2581, line: 306, baseType: !2604, size: 4096, align: 128)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2581, line: 34, size: 4096, align: 128, elements: !2605)
!2605 = !{!2606, !2607, !2608, !2609, !2610, !2625, !2626, !2627, !2631, !2633, !2637}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2604, file: !2581, line: 35, baseType: !351, size: 16)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2604, file: !2581, line: 36, baseType: !351, size: 16, offset: 16)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2604, file: !2581, line: 37, baseType: !351, size: 16, offset: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2604, file: !2581, line: 38, baseType: !351, size: 16, offset: 48)
!2610 = !DIDerivedType(tag: DW_TAG_member, scope: !2604, file: !2581, line: 39, baseType: !2611, size: 128, offset: 64)
!2611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2604, file: !2581, line: 39, size: 128, elements: !2612)
!2612 = !{!2613, !2618}
!2613 = !DIDerivedType(tag: DW_TAG_member, scope: !2611, file: !2581, line: 40, baseType: !2614, size: 128)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2611, file: !2581, line: 40, size: 128, elements: !2615)
!2615 = !{!2616, !2617}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2614, file: !2581, line: 41, baseType: !699, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2614, file: !2581, line: 42, baseType: !699, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, scope: !2611, file: !2581, line: 44, baseType: !2619, size: 128)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2611, file: !2581, line: 44, size: 128, elements: !2620)
!2620 = !{!2621, !2622, !2623, !2624}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2619, file: !2581, line: 45, baseType: !440, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2619, file: !2581, line: 46, baseType: !440, size: 32, offset: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2619, file: !2581, line: 47, baseType: !440, size: 32, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2619, file: !2581, line: 48, baseType: !440, size: 32, offset: 96)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2604, file: !2581, line: 51, baseType: !440, size: 32, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2604, file: !2581, line: 52, baseType: !440, size: 32, offset: 224)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2604, file: !2581, line: 55, baseType: !2628, size: 1024, offset: 256)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 1024, elements: !2629)
!2629 = !{!2630}
!2630 = !DISubrange(count: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2604, file: !2581, line: 58, baseType: !2632, size: 2048, offset: 1280)
!2632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 2048, elements: !793)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2604, file: !2581, line: 60, baseType: !2634, size: 384, offset: 3328)
!2634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 384, elements: !2635)
!2635 = !{!2636}
!2636 = !DISubrange(count: 12)
!2637 = !DIDerivedType(tag: DW_TAG_member, scope: !2604, file: !2581, line: 62, baseType: !2638, size: 384, offset: 3712)
!2638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2604, file: !2581, line: 62, size: 384, elements: !2639)
!2639 = !{!2640, !2641}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2638, file: !2581, line: 63, baseType: !2634, size: 384)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2638, file: !2581, line: 64, baseType: !2634, size: 384)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2586, file: !2581, line: 307, baseType: !2643, size: 1088)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2581, line: 79, size: 1088, elements: !2644)
!2644 = !{!2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2691}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2643, file: !2581, line: 80, baseType: !440, size: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2643, file: !2581, line: 81, baseType: !440, size: 32, offset: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2643, file: !2581, line: 82, baseType: !440, size: 32, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2643, file: !2581, line: 83, baseType: !440, size: 32, offset: 96)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2643, file: !2581, line: 84, baseType: !440, size: 32, offset: 128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2643, file: !2581, line: 85, baseType: !440, size: 32, offset: 160)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2643, file: !2581, line: 86, baseType: !440, size: 32, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2643, file: !2581, line: 88, baseType: !2599, size: 640, offset: 224)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2643, file: !2581, line: 89, baseType: !361, size: 8, offset: 864)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2643, file: !2581, line: 90, baseType: !361, size: 8, offset: 872)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2643, file: !2581, line: 91, baseType: !361, size: 8, offset: 880)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2643, file: !2581, line: 92, baseType: !361, size: 8, offset: 888)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2643, file: !2581, line: 93, baseType: !361, size: 8, offset: 896)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2643, file: !2581, line: 94, baseType: !361, size: 8, offset: 904)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2643, file: !2581, line: 95, baseType: !2660, size: 64, offset: 960)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2662, line: 11, size: 128, elements: !2663)
!2662 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2663 = !{!2664, !2665}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2661, file: !2662, line: 12, baseType: !664, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2661, file: !2662, line: 13, baseType: !2666, size: 64, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2668, line: 56, size: 1344, elements: !2669)
!2668 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2669 = !{!2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2667, file: !2668, line: 61, baseType: !669, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2667, file: !2668, line: 62, baseType: !669, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2667, file: !2668, line: 63, baseType: !669, size: 64, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2667, file: !2668, line: 64, baseType: !669, size: 64, offset: 192)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2667, file: !2668, line: 65, baseType: !669, size: 64, offset: 256)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2667, file: !2668, line: 66, baseType: !669, size: 64, offset: 320)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2667, file: !2668, line: 68, baseType: !669, size: 64, offset: 384)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2667, file: !2668, line: 69, baseType: !669, size: 64, offset: 448)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2667, file: !2668, line: 70, baseType: !669, size: 64, offset: 512)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2667, file: !2668, line: 71, baseType: !669, size: 64, offset: 576)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2667, file: !2668, line: 72, baseType: !669, size: 64, offset: 640)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2667, file: !2668, line: 73, baseType: !669, size: 64, offset: 704)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2667, file: !2668, line: 74, baseType: !669, size: 64, offset: 768)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2667, file: !2668, line: 75, baseType: !669, size: 64, offset: 832)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2667, file: !2668, line: 76, baseType: !669, size: 64, offset: 896)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2667, file: !2668, line: 81, baseType: !669, size: 64, offset: 960)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2667, file: !2668, line: 83, baseType: !669, size: 64, offset: 1024)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2667, file: !2668, line: 84, baseType: !669, size: 64, offset: 1088)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2667, file: !2668, line: 85, baseType: !669, size: 64, offset: 1152)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2667, file: !2668, line: 86, baseType: !669, size: 64, offset: 1216)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2667, file: !2668, line: 87, baseType: !669, size: 64, offset: 1280)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2643, file: !2581, line: 96, baseType: !440, size: 32, offset: 1024)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2586, file: !2581, line: 308, baseType: !2693, size: 4608, align: 512)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2581, line: 289, size: 4608, align: 512, elements: !2694)
!2694 = !{!2695, !2696, !2703}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2693, file: !2581, line: 290, baseType: !2604, size: 4096, align: 128)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2693, file: !2581, line: 291, baseType: !2697, size: 512, offset: 4096)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2581, line: 268, size: 512, elements: !2698)
!2698 = !{!2699, !2700, !2701}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2697, file: !2581, line: 269, baseType: !699, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2697, file: !2581, line: 270, baseType: !699, size: 64, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2697, file: !2581, line: 271, baseType: !2702, size: 384, offset: 128)
!2702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 384, elements: !634)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2693, file: !2581, line: 292, baseType: !2704, offset: 4608)
!2704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, elements: !2122)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2586, file: !2581, line: 309, baseType: !2706, size: 32768)
!2706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 32768, elements: !2707)
!2707 = !{!2708}
!2708 = !DISubrange(count: 4096)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1621, file: !1219, line: 378, baseType: !2710, size: 64, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1617, file: !1219, line: 384, baseType: !1903, size: 192, offset: 192)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1468, file: !1219, line: 500, baseType: !750, offset: 6656)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1468, file: !1219, line: 501, baseType: !2714, size: 64, offset: 6656)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1219, line: 387, flags: DIFlagFwdDecl)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1468, file: !1219, line: 516, baseType: !2112, size: 64, offset: 6720)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1468, file: !1219, line: 519, baseType: !863, size: 64, offset: 6784)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1468, file: !1219, line: 521, baseType: !2719, size: 64, offset: 6848)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1219, line: 521, flags: DIFlagFwdDecl)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1468, file: !1219, line: 545, baseType: !464, size: 32, offset: 6912)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1468, file: !1219, line: 548, baseType: !505, size: 8, offset: 6944)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1468, file: !1219, line: 550, baseType: !2724, offset: 6952)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2725, line: 142, elements: !764)
!2725 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1468, file: !1219, line: 554, baseType: !2356, size: 256, offset: 6976)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1468, file: !1219, line: 557, baseType: !440, size: 32, offset: 7232)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1465, file: !1219, line: 565, baseType: !2729, offset: 7296)
!2729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, elements: !2730)
!2730 = !{!2731}
!2731 = !DISubrange(count: -1)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1461, file: !1219, line: 151, baseType: !464, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1454, file: !1219, line: 156, baseType: !750, offset: 256)
!2734 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !1219, line: 159, baseType: !2735, size: 128)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !1219, line: 159, size: 128, elements: !2736)
!2736 = !{!2737, !2740}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2735, file: !1219, line: 161, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1219, line: 161, flags: DIFlagFwdDecl)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2735, file: !1219, line: 162, baseType: !312, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1223, file: !1219, line: 176, baseType: !876, size: 128, align: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1219, line: 179, baseType: !2743, size: 32, offset: 384)
!2743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !1219, line: 179, size: 32, elements: !2744)
!2744 = !{!2745, !2746, !2747, !2748}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2743, file: !1219, line: 184, baseType: !464, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2743, file: !1219, line: 192, baseType: !7, size: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2743, file: !1219, line: 194, baseType: !7, size: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2743, file: !1219, line: 195, baseType: !313, size: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1218, file: !1219, line: 199, baseType: !464, size: 32, offset: 416)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1153, file: !208, line: 1964, baseType: !2751, size: 64, offset: 1344)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!664, !1095, !2754}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2756, line: 12, size: 256, elements: !2757)
!2756 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2757 = !{!2758, !2759, !2760, !2761, !2762}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2755, file: !2756, line: 13, baseType: !310, size: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2755, file: !2756, line: 16, baseType: !313, size: 32, offset: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2755, file: !2756, line: 23, baseType: !669, size: 64, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2755, file: !2756, line: 30, baseType: !669, size: 64, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2755, file: !2756, line: 33, baseType: !2763, size: 64, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1219, line: 27, flags: DIFlagFwdDecl)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1153, file: !208, line: 1966, baseType: !2751, size: 64, offset: 1408)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1096, file: !208, line: 1424, baseType: !2767, size: 64, offset: 448)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2769)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !2770)
!2770 = !{!2771, !2817, !2821, !2825, !2826, !2827, !2828, !2829, !2834, !2839, !2843}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2769, file: !202, line: 323, baseType: !2772, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!313, !2775}
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !2777)
!2777 = !{!2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2802, !2803, !2804}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2776, file: !202, line: 295, baseType: !1135, size: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2776, file: !202, line: 296, baseType: !722, size: 128, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2776, file: !202, line: 297, baseType: !722, size: 128, offset: 256)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2776, file: !202, line: 298, baseType: !722, size: 128, offset: 384)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2776, file: !202, line: 299, baseType: !1581, size: 192, offset: 512)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2776, file: !202, line: 300, baseType: !750, offset: 704)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2776, file: !202, line: 301, baseType: !464, size: 32, offset: 704)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2776, file: !202, line: 302, baseType: !1095, size: 64, offset: 768)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2776, file: !202, line: 303, baseType: !2787, size: 64, offset: 832)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !2788)
!2788 = !{!2789, !2801}
!2789 = !DIDerivedType(tag: DW_TAG_member, scope: !2787, file: !202, line: 69, baseType: !2790, size: 32)
!2790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2787, file: !202, line: 69, size: 32, elements: !2791)
!2791 = !{!2792, !2793, !2794}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2790, file: !202, line: 70, baseType: !938, size: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2790, file: !202, line: 71, baseType: !946, size: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2790, file: !202, line: 72, baseType: !2795, size: 32)
!2795 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2796, line: 24, baseType: !2797)
!2796 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2796, line: 22, size: 32, elements: !2798)
!2798 = !{!2799}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2797, file: !2796, line: 23, baseType: !2800, size: 32)
!2800 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2796, line: 20, baseType: !944)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2787, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2776, file: !202, line: 304, baseType: !1029, size: 64, offset: 896)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2776, file: !202, line: 305, baseType: !669, size: 64, offset: 960)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2776, file: !202, line: 306, baseType: !2805, size: 576, offset: 1024)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !2806)
!2806 = !{!2807, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2805, file: !202, line: 206, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !598)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2805, file: !202, line: 207, baseType: !2808, size: 64, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2805, file: !202, line: 208, baseType: !2808, size: 64, offset: 128)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2805, file: !202, line: 209, baseType: !2808, size: 64, offset: 192)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2805, file: !202, line: 210, baseType: !2808, size: 64, offset: 256)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2805, file: !202, line: 211, baseType: !2808, size: 64, offset: 320)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2805, file: !202, line: 212, baseType: !2808, size: 64, offset: 384)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2805, file: !202, line: 213, baseType: !1036, size: 64, offset: 448)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2805, file: !202, line: 214, baseType: !1036, size: 64, offset: 512)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2769, file: !202, line: 324, baseType: !2818, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!2775, !1095, !313}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2769, file: !202, line: 325, baseType: !2822, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{null, !2775}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2769, file: !202, line: 326, baseType: !2772, size: 64, offset: 192)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2769, file: !202, line: 327, baseType: !2772, size: 64, offset: 256)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2769, file: !202, line: 328, baseType: !2772, size: 64, offset: 320)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2769, file: !202, line: 329, baseType: !1181, size: 64, offset: 384)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2769, file: !202, line: 332, baseType: !2830, size: 64, offset: 448)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!2833, !932}
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2769, file: !202, line: 333, baseType: !2835, size: 64, offset: 512)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!313, !932, !2838}
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2769, file: !202, line: 335, baseType: !2840, size: 64, offset: 576)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!313, !932, !2833}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2769, file: !202, line: 337, baseType: !2844, size: 64, offset: 640)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!313, !1095, !2847}
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1096, file: !208, line: 1425, baseType: !2849, size: 64, offset: 512)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2851)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !2852)
!2852 = !{!2853, !2857, !2858, !2862, !2863, !2864, !2879, !2902, !2906, !2907, !2930}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2851, file: !202, line: 429, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!313, !1095, !313, !313, !1045}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2851, file: !202, line: 430, baseType: !1181, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2851, file: !202, line: 431, baseType: !2859, size: 64, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!313, !1095, !7}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2851, file: !202, line: 432, baseType: !2859, size: 64, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2851, file: !202, line: 433, baseType: !1181, size: 64, offset: 256)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2851, file: !202, line: 434, baseType: !2865, size: 64, offset: 320)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!313, !1095, !313, !2868}
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !2870)
!2870 = !{!2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2869, file: !202, line: 416, baseType: !313, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2869, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2869, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2869, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2869, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2869, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2869, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2869, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2851, file: !202, line: 435, baseType: !2880, size: 64, offset: 384)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!313, !1095, !2787, !2883}
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !2885)
!2885 = !{!2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2884, file: !202, line: 344, baseType: !313, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2884, file: !202, line: 345, baseType: !699, size: 64, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2884, file: !202, line: 346, baseType: !699, size: 64, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2884, file: !202, line: 347, baseType: !699, size: 64, offset: 192)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2884, file: !202, line: 348, baseType: !699, size: 64, offset: 256)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2884, file: !202, line: 349, baseType: !699, size: 64, offset: 320)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2884, file: !202, line: 350, baseType: !699, size: 64, offset: 384)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2884, file: !202, line: 351, baseType: !1269, size: 64, offset: 448)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2884, file: !202, line: 353, baseType: !1269, size: 64, offset: 512)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2884, file: !202, line: 354, baseType: !313, size: 32, offset: 576)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2884, file: !202, line: 355, baseType: !313, size: 32, offset: 608)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2884, file: !202, line: 356, baseType: !699, size: 64, offset: 640)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2884, file: !202, line: 357, baseType: !699, size: 64, offset: 704)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2884, file: !202, line: 358, baseType: !699, size: 64, offset: 768)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2884, file: !202, line: 359, baseType: !1269, size: 64, offset: 832)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2884, file: !202, line: 360, baseType: !313, size: 32, offset: 896)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2851, file: !202, line: 436, baseType: !2903, size: 64, offset: 448)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!313, !1095, !2847, !2883}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2851, file: !202, line: 438, baseType: !2880, size: 64, offset: 512)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2851, file: !202, line: 439, baseType: !2908, size: 64, offset: 576)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!313, !1095, !2911}
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !2913)
!2913 = !{!2914, !2915}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2912, file: !202, line: 410, baseType: !7, size: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2912, file: !202, line: 411, baseType: !2916, size: 1344, offset: 64)
!2916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2917, size: 1344, elements: !561)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !2918)
!2918 = !{!2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2929}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2917, file: !202, line: 396, baseType: !7, size: 32)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2917, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2917, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2917, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2917, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2917, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2917, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2917, file: !202, line: 404, baseType: !595, size: 64, offset: 256)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2917, file: !202, line: 405, baseType: !2928, size: 64, offset: 320)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !311, line: 126, baseType: !699)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2917, file: !202, line: 406, baseType: !2928, size: 64, offset: 384)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2851, file: !202, line: 440, baseType: !2859, size: 64, offset: 640)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1096, file: !208, line: 1426, baseType: !2932, size: 64, offset: 576)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2934)
!2934 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1096, file: !208, line: 1427, baseType: !669, size: 64, offset: 640)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1096, file: !208, line: 1428, baseType: !669, size: 64, offset: 704)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1096, file: !208, line: 1429, baseType: !669, size: 64, offset: 768)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1096, file: !208, line: 1430, baseType: !893, size: 64, offset: 832)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1096, file: !208, line: 1431, baseType: !1259, size: 256, offset: 896)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1096, file: !208, line: 1432, baseType: !313, size: 32, offset: 1152)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1096, file: !208, line: 1433, baseType: !464, size: 32, offset: 1184)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1096, file: !208, line: 1437, baseType: !2943, size: 64, offset: 1216)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2946)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1096, file: !208, line: 1449, baseType: !2948, size: 64, offset: 1280)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !909, line: 34, size: 64, elements: !2949)
!2949 = !{!2950}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2948, file: !909, line: 35, baseType: !912, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1096, file: !208, line: 1450, baseType: !722, size: 128, offset: 1344)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1096, file: !208, line: 1451, baseType: !2953, size: 64, offset: 1472)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1096, file: !208, line: 1452, baseType: !2322, size: 64, offset: 1536)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1096, file: !208, line: 1453, baseType: !2957, size: 64, offset: 1600)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1096, file: !208, line: 1454, baseType: !1135, size: 128, offset: 1664)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1096, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1096, file: !208, line: 1456, baseType: !2962, size: 2432, offset: 1856)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !2963)
!2963 = !{!2964, !2965, !2966, !2968, !3000}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2962, file: !202, line: 519, baseType: !7, size: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2962, file: !202, line: 520, baseType: !1259, size: 256, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2962, file: !202, line: 521, baseType: !2967, size: 192, offset: 320)
!2967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 192, elements: !561)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2962, file: !202, line: 522, baseType: !2969, size: 1728, offset: 512)
!2969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2970, size: 1728, elements: !561)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !2971)
!2971 = !{!2972, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2970, file: !202, line: 223, baseType: !2973, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !2975)
!2975 = !{!2976, !2977, !2990, !2991}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2974, file: !202, line: 444, baseType: !313, size: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2974, file: !202, line: 445, baseType: !2978, size: 64, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2980)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !2981)
!2981 = !{!2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2980, file: !202, line: 311, baseType: !1181, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2980, file: !202, line: 312, baseType: !1181, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2980, file: !202, line: 313, baseType: !1181, size: 64, offset: 128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2980, file: !202, line: 314, baseType: !1181, size: 64, offset: 192)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2980, file: !202, line: 315, baseType: !2772, size: 64, offset: 256)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2980, file: !202, line: 316, baseType: !2772, size: 64, offset: 320)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2980, file: !202, line: 317, baseType: !2772, size: 64, offset: 384)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2980, file: !202, line: 318, baseType: !2844, size: 64, offset: 448)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2974, file: !202, line: 446, baseType: !314, size: 64, offset: 128)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2974, file: !202, line: 447, baseType: !2973, size: 64, offset: 192)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2970, file: !202, line: 224, baseType: !313, size: 32, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2970, file: !202, line: 226, baseType: !722, size: 128, offset: 128)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2970, file: !202, line: 227, baseType: !669, size: 64, offset: 256)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2970, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2970, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2970, file: !202, line: 230, baseType: !2808, size: 64, offset: 384)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2970, file: !202, line: 231, baseType: !2808, size: 64, offset: 448)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2970, file: !202, line: 232, baseType: !312, size: 64, offset: 512)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2962, file: !202, line: 523, baseType: !3001, size: 192, offset: 2240)
!3001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2978, size: 192, elements: !561)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1096, file: !208, line: 1458, baseType: !3003, size: 2112, offset: 4288)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !3004)
!3004 = !{!3005, !3006, !3007}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3003, file: !208, line: 1411, baseType: !313, size: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3003, file: !208, line: 1412, baseType: !1882, size: 128, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3003, file: !208, line: 1413, baseType: !3008, size: 1920, offset: 192)
!3008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3009, size: 1920, elements: !561)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3010, line: 12, size: 640, elements: !3011)
!3010 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3011 = !{!3012, !3020, !3021, !3026, !3027}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3009, file: !3010, line: 13, baseType: !3013, size: 320)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3014, line: 17, size: 320, elements: !3015)
!3014 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3015 = !{!3016, !3017, !3018, !3019}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3013, file: !3014, line: 18, baseType: !313, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3013, file: !3014, line: 19, baseType: !313, size: 32, offset: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3013, file: !3014, line: 20, baseType: !1882, size: 128, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3013, file: !3014, line: 22, baseType: !876, size: 128, align: 64, offset: 192)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3009, file: !3010, line: 14, baseType: !383, size: 64, offset: 320)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3009, file: !3010, line: 15, baseType: !3022, size: 64, offset: 384)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3023, line: 16, size: 64, elements: !3024)
!3023 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3024 = !{!3025}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3022, file: !3023, line: 17, baseType: !1624, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3009, file: !3010, line: 16, baseType: !1882, size: 128, offset: 448)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3009, file: !3010, line: 17, baseType: !464, size: 32, offset: 576)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1096, file: !208, line: 1465, baseType: !312, size: 64, offset: 6400)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1096, file: !208, line: 1468, baseType: !440, size: 32, offset: 6464)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1096, file: !208, line: 1470, baseType: !1036, size: 64, offset: 6528)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1096, file: !208, line: 1471, baseType: !1036, size: 64, offset: 6592)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1096, file: !208, line: 1473, baseType: !441, size: 32, offset: 6656)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1096, file: !208, line: 1474, baseType: !3034, size: 64, offset: 6720)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1096, file: !208, line: 1477, baseType: !3037, size: 256, offset: 6784)
!3037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 256, elements: !2629)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1096, file: !208, line: 1478, baseType: !3039, size: 128, offset: 7040)
!3039 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3040, line: 18, baseType: !3041)
!3040 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3040, line: 16, size: 128, elements: !3042)
!3042 = !{!3043}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3041, file: !3040, line: 17, baseType: !3044, size: 128)
!3044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 128, elements: !2134)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1096, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !1096, file: !208, line: 1481, baseType: !3047, size: 32, offset: 7200)
!3047 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !311, line: 150, baseType: !7)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1096, file: !208, line: 1487, baseType: !1581, size: 192, offset: 7232)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1096, file: !208, line: 1493, baseType: !325, size: 64, offset: 7424)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1096, file: !208, line: 1495, baseType: !3051, size: 64, offset: 7488)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3053)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !891, line: 135, size: 1024, align: 512, elements: !3054)
!3054 = !{!3055, !3059, !3060, !3067, !3073, !3077, !3081, !3085, !3086, !3090, !3094, !3099, !3103}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3053, file: !891, line: 136, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!313, !893, !7}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3053, file: !891, line: 137, baseType: !3056, size: 64, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3053, file: !891, line: 138, baseType: !3061, size: 64, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!313, !3064, !3066}
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !894)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3053, file: !891, line: 139, baseType: !3068, size: 64, offset: 192)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!313, !3064, !7, !325, !3071}
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !917)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3053, file: !891, line: 141, baseType: !3074, size: 64, offset: 256)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!313, !3064}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3053, file: !891, line: 142, baseType: !3078, size: 64, offset: 320)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!313, !893}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3053, file: !891, line: 143, baseType: !3082, size: 64, offset: 384)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !893}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3053, file: !891, line: 144, baseType: !3082, size: 64, offset: 448)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3053, file: !891, line: 145, baseType: !3087, size: 64, offset: 512)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{null, !893, !932}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3053, file: !891, line: 146, baseType: !3091, size: 64, offset: 576)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!344, !893, !344, !313}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3053, file: !891, line: 147, baseType: !3095, size: 64, offset: 640)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!889, !3098}
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3053, file: !891, line: 148, baseType: !3100, size: 64, offset: 704)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!313, !1045, !505}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3053, file: !891, line: 149, baseType: !3104, size: 64, offset: 768)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!893, !893, !3107}
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !1096, file: !208, line: 1500, baseType: !313, size: 32, offset: 7552)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1096, file: !208, line: 1502, baseType: !3111, size: 448, offset: 7616)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2756, line: 60, size: 448, elements: !3112)
!3112 = !{!3113, !3118, !3119, !3120, !3121, !3122, !3123}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3111, file: !2756, line: 61, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!669, !3117, !2754}
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3111, file: !2756, line: 63, baseType: !3114, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3111, file: !2756, line: 66, baseType: !664, size: 64, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3111, file: !2756, line: 67, baseType: !313, size: 32, offset: 192)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3111, file: !2756, line: 68, baseType: !7, size: 32, offset: 224)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3111, file: !2756, line: 71, baseType: !722, size: 128, offset: 256)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3111, file: !2756, line: 77, baseType: !3124, size: 64, offset: 384)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1096, file: !208, line: 1505, baseType: !1263, size: 64, offset: 8064)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !1096, file: !208, line: 1508, baseType: !1263, size: 64, offset: 8128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1096, file: !208, line: 1511, baseType: !313, size: 32, offset: 8192)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1096, file: !208, line: 1514, baseType: !1399, size: 32, offset: 8224)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1096, file: !208, line: 1517, baseType: !3130, size: 64, offset: 8256)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2357, line: 18, flags: DIFlagFwdDecl)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1096, file: !208, line: 1518, baseType: !1131, size: 64, offset: 8320)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1096, file: !208, line: 1525, baseType: !2112, size: 64, offset: 8384)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1096, file: !208, line: 1532, baseType: !3135, size: 64, offset: 8448)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3136, line: 52, size: 64, elements: !3137)
!3136 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3137 = !{!3138}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3135, file: !3136, line: 53, baseType: !3139, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3136, line: 40, size: 256, elements: !3141)
!3141 = !{!3142, !3143, !3148}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3140, file: !3136, line: 42, baseType: !750)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3140, file: !3136, line: 44, baseType: !3144, size: 192)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3136, line: 28, size: 192, elements: !3145)
!3145 = !{!3146, !3147}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3144, file: !3136, line: 29, baseType: !722, size: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3144, file: !3136, line: 31, baseType: !664, size: 64, offset: 128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3140, file: !3136, line: 49, baseType: !664, size: 64, offset: 192)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1096, file: !208, line: 1533, baseType: !3135, size: 64, offset: 8512)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1096, file: !208, line: 1534, baseType: !876, size: 128, align: 64, offset: 8576)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1096, file: !208, line: 1535, baseType: !2356, size: 256, offset: 8704)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1096, file: !208, line: 1537, baseType: !1581, size: 192, offset: 8960)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1096, file: !208, line: 1542, baseType: !313, size: 32, offset: 9152)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1096, file: !208, line: 1545, baseType: !750, offset: 9184)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1096, file: !208, line: 1546, baseType: !722, size: 128, offset: 9216)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1096, file: !208, line: 1548, baseType: !750, offset: 9344)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1096, file: !208, line: 1549, baseType: !722, size: 128, offset: 9344)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !933, file: !208, line: 624, baseType: !1230, size: 64, offset: 256)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !933, file: !208, line: 631, baseType: !669, size: 64, offset: 320)
!3160 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !208, line: 639, baseType: !3161, size: 32, offset: 384)
!3161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !933, file: !208, line: 639, size: 32, elements: !3162)
!3162 = !{!3163, !3165}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3161, file: !208, line: 640, baseType: !3164, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3161, file: !208, line: 641, baseType: !7, size: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !933, file: !208, line: 643, baseType: !1011, size: 32, offset: 416)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !933, file: !208, line: 644, baseType: !1029, size: 64, offset: 448)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !933, file: !208, line: 645, baseType: !1032, size: 128, offset: 512)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !933, file: !208, line: 646, baseType: !1032, size: 128, offset: 640)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !933, file: !208, line: 647, baseType: !1032, size: 128, offset: 768)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !933, file: !208, line: 648, baseType: !750, offset: 896)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !933, file: !208, line: 649, baseType: !355, size: 16, offset: 896)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !933, file: !208, line: 650, baseType: !361, size: 8, offset: 912)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !933, file: !208, line: 651, baseType: !361, size: 8, offset: 920)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !933, file: !208, line: 652, baseType: !2928, size: 64, offset: 960)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !933, file: !208, line: 659, baseType: !669, size: 64, offset: 1024)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !933, file: !208, line: 660, baseType: !1259, size: 256, offset: 1088)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !933, file: !208, line: 662, baseType: !669, size: 64, offset: 1344)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !933, file: !208, line: 663, baseType: !669, size: 64, offset: 1408)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !933, file: !208, line: 665, baseType: !1135, size: 128, offset: 1472)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !933, file: !208, line: 666, baseType: !722, size: 128, offset: 1600)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !933, file: !208, line: 675, baseType: !722, size: 128, offset: 1728)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !933, file: !208, line: 676, baseType: !722, size: 128, offset: 1856)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !933, file: !208, line: 677, baseType: !722, size: 128, offset: 1984)
!3185 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !208, line: 678, baseType: !3186, size: 128, offset: 2112)
!3186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !933, file: !208, line: 678, size: 128, elements: !3187)
!3187 = !{!3188, !3189}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3186, file: !208, line: 679, baseType: !1131, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3186, file: !208, line: 680, baseType: !876, size: 128, align: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !933, file: !208, line: 682, baseType: !1265, size: 64, offset: 2240)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !933, file: !208, line: 683, baseType: !1265, size: 64, offset: 2304)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !933, file: !208, line: 684, baseType: !464, size: 32, offset: 2368)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !933, file: !208, line: 685, baseType: !464, size: 32, offset: 2400)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !933, file: !208, line: 686, baseType: !464, size: 32, offset: 2432)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !933, file: !208, line: 688, baseType: !464, size: 32, offset: 2464)
!3196 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !208, line: 690, baseType: !3197, size: 64, offset: 2496)
!3197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !933, file: !208, line: 690, size: 64, elements: !3198)
!3198 = !{!3199, !3431}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3197, file: !208, line: 691, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3202)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !3203)
!3203 = !{!3204, !3205, !3209, !3214, !3218, !3219, !3220, !3224, !3237, !3238, !3255, !3259, !3260, !3264, !3265, !3269, !3274, !3275, !3279, !3283, !3391, !3395, !3396, !3400, !3401, !3405, !3409, !3414, !3418, !3422, !3426, !3430}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3202, file: !208, line: 1823, baseType: !314, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3202, file: !208, line: 1824, baseType: !3206, size: 64, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!1029, !863, !1029, !313}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3202, file: !208, line: 1825, baseType: !3210, size: 64, offset: 128)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!819, !863, !344, !833, !3213}
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3202, file: !208, line: 1826, baseType: !3215, size: 64, offset: 192)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!819, !863, !325, !833, !3213}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3202, file: !208, line: 1827, baseType: !1336, size: 64, offset: 256)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3202, file: !208, line: 1828, baseType: !1336, size: 64, offset: 320)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3202, file: !208, line: 1829, baseType: !3221, size: 64, offset: 384)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!313, !1339, !505}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3202, file: !208, line: 1830, baseType: !3225, size: 64, offset: 448)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!313, !863, !3228}
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !3230)
!3230 = !{!3231, !3236}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3229, file: !208, line: 1777, baseType: !3232, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !3233)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!313, !3228, !325, !313, !1029, !699, !7}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3229, file: !208, line: 1778, baseType: !1029, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3202, file: !208, line: 1831, baseType: !3225, size: 64, offset: 512)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3202, file: !208, line: 1832, baseType: !3239, size: 64, offset: 576)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!3242, !863, !3244}
!3242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3243, line: 52, baseType: !7)
!3243 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3246, line: 43, size: 128, elements: !3247)
!3246 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!3247 = !{!3248, !3254}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3245, file: !3246, line: 44, baseType: !3249, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3246, line: 37, baseType: !3250)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{null, !863, !3253, !3244}
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3245, file: !3246, line: 45, baseType: !3242, size: 32, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3202, file: !208, line: 1833, baseType: !3256, size: 64, offset: 640)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!664, !863, !7, !669}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3202, file: !208, line: 1834, baseType: !3256, size: 64, offset: 704)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3202, file: !208, line: 1835, baseType: !3261, size: 64, offset: 768)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!313, !863, !1471}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3202, file: !208, line: 1836, baseType: !669, size: 64, offset: 832)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3202, file: !208, line: 1837, baseType: !3266, size: 64, offset: 896)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!313, !932, !863}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3202, file: !208, line: 1838, baseType: !3270, size: 64, offset: 960)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!313, !863, !3273}
!3273 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !312)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3202, file: !208, line: 1839, baseType: !3266, size: 64, offset: 1024)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3202, file: !208, line: 1840, baseType: !3276, size: 64, offset: 1088)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!313, !863, !1029, !1029, !313}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3202, file: !208, line: 1841, baseType: !3280, size: 64, offset: 1152)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!313, !313, !863, !313}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3202, file: !208, line: 1842, baseType: !3284, size: 64, offset: 1216)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!313, !863, !313, !3287}
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !3289)
!3289 = !{!3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3321, !3322, !3323, !3336, !3367}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3288, file: !208, line: 1063, baseType: !3287, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3288, file: !208, line: 1064, baseType: !722, size: 128, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3288, file: !208, line: 1065, baseType: !1135, size: 128, offset: 192)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3288, file: !208, line: 1066, baseType: !722, size: 128, offset: 320)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3288, file: !208, line: 1069, baseType: !722, size: 128, offset: 448)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3288, file: !208, line: 1072, baseType: !3273, size: 64, offset: 576)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3288, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3288, file: !208, line: 1074, baseType: !363, size: 8, offset: 672)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3288, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3288, file: !208, line: 1076, baseType: !313, size: 32, offset: 736)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3288, file: !208, line: 1077, baseType: !1882, size: 128, offset: 768)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3288, file: !208, line: 1078, baseType: !863, size: 64, offset: 896)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3288, file: !208, line: 1079, baseType: !1029, size: 64, offset: 960)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3288, file: !208, line: 1080, baseType: !1029, size: 64, offset: 1024)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3288, file: !208, line: 1082, baseType: !3305, size: 64, offset: 1088)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !3307)
!3307 = !{!3308, !3316, !3317, !3318, !3319, !3320}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3306, file: !208, line: 1315, baseType: !3309)
!3309 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3310, line: 20, baseType: !3311)
!3310 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3310, line: 11, elements: !3312)
!3312 = !{!3313}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3311, file: !3310, line: 12, baseType: !3314)
!3314 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !762, line: 33, baseType: !3315)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !762, line: 31, elements: !764)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3306, file: !208, line: 1316, baseType: !313, size: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3306, file: !208, line: 1317, baseType: !313, size: 32, offset: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3306, file: !208, line: 1318, baseType: !3305, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3306, file: !208, line: 1319, baseType: !863, size: 64, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3306, file: !208, line: 1320, baseType: !876, size: 128, align: 64, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3288, file: !208, line: 1084, baseType: !669, size: 64, offset: 1152)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3288, file: !208, line: 1085, baseType: !669, size: 64, offset: 1216)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3288, file: !208, line: 1087, baseType: !3324, size: 64, offset: 1280)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3326)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !3327)
!3327 = !{!3328, !3332}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3326, file: !208, line: 1012, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{null, !3287, !3287}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3326, file: !208, line: 1013, baseType: !3333, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{null, !3287}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3288, file: !208, line: 1088, baseType: !3337, size: 64, offset: 1344)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3339)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !3340)
!3340 = !{!3341, !3345, !3349, !3350, !3354, !3358, !3362, !3366}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3339, file: !208, line: 1017, baseType: !3342, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!3273, !3273}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3339, file: !208, line: 1018, baseType: !3346, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{null, !3273}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3339, file: !208, line: 1019, baseType: !3333, size: 64, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3339, file: !208, line: 1020, baseType: !3351, size: 64, offset: 192)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!313, !3287, !313}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3339, file: !208, line: 1021, baseType: !3355, size: 64, offset: 256)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!505, !3287}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3339, file: !208, line: 1022, baseType: !3359, size: 64, offset: 320)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!313, !3287, !313, !725}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3339, file: !208, line: 1023, baseType: !3363, size: 64, offset: 384)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !3287, !1313}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3339, file: !208, line: 1024, baseType: !3355, size: 64, offset: 448)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3288, file: !208, line: 1097, baseType: !3368, size: 256, offset: 1408)
!3368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3288, file: !208, line: 1089, size: 256, elements: !3369)
!3369 = !{!3370, !3379, !3385}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3368, file: !208, line: 1090, baseType: !3371, size: 256)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3372, line: 10, size: 256, elements: !3373)
!3372 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3373 = !{!3374, !3375, !3378}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3371, file: !3372, line: 11, baseType: !440, size: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3371, file: !3372, line: 12, baseType: !3376, size: 64, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3372, line: 5, flags: DIFlagFwdDecl)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3371, file: !3372, line: 13, baseType: !722, size: 128, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3368, file: !208, line: 1091, baseType: !3380, size: 64)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3372, line: 17, size: 64, elements: !3381)
!3381 = !{!3382}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3380, file: !3372, line: 18, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3372, line: 16, flags: DIFlagFwdDecl)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3368, file: !208, line: 1096, baseType: !3386, size: 192)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3368, file: !208, line: 1092, size: 192, elements: !3387)
!3387 = !{!3388, !3389, !3390}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3386, file: !208, line: 1093, baseType: !722, size: 128)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3386, file: !208, line: 1094, baseType: !313, size: 32, offset: 128)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3386, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3202, file: !208, line: 1843, baseType: !3392, size: 64, offset: 1280)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!819, !863, !1217, !313, !833, !3213, !313}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3202, file: !208, line: 1844, baseType: !1511, size: 64, offset: 1344)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3202, file: !208, line: 1845, baseType: !3397, size: 64, offset: 1408)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!313, !313}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3202, file: !208, line: 1846, baseType: !3284, size: 64, offset: 1472)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3202, file: !208, line: 1847, baseType: !3402, size: 64, offset: 1536)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!819, !2497, !863, !3213, !833, !7}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3202, file: !208, line: 1848, baseType: !3406, size: 64, offset: 1600)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!819, !863, !3213, !2497, !833, !7}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3202, file: !208, line: 1849, baseType: !3410, size: 64, offset: 1664)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!313, !863, !664, !3413, !1313}
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3202, file: !208, line: 1850, baseType: !3415, size: 64, offset: 1728)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!664, !863, !313, !1029, !1029}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3202, file: !208, line: 1852, baseType: !3419, size: 64, offset: 1792)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{null, !1207, !863}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3202, file: !208, line: 1856, baseType: !3423, size: 64, offset: 1856)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!819, !863, !1029, !863, !1029, !833, !7}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3202, file: !208, line: 1858, baseType: !3427, size: 64, offset: 1920)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!1029, !863, !1029, !863, !1029, !1029, !7}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3202, file: !208, line: 1861, baseType: !3276, size: 64, offset: 1984)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3197, file: !208, line: 692, baseType: !1160, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !933, file: !208, line: 694, baseType: !3433, size: 64, offset: 2560)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !3435)
!3435 = !{!3436, !3437, !3438, !3439}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3434, file: !208, line: 1101, baseType: !750)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3434, file: !208, line: 1102, baseType: !722, size: 128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3434, file: !208, line: 1103, baseType: !722, size: 128, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3434, file: !208, line: 1104, baseType: !722, size: 128, offset: 256)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !933, file: !208, line: 695, baseType: !1231, size: 1216, align: 64, offset: 2624)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !933, file: !208, line: 696, baseType: !722, size: 128, offset: 3840)
!3442 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !208, line: 697, baseType: !3443, size: 64, offset: 3968)
!3443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !933, file: !208, line: 697, size: 64, elements: !3444)
!3444 = !{!3445, !3446, !3447, !3458, !3459}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3443, file: !208, line: 698, baseType: !2497, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3443, file: !208, line: 699, baseType: !2953, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3443, file: !208, line: 700, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3450, line: 14, size: 832, elements: !3451)
!3450 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3451 = !{!3452, !3453, !3454, !3455, !3456, !3457}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3449, file: !3450, line: 15, baseType: !737, size: 512)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3449, file: !3450, line: 16, baseType: !314, size: 64, offset: 512)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3449, file: !3450, line: 17, baseType: !3200, size: 64, offset: 576)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3449, file: !3450, line: 18, baseType: !722, size: 128, offset: 640)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3449, file: !3450, line: 19, baseType: !1011, size: 32, offset: 768)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3449, file: !3450, line: 20, baseType: !7, size: 32, offset: 800)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3443, file: !208, line: 701, baseType: !344, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3443, file: !208, line: 702, baseType: !7, size: 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !933, file: !208, line: 705, baseType: !441, size: 32, offset: 4032)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !933, file: !208, line: 708, baseType: !441, size: 32, offset: 4064)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !933, file: !208, line: 709, baseType: !3034, size: 64, offset: 4096)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !933, file: !208, line: 720, baseType: !312, size: 64, offset: 4160)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !894, file: !891, line: 98, baseType: !3465, size: 256, offset: 448)
!3465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 256, elements: !2629)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !894, file: !891, line: 101, baseType: !3467, size: 32, offset: 704)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3468, line: 25, size: 32, elements: !3469)
!3468 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3469 = !{!3470}
!3470 = !DIDerivedType(tag: DW_TAG_member, scope: !3467, file: !3468, line: 26, baseType: !3471, size: 32)
!3471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3467, file: !3468, line: 26, size: 32, elements: !3472)
!3472 = !{!3473}
!3473 = !DIDerivedType(tag: DW_TAG_member, scope: !3471, file: !3468, line: 30, baseType: !3474, size: 32)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3471, file: !3468, line: 30, size: 32, elements: !3475)
!3475 = !{!3476, !3477}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3474, file: !3468, line: 31, baseType: !750)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3474, file: !3468, line: 32, baseType: !313, size: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !894, file: !891, line: 102, baseType: !3051, size: 64, offset: 768)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !894, file: !891, line: 103, baseType: !1095, size: 64, offset: 832)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !894, file: !891, line: 104, baseType: !669, size: 64, offset: 896)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !894, file: !891, line: 105, baseType: !312, size: 64, offset: 960)
!3482 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !891, line: 107, baseType: !3483, size: 128, offset: 1024)
!3483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !894, file: !891, line: 107, size: 128, elements: !3484)
!3484 = !{!3485, !3486}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3483, file: !891, line: 108, baseType: !722, size: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3483, file: !891, line: 109, baseType: !3253, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !894, file: !891, line: 111, baseType: !722, size: 128, offset: 1152)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !894, file: !891, line: 112, baseType: !722, size: 128, offset: 1280)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !894, file: !891, line: 120, baseType: !3490, size: 128, offset: 1408)
!3490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !894, file: !891, line: 116, size: 128, elements: !3491)
!3491 = !{!3492, !3493, !3494}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3490, file: !891, line: 117, baseType: !1135, size: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3490, file: !891, line: 118, baseType: !908, size: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3490, file: !891, line: 119, baseType: !876, size: 128, align: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !864, file: !208, line: 922, baseType: !932, size: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !864, file: !208, line: 923, baseType: !3200, size: 64, offset: 320)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !864, file: !208, line: 929, baseType: !750, offset: 384)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !864, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !864, file: !208, line: 931, baseType: !1263, size: 64, offset: 448)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !864, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !864, file: !208, line: 933, baseType: !3047, size: 32, offset: 544)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !864, file: !208, line: 934, baseType: !1581, size: 192, offset: 576)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !864, file: !208, line: 935, baseType: !1029, size: 64, offset: 768)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !864, file: !208, line: 936, baseType: !3505, size: 192, offset: 832)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !3506)
!3506 = !{!3507, !3508, !3509, !3510, !3511, !3512}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3505, file: !208, line: 886, baseType: !3309)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3505, file: !208, line: 887, baseType: !1872, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3505, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3505, file: !208, line: 889, baseType: !938, size: 32, offset: 96)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3505, file: !208, line: 889, baseType: !938, size: 32, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3505, file: !208, line: 890, baseType: !313, size: 32, offset: 160)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !864, file: !208, line: 937, baseType: !1948, size: 64, offset: 1024)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !864, file: !208, line: 938, baseType: !3515, size: 256, offset: 1088)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !3516)
!3516 = !{!3517, !3518, !3519, !3520, !3521, !3522}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3515, file: !208, line: 897, baseType: !669, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3515, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3515, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3515, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3515, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3515, file: !208, line: 904, baseType: !1029, size: 64, offset: 192)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !864, file: !208, line: 940, baseType: !699, size: 64, offset: 1344)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !864, file: !208, line: 945, baseType: !312, size: 64, offset: 1408)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !864, file: !208, line: 949, baseType: !722, size: 128, offset: 1472)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !864, file: !208, line: 950, baseType: !722, size: 128, offset: 1600)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !864, file: !208, line: 952, baseType: !1230, size: 64, offset: 1728)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !864, file: !208, line: 953, baseType: !1399, size: 32, offset: 1792)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !864, file: !208, line: 954, baseType: !1399, size: 32, offset: 1824)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !854, file: !813, line: 174, baseType: !860, size: 64, offset: 320)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !854, file: !813, line: 176, baseType: !3532, size: 64, offset: 384)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!313, !863, !743, !853, !1471}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !842, file: !813, line: 90, baseType: !837, size: 64, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !842, file: !813, line: 91, baseType: !3537, size: 64, offset: 256)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !803, file: !738, line: 143, baseType: !3539, size: 64, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!3542, !743}
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3544)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !3545)
!3545 = !{!3546, !3547, !3551, !3555, !3561, !3565}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3544, file: !225, line: 40, baseType: !224, size: 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3544, file: !225, line: 41, baseType: !3548, size: 64, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!505}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3544, file: !225, line: 42, baseType: !3552, size: 64, offset: 128)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!312}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3544, file: !225, line: 43, baseType: !3556, size: 64, offset: 192)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!2526, !3559}
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3544, file: !225, line: 44, baseType: !3562, size: 64, offset: 256)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!2526}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3544, file: !225, line: 45, baseType: !346, size: 64, offset: 320)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !803, file: !738, line: 144, baseType: !3567, size: 64, offset: 320)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!2526, !743}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !803, file: !738, line: 145, baseType: !3571, size: 64, offset: 384)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{null, !743, !3574, !3575}
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !737, file: !738, line: 70, baseType: !3577, size: 64, offset: 384)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1115, line: 123, size: 1024, elements: !3579)
!3579 = !{!3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3708, !3709, !3710, !3711, !3712}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3578, file: !1115, line: 124, baseType: !464, size: 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3578, file: !1115, line: 125, baseType: !464, size: 32, offset: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3578, file: !1115, line: 135, baseType: !3577, size: 64, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3578, file: !1115, line: 136, baseType: !325, size: 64, offset: 128)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3578, file: !1115, line: 138, baseType: !1252, size: 192, align: 64, offset: 192)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3578, file: !1115, line: 140, baseType: !2526, size: 64, offset: 384)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3578, file: !1115, line: 141, baseType: !7, size: 32, offset: 448)
!3587 = !DIDerivedType(tag: DW_TAG_member, scope: !3578, file: !1115, line: 142, baseType: !3588, size: 256, offset: 512)
!3588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3578, file: !1115, line: 142, size: 256, elements: !3589)
!3589 = !{!3590, !3636, !3640}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3588, file: !1115, line: 143, baseType: !3591, size: 192)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1115, line: 91, size: 192, elements: !3592)
!3592 = !{!3593, !3594, !3595}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3591, file: !1115, line: 92, baseType: !669, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3591, file: !1115, line: 94, baseType: !1248, size: 64, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3591, file: !1115, line: 100, baseType: !3596, size: 64, offset: 128)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1115, line: 180, size: 704, elements: !3598)
!3598 = !{!3599, !3600, !3601, !3608, !3609, !3610, !3634, !3635}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3597, file: !1115, line: 182, baseType: !3577, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3597, file: !1115, line: 183, baseType: !7, size: 32, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3597, file: !1115, line: 186, baseType: !3602, size: 192, offset: 128)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3603, line: 19, size: 192, elements: !3604)
!3603 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3604 = !{!3605, !3606, !3607}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3602, file: !3603, line: 20, baseType: !1235, size: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3602, file: !3603, line: 21, baseType: !7, size: 32, offset: 128)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3602, file: !3603, line: 22, baseType: !7, size: 32, offset: 160)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3597, file: !1115, line: 187, baseType: !440, size: 32, offset: 320)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3597, file: !1115, line: 188, baseType: !440, size: 32, offset: 352)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3597, file: !1115, line: 189, baseType: !3611, size: 64, offset: 384)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1115, line: 168, size: 320, elements: !3613)
!3613 = !{!3614, !3618, !3622, !3626, !3630}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3612, file: !1115, line: 169, baseType: !3615, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!313, !1207, !3596}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3612, file: !1115, line: 171, baseType: !3619, size: 64, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!313, !3577, !325, !828}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3612, file: !1115, line: 173, baseType: !3623, size: 64, offset: 128)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!313, !3577}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3612, file: !1115, line: 174, baseType: !3627, size: 64, offset: 192)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!313, !3577, !3577, !325}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3612, file: !1115, line: 176, baseType: !3631, size: 64, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!313, !1207, !3577, !3596}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3597, file: !1115, line: 192, baseType: !722, size: 128, offset: 448)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3597, file: !1115, line: 194, baseType: !1882, size: 128, offset: 576)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3588, file: !1115, line: 144, baseType: !3637, size: 64)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1115, line: 103, size: 64, elements: !3638)
!3638 = !{!3639}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3637, file: !1115, line: 104, baseType: !3577, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3588, file: !1115, line: 145, baseType: !3641, size: 256)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1115, line: 107, size: 256, elements: !3642)
!3642 = !{!3643, !3703, !3706, !3707}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3641, file: !1115, line: 108, baseType: !3644, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3646)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1115, line: 217, size: 768, elements: !3647)
!3647 = !{!3648, !3668, !3672, !3676, !3680, !3684, !3688, !3692, !3693, !3694, !3695, !3699}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3646, file: !1115, line: 222, baseType: !3649, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!313, !3652}
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1115, line: 197, size: 1088, elements: !3654)
!3654 = !{!3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3653, file: !1115, line: 199, baseType: !3577, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3653, file: !1115, line: 200, baseType: !863, size: 64, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3653, file: !1115, line: 201, baseType: !1207, size: 64, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3653, file: !1115, line: 202, baseType: !312, size: 64, offset: 192)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3653, file: !1115, line: 205, baseType: !1581, size: 192, offset: 256)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3653, file: !1115, line: 206, baseType: !1581, size: 192, offset: 448)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3653, file: !1115, line: 207, baseType: !313, size: 32, offset: 640)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3653, file: !1115, line: 208, baseType: !722, size: 128, offset: 704)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3653, file: !1115, line: 209, baseType: !344, size: 64, offset: 832)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3653, file: !1115, line: 211, baseType: !833, size: 64, offset: 896)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3653, file: !1115, line: 212, baseType: !505, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3653, file: !1115, line: 213, baseType: !505, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3653, file: !1115, line: 214, baseType: !1499, size: 64, offset: 1024)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3646, file: !1115, line: 223, baseType: !3669, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{null, !3652}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3646, file: !1115, line: 236, baseType: !3673, size: 64, offset: 128)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!313, !1207, !312}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3646, file: !1115, line: 238, baseType: !3677, size: 64, offset: 192)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!312, !1207, !3213}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3646, file: !1115, line: 239, baseType: !3681, size: 64, offset: 256)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!312, !1207, !312, !3213}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3646, file: !1115, line: 240, baseType: !3685, size: 64, offset: 320)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{null, !1207, !312}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3646, file: !1115, line: 242, baseType: !3689, size: 64, offset: 384)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!819, !3652, !344, !833, !1029}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3646, file: !1115, line: 252, baseType: !833, size: 64, offset: 448)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3646, file: !1115, line: 259, baseType: !505, size: 8, offset: 512)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3646, file: !1115, line: 260, baseType: !3689, size: 64, offset: 576)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3646, file: !1115, line: 263, baseType: !3696, size: 64, offset: 640)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!3242, !3652, !3244}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3646, file: !1115, line: 266, baseType: !3700, size: 64, offset: 704)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!313, !3652, !1471}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3641, file: !1115, line: 109, baseType: !3704, size: 64, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1115, line: 31, flags: DIFlagFwdDecl)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3641, file: !1115, line: 110, baseType: !1029, size: 64, offset: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3641, file: !1115, line: 111, baseType: !3577, size: 64, offset: 192)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3578, file: !1115, line: 148, baseType: !312, size: 64, offset: 768)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3578, file: !1115, line: 154, baseType: !699, size: 64, offset: 832)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3578, file: !1115, line: 156, baseType: !355, size: 16, offset: 896)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3578, file: !1115, line: 157, baseType: !828, size: 16, offset: 912)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3578, file: !1115, line: 158, baseType: !3713, size: 64, offset: 960)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1115, line: 32, flags: DIFlagFwdDecl)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !737, file: !738, line: 71, baseType: !455, size: 32, offset: 448)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !737, file: !738, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !737, file: !738, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !737, file: !738, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !737, file: !738, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !737, file: !738, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !734, file: !237, line: 463, baseType: !733, size: 64, offset: 512)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !734, file: !237, line: 465, baseType: !3723, size: 64, offset: 576)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !734, file: !237, line: 467, baseType: !325, size: 64, offset: 640)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !734, file: !237, line: 468, baseType: !3727, size: 64, offset: 704)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3729)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3730)
!3730 = !{!3731, !3732, !3733, !3737, !3742, !3746}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3729, file: !237, line: 88, baseType: !325, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3729, file: !237, line: 89, baseType: !839, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3729, file: !237, line: 90, baseType: !3734, size: 64, offset: 128)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!313, !733, !786}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3729, file: !237, line: 91, baseType: !3738, size: 64, offset: 192)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!344, !733, !3741, !3574, !3575}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3729, file: !237, line: 93, baseType: !3743, size: 64, offset: 256)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{null, !733}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3729, file: !237, line: 95, baseType: !3747, size: 64, offset: 320)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3749)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3750)
!3750 = !{!3751, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3749, file: !244, line: 279, baseType: !3752, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!313, !733}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3749, file: !244, line: 280, baseType: !3743, size: 64, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3749, file: !244, line: 281, baseType: !3752, size: 64, offset: 128)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3749, file: !244, line: 282, baseType: !3752, size: 64, offset: 192)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3749, file: !244, line: 283, baseType: !3752, size: 64, offset: 256)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3749, file: !244, line: 284, baseType: !3752, size: 64, offset: 320)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3749, file: !244, line: 285, baseType: !3752, size: 64, offset: 384)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3749, file: !244, line: 286, baseType: !3752, size: 64, offset: 448)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3749, file: !244, line: 287, baseType: !3752, size: 64, offset: 512)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3749, file: !244, line: 288, baseType: !3752, size: 64, offset: 576)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3749, file: !244, line: 289, baseType: !3752, size: 64, offset: 640)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3749, file: !244, line: 290, baseType: !3752, size: 64, offset: 704)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3749, file: !244, line: 291, baseType: !3752, size: 64, offset: 768)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3749, file: !244, line: 292, baseType: !3752, size: 64, offset: 832)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3749, file: !244, line: 293, baseType: !3752, size: 64, offset: 896)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3749, file: !244, line: 294, baseType: !3752, size: 64, offset: 960)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3749, file: !244, line: 295, baseType: !3752, size: 64, offset: 1024)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3749, file: !244, line: 296, baseType: !3752, size: 64, offset: 1088)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3749, file: !244, line: 297, baseType: !3752, size: 64, offset: 1152)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3749, file: !244, line: 298, baseType: !3752, size: 64, offset: 1216)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3749, file: !244, line: 299, baseType: !3752, size: 64, offset: 1280)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3749, file: !244, line: 300, baseType: !3752, size: 64, offset: 1344)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3749, file: !244, line: 301, baseType: !3752, size: 64, offset: 1408)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !734, file: !237, line: 470, baseType: !3778, size: 64, offset: 768)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3780, line: 82, size: 1408, elements: !3781)
!3780 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3781 = !{!3782, !3783, !3784, !3785, !3786, !3787, !3788, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3860, !3863, !3864}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3779, file: !3780, line: 83, baseType: !325, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3779, file: !3780, line: 84, baseType: !325, size: 64, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3779, file: !3780, line: 85, baseType: !733, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3779, file: !3780, line: 86, baseType: !839, size: 64, offset: 192)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3779, file: !3780, line: 87, baseType: !839, size: 64, offset: 256)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3779, file: !3780, line: 88, baseType: !839, size: 64, offset: 320)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3779, file: !3780, line: 90, baseType: !3789, size: 64, offset: 384)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!313, !733, !3792}
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3794)
!3794 = !{!3795, !3796, !3797, !3798, !3799, !3800, !3801, !3811, !3824, !3825, !3826, !3827, !3828, !3836, !3837, !3838, !3839, !3840, !3841}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3793, file: !231, line: 96, baseType: !325, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3793, file: !231, line: 97, baseType: !3778, size: 64, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3793, file: !231, line: 99, baseType: !314, size: 64, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3793, file: !231, line: 100, baseType: !325, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3793, file: !231, line: 102, baseType: !505, size: 8, offset: 256)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3793, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3793, file: !231, line: 105, baseType: !3802, size: 64, offset: 320)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3804)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3805, line: 262, size: 1600, elements: !3806)
!3805 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3806 = !{!3807, !3808, !3809, !3810}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3804, file: !3805, line: 263, baseType: !3037, size: 256)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3804, file: !3805, line: 264, baseType: !3037, size: 256, offset: 256)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3804, file: !3805, line: 265, baseType: !436, size: 1024, offset: 512)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3804, file: !3805, line: 266, baseType: !2526, size: 64, offset: 1536)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3793, file: !231, line: 106, baseType: !3812, size: 64, offset: 384)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3814)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3805, line: 210, size: 256, elements: !3815)
!3815 = !{!3816, !3820, !3822, !3823}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3814, file: !3805, line: 211, baseType: !3817, size: 72)
!3817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 72, elements: !3818)
!3818 = !{!3819}
!3819 = !DISubrange(count: 9)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3814, file: !3805, line: 212, baseType: !3821, size: 64, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3805, line: 14, baseType: !669)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3814, file: !3805, line: 213, baseType: !441, size: 32, offset: 192)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3814, file: !3805, line: 214, baseType: !441, size: 32, offset: 224)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3793, file: !231, line: 108, baseType: !3752, size: 64, offset: 448)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3793, file: !231, line: 109, baseType: !3743, size: 64, offset: 512)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3793, file: !231, line: 110, baseType: !3752, size: 64, offset: 576)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3793, file: !231, line: 111, baseType: !3743, size: 64, offset: 640)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3793, file: !231, line: 112, baseType: !3829, size: 64, offset: 704)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!313, !733, !3832}
!3832 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3833)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3834)
!3834 = !{!3835}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3833, file: !244, line: 51, baseType: !313, size: 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3793, file: !231, line: 113, baseType: !3752, size: 64, offset: 768)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3793, file: !231, line: 114, baseType: !839, size: 64, offset: 832)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3793, file: !231, line: 115, baseType: !839, size: 64, offset: 896)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3793, file: !231, line: 117, baseType: !3747, size: 64, offset: 960)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3793, file: !231, line: 118, baseType: !3743, size: 64, offset: 1024)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3793, file: !231, line: 120, baseType: !3842, size: 64, offset: 1088)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3779, file: !3780, line: 91, baseType: !3734, size: 64, offset: 448)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3779, file: !3780, line: 92, baseType: !3752, size: 64, offset: 512)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3779, file: !3780, line: 93, baseType: !3743, size: 64, offset: 576)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3779, file: !3780, line: 94, baseType: !3752, size: 64, offset: 640)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3779, file: !3780, line: 95, baseType: !3743, size: 64, offset: 704)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3779, file: !3780, line: 97, baseType: !3752, size: 64, offset: 768)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3779, file: !3780, line: 98, baseType: !3752, size: 64, offset: 832)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3779, file: !3780, line: 100, baseType: !3829, size: 64, offset: 896)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3779, file: !3780, line: 101, baseType: !3752, size: 64, offset: 960)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3779, file: !3780, line: 103, baseType: !3752, size: 64, offset: 1024)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3779, file: !3780, line: 105, baseType: !3752, size: 64, offset: 1088)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3779, file: !3780, line: 107, baseType: !3747, size: 64, offset: 1152)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3779, file: !3780, line: 109, baseType: !3857, size: 64, offset: 1216)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3859)
!3859 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3780, line: 109, flags: DIFlagFwdDecl)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3779, file: !3780, line: 111, baseType: !3861, size: 64, offset: 1280)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3780, line: 111, flags: DIFlagFwdDecl)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3779, file: !3780, line: 112, baseType: !1141, offset: 1344)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3779, file: !3780, line: 114, baseType: !505, size: 8, offset: 1344)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !734, file: !237, line: 471, baseType: !3792, size: 64, offset: 832)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !734, file: !237, line: 473, baseType: !312, size: 64, offset: 896)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !734, file: !237, line: 475, baseType: !312, size: 64, offset: 960)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !734, file: !237, line: 480, baseType: !1581, size: 192, offset: 1024)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !734, file: !237, line: 484, baseType: !3870, size: 576, offset: 1216)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3871)
!3871 = !{!3872, !3873, !3874, !3875, !3876, !3877}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3870, file: !237, line: 362, baseType: !722, size: 128)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3870, file: !237, line: 363, baseType: !722, size: 128, offset: 128)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3870, file: !237, line: 364, baseType: !722, size: 128, offset: 256)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3870, file: !237, line: 365, baseType: !722, size: 128, offset: 384)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3870, file: !237, line: 366, baseType: !505, size: 8, offset: 512)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3870, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !734, file: !237, line: 485, baseType: !3879, size: 2304, offset: 1792)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3880)
!3880 = !{!3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3976, !3980}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3879, file: !244, line: 566, baseType: !3832, size: 32)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3879, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3879, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3879, file: !244, line: 569, baseType: !505, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3879, file: !244, line: 570, baseType: !505, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3879, file: !244, line: 571, baseType: !505, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3879, file: !244, line: 572, baseType: !505, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3879, file: !244, line: 573, baseType: !505, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3879, file: !244, line: 574, baseType: !505, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3879, file: !244, line: 575, baseType: !505, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3879, file: !244, line: 576, baseType: !505, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3879, file: !244, line: 577, baseType: !440, size: 32, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3879, file: !244, line: 578, baseType: !750, offset: 96)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3879, file: !244, line: 580, baseType: !722, size: 128, offset: 128)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3879, file: !244, line: 581, baseType: !1903, size: 192, offset: 256)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3879, file: !244, line: 582, baseType: !3897, size: 64, offset: 448)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3899, line: 43, size: 1472, elements: !3900)
!3899 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3900 = !{!3901, !3902, !3903, !3904, !3905, !3908, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3898, file: !3899, line: 44, baseType: !325, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3898, file: !3899, line: 45, baseType: !313, size: 32, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3898, file: !3899, line: 46, baseType: !722, size: 128, offset: 128)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3898, file: !3899, line: 47, baseType: !750, offset: 256)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3898, file: !3899, line: 48, baseType: !3906, size: 64, offset: 256)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3898, file: !3899, line: 49, baseType: !3909, size: 320, offset: 320)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3910, line: 11, size: 320, elements: !3911)
!3910 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3911 = !{!3912, !3913, !3914, !3919}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3909, file: !3910, line: 16, baseType: !1135, size: 128)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3909, file: !3910, line: 17, baseType: !669, size: 64, offset: 128)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3909, file: !3910, line: 18, baseType: !3915, size: 64, offset: 192)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{null, !3918}
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3909, file: !3910, line: 19, baseType: !440, size: 32, offset: 256)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3898, file: !3899, line: 50, baseType: !669, size: 64, offset: 640)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3898, file: !3899, line: 51, baseType: !1703, size: 64, offset: 704)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3898, file: !3899, line: 52, baseType: !1703, size: 64, offset: 768)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3898, file: !3899, line: 53, baseType: !1703, size: 64, offset: 832)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3898, file: !3899, line: 54, baseType: !1703, size: 64, offset: 896)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3898, file: !3899, line: 55, baseType: !1703, size: 64, offset: 960)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3898, file: !3899, line: 56, baseType: !669, size: 64, offset: 1024)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3898, file: !3899, line: 57, baseType: !669, size: 64, offset: 1088)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3898, file: !3899, line: 58, baseType: !669, size: 64, offset: 1152)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3898, file: !3899, line: 59, baseType: !669, size: 64, offset: 1216)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3898, file: !3899, line: 60, baseType: !669, size: 64, offset: 1280)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3898, file: !3899, line: 61, baseType: !733, size: 64, offset: 1344)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3898, file: !3899, line: 62, baseType: !505, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3898, file: !3899, line: 63, baseType: !505, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3879, file: !244, line: 583, baseType: !505, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3879, file: !244, line: 584, baseType: !505, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3879, file: !244, line: 585, baseType: !505, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3879, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3879, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3879, file: !244, line: 592, baseType: !1695, size: 512, offset: 576)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3879, file: !244, line: 593, baseType: !699, size: 64, offset: 1088)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3879, file: !244, line: 594, baseType: !2356, size: 256, offset: 1152)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3879, file: !244, line: 595, baseType: !1882, size: 128, offset: 1408)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3879, file: !244, line: 596, baseType: !3906, size: 64, offset: 1536)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3879, file: !244, line: 597, baseType: !464, size: 32, offset: 1600)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3879, file: !244, line: 598, baseType: !464, size: 32, offset: 1632)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3879, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3879, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3879, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3879, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3879, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3879, file: !244, line: 604, baseType: !505, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3879, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3879, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3879, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3879, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3879, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3879, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3879, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3879, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3879, file: !244, line: 613, baseType: !313, size: 32, offset: 1792)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3879, file: !244, line: 614, baseType: !313, size: 32, offset: 1824)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3879, file: !244, line: 615, baseType: !699, size: 64, offset: 1856)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3879, file: !244, line: 616, baseType: !699, size: 64, offset: 1920)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3879, file: !244, line: 617, baseType: !699, size: 64, offset: 1984)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3879, file: !244, line: 618, baseType: !699, size: 64, offset: 2048)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3879, file: !244, line: 620, baseType: !3967, size: 64, offset: 2112)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3969)
!3969 = !{!3970, !3971, !3972, !3973}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3968, file: !244, line: 537, baseType: !750)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3968, file: !244, line: 538, baseType: !7, size: 32)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3968, file: !244, line: 540, baseType: !722, size: 128, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3968, file: !244, line: 543, baseType: !3974, size: 64, offset: 192)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3879, file: !244, line: 621, baseType: !3977, size: 64, offset: 2176)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{null, !733, !706}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3879, file: !244, line: 622, baseType: !3981, size: 64, offset: 2240)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !734, file: !237, line: 486, baseType: !3984, size: 64, offset: 4096)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3986)
!3986 = !{!3987, !3988, !3989, !3993, !3994, !3995}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3985, file: !244, line: 643, baseType: !3749, size: 1472)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3985, file: !244, line: 644, baseType: !3752, size: 64, offset: 1472)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3985, file: !244, line: 645, baseType: !3990, size: 64, offset: 1536)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{null, !733, !505}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3985, file: !244, line: 646, baseType: !3752, size: 64, offset: 1600)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3985, file: !244, line: 647, baseType: !3743, size: 64, offset: 1664)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3985, file: !244, line: 648, baseType: !3743, size: 64, offset: 1728)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !734, file: !237, line: 493, baseType: !3997, size: 64, offset: 4160)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3999)
!3999 = !{!4000, !4001, !4002, !4175, !4176, !4177, !4178, !4179, !4180, !4183, !4184, !4185, !4186, !4187, !4188, !4189}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3998, file: !258, line: 163, baseType: !722, size: 128)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3998, file: !258, line: 164, baseType: !325, size: 64, offset: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3998, file: !258, line: 165, baseType: !4003, size: 64, offset: 192)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4005)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !4006)
!4006 = !{!4007, !4125, !4136, !4141, !4145, !4152, !4156, !4160, !4167, !4171}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4005, file: !258, line: 106, baseType: !4008, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!313, !3997, !4011, !257}
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4013, line: 51, size: 1344, elements: !4014)
!4013 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!4014 = !{!4015, !4016, !4018, !4019, !4109, !4118, !4119, !4120, !4121, !4122, !4123, !4124}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4012, file: !4013, line: 52, baseType: !325, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4012, file: !4013, line: 53, baseType: !4017, size: 32, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4013, line: 28, baseType: !440)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4012, file: !4013, line: 54, baseType: !325, size: 64, offset: 128)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4012, file: !4013, line: 55, baseType: !4020, size: 192, offset: 192)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4021, line: 17, size: 192, elements: !4022)
!4021 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!4022 = !{!4023, !4025, !4108}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4020, file: !4021, line: 18, baseType: !4024, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4020, file: !4021, line: 19, baseType: !4026, size: 64, offset: 64)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4028)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4021, line: 110, size: 1152, elements: !4029)
!4029 = !{!4030, !4034, !4038, !4044, !4050, !4054, !4058, !4063, !4067, !4068, !4072, !4076, !4080, !4091, !4092, !4093, !4094, !4104}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4028, file: !4021, line: 111, baseType: !4031, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!4024, !4024}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4028, file: !4021, line: 112, baseType: !4035, size: 64, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{null, !4024}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4028, file: !4021, line: 113, baseType: !4039, size: 64, offset: 128)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!505, !4042}
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4020)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4028, file: !4021, line: 114, baseType: !4045, size: 64, offset: 192)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!2526, !4042, !4048}
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !734)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4028, file: !4021, line: 116, baseType: !4051, size: 64, offset: 256)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!505, !4042, !325}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4028, file: !4021, line: 118, baseType: !4055, size: 64, offset: 320)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!313, !4042, !325, !7, !312, !833}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4028, file: !4021, line: 123, baseType: !4059, size: 64, offset: 384)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!313, !4042, !325, !4062, !833}
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4028, file: !4021, line: 126, baseType: !4064, size: 64, offset: 448)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!325, !4042}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4028, file: !4021, line: 127, baseType: !4064, size: 64, offset: 512)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4028, file: !4021, line: 128, baseType: !4069, size: 64, offset: 576)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!4024, !4042}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4028, file: !4021, line: 130, baseType: !4073, size: 64, offset: 640)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!4024, !4042, !4024}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4028, file: !4021, line: 133, baseType: !4077, size: 64, offset: 704)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!4024, !4042, !325}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4028, file: !4021, line: 135, baseType: !4081, size: 64, offset: 768)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!313, !4042, !325, !325, !7, !7, !4084}
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4021, line: 43, size: 640, elements: !4086)
!4086 = !{!4087, !4088, !4089}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4085, file: !4021, line: 44, baseType: !4024, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4085, file: !4021, line: 45, baseType: !7, size: 32, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4085, file: !4021, line: 46, baseType: !4090, size: 512, offset: 128)
!4090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 512, elements: !485)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4028, file: !4021, line: 140, baseType: !4073, size: 64, offset: 832)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4028, file: !4021, line: 143, baseType: !4069, size: 64, offset: 896)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4028, file: !4021, line: 145, baseType: !4031, size: 64, offset: 960)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4028, file: !4021, line: 146, baseType: !4095, size: 64, offset: 1024)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!313, !4042, !4098}
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4021, line: 29, size: 128, elements: !4100)
!4100 = !{!4101, !4102, !4103}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4099, file: !4021, line: 30, baseType: !7, size: 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4099, file: !4021, line: 31, baseType: !7, size: 32, offset: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4099, file: !4021, line: 32, baseType: !4042, size: 64, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4028, file: !4021, line: 148, baseType: !4105, size: 64, offset: 1088)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!313, !4042, !733}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4020, file: !4021, line: 20, baseType: !733, size: 64, offset: 128)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4012, file: !4013, line: 57, baseType: !4110, size: 64, offset: 384)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4013, line: 31, size: 704, elements: !4112)
!4112 = !{!4113, !4114, !4115, !4116, !4117}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4111, file: !4013, line: 32, baseType: !344, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4111, file: !4013, line: 33, baseType: !313, size: 32, offset: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4111, file: !4013, line: 34, baseType: !312, size: 64, offset: 128)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4111, file: !4013, line: 35, baseType: !4110, size: 64, offset: 192)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4111, file: !4013, line: 43, baseType: !854, size: 448, offset: 256)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4012, file: !4013, line: 58, baseType: !4110, size: 64, offset: 448)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4012, file: !4013, line: 59, baseType: !4011, size: 64, offset: 512)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4012, file: !4013, line: 60, baseType: !4011, size: 64, offset: 576)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4012, file: !4013, line: 61, baseType: !4011, size: 64, offset: 640)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4012, file: !4013, line: 63, baseType: !737, size: 512, offset: 704)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4012, file: !4013, line: 65, baseType: !669, size: 64, offset: 1216)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4012, file: !4013, line: 66, baseType: !312, size: 64, offset: 1280)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !4005, file: !258, line: 108, baseType: !4126, size: 64, offset: 64)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!313, !3997, !4129, !257}
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !4131)
!4131 = !{!4132, !4133, !4134}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4130, file: !258, line: 64, baseType: !4024, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4130, file: !258, line: 65, baseType: !313, size: 32, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4130, file: !258, line: 66, baseType: !4135, size: 512, offset: 96)
!4135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 512, elements: !2134)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4005, file: !258, line: 110, baseType: !4137, size: 64, offset: 128)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!313, !3997, !7, !4140}
!4140 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !311, line: 164, baseType: !669)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4005, file: !258, line: 111, baseType: !4142, size: 64, offset: 192)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{null, !3997, !7}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !4005, file: !258, line: 112, baseType: !4146, size: 64, offset: 256)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!313, !3997, !4011, !4149, !7, !4151, !383}
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4005, file: !258, line: 117, baseType: !4153, size: 64, offset: 320)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!313, !3997, !7, !7, !312}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4005, file: !258, line: 119, baseType: !4157, size: 64, offset: 384)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{null, !3997, !7, !7}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4005, file: !258, line: 121, baseType: !4161, size: 64, offset: 448)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!313, !3997, !4164, !505}
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4166, line: 11, flags: DIFlagFwdDecl)
!4166 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4005, file: !258, line: 122, baseType: !4168, size: 64, offset: 512)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{null, !3997, !4164}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !4005, file: !258, line: 123, baseType: !4172, size: 64, offset: 576)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!313, !3997, !4129, !4151, !383}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3998, file: !258, line: 166, baseType: !312, size: 64, offset: 256)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3998, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3998, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3998, file: !258, line: 171, baseType: !4024, size: 64, offset: 384)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3998, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3998, file: !258, line: 173, baseType: !4181, size: 64, offset: 512)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3998, file: !258, line: 175, baseType: !3997, size: 64, offset: 576)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3998, file: !258, line: 182, baseType: !4140, size: 64, offset: 640)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3998, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3998, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3998, file: !258, line: 185, baseType: !1235, size: 128, offset: 768)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3998, file: !258, line: 186, baseType: !1581, size: 192, offset: 896)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3998, file: !258, line: 187, baseType: !4190, offset: 1088)
!4190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2730)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !734, file: !237, line: 499, baseType: !722, size: 128, offset: 4224)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !734, file: !237, line: 502, baseType: !4193, size: 64, offset: 4352)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4195)
!4195 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !734, file: !237, line: 504, baseType: !4197, size: 64, offset: 4416)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !734, file: !237, line: 505, baseType: !699, size: 64, offset: 4480)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !734, file: !237, line: 510, baseType: !699, size: 64, offset: 4544)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !734, file: !237, line: 511, baseType: !4201, size: 64, offset: 4608)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4203)
!4203 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !734, file: !237, line: 513, baseType: !4205, size: 64, offset: 4672)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !4207)
!4207 = !{!4208, !4209}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4206, file: !237, line: 293, baseType: !7, size: 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4206, file: !237, line: 294, baseType: !669, size: 64, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !734, file: !237, line: 515, baseType: !722, size: 128, offset: 4736)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !734, file: !237, line: 526, baseType: !4212, offset: 4864)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4213, line: 5, elements: !764)
!4213 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !734, file: !237, line: 528, baseType: !4011, size: 64, offset: 4864)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !734, file: !237, line: 529, baseType: !4024, size: 64, offset: 4928)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !734, file: !237, line: 534, baseType: !1011, size: 32, offset: 4992)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !734, file: !237, line: 535, baseType: !440, size: 32, offset: 5024)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !734, file: !237, line: 537, baseType: !750, offset: 5056)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !734, file: !237, line: 538, baseType: !722, size: 128, offset: 5056)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !734, file: !237, line: 540, baseType: !4221, size: 64, offset: 5184)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4223, line: 54, size: 960, elements: !4224)
!4223 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4224 = !{!4225, !4226, !4227, !4228, !4229, !4230, !4231, !4235, !4239, !4240, !4241, !4242, !4246, !4250, !4251}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4222, file: !4223, line: 55, baseType: !325, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4222, file: !4223, line: 56, baseType: !314, size: 64, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4222, file: !4223, line: 58, baseType: !839, size: 64, offset: 128)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4222, file: !4223, line: 59, baseType: !839, size: 64, offset: 192)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4222, file: !4223, line: 60, baseType: !743, size: 64, offset: 256)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4222, file: !4223, line: 62, baseType: !3734, size: 64, offset: 320)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4222, file: !4223, line: 63, baseType: !4232, size: 64, offset: 384)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!344, !733, !3741}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4222, file: !4223, line: 65, baseType: !4236, size: 64, offset: 448)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{null, !4221}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4222, file: !4223, line: 66, baseType: !3743, size: 64, offset: 512)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4222, file: !4223, line: 68, baseType: !3752, size: 64, offset: 576)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4222, file: !4223, line: 70, baseType: !3542, size: 64, offset: 640)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4222, file: !4223, line: 71, baseType: !4243, size: 64, offset: 704)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!2526, !733}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4222, file: !4223, line: 73, baseType: !4247, size: 64, offset: 768)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{null, !733, !3574, !3575}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4222, file: !4223, line: 75, baseType: !3747, size: 64, offset: 832)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4222, file: !4223, line: 77, baseType: !3861, size: 64, offset: 896)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !734, file: !237, line: 541, baseType: !839, size: 64, offset: 5248)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !734, file: !237, line: 543, baseType: !3743, size: 64, offset: 5312)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !734, file: !237, line: 544, baseType: !4255, size: 64, offset: 5376)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !734, file: !237, line: 545, baseType: !4258, size: 64, offset: 5440)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !734, file: !237, line: 547, baseType: !505, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !734, file: !237, line: 548, baseType: !505, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !734, file: !237, line: 549, baseType: !505, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !734, file: !237, line: 550, baseType: !505, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !718, file: !272, line: 111, baseType: !314, size: 64, offset: 576)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !718, file: !272, line: 113, baseType: !313, size: 32, offset: 640)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !718, file: !272, line: 114, baseType: !4267, size: 64, offset: 704)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4269)
!4269 = !{!4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4284}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4268, file: !272, line: 158, baseType: !722, size: 128)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4268, file: !272, line: 159, baseType: !3200, size: 64, offset: 128)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4268, file: !272, line: 160, baseType: !717, size: 64, offset: 192)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4268, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4268, file: !272, line: 162, baseType: !313, size: 32, offset: 288)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4268, file: !272, line: 163, baseType: !440, size: 32, offset: 320)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4268, file: !272, line: 167, baseType: !313, size: 32, offset: 352)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4268, file: !272, line: 168, baseType: !313, size: 32, offset: 384)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4268, file: !272, line: 169, baseType: !313, size: 32, offset: 416)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4268, file: !272, line: 171, baseType: !1882, size: 128, offset: 448)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4268, file: !272, line: 173, baseType: !4281, size: 64, offset: 576)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!313, !863, !7, !312}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4268, file: !272, line: 187, baseType: !312, size: 64, offset: 640)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !718, file: !272, line: 115, baseType: !1581, size: 192, offset: 768)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !452, file: !51, line: 690, baseType: !312, size: 64, offset: 6144)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !452, file: !51, line: 691, baseType: !312, size: 64, offset: 6208)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !452, file: !51, line: 692, baseType: !312, size: 64, offset: 6272)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !452, file: !51, line: 693, baseType: !312, size: 64, offset: 6336)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !452, file: !51, line: 694, baseType: !312, size: 64, offset: 6400)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !452, file: !51, line: 695, baseType: !528, size: 3648, offset: 6464)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !452, file: !51, line: 698, baseType: !4293, size: 64, offset: 10112)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!313, !312, !313, !313, !313}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !452, file: !51, line: 699, baseType: !313, size: 32, offset: 10176)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !452, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !430, file: !51, line: 231, baseType: !491, size: 64, offset: 1280)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !430, file: !51, line: 232, baseType: !491, size: 64, offset: 1344)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !430, file: !51, line: 233, baseType: !491, size: 64, offset: 1408)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !430, file: !51, line: 234, baseType: !491, size: 64, offset: 1472)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !430, file: !51, line: 237, baseType: !491, size: 64, offset: 1536)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !430, file: !51, line: 238, baseType: !4304, size: 64, offset: 1600)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!313, !451, !692}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !430, file: !51, line: 240, baseType: !713, size: 64, offset: 1664)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !430, file: !51, line: 242, baseType: !613, size: 64, offset: 1728)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !430, file: !51, line: 243, baseType: !613, size: 64, offset: 1792)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !430, file: !51, line: 244, baseType: !613, size: 64, offset: 1856)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !430, file: !51, line: 248, baseType: !613, size: 64, offset: 1920)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !430, file: !51, line: 249, baseType: !618, size: 64, offset: 1984)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !430, file: !51, line: 250, baseType: !702, size: 64, offset: 2048)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !430, file: !51, line: 258, baseType: !4315, size: 64, offset: 2112)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!313, !451, !4318, !313}
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !430, file: !51, line: 267, baseType: !4320, size: 64, offset: 2176)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!313, !451, !440}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !430, file: !51, line: 268, baseType: !4320, size: 64, offset: 2240)
!4324 = !DIGlobalVariableExpression(var: !4325, expr: !DIExpression())
!4325 = distinct !DIGlobalVariable(name: "mt2060_config1", scope: !2, file: !3, line: 118, type: !730, isLocal: true, isDefinition: true)
!4326 = !DIGlobalVariableExpression(var: !4327, expr: !DIExpression())
!4327 = distinct !DIGlobalVariable(name: "mt2060_config2", scope: !2, file: !3, line: 124, type: !4328, isLocal: true, isDefinition: true)
!4328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 80, elements: !4329)
!4329 = !{!4330}
!4330 = !DISubrange(count: 10)
!4331 = !DIGlobalVariableExpression(var: !4332, expr: !DIExpression())
!4332 = distinct !DIGlobalVariable(name: "mt2060_driver", scope: !2, file: !3, line: 525, type: !4333, isLocal: true, isDefinition: true)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_driver", file: !291, line: 255, size: 1920, elements: !4334)
!4334 = !{!4335, !4336, !4479, !4483, !4484, !4488, !4492, !4496, !4497, !4498, !4555, !4558}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4333, file: !291, line: 256, baseType: !7, size: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4333, file: !291, line: 259, baseType: !4337, size: 64, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{!313, !4340, !4473}
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_client", file: !291, line: 314, size: 6016, elements: !4342)
!4342 = !{!4343, !4344, !4345, !4347, !4469, !4470, !4471, !4472}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4341, file: !291, line: 315, baseType: !355, size: 16)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4341, file: !291, line: 325, baseType: !355, size: 16, offset: 16)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4341, file: !291, line: 328, baseType: !4346, size: 160, offset: 32)
!4346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 160, elements: !2600)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4341, file: !291, line: 329, baseType: !4348, size: 64, offset: 192)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !291, line: 695, size: 7552, elements: !4350)
!4350 = !{!4351, !4352, !4353, !4390, !4391, !4405, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4422, !4423, !4424, !4425, !4457, !4468}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4349, file: !291, line: 696, baseType: !314, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4349, file: !291, line: 697, baseType: !7, size: 32, offset: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4349, file: !291, line: 698, baseType: !4354, size: 64, offset: 128)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4356)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !291, line: 519, size: 320, elements: !4357)
!4357 = !{!4358, !4371, !4372, !4385, !4386}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4356, file: !291, line: 529, baseType: !4359, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!313, !4348, !4362, !313}
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4364, line: 69, size: 128, elements: !4365)
!4364 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4365 = !{!4366, !4367, !4368, !4369}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4363, file: !4364, line: 70, baseType: !353, size: 16)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4363, file: !4364, line: 71, baseType: !353, size: 16, offset: 16)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4363, file: !4364, line: 84, baseType: !353, size: 16, offset: 32)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4363, file: !4364, line: 85, baseType: !4370, size: 64, offset: 64)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4356, file: !291, line: 531, baseType: !4359, size: 64, offset: 64)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4356, file: !291, line: 533, baseType: !4373, size: 64, offset: 128)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!313, !4348, !351, !355, !327, !361, !313, !4376}
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4364, line: 135, size: 272, elements: !4378)
!4378 = !{!4379, !4380, !4381}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4377, file: !4364, line: 136, baseType: !362, size: 8)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4377, file: !4364, line: 137, baseType: !353, size: 16)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4377, file: !4364, line: 138, baseType: !4382, size: 272)
!4382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 272, elements: !4383)
!4383 = !{!4384}
!4384 = !DISubrange(count: 34)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4356, file: !291, line: 536, baseType: !4373, size: 64, offset: 192)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4356, file: !291, line: 541, baseType: !4387, size: 64, offset: 256)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!440, !4348}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4349, file: !291, line: 699, baseType: !312, size: 64, offset: 192)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4349, file: !291, line: 702, baseType: !4392, size: 64, offset: 256)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4394)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !291, line: 557, size: 192, elements: !4395)
!4395 = !{!4396, !4400, !4404}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4394, file: !291, line: 558, baseType: !4397, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{null, !4348, !7}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4394, file: !291, line: 559, baseType: !4401, size: 64, offset: 64)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!313, !4348, !7}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4394, file: !291, line: 560, baseType: !4397, size: 64, offset: 128)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4349, file: !291, line: 703, baseType: !4406, size: 192, offset: 320)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4407, line: 30, size: 192, elements: !4408)
!4407 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4408 = !{!4409, !4410, !4411}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4406, file: !4407, line: 31, baseType: !1272)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4406, file: !4407, line: 32, baseType: !1244, size: 128)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4406, file: !4407, line: 33, baseType: !1624, size: 64, offset: 128)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4349, file: !291, line: 704, baseType: !4406, size: 192, offset: 512)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4349, file: !291, line: 706, baseType: !313, size: 32, offset: 704)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4349, file: !291, line: 707, baseType: !313, size: 32, offset: 736)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4349, file: !291, line: 708, baseType: !734, size: 5568, offset: 768)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4349, file: !291, line: 709, baseType: !669, size: 64, offset: 6336)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4349, file: !291, line: 713, baseType: !313, size: 32, offset: 6400)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4349, file: !291, line: 714, baseType: !4419, size: 384, offset: 6432)
!4419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 384, elements: !4420)
!4420 = !{!4421}
!4421 = !DISubrange(count: 48)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4349, file: !291, line: 715, baseType: !1903, size: 192, offset: 6848)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4349, file: !291, line: 717, baseType: !1581, size: 192, offset: 7040)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4349, file: !291, line: 718, baseType: !722, size: 128, offset: 7232)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4349, file: !291, line: 720, baseType: !4426, size: 64, offset: 7360)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !291, line: 618, size: 832, elements: !4428)
!4428 = !{!4429, !4433, !4434, !4438, !4439, !4440, !4441, !4445, !4446, !4449, !4450, !4453, !4456}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4427, file: !291, line: 619, baseType: !4430, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!313, !4348}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4427, file: !291, line: 621, baseType: !4430, size: 64, offset: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4427, file: !291, line: 622, baseType: !4435, size: 64, offset: 128)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{null, !4348, !313}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4427, file: !291, line: 623, baseType: !4430, size: 64, offset: 192)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4427, file: !291, line: 624, baseType: !4435, size: 64, offset: 256)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4427, file: !291, line: 625, baseType: !4430, size: 64, offset: 320)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4427, file: !291, line: 627, baseType: !4442, size: 64, offset: 384)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{null, !4348}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4427, file: !291, line: 628, baseType: !4442, size: 64, offset: 448)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4427, file: !291, line: 631, baseType: !4447, size: 64, offset: 512)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !291, line: 631, flags: DIFlagFwdDecl)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4427, file: !291, line: 632, baseType: !4447, size: 64, offset: 576)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4427, file: !291, line: 633, baseType: !4451, size: 64, offset: 640)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !291, line: 633, flags: DIFlagFwdDecl)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4427, file: !291, line: 634, baseType: !4454, size: 64, offset: 704)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !291, line: 634, flags: DIFlagFwdDecl)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4427, file: !291, line: 635, baseType: !4454, size: 64, offset: 768)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4349, file: !291, line: 721, baseType: !4458, size: 64, offset: 7424)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4460)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !291, line: 664, size: 192, elements: !4461)
!4461 = !{!4462, !4463, !4464, !4465, !4466, !4467}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4460, file: !291, line: 665, baseType: !699, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4460, file: !291, line: 666, baseType: !313, size: 32, offset: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4460, file: !291, line: 667, baseType: !351, size: 16, offset: 96)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4460, file: !291, line: 668, baseType: !351, size: 16, offset: 112)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4460, file: !291, line: 669, baseType: !351, size: 16, offset: 128)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4460, file: !291, line: 670, baseType: !351, size: 16, offset: 144)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4349, file: !291, line: 723, baseType: !3997, size: 64, offset: 7488)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4341, file: !291, line: 330, baseType: !734, size: 5568, offset: 256)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "init_irq", scope: !4341, file: !291, line: 331, baseType: !313, size: 32, offset: 5824)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4341, file: !291, line: 332, baseType: !313, size: 32, offset: 5856)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "detected", scope: !4341, file: !291, line: 333, baseType: !722, size: 128, offset: 5888)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4475)
!4475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_device_id", file: !3805, line: 457, size: 256, elements: !4476)
!4476 = !{!4477, !4478}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4475, file: !3805, line: 458, baseType: !4346, size: 160)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4475, file: !3805, line: 459, baseType: !3821, size: 64, offset: 192)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4333, file: !291, line: 260, baseType: !4480, size: 64, offset: 128)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!313, !4340}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "probe_new", scope: !4333, file: !291, line: 265, baseType: !4480, size: 64, offset: 192)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4333, file: !291, line: 268, baseType: !4485, size: 64, offset: 256)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{null, !4340}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "alert", scope: !4333, file: !291, line: 277, baseType: !4489, size: 64, offset: 320)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{null, !4340, !290, !7}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !4333, file: !291, line: 283, baseType: !4493, size: 64, offset: 384)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!313, !4340, !7, !312}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4333, file: !291, line: 285, baseType: !3793, size: 1152, offset: 448)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4333, file: !291, line: 286, baseType: !4473, size: 64, offset: 1600)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !4333, file: !291, line: 289, baseType: !4499, size: 64, offset: 1664)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!313, !4340, !4502}
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_board_info", file: !291, line: 410, size: 640, elements: !4504)
!4504 = !{!4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4537, !4553, !4554}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4503, file: !291, line: 411, baseType: !4346, size: 160)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4503, file: !291, line: 412, baseType: !355, size: 16, offset: 160)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4503, file: !291, line: 413, baseType: !355, size: 16, offset: 176)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4503, file: !291, line: 414, baseType: !325, size: 64, offset: 192)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4503, file: !291, line: 415, baseType: !312, size: 64, offset: 256)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4503, file: !291, line: 416, baseType: !4011, size: 64, offset: 320)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4503, file: !291, line: 417, baseType: !4024, size: 64, offset: 384)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4503, file: !291, line: 418, baseType: !4513, size: 64, offset: 448)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4515)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !296, line: 263, size: 256, elements: !4516)
!4516 = !{!4517, !4518, !4519, !4520, !4521}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4515, file: !296, line: 264, baseType: !325, size: 64)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4515, file: !296, line: 265, baseType: !833, size: 64, offset: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !4515, file: !296, line: 266, baseType: !505, size: 8, offset: 128)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4515, file: !296, line: 267, baseType: !295, size: 32, offset: 160)
!4521 = !DIDerivedType(tag: DW_TAG_member, scope: !4515, file: !296, line: 268, baseType: !4522, size: 64, offset: 192)
!4522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4515, file: !296, line: 268, size: 64, elements: !4523)
!4523 = !{!4524, !4525}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4522, file: !296, line: 269, baseType: !2526, size: 64)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4522, file: !296, line: 276, baseType: !4526, size: 64)
!4526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4522, file: !296, line: 270, size: 64, elements: !4527)
!4527 = !{!4528, !4529, !4531, !4533, !4535}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !4526, file: !296, line: 271, baseType: !484, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !4526, file: !296, line: 272, baseType: !4530, size: 64)
!4530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 64, elements: !599)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !4526, file: !296, line: 273, baseType: !4532, size: 64)
!4532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 64, elements: !1970)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !4526, file: !296, line: 274, baseType: !4534, size: 64)
!4534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 64, elements: !1770)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4526, file: !296, line: 275, baseType: !4536, size: 64)
!4536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 64, elements: !1770)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4503, file: !291, line: 419, baseType: !4538, size: 64, offset: 512)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4540)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4541, line: 20, size: 512, elements: !4542)
!4541 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4542 = !{!4543, !4545, !4546, !4547, !4548, !4549, !4551, !4552}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4540, file: !4541, line: 21, baseType: !4544, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !311, line: 158, baseType: !2524)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4540, file: !4541, line: 22, baseType: !4544, size: 64, offset: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4540, file: !4541, line: 23, baseType: !325, size: 64, offset: 128)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4540, file: !4541, line: 24, baseType: !669, size: 64, offset: 192)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4540, file: !4541, line: 25, baseType: !669, size: 64, offset: 256)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4540, file: !4541, line: 26, baseType: !4550, size: 64, offset: 320)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4540, file: !4541, line: 26, baseType: !4550, size: 64, offset: 384)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4540, file: !4541, line: 26, baseType: !4550, size: 64, offset: 448)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !4503, file: !291, line: 420, baseType: !7, size: 32, offset: 576)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4503, file: !291, line: 421, baseType: !313, size: 32, offset: 608)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "address_list", scope: !4333, file: !291, line: 290, baseType: !4556, size: 64, offset: 1728)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !4333, file: !291, line: 291, baseType: !722, size: 128, offset: 1792)
!4559 = !DIGlobalVariableExpression(var: !4560, expr: !DIExpression())
!4560 = distinct !DIGlobalVariable(name: "mt2060_id_table", scope: !2, file: !3, line: 519, type: !4561, isLocal: true, isDefinition: true)
!4561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4474, size: 512, elements: !1970)
!4562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 104, elements: !4563)
!4563 = !{!4564}
!4564 = !DISubrange(count: 13)
!4565 = !{i32 7, !"Dwarf Version", i32 4}
!4566 = !{i32 2, !"Debug Info Version", i32 3}
!4567 = !{i32 1, !"wchar_size", i32 2}
!4568 = !{i32 1, !"Code Model", i32 2}
!4569 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4570 = distinct !DISubprogram(name: "mt2060_attach", scope: !3, file: !3, line: 405, type: !4571, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !764)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!451, !451, !4348, !4573, !351}
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mt2060_config", file: !4575, line: 37, size: 16, elements: !4576)
!4575 = !DIFile(filename: "drivers/media/tuners/mt2060.h", directory: "/home/lizy2001/genbc/linux")
!4576 = !{!4577, !4578}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_address", scope: !4574, file: !4575, line: 38, baseType: !361, size: 8)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "clock_out", scope: !4574, file: !4575, line: 39, baseType: !361, size: 8, offset: 8)
!4579 = !DILocalVariable(name: "fe", arg: 1, scope: !4570, file: !3, line: 405, type: !451)
!4580 = !DILocation(line: 405, column: 58, scope: !4570)
!4581 = !DILocalVariable(name: "i2c", arg: 2, scope: !4570, file: !3, line: 405, type: !4348)
!4582 = !DILocation(line: 405, column: 82, scope: !4570)
!4583 = !DILocalVariable(name: "cfg", arg: 3, scope: !4570, file: !3, line: 405, type: !4573)
!4584 = !DILocation(line: 405, column: 109, scope: !4570)
!4585 = !DILocalVariable(name: "if1", arg: 4, scope: !4570, file: !3, line: 405, type: !351)
!4586 = !DILocation(line: 405, column: 118, scope: !4570)
!4587 = !DILocalVariable(name: "priv", scope: !4570, file: !3, line: 407, type: !4588)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mt2060_priv", file: !4590, line: 81, size: 320, elements: !4591)
!4590 = !DIFile(filename: "drivers/media/tuners/mt2060_priv.h", directory: "/home/lizy2001/genbc/linux")
!4591 = !{!4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !4589, file: !4590, line: 82, baseType: !4573, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4589, file: !4590, line: 83, baseType: !4348, size: 64, offset: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !4589, file: !4590, line: 84, baseType: !4340, size: 64, offset: 128)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4589, file: !4590, line: 85, baseType: !4574, size: 16, offset: 192)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_max_regs", scope: !4589, file: !4590, line: 87, baseType: !361, size: 8, offset: 208)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4589, file: !4590, line: 88, baseType: !440, size: 32, offset: 224)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "if1_freq", scope: !4589, file: !4590, line: 89, baseType: !351, size: 16, offset: 256)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "fmfreq", scope: !4589, file: !4590, line: 90, baseType: !361, size: 8, offset: 272)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4589, file: !4590, line: 98, baseType: !505, size: 8, offset: 280)
!4601 = !DILocation(line: 407, column: 22, scope: !4570)
!4602 = !DILocalVariable(name: "id", scope: !4570, file: !3, line: 408, type: !361)
!4603 = !DILocation(line: 408, column: 5, scope: !4570)
!4604 = !DILocation(line: 410, column: 9, scope: !4570)
!4605 = !DILocation(line: 410, column: 7, scope: !4570)
!4606 = !DILocation(line: 411, column: 6, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 411, column: 6)
!4608 = !DILocation(line: 411, column: 11, scope: !4607)
!4609 = !DILocation(line: 411, column: 6, scope: !4570)
!4610 = !DILocation(line: 412, column: 3, scope: !4607)
!4611 = !DILocation(line: 414, column: 19, scope: !4570)
!4612 = !DILocation(line: 414, column: 2, scope: !4570)
!4613 = !DILocation(line: 414, column: 8, scope: !4570)
!4614 = !DILocation(line: 414, column: 17, scope: !4570)
!4615 = !DILocation(line: 415, column: 19, scope: !4570)
!4616 = !DILocation(line: 415, column: 2, scope: !4570)
!4617 = !DILocation(line: 415, column: 8, scope: !4570)
!4618 = !DILocation(line: 415, column: 17, scope: !4570)
!4619 = !DILocation(line: 416, column: 19, scope: !4570)
!4620 = !DILocation(line: 416, column: 2, scope: !4570)
!4621 = !DILocation(line: 416, column: 8, scope: !4570)
!4622 = !DILocation(line: 416, column: 17, scope: !4570)
!4623 = !DILocation(line: 417, column: 2, scope: !4570)
!4624 = !DILocation(line: 417, column: 8, scope: !4570)
!4625 = !DILocation(line: 417, column: 21, scope: !4570)
!4626 = !DILocation(line: 419, column: 6, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 419, column: 6)
!4628 = !DILocation(line: 419, column: 10, scope: !4627)
!4629 = !DILocation(line: 419, column: 14, scope: !4627)
!4630 = !DILocation(line: 419, column: 6, scope: !4570)
!4631 = !DILocation(line: 420, column: 3, scope: !4627)
!4632 = !DILocation(line: 420, column: 7, scope: !4627)
!4633 = !DILocation(line: 420, column: 11, scope: !4627)
!4634 = !DILocation(line: 420, column: 25, scope: !4627)
!4635 = !DILocation(line: 422, column: 21, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 422, column: 6)
!4637 = !DILocation(line: 422, column: 6, scope: !4636)
!4638 = !DILocation(line: 422, column: 44, scope: !4636)
!4639 = !DILocation(line: 422, column: 6, scope: !4570)
!4640 = !DILocation(line: 423, column: 9, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 422, column: 50)
!4642 = !DILocation(line: 423, column: 3, scope: !4641)
!4643 = !DILocation(line: 424, column: 3, scope: !4641)
!4644 = !DILocation(line: 427, column: 6, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 427, column: 6)
!4646 = !DILocation(line: 427, column: 9, scope: !4645)
!4647 = !DILocation(line: 427, column: 6, scope: !4570)
!4648 = !DILocation(line: 428, column: 9, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 427, column: 22)
!4650 = !DILocation(line: 428, column: 3, scope: !4649)
!4651 = !DILocation(line: 429, column: 3, scope: !4649)
!4652 = !DILocation(line: 431, column: 67, scope: !4570)
!4653 = !DILocation(line: 431, column: 2, scope: !4570)
!4654 = !DILocation(line: 432, column: 10, scope: !4570)
!4655 = !DILocation(line: 432, column: 14, scope: !4570)
!4656 = !DILocation(line: 432, column: 18, scope: !4570)
!4657 = !DILocation(line: 432, column: 2, scope: !4570)
!4658 = !DILocation(line: 434, column: 19, scope: !4570)
!4659 = !DILocation(line: 434, column: 2, scope: !4570)
!4660 = !DILocation(line: 434, column: 6, scope: !4570)
!4661 = !DILocation(line: 434, column: 17, scope: !4570)
!4662 = !DILocation(line: 436, column: 19, scope: !4570)
!4663 = !DILocation(line: 436, column: 2, scope: !4570)
!4664 = !DILocation(line: 438, column: 6, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 438, column: 6)
!4666 = !DILocation(line: 438, column: 10, scope: !4665)
!4667 = !DILocation(line: 438, column: 14, scope: !4665)
!4668 = !DILocation(line: 438, column: 6, scope: !4570)
!4669 = !DILocation(line: 439, column: 3, scope: !4665)
!4670 = !DILocation(line: 439, column: 7, scope: !4665)
!4671 = !DILocation(line: 439, column: 11, scope: !4665)
!4672 = !DILocation(line: 439, column: 25, scope: !4665)
!4673 = !DILocation(line: 441, column: 9, scope: !4570)
!4674 = !DILocation(line: 441, column: 2, scope: !4570)
!4675 = !DILocation(line: 442, column: 1, scope: !4570)
!4676 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 662, type: !4677, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!312, !833, !310}
!4679 = !DILocalVariable(name: "s", arg: 1, scope: !4680, file: !284, line: 445, type: !1425)
!4680 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !284, file: !284, line: 445, type: !4681, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!312, !1425, !310, !833}
!4683 = !DILocation(line: 445, column: 72, scope: !4680, inlinedAt: !4684)
!4684 = distinct !DILocation(line: 552, column: 10, scope: !4685, inlinedAt: !4688)
!4685 = distinct !DILexicalBlock(scope: !4686, file: !284, line: 540, column: 34)
!4686 = distinct !DILexicalBlock(scope: !4687, file: !284, line: 540, column: 6)
!4687 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 538, type: !4677, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!4688 = distinct !DILocation(line: 664, column: 9, scope: !4676)
!4689 = !DILocalVariable(name: "flags", arg: 2, scope: !4680, file: !284, line: 446, type: !310)
!4690 = !DILocation(line: 446, column: 9, scope: !4680, inlinedAt: !4684)
!4691 = !DILocalVariable(name: "size", arg: 3, scope: !4680, file: !284, line: 446, type: !833)
!4692 = !DILocation(line: 446, column: 23, scope: !4680, inlinedAt: !4684)
!4693 = !DILocalVariable(name: "ret", scope: !4680, file: !284, line: 448, type: !312)
!4694 = !DILocation(line: 448, column: 8, scope: !4680, inlinedAt: !4684)
!4695 = !DILocalVariable(name: "flags", arg: 1, scope: !4696, file: !284, line: 318, type: !310)
!4696 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 318, type: !4697, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!283, !310}
!4699 = !DILocation(line: 318, column: 67, scope: !4696, inlinedAt: !4700)
!4700 = distinct !DILocation(line: 553, column: 20, scope: !4685, inlinedAt: !4688)
!4701 = !DILocalVariable(name: "size", arg: 1, scope: !4702, file: !284, line: 346, type: !833)
!4702 = distinct !DISubprogram(name: "kmalloc_index", scope: !284, file: !284, line: 346, type: !4703, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{!7, !833}
!4705 = !DILocation(line: 346, column: 58, scope: !4702, inlinedAt: !4706)
!4706 = distinct !DILocation(line: 547, column: 11, scope: !4685, inlinedAt: !4688)
!4707 = !DILocalVariable(name: "size", arg: 1, scope: !4708, file: !284, line: 472, type: !833)
!4708 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !284, file: !284, line: 472, type: !4709, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!312, !833, !310, !7}
!4711 = !DILocation(line: 472, column: 28, scope: !4708, inlinedAt: !4712)
!4712 = distinct !DILocation(line: 481, column: 9, scope: !4713, inlinedAt: !4714)
!4713 = distinct !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 478, type: !4677, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!4714 = distinct !DILocation(line: 545, column: 11, scope: !4715, inlinedAt: !4688)
!4715 = distinct !DILexicalBlock(scope: !4685, file: !284, line: 544, column: 7)
!4716 = !DILocalVariable(name: "flags", arg: 2, scope: !4708, file: !284, line: 472, type: !310)
!4717 = !DILocation(line: 472, column: 40, scope: !4708, inlinedAt: !4712)
!4718 = !DILocalVariable(name: "order", arg: 3, scope: !4708, file: !284, line: 472, type: !7)
!4719 = !DILocation(line: 472, column: 60, scope: !4708, inlinedAt: !4712)
!4720 = !DILocalVariable(name: "size", arg: 1, scope: !4713, file: !284, line: 478, type: !833)
!4721 = !DILocation(line: 478, column: 51, scope: !4713, inlinedAt: !4714)
!4722 = !DILocalVariable(name: "flags", arg: 2, scope: !4713, file: !284, line: 478, type: !310)
!4723 = !DILocation(line: 478, column: 63, scope: !4713, inlinedAt: !4714)
!4724 = !DILocalVariable(name: "order", scope: !4713, file: !284, line: 480, type: !7)
!4725 = !DILocation(line: 480, column: 15, scope: !4713, inlinedAt: !4714)
!4726 = !DILocalVariable(name: "size", arg: 1, scope: !4687, file: !284, line: 538, type: !833)
!4727 = !DILocation(line: 538, column: 45, scope: !4687, inlinedAt: !4688)
!4728 = !DILocalVariable(name: "flags", arg: 2, scope: !4687, file: !284, line: 538, type: !310)
!4729 = !DILocation(line: 538, column: 57, scope: !4687, inlinedAt: !4688)
!4730 = !DILocalVariable(name: "index", scope: !4685, file: !284, line: 542, type: !7)
!4731 = !DILocation(line: 542, column: 16, scope: !4685, inlinedAt: !4688)
!4732 = !DILocalVariable(name: "size", arg: 1, scope: !4676, file: !284, line: 662, type: !833)
!4733 = !DILocation(line: 662, column: 36, scope: !4676)
!4734 = !DILocalVariable(name: "flags", arg: 2, scope: !4676, file: !284, line: 662, type: !310)
!4735 = !DILocation(line: 662, column: 48, scope: !4676)
!4736 = !DILocation(line: 664, column: 17, scope: !4676)
!4737 = !DILocation(line: 664, column: 23, scope: !4676)
!4738 = !DILocation(line: 664, column: 29, scope: !4676)
!4739 = !DILocation(line: 540, column: 27, scope: !4686, inlinedAt: !4688)
!4740 = !DILocation(line: 540, column: 6, scope: !4686, inlinedAt: !4688)
!4741 = !DILocation(line: 540, column: 6, scope: !4687, inlinedAt: !4688)
!4742 = !DILocation(line: 544, column: 7, scope: !4715, inlinedAt: !4688)
!4743 = !DILocation(line: 544, column: 12, scope: !4715, inlinedAt: !4688)
!4744 = !DILocation(line: 544, column: 7, scope: !4685, inlinedAt: !4688)
!4745 = !DILocation(line: 545, column: 25, scope: !4715, inlinedAt: !4688)
!4746 = !DILocation(line: 545, column: 31, scope: !4715, inlinedAt: !4688)
!4747 = !DILocation(line: 480, column: 33, scope: !4713, inlinedAt: !4714)
!4748 = !DILocation(line: 480, column: 23, scope: !4713, inlinedAt: !4714)
!4749 = !DILocation(line: 481, column: 29, scope: !4713, inlinedAt: !4714)
!4750 = !DILocation(line: 481, column: 35, scope: !4713, inlinedAt: !4714)
!4751 = !DILocation(line: 481, column: 42, scope: !4713, inlinedAt: !4714)
!4752 = !DILocation(line: 474, column: 23, scope: !4708, inlinedAt: !4712)
!4753 = !DILocation(line: 474, column: 29, scope: !4708, inlinedAt: !4712)
!4754 = !DILocation(line: 474, column: 36, scope: !4708, inlinedAt: !4712)
!4755 = !DILocation(line: 474, column: 9, scope: !4708, inlinedAt: !4712)
!4756 = !DILocation(line: 545, column: 4, scope: !4715, inlinedAt: !4688)
!4757 = !DILocation(line: 547, column: 25, scope: !4685, inlinedAt: !4688)
!4758 = !DILocation(line: 348, column: 7, scope: !4759, inlinedAt: !4706)
!4759 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 348, column: 6)
!4760 = !DILocation(line: 348, column: 6, scope: !4702, inlinedAt: !4706)
!4761 = !DILocation(line: 349, column: 3, scope: !4759, inlinedAt: !4706)
!4762 = !DILocation(line: 351, column: 6, scope: !4763, inlinedAt: !4706)
!4763 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 351, column: 6)
!4764 = !DILocation(line: 351, column: 11, scope: !4763, inlinedAt: !4706)
!4765 = !DILocation(line: 351, column: 6, scope: !4702, inlinedAt: !4706)
!4766 = !DILocation(line: 352, column: 3, scope: !4763, inlinedAt: !4706)
!4767 = !DILocation(line: 354, column: 32, scope: !4768, inlinedAt: !4706)
!4768 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 354, column: 6)
!4769 = !DILocation(line: 354, column: 37, scope: !4768, inlinedAt: !4706)
!4770 = !DILocation(line: 354, column: 42, scope: !4768, inlinedAt: !4706)
!4771 = !DILocation(line: 354, column: 45, scope: !4768, inlinedAt: !4706)
!4772 = !DILocation(line: 354, column: 50, scope: !4768, inlinedAt: !4706)
!4773 = !DILocation(line: 354, column: 6, scope: !4702, inlinedAt: !4706)
!4774 = !DILocation(line: 355, column: 3, scope: !4768, inlinedAt: !4706)
!4775 = !DILocation(line: 356, column: 32, scope: !4776, inlinedAt: !4706)
!4776 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 356, column: 6)
!4777 = !DILocation(line: 356, column: 37, scope: !4776, inlinedAt: !4706)
!4778 = !DILocation(line: 356, column: 43, scope: !4776, inlinedAt: !4706)
!4779 = !DILocation(line: 356, column: 46, scope: !4776, inlinedAt: !4706)
!4780 = !DILocation(line: 356, column: 51, scope: !4776, inlinedAt: !4706)
!4781 = !DILocation(line: 356, column: 6, scope: !4702, inlinedAt: !4706)
!4782 = !DILocation(line: 357, column: 3, scope: !4776, inlinedAt: !4706)
!4783 = !DILocation(line: 358, column: 6, scope: !4784, inlinedAt: !4706)
!4784 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 358, column: 6)
!4785 = !DILocation(line: 358, column: 11, scope: !4784, inlinedAt: !4706)
!4786 = !DILocation(line: 358, column: 6, scope: !4702, inlinedAt: !4706)
!4787 = !DILocation(line: 358, column: 26, scope: !4784, inlinedAt: !4706)
!4788 = !DILocation(line: 359, column: 6, scope: !4789, inlinedAt: !4706)
!4789 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 359, column: 6)
!4790 = !DILocation(line: 359, column: 11, scope: !4789, inlinedAt: !4706)
!4791 = !DILocation(line: 359, column: 6, scope: !4702, inlinedAt: !4706)
!4792 = !DILocation(line: 359, column: 26, scope: !4789, inlinedAt: !4706)
!4793 = !DILocation(line: 360, column: 6, scope: !4794, inlinedAt: !4706)
!4794 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 360, column: 6)
!4795 = !DILocation(line: 360, column: 11, scope: !4794, inlinedAt: !4706)
!4796 = !DILocation(line: 360, column: 6, scope: !4702, inlinedAt: !4706)
!4797 = !DILocation(line: 360, column: 26, scope: !4794, inlinedAt: !4706)
!4798 = !DILocation(line: 361, column: 6, scope: !4799, inlinedAt: !4706)
!4799 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 361, column: 6)
!4800 = !DILocation(line: 361, column: 11, scope: !4799, inlinedAt: !4706)
!4801 = !DILocation(line: 361, column: 6, scope: !4702, inlinedAt: !4706)
!4802 = !DILocation(line: 361, column: 26, scope: !4799, inlinedAt: !4706)
!4803 = !DILocation(line: 362, column: 6, scope: !4804, inlinedAt: !4706)
!4804 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 362, column: 6)
!4805 = !DILocation(line: 362, column: 11, scope: !4804, inlinedAt: !4706)
!4806 = !DILocation(line: 362, column: 6, scope: !4702, inlinedAt: !4706)
!4807 = !DILocation(line: 362, column: 26, scope: !4804, inlinedAt: !4706)
!4808 = !DILocation(line: 363, column: 6, scope: !4809, inlinedAt: !4706)
!4809 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 363, column: 6)
!4810 = !DILocation(line: 363, column: 11, scope: !4809, inlinedAt: !4706)
!4811 = !DILocation(line: 363, column: 6, scope: !4702, inlinedAt: !4706)
!4812 = !DILocation(line: 363, column: 26, scope: !4809, inlinedAt: !4706)
!4813 = !DILocation(line: 364, column: 6, scope: !4814, inlinedAt: !4706)
!4814 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 364, column: 6)
!4815 = !DILocation(line: 364, column: 11, scope: !4814, inlinedAt: !4706)
!4816 = !DILocation(line: 364, column: 6, scope: !4702, inlinedAt: !4706)
!4817 = !DILocation(line: 364, column: 26, scope: !4814, inlinedAt: !4706)
!4818 = !DILocation(line: 365, column: 6, scope: !4819, inlinedAt: !4706)
!4819 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 365, column: 6)
!4820 = !DILocation(line: 365, column: 11, scope: !4819, inlinedAt: !4706)
!4821 = !DILocation(line: 365, column: 6, scope: !4702, inlinedAt: !4706)
!4822 = !DILocation(line: 365, column: 26, scope: !4819, inlinedAt: !4706)
!4823 = !DILocation(line: 366, column: 6, scope: !4824, inlinedAt: !4706)
!4824 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 366, column: 6)
!4825 = !DILocation(line: 366, column: 11, scope: !4824, inlinedAt: !4706)
!4826 = !DILocation(line: 366, column: 6, scope: !4702, inlinedAt: !4706)
!4827 = !DILocation(line: 366, column: 26, scope: !4824, inlinedAt: !4706)
!4828 = !DILocation(line: 367, column: 6, scope: !4829, inlinedAt: !4706)
!4829 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 367, column: 6)
!4830 = !DILocation(line: 367, column: 11, scope: !4829, inlinedAt: !4706)
!4831 = !DILocation(line: 367, column: 6, scope: !4702, inlinedAt: !4706)
!4832 = !DILocation(line: 367, column: 26, scope: !4829, inlinedAt: !4706)
!4833 = !DILocation(line: 368, column: 6, scope: !4834, inlinedAt: !4706)
!4834 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 368, column: 6)
!4835 = !DILocation(line: 368, column: 11, scope: !4834, inlinedAt: !4706)
!4836 = !DILocation(line: 368, column: 6, scope: !4702, inlinedAt: !4706)
!4837 = !DILocation(line: 368, column: 26, scope: !4834, inlinedAt: !4706)
!4838 = !DILocation(line: 369, column: 6, scope: !4839, inlinedAt: !4706)
!4839 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 369, column: 6)
!4840 = !DILocation(line: 369, column: 11, scope: !4839, inlinedAt: !4706)
!4841 = !DILocation(line: 369, column: 6, scope: !4702, inlinedAt: !4706)
!4842 = !DILocation(line: 369, column: 26, scope: !4839, inlinedAt: !4706)
!4843 = !DILocation(line: 370, column: 6, scope: !4844, inlinedAt: !4706)
!4844 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 370, column: 6)
!4845 = !DILocation(line: 370, column: 11, scope: !4844, inlinedAt: !4706)
!4846 = !DILocation(line: 370, column: 6, scope: !4702, inlinedAt: !4706)
!4847 = !DILocation(line: 370, column: 26, scope: !4844, inlinedAt: !4706)
!4848 = !DILocation(line: 371, column: 6, scope: !4849, inlinedAt: !4706)
!4849 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 371, column: 6)
!4850 = !DILocation(line: 371, column: 11, scope: !4849, inlinedAt: !4706)
!4851 = !DILocation(line: 371, column: 6, scope: !4702, inlinedAt: !4706)
!4852 = !DILocation(line: 371, column: 26, scope: !4849, inlinedAt: !4706)
!4853 = !DILocation(line: 372, column: 6, scope: !4854, inlinedAt: !4706)
!4854 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 372, column: 6)
!4855 = !DILocation(line: 372, column: 11, scope: !4854, inlinedAt: !4706)
!4856 = !DILocation(line: 372, column: 6, scope: !4702, inlinedAt: !4706)
!4857 = !DILocation(line: 372, column: 26, scope: !4854, inlinedAt: !4706)
!4858 = !DILocation(line: 373, column: 6, scope: !4859, inlinedAt: !4706)
!4859 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 373, column: 6)
!4860 = !DILocation(line: 373, column: 11, scope: !4859, inlinedAt: !4706)
!4861 = !DILocation(line: 373, column: 6, scope: !4702, inlinedAt: !4706)
!4862 = !DILocation(line: 373, column: 26, scope: !4859, inlinedAt: !4706)
!4863 = !DILocation(line: 374, column: 6, scope: !4864, inlinedAt: !4706)
!4864 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 374, column: 6)
!4865 = !DILocation(line: 374, column: 11, scope: !4864, inlinedAt: !4706)
!4866 = !DILocation(line: 374, column: 6, scope: !4702, inlinedAt: !4706)
!4867 = !DILocation(line: 374, column: 26, scope: !4864, inlinedAt: !4706)
!4868 = !DILocation(line: 375, column: 6, scope: !4869, inlinedAt: !4706)
!4869 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 375, column: 6)
!4870 = !DILocation(line: 375, column: 11, scope: !4869, inlinedAt: !4706)
!4871 = !DILocation(line: 375, column: 6, scope: !4702, inlinedAt: !4706)
!4872 = !DILocation(line: 375, column: 27, scope: !4869, inlinedAt: !4706)
!4873 = !DILocation(line: 376, column: 6, scope: !4874, inlinedAt: !4706)
!4874 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 376, column: 6)
!4875 = !DILocation(line: 376, column: 11, scope: !4874, inlinedAt: !4706)
!4876 = !DILocation(line: 376, column: 6, scope: !4702, inlinedAt: !4706)
!4877 = !DILocation(line: 376, column: 32, scope: !4874, inlinedAt: !4706)
!4878 = !DILocation(line: 377, column: 6, scope: !4879, inlinedAt: !4706)
!4879 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 377, column: 6)
!4880 = !DILocation(line: 377, column: 11, scope: !4879, inlinedAt: !4706)
!4881 = !DILocation(line: 377, column: 6, scope: !4702, inlinedAt: !4706)
!4882 = !DILocation(line: 377, column: 32, scope: !4879, inlinedAt: !4706)
!4883 = !DILocation(line: 378, column: 6, scope: !4884, inlinedAt: !4706)
!4884 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 378, column: 6)
!4885 = !DILocation(line: 378, column: 11, scope: !4884, inlinedAt: !4706)
!4886 = !DILocation(line: 378, column: 6, scope: !4702, inlinedAt: !4706)
!4887 = !DILocation(line: 378, column: 32, scope: !4884, inlinedAt: !4706)
!4888 = !DILocation(line: 379, column: 6, scope: !4889, inlinedAt: !4706)
!4889 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 379, column: 6)
!4890 = !DILocation(line: 379, column: 11, scope: !4889, inlinedAt: !4706)
!4891 = !DILocation(line: 379, column: 6, scope: !4702, inlinedAt: !4706)
!4892 = !DILocation(line: 379, column: 33, scope: !4889, inlinedAt: !4706)
!4893 = !DILocation(line: 380, column: 6, scope: !4894, inlinedAt: !4706)
!4894 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 380, column: 6)
!4895 = !DILocation(line: 380, column: 11, scope: !4894, inlinedAt: !4706)
!4896 = !DILocation(line: 380, column: 6, scope: !4702, inlinedAt: !4706)
!4897 = !DILocation(line: 380, column: 33, scope: !4894, inlinedAt: !4706)
!4898 = !DILocation(line: 381, column: 6, scope: !4899, inlinedAt: !4706)
!4899 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 381, column: 6)
!4900 = !DILocation(line: 381, column: 11, scope: !4899, inlinedAt: !4706)
!4901 = !DILocation(line: 381, column: 6, scope: !4702, inlinedAt: !4706)
!4902 = !DILocation(line: 381, column: 33, scope: !4899, inlinedAt: !4706)
!4903 = !DILocation(line: 382, column: 2, scope: !4904, inlinedAt: !4706)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !284, line: 382, column: 2)
!4905 = distinct !DILexicalBlock(scope: !4702, file: !284, line: 382, column: 2)
!4906 = !{i32 -2143973089, i32 -2143973060, i32 -2143973014, i32 -2143972956, i32 -2143972902, i32 -2143972848, i32 -2143972793, i32 -2143972762}
!4907 = !DILocation(line: 382, column: 2, scope: !4908, inlinedAt: !4706)
!4908 = distinct !DILexicalBlock(scope: !4909, file: !284, line: 382, column: 2)
!4909 = distinct !DILexicalBlock(scope: !4905, file: !284, line: 382, column: 2)
!4910 = !{i32 -2143972319, i32 -2143972312, i32 -2143972258, i32 -2143972227, i32 -2143972197}
!4911 = !DILocation(line: 382, column: 2, scope: !4909, inlinedAt: !4706)
!4912 = !DILocation(line: 386, column: 1, scope: !4702, inlinedAt: !4706)
!4913 = !DILocation(line: 547, column: 9, scope: !4685, inlinedAt: !4688)
!4914 = !DILocation(line: 549, column: 8, scope: !4915, inlinedAt: !4688)
!4915 = distinct !DILexicalBlock(scope: !4685, file: !284, line: 549, column: 7)
!4916 = !DILocation(line: 549, column: 7, scope: !4685, inlinedAt: !4688)
!4917 = !DILocation(line: 550, column: 4, scope: !4915, inlinedAt: !4688)
!4918 = !DILocation(line: 553, column: 33, scope: !4685, inlinedAt: !4688)
!4919 = !DILocation(line: 325, column: 6, scope: !4920, inlinedAt: !4700)
!4920 = distinct !DILexicalBlock(scope: !4696, file: !284, line: 325, column: 6)
!4921 = !DILocation(line: 325, column: 6, scope: !4696, inlinedAt: !4700)
!4922 = !DILocation(line: 326, column: 3, scope: !4920, inlinedAt: !4700)
!4923 = !DILocation(line: 332, column: 9, scope: !4696, inlinedAt: !4700)
!4924 = !DILocation(line: 332, column: 15, scope: !4696, inlinedAt: !4700)
!4925 = !DILocation(line: 332, column: 2, scope: !4696, inlinedAt: !4700)
!4926 = !DILocation(line: 336, column: 1, scope: !4696, inlinedAt: !4700)
!4927 = !DILocation(line: 553, column: 5, scope: !4685, inlinedAt: !4688)
!4928 = !DILocation(line: 553, column: 41, scope: !4685, inlinedAt: !4688)
!4929 = !DILocation(line: 554, column: 5, scope: !4685, inlinedAt: !4688)
!4930 = !DILocation(line: 554, column: 12, scope: !4685, inlinedAt: !4688)
!4931 = !DILocation(line: 448, column: 31, scope: !4680, inlinedAt: !4684)
!4932 = !DILocation(line: 448, column: 34, scope: !4680, inlinedAt: !4684)
!4933 = !DILocation(line: 448, column: 14, scope: !4680, inlinedAt: !4684)
!4934 = !DILocation(line: 450, column: 22, scope: !4680, inlinedAt: !4684)
!4935 = !DILocation(line: 450, column: 25, scope: !4680, inlinedAt: !4684)
!4936 = !DILocation(line: 450, column: 30, scope: !4680, inlinedAt: !4684)
!4937 = !DILocation(line: 450, column: 36, scope: !4680, inlinedAt: !4684)
!4938 = !DILocation(line: 450, column: 8, scope: !4680, inlinedAt: !4684)
!4939 = !DILocation(line: 450, column: 6, scope: !4680, inlinedAt: !4684)
!4940 = !DILocation(line: 451, column: 9, scope: !4680, inlinedAt: !4684)
!4941 = !DILocation(line: 552, column: 3, scope: !4685, inlinedAt: !4688)
!4942 = !DILocation(line: 557, column: 19, scope: !4687, inlinedAt: !4688)
!4943 = !DILocation(line: 557, column: 25, scope: !4687, inlinedAt: !4688)
!4944 = !DILocation(line: 557, column: 9, scope: !4687, inlinedAt: !4688)
!4945 = !DILocation(line: 557, column: 2, scope: !4687, inlinedAt: !4688)
!4946 = !DILocation(line: 558, column: 1, scope: !4687, inlinedAt: !4688)
!4947 = !DILocation(line: 664, column: 2, scope: !4676)
!4948 = distinct !DISubprogram(name: "mt2060_readreg", scope: !3, file: !3, line: 28, type: !4949, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!313, !4588, !361, !4318}
!4951 = !DILocation(line: 445, column: 72, scope: !4680, inlinedAt: !4952)
!4952 = distinct !DILocation(line: 552, column: 10, scope: !4685, inlinedAt: !4953)
!4953 = distinct !DILocation(line: 37, column: 6, scope: !4948)
!4954 = !DILocation(line: 446, column: 9, scope: !4680, inlinedAt: !4952)
!4955 = !DILocation(line: 446, column: 23, scope: !4680, inlinedAt: !4952)
!4956 = !DILocation(line: 448, column: 8, scope: !4680, inlinedAt: !4952)
!4957 = !DILocation(line: 318, column: 67, scope: !4696, inlinedAt: !4958)
!4958 = distinct !DILocation(line: 553, column: 20, scope: !4685, inlinedAt: !4953)
!4959 = !DILocation(line: 346, column: 58, scope: !4702, inlinedAt: !4960)
!4960 = distinct !DILocation(line: 547, column: 11, scope: !4685, inlinedAt: !4953)
!4961 = !DILocation(line: 472, column: 28, scope: !4708, inlinedAt: !4962)
!4962 = distinct !DILocation(line: 481, column: 9, scope: !4713, inlinedAt: !4963)
!4963 = distinct !DILocation(line: 545, column: 11, scope: !4715, inlinedAt: !4953)
!4964 = !DILocation(line: 472, column: 40, scope: !4708, inlinedAt: !4962)
!4965 = !DILocation(line: 472, column: 60, scope: !4708, inlinedAt: !4962)
!4966 = !DILocation(line: 478, column: 51, scope: !4713, inlinedAt: !4963)
!4967 = !DILocation(line: 478, column: 63, scope: !4713, inlinedAt: !4963)
!4968 = !DILocation(line: 480, column: 15, scope: !4713, inlinedAt: !4963)
!4969 = !DILocation(line: 538, column: 45, scope: !4687, inlinedAt: !4953)
!4970 = !DILocation(line: 538, column: 57, scope: !4687, inlinedAt: !4953)
!4971 = !DILocation(line: 542, column: 16, scope: !4685, inlinedAt: !4953)
!4972 = !DILocalVariable(name: "priv", arg: 1, scope: !4948, file: !3, line: 28, type: !4588)
!4973 = !DILocation(line: 28, column: 47, scope: !4948)
!4974 = !DILocalVariable(name: "reg", arg: 2, scope: !4948, file: !3, line: 28, type: !361)
!4975 = !DILocation(line: 28, column: 56, scope: !4948)
!4976 = !DILocalVariable(name: "val", arg: 3, scope: !4948, file: !3, line: 28, type: !4318)
!4977 = !DILocation(line: 28, column: 65, scope: !4948)
!4978 = !DILocalVariable(name: "msg", scope: !4948, file: !3, line: 30, type: !4979)
!4979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4363, size: 256, elements: !1970)
!4980 = !DILocation(line: 30, column: 17, scope: !4948)
!4981 = !DILocation(line: 30, column: 26, scope: !4948)
!4982 = !DILocation(line: 31, column: 3, scope: !4948)
!4983 = !DILocation(line: 31, column: 13, scope: !4948)
!4984 = !DILocation(line: 31, column: 19, scope: !4948)
!4985 = !DILocation(line: 31, column: 24, scope: !4948)
!4986 = !DILocation(line: 32, column: 3, scope: !4948)
!4987 = !DILocation(line: 32, column: 13, scope: !4948)
!4988 = !DILocation(line: 32, column: 19, scope: !4948)
!4989 = !DILocation(line: 32, column: 24, scope: !4948)
!4990 = !DILocalVariable(name: "rc", scope: !4948, file: !3, line: 34, type: !313)
!4991 = !DILocation(line: 34, column: 6, scope: !4948)
!4992 = !DILocalVariable(name: "b", scope: !4948, file: !3, line: 35, type: !4318)
!4993 = !DILocation(line: 35, column: 6, scope: !4948)
!4994 = !DILocation(line: 540, column: 27, scope: !4686, inlinedAt: !4953)
!4995 = !DILocation(line: 540, column: 6, scope: !4686, inlinedAt: !4953)
!4996 = !DILocation(line: 540, column: 6, scope: !4687, inlinedAt: !4953)
!4997 = !DILocation(line: 544, column: 7, scope: !4715, inlinedAt: !4953)
!4998 = !DILocation(line: 544, column: 12, scope: !4715, inlinedAt: !4953)
!4999 = !DILocation(line: 544, column: 7, scope: !4685, inlinedAt: !4953)
!5000 = !DILocation(line: 545, column: 25, scope: !4715, inlinedAt: !4953)
!5001 = !DILocation(line: 545, column: 31, scope: !4715, inlinedAt: !4953)
!5002 = !DILocation(line: 480, column: 33, scope: !4713, inlinedAt: !4963)
!5003 = !DILocation(line: 480, column: 23, scope: !4713, inlinedAt: !4963)
!5004 = !DILocation(line: 481, column: 29, scope: !4713, inlinedAt: !4963)
!5005 = !DILocation(line: 481, column: 35, scope: !4713, inlinedAt: !4963)
!5006 = !DILocation(line: 481, column: 42, scope: !4713, inlinedAt: !4963)
!5007 = !DILocation(line: 474, column: 23, scope: !4708, inlinedAt: !4962)
!5008 = !DILocation(line: 474, column: 29, scope: !4708, inlinedAt: !4962)
!5009 = !DILocation(line: 474, column: 36, scope: !4708, inlinedAt: !4962)
!5010 = !DILocation(line: 474, column: 9, scope: !4708, inlinedAt: !4962)
!5011 = !DILocation(line: 545, column: 4, scope: !4715, inlinedAt: !4953)
!5012 = !DILocation(line: 547, column: 25, scope: !4685, inlinedAt: !4953)
!5013 = !DILocation(line: 348, column: 7, scope: !4759, inlinedAt: !4960)
!5014 = !DILocation(line: 348, column: 6, scope: !4702, inlinedAt: !4960)
!5015 = !DILocation(line: 349, column: 3, scope: !4759, inlinedAt: !4960)
!5016 = !DILocation(line: 351, column: 6, scope: !4763, inlinedAt: !4960)
!5017 = !DILocation(line: 351, column: 11, scope: !4763, inlinedAt: !4960)
!5018 = !DILocation(line: 351, column: 6, scope: !4702, inlinedAt: !4960)
!5019 = !DILocation(line: 352, column: 3, scope: !4763, inlinedAt: !4960)
!5020 = !DILocation(line: 354, column: 32, scope: !4768, inlinedAt: !4960)
!5021 = !DILocation(line: 354, column: 37, scope: !4768, inlinedAt: !4960)
!5022 = !DILocation(line: 354, column: 42, scope: !4768, inlinedAt: !4960)
!5023 = !DILocation(line: 354, column: 45, scope: !4768, inlinedAt: !4960)
!5024 = !DILocation(line: 354, column: 50, scope: !4768, inlinedAt: !4960)
!5025 = !DILocation(line: 354, column: 6, scope: !4702, inlinedAt: !4960)
!5026 = !DILocation(line: 355, column: 3, scope: !4768, inlinedAt: !4960)
!5027 = !DILocation(line: 356, column: 32, scope: !4776, inlinedAt: !4960)
!5028 = !DILocation(line: 356, column: 37, scope: !4776, inlinedAt: !4960)
!5029 = !DILocation(line: 356, column: 43, scope: !4776, inlinedAt: !4960)
!5030 = !DILocation(line: 356, column: 46, scope: !4776, inlinedAt: !4960)
!5031 = !DILocation(line: 356, column: 51, scope: !4776, inlinedAt: !4960)
!5032 = !DILocation(line: 356, column: 6, scope: !4702, inlinedAt: !4960)
!5033 = !DILocation(line: 357, column: 3, scope: !4776, inlinedAt: !4960)
!5034 = !DILocation(line: 358, column: 6, scope: !4784, inlinedAt: !4960)
!5035 = !DILocation(line: 358, column: 11, scope: !4784, inlinedAt: !4960)
!5036 = !DILocation(line: 358, column: 6, scope: !4702, inlinedAt: !4960)
!5037 = !DILocation(line: 358, column: 26, scope: !4784, inlinedAt: !4960)
!5038 = !DILocation(line: 359, column: 6, scope: !4789, inlinedAt: !4960)
!5039 = !DILocation(line: 359, column: 11, scope: !4789, inlinedAt: !4960)
!5040 = !DILocation(line: 359, column: 6, scope: !4702, inlinedAt: !4960)
!5041 = !DILocation(line: 359, column: 26, scope: !4789, inlinedAt: !4960)
!5042 = !DILocation(line: 360, column: 6, scope: !4794, inlinedAt: !4960)
!5043 = !DILocation(line: 360, column: 11, scope: !4794, inlinedAt: !4960)
!5044 = !DILocation(line: 360, column: 6, scope: !4702, inlinedAt: !4960)
!5045 = !DILocation(line: 360, column: 26, scope: !4794, inlinedAt: !4960)
!5046 = !DILocation(line: 361, column: 6, scope: !4799, inlinedAt: !4960)
!5047 = !DILocation(line: 361, column: 11, scope: !4799, inlinedAt: !4960)
!5048 = !DILocation(line: 361, column: 6, scope: !4702, inlinedAt: !4960)
!5049 = !DILocation(line: 361, column: 26, scope: !4799, inlinedAt: !4960)
!5050 = !DILocation(line: 362, column: 6, scope: !4804, inlinedAt: !4960)
!5051 = !DILocation(line: 362, column: 11, scope: !4804, inlinedAt: !4960)
!5052 = !DILocation(line: 362, column: 6, scope: !4702, inlinedAt: !4960)
!5053 = !DILocation(line: 362, column: 26, scope: !4804, inlinedAt: !4960)
!5054 = !DILocation(line: 363, column: 6, scope: !4809, inlinedAt: !4960)
!5055 = !DILocation(line: 363, column: 11, scope: !4809, inlinedAt: !4960)
!5056 = !DILocation(line: 363, column: 6, scope: !4702, inlinedAt: !4960)
!5057 = !DILocation(line: 363, column: 26, scope: !4809, inlinedAt: !4960)
!5058 = !DILocation(line: 364, column: 6, scope: !4814, inlinedAt: !4960)
!5059 = !DILocation(line: 364, column: 11, scope: !4814, inlinedAt: !4960)
!5060 = !DILocation(line: 364, column: 6, scope: !4702, inlinedAt: !4960)
!5061 = !DILocation(line: 364, column: 26, scope: !4814, inlinedAt: !4960)
!5062 = !DILocation(line: 365, column: 6, scope: !4819, inlinedAt: !4960)
!5063 = !DILocation(line: 365, column: 11, scope: !4819, inlinedAt: !4960)
!5064 = !DILocation(line: 365, column: 6, scope: !4702, inlinedAt: !4960)
!5065 = !DILocation(line: 365, column: 26, scope: !4819, inlinedAt: !4960)
!5066 = !DILocation(line: 366, column: 6, scope: !4824, inlinedAt: !4960)
!5067 = !DILocation(line: 366, column: 11, scope: !4824, inlinedAt: !4960)
!5068 = !DILocation(line: 366, column: 6, scope: !4702, inlinedAt: !4960)
!5069 = !DILocation(line: 366, column: 26, scope: !4824, inlinedAt: !4960)
!5070 = !DILocation(line: 367, column: 6, scope: !4829, inlinedAt: !4960)
!5071 = !DILocation(line: 367, column: 11, scope: !4829, inlinedAt: !4960)
!5072 = !DILocation(line: 367, column: 6, scope: !4702, inlinedAt: !4960)
!5073 = !DILocation(line: 367, column: 26, scope: !4829, inlinedAt: !4960)
!5074 = !DILocation(line: 368, column: 6, scope: !4834, inlinedAt: !4960)
!5075 = !DILocation(line: 368, column: 11, scope: !4834, inlinedAt: !4960)
!5076 = !DILocation(line: 368, column: 6, scope: !4702, inlinedAt: !4960)
!5077 = !DILocation(line: 368, column: 26, scope: !4834, inlinedAt: !4960)
!5078 = !DILocation(line: 369, column: 6, scope: !4839, inlinedAt: !4960)
!5079 = !DILocation(line: 369, column: 11, scope: !4839, inlinedAt: !4960)
!5080 = !DILocation(line: 369, column: 6, scope: !4702, inlinedAt: !4960)
!5081 = !DILocation(line: 369, column: 26, scope: !4839, inlinedAt: !4960)
!5082 = !DILocation(line: 370, column: 6, scope: !4844, inlinedAt: !4960)
!5083 = !DILocation(line: 370, column: 11, scope: !4844, inlinedAt: !4960)
!5084 = !DILocation(line: 370, column: 6, scope: !4702, inlinedAt: !4960)
!5085 = !DILocation(line: 370, column: 26, scope: !4844, inlinedAt: !4960)
!5086 = !DILocation(line: 371, column: 6, scope: !4849, inlinedAt: !4960)
!5087 = !DILocation(line: 371, column: 11, scope: !4849, inlinedAt: !4960)
!5088 = !DILocation(line: 371, column: 6, scope: !4702, inlinedAt: !4960)
!5089 = !DILocation(line: 371, column: 26, scope: !4849, inlinedAt: !4960)
!5090 = !DILocation(line: 372, column: 6, scope: !4854, inlinedAt: !4960)
!5091 = !DILocation(line: 372, column: 11, scope: !4854, inlinedAt: !4960)
!5092 = !DILocation(line: 372, column: 6, scope: !4702, inlinedAt: !4960)
!5093 = !DILocation(line: 372, column: 26, scope: !4854, inlinedAt: !4960)
!5094 = !DILocation(line: 373, column: 6, scope: !4859, inlinedAt: !4960)
!5095 = !DILocation(line: 373, column: 11, scope: !4859, inlinedAt: !4960)
!5096 = !DILocation(line: 373, column: 6, scope: !4702, inlinedAt: !4960)
!5097 = !DILocation(line: 373, column: 26, scope: !4859, inlinedAt: !4960)
!5098 = !DILocation(line: 374, column: 6, scope: !4864, inlinedAt: !4960)
!5099 = !DILocation(line: 374, column: 11, scope: !4864, inlinedAt: !4960)
!5100 = !DILocation(line: 374, column: 6, scope: !4702, inlinedAt: !4960)
!5101 = !DILocation(line: 374, column: 26, scope: !4864, inlinedAt: !4960)
!5102 = !DILocation(line: 375, column: 6, scope: !4869, inlinedAt: !4960)
!5103 = !DILocation(line: 375, column: 11, scope: !4869, inlinedAt: !4960)
!5104 = !DILocation(line: 375, column: 6, scope: !4702, inlinedAt: !4960)
!5105 = !DILocation(line: 375, column: 27, scope: !4869, inlinedAt: !4960)
!5106 = !DILocation(line: 376, column: 6, scope: !4874, inlinedAt: !4960)
!5107 = !DILocation(line: 376, column: 11, scope: !4874, inlinedAt: !4960)
!5108 = !DILocation(line: 376, column: 6, scope: !4702, inlinedAt: !4960)
!5109 = !DILocation(line: 376, column: 32, scope: !4874, inlinedAt: !4960)
!5110 = !DILocation(line: 377, column: 6, scope: !4879, inlinedAt: !4960)
!5111 = !DILocation(line: 377, column: 11, scope: !4879, inlinedAt: !4960)
!5112 = !DILocation(line: 377, column: 6, scope: !4702, inlinedAt: !4960)
!5113 = !DILocation(line: 377, column: 32, scope: !4879, inlinedAt: !4960)
!5114 = !DILocation(line: 378, column: 6, scope: !4884, inlinedAt: !4960)
!5115 = !DILocation(line: 378, column: 11, scope: !4884, inlinedAt: !4960)
!5116 = !DILocation(line: 378, column: 6, scope: !4702, inlinedAt: !4960)
!5117 = !DILocation(line: 378, column: 32, scope: !4884, inlinedAt: !4960)
!5118 = !DILocation(line: 379, column: 6, scope: !4889, inlinedAt: !4960)
!5119 = !DILocation(line: 379, column: 11, scope: !4889, inlinedAt: !4960)
!5120 = !DILocation(line: 379, column: 6, scope: !4702, inlinedAt: !4960)
!5121 = !DILocation(line: 379, column: 33, scope: !4889, inlinedAt: !4960)
!5122 = !DILocation(line: 380, column: 6, scope: !4894, inlinedAt: !4960)
!5123 = !DILocation(line: 380, column: 11, scope: !4894, inlinedAt: !4960)
!5124 = !DILocation(line: 380, column: 6, scope: !4702, inlinedAt: !4960)
!5125 = !DILocation(line: 380, column: 33, scope: !4894, inlinedAt: !4960)
!5126 = !DILocation(line: 381, column: 6, scope: !4899, inlinedAt: !4960)
!5127 = !DILocation(line: 381, column: 11, scope: !4899, inlinedAt: !4960)
!5128 = !DILocation(line: 381, column: 6, scope: !4702, inlinedAt: !4960)
!5129 = !DILocation(line: 381, column: 33, scope: !4899, inlinedAt: !4960)
!5130 = !DILocation(line: 382, column: 2, scope: !4904, inlinedAt: !4960)
!5131 = !DILocation(line: 382, column: 2, scope: !4908, inlinedAt: !4960)
!5132 = !DILocation(line: 382, column: 2, scope: !4909, inlinedAt: !4960)
!5133 = !DILocation(line: 386, column: 1, scope: !4702, inlinedAt: !4960)
!5134 = !DILocation(line: 547, column: 9, scope: !4685, inlinedAt: !4953)
!5135 = !DILocation(line: 549, column: 8, scope: !4915, inlinedAt: !4953)
!5136 = !DILocation(line: 549, column: 7, scope: !4685, inlinedAt: !4953)
!5137 = !DILocation(line: 550, column: 4, scope: !4915, inlinedAt: !4953)
!5138 = !DILocation(line: 553, column: 33, scope: !4685, inlinedAt: !4953)
!5139 = !DILocation(line: 325, column: 6, scope: !4920, inlinedAt: !4958)
!5140 = !DILocation(line: 325, column: 6, scope: !4696, inlinedAt: !4958)
!5141 = !DILocation(line: 326, column: 3, scope: !4920, inlinedAt: !4958)
!5142 = !DILocation(line: 332, column: 9, scope: !4696, inlinedAt: !4958)
!5143 = !DILocation(line: 332, column: 15, scope: !4696, inlinedAt: !4958)
!5144 = !DILocation(line: 332, column: 2, scope: !4696, inlinedAt: !4958)
!5145 = !DILocation(line: 336, column: 1, scope: !4696, inlinedAt: !4958)
!5146 = !DILocation(line: 553, column: 5, scope: !4685, inlinedAt: !4953)
!5147 = !DILocation(line: 553, column: 41, scope: !4685, inlinedAt: !4953)
!5148 = !DILocation(line: 554, column: 5, scope: !4685, inlinedAt: !4953)
!5149 = !DILocation(line: 554, column: 12, scope: !4685, inlinedAt: !4953)
!5150 = !DILocation(line: 448, column: 31, scope: !4680, inlinedAt: !4952)
!5151 = !DILocation(line: 448, column: 34, scope: !4680, inlinedAt: !4952)
!5152 = !DILocation(line: 448, column: 14, scope: !4680, inlinedAt: !4952)
!5153 = !DILocation(line: 450, column: 22, scope: !4680, inlinedAt: !4952)
!5154 = !DILocation(line: 450, column: 25, scope: !4680, inlinedAt: !4952)
!5155 = !DILocation(line: 450, column: 30, scope: !4680, inlinedAt: !4952)
!5156 = !DILocation(line: 450, column: 36, scope: !4680, inlinedAt: !4952)
!5157 = !DILocation(line: 450, column: 8, scope: !4680, inlinedAt: !4952)
!5158 = !DILocation(line: 450, column: 6, scope: !4680, inlinedAt: !4952)
!5159 = !DILocation(line: 451, column: 9, scope: !4680, inlinedAt: !4952)
!5160 = !DILocation(line: 552, column: 3, scope: !4685, inlinedAt: !4953)
!5161 = !DILocation(line: 557, column: 19, scope: !4687, inlinedAt: !4953)
!5162 = !DILocation(line: 557, column: 25, scope: !4687, inlinedAt: !4953)
!5163 = !DILocation(line: 557, column: 9, scope: !4687, inlinedAt: !4953)
!5164 = !DILocation(line: 557, column: 2, scope: !4687, inlinedAt: !4953)
!5165 = !DILocation(line: 558, column: 1, scope: !4687, inlinedAt: !4953)
!5166 = !DILocation(line: 37, column: 4, scope: !4948)
!5167 = !DILocation(line: 38, column: 7, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 38, column: 6)
!5169 = !DILocation(line: 38, column: 6, scope: !4948)
!5170 = !DILocation(line: 39, column: 3, scope: !5168)
!5171 = !DILocation(line: 41, column: 9, scope: !4948)
!5172 = !DILocation(line: 41, column: 2, scope: !4948)
!5173 = !DILocation(line: 41, column: 7, scope: !4948)
!5174 = !DILocation(line: 42, column: 2, scope: !4948)
!5175 = !DILocation(line: 42, column: 7, scope: !4948)
!5176 = !DILocation(line: 44, column: 15, scope: !4948)
!5177 = !DILocation(line: 44, column: 2, scope: !4948)
!5178 = !DILocation(line: 44, column: 9, scope: !4948)
!5179 = !DILocation(line: 44, column: 13, scope: !4948)
!5180 = !DILocation(line: 45, column: 15, scope: !4948)
!5181 = !DILocation(line: 45, column: 17, scope: !4948)
!5182 = !DILocation(line: 45, column: 2, scope: !4948)
!5183 = !DILocation(line: 45, column: 9, scope: !4948)
!5184 = !DILocation(line: 45, column: 13, scope: !4948)
!5185 = !DILocation(line: 47, column: 19, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 47, column: 6)
!5187 = !DILocation(line: 47, column: 25, scope: !5186)
!5188 = !DILocation(line: 47, column: 30, scope: !5186)
!5189 = !DILocation(line: 47, column: 6, scope: !5186)
!5190 = !DILocation(line: 47, column: 38, scope: !5186)
!5191 = !DILocation(line: 47, column: 6, scope: !4948)
!5192 = !DILocation(line: 48, column: 3, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 47, column: 44)
!5194 = !DILocation(line: 49, column: 6, scope: !5193)
!5195 = !DILocation(line: 50, column: 2, scope: !5193)
!5196 = !DILocation(line: 51, column: 9, scope: !4948)
!5197 = !DILocation(line: 51, column: 3, scope: !4948)
!5198 = !DILocation(line: 51, column: 7, scope: !4948)
!5199 = !DILocation(line: 52, column: 8, scope: !4948)
!5200 = !DILocation(line: 52, column: 2, scope: !4948)
!5201 = !DILocation(line: 54, column: 9, scope: !4948)
!5202 = !DILocation(line: 54, column: 2, scope: !4948)
!5203 = !DILocation(line: 55, column: 1, scope: !4948)
!5204 = distinct !DISubprogram(name: "mt2060_calibrate", scope: !3, file: !3, line: 277, type: !5205, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!5205 = !DISubroutineType(types: !5206)
!5206 = !{null, !4588}
!5207 = !DILocalVariable(name: "priv", arg: 1, scope: !5204, file: !3, line: 277, type: !4588)
!5208 = !DILocation(line: 277, column: 50, scope: !5204)
!5209 = !DILocalVariable(name: "b", scope: !5204, file: !3, line: 279, type: !361)
!5210 = !DILocation(line: 279, column: 5, scope: !5204)
!5211 = !DILocalVariable(name: "i", scope: !5204, file: !3, line: 280, type: !313)
!5212 = !DILocation(line: 280, column: 6, scope: !5204)
!5213 = !DILocation(line: 282, column: 23, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 282, column: 6)
!5215 = !DILocation(line: 282, column: 6, scope: !5214)
!5216 = !DILocation(line: 282, column: 6, scope: !5204)
!5217 = !DILocation(line: 283, column: 3, scope: !5214)
!5218 = !DILocation(line: 284, column: 23, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 284, column: 6)
!5220 = !DILocation(line: 284, column: 6, scope: !5219)
!5221 = !DILocation(line: 284, column: 6, scope: !5204)
!5222 = !DILocation(line: 285, column: 3, scope: !5219)
!5223 = !DILocation(line: 288, column: 18, scope: !5204)
!5224 = !DILocation(line: 288, column: 35, scope: !5204)
!5225 = !DILocation(line: 288, column: 41, scope: !5204)
!5226 = !DILocation(line: 288, column: 46, scope: !5204)
!5227 = !DILocation(line: 288, column: 56, scope: !5204)
!5228 = !DILocation(line: 288, column: 62, scope: !5204)
!5229 = !DILocation(line: 288, column: 34, scope: !5204)
!5230 = !DILocation(line: 288, column: 2, scope: !5204)
!5231 = !DILocation(line: 290, column: 2, scope: !5204)
!5232 = !DILocation(line: 291, column: 5, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 290, column: 5)
!5234 = !DILocation(line: 292, column: 19, scope: !5233)
!5235 = !DILocation(line: 292, column: 35, scope: !5233)
!5236 = !DILocation(line: 292, column: 3, scope: !5233)
!5237 = !DILocation(line: 293, column: 3, scope: !5233)
!5238 = !DILocation(line: 295, column: 7, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 295, column: 7)
!5240 = !DILocation(line: 295, column: 9, scope: !5239)
!5241 = !DILocation(line: 295, column: 7, scope: !5233)
!5242 = !DILocation(line: 296, column: 6, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 295, column: 15)
!5244 = !DILocation(line: 297, column: 20, scope: !5243)
!5245 = !DILocation(line: 297, column: 36, scope: !5243)
!5246 = !DILocation(line: 297, column: 4, scope: !5243)
!5247 = !DILocation(line: 298, column: 6, scope: !5243)
!5248 = !DILocation(line: 299, column: 4, scope: !5243)
!5249 = !DILocation(line: 300, column: 3, scope: !5243)
!5250 = !DILocation(line: 302, column: 5, scope: !5233)
!5251 = !DILocation(line: 303, column: 19, scope: !5233)
!5252 = !DILocation(line: 303, column: 35, scope: !5233)
!5253 = !DILocation(line: 303, column: 3, scope: !5233)
!5254 = !DILocation(line: 305, column: 3, scope: !5233)
!5255 = !DILocation(line: 306, column: 4, scope: !5233)
!5256 = !DILocation(line: 307, column: 2, scope: !5233)
!5257 = !DILocation(line: 307, column: 11, scope: !5204)
!5258 = !DILocation(line: 307, column: 13, scope: !5204)
!5259 = distinct !{!5259, !5231, !5260}
!5260 = !DILocation(line: 307, column: 16, scope: !5204)
!5261 = !DILocation(line: 309, column: 4, scope: !5204)
!5262 = !DILocation(line: 310, column: 2, scope: !5204)
!5263 = !DILocation(line: 310, column: 10, scope: !5204)
!5264 = !DILocation(line: 310, column: 13, scope: !5204)
!5265 = !DILocation(line: 310, column: 18, scope: !5204)
!5266 = !DILocation(line: 310, column: 36, scope: !5204)
!5267 = !DILocation(line: 310, column: 21, scope: !5204)
!5268 = !DILocation(line: 310, column: 61, scope: !5204)
!5269 = !DILocation(line: 310, column: 66, scope: !5204)
!5270 = !DILocation(line: 310, column: 70, scope: !5204)
!5271 = !DILocation(line: 310, column: 72, scope: !5204)
!5272 = !DILocation(line: 310, column: 84, scope: !5204)
!5273 = !DILocation(line: 0, scope: !5204)
!5274 = !DILocation(line: 311, column: 3, scope: !5204)
!5275 = distinct !{!5275, !5262, !5276}
!5276 = !DILocation(line: 311, column: 12, scope: !5204)
!5277 = !DILocation(line: 313, column: 6, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 313, column: 6)
!5279 = !DILocation(line: 313, column: 8, scope: !5278)
!5280 = !DILocation(line: 313, column: 6, scope: !5204)
!5281 = !DILocation(line: 314, column: 18, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 313, column: 15)
!5283 = !DILocation(line: 314, column: 38, scope: !5282)
!5284 = !DILocation(line: 314, column: 44, scope: !5282)
!5285 = !DILocation(line: 314, column: 3, scope: !5282)
!5286 = !DILocation(line: 315, column: 3, scope: !5282)
!5287 = !DILocation(line: 315, column: 3, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 315, column: 3)
!5289 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 315, column: 3)
!5290 = !DILocation(line: 315, column: 3, scope: !5289)
!5291 = !DILocation(line: 315, column: 3, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 315, column: 3)
!5293 = !DILocation(line: 316, column: 2, scope: !5282)
!5294 = !DILocation(line: 317, column: 3, scope: !5278)
!5295 = !DILocation(line: 317, column: 3, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 317, column: 3)
!5297 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 317, column: 3)
!5298 = !DILocation(line: 317, column: 3, scope: !5297)
!5299 = !DILocation(line: 317, column: 3, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5296, file: !3, line: 317, column: 3)
!5301 = !DILocation(line: 318, column: 1, scope: !5204)
!5302 = distinct !DISubprogram(name: "mt2060_driver_init", scope: !3, file: !3, line: 535, type: !5303, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!5303 = !DISubroutineType(types: !5304)
!5304 = !{!313}
!5305 = !DILocation(line: 535, column: 1, scope: !5302)
!5306 = distinct !DISubprogram(name: "mt2060_driver_exit", scope: !3, file: !3, line: 535, type: !403, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!5307 = !DILocation(line: 535, column: 1, scope: !5306)
!5308 = distinct !DISubprogram(name: "get_order", scope: !5309, file: !5309, line: 29, type: !5310, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!5309 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5310 = !DISubroutineType(types: !5311)
!5311 = !{!313, !669}
!5312 = !DILocalVariable(name: "x", arg: 1, scope: !5313, file: !5314, line: 366, type: !594)
!5313 = distinct !DISubprogram(name: "fls64", scope: !5314, file: !5314, line: 366, type: !5315, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!5314 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5315 = !DISubroutineType(types: !5316)
!5316 = !{!313, !594}
!5317 = !DILocation(line: 366, column: 40, scope: !5313, inlinedAt: !5318)
!5318 = distinct !DILocation(line: 46, column: 9, scope: !5308)
!5319 = !DILocalVariable(name: "bitpos", scope: !5313, file: !5314, line: 368, type: !313)
!5320 = !DILocation(line: 368, column: 6, scope: !5313, inlinedAt: !5318)
!5321 = !DILocalVariable(name: "size", arg: 1, scope: !5308, file: !5309, line: 29, type: !669)
!5322 = !DILocation(line: 29, column: 63, scope: !5308)
!5323 = !DILocation(line: 31, column: 27, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5308, file: !5309, line: 31, column: 6)
!5325 = !DILocation(line: 31, column: 6, scope: !5324)
!5326 = !DILocation(line: 31, column: 6, scope: !5308)
!5327 = !DILocation(line: 32, column: 8, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5329, file: !5309, line: 32, column: 7)
!5329 = distinct !DILexicalBlock(scope: !5324, file: !5309, line: 31, column: 34)
!5330 = !DILocation(line: 32, column: 7, scope: !5329)
!5331 = !DILocation(line: 33, column: 4, scope: !5328)
!5332 = !DILocation(line: 35, column: 7, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5329, file: !5309, line: 35, column: 7)
!5334 = !DILocation(line: 35, column: 12, scope: !5333)
!5335 = !DILocation(line: 35, column: 7, scope: !5329)
!5336 = !DILocation(line: 36, column: 4, scope: !5333)
!5337 = !DILocation(line: 38, column: 10, scope: !5329)
!5338 = !DILocation(line: 38, column: 28, scope: !5329)
!5339 = !DILocation(line: 38, column: 41, scope: !5329)
!5340 = !DILocation(line: 38, column: 3, scope: !5329)
!5341 = !DILocation(line: 41, column: 6, scope: !5308)
!5342 = !DILocation(line: 42, column: 7, scope: !5308)
!5343 = !DILocation(line: 46, column: 15, scope: !5308)
!5344 = !DILocation(line: 374, column: 2, scope: !5313, inlinedAt: !5318)
!5345 = !DILocation(line: 376, column: 14, scope: !5313, inlinedAt: !5318)
!5346 = !{i32 309057}
!5347 = !DILocation(line: 377, column: 9, scope: !5313, inlinedAt: !5318)
!5348 = !DILocation(line: 377, column: 16, scope: !5313, inlinedAt: !5318)
!5349 = !DILocation(line: 46, column: 2, scope: !5308)
!5350 = !DILocation(line: 48, column: 1, scope: !5308)
!5351 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5352, file: !5352, line: 30, type: !5353, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!5352 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5353 = !DISubroutineType(types: !5354)
!5354 = !{!313, !699}
!5355 = !DILocation(line: 366, column: 40, scope: !5313, inlinedAt: !5356)
!5356 = distinct !DILocation(line: 32, column: 9, scope: !5351)
!5357 = !DILocation(line: 368, column: 6, scope: !5313, inlinedAt: !5356)
!5358 = !DILocalVariable(name: "n", arg: 1, scope: !5351, file: !5352, line: 30, type: !699)
!5359 = !DILocation(line: 30, column: 21, scope: !5351)
!5360 = !DILocation(line: 32, column: 15, scope: !5351)
!5361 = !DILocation(line: 374, column: 2, scope: !5313, inlinedAt: !5356)
!5362 = !DILocation(line: 376, column: 14, scope: !5313, inlinedAt: !5356)
!5363 = !DILocation(line: 377, column: 9, scope: !5313, inlinedAt: !5356)
!5364 = !DILocation(line: 377, column: 16, scope: !5313, inlinedAt: !5356)
!5365 = !DILocation(line: 32, column: 18, scope: !5351)
!5366 = !DILocation(line: 32, column: 2, scope: !5351)
!5367 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5368, file: !5368, line: 137, type: !5369, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!5368 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5369 = !DISubroutineType(types: !5370)
!5370 = !{!312, !1425, !2526, !833, !310}
!5371 = !DILocalVariable(name: "s", arg: 1, scope: !5367, file: !5368, line: 137, type: !1425)
!5372 = !DILocation(line: 137, column: 54, scope: !5367)
!5373 = !DILocalVariable(name: "object", arg: 2, scope: !5367, file: !5368, line: 137, type: !2526)
!5374 = !DILocation(line: 137, column: 69, scope: !5367)
!5375 = !DILocalVariable(name: "size", arg: 3, scope: !5367, file: !5368, line: 138, type: !833)
!5376 = !DILocation(line: 138, column: 12, scope: !5367)
!5377 = !DILocalVariable(name: "flags", arg: 4, scope: !5367, file: !5368, line: 138, type: !310)
!5378 = !DILocation(line: 138, column: 24, scope: !5367)
!5379 = !DILocation(line: 140, column: 17, scope: !5367)
!5380 = !DILocation(line: 140, column: 2, scope: !5367)
!5381 = distinct !DISubprogram(name: "mt2060_release", scope: !3, file: !3, line: 380, type: !449, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!5382 = !DILocalVariable(name: "fe", arg: 1, scope: !5381, file: !3, line: 380, type: !451)
!5383 = !DILocation(line: 380, column: 49, scope: !5381)
!5384 = !DILocation(line: 382, column: 8, scope: !5381)
!5385 = !DILocation(line: 382, column: 12, scope: !5381)
!5386 = !DILocation(line: 382, column: 2, scope: !5381)
!5387 = !DILocation(line: 383, column: 2, scope: !5381)
!5388 = !DILocation(line: 383, column: 6, scope: !5381)
!5389 = !DILocation(line: 383, column: 17, scope: !5381)
!5390 = !DILocation(line: 384, column: 1, scope: !5381)
!5391 = distinct !DISubprogram(name: "mt2060_init", scope: !3, file: !3, line: 333, type: !492, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!5392 = !DILocalVariable(name: "fe", arg: 1, scope: !5391, file: !3, line: 333, type: !451)
!5393 = !DILocation(line: 333, column: 45, scope: !5391)
!5394 = !DILocalVariable(name: "priv", scope: !5391, file: !3, line: 335, type: !4588)
!5395 = !DILocation(line: 335, column: 22, scope: !5391)
!5396 = !DILocation(line: 335, column: 29, scope: !5391)
!5397 = !DILocation(line: 335, column: 33, scope: !5391)
!5398 = !DILocalVariable(name: "ret", scope: !5391, file: !3, line: 336, type: !313)
!5399 = !DILocation(line: 336, column: 6, scope: !5391)
!5400 = !DILocation(line: 338, column: 6, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 338, column: 6)
!5402 = !DILocation(line: 338, column: 10, scope: !5401)
!5403 = !DILocation(line: 338, column: 14, scope: !5401)
!5404 = !DILocation(line: 338, column: 6, scope: !5391)
!5405 = !DILocation(line: 339, column: 3, scope: !5401)
!5406 = !DILocation(line: 339, column: 7, scope: !5401)
!5407 = !DILocation(line: 339, column: 11, scope: !5401)
!5408 = !DILocation(line: 339, column: 25, scope: !5401)
!5409 = !DILocation(line: 341, column: 6, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 341, column: 6)
!5411 = !DILocation(line: 341, column: 12, scope: !5410)
!5412 = !DILocation(line: 341, column: 6, scope: !5391)
!5413 = !DILocation(line: 342, column: 25, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 341, column: 19)
!5415 = !DILocation(line: 342, column: 9, scope: !5414)
!5416 = !DILocation(line: 342, column: 7, scope: !5414)
!5417 = !DILocation(line: 343, column: 7, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 343, column: 7)
!5419 = !DILocation(line: 343, column: 7, scope: !5414)
!5420 = !DILocation(line: 344, column: 4, scope: !5418)
!5421 = !DILocation(line: 345, column: 2, scope: !5414)
!5422 = !DILocation(line: 347, column: 24, scope: !5391)
!5423 = !DILocation(line: 348, column: 11, scope: !5391)
!5424 = !DILocation(line: 348, column: 17, scope: !5391)
!5425 = !DILocation(line: 348, column: 22, scope: !5391)
!5426 = !DILocation(line: 348, column: 32, scope: !5391)
!5427 = !DILocation(line: 348, column: 38, scope: !5391)
!5428 = !DILocation(line: 348, column: 10, scope: !5391)
!5429 = !DILocation(line: 347, column: 8, scope: !5391)
!5430 = !DILocation(line: 347, column: 6, scope: !5391)
!5431 = !DILocation(line: 347, column: 2, scope: !5391)
!5432 = !DILabel(scope: !5391, name: "err_i2c_gate_ctrl", file: !3, line: 350)
!5433 = !DILocation(line: 350, column: 1, scope: !5391)
!5434 = !DILocation(line: 351, column: 6, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 351, column: 6)
!5436 = !DILocation(line: 351, column: 10, scope: !5435)
!5437 = !DILocation(line: 351, column: 14, scope: !5435)
!5438 = !DILocation(line: 351, column: 6, scope: !5391)
!5439 = !DILocation(line: 352, column: 3, scope: !5435)
!5440 = !DILocation(line: 352, column: 7, scope: !5435)
!5441 = !DILocation(line: 352, column: 11, scope: !5435)
!5442 = !DILocation(line: 352, column: 25, scope: !5435)
!5443 = !DILocation(line: 354, column: 9, scope: !5391)
!5444 = !DILocation(line: 354, column: 2, scope: !5391)
!5445 = distinct !DISubprogram(name: "mt2060_sleep", scope: !3, file: !3, line: 357, type: !492, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!5446 = !DILocalVariable(name: "fe", arg: 1, scope: !5445, file: !3, line: 357, type: !451)
!5447 = !DILocation(line: 357, column: 46, scope: !5445)
!5448 = !DILocalVariable(name: "priv", scope: !5445, file: !3, line: 359, type: !4588)
!5449 = !DILocation(line: 359, column: 22, scope: !5445)
!5450 = !DILocation(line: 359, column: 29, scope: !5445)
!5451 = !DILocation(line: 359, column: 33, scope: !5445)
!5452 = !DILocalVariable(name: "ret", scope: !5445, file: !3, line: 360, type: !313)
!5453 = !DILocation(line: 360, column: 6, scope: !5445)
!5454 = !DILocation(line: 362, column: 6, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5445, file: !3, line: 362, column: 6)
!5456 = !DILocation(line: 362, column: 10, scope: !5455)
!5457 = !DILocation(line: 362, column: 14, scope: !5455)
!5458 = !DILocation(line: 362, column: 6, scope: !5445)
!5459 = !DILocation(line: 363, column: 3, scope: !5455)
!5460 = !DILocation(line: 363, column: 7, scope: !5455)
!5461 = !DILocation(line: 363, column: 11, scope: !5455)
!5462 = !DILocation(line: 363, column: 25, scope: !5455)
!5463 = !DILocation(line: 365, column: 24, scope: !5445)
!5464 = !DILocation(line: 366, column: 11, scope: !5445)
!5465 = !DILocation(line: 366, column: 17, scope: !5445)
!5466 = !DILocation(line: 366, column: 22, scope: !5445)
!5467 = !DILocation(line: 366, column: 32, scope: !5445)
!5468 = !DILocation(line: 366, column: 38, scope: !5445)
!5469 = !DILocation(line: 366, column: 10, scope: !5445)
!5470 = !DILocation(line: 365, column: 8, scope: !5445)
!5471 = !DILocation(line: 365, column: 6, scope: !5445)
!5472 = !DILocation(line: 367, column: 6, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5445, file: !3, line: 367, column: 6)
!5474 = !DILocation(line: 367, column: 6, scope: !5445)
!5475 = !DILocation(line: 368, column: 3, scope: !5473)
!5476 = !DILocation(line: 370, column: 6, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5445, file: !3, line: 370, column: 6)
!5478 = !DILocation(line: 370, column: 12, scope: !5477)
!5479 = !DILocation(line: 370, column: 6, scope: !5445)
!5480 = !DILocation(line: 371, column: 25, scope: !5477)
!5481 = !DILocation(line: 371, column: 9, scope: !5477)
!5482 = !DILocation(line: 371, column: 7, scope: !5477)
!5483 = !DILocation(line: 371, column: 3, scope: !5477)
!5484 = !DILabel(scope: !5445, name: "err_i2c_gate_ctrl", file: !3, line: 373)
!5485 = !DILocation(line: 373, column: 1, scope: !5445)
!5486 = !DILocation(line: 374, column: 6, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5445, file: !3, line: 374, column: 6)
!5488 = !DILocation(line: 374, column: 10, scope: !5487)
!5489 = !DILocation(line: 374, column: 14, scope: !5487)
!5490 = !DILocation(line: 374, column: 6, scope: !5445)
!5491 = !DILocation(line: 375, column: 3, scope: !5487)
!5492 = !DILocation(line: 375, column: 7, scope: !5487)
!5493 = !DILocation(line: 375, column: 11, scope: !5487)
!5494 = !DILocation(line: 375, column: 25, scope: !5487)
!5495 = !DILocation(line: 377, column: 9, scope: !5445)
!5496 = !DILocation(line: 377, column: 2, scope: !5445)
!5497 = distinct !DISubprogram(name: "mt2060_set_params", scope: !3, file: !3, line: 188, type: !492, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!5498 = !DILocalVariable(name: "fe", arg: 1, scope: !5497, file: !3, line: 188, type: !451)
!5499 = !DILocation(line: 188, column: 51, scope: !5497)
!5500 = !DILocalVariable(name: "c", scope: !5497, file: !3, line: 190, type: !527)
!5501 = !DILocation(line: 190, column: 34, scope: !5497)
!5502 = !DILocation(line: 190, column: 39, scope: !5497)
!5503 = !DILocation(line: 190, column: 43, scope: !5497)
!5504 = !DILocalVariable(name: "priv", scope: !5497, file: !3, line: 191, type: !4588)
!5505 = !DILocation(line: 191, column: 22, scope: !5497)
!5506 = !DILocalVariable(name: "i", scope: !5497, file: !3, line: 192, type: !313)
!5507 = !DILocation(line: 192, column: 6, scope: !5497)
!5508 = !DILocalVariable(name: "freq", scope: !5497, file: !3, line: 193, type: !440)
!5509 = !DILocation(line: 193, column: 6, scope: !5497)
!5510 = !DILocalVariable(name: "lnaband", scope: !5497, file: !3, line: 194, type: !361)
!5511 = !DILocation(line: 194, column: 6, scope: !5497)
!5512 = !DILocalVariable(name: "f_lo1", scope: !5497, file: !3, line: 195, type: !440)
!5513 = !DILocation(line: 195, column: 6, scope: !5497)
!5514 = !DILocalVariable(name: "f_lo2", scope: !5497, file: !3, line: 195, type: !440)
!5515 = !DILocation(line: 195, column: 12, scope: !5497)
!5516 = !DILocalVariable(name: "div1", scope: !5497, file: !3, line: 196, type: !440)
!5517 = !DILocation(line: 196, column: 6, scope: !5497)
!5518 = !DILocalVariable(name: "num1", scope: !5497, file: !3, line: 196, type: !440)
!5519 = !DILocation(line: 196, column: 11, scope: !5497)
!5520 = !DILocalVariable(name: "div2", scope: !5497, file: !3, line: 196, type: !440)
!5521 = !DILocation(line: 196, column: 16, scope: !5497)
!5522 = !DILocalVariable(name: "num2", scope: !5497, file: !3, line: 196, type: !440)
!5523 = !DILocation(line: 196, column: 21, scope: !5497)
!5524 = !DILocalVariable(name: "b", scope: !5497, file: !3, line: 197, type: !484)
!5525 = !DILocation(line: 197, column: 6, scope: !5497)
!5526 = !DILocalVariable(name: "if1", scope: !5497, file: !3, line: 198, type: !440)
!5527 = !DILocation(line: 198, column: 6, scope: !5497)
!5528 = !DILocation(line: 200, column: 9, scope: !5497)
!5529 = !DILocation(line: 200, column: 13, scope: !5497)
!5530 = !DILocation(line: 200, column: 7, scope: !5497)
!5531 = !DILocation(line: 202, column: 8, scope: !5497)
!5532 = !DILocation(line: 202, column: 14, scope: !5497)
!5533 = !DILocation(line: 202, column: 6, scope: !5497)
!5534 = !DILocation(line: 203, column: 2, scope: !5497)
!5535 = !DILocation(line: 203, column: 7, scope: !5497)
!5536 = !DILocation(line: 204, column: 2, scope: !5497)
!5537 = !DILocation(line: 204, column: 7, scope: !5497)
!5538 = !DILocation(line: 206, column: 6, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 206, column: 6)
!5540 = !DILocation(line: 206, column: 10, scope: !5539)
!5541 = !DILocation(line: 206, column: 14, scope: !5539)
!5542 = !DILocation(line: 206, column: 6, scope: !5497)
!5543 = !DILocation(line: 207, column: 3, scope: !5539)
!5544 = !DILocation(line: 207, column: 7, scope: !5539)
!5545 = !DILocation(line: 207, column: 11, scope: !5539)
!5546 = !DILocation(line: 207, column: 25, scope: !5539)
!5547 = !DILocation(line: 209, column: 19, scope: !5497)
!5548 = !DILocation(line: 209, column: 24, scope: !5497)
!5549 = !DILocation(line: 209, column: 2, scope: !5497)
!5550 = !DILocation(line: 211, column: 9, scope: !5497)
!5551 = !DILocation(line: 211, column: 12, scope: !5497)
!5552 = !DILocation(line: 211, column: 22, scope: !5497)
!5553 = !DILocation(line: 211, column: 7, scope: !5497)
!5554 = !DILocation(line: 213, column: 10, scope: !5497)
!5555 = !DILocation(line: 213, column: 17, scope: !5497)
!5556 = !DILocation(line: 213, column: 21, scope: !5497)
!5557 = !DILocation(line: 213, column: 15, scope: !5497)
!5558 = !DILocation(line: 213, column: 8, scope: !5497)
!5559 = !DILocation(line: 214, column: 11, scope: !5497)
!5560 = !DILocation(line: 214, column: 17, scope: !5497)
!5561 = !DILocation(line: 214, column: 24, scope: !5497)
!5562 = !DILocation(line: 214, column: 8, scope: !5497)
!5563 = !DILocation(line: 215, column: 10, scope: !5497)
!5564 = !DILocation(line: 215, column: 18, scope: !5497)
!5565 = !DILocation(line: 215, column: 16, scope: !5497)
!5566 = !DILocation(line: 215, column: 23, scope: !5497)
!5567 = !DILocation(line: 215, column: 8, scope: !5497)
!5568 = !DILocation(line: 217, column: 12, scope: !5497)
!5569 = !DILocation(line: 217, column: 18, scope: !5497)
!5570 = !DILocation(line: 217, column: 24, scope: !5497)
!5571 = !DILocation(line: 217, column: 30, scope: !5497)
!5572 = !DILocation(line: 217, column: 8, scope: !5497)
!5573 = !DILocation(line: 218, column: 22, scope: !5497)
!5574 = !DILocation(line: 218, column: 30, scope: !5497)
!5575 = !DILocation(line: 218, column: 28, scope: !5497)
!5576 = !DILocation(line: 218, column: 36, scope: !5497)
!5577 = !DILocation(line: 218, column: 43, scope: !5497)
!5578 = !DILocation(line: 218, column: 2, scope: !5497)
!5579 = !DILocation(line: 218, column: 8, scope: !5497)
!5580 = !DILocation(line: 218, column: 18, scope: !5497)
!5581 = !DILocation(line: 227, column: 9, scope: !5497)
!5582 = !DILocation(line: 227, column: 15, scope: !5497)
!5583 = !DILocation(line: 227, column: 7, scope: !5497)
!5584 = !DILocation(line: 228, column: 9, scope: !5497)
!5585 = !DILocation(line: 228, column: 14, scope: !5497)
!5586 = !DILocation(line: 228, column: 7, scope: !5497)
!5587 = !DILocation(line: 229, column: 7, scope: !5497)
!5588 = !DILocation(line: 232, column: 9, scope: !5497)
!5589 = !DILocation(line: 232, column: 15, scope: !5497)
!5590 = !DILocation(line: 232, column: 20, scope: !5497)
!5591 = !DILocation(line: 232, column: 7, scope: !5497)
!5592 = !DILocation(line: 233, column: 9, scope: !5497)
!5593 = !DILocation(line: 233, column: 14, scope: !5497)
!5594 = !DILocation(line: 233, column: 7, scope: !5497)
!5595 = !DILocation(line: 234, column: 7, scope: !5497)
!5596 = !DILocation(line: 236, column: 6, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 236, column: 6)
!5598 = !DILocation(line: 236, column: 11, scope: !5597)
!5599 = !DILocation(line: 236, column: 6, scope: !5497)
!5600 = !DILocation(line: 236, column: 30, scope: !5597)
!5601 = !DILocation(line: 236, column: 22, scope: !5597)
!5602 = !DILocation(line: 237, column: 6, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 237, column: 6)
!5604 = !DILocation(line: 237, column: 11, scope: !5603)
!5605 = !DILocation(line: 237, column: 6, scope: !5597)
!5606 = !DILocation(line: 237, column: 30, scope: !5603)
!5607 = !DILocation(line: 237, column: 22, scope: !5603)
!5608 = !DILocation(line: 238, column: 6, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 238, column: 6)
!5610 = !DILocation(line: 238, column: 11, scope: !5609)
!5611 = !DILocation(line: 238, column: 6, scope: !5603)
!5612 = !DILocation(line: 238, column: 30, scope: !5609)
!5613 = !DILocation(line: 238, column: 22, scope: !5609)
!5614 = !DILocation(line: 239, column: 6, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 239, column: 6)
!5616 = !DILocation(line: 239, column: 11, scope: !5615)
!5617 = !DILocation(line: 239, column: 6, scope: !5609)
!5618 = !DILocation(line: 239, column: 30, scope: !5615)
!5619 = !DILocation(line: 239, column: 22, scope: !5615)
!5620 = !DILocation(line: 240, column: 6, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 240, column: 6)
!5622 = !DILocation(line: 240, column: 11, scope: !5621)
!5623 = !DILocation(line: 240, column: 6, scope: !5615)
!5624 = !DILocation(line: 240, column: 30, scope: !5621)
!5625 = !DILocation(line: 240, column: 22, scope: !5621)
!5626 = !DILocation(line: 241, column: 6, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5621, file: !3, line: 241, column: 6)
!5628 = !DILocation(line: 241, column: 11, scope: !5627)
!5629 = !DILocation(line: 241, column: 6, scope: !5621)
!5630 = !DILocation(line: 241, column: 30, scope: !5627)
!5631 = !DILocation(line: 241, column: 22, scope: !5627)
!5632 = !DILocation(line: 242, column: 6, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 242, column: 6)
!5634 = !DILocation(line: 242, column: 11, scope: !5633)
!5635 = !DILocation(line: 242, column: 6, scope: !5627)
!5636 = !DILocation(line: 242, column: 30, scope: !5633)
!5637 = !DILocation(line: 242, column: 22, scope: !5633)
!5638 = !DILocation(line: 243, column: 6, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 243, column: 6)
!5640 = !DILocation(line: 243, column: 11, scope: !5639)
!5641 = !DILocation(line: 243, column: 6, scope: !5633)
!5642 = !DILocation(line: 243, column: 30, scope: !5639)
!5643 = !DILocation(line: 243, column: 22, scope: !5639)
!5644 = !DILocation(line: 244, column: 6, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5639, file: !3, line: 244, column: 6)
!5646 = !DILocation(line: 244, column: 11, scope: !5645)
!5647 = !DILocation(line: 244, column: 6, scope: !5639)
!5648 = !DILocation(line: 244, column: 30, scope: !5645)
!5649 = !DILocation(line: 244, column: 22, scope: !5645)
!5650 = !DILocation(line: 245, column: 6, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 245, column: 6)
!5652 = !DILocation(line: 245, column: 11, scope: !5651)
!5653 = !DILocation(line: 245, column: 6, scope: !5645)
!5654 = !DILocation(line: 245, column: 30, scope: !5651)
!5655 = !DILocation(line: 245, column: 22, scope: !5651)
!5656 = !DILocation(line: 245, column: 51, scope: !5651)
!5657 = !DILocation(line: 247, column: 2, scope: !5497)
!5658 = !DILocation(line: 247, column: 7, scope: !5497)
!5659 = !DILocation(line: 248, column: 9, scope: !5497)
!5660 = !DILocation(line: 248, column: 21, scope: !5497)
!5661 = !DILocation(line: 248, column: 26, scope: !5497)
!5662 = !DILocation(line: 248, column: 31, scope: !5497)
!5663 = !DILocation(line: 248, column: 17, scope: !5497)
!5664 = !DILocation(line: 248, column: 2, scope: !5497)
!5665 = !DILocation(line: 248, column: 7, scope: !5497)
!5666 = !DILocation(line: 249, column: 9, scope: !5497)
!5667 = !DILocation(line: 249, column: 2, scope: !5497)
!5668 = !DILocation(line: 249, column: 7, scope: !5497)
!5669 = !DILocation(line: 250, column: 10, scope: !5497)
!5670 = !DILocation(line: 250, column: 15, scope: !5497)
!5671 = !DILocation(line: 250, column: 28, scope: !5497)
!5672 = !DILocation(line: 250, column: 33, scope: !5497)
!5673 = !DILocation(line: 250, column: 38, scope: !5497)
!5674 = !DILocation(line: 250, column: 24, scope: !5497)
!5675 = !DILocation(line: 250, column: 9, scope: !5497)
!5676 = !DILocation(line: 250, column: 2, scope: !5497)
!5677 = !DILocation(line: 250, column: 7, scope: !5497)
!5678 = !DILocation(line: 251, column: 9, scope: !5497)
!5679 = !DILocation(line: 251, column: 14, scope: !5497)
!5680 = !DILocation(line: 251, column: 2, scope: !5497)
!5681 = !DILocation(line: 251, column: 7, scope: !5497)
!5682 = !DILocation(line: 252, column: 11, scope: !5497)
!5683 = !DILocation(line: 252, column: 16, scope: !5497)
!5684 = !DILocation(line: 252, column: 22, scope: !5497)
!5685 = !DILocation(line: 252, column: 30, scope: !5497)
!5686 = !DILocation(line: 252, column: 35, scope: !5497)
!5687 = !DILocation(line: 252, column: 27, scope: !5497)
!5688 = !DILocation(line: 252, column: 9, scope: !5497)
!5689 = !DILocation(line: 252, column: 2, scope: !5497)
!5690 = !DILocation(line: 252, column: 7, scope: !5497)
!5691 = !DILocation(line: 254, column: 2, scope: !5497)
!5692 = !DILocation(line: 254, column: 2, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 254, column: 2)
!5694 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 254, column: 2)
!5695 = !DILocation(line: 254, column: 2, scope: !5694)
!5696 = !DILocation(line: 254, column: 2, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5693, file: !3, line: 254, column: 2)
!5698 = !DILocation(line: 255, column: 2, scope: !5497)
!5699 = !DILocation(line: 255, column: 2, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 255, column: 2)
!5701 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 255, column: 2)
!5702 = !DILocation(line: 255, column: 2, scope: !5701)
!5703 = !DILocation(line: 255, column: 2, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5700, file: !3, line: 255, column: 2)
!5705 = !DILocation(line: 256, column: 2, scope: !5497)
!5706 = !DILocation(line: 256, column: 2, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 256, column: 2)
!5708 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 256, column: 2)
!5709 = !DILocation(line: 256, column: 2, scope: !5708)
!5710 = !DILocation(line: 256, column: 2, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5707, file: !3, line: 256, column: 2)
!5712 = !DILocation(line: 257, column: 2, scope: !5497)
!5713 = !DILocation(line: 257, column: 2, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 257, column: 2)
!5715 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 257, column: 2)
!5716 = !DILocation(line: 257, column: 2, scope: !5715)
!5717 = !DILocation(line: 257, column: 2, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5714, file: !3, line: 257, column: 2)
!5719 = !DILocation(line: 259, column: 19, scope: !5497)
!5720 = !DILocation(line: 259, column: 24, scope: !5497)
!5721 = !DILocation(line: 259, column: 2, scope: !5497)
!5722 = !DILocation(line: 262, column: 4, scope: !5497)
!5723 = !DILocation(line: 263, column: 2, scope: !5497)
!5724 = !DILocation(line: 264, column: 18, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 263, column: 5)
!5726 = !DILocation(line: 264, column: 37, scope: !5725)
!5727 = !DILocation(line: 264, column: 3, scope: !5725)
!5728 = !DILocation(line: 265, column: 8, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 265, column: 7)
!5730 = !DILocation(line: 265, column: 13, scope: !5729)
!5731 = !DILocation(line: 265, column: 20, scope: !5729)
!5732 = !DILocation(line: 265, column: 7, scope: !5725)
!5733 = !DILocation(line: 266, column: 4, scope: !5729)
!5734 = !DILocation(line: 267, column: 3, scope: !5725)
!5735 = !DILocation(line: 268, column: 4, scope: !5725)
!5736 = !DILocation(line: 269, column: 2, scope: !5725)
!5737 = !DILocation(line: 269, column: 11, scope: !5497)
!5738 = !DILocation(line: 269, column: 12, scope: !5497)
!5739 = distinct !{!5739, !5723, !5740}
!5740 = !DILocation(line: 269, column: 15, scope: !5497)
!5741 = !DILocation(line: 271, column: 6, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 271, column: 6)
!5743 = !DILocation(line: 271, column: 10, scope: !5742)
!5744 = !DILocation(line: 271, column: 14, scope: !5742)
!5745 = !DILocation(line: 271, column: 6, scope: !5497)
!5746 = !DILocation(line: 272, column: 3, scope: !5742)
!5747 = !DILocation(line: 272, column: 7, scope: !5742)
!5748 = !DILocation(line: 272, column: 11, scope: !5742)
!5749 = !DILocation(line: 272, column: 25, scope: !5742)
!5750 = !DILocation(line: 274, column: 2, scope: !5497)
!5751 = distinct !DISubprogram(name: "mt2060_get_frequency", scope: !3, file: !3, line: 320, type: !614, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!5752 = !DILocalVariable(name: "fe", arg: 1, scope: !5751, file: !3, line: 320, type: !451)
!5753 = !DILocation(line: 320, column: 54, scope: !5751)
!5754 = !DILocalVariable(name: "frequency", arg: 2, scope: !5751, file: !3, line: 320, type: !616)
!5755 = !DILocation(line: 320, column: 63, scope: !5751)
!5756 = !DILocalVariable(name: "priv", scope: !5751, file: !3, line: 322, type: !4588)
!5757 = !DILocation(line: 322, column: 22, scope: !5751)
!5758 = !DILocation(line: 322, column: 29, scope: !5751)
!5759 = !DILocation(line: 322, column: 33, scope: !5751)
!5760 = !DILocation(line: 323, column: 15, scope: !5751)
!5761 = !DILocation(line: 323, column: 21, scope: !5751)
!5762 = !DILocation(line: 323, column: 3, scope: !5751)
!5763 = !DILocation(line: 323, column: 13, scope: !5751)
!5764 = !DILocation(line: 324, column: 2, scope: !5751)
!5765 = distinct !DISubprogram(name: "mt2060_get_if_frequency", scope: !3, file: !3, line: 327, type: !614, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!5766 = !DILocalVariable(name: "fe", arg: 1, scope: !5765, file: !3, line: 327, type: !451)
!5767 = !DILocation(line: 327, column: 57, scope: !5765)
!5768 = !DILocalVariable(name: "frequency", arg: 2, scope: !5765, file: !3, line: 327, type: !616)
!5769 = !DILocation(line: 327, column: 66, scope: !5765)
!5770 = !DILocation(line: 329, column: 3, scope: !5765)
!5771 = !DILocation(line: 329, column: 13, scope: !5765)
!5772 = !DILocation(line: 330, column: 2, scope: !5765)
!5773 = distinct !DISubprogram(name: "mt2060_writereg", scope: !3, file: !3, line: 58, type: !5774, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!5774 = !DISubroutineType(types: !5775)
!5775 = !{!313, !4588, !361, !361}
!5776 = !DILocation(line: 445, column: 72, scope: !4680, inlinedAt: !5777)
!5777 = distinct !DILocation(line: 552, column: 10, scope: !4685, inlinedAt: !5778)
!5778 = distinct !DILocation(line: 66, column: 8, scope: !5773)
!5779 = !DILocation(line: 446, column: 9, scope: !4680, inlinedAt: !5777)
!5780 = !DILocation(line: 446, column: 23, scope: !4680, inlinedAt: !5777)
!5781 = !DILocation(line: 448, column: 8, scope: !4680, inlinedAt: !5777)
!5782 = !DILocation(line: 318, column: 67, scope: !4696, inlinedAt: !5783)
!5783 = distinct !DILocation(line: 553, column: 20, scope: !4685, inlinedAt: !5778)
!5784 = !DILocation(line: 346, column: 58, scope: !4702, inlinedAt: !5785)
!5785 = distinct !DILocation(line: 547, column: 11, scope: !4685, inlinedAt: !5778)
!5786 = !DILocation(line: 472, column: 28, scope: !4708, inlinedAt: !5787)
!5787 = distinct !DILocation(line: 481, column: 9, scope: !4713, inlinedAt: !5788)
!5788 = distinct !DILocation(line: 545, column: 11, scope: !4715, inlinedAt: !5778)
!5789 = !DILocation(line: 472, column: 40, scope: !4708, inlinedAt: !5787)
!5790 = !DILocation(line: 472, column: 60, scope: !4708, inlinedAt: !5787)
!5791 = !DILocation(line: 478, column: 51, scope: !4713, inlinedAt: !5788)
!5792 = !DILocation(line: 478, column: 63, scope: !4713, inlinedAt: !5788)
!5793 = !DILocation(line: 480, column: 15, scope: !4713, inlinedAt: !5788)
!5794 = !DILocation(line: 538, column: 45, scope: !4687, inlinedAt: !5778)
!5795 = !DILocation(line: 538, column: 57, scope: !4687, inlinedAt: !5778)
!5796 = !DILocation(line: 542, column: 16, scope: !4685, inlinedAt: !5778)
!5797 = !DILocalVariable(name: "priv", arg: 1, scope: !5773, file: !3, line: 58, type: !4588)
!5798 = !DILocation(line: 58, column: 48, scope: !5773)
!5799 = !DILocalVariable(name: "reg", arg: 2, scope: !5773, file: !3, line: 58, type: !361)
!5800 = !DILocation(line: 58, column: 57, scope: !5773)
!5801 = !DILocalVariable(name: "val", arg: 3, scope: !5773, file: !3, line: 58, type: !361)
!5802 = !DILocation(line: 58, column: 65, scope: !5773)
!5803 = !DILocalVariable(name: "msg", scope: !5773, file: !3, line: 60, type: !4363)
!5804 = !DILocation(line: 60, column: 17, scope: !5773)
!5805 = !DILocation(line: 60, column: 23, scope: !5773)
!5806 = !DILocation(line: 61, column: 11, scope: !5773)
!5807 = !DILocation(line: 61, column: 17, scope: !5773)
!5808 = !DILocation(line: 61, column: 22, scope: !5773)
!5809 = !DILocalVariable(name: "buf", scope: !5773, file: !3, line: 63, type: !4318)
!5810 = !DILocation(line: 63, column: 6, scope: !5773)
!5811 = !DILocalVariable(name: "rc", scope: !5773, file: !3, line: 64, type: !313)
!5812 = !DILocation(line: 64, column: 6, scope: !5773)
!5813 = !DILocation(line: 540, column: 27, scope: !4686, inlinedAt: !5778)
!5814 = !DILocation(line: 540, column: 6, scope: !4686, inlinedAt: !5778)
!5815 = !DILocation(line: 540, column: 6, scope: !4687, inlinedAt: !5778)
!5816 = !DILocation(line: 544, column: 7, scope: !4715, inlinedAt: !5778)
!5817 = !DILocation(line: 544, column: 12, scope: !4715, inlinedAt: !5778)
!5818 = !DILocation(line: 544, column: 7, scope: !4685, inlinedAt: !5778)
!5819 = !DILocation(line: 545, column: 25, scope: !4715, inlinedAt: !5778)
!5820 = !DILocation(line: 545, column: 31, scope: !4715, inlinedAt: !5778)
!5821 = !DILocation(line: 480, column: 33, scope: !4713, inlinedAt: !5788)
!5822 = !DILocation(line: 480, column: 23, scope: !4713, inlinedAt: !5788)
!5823 = !DILocation(line: 481, column: 29, scope: !4713, inlinedAt: !5788)
!5824 = !DILocation(line: 481, column: 35, scope: !4713, inlinedAt: !5788)
!5825 = !DILocation(line: 481, column: 42, scope: !4713, inlinedAt: !5788)
!5826 = !DILocation(line: 474, column: 23, scope: !4708, inlinedAt: !5787)
!5827 = !DILocation(line: 474, column: 29, scope: !4708, inlinedAt: !5787)
!5828 = !DILocation(line: 474, column: 36, scope: !4708, inlinedAt: !5787)
!5829 = !DILocation(line: 474, column: 9, scope: !4708, inlinedAt: !5787)
!5830 = !DILocation(line: 545, column: 4, scope: !4715, inlinedAt: !5778)
!5831 = !DILocation(line: 547, column: 25, scope: !4685, inlinedAt: !5778)
!5832 = !DILocation(line: 348, column: 7, scope: !4759, inlinedAt: !5785)
!5833 = !DILocation(line: 348, column: 6, scope: !4702, inlinedAt: !5785)
!5834 = !DILocation(line: 349, column: 3, scope: !4759, inlinedAt: !5785)
!5835 = !DILocation(line: 351, column: 6, scope: !4763, inlinedAt: !5785)
!5836 = !DILocation(line: 351, column: 11, scope: !4763, inlinedAt: !5785)
!5837 = !DILocation(line: 351, column: 6, scope: !4702, inlinedAt: !5785)
!5838 = !DILocation(line: 352, column: 3, scope: !4763, inlinedAt: !5785)
!5839 = !DILocation(line: 354, column: 32, scope: !4768, inlinedAt: !5785)
!5840 = !DILocation(line: 354, column: 37, scope: !4768, inlinedAt: !5785)
!5841 = !DILocation(line: 354, column: 42, scope: !4768, inlinedAt: !5785)
!5842 = !DILocation(line: 354, column: 45, scope: !4768, inlinedAt: !5785)
!5843 = !DILocation(line: 354, column: 50, scope: !4768, inlinedAt: !5785)
!5844 = !DILocation(line: 354, column: 6, scope: !4702, inlinedAt: !5785)
!5845 = !DILocation(line: 355, column: 3, scope: !4768, inlinedAt: !5785)
!5846 = !DILocation(line: 356, column: 32, scope: !4776, inlinedAt: !5785)
!5847 = !DILocation(line: 356, column: 37, scope: !4776, inlinedAt: !5785)
!5848 = !DILocation(line: 356, column: 43, scope: !4776, inlinedAt: !5785)
!5849 = !DILocation(line: 356, column: 46, scope: !4776, inlinedAt: !5785)
!5850 = !DILocation(line: 356, column: 51, scope: !4776, inlinedAt: !5785)
!5851 = !DILocation(line: 356, column: 6, scope: !4702, inlinedAt: !5785)
!5852 = !DILocation(line: 357, column: 3, scope: !4776, inlinedAt: !5785)
!5853 = !DILocation(line: 358, column: 6, scope: !4784, inlinedAt: !5785)
!5854 = !DILocation(line: 358, column: 11, scope: !4784, inlinedAt: !5785)
!5855 = !DILocation(line: 358, column: 6, scope: !4702, inlinedAt: !5785)
!5856 = !DILocation(line: 358, column: 26, scope: !4784, inlinedAt: !5785)
!5857 = !DILocation(line: 359, column: 6, scope: !4789, inlinedAt: !5785)
!5858 = !DILocation(line: 359, column: 11, scope: !4789, inlinedAt: !5785)
!5859 = !DILocation(line: 359, column: 6, scope: !4702, inlinedAt: !5785)
!5860 = !DILocation(line: 359, column: 26, scope: !4789, inlinedAt: !5785)
!5861 = !DILocation(line: 360, column: 6, scope: !4794, inlinedAt: !5785)
!5862 = !DILocation(line: 360, column: 11, scope: !4794, inlinedAt: !5785)
!5863 = !DILocation(line: 360, column: 6, scope: !4702, inlinedAt: !5785)
!5864 = !DILocation(line: 360, column: 26, scope: !4794, inlinedAt: !5785)
!5865 = !DILocation(line: 361, column: 6, scope: !4799, inlinedAt: !5785)
!5866 = !DILocation(line: 361, column: 11, scope: !4799, inlinedAt: !5785)
!5867 = !DILocation(line: 361, column: 6, scope: !4702, inlinedAt: !5785)
!5868 = !DILocation(line: 361, column: 26, scope: !4799, inlinedAt: !5785)
!5869 = !DILocation(line: 362, column: 6, scope: !4804, inlinedAt: !5785)
!5870 = !DILocation(line: 362, column: 11, scope: !4804, inlinedAt: !5785)
!5871 = !DILocation(line: 362, column: 6, scope: !4702, inlinedAt: !5785)
!5872 = !DILocation(line: 362, column: 26, scope: !4804, inlinedAt: !5785)
!5873 = !DILocation(line: 363, column: 6, scope: !4809, inlinedAt: !5785)
!5874 = !DILocation(line: 363, column: 11, scope: !4809, inlinedAt: !5785)
!5875 = !DILocation(line: 363, column: 6, scope: !4702, inlinedAt: !5785)
!5876 = !DILocation(line: 363, column: 26, scope: !4809, inlinedAt: !5785)
!5877 = !DILocation(line: 364, column: 6, scope: !4814, inlinedAt: !5785)
!5878 = !DILocation(line: 364, column: 11, scope: !4814, inlinedAt: !5785)
!5879 = !DILocation(line: 364, column: 6, scope: !4702, inlinedAt: !5785)
!5880 = !DILocation(line: 364, column: 26, scope: !4814, inlinedAt: !5785)
!5881 = !DILocation(line: 365, column: 6, scope: !4819, inlinedAt: !5785)
!5882 = !DILocation(line: 365, column: 11, scope: !4819, inlinedAt: !5785)
!5883 = !DILocation(line: 365, column: 6, scope: !4702, inlinedAt: !5785)
!5884 = !DILocation(line: 365, column: 26, scope: !4819, inlinedAt: !5785)
!5885 = !DILocation(line: 366, column: 6, scope: !4824, inlinedAt: !5785)
!5886 = !DILocation(line: 366, column: 11, scope: !4824, inlinedAt: !5785)
!5887 = !DILocation(line: 366, column: 6, scope: !4702, inlinedAt: !5785)
!5888 = !DILocation(line: 366, column: 26, scope: !4824, inlinedAt: !5785)
!5889 = !DILocation(line: 367, column: 6, scope: !4829, inlinedAt: !5785)
!5890 = !DILocation(line: 367, column: 11, scope: !4829, inlinedAt: !5785)
!5891 = !DILocation(line: 367, column: 6, scope: !4702, inlinedAt: !5785)
!5892 = !DILocation(line: 367, column: 26, scope: !4829, inlinedAt: !5785)
!5893 = !DILocation(line: 368, column: 6, scope: !4834, inlinedAt: !5785)
!5894 = !DILocation(line: 368, column: 11, scope: !4834, inlinedAt: !5785)
!5895 = !DILocation(line: 368, column: 6, scope: !4702, inlinedAt: !5785)
!5896 = !DILocation(line: 368, column: 26, scope: !4834, inlinedAt: !5785)
!5897 = !DILocation(line: 369, column: 6, scope: !4839, inlinedAt: !5785)
!5898 = !DILocation(line: 369, column: 11, scope: !4839, inlinedAt: !5785)
!5899 = !DILocation(line: 369, column: 6, scope: !4702, inlinedAt: !5785)
!5900 = !DILocation(line: 369, column: 26, scope: !4839, inlinedAt: !5785)
!5901 = !DILocation(line: 370, column: 6, scope: !4844, inlinedAt: !5785)
!5902 = !DILocation(line: 370, column: 11, scope: !4844, inlinedAt: !5785)
!5903 = !DILocation(line: 370, column: 6, scope: !4702, inlinedAt: !5785)
!5904 = !DILocation(line: 370, column: 26, scope: !4844, inlinedAt: !5785)
!5905 = !DILocation(line: 371, column: 6, scope: !4849, inlinedAt: !5785)
!5906 = !DILocation(line: 371, column: 11, scope: !4849, inlinedAt: !5785)
!5907 = !DILocation(line: 371, column: 6, scope: !4702, inlinedAt: !5785)
!5908 = !DILocation(line: 371, column: 26, scope: !4849, inlinedAt: !5785)
!5909 = !DILocation(line: 372, column: 6, scope: !4854, inlinedAt: !5785)
!5910 = !DILocation(line: 372, column: 11, scope: !4854, inlinedAt: !5785)
!5911 = !DILocation(line: 372, column: 6, scope: !4702, inlinedAt: !5785)
!5912 = !DILocation(line: 372, column: 26, scope: !4854, inlinedAt: !5785)
!5913 = !DILocation(line: 373, column: 6, scope: !4859, inlinedAt: !5785)
!5914 = !DILocation(line: 373, column: 11, scope: !4859, inlinedAt: !5785)
!5915 = !DILocation(line: 373, column: 6, scope: !4702, inlinedAt: !5785)
!5916 = !DILocation(line: 373, column: 26, scope: !4859, inlinedAt: !5785)
!5917 = !DILocation(line: 374, column: 6, scope: !4864, inlinedAt: !5785)
!5918 = !DILocation(line: 374, column: 11, scope: !4864, inlinedAt: !5785)
!5919 = !DILocation(line: 374, column: 6, scope: !4702, inlinedAt: !5785)
!5920 = !DILocation(line: 374, column: 26, scope: !4864, inlinedAt: !5785)
!5921 = !DILocation(line: 375, column: 6, scope: !4869, inlinedAt: !5785)
!5922 = !DILocation(line: 375, column: 11, scope: !4869, inlinedAt: !5785)
!5923 = !DILocation(line: 375, column: 6, scope: !4702, inlinedAt: !5785)
!5924 = !DILocation(line: 375, column: 27, scope: !4869, inlinedAt: !5785)
!5925 = !DILocation(line: 376, column: 6, scope: !4874, inlinedAt: !5785)
!5926 = !DILocation(line: 376, column: 11, scope: !4874, inlinedAt: !5785)
!5927 = !DILocation(line: 376, column: 6, scope: !4702, inlinedAt: !5785)
!5928 = !DILocation(line: 376, column: 32, scope: !4874, inlinedAt: !5785)
!5929 = !DILocation(line: 377, column: 6, scope: !4879, inlinedAt: !5785)
!5930 = !DILocation(line: 377, column: 11, scope: !4879, inlinedAt: !5785)
!5931 = !DILocation(line: 377, column: 6, scope: !4702, inlinedAt: !5785)
!5932 = !DILocation(line: 377, column: 32, scope: !4879, inlinedAt: !5785)
!5933 = !DILocation(line: 378, column: 6, scope: !4884, inlinedAt: !5785)
!5934 = !DILocation(line: 378, column: 11, scope: !4884, inlinedAt: !5785)
!5935 = !DILocation(line: 378, column: 6, scope: !4702, inlinedAt: !5785)
!5936 = !DILocation(line: 378, column: 32, scope: !4884, inlinedAt: !5785)
!5937 = !DILocation(line: 379, column: 6, scope: !4889, inlinedAt: !5785)
!5938 = !DILocation(line: 379, column: 11, scope: !4889, inlinedAt: !5785)
!5939 = !DILocation(line: 379, column: 6, scope: !4702, inlinedAt: !5785)
!5940 = !DILocation(line: 379, column: 33, scope: !4889, inlinedAt: !5785)
!5941 = !DILocation(line: 380, column: 6, scope: !4894, inlinedAt: !5785)
!5942 = !DILocation(line: 380, column: 11, scope: !4894, inlinedAt: !5785)
!5943 = !DILocation(line: 380, column: 6, scope: !4702, inlinedAt: !5785)
!5944 = !DILocation(line: 380, column: 33, scope: !4894, inlinedAt: !5785)
!5945 = !DILocation(line: 381, column: 6, scope: !4899, inlinedAt: !5785)
!5946 = !DILocation(line: 381, column: 11, scope: !4899, inlinedAt: !5785)
!5947 = !DILocation(line: 381, column: 6, scope: !4702, inlinedAt: !5785)
!5948 = !DILocation(line: 381, column: 33, scope: !4899, inlinedAt: !5785)
!5949 = !DILocation(line: 382, column: 2, scope: !4904, inlinedAt: !5785)
!5950 = !DILocation(line: 382, column: 2, scope: !4908, inlinedAt: !5785)
!5951 = !DILocation(line: 382, column: 2, scope: !4909, inlinedAt: !5785)
!5952 = !DILocation(line: 386, column: 1, scope: !4702, inlinedAt: !5785)
!5953 = !DILocation(line: 547, column: 9, scope: !4685, inlinedAt: !5778)
!5954 = !DILocation(line: 549, column: 8, scope: !4915, inlinedAt: !5778)
!5955 = !DILocation(line: 549, column: 7, scope: !4685, inlinedAt: !5778)
!5956 = !DILocation(line: 550, column: 4, scope: !4915, inlinedAt: !5778)
!5957 = !DILocation(line: 553, column: 33, scope: !4685, inlinedAt: !5778)
!5958 = !DILocation(line: 325, column: 6, scope: !4920, inlinedAt: !5783)
!5959 = !DILocation(line: 325, column: 6, scope: !4696, inlinedAt: !5783)
!5960 = !DILocation(line: 326, column: 3, scope: !4920, inlinedAt: !5783)
!5961 = !DILocation(line: 332, column: 9, scope: !4696, inlinedAt: !5783)
!5962 = !DILocation(line: 332, column: 15, scope: !4696, inlinedAt: !5783)
!5963 = !DILocation(line: 332, column: 2, scope: !4696, inlinedAt: !5783)
!5964 = !DILocation(line: 336, column: 1, scope: !4696, inlinedAt: !5783)
!5965 = !DILocation(line: 553, column: 5, scope: !4685, inlinedAt: !5778)
!5966 = !DILocation(line: 553, column: 41, scope: !4685, inlinedAt: !5778)
!5967 = !DILocation(line: 554, column: 5, scope: !4685, inlinedAt: !5778)
!5968 = !DILocation(line: 554, column: 12, scope: !4685, inlinedAt: !5778)
!5969 = !DILocation(line: 448, column: 31, scope: !4680, inlinedAt: !5777)
!5970 = !DILocation(line: 448, column: 34, scope: !4680, inlinedAt: !5777)
!5971 = !DILocation(line: 448, column: 14, scope: !4680, inlinedAt: !5777)
!5972 = !DILocation(line: 450, column: 22, scope: !4680, inlinedAt: !5777)
!5973 = !DILocation(line: 450, column: 25, scope: !4680, inlinedAt: !5777)
!5974 = !DILocation(line: 450, column: 30, scope: !4680, inlinedAt: !5777)
!5975 = !DILocation(line: 450, column: 36, scope: !4680, inlinedAt: !5777)
!5976 = !DILocation(line: 450, column: 8, scope: !4680, inlinedAt: !5777)
!5977 = !DILocation(line: 450, column: 6, scope: !4680, inlinedAt: !5777)
!5978 = !DILocation(line: 451, column: 9, scope: !4680, inlinedAt: !5777)
!5979 = !DILocation(line: 552, column: 3, scope: !4685, inlinedAt: !5778)
!5980 = !DILocation(line: 557, column: 19, scope: !4687, inlinedAt: !5778)
!5981 = !DILocation(line: 557, column: 25, scope: !4687, inlinedAt: !5778)
!5982 = !DILocation(line: 557, column: 9, scope: !4687, inlinedAt: !5778)
!5983 = !DILocation(line: 557, column: 2, scope: !4687, inlinedAt: !5778)
!5984 = !DILocation(line: 558, column: 1, scope: !4687, inlinedAt: !5778)
!5985 = !DILocation(line: 66, column: 6, scope: !5773)
!5986 = !DILocation(line: 67, column: 7, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5773, file: !3, line: 67, column: 6)
!5988 = !DILocation(line: 67, column: 6, scope: !5773)
!5989 = !DILocation(line: 68, column: 3, scope: !5987)
!5990 = !DILocation(line: 70, column: 11, scope: !5773)
!5991 = !DILocation(line: 70, column: 2, scope: !5773)
!5992 = !DILocation(line: 70, column: 9, scope: !5773)
!5993 = !DILocation(line: 71, column: 11, scope: !5773)
!5994 = !DILocation(line: 71, column: 2, scope: !5773)
!5995 = !DILocation(line: 71, column: 9, scope: !5773)
!5996 = !DILocation(line: 73, column: 12, scope: !5773)
!5997 = !DILocation(line: 73, column: 6, scope: !5773)
!5998 = !DILocation(line: 73, column: 10, scope: !5773)
!5999 = !DILocation(line: 75, column: 19, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5773, file: !3, line: 75, column: 6)
!6001 = !DILocation(line: 75, column: 25, scope: !6000)
!6002 = !DILocation(line: 75, column: 6, scope: !6000)
!6003 = !DILocation(line: 75, column: 39, scope: !6000)
!6004 = !DILocation(line: 75, column: 6, scope: !5773)
!6005 = !DILocation(line: 76, column: 3, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 75, column: 45)
!6007 = !DILocation(line: 77, column: 6, scope: !6006)
!6008 = !DILocation(line: 78, column: 2, scope: !6006)
!6009 = !DILocation(line: 79, column: 8, scope: !5773)
!6010 = !DILocation(line: 79, column: 2, scope: !5773)
!6011 = !DILocation(line: 80, column: 9, scope: !5773)
!6012 = !DILocation(line: 80, column: 2, scope: !5773)
!6013 = !DILocation(line: 81, column: 1, scope: !5773)
!6014 = distinct !DISubprogram(name: "mt2060_writeregs", scope: !3, file: !3, line: 84, type: !6015, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!6015 = !DISubroutineType(types: !6016)
!6016 = !{!313, !4588, !4318, !361}
!6017 = !DILocation(line: 445, column: 72, scope: !4680, inlinedAt: !6018)
!6018 = distinct !DILocation(line: 552, column: 10, scope: !4685, inlinedAt: !6019)
!6019 = distinct !DILocation(line: 93, column: 13, scope: !6014)
!6020 = !DILocation(line: 446, column: 9, scope: !4680, inlinedAt: !6018)
!6021 = !DILocation(line: 446, column: 23, scope: !4680, inlinedAt: !6018)
!6022 = !DILocation(line: 448, column: 8, scope: !4680, inlinedAt: !6018)
!6023 = !DILocation(line: 318, column: 67, scope: !4696, inlinedAt: !6024)
!6024 = distinct !DILocation(line: 553, column: 20, scope: !4685, inlinedAt: !6019)
!6025 = !DILocation(line: 346, column: 58, scope: !4702, inlinedAt: !6026)
!6026 = distinct !DILocation(line: 547, column: 11, scope: !4685, inlinedAt: !6019)
!6027 = !DILocation(line: 472, column: 28, scope: !4708, inlinedAt: !6028)
!6028 = distinct !DILocation(line: 481, column: 9, scope: !4713, inlinedAt: !6029)
!6029 = distinct !DILocation(line: 545, column: 11, scope: !4715, inlinedAt: !6019)
!6030 = !DILocation(line: 472, column: 40, scope: !4708, inlinedAt: !6028)
!6031 = !DILocation(line: 472, column: 60, scope: !4708, inlinedAt: !6028)
!6032 = !DILocation(line: 478, column: 51, scope: !4713, inlinedAt: !6029)
!6033 = !DILocation(line: 478, column: 63, scope: !4713, inlinedAt: !6029)
!6034 = !DILocation(line: 480, column: 15, scope: !4713, inlinedAt: !6029)
!6035 = !DILocation(line: 538, column: 45, scope: !4687, inlinedAt: !6019)
!6036 = !DILocation(line: 538, column: 57, scope: !4687, inlinedAt: !6019)
!6037 = !DILocation(line: 542, column: 16, scope: !4685, inlinedAt: !6019)
!6038 = !DILocalVariable(name: "priv", arg: 1, scope: !6014, file: !3, line: 84, type: !4588)
!6039 = !DILocation(line: 84, column: 49, scope: !6014)
!6040 = !DILocalVariable(name: "buf", arg: 2, scope: !6014, file: !3, line: 84, type: !4318)
!6041 = !DILocation(line: 84, column: 58, scope: !6014)
!6042 = !DILocalVariable(name: "len", arg: 3, scope: !6014, file: !3, line: 84, type: !361)
!6043 = !DILocation(line: 84, column: 66, scope: !6014)
!6044 = !DILocalVariable(name: "rem", scope: !6014, file: !3, line: 86, type: !313)
!6045 = !DILocation(line: 86, column: 6, scope: !6014)
!6046 = !DILocalVariable(name: "val_len", scope: !6014, file: !3, line: 86, type: !313)
!6047 = !DILocation(line: 86, column: 11, scope: !6014)
!6048 = !DILocalVariable(name: "xfer_buf", scope: !6014, file: !3, line: 87, type: !4318)
!6049 = !DILocation(line: 87, column: 6, scope: !6014)
!6050 = !DILocalVariable(name: "rc", scope: !6014, file: !3, line: 88, type: !313)
!6051 = !DILocation(line: 88, column: 6, scope: !6014)
!6052 = !DILocalVariable(name: "msg", scope: !6014, file: !3, line: 89, type: !4363)
!6053 = !DILocation(line: 89, column: 17, scope: !6014)
!6054 = !DILocation(line: 89, column: 23, scope: !6014)
!6055 = !DILocation(line: 90, column: 11, scope: !6014)
!6056 = !DILocation(line: 90, column: 17, scope: !6014)
!6057 = !DILocation(line: 90, column: 22, scope: !6014)
!6058 = !DILocation(line: 540, column: 27, scope: !4686, inlinedAt: !6019)
!6059 = !DILocation(line: 540, column: 6, scope: !4686, inlinedAt: !6019)
!6060 = !DILocation(line: 540, column: 6, scope: !4687, inlinedAt: !6019)
!6061 = !DILocation(line: 544, column: 7, scope: !4715, inlinedAt: !6019)
!6062 = !DILocation(line: 544, column: 12, scope: !4715, inlinedAt: !6019)
!6063 = !DILocation(line: 544, column: 7, scope: !4685, inlinedAt: !6019)
!6064 = !DILocation(line: 545, column: 25, scope: !4715, inlinedAt: !6019)
!6065 = !DILocation(line: 545, column: 31, scope: !4715, inlinedAt: !6019)
!6066 = !DILocation(line: 480, column: 33, scope: !4713, inlinedAt: !6029)
!6067 = !DILocation(line: 480, column: 23, scope: !4713, inlinedAt: !6029)
!6068 = !DILocation(line: 481, column: 29, scope: !4713, inlinedAt: !6029)
!6069 = !DILocation(line: 481, column: 35, scope: !4713, inlinedAt: !6029)
!6070 = !DILocation(line: 481, column: 42, scope: !4713, inlinedAt: !6029)
!6071 = !DILocation(line: 474, column: 23, scope: !4708, inlinedAt: !6028)
!6072 = !DILocation(line: 474, column: 29, scope: !4708, inlinedAt: !6028)
!6073 = !DILocation(line: 474, column: 36, scope: !4708, inlinedAt: !6028)
!6074 = !DILocation(line: 474, column: 9, scope: !4708, inlinedAt: !6028)
!6075 = !DILocation(line: 545, column: 4, scope: !4715, inlinedAt: !6019)
!6076 = !DILocation(line: 547, column: 25, scope: !4685, inlinedAt: !6019)
!6077 = !DILocation(line: 348, column: 7, scope: !4759, inlinedAt: !6026)
!6078 = !DILocation(line: 348, column: 6, scope: !4702, inlinedAt: !6026)
!6079 = !DILocation(line: 349, column: 3, scope: !4759, inlinedAt: !6026)
!6080 = !DILocation(line: 351, column: 6, scope: !4763, inlinedAt: !6026)
!6081 = !DILocation(line: 351, column: 11, scope: !4763, inlinedAt: !6026)
!6082 = !DILocation(line: 351, column: 6, scope: !4702, inlinedAt: !6026)
!6083 = !DILocation(line: 352, column: 3, scope: !4763, inlinedAt: !6026)
!6084 = !DILocation(line: 354, column: 32, scope: !4768, inlinedAt: !6026)
!6085 = !DILocation(line: 354, column: 37, scope: !4768, inlinedAt: !6026)
!6086 = !DILocation(line: 354, column: 42, scope: !4768, inlinedAt: !6026)
!6087 = !DILocation(line: 354, column: 45, scope: !4768, inlinedAt: !6026)
!6088 = !DILocation(line: 354, column: 50, scope: !4768, inlinedAt: !6026)
!6089 = !DILocation(line: 354, column: 6, scope: !4702, inlinedAt: !6026)
!6090 = !DILocation(line: 355, column: 3, scope: !4768, inlinedAt: !6026)
!6091 = !DILocation(line: 356, column: 32, scope: !4776, inlinedAt: !6026)
!6092 = !DILocation(line: 356, column: 37, scope: !4776, inlinedAt: !6026)
!6093 = !DILocation(line: 356, column: 43, scope: !4776, inlinedAt: !6026)
!6094 = !DILocation(line: 356, column: 46, scope: !4776, inlinedAt: !6026)
!6095 = !DILocation(line: 356, column: 51, scope: !4776, inlinedAt: !6026)
!6096 = !DILocation(line: 356, column: 6, scope: !4702, inlinedAt: !6026)
!6097 = !DILocation(line: 357, column: 3, scope: !4776, inlinedAt: !6026)
!6098 = !DILocation(line: 358, column: 6, scope: !4784, inlinedAt: !6026)
!6099 = !DILocation(line: 358, column: 11, scope: !4784, inlinedAt: !6026)
!6100 = !DILocation(line: 358, column: 6, scope: !4702, inlinedAt: !6026)
!6101 = !DILocation(line: 358, column: 26, scope: !4784, inlinedAt: !6026)
!6102 = !DILocation(line: 359, column: 6, scope: !4789, inlinedAt: !6026)
!6103 = !DILocation(line: 359, column: 11, scope: !4789, inlinedAt: !6026)
!6104 = !DILocation(line: 359, column: 6, scope: !4702, inlinedAt: !6026)
!6105 = !DILocation(line: 359, column: 26, scope: !4789, inlinedAt: !6026)
!6106 = !DILocation(line: 360, column: 6, scope: !4794, inlinedAt: !6026)
!6107 = !DILocation(line: 360, column: 11, scope: !4794, inlinedAt: !6026)
!6108 = !DILocation(line: 360, column: 6, scope: !4702, inlinedAt: !6026)
!6109 = !DILocation(line: 360, column: 26, scope: !4794, inlinedAt: !6026)
!6110 = !DILocation(line: 361, column: 6, scope: !4799, inlinedAt: !6026)
!6111 = !DILocation(line: 361, column: 11, scope: !4799, inlinedAt: !6026)
!6112 = !DILocation(line: 361, column: 6, scope: !4702, inlinedAt: !6026)
!6113 = !DILocation(line: 361, column: 26, scope: !4799, inlinedAt: !6026)
!6114 = !DILocation(line: 362, column: 6, scope: !4804, inlinedAt: !6026)
!6115 = !DILocation(line: 362, column: 11, scope: !4804, inlinedAt: !6026)
!6116 = !DILocation(line: 362, column: 6, scope: !4702, inlinedAt: !6026)
!6117 = !DILocation(line: 362, column: 26, scope: !4804, inlinedAt: !6026)
!6118 = !DILocation(line: 363, column: 6, scope: !4809, inlinedAt: !6026)
!6119 = !DILocation(line: 363, column: 11, scope: !4809, inlinedAt: !6026)
!6120 = !DILocation(line: 363, column: 6, scope: !4702, inlinedAt: !6026)
!6121 = !DILocation(line: 363, column: 26, scope: !4809, inlinedAt: !6026)
!6122 = !DILocation(line: 364, column: 6, scope: !4814, inlinedAt: !6026)
!6123 = !DILocation(line: 364, column: 11, scope: !4814, inlinedAt: !6026)
!6124 = !DILocation(line: 364, column: 6, scope: !4702, inlinedAt: !6026)
!6125 = !DILocation(line: 364, column: 26, scope: !4814, inlinedAt: !6026)
!6126 = !DILocation(line: 365, column: 6, scope: !4819, inlinedAt: !6026)
!6127 = !DILocation(line: 365, column: 11, scope: !4819, inlinedAt: !6026)
!6128 = !DILocation(line: 365, column: 6, scope: !4702, inlinedAt: !6026)
!6129 = !DILocation(line: 365, column: 26, scope: !4819, inlinedAt: !6026)
!6130 = !DILocation(line: 366, column: 6, scope: !4824, inlinedAt: !6026)
!6131 = !DILocation(line: 366, column: 11, scope: !4824, inlinedAt: !6026)
!6132 = !DILocation(line: 366, column: 6, scope: !4702, inlinedAt: !6026)
!6133 = !DILocation(line: 366, column: 26, scope: !4824, inlinedAt: !6026)
!6134 = !DILocation(line: 367, column: 6, scope: !4829, inlinedAt: !6026)
!6135 = !DILocation(line: 367, column: 11, scope: !4829, inlinedAt: !6026)
!6136 = !DILocation(line: 367, column: 6, scope: !4702, inlinedAt: !6026)
!6137 = !DILocation(line: 367, column: 26, scope: !4829, inlinedAt: !6026)
!6138 = !DILocation(line: 368, column: 6, scope: !4834, inlinedAt: !6026)
!6139 = !DILocation(line: 368, column: 11, scope: !4834, inlinedAt: !6026)
!6140 = !DILocation(line: 368, column: 6, scope: !4702, inlinedAt: !6026)
!6141 = !DILocation(line: 368, column: 26, scope: !4834, inlinedAt: !6026)
!6142 = !DILocation(line: 369, column: 6, scope: !4839, inlinedAt: !6026)
!6143 = !DILocation(line: 369, column: 11, scope: !4839, inlinedAt: !6026)
!6144 = !DILocation(line: 369, column: 6, scope: !4702, inlinedAt: !6026)
!6145 = !DILocation(line: 369, column: 26, scope: !4839, inlinedAt: !6026)
!6146 = !DILocation(line: 370, column: 6, scope: !4844, inlinedAt: !6026)
!6147 = !DILocation(line: 370, column: 11, scope: !4844, inlinedAt: !6026)
!6148 = !DILocation(line: 370, column: 6, scope: !4702, inlinedAt: !6026)
!6149 = !DILocation(line: 370, column: 26, scope: !4844, inlinedAt: !6026)
!6150 = !DILocation(line: 371, column: 6, scope: !4849, inlinedAt: !6026)
!6151 = !DILocation(line: 371, column: 11, scope: !4849, inlinedAt: !6026)
!6152 = !DILocation(line: 371, column: 6, scope: !4702, inlinedAt: !6026)
!6153 = !DILocation(line: 371, column: 26, scope: !4849, inlinedAt: !6026)
!6154 = !DILocation(line: 372, column: 6, scope: !4854, inlinedAt: !6026)
!6155 = !DILocation(line: 372, column: 11, scope: !4854, inlinedAt: !6026)
!6156 = !DILocation(line: 372, column: 6, scope: !4702, inlinedAt: !6026)
!6157 = !DILocation(line: 372, column: 26, scope: !4854, inlinedAt: !6026)
!6158 = !DILocation(line: 373, column: 6, scope: !4859, inlinedAt: !6026)
!6159 = !DILocation(line: 373, column: 11, scope: !4859, inlinedAt: !6026)
!6160 = !DILocation(line: 373, column: 6, scope: !4702, inlinedAt: !6026)
!6161 = !DILocation(line: 373, column: 26, scope: !4859, inlinedAt: !6026)
!6162 = !DILocation(line: 374, column: 6, scope: !4864, inlinedAt: !6026)
!6163 = !DILocation(line: 374, column: 11, scope: !4864, inlinedAt: !6026)
!6164 = !DILocation(line: 374, column: 6, scope: !4702, inlinedAt: !6026)
!6165 = !DILocation(line: 374, column: 26, scope: !4864, inlinedAt: !6026)
!6166 = !DILocation(line: 375, column: 6, scope: !4869, inlinedAt: !6026)
!6167 = !DILocation(line: 375, column: 11, scope: !4869, inlinedAt: !6026)
!6168 = !DILocation(line: 375, column: 6, scope: !4702, inlinedAt: !6026)
!6169 = !DILocation(line: 375, column: 27, scope: !4869, inlinedAt: !6026)
!6170 = !DILocation(line: 376, column: 6, scope: !4874, inlinedAt: !6026)
!6171 = !DILocation(line: 376, column: 11, scope: !4874, inlinedAt: !6026)
!6172 = !DILocation(line: 376, column: 6, scope: !4702, inlinedAt: !6026)
!6173 = !DILocation(line: 376, column: 32, scope: !4874, inlinedAt: !6026)
!6174 = !DILocation(line: 377, column: 6, scope: !4879, inlinedAt: !6026)
!6175 = !DILocation(line: 377, column: 11, scope: !4879, inlinedAt: !6026)
!6176 = !DILocation(line: 377, column: 6, scope: !4702, inlinedAt: !6026)
!6177 = !DILocation(line: 377, column: 32, scope: !4879, inlinedAt: !6026)
!6178 = !DILocation(line: 378, column: 6, scope: !4884, inlinedAt: !6026)
!6179 = !DILocation(line: 378, column: 11, scope: !4884, inlinedAt: !6026)
!6180 = !DILocation(line: 378, column: 6, scope: !4702, inlinedAt: !6026)
!6181 = !DILocation(line: 378, column: 32, scope: !4884, inlinedAt: !6026)
!6182 = !DILocation(line: 379, column: 6, scope: !4889, inlinedAt: !6026)
!6183 = !DILocation(line: 379, column: 11, scope: !4889, inlinedAt: !6026)
!6184 = !DILocation(line: 379, column: 6, scope: !4702, inlinedAt: !6026)
!6185 = !DILocation(line: 379, column: 33, scope: !4889, inlinedAt: !6026)
!6186 = !DILocation(line: 380, column: 6, scope: !4894, inlinedAt: !6026)
!6187 = !DILocation(line: 380, column: 11, scope: !4894, inlinedAt: !6026)
!6188 = !DILocation(line: 380, column: 6, scope: !4702, inlinedAt: !6026)
!6189 = !DILocation(line: 380, column: 33, scope: !4894, inlinedAt: !6026)
!6190 = !DILocation(line: 381, column: 6, scope: !4899, inlinedAt: !6026)
!6191 = !DILocation(line: 381, column: 11, scope: !4899, inlinedAt: !6026)
!6192 = !DILocation(line: 381, column: 6, scope: !4702, inlinedAt: !6026)
!6193 = !DILocation(line: 381, column: 33, scope: !4899, inlinedAt: !6026)
!6194 = !DILocation(line: 382, column: 2, scope: !4904, inlinedAt: !6026)
!6195 = !DILocation(line: 382, column: 2, scope: !4908, inlinedAt: !6026)
!6196 = !DILocation(line: 382, column: 2, scope: !4909, inlinedAt: !6026)
!6197 = !DILocation(line: 386, column: 1, scope: !4702, inlinedAt: !6026)
!6198 = !DILocation(line: 547, column: 9, scope: !4685, inlinedAt: !6019)
!6199 = !DILocation(line: 549, column: 8, scope: !4915, inlinedAt: !6019)
!6200 = !DILocation(line: 549, column: 7, scope: !4685, inlinedAt: !6019)
!6201 = !DILocation(line: 550, column: 4, scope: !4915, inlinedAt: !6019)
!6202 = !DILocation(line: 553, column: 33, scope: !4685, inlinedAt: !6019)
!6203 = !DILocation(line: 325, column: 6, scope: !4920, inlinedAt: !6024)
!6204 = !DILocation(line: 325, column: 6, scope: !4696, inlinedAt: !6024)
!6205 = !DILocation(line: 326, column: 3, scope: !4920, inlinedAt: !6024)
!6206 = !DILocation(line: 332, column: 9, scope: !4696, inlinedAt: !6024)
!6207 = !DILocation(line: 332, column: 15, scope: !4696, inlinedAt: !6024)
!6208 = !DILocation(line: 332, column: 2, scope: !4696, inlinedAt: !6024)
!6209 = !DILocation(line: 336, column: 1, scope: !4696, inlinedAt: !6024)
!6210 = !DILocation(line: 553, column: 5, scope: !4685, inlinedAt: !6019)
!6211 = !DILocation(line: 553, column: 41, scope: !4685, inlinedAt: !6019)
!6212 = !DILocation(line: 554, column: 5, scope: !4685, inlinedAt: !6019)
!6213 = !DILocation(line: 554, column: 12, scope: !4685, inlinedAt: !6019)
!6214 = !DILocation(line: 448, column: 31, scope: !4680, inlinedAt: !6018)
!6215 = !DILocation(line: 448, column: 34, scope: !4680, inlinedAt: !6018)
!6216 = !DILocation(line: 448, column: 14, scope: !4680, inlinedAt: !6018)
!6217 = !DILocation(line: 450, column: 22, scope: !4680, inlinedAt: !6018)
!6218 = !DILocation(line: 450, column: 25, scope: !4680, inlinedAt: !6018)
!6219 = !DILocation(line: 450, column: 30, scope: !4680, inlinedAt: !6018)
!6220 = !DILocation(line: 450, column: 36, scope: !4680, inlinedAt: !6018)
!6221 = !DILocation(line: 450, column: 8, scope: !4680, inlinedAt: !6018)
!6222 = !DILocation(line: 450, column: 6, scope: !4680, inlinedAt: !6018)
!6223 = !DILocation(line: 451, column: 9, scope: !4680, inlinedAt: !6018)
!6224 = !DILocation(line: 552, column: 3, scope: !4685, inlinedAt: !6019)
!6225 = !DILocation(line: 557, column: 19, scope: !4687, inlinedAt: !6019)
!6226 = !DILocation(line: 557, column: 25, scope: !4687, inlinedAt: !6019)
!6227 = !DILocation(line: 557, column: 9, scope: !4687, inlinedAt: !6019)
!6228 = !DILocation(line: 557, column: 2, scope: !4687, inlinedAt: !6019)
!6229 = !DILocation(line: 558, column: 1, scope: !4687, inlinedAt: !6019)
!6230 = !DILocation(line: 93, column: 11, scope: !6014)
!6231 = !DILocation(line: 94, column: 7, scope: !6232)
!6232 = distinct !DILexicalBlock(scope: !6014, file: !3, line: 94, column: 6)
!6233 = !DILocation(line: 94, column: 6, scope: !6014)
!6234 = !DILocation(line: 95, column: 3, scope: !6232)
!6235 = !DILocation(line: 97, column: 12, scope: !6014)
!6236 = !DILocation(line: 97, column: 6, scope: !6014)
!6237 = !DILocation(line: 97, column: 10, scope: !6014)
!6238 = !DILocation(line: 99, column: 13, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6014, file: !3, line: 99, column: 2)
!6240 = !DILocation(line: 99, column: 17, scope: !6239)
!6241 = !DILocation(line: 99, column: 11, scope: !6239)
!6242 = !DILocation(line: 99, column: 7, scope: !6239)
!6243 = !DILocation(line: 99, column: 22, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6239, file: !3, line: 99, column: 2)
!6245 = !DILocation(line: 99, column: 26, scope: !6244)
!6246 = !DILocation(line: 99, column: 2, scope: !6239)
!6247 = !DILocalVariable(name: "__UNIQUE_ID___x222", scope: !6248, file: !3, line: 100, type: !313)
!6248 = distinct !DILexicalBlock(scope: !6249, file: !3, line: 100, column: 13)
!6249 = distinct !DILexicalBlock(scope: !6244, file: !3, line: 99, column: 58)
!6250 = !DILocation(line: 100, column: 13, scope: !6248)
!6251 = !DILocalVariable(name: "__UNIQUE_ID___y223", scope: !6248, file: !3, line: 100, type: !313)
!6252 = !DILocation(line: 100, column: 11, scope: !6249)
!6253 = !DILocation(line: 101, column: 17, scope: !6249)
!6254 = !DILocation(line: 101, column: 15, scope: !6249)
!6255 = !DILocation(line: 101, column: 13, scope: !6249)
!6256 = !DILocation(line: 101, column: 7, scope: !6249)
!6257 = !DILocation(line: 101, column: 11, scope: !6249)
!6258 = !DILocation(line: 102, column: 17, scope: !6249)
!6259 = !DILocation(line: 102, column: 26, scope: !6249)
!6260 = !DILocation(line: 102, column: 24, scope: !6249)
!6261 = !DILocation(line: 102, column: 30, scope: !6249)
!6262 = !DILocation(line: 102, column: 36, scope: !6249)
!6263 = !DILocation(line: 102, column: 34, scope: !6249)
!6264 = !DILocation(line: 102, column: 3, scope: !6249)
!6265 = !DILocation(line: 102, column: 15, scope: !6249)
!6266 = !DILocation(line: 103, column: 11, scope: !6249)
!6267 = !DILocation(line: 103, column: 25, scope: !6249)
!6268 = !DILocation(line: 103, column: 33, scope: !6249)
!6269 = !DILocation(line: 103, column: 31, scope: !6249)
!6270 = !DILocation(line: 103, column: 37, scope: !6249)
!6271 = !DILocation(line: 103, column: 43, scope: !6249)
!6272 = !DILocation(line: 103, column: 41, scope: !6249)
!6273 = !DILocation(line: 103, column: 49, scope: !6249)
!6274 = !DILocation(line: 103, column: 3, scope: !6249)
!6275 = !DILocation(line: 105, column: 20, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6249, file: !3, line: 105, column: 7)
!6277 = !DILocation(line: 105, column: 26, scope: !6276)
!6278 = !DILocation(line: 105, column: 7, scope: !6276)
!6279 = !DILocation(line: 105, column: 40, scope: !6276)
!6280 = !DILocation(line: 105, column: 7, scope: !6249)
!6281 = !DILocation(line: 106, column: 62, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6276, file: !3, line: 105, column: 46)
!6283 = !DILocation(line: 106, column: 4, scope: !6282)
!6284 = !DILocation(line: 107, column: 7, scope: !6282)
!6285 = !DILocation(line: 108, column: 4, scope: !6282)
!6286 = !DILocation(line: 110, column: 2, scope: !6249)
!6287 = !DILocation(line: 99, column: 38, scope: !6244)
!6288 = !DILocation(line: 99, column: 44, scope: !6244)
!6289 = !DILocation(line: 99, column: 35, scope: !6244)
!6290 = !DILocation(line: 99, column: 2, scope: !6244)
!6291 = distinct !{!6291, !6246, !6292}
!6292 = !DILocation(line: 110, column: 2, scope: !6239)
!6293 = !DILocation(line: 112, column: 8, scope: !6014)
!6294 = !DILocation(line: 112, column: 2, scope: !6014)
!6295 = !DILocation(line: 113, column: 9, scope: !6014)
!6296 = !DILocation(line: 113, column: 2, scope: !6014)
!6297 = !DILocation(line: 114, column: 1, scope: !6014)
!6298 = distinct !DISubprogram(name: "mt2060_probe", scope: !3, file: !3, line: 445, type: !4338, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!6299 = !DILocalVariable(name: "client", arg: 1, scope: !6298, file: !3, line: 445, type: !4340)
!6300 = !DILocation(line: 445, column: 44, scope: !6298)
!6301 = !DILocalVariable(name: "id", arg: 2, scope: !6298, file: !3, line: 446, type: !4473)
!6302 = !DILocation(line: 446, column: 32, scope: !6298)
!6303 = !DILocalVariable(name: "pdata", scope: !6298, file: !3, line: 448, type: !6304)
!6304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6305, size: 64)
!6305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mt2060_platform_data", file: !4575, line: 28, size: 128, elements: !6306)
!6306 = !{!6307, !6308, !6309, !6310}
!6307 = !DIDerivedType(tag: DW_TAG_member, name: "clock_out", scope: !6305, file: !4575, line: 29, baseType: !361, size: 8)
!6308 = !DIDerivedType(tag: DW_TAG_member, name: "if1", scope: !6305, file: !4575, line: 30, baseType: !351, size: 16, offset: 16)
!6309 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_write_max", scope: !6305, file: !4575, line: 31, baseType: !7, size: 5, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!6310 = !DIDerivedType(tag: DW_TAG_member, name: "dvb_frontend", scope: !6305, file: !4575, line: 32, baseType: !451, size: 64, offset: 64)
!6311 = !DILocation(line: 448, column: 31, scope: !6298)
!6312 = !DILocation(line: 448, column: 39, scope: !6298)
!6313 = !DILocation(line: 448, column: 47, scope: !6298)
!6314 = !DILocation(line: 448, column: 51, scope: !6298)
!6315 = !DILocalVariable(name: "fe", scope: !6298, file: !3, line: 449, type: !451)
!6316 = !DILocation(line: 449, column: 23, scope: !6298)
!6317 = !DILocalVariable(name: "dev", scope: !6298, file: !3, line: 450, type: !4588)
!6318 = !DILocation(line: 450, column: 22, scope: !6298)
!6319 = !DILocalVariable(name: "ret", scope: !6298, file: !3, line: 451, type: !313)
!6320 = !DILocation(line: 451, column: 6, scope: !6298)
!6321 = !DILocalVariable(name: "chip_id", scope: !6298, file: !3, line: 452, type: !361)
!6322 = !DILocation(line: 452, column: 5, scope: !6298)
!6323 = !DILocation(line: 456, column: 7, scope: !6324)
!6324 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 456, column: 6)
!6325 = !DILocation(line: 456, column: 6, scope: !6298)
!6326 = !DILocation(line: 457, column: 3, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6324, file: !3, line: 456, column: 14)
!6328 = !DILocation(line: 458, column: 7, scope: !6327)
!6329 = !DILocation(line: 459, column: 3, scope: !6327)
!6330 = !DILocation(line: 462, column: 22, scope: !6298)
!6331 = !DILocation(line: 462, column: 30, scope: !6298)
!6332 = !DILocation(line: 462, column: 8, scope: !6298)
!6333 = !DILocation(line: 462, column: 6, scope: !6298)
!6334 = !DILocation(line: 463, column: 7, scope: !6335)
!6335 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 463, column: 6)
!6336 = !DILocation(line: 463, column: 6, scope: !6298)
!6337 = !DILocation(line: 464, column: 7, scope: !6338)
!6338 = distinct !DILexicalBlock(scope: !6335, file: !3, line: 463, column: 12)
!6339 = !DILocation(line: 465, column: 3, scope: !6338)
!6340 = !DILocation(line: 468, column: 7, scope: !6298)
!6341 = !DILocation(line: 468, column: 14, scope: !6298)
!6342 = !DILocation(line: 468, column: 5, scope: !6298)
!6343 = !DILocation(line: 469, column: 28, scope: !6298)
!6344 = !DILocation(line: 469, column: 36, scope: !6298)
!6345 = !DILocation(line: 469, column: 2, scope: !6298)
!6346 = !DILocation(line: 469, column: 7, scope: !6298)
!6347 = !DILocation(line: 469, column: 14, scope: !6298)
!6348 = !DILocation(line: 469, column: 26, scope: !6298)
!6349 = !DILocation(line: 470, column: 26, scope: !6298)
!6350 = !DILocation(line: 470, column: 33, scope: !6298)
!6351 = !DILocation(line: 470, column: 2, scope: !6298)
!6352 = !DILocation(line: 470, column: 7, scope: !6298)
!6353 = !DILocation(line: 470, column: 14, scope: !6298)
!6354 = !DILocation(line: 470, column: 24, scope: !6298)
!6355 = !DILocation(line: 471, column: 14, scope: !6298)
!6356 = !DILocation(line: 471, column: 19, scope: !6298)
!6357 = !DILocation(line: 471, column: 2, scope: !6298)
!6358 = !DILocation(line: 471, column: 7, scope: !6298)
!6359 = !DILocation(line: 471, column: 11, scope: !6298)
!6360 = !DILocation(line: 472, column: 13, scope: !6298)
!6361 = !DILocation(line: 472, column: 21, scope: !6298)
!6362 = !DILocation(line: 472, column: 2, scope: !6298)
!6363 = !DILocation(line: 472, column: 7, scope: !6298)
!6364 = !DILocation(line: 472, column: 11, scope: !6298)
!6365 = !DILocation(line: 473, column: 18, scope: !6298)
!6366 = !DILocation(line: 473, column: 25, scope: !6298)
!6367 = !DILocation(line: 473, column: 31, scope: !6298)
!6368 = !DILocation(line: 473, column: 38, scope: !6298)
!6369 = !DILocation(line: 473, column: 2, scope: !6298)
!6370 = !DILocation(line: 473, column: 7, scope: !6298)
!6371 = !DILocation(line: 473, column: 16, scope: !6298)
!6372 = !DILocation(line: 474, column: 16, scope: !6298)
!6373 = !DILocation(line: 474, column: 2, scope: !6298)
!6374 = !DILocation(line: 474, column: 7, scope: !6298)
!6375 = !DILocation(line: 474, column: 14, scope: !6298)
!6376 = !DILocation(line: 475, column: 22, scope: !6298)
!6377 = !DILocation(line: 475, column: 29, scope: !6298)
!6378 = !DILocation(line: 475, column: 45, scope: !6298)
!6379 = !DILocation(line: 475, column: 52, scope: !6298)
!6380 = !DILocation(line: 475, column: 66, scope: !6298)
!6381 = !DILocation(line: 475, column: 2, scope: !6298)
!6382 = !DILocation(line: 475, column: 7, scope: !6298)
!6383 = !DILocation(line: 475, column: 20, scope: !6298)
!6384 = !DILocation(line: 476, column: 2, scope: !6298)
!6385 = !DILocation(line: 476, column: 7, scope: !6298)
!6386 = !DILocation(line: 476, column: 13, scope: !6298)
!6387 = !DILocation(line: 478, column: 23, scope: !6298)
!6388 = !DILocation(line: 478, column: 8, scope: !6298)
!6389 = !DILocation(line: 478, column: 6, scope: !6298)
!6390 = !DILocation(line: 479, column: 6, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 479, column: 6)
!6392 = !DILocation(line: 479, column: 6, scope: !6298)
!6393 = !DILocation(line: 480, column: 7, scope: !6394)
!6394 = distinct !DILexicalBlock(scope: !6391, file: !3, line: 479, column: 11)
!6395 = !DILocation(line: 481, column: 3, scope: !6394)
!6396 = !DILocation(line: 486, column: 6, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 486, column: 6)
!6398 = !DILocation(line: 486, column: 14, scope: !6397)
!6399 = !DILocation(line: 486, column: 6, scope: !6298)
!6400 = !DILocation(line: 487, column: 7, scope: !6401)
!6401 = distinct !DILexicalBlock(scope: !6397, file: !3, line: 486, column: 27)
!6402 = !DILocation(line: 488, column: 3, scope: !6401)
!6403 = !DILocation(line: 492, column: 24, scope: !6298)
!6404 = !DILocation(line: 492, column: 8, scope: !6298)
!6405 = !DILocation(line: 492, column: 6, scope: !6298)
!6406 = !DILocation(line: 493, column: 6, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 493, column: 6)
!6408 = !DILocation(line: 493, column: 6, scope: !6298)
!6409 = !DILocation(line: 494, column: 3, scope: !6407)
!6410 = !DILocation(line: 495, column: 19, scope: !6298)
!6411 = !DILocation(line: 495, column: 2, scope: !6298)
!6412 = !DILocation(line: 496, column: 24, scope: !6298)
!6413 = !DILocation(line: 496, column: 8, scope: !6298)
!6414 = !DILocation(line: 496, column: 6, scope: !6298)
!6415 = !DILocation(line: 497, column: 6, scope: !6416)
!6416 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 497, column: 6)
!6417 = !DILocation(line: 497, column: 6, scope: !6298)
!6418 = !DILocation(line: 498, column: 3, scope: !6416)
!6419 = !DILocation(line: 500, column: 2, scope: !6298)
!6420 = !DILocation(line: 501, column: 10, scope: !6298)
!6421 = !DILocation(line: 501, column: 14, scope: !6298)
!6422 = !DILocation(line: 501, column: 18, scope: !6298)
!6423 = !DILocation(line: 501, column: 2, scope: !6298)
!6424 = !DILocation(line: 502, column: 2, scope: !6298)
!6425 = !DILocation(line: 502, column: 6, scope: !6298)
!6426 = !DILocation(line: 502, column: 10, scope: !6298)
!6427 = !DILocation(line: 502, column: 20, scope: !6298)
!6428 = !DILocation(line: 502, column: 28, scope: !6298)
!6429 = !DILocation(line: 503, column: 19, scope: !6298)
!6430 = !DILocation(line: 503, column: 2, scope: !6298)
!6431 = !DILocation(line: 503, column: 6, scope: !6298)
!6432 = !DILocation(line: 503, column: 17, scope: !6298)
!6433 = !DILocation(line: 504, column: 21, scope: !6298)
!6434 = !DILocation(line: 504, column: 29, scope: !6298)
!6435 = !DILocation(line: 504, column: 2, scope: !6298)
!6436 = !DILocation(line: 506, column: 2, scope: !6298)
!6437 = !DILabel(scope: !6298, name: "err", file: !3, line: 507)
!6438 = !DILocation(line: 507, column: 1, scope: !6298)
!6439 = !DILocation(line: 509, column: 9, scope: !6298)
!6440 = !DILocation(line: 509, column: 2, scope: !6298)
!6441 = !DILocation(line: 510, column: 1, scope: !6298)
!6442 = distinct !DISubprogram(name: "mt2060_remove", scope: !3, file: !3, line: 512, type: !4481, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!6443 = !DILocalVariable(name: "client", arg: 1, scope: !6442, file: !3, line: 512, type: !4340)
!6444 = !DILocation(line: 512, column: 45, scope: !6442)
!6445 = !DILocation(line: 516, column: 2, scope: !6442)
!6446 = distinct !DISubprogram(name: "devm_kzalloc", scope: !237, file: !237, line: 215, type: !6447, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!6447 = !DISubroutineType(types: !6448)
!6448 = !{!312, !733, !833, !310}
!6449 = !DILocalVariable(name: "dev", arg: 1, scope: !6446, file: !237, line: 215, type: !733)
!6450 = !DILocation(line: 215, column: 49, scope: !6446)
!6451 = !DILocalVariable(name: "size", arg: 2, scope: !6446, file: !237, line: 215, type: !833)
!6452 = !DILocation(line: 215, column: 61, scope: !6446)
!6453 = !DILocalVariable(name: "gfp", arg: 3, scope: !6446, file: !237, line: 215, type: !310)
!6454 = !DILocation(line: 215, column: 73, scope: !6446)
!6455 = !DILocation(line: 217, column: 22, scope: !6446)
!6456 = !DILocation(line: 217, column: 27, scope: !6446)
!6457 = !DILocation(line: 217, column: 33, scope: !6446)
!6458 = !DILocation(line: 217, column: 37, scope: !6446)
!6459 = !DILocation(line: 217, column: 9, scope: !6446)
!6460 = !DILocation(line: 217, column: 2, scope: !6446)
!6461 = distinct !DISubprogram(name: "i2c_set_clientdata", scope: !291, file: !291, line: 356, type: !6462, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!6462 = !DISubroutineType(types: !6463)
!6463 = !{null, !4340, !312}
!6464 = !DILocalVariable(name: "client", arg: 1, scope: !6461, file: !291, line: 356, type: !4340)
!6465 = !DILocation(line: 356, column: 58, scope: !6461)
!6466 = !DILocalVariable(name: "data", arg: 2, scope: !6461, file: !291, line: 356, type: !312)
!6467 = !DILocation(line: 356, column: 72, scope: !6461)
!6468 = !DILocation(line: 358, column: 19, scope: !6461)
!6469 = !DILocation(line: 358, column: 27, scope: !6461)
!6470 = !DILocation(line: 358, column: 32, scope: !6461)
!6471 = !DILocation(line: 358, column: 2, scope: !6461)
!6472 = !DILocation(line: 359, column: 1, scope: !6461)
!6473 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !237, file: !237, line: 660, type: !6474, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !764)
!6474 = !DISubroutineType(types: !6475)
!6475 = !{null, !733, !312}
!6476 = !DILocalVariable(name: "dev", arg: 1, scope: !6473, file: !237, line: 660, type: !733)
!6477 = !DILocation(line: 660, column: 51, scope: !6473)
!6478 = !DILocalVariable(name: "data", arg: 2, scope: !6473, file: !237, line: 660, type: !312)
!6479 = !DILocation(line: 660, column: 62, scope: !6473)
!6480 = !DILocation(line: 662, column: 21, scope: !6473)
!6481 = !DILocation(line: 662, column: 2, scope: !6473)
!6482 = !DILocation(line: 662, column: 7, scope: !6473)
!6483 = !DILocation(line: 662, column: 19, scope: !6473)
!6484 = !DILocation(line: 663, column: 1, scope: !6473)
